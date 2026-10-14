// SPDX-License-Identifier: GPL-2.0-only
/* ARES/RasterIX userspace transport over the Linux DMAengine API.
 * One open file and one outstanding transaction per channel. The existing
 * RasterIX RV32 mmap/ioctl layout is retained. No automatic test traffic.
 */
#include <linux/completion.h>
#include <linux/dma-mapping.h>
#include <linux/dmaengine.h>
#include <linux/fs.h>
#include <linux/kref.h>
#include <linux/miscdevice.h>
#include <linux/mm.h>
#include <linux/module.h>
#include <linux/mutex.h>
#include <linux/of.h>
#include <linux/platform_device.h>
#include <linux/slab.h>
#include <linux/uaccess.h>

#include "dma-proxy.h"

#define PROXY_BYTES PAGE_ALIGN(sizeof(struct channel_buffer) * BUFFER_COUNT)
#define PROXY_TIMEOUT_MS 3000

struct proxy_channel {
	struct miscdevice misc;
	struct kref refs;
	struct mutex lock;
	struct completion done;
	struct dma_chan *chan;
	struct device *dma_dev;
	struct channel_buffer *buffers;
	dma_addr_t dma_addr;
	enum dma_transfer_direction direction;
	dma_cookie_t cookie;
	int active;
	bool opened;
	bool dead;
	bool faulted;
	bool module_pinned;
};

struct proxy_device {
	struct proxy_channel *channels[2];
};

static void proxy_free(struct kref *ref)
{
	struct proxy_channel *ch = container_of(ref, struct proxy_channel, refs);

	/* remove has stopped/released DMA; mmap holds a file reference until its
	 * last mapping disappears, so coherent memory cannot be freed too soon.
	 */
	if (ch->buffers)
		dma_free_coherent(ch->dma_dev, PROXY_BYTES, ch->buffers, ch->dma_addr);
	put_device(ch->dma_dev);
	kfree(ch);
}

static void proxy_complete(void *arg)
{
	struct proxy_channel *ch = arg;

	complete(&ch->done);
}

/* Caller holds lock. Synchronize callbacks before reusing/freeing state. */
static int proxy_stop(struct proxy_channel *ch)
{
	int ret;

	if (ch->active < 0) {
		dmaengine_synchronize(ch->chan);
		return 0;
	}
	ret = dmaengine_terminate_sync(ch->chan);
	if (ret) {
		ch->faulted = true;
		/* The provider may still call into this module. A failed stop is
		 * unrecoverable here; retain code as well as data until reboot.
		 */
		if (!ch->module_pinned) {
			__module_get(THIS_MODULE);
			ch->module_pinned = true;
		}
		dev_err(ch->dma_dev, "%s: DMA termination failed: %d\n",
			ch->misc.name, ret);
		return ret;
	}
	ch->active = -1;
	return 0;
}

static int proxy_open(struct inode *inode, struct file *file)
{
	struct miscdevice *misc = file->private_data;
	struct proxy_channel *ch = container_of(misc, struct proxy_channel, misc);
	int ret = 0;

	mutex_lock(&ch->lock);
	if (ch->dead)
		ret = -ENODEV;
	else if (ch->opened)
		ret = -EBUSY;
	else if (ch->faulted)
		ret = -EIO;
	else {
		kref_get(&ch->refs);
		ch->opened = true;
		file->private_data = ch;
		nonseekable_open(inode, file);
	}
	mutex_unlock(&ch->lock);
	return ret;
}

static int proxy_release(struct inode *inode, struct file *file)
{
	struct proxy_channel *ch = file->private_data;

	mutex_lock(&ch->lock);
	if (ch->chan && ch->active >= 0) {
		ch->faulted = true;
		WRITE_ONCE(ch->buffers[ch->active].status, PROXY_ERROR);
		proxy_stop(ch);
	}
	ch->opened = false;
	mutex_unlock(&ch->lock);
	kref_put(&ch->refs, proxy_free);
	return 0;
}

static int proxy_start(struct proxy_channel *ch, int index)
{
	struct channel_buffer *buf = &ch->buffers[index];
	struct dma_async_tx_descriptor *desc;
	dma_addr_t addr = ch->dma_addr + index * sizeof(*buf);
	u32 length = READ_ONCE(buf->length);

	if (ch->active >= 0)
		return -EBUSY;
	if (ch->faulted)
		return -EIO;
	if (!length || length > BUFFER_SIZE || !IS_ALIGNED(length, 4)) {
		WRITE_ONCE(buf->status, PROXY_ERROR);
		return -EINVAL;
	}

	/* The buffers are coherent; publish CPU writes before handing them off.
	 * Page-aligned base and 1024-aligned stride also satisfy the no-DRE IP.
	 */
	dma_wmb();
	reinit_completion(&ch->done);
	desc = dmaengine_prep_slave_single(ch->chan, addr, length, ch->direction,
					 DMA_CTRL_ACK | DMA_PREP_INTERRUPT);
	if (!desc) {
		WRITE_ONCE(buf->status, PROXY_ERROR);
		return -EIO;
	}
	desc->callback = proxy_complete;
	desc->callback_param = ch;
	ch->cookie = dmaengine_submit(desc);
	if (dma_submit_error(ch->cookie)) {
		WRITE_ONCE(buf->status, PROXY_ERROR);
		return ch->cookie;
	}
	ch->active = index;
	/* Legacy RasterIX checks status immediately after START_XFER. Zero here
	 * means accepted, not completed; FINISH_XFER supplies final status.
	 */
	WRITE_ONCE(buf->status, PROXY_NO_ERROR);
	dma_async_issue_pending(ch->chan);
	return 0;
}

static int proxy_finish(struct proxy_channel *ch, int index)
{
	struct channel_buffer *buf = &ch->buffers[index];
	long waited;
	int ret;

	if (ch->active != index)
		return -EINVAL;
	WRITE_ONCE(buf->status, PROXY_BUSY);
	waited = wait_for_completion_interruptible_timeout(&ch->done,
					msecs_to_jiffies(PROXY_TIMEOUT_MS));
	if (waited > 0 && dma_async_is_tx_complete(ch->chan, ch->cookie,
						 NULL, NULL) == DMA_COMPLETE) {
		dma_rmb();
		WRITE_ONCE(buf->status, PROXY_NO_ERROR);
		ch->active = -1;
		return 0;
	}

	ret = waited < 0 ? (int)waited : waited == 0 ? -ETIMEDOUT : -EIO;
	WRITE_ONCE(buf->status, waited == 0 ? PROXY_TIMEOUT : PROXY_ERROR);
	ch->faulted = true;
	dev_err(ch->dma_dev, "%s: transfer failed (%d); restart transport after checking hardware\n",
		ch->misc.name, ret);
	/* AXI DMA reset may affect both directions. Do not silently retry. */
	if (proxy_stop(ch))
		return -EIO;
	return ret;
}

static long proxy_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
{
	struct proxy_channel *ch = file->private_data;
	s32 index;
	int ret;

	if (cmd != START_XFER && cmd != FINISH_XFER && cmd != XFER)
		return -ENOTTY;
	if (copy_from_user(&index, (void __user *)arg, sizeof(index)))
		return -EFAULT;
	if (index < 0 || index >= BUFFER_COUNT)
		return -EINVAL;
	ret = mutex_lock_interruptible(&ch->lock);
	if (ret)
		return ret;
	if (ch->dead) {
		ret = -ENODEV;
		goto out;
	}
	ret = 0;
	if (cmd == START_XFER || cmd == XFER)
		ret = proxy_start(ch, index);
	if (!ret && (cmd == FINISH_XFER || cmd == XFER))
		ret = proxy_finish(ch, index);
out:
	mutex_unlock(&ch->lock);
	return ret;
}

static int proxy_mmap(struct file *file, struct vm_area_struct *vma)
{
	struct proxy_channel *ch = file->private_data;
	int ret;

	if (vma->vm_pgoff || vma->vm_end - vma->vm_start != PROXY_BYTES ||
	    !(vma->vm_flags & VM_SHARED) || (vma->vm_flags & VM_EXEC))
		return -EINVAL;
	mutex_lock(&ch->lock);
	if (ch->dead) {
		ret = -ENODEV;
		goto out;
	}
	vm_flags_set(vma, VM_DONTEXPAND | VM_DONTDUMP);
	vm_flags_clear(vma, VM_MAYEXEC);
	ret = dma_mmap_coherent(ch->dma_dev, vma, ch->buffers, ch->dma_addr,
				PROXY_BYTES);
out:
	mutex_unlock(&ch->lock);
	return ret;
}

static const struct file_operations proxy_fops = {
	.owner = THIS_MODULE,
	.open = proxy_open,
	.release = proxy_release,
	.unlocked_ioctl = proxy_ioctl,
	.mmap = proxy_mmap,
};

static void proxy_destroy_channel(struct proxy_channel *ch)
{
	int ret;

	mutex_lock(&ch->lock);
	ch->dead = true;
	mutex_unlock(&ch->lock);
	/* misc core serializes open against deregistration. */
	misc_deregister(&ch->misc);
	mutex_lock(&ch->lock);
	ret = proxy_stop(ch);
	if (ret) {
		/* Keep DMA memory/state pinned if the provider cannot quiesce it. */
		mutex_unlock(&ch->lock);
		return;
	}
	dma_release_channel(ch->chan);
	ch->chan = NULL;
	mutex_unlock(&ch->lock);
	kref_put(&ch->refs, proxy_free);
}

static struct proxy_channel *proxy_create_channel(struct platform_device *pdev,
				const char *name, enum dma_transfer_direction dir)
{
	struct proxy_channel *ch;
	struct dma_slave_caps caps;
	int ret;

	ch = kzalloc(sizeof(*ch), GFP_KERNEL);
	if (!ch)
		return ERR_PTR(-ENOMEM);
	kref_init(&ch->refs);
	mutex_init(&ch->lock);
	init_completion(&ch->done);
	ch->active = -1;
	ch->direction = dir;
	ch->chan = dma_request_chan(&pdev->dev, name);
	if (IS_ERR(ch->chan)) {
		ret = PTR_ERR(ch->chan);
		kfree(ch);
		return ERR_PTR(ret);
	}
	ch->dma_dev = get_device(dmaengine_get_dma_device(ch->chan));
	ret = dma_get_slave_caps(ch->chan, &caps);
	if (ret || !(caps.directions & BIT(dir))) {
		ret = ret ? ret : -EINVAL;
		goto release_chan;
	}
	ch->buffers = dma_alloc_coherent(ch->dma_dev, PROXY_BYTES,
					 &ch->dma_addr, GFP_KERNEL);
	if (!ch->buffers) {
		dev_err(&pdev->dev, "%s: cannot allocate %zu bytes; check CMA\n",
			name, (size_t)PROXY_BYTES);
		ret = -ENOMEM;
		goto release_chan;
	}
	memset(ch->buffers, 0, PROXY_BYTES);
	ch->misc.minor = MISC_DYNAMIC_MINOR;
	ch->misc.name = name;
	ch->misc.fops = &proxy_fops;
	ch->misc.parent = &pdev->dev;
	ch->misc.mode = 0600;
	ret = misc_register(&ch->misc);
	if (ret)
		goto release_chan;
	dev_info(&pdev->dev, "%s: %s, %zu bytes at DMA %pad\n", name,
		 dir == DMA_MEM_TO_DEV ? "MM2S" : "S2MM",
		 (size_t)PROXY_BYTES, &ch->dma_addr);
	return ch;

release_chan:
	dma_release_channel(ch->chan);
	ch->chan = NULL;
	kref_put(&ch->refs, proxy_free);
	return ERR_PTR(ret);
}

static int proxy_probe(struct platform_device *pdev)
{
	static const char * const names[] = { "dma_proxy_tx", "dma_proxy_rx" };
	static const enum dma_transfer_direction dirs[] = {
		DMA_MEM_TO_DEV, DMA_DEV_TO_MEM,
	};
	struct proxy_device *proxy;
	int i, ret;

	static_assert(sizeof(struct channel_buffer) == BUFFER_SIZE + 1024);
	static_assert(offsetof(struct channel_buffer, length) == BUFFER_SIZE + 4);
	proxy = devm_kzalloc(&pdev->dev, sizeof(*proxy), GFP_KERNEL);
	if (!proxy)
		return -ENOMEM;
	for (i = 0; i < ARRAY_SIZE(names); i++) {
		proxy->channels[i] = proxy_create_channel(pdev, names[i], dirs[i]);
		if (IS_ERR(proxy->channels[i])) {
			ret = PTR_ERR(proxy->channels[i]);
			while (i--)
				proxy_destroy_channel(proxy->channels[i]);
			return dev_err_probe(&pdev->dev, ret, "DMA-proxy setup failed\n");
		}
	}
	platform_set_drvdata(pdev, proxy);
	dev_info(&pdev->dev, "ARES DMA-proxy ready; no transfers started\n");
	return 0;
}

static void proxy_remove(struct platform_device *pdev)
{
	struct proxy_device *proxy = platform_get_drvdata(pdev);
	int i;

	for (i = 0; i < ARRAY_SIZE(proxy->channels); i++)
		proxy_destroy_channel(proxy->channels[i]);
}

static const struct of_device_id proxy_of_match[] = {
	{ .compatible = "xlnx,dma_proxy" },
	{ }
};
MODULE_DEVICE_TABLE(of, proxy_of_match);

static struct platform_driver proxy_driver = {
	.probe = proxy_probe,
	.remove = proxy_remove,
	.driver = {
		.name = "ares-dma-proxy",
		.of_match_table = proxy_of_match,
		.suppress_bind_attrs = true,
	},
};
module_platform_driver(proxy_driver);

MODULE_LICENSE("GPL");
MODULE_DESCRIPTION("ARES RasterIX DMA-proxy transport (RV32 ABI)");

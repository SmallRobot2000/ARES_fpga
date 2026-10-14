/* SPDX-License-Identifier: GPL-2.0 WITH Linux-syscall-note */
/* RasterIX DMA-proxy ABI, compatible with its existing RV32 application. */
#ifndef ARES_DMA_PROXY_H
#define ARES_DMA_PROXY_H

#include <linux/ioctl.h>
#include <linux/types.h>

#define BUFFER_SIZE (1024 * 1024)
#define BUFFER_COUNT 21
#define TX_BUFFER_COUNT BUFFER_COUNT
#define RX_BUFFER_COUNT BUFFER_COUNT
#define BUFFER_INCREMENT 1

/* Original ABI encodes sizeof(int32_t *), which is 4 on ARES/RV32. */
#define FINISH_XFER _IOW('a', 'a', __s32)
#define START_XFER  _IOW('a', 'b', __s32)
#define XFER       _IOR('a', 'c', __s32)

struct channel_buffer {
	__u32 buffer[BUFFER_SIZE / sizeof(__u32)];
	enum proxy_status {
		PROXY_NO_ERROR = 0,
		PROXY_BUSY = 1,
		PROXY_TIMEOUT = 2,
		PROXY_ERROR = 3,
	} status;
	__u32 length;
} __attribute__((aligned(1024)));

#endif

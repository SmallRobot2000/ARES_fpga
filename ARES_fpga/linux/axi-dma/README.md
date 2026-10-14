# ARES AXI DMA: DTS and Linux setup

This enables the Linux **DMAengine controller** for the current `Block_top`.
MM2S uses **PLIC source 7**, S2MM uses **PLIC source 8**. These match
`xlconcat_0/In7` and `In8`; Linux's displayed virtual IRQ numbers may differ.

Prepared files:

- `ares-axi-dma.dtsi`: reusable controller and 100 MHz clock description.
- `tree-dma.dts` / `tree-dma.dtb`: complete tree based on
  `/home/lovro/ARES/ARES_bootloader/tree/tree.dts`, with the DMA include added.
  Both CPUs, root filesystem, CF IRQ 6, Ethernet IRQs, and existing reservations
  are preserved. The optional proxy node is **not** included.
- `tree-dma.patch`: source change for that bootloader tree. Copy
  `ares-axi-dma.dtsi` next to `tree.dts` when applying this patch.
- `axi-dma.config`: kernel configuration fragment.
- `ares-dma-proxy.dtsi`: client description for the [DMA-proxy module](../dma-proxy/README.md);
  it is not needed to register the controller.

## Hardware configuration used

| Item | Current design / DTS |
| --- | --- |
| AXI Lite registers | `0x10080000`, 64 KiB window |
| Channels | MM2S channel 0; S2MM channel 1 |
| Interrupts | MM2S 7; S2MM 8, one-cell PLIC specifiers |
| Clock | All three DMA clocks use MIG `ui_clk`, 100 MHz |
| Mode | Simple/direct DMA, scatter-gather disabled |
| Address / length widths | 32 / 23 bits |
| MM2S widths | Memory 64 bits; stream 32 bits |
| S2MM widths | Memory 32 bits; stream 32 bits |
| DRE | Disabled on both channels |
| Memory path | SmartConnect -> Vexii coherent `dma_bus` -> DDR |

`xlnx,datawidth` describes the **stream**, so both channel nodes use 32.
There is no SG clock or `xlnx,include-dre` property. The local Xilinx driver
detects scatter-gather support from the hardware status register.

`dma-coherent` describes the coherent Vexii path; it does not enable coherency
in hardware. Revisit it if the DMA is moved directly to MIG. `dma-ranges`
describes identity-mapped DDR `0x90000000–0x9fffffff`; it is not an AXI firewall.

## Enable and build the kernel

Run on the development PC. These commands change the kernel configuration;
the prepared files alone have not modified or rebuilt `ARES_linux`.

```sh
cd /home/lovro/ARES/ARES_linux
cp -n .config .config.before-axi-dma
scripts/config --enable COMMON_CLK --enable DMADEVICES --enable XILINX_DMA
make ARCH=riscv CROSS_COMPILE=riscv64-linux-gnu- olddefconfig
grep -E '^CONFIG_(COMMON_CLK|DMADEVICES|DMA_ENGINE|DMA_OF|XILINX_DMA)=' .config
make ARCH=riscv CROSS_COMPILE=riscv64-linux-gnu- -j"$(nproc)" Image
```

All five reported options should be `y`. `DMA_ENGINE` and `DMA_OF` are selected
or defaulted automatically. The controller is built in, so your existing
`CONFIG_MODULES=n` is fine. Neither `COMPILE_TEST` nor a Kconfig/driver source
patch is needed for the local kernel. No CMA reservation is needed just to
probe the controller.

Alternatively merge `axi-dma.config` using the kernel's
`scripts/kconfig/merge_config.sh -m` before `olddefconfig`.

## Device tree and boot files

To recompile the supplied tree from this FPGA repository:

```sh
dtc -I dts -O dtb -o linux/axi-dma/tree-dma.dtb linux/axi-dma/tree-dma.dts
```

If your boot tree has changed since this snapshot, add this line at the end
of your current `tree.dts`, copy `ares-axi-dma.dtsi` beside it, and compile that
tree instead. Remove its obsolete comment saying DMA is disconnected.

```dts
/include/ "ares-axi-dma.dtsi"
```

On the boot SD card, back up the current `image.bin` and `tree.dtb`, then use:

- `ARES_linux/arch/riscv/boot/Image` as **`image.bin`**.
- `linux/axi-dma/tree-dma.dtb` as **`tree.dtb`**.

The programmed bitstream must contain the matching address and IRQ wiring.
No SD files or hardware have been programmed by this setup.

If you are testing CF polling, generate a combined DMA + polling tree from
the **new DMA DTB**, instead of deploying the older CF-only DTB:

```sh
python3 debug/cf-polling/make_polling_dtb.py \
    linux/axi-dma/tree-dma.dtb /tmp/tree-dma-cf-polling.dtb
```

Use that result as `tree.dtb`. Choose a new output filename if it already exists.

## Verify on ARES

```sh
dmesg | grep -Ei 'xilinx.*dma|dma.*error|dma.*fail'
ls -l /sys/bus/platform/devices/10080000.dma-controller/driver
ls /sys/class/dma
grep xilinx-dma /proc/interrupts
```

The controller should bind and expose two DMA channels. Expect two interrupt
entries named `xilinx-dma-controller`, associated with PLIC sources 7 and 8.
Counts staying zero before a transfer is submitted is normal. Controller
registration does not send RasterIX commands or start a framebuffer.

If it does not bind, check the deployed DTB, the five kernel options, and
the boot log. A reset timeout points toward AXI Lite/reset/clock/hardware
access; a transfer timeout after successful probe also warrants checking
stream handshakes and IRQ routing. Do not use raw register writes concurrently
with the bound kernel driver.

## Submitting transfers / RasterIX userspace

A kernel DMAengine client references:

```dts
dmas = <&axi_dma_0 0>, <&axi_dma_0 1>;
dma-names = "tx", "rx";
```

The client requests those channels, allocates/maps buffers with the DMA API
using the DMA controller's device, prepares `DMA_MEM_TO_DEV` for MM2S and
`DMA_DEV_TO_MEM` for S2MM, submits, and issues pending work. Do not pass a
userspace pointer or guessed physical address as a DMA address. Use at least
8-byte-aligned buffer starts for this no-DRE design and whole 32-bit RasterIX
command words. A simple transfer must fit the 23-bit length field
(`0x7fffff` bytes maximum); begin with one contiguous buffer.

S2MM needs a real RasterIX response packet ending in `TLAST`. Posting an RX
transfer alone does not make RasterIX produce a response. For transactions
that generate responses, arrange for RX to be armed before stream backpressure
can block the command transaction. Generic `dmatest` exercises memory-copy
DMA and is not a functional test of this RasterIX stream connection. Do not
run a loopback test that sends arbitrary data into the RasterIX command parser.

The upstream Xilinx controller does **not** provide `/dev/dma_proxy_tx` or
`/dev/dma_proxy_rx`. RasterIX's `lib/driver/dmaproxy` expects its separate
`xlnx,dma_proxy` client driver. `ares-dma-proxy.dtsi` supplies its channel names
when included after the controller include, but that alone cannot create the
character devices.

The original proxy source bundled with RasterIX is not ready for the local
Linux 7.2-rc5 kernel. A replacement preserving its RV32 ABI is now supplied in
[`../dma-proxy/`](../dma-proxy/README.md), with module build instructions and a
NOP test. The original source has these issues addressed by the replacement:

- Current APIs: `class_create(DRIVER_NAME)`, a `const struct device *` devnode
  callback, and a `void` platform remove callback.
- RX direction `DMA_DEV_TO_MEM` (the current source passes TX direction for
  both channels), correct DMA allocation device/mask, and proper channel
  request error/deferred-probe handling.
- Checked user copies, buffer index/length validation, preparation/submission
  failure handling, synchronized termination on timeout/close, and cleanup
  on partial probe failure. Its class error check currently checks the wrong
  pointer and dereferences the result too early.
- A contiguous-buffer plan: the current ABI uses 21 x roughly 1 MiB **per
  channel**. Your kernel has CMA disabled. A suitably sized CMA pool (for
  example 64 MiB for these two arrays, subject to other users) or smaller
  buffers with matching application/header changes is needed for reliable
  large allocations. A module also requires `CONFIG_MODULES=y`; alternatively
  integrate the ported proxy as a built-in driver.

Follow the [proxy build and test instructions](../dma-proxy/README.md) for
module/CMA configuration, the combined DTB, and the first MM2S transfer.
The replacement has been cross-compiled but still needs validation on ARES.

Also, RasterIX and the framebuffer reader currently have only
`0x90000000–0x97ffffff` mapped in their SmartConnect address spaces. Their
render buffers must be reachable there, or those hardware windows must be
expanded. The existing old-VDP reservation at `0x9f800000` is outside those
windows. Enabling Linux DMA support does not fix that graphics allocation issue.

## Validation and references

The complete DTB compiled with `dtc`. The configuration was resolved with
the local kernel's Kconfig tool in a temporary copy; `DMADEVICES`, `DMA_ENGINE`,
`DMA_OF`, and `XILINX_DMA` resolve to `y`. This is configuration validation,
not a kernel build or a hardware transfer test.

The DTS follows the local kernel's
`Documentation/devicetree/bindings/dma/xilinx/xlnx,axi-dma.yaml` and
`drivers/dma/xilinx/xilinx_dma.c`. Primary references:

- [Linux AXI DMA binding](https://www.kernel.org/doc/Documentation/devicetree/bindings/dma/xilinx/xlnx,axi-dma.yaml)
- [AMD AXI DMA simple mode](https://docs.amd.com/r/en-US/pg021_axi_dma/Direct-Register-Mode-Simple-DMA)

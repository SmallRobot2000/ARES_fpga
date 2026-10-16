# ARES RasterIX DMA-proxy module

This supplies `/dev/dma_proxy_tx` and `/dev/dma_proxy_rx` for the existing
RasterIX RV32 userspace interface. The Xilinx controller remains the owner of
the DMA registers and IRQs; this module is its DMAengine client.

The source is prepared for the local **Linux 7.2-rc5** kernel. Module loading,
NOP, both-direction stream loopback, and guarded RasterIX memory round-trips
have been reported working on ARES. Build the final `.ko` against the same configuration and
kernel image you will boot; the old kernel with `CONFIG_MODULES=n` cannot load it.

## 1. Enable modules and contiguous allocations; rebuild Linux once

Run on the development PC:

```sh
cd /home/lovro/ARES/ARES_linux
cp -n .config .config.before-dma-proxy
scripts/config --enable MODULES --enable MODULE_UNLOAD \
    --enable COMMON_CLK --enable DMADEVICES --enable XILINX_DMA \
    --enable CMA --enable DMA_CMA --enable CMA_SIZE_SEL_MBYTES \
    --set-val CMA_SIZE_MBYTES 64
make ARCH=riscv CROSS_COMPILE=riscv64-linux-gnu- olddefconfig
grep -E '^CONFIG_(MODULES|MODULE_UNLOAD|CMA|DMA_CMA|CMA_SIZE_MBYTES|XILINX_DMA)=' .config
make ARCH=riscv CROSS_COMPILE=riscv64-linux-gnu- -j"$(nproc)"
```

Expected: the five boolean options are `y`, `CMA_SIZE_MBYTES=64`.
The full build generates both `arch/riscv/boot/Image` and `Module.symvers` needed
by the external module. `modules_prepare` alone is not a substitute for the
matching full build/symbol information.

The existing RasterIX ABI uses 21 buffers of 1 MiB plus metadata **per channel**.
This module allocates two 22,044,672-byte arrays, about 42 MiB total. A 64 MiB
default CMA area accommodates both with some headroom. CMA is movable memory
until allocated, not a permanent `no-map` reservation. If the boot command line
already specifies `cma=`, it overrides the kernel's default size. Check the boot
log for successful CMA reservation. Do not change the buffer count/size unless
you also rebuild RasterIX with the matching ABI.

## 2. Build the proxy module and test executable

```sh
cd /home/lovro/ARES/ARES_fpga/ARES_fpga/linux/dma-proxy
make KDIR=/home/lovro/ARES/ARES_linux ARCH=riscv \
    CROSS_COMPILE=riscv64-linux-gnu- -j"$(nproc)"

/home/lovro/ARES/buildroot/output/host/bin/riscv32-buildroot-linux-gnu-gcc \
    -Wall -Wextra -Werror -O2 -static -o proxy-smoke proxy-smoke.c
```

Outputs: `ares_dma_proxy.ko` and `proxy-smoke` in this directory. The module
uses the kernel compiler; the test uses the existing Buildroot RV32 userspace
compiler. Future proxy-only changes require this step, not a full kernel rebuild.

Do not also load/build RasterIX's older `dma-proxy.c`: the two drivers would
compete for the same DT client/channels/device names.

## 3. Build the combined DTB and deploy

```sh
cd /home/lovro/ARES/ARES_fpga/ARES_fpga
dtc -I dts -O dtb -o linux/axi-dma/tree-dma-proxy.dtb \
    linux/axi-dma/tree-dma-proxy.dts
```

`tree-dma-proxy.dts` includes the existing working `tree-dma.dts` and then the
proxy client. CF remains on IRQ 6; DMA remains on IRQs 7 and 8. If your actual
boot DTS has changed, add `ares-dma-proxy.dtsi` to that current tree instead.

Back up the working boot files. Install:

- The rebuilt `ARES_linux/arch/riscv/boot/Image` as the SD card's `image.bin`.
- `linux/axi-dma/tree-dma-proxy.dtb` as the SD card's `tree.dtb`.
- `ares_dma_proxy.ko` and `proxy-smoke` onto ARES, for example in `/root/`.

Reboot using the existing working FPGA bitstream. No new FPGA logic is needed
for this module. No kernel files, SD files, or hardware were changed by preparing
this bundle.

## 4. Load and test on ARES

Run as root:

```sh
cd /root
uname -r
grep -E 'CmaTotal|CmaFree' /proc/meminfo
insmod ./ares_dma_proxy.ko
dmesg | tail -25
ls -l /dev/dma_proxy_tx /dev/dma_proxy_rx
grep xilinx-dma /proc/interrupts
./proxy-smoke
```

Expected log: `ARES DMA-proxy ready; no transfers started`, plus TX/MM2S and
RX/S2MM allocation messages. The character devices are root-only (`0600`).
They appear in `/sys/class/misc/`, while controller channels remain in
`/sys/class/dma/`. The default smoke test checks both mappings, exclusive open,
and ioctl argument validation. It submits **no DMA transfers**, so interrupt
counts should not increase just from loading the module or this test.

Then test a real, small TX transaction:

```sh
grep xilinx-dma /proc/interrupts
./proxy-smoke --nop
grep xilinx-dma /proc/interrupts
```

This sends **two zero-valued 32-bit NOP words**. The local RasterIX_IF input
passes through `FrameStreamingCore`, where zero selects NOP, with no memory
operation or response packet. An 8-byte buffer is aligned for this DMA IP.
Expected: completion succeeds and the PLIC **7** counter increases. PLIC **8**
should stay unchanged: NOP produces no RX response. This test establishes MM2S
memory access, command-stream acceptance, and its completion IRQ; it does not
test S2MM, rendering, or framebuffer memory accesses.

Do not arm S2MM expecting a NOP response. A later response-producing command
must arm RX before TX and use the actual RasterIX packet format/length.
The loopback test below does this using a valid FrameStreamingCore command.

### 5. Test both directions with a valid stream-loopback command

Rebuild/copy the updated `proxy-smoke` executable using step 2. This test uses
the already working kernel, DTB, FPGA bitstream and proxy module; it adds no
kernel ABI. On ARES, run:

```sh
grep xilinx-dma /proc/interrupts
./proxy-smoke --loopback
grep xilinx-dma /proc/interrupts
```

Expected result:

```text
PASS: 1 RasterIX stream loopback packet(s), 64 payload bytes verified; MM2S and S2MM completed
```

Both PLIC **7** and **8** counts should increase, normally once each. The test:

1. Fills an RX buffer with the inverse of the expected data, so stale buffer
   contents or a short response cannot accidentally pass.
2. Arms S2MM for 64 bytes using `START_XFER`.
3. Sends a 72-byte MM2S packet: `0x50000040`, an ignored zero address word,
   then 64 payload bytes. It waits for TX completion.
4. Waits for RX completion, compares every returned word, and checks four
   guard words after the requested RX length for an overrun.

`FrameStreamingCore` decodes bits 31:30 as destination and 29:28 as source.
Channel 1 is ST0, so `0x50000000 | length` routes command-input payload back to
the response stream. The word after the command is still required, but with
no memory channel selected it is **not a physical address to read or write**.
Payload words, including values resembling commands, stay inside this counted
stream and do not reach the rendering parser.

If the single transfer passes, run:

```sh
./proxy-smoke --stress 100
grep xilinx-dma /proc/interrupts
dmesg | tail -40
```

This cycles through 64, 256, 4096 and 65536-byte payloads and all 21 buffer
slots. Sequence-dependent patterns help detect stale data and incorrect buffer
selection. Both IRQ counts should rise as packets complete. The default count
for `--stress` is 100; an explicit count from 1 to 100000 is accepted. Stop on
the first failure. After a stream timeout, inspect the log/ILA and reset/reboot
the FPGA system before retrying.

This exercises MM2S DDR reads, RasterIX stream routing, S2MM DDR writes, CPU
visibility of the received bytes, and both completion paths. It does not test
RasterIX's own AXI memory master, drawing commands, or framebuffer scanning.
Those follow after both DMA directions are verified on hardware.

For a failing RX transfer, useful ILA probes are:

- `axi_dma_0/M_AXIS_MM2S`: TVALID/TREADY/TDATA/TLAST.
- `ARES_RasterIXWrapper_0/m_cmd_resp_axis` / DMA S_AXIS_S2MM:
  TVALID/TREADY/TDATA/TLAST, plus DMA TKEEP (all four byte lanes in this BD).
- DMA M_AXI_S2MM: AWVALID/AWREADY/AWADDR, WVALID/WREADY/WLAST,
  BVALID/BREADY/BRESP; S2MM IRQ and PLIC input 8.

No response stream points to routing/packet/reset problems. A response stalled
on TREADY points toward S2MM readiness or downstream AXI writes. A completed
write with no Linux completion needs IRQ/status investigation. Preserve logs
before resetting; use the bound driver rather than competing register writes.

Stop applications and unmap/close both devices before replacing the module:

```sh
rmmod ares_dma_proxy
insmod ./ares_dma_proxy.ko
```

Keep loading manual until the tests pass. For automatic loading later, install
the module in `/lib/modules/$(uname -r)/extra/`, run `depmod -a` if available,
and arrange `modprobe ares_dma_proxy` in your Buildroot startup configuration.

## ABI and behavior

- Same 21-buffer layout, enum values, 1024-byte structure alignment, and RV32
  ioctl numbers as RasterIX's existing `dma-proxy.h`. The header here uses a
  fixed 32-bit ioctl argument size; upstream encoded a pointer size. This port
  targets ARES/RV32, not the unchanged upstream application's 64-bit ABI.
- `START_XFER`: accept one buffer asynchronously. Status zero means accepted;
  call `FINISH_XFER` to determine completion. `XFER` combines start and finish.
- TX uses `DMA_MEM_TO_DEV`; RX uses `DMA_DEV_TO_MEM`. Both allocate and map
  coherent memory with `dmaengine_get_dma_device(chan)`.
- One open file and one outstanding transfer per channel. TX and RX have
  separate locks and can operate concurrently. The original RasterIX backend
  serializes its own calls; the kernel transport does not enforce that policy.
- Buffer index must be 0–20. Length must be 4-byte aligned, nonzero, and at
  most 1 MiB. Start addresses have at least 1024-byte alignment. Buffer lengths
  are copied once before descriptor preparation; userspace must not modify
  a buffer while DMA owns it.
- `mmap` accepts offset zero and the complete buffer array only. Mappings keep
  their file/channel/allocation alive, including when the descriptor is closed
  before `munmap`. Unmap before reopening the same channel.
- Invalid commands, bad user pointers, bounds failures, submission failures,
  and timeouts return negative errno. Completion failure also updates the
  shared status. The wait timeout is three seconds.
- On timeout/interruption, DMA is terminated and callbacks synchronized. The
  channel is faulted until the transport is restarted. **AXI DMA resets can
  affect both directions**; abandon both transactions after such an error.
  Module reload does not reset RasterIX's command parser. After a real stream
  timeout, reset/reboot the FPGA system before sending another command sequence.
- There is no automatic traffic, ioctl to arbitrary physical memory, or
  framebuffer allocation. This is a userspace transport, not a DRM driver.

## If a step fails

- `Invalid module format`: the module was built for a different kernel release
  or configuration. Check `dmesg`, and use the kernel image from the same build.
- Missing `Module.symvers` / unresolved symbols: finish the full kernel build
  with modules enabled before building this module.
- `insmod` succeeds but no device files: a driver module can load without
  binding. Check that the deployed DTB contains `/dma_proxy`, the Xilinx
  controller is bound, and `dmesg` has no probe/deferred-probe errors.
- Allocation failure: confirm `CmaTotal` is roughly 65536 KiB before loading,
  enough CMA remains free, and the boot log has no reservation failure. Do not
  use a fixed physical address in place of a failed DMA allocation.
- NOP timeout: capture DMA MM2S AR/R, command TVALID/TREADY/TLAST, and IRQ 7.
  Stop further submissions and inspect the kernel log/ILA before resetting.

## Checks performed here

The driver source cross-compiles with the local RV32 kernel flags and headers
with warnings treated as errors. The smoke program cross-compiles statically
with the local Buildroot toolchain. DTB compilation and RV32 ABI/configuration
checks are performed separately. A final module link/load and actual transfers
require your rebuilt module-enabled kernel and hardware.

The loopback packet builder is also checked against the **imported RTL used
by Vivado**, not just a software protocol model:

```sh
sh linux/dma-proxy/tests/check-loopback-rtl.sh
```

Run from the FPGA repository on a host with Verilator and a C++ compiler.
It checks 48 successive packets across all four sizes, continuous streams,
input gaps and output backpressure. It verifies exact payload/TLAST and asserts
that neither the rendering stream nor RasterIX AXI memory requests are active.
This simulation passes, and the stream loopback has also passed on ARES.

DMA lifetime/allocation rules follow the kernel's
[DMAengine client API](https://docs.kernel.org/driver-api/dmaengine/client.html)
and [DMA mapping API](https://www.kernel.org/doc/html/latest/core-api/dma-api.html).

After stream loopback passes, continue with the guarded RasterIX AXI
[memory test](MEMORY-TEST.md).

After the memory round-trip passes, rebuild the FPGA for the corrected
framebuffer acknowledgement and run the [color-bar display test](DISPLAY-TEST.md).

After the color-bar test passes, continue with the [RasterIX OpenGL clear and
triangle test](../rasterix/README.md).

# RasterIX AXI memory test

This is the next test after `--loopback`. It exercises RasterIX's own AXI
memory master:

```text
Linux TX buffer -> MM2S -> RasterIX STORE -> reserved DDR scratch
reserved DDR scratch -> RasterIX LOAD -> S2MM -> Linux RX buffer -> compare
```

It does not initialize rendering, swap a framebuffer, or alter VGA output.

## 1. Boot with the scratch reservation

Use `linux/axi-dma/tree-rasterix-memory.dtb` as the SD card's `tree.dtb`.
Back up the current working DTB first, then reboot. Copying the DTB without
rebooting does not reserve memory in the running kernel.

This tree includes the working DMA/proxy configuration and adds:

```dts
&{/reserved-memory} {
    rasterix_scratch: rasterix-scratch@97f00000 {
        reg = <0x97f00000 0x00100000>;
        no-map;
        status = "okay";
    };
};
```

The 1 MiB range `0x97f00000-0x97ffffff` is inside RasterIX's current
`0x90000000-0x97ffffff` SmartConnect window. Linux excludes it from normal RAM
and CMA. It does not overlap the bootloader's DTB, OpenSBI, or kernel load
addresses, and it leaves the old VDP reservation at `0x9f800000` unchanged.

To rebuild the DTB on the PC:

```sh
cd /home/lovro/ARES/ARES_fpga/ARES_fpga
dtc -I dts -O dtb -o linux/axi-dma/tree-rasterix-memory.dtb \
    linux/axi-dma/tree-rasterix-memory.dts
```

If your deployed DTS has changed, include `ares-rasterix-scratch.dtsi` from
that current working tree instead. Keep the node name, address and size exact;
the test deliberately refuses other layouts.

## 2. Copy the updated test program

The updated RV32 executable is `linux/dma-proxy/proxy-smoke`. Rebuild it with:

```sh
cd /home/lovro/ARES/ARES_fpga/ARES_fpga/linux/dma-proxy
/home/lovro/ARES/buildroot/output/host/bin/riscv32-buildroot-linux-gnu-gcc \
    -Wall -Wextra -Werror -O2 -static -o proxy-smoke proxy-smoke.c
```

Copy it to ARES. The proxy module ABI did not change, so keep the currently
working kernel and `ares_dma_proxy.ko`. Run with no other RasterIX application
using the proxy, and do not use the scratch region as a framebuffer.

## 3. Run the hardware test

As root on ARES:

```sh
grep -i '97f00000' /proc/iomem
grep xilinx-dma /proc/interrupts
./proxy-smoke --memory
grep xilinx-dma /proc/interrupts
dmesg | tail -40
```

Expected output includes:

```text
PASS: DT and Linux reserve 0x97f00000-0x97ffffff for scratch memory
PASS: 1 RasterIX memory round-trip(s), 64 payload bytes plus memory guards verified
```

The `/proc/iomem` entry should cover the entire range and be named `Reserved`.
One round sends two STORE packets and one LOAD packet, so IRQ 7 normally rises
by three and IRQ 8 by one. Returned-data verification is the decisive result.

If it passes, run:

```sh
./proxy-smoke --memory-stress 100
grep xilinx-dma /proc/interrupts
dmesg | tail -40
```

This cycles through 64, 256, 4096, and 65536-byte payloads; four scratch
addresses; and all 21 DMA buffers. Some transfers span 4 KiB boundaries while
each generated AXI burst remains 64-byte aligned. The default stress count is
100; an explicit count from 1 to 100000 is accepted.

## What is checked

Before issuing any memory-test DMA, the program verifies that the running DT
contains the exact enabled `no-map` reservation and that `/proc/iomem` reports
the whole range as `Reserved`, with no overlapping System RAM or another
resource. There is no force option or arbitrary physical-address option.

Each round:

1. STOREs leading and trailing 64-byte guard bands around an inverse payload.
2. STOREs the expected pattern into only the payload range.
3. Arms S2MM before issuing a LOAD of both guards and the payload.
4. Checks every returned word, both DDR guard bands, and guard words beyond the
   requested S2MM length.

The CPU never maps the scratch range through `/dev/mem`; RasterIX alone accesses
the physical addresses.

## Current RTL limitation

The imported `FrameStreamingCore.v` does not wait for `BVALID` or inspect
`BRESP` before accepting the next command. MM2S completion only proves that the
command packet reached RasterIX; it does not prove the resulting AXI write has
completed.

This diagnostic waits 10 ms after each STORE before LOAD/readback. That is a
settling interval, not a formal AXI write-completion fence. A passing result
validates settled STORE/LOAD transactions, not tightly queued command ordering
or AXI error propagation. This RTL behavior should be fixed before depending
on back-to-back rendering commands that write and immediately read memory.

## Failure handling and ILA probes

If the program prints `REFUSED`, it submitted no memory-test DMA. Confirm that
the new DTB was booted and that `/proc/iomem` exposes physical ranges to root.

For a timeout or mismatch, stop, save the output and `dmesg | tail -60`, then
reset/reboot before retrying. Probe RasterIX's AXI master:

- AWVALID/AWREADY/AWADDR/AWLEN/AWSIZE and WVALID/WREADY/WDATA/WSTRB/WLAST.
- BVALID/BREADY/BRESP.
- ARVALID/ARREADY/ARADDR/ARLEN/ARSIZE and RVALID/RREADY/RDATA/RLAST/RRESP.
- Command and response TVALID/TREADY/TDATA/TLAST, plus DMA IRQs 7 and 8.

Trigger on addresses in `0x97f00000-0x97ffffff` or any non-OKAY response.

The implementation was checked against the actual FrameStreamingCore imported
by Vivado using an independent AXI RAM responder. It passed 32 STORE/LOAD
round-trips with checked addresses, burst geometry, data, guards, TLAST,
delayed B responses, and randomized stream/AXI backpressure. Run locally with:

```sh
python3 linux/dma-proxy/tests/check-scratch-reservation.py
sh linux/dma-proxy/tests/check-memory-rtl.sh
```

This memory path has now been reported passing on ARES. It completes the
RasterIX memory-transport milestone. Continue with the [framebuffer display
test](DISPLAY-TEST.md) before sending drawing commands.

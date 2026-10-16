# RasterIX framebuffer display test

This is the next test after the RasterIX memory round-trip. It writes a known
512x384 RGB565 image through RasterIX's own AXI master, programs RasterIX's
color-buffer address, and requests a VSync framebuffer swap:

```text
proxy MM2S -> RasterIX STORE -> DDR 0x97c00000
proxy MM2S -> RasterIX parser -> color-buffer register + VSync swap
DDR 0x97c00000 -> framebuffer AXI reader -> VGA
```

The expected screen has eight vertical bars (white, yellow, cyan, green,
magenta, red, blue, black), with a white border and white center cross. This
does not rasterize a triangle yet; it validates the complete external
framebuffer handoff and scanout path first. A one-source-pixel grid overlays
the bars every eight source pixels. The 640x480 output must repeat source
positions in the cadence 0,0,1,2,3,4,4,5,... on both axes.

## Required FPGA rebuild

Rebuild the bitstream before running this test. The custom framebuffer reader
previously reset `fb_swapped` low and emitted it as a pulse. RasterIX defines it
as an idle/completion level that resets high and goes low while a swap is in
progress. The old behavior deadlocks the rendering command parser before its
first command. NOP, stream-loopback, and STORE/LOAD tests bypass that parser,
which is why they could pass with the old bitstream.

In the open Vivado project:

```tcl
source linux/rasterix/tests/refresh-framebuffer-module.tcl
source debug/enable_debug.tcl
```

Wait for `impl_1` through `write_bitstream`, confirm timing passes, then program
these matching files:

```text
ARES_fpga.runs/impl_1/Block_top_wrapper.bit
ARES_fpga.runs/impl_1/Block_top_wrapper.ltx
```

The RTL change is in
`ARES_fpga.srcs/sources_1/new/ARES_RaxyerIX_framebuffer.v`. The handshake now
resets high, falls when accepting a swap, and returns high at VSync (or one
cycle later for a non-VSync request).

## Boot with framebuffer memory reserved

Use `linux/axi-dma/tree-rasterix-display.dtb` as the SD card's `tree.dtb` and
reboot. It retains the working DMA proxy and 1 MiB diagnostic scratch region,
and adds this exact reservation:

```dts
rasterix-framebuffers@97c00000 {
    reg = <0x97c00000 0x00200000>;
    no-map;
    status = "okay";
};
```

The reservation contains two 1 MiB framebuffer slots. A 512x384 RGB565 frame
uses `0x60000` bytes, so it fits in either slot. Both addresses are inside the
current RasterIX and framebuffer-reader SmartConnect window ending at
`0x97ffffff`. The test uses the first slot at `0x97c00000` and refuses to send
DMA if the running DT and `/proc/iomem` do not protect the full 2 MiB range.

Rebuild the DTB if necessary:

```sh
cd /home/lovro/ARES/ARES_fpga/ARES_fpga
dtc -I dts -O dtb -o linux/axi-dma/tree-rasterix-display.dtb \
    linux/axi-dma/tree-rasterix-display.dts
```

If the main boot tree has changed, include both
`ares-rasterix-scratch.dtsi` and `ares-rasterix-framebuffers.dtsi` from that
current tree and preserve the exact addresses, sizes, and `no-map` properties.

## Build and run the userspace test

The proxy module ABI is unchanged. Only rebuild and copy `proxy-smoke`:

```sh
cd /home/lovro/ARES/ARES_fpga/ARES_fpga/linux/dma-proxy
/home/lovro/ARES/buildroot/output/host/bin/riscv32-buildroot-linux-gnu-gcc \
    -Wall -Wextra -Werror -O2 -static -o proxy-smoke proxy-smoke.c
```

On ARES, with no other process using the proxy devices:

```sh
grep -i '97c00000' /proc/iomem
grep xilinx-dma /proc/interrupts
./proxy-smoke --display
grep xilinx-dma /proc/interrupts
dmesg | tail -40
```

Expected console result:

```text
PASS: DT and Linux reserve 0x97c00000-0x97dfffff for RasterIX framebuffer memory
PASS: RGB565 color bars stored and RasterIX VSync framebuffer swap acknowledged
```

MM2S/PLIC source 7 normally increases by two: one large STORE packet and one
parser packet. S2MM/source 8 does not increase. The final PASS means RasterIX
accepted the framebuffer command and the display reader acknowledged it at
VSync. Visually seeing the bars is the check that the framebuffer AXI reads,
line buffers, pixel ordering, VGA timing, and pins also work.

## ILA checks if the console passes but the screen does not

The existing `ila_1` has the five control signals. Trigger on `swap_fb` rising
and expect:

- `fb_addr = 0x97c00000`
- `fb_size = 0x30000` pixels
- `swap_fb_enable_vsync = 1`
- `fb_swapped` is high when idle, goes low after the request, and returns high
  at the next vertical blank

The existing `ila_0` monitors the framebuffer reader's AXI port. After the
swap it must issue 128-bit INCR reads beginning at `0x97c00000`. Each 512-pixel
line is four bursts, each burst is 16 beats (256 bytes), and successive line
bases differ by 1024 bytes. Check `ARVALID/ARREADY/ARADDR/ARLEN/ARSIZE`, then
`RVALID/RREADY/RLAST/RRESP`. Expected `ARLEN=15`, `ARSIZE=4`, and OKAY
`RRESP=0`. Each steady frame fetches 384 distinct source lines / 1,536
bursts, ending at `0x97c5ffff`. The swap command word is `0x23000094`.

If `swap_fb` never asserts, the parser stream is stalled or the new FPGA image
was not programmed. If the control handshake is correct but no AR request
appears, inspect the custom reader. AR requests with no R data point to the
SmartConnect/address path. Successful reads with a black or scrambled screen
point to line-buffer selection, pixel ordering, or VGA output.

## Local validation

These tests use the exact imported FrameStreamingCore, CommandParser, and
RegisterBank RTL plus the custom framebuffer module:

```sh
python3 linux/dma-proxy/tests/check-framebuffer-reservation.py
sh linux/dma-proxy/tests/check-display-command-rtl.sh
sh linux/dma-proxy/tests/check-framebuffer-handshake-rtl.sh
sh linux/dma-proxy/tests/check-framebuffer-scaler-rtl.sh
```

They verify fail-closed reservation checks, the full command encoding and
routing, framebuffer address/size register decode, the VSync flag, parser
acknowledgement, and the corrected reset/immediate/VSync handshake. Hardware
is still required to validate DDR scanout and the analog VGA result.

After this screen test passes, build and run the [RasterIX OpenGL clear and
triangle test](../rasterix/README.md) using the same buffer reservation and
command path.

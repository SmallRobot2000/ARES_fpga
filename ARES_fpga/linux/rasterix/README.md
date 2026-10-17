# RasterIX OpenGL triangle on ARES

This is the first real OpenGL rendering test after the DMA, RasterIX memory,
and framebuffer-display tests. It runs RasterIX's OpenGL 1.x software API on
Linux, uses RasterIX's threaded CPU-side vertex path, initializes three hardware
strips, then sends three triangle display lists through AXI DMA MM2S, rasterizes
them in the FPGA, commits the RGB565 strips to DDR, and switches the VGA reader
to the completed buffer at VSync. Each source frame uses `0x60000` bytes
within its unchanged 1 MiB slot. Depth, stencil, fog, and texture filtering are
enabled in RTL; mipmapping is disabled.

The test draws one smooth red/green/blue triangle on a dark blue background.
It deliberately disables textures, depth, and stencil so the first render
uses only the two already reserved color buffers.

## Build on the PC

The build expects the RasterIX source at `/home/lovro/ARES/RasterIX` and the
existing Buildroot toolchain at `/home/lovro/ARES/buildroot/output/host`.
RasterIX needs the ceiling-division fix and regression test in
`patches/0001-correct-strip-ceiling.patch` (already applied in this workspace).
For another checkout, apply it with `git -C /path/to/RasterIX apply /absolute/path/to/patch`.

```sh
cd /home/lovro/ARES/ARES_fpga/ARES_fpga
linux/rasterix/build.sh
```

The result is `linux/rasterix/ares-gl-triangle`, a static RV32 Linux binary.
The CMake configuration is tied to the current FPGA parameters: IF variant,
65536-pixel internal framebuffer, one TMU, 2048-byte texture pages, and three
128-line strips for 512x384. Compile-time checks require seven proxy buffers,
matching the driver allocation, and the exact two framebuffer addresses.

After changing the RTL module parameters, refresh Vivado's module references
with `source linux/rasterix/tests/refresh-framebuffer-module.tcl` in the open
project before rebuilding. Local verification is described in
[512X384-VALIDATION.md](512X384-VALIDATION.md).

## Copy and run on ARES

Use the rebuilt 512x384 FPGA image and runtime together. The VGA output
remains 640x480, with nearest-neighbor 5:4 scaling in the 100 MHz domain.
Keep the existing reserved-memory layout and first validate `proxy-smoke --display`. Copy the executable to the board, for example:

```sh
scp linux/rasterix/ares-gl-triangle root@192.168.1.93:/root/
```

On ARES, make sure no other program has either DMA-proxy device open, then run:

```sh
grep -i '97c00000' /proc/iomem
grep xilinx-dma /proc/interrupts
chmod +x /root/ares-gl-triangle
/root/ares-gl-triangle
grep xilinx-dma /proc/interrupts
dmesg | tail -40
```

Expected output includes:

```text
PASS: DT and Linux reserve 0x97c00000-0x97dfffff for RasterIX framebuffer memory
GL_VENDOR   : ...
GL_RENDERER : ...
GL_VERSION  : ...
PASS: RasterIX OpenGL clear and RGB triangle frame completed
```

The VGA display should change from the color bars to one large, smoothly
colored RGB triangle on a dark blue background. During rendering, PLIC source
7/MM2S increases by six: three setup lists followed by three render lists because
512x384 is divided into three 128-line hardware strips. Clean context destruction
submits three teardown lists, so a before/after `/proc/interrupts` measurement of
the complete process normally increases by nine. Source 8/S2MM should remain
unchanged because this test does not read data back from RasterIX.

A console PASS means every display list completed and the final VSync swap was
acknowledged. The visible image additionally confirms rasterization, the
RasterIX AXI writes to the expected strip addresses, and the framebuffer
reader's VGA scanout.

## If it stops or the image is wrong

Do not immediately rerun after a DMA timeout; save `dmesg` and reset or reboot
first. Use the existing ILA probes and trigger on the first missing event:

1. DMA MM2S: `TVALID`, `TREADY`, `TDATA`, and `TLAST`. Expect eighteen packets
   over the complete process: three setup, three render, and three teardown packets.
2. RasterIX parser input: the same stream after FrameStreamingCore routes each
   DDU STREAM payload to the command parser.
3. RasterIX status: `perf_busy`, `perf_triangle_rendering`, and
   `perf_rasterizer_stall` should become active while the triangle is drawn.
4. RasterIX memory AXI: `AWVALID/AWREADY/AWADDR/AWLEN/AWSIZE`,
   `WVALID/WREADY/WSTRB/WLAST`, and `BVALID/BREADY/BRESP`. This first frame's
   writes must remain in `0x97c00000-0x97c5ffff`, and every response must be
   OKAY.
5. Framebuffer control: `swap_fb`, `swap_fb_enable_vsync`, `fb_addr`,
   `fb_size`, and `fb_swapped`. The final address should be `0x97c00000`, size
   `0x30000` pixels, and `fb_swapped` should return high at vertical blank.
6. VGA reader AXI: reads should start from the selected framebuffer with
   `RRESP=OKAY` and regular `RLAST` boundaries.

If the process reports `REFUSED`, the running device tree or `/proc/iomem`
does not contain the exact protected 2 MiB framebuffer range. Reinstall
`tree-rasterix-display.dtb` and reboot. An `open` error usually means the proxy
module/devices are absent or another RasterIX process still owns them. A
`START_XFER` or `FINISH_XFER` error identifies the DMA stage rather than the GL
API.

## Animated demo and application API

`ares-gl-animate` continuously rotates the triangle using ordinary OpenGL
matrix and drawing calls. It reports measured FPS, completed MM2S transfers and
bytes, and average swap/VSync wait time every two seconds. Run indefinitely or
use a finite hardware test:

```sh
./ares-gl-animate
./ares-gl-animate --frames 300
```

Press Ctrl-C to stop the indefinite run cleanly. Each animation frame submits
three MM2S strip lists; S2MM remains unused. The program's counters exclude three
startup and three teardown lists, while `/proc/interrupts` includes them. See
[PROGRAMMING.md](PROGRAMMING.md) for the reusable `ares::GLContext`, conventional
`<GL/gl.h>` headers, a minimal application template, supported API scope, and
memory-map limitations.

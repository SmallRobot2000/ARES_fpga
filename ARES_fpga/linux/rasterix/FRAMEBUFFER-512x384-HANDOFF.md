# AI implementation handoff: 512x384 RasterIX framebuffer scaled to 640x480 VGA

> **Current configuration update:** this document records the original LG15
> conversion plan. The FPGA was subsequently changed to LG16: 65,536 internal
> pixels, three 512x128 strips, and texture filtering enabled. Current software,
> tests, and operational documentation follow that newer configuration; the
> LG15 recommendations below are retained only as historical design context.

Use this document as the implementation prompt and project context. Work in:

```text
/home/lovro/ARES/ARES_fpga/ARES_fpga
```

The goal is to make RasterIX render a **512x384 RGB565 framebuffer** while the
existing VGA output remains **640x480 at about 59.52 Hz**. Add a nearest-neighbor
5:4 scaler to the framebuffer scanout. Keep the entire scanout in the existing
100 MHz clock domain and retain the current `pixel_ce` pulse every four clocks.
Do not add a 65 MHz 1024x768 clock, an MMCM, an asynchronous FIFO, or another
clock-domain crossing.

The two resolutions are both 4:3. Scaling by 5/4 in both dimensions fills the
screen without cropping, letterboxing, or aspect-ratio distortion. The source
frame shrinks from 614,400 bytes to 393,216 bytes (`0x60000`), a 36% reduction.
At 59.52 frames/s, active scanout traffic drops from about 36.6 MB/s to about
23.4 MB/s before AXI overhead.

## Preserve these working parts

The board is an Artix-7 XC7A100T with a dual-core VexiiRiscv Linux system and
DDR3 MIG. RasterIX, AXI DMA MM2S/S2MM, and the custom framebuffer reader reach
DDR through SmartConnect and the coherent Vexii `dma_bus`. CompactFlash and
ENC28J60 are currently stable with IRQs. AXI DMA interrupts are PLIC source 7
for MM2S and source 8 for S2MM. DMA-proxy and the OpenGL triangle already work.

Preserve the framebuffer command handshake in
`ARES_fpga.srcs/sources_1/new/ARES_RaxyerIX_framebuffer.v`:

- `fb_swapped` resets high.
- A VSync-enabled request drives `fb_swapped` low and acknowledges it at
  vertical blank.
- An immediate request produces the working high -> low -> high handshake.
- The old displayed line remains visible until replacement line data is ready.
- No framebuffer AXI reads occur before RasterIX supplies a valid framebuffer.

Keep the VGA timing exactly as it is:

```text
H active/front/sync/back/total = 640/16/96/48/800
V active/front/sync/back/total = 480/10/2/33/525
pixel clock enable             = 100 MHz / 4 = 25 MHz
refresh                         = 25 MHz / (800 * 525) = 59.52 Hz
```

Keep the two 1 MiB framebuffer slots and the existing device-tree reservation:

```text
front/back slots: 0x97c00000 and 0x97d00000
reserved range:   0x97c00000-0x97dfffff
```

Each new active image uses only offsets `0x00000-0x5ffff` within its slot. Do
not shrink or relocate the reservation; the unused part is useful guard space
and retaining it avoids changing the established physical memory map.

## Resolve the current configuration mismatch first

The checked-out tree currently disagrees with itself:

- `RasterIXwrapper.v` says `2^15` in a comment but instantiates
  `FRAMEBUFFER_SIZE_IN_PIXEL_LG(16)`.
- `linux/rasterix/CMakeLists.txt` sets
  `RIX_CORE_FRAMEBUFFER_SIZE_IN_PIXEL_LG` to 15.
- Hardware currently has `ENABLE_MIPMAPPING(0)` while CMake sets
  `RIX_CORE_ENABLE_MIPMAPPING` to `true` and `ares_gl_context.cpp` asserts it.
- Hardware currently has stencil and fog enabled and texture filtering
  disabled.

Make hardware and software identical before testing. For this conversion the
recommended target is framebuffer log2 size **15** (32,768 pixels), depth on,
stencil on, fog on, and then choose the same mipmapping setting in RTL and
CMake. Do not quietly enable a feature only on one side.

With 512x384, a 32,768-pixel strip produces exactly six render strips:

```text
512 * 384 / 32768 = 6
```

Log2 size 16 would produce three strips but consumes substantially more BRAM
and was difficult to place and route with the added features. Prefer log2 size
15 unless a completed implementation proves that log2 size 16 meets timing.

## Fix RasterIX's exact-multiple strip-count bug

The external RasterIX source is at:

```text
/home/lovro/ARES/RasterIX
```

`lib/gl/RenderConfigs.hpp::getDisplayLines()` currently computes
`size / strip_size + 1` except when the whole framebuffer equals one strip.
That returns seven for a framebuffer that fits exactly in six strips. Replace
it with a true ceiling division:

```cpp
static constexpr std::size_t getDisplayLines()
{
    constexpr std::size_t pixels = MAX_DISPLAY_WIDTH * MAX_DISPLAY_HEIGHT;
    return (pixels + FRAMEBUFFER_SIZE_IN_PIXEL - 1)
        / FRAMEBUFFER_SIZE_IN_PIXEL;
}
```

Check the dispatcher and final-strip handling for assumptions that the last
strip is partial. Add compile-time tests for exact and non-exact multiples if
the RasterIX tree has a suitable test location. This external tree may be
outside the writable workspace in an automated session; request access if it
is required rather than working around the incorrect count.

After this fix, update `linux/rasterix/ares_gl_context.cpp` to assert six
display lines. The minimum DMA-proxy buffer count becomes `2 * 6 + 1 = 13`.
The current count of 21 is safe and can remain unchanged.

## RTL scanout changes

The primary file is:

```text
ARES_fpga.srcs/sources_1/new/ARES_RaxyerIX_framebuffer.v
```

Separate source dimensions from output timing. Suggested parameter names are:

```verilog
parameter SOURCE_WIDTH  = 512;
parameter SOURCE_HEIGHT = 384;
```

Keep `H_ACTIVE=640` and `V_ACTIVE=480` for VGA. `video_active` must be based on
the VGA active area, not on the 512x384 source dimensions.

The exact nearest-neighbor mapping is:

```text
source_x = floor(output_x * 4 / 5)
source_y = floor(output_y * 4 / 5)
```

Examples:

```text
output x: 0 1 2 3 4 5 6 7 8 9 ... 639
source x: 0 0 1 2 3 4 4 5 6 7 ... 511
```

Avoid general multipliers and dividers in the pixel path. Use a source index
and a phase accumulator. Initialize both to zero at the first active pixel or
line. After emitting each output position:

```text
phase = phase + 4
if phase >= 5:
    phase = phase - 5
    source_index = source_index + 1
```

This naturally repeats one pixel out of every group of five. The same
algorithm applies vertically. An equivalent group implementation maps the
five remainder positions to `{0, 0, 1, 2, 3}` and advances the source group by
four.

The current XPM line buffer has a synchronous one-cycle read latency and a
32-bit read port containing two RGB565 pixels. Retaining that interface is the
lowest-risk implementation. Drive:

```text
read_word_address = source_x >> 1
half_select       = source_x[0]
```

Pipeline `half_select`, video-active state, and any bank selection by the same
latency as the BRAM read. Because `pixel_ce` occurs only once per four 100 MHz
cycles, there is enough time to present an address and receive data before the
next VGA pixel. Verify this explicitly in simulation; avoid introducing a
one-pixel horizontal shift.

### AXI line fetch

A 512-pixel RGB565 line is exactly 1,024 bytes. The 128-bit AXI interface uses
16-byte beats and the reader currently requests 16 beats per burst:

```text
4 bursts/line * 16 beats/burst * 16 bytes/beat = 1024 bytes/line
```

Change `LINE_BYTES` to 1,024 through `SOURCE_WIDTH`, making
`BURSTS_PER_LINE=4`. There are exactly 64 128-bit writes per source line.
Reduce the write address and depth where practical:

```text
128-bit write depth = 64, address width = 6
32-bit read depth   = 256, address width = 8
memory size         = 8192 bits per line
```

The 128-bit write width may still force two BRAM primitives per buffer, so do
not claim a BRAM saving until post-synthesis utilization confirms it. A later
optimization can narrow the physical write port and throttle or unpack each
AXI beat, but that adds control complexity and is outside the first working
conversion.

### Vertical scaling and ping-pong buffers

The existing controller assumes one fetched source line per VGA output line.
That assumption must be removed. Maintain a displayed source-line index and a
vertical 0..4 phase separately from `v_count`.

At the end of each active VGA line, calculate whether the next output line
uses the same source line or advances to the next source line:

- If it repeats, keep `display_bank` unchanged, keep that bank ready, and do
  not issue another AXI fetch for the repeated line.
- If it advances, switch to the other bank only after that bank contains the
  next distinct source line. Then free the old bank and prefetch the following
  distinct source line into it.
- Prefetch a distinct next source line as soon as the other bank is free. Do
  not derive the fetch request directly from `v_count + 1`.
- At frame start, fetch source line 0. Output rows 0 and 1 both use source line
  0. The final active output row maps to source line 383.
- At a VSync framebuffer swap, invalidate stale prefetched lines, adopt the new
  base address, fetch its source line 0, and preserve the existing swap
  acknowledgement behavior.

In steady state there must be exactly 384 source-line fetches, or 1,536 AXI
read bursts, per displayed frame. Repeated VGA output lines must not cause
duplicate DDR reads.

Use `fb_size` defensively if convenient, but do not change the command protocol
as part of this work. The supplied size is a pixel count, and the new expected
value is 196,608 (`0x30000`).

## Software and memory changes

Update these files together:

1. `linux/rasterix/CMakeLists.txt`
   - Set maximum display width/height to 512/384.
   - Keep framebuffer log2 size 15 for six strips.
   - Make the mipmapping setting match `RasterIXwrapper.v`.
   - A 512x384 RGB565 depth buffer is `0x60000` bytes. If external framebuffer
     autoload is enabled later, keep depth at relative `0x00600000` and move
     stencil from relative `0x00696000` to `0x00660000`. Verify the RasterIX
     external stencil packing/alignment before enabling autoload. Both fit in
     the reserved `0x97e00000-0x97efffff` auxiliary slot.
2. `linux/rasterix/include/ares/gl_context.hpp`
   - Set `GLContext::width=512` and `height=384`.
3. `linux/rasterix/ares_gl_context.cpp`
   - Assert 512x384, log2 size 15, and six display lines.
   - Make feature assertions match the actual wrapper.
4. `linux/rasterix/tests/capture_triangle.cpp`
   - Set render resolution and viewport to 512x384.
5. Search all of `linux/rasterix`, `linux/dma-proxy`, and `linux/axi-dma` for
   hard-coded `640`, `480`, `0x96000`, and old strip counts. Update only values
   that describe the RasterIX source framebuffer; retain VGA timing values.
6. `linux/dma-proxy/rasterix-display.h`
   - Set display width/height to 512/384.
   - `RIX_DISPLAY_PIXELS` becomes 196,608 (`0x30000`).
   - `RIX_DISPLAY_BYTES` becomes 393,216 (`0x60000`).
   - The encoded framebuffer/swap word becomes `0x23000094` because it is
     `0x20000000 | (0x30000 << 8) | 0x94`.
7. Update the expected command in:
   - `linux/dma-proxy/tests/check-framebuffer-reservation.py`
   - `linux/dma-proxy/tests/display-command-rtl.cpp`
8. Update framebuffer-size comments in:
   - `linux/axi-dma/ares-rasterix-framebuffers.dtsi`
   - `linux/dma-proxy/DISPLAY-TEST.md`
   - `linux/rasterix/README.md`
   - `linux/rasterix/PROGRAMMING.md`
   - `linux/rasterix/BRAM-PLAN.md`

Do not change these physical allocations:

```text
textures:       0x97800000-0x97bfffff
framebuffers:   0x97c00000-0x97dfffff
depth/stencil:  0x97e00000-0x97efffff
DMA scratch:    0x97f00000-0x97ffffff
```

The current working tree contains many user and Vivado-generated changes. Do
not reset, clean, regenerate, or overwrite unrelated files. Inspect diffs
before editing, and keep the conversion changes reviewable.

## Verification required before hardware use

Extend the Verilator coverage rather than relying only on a successful build.
The existing handshake test is
`linux/dma-proxy/tests/framebuffer-handshake-rtl.cpp`.

Add checks for all of the following:

- Coordinate mapping:
  - output `(0,0)` -> source `(0,0)`
  - output x 1 -> source x 0
  - output x 2 -> source x 1
  - output x 4 -> source x 3
  - output x 5 -> source x 4
  - output x 639 -> source x 511
  - use the same cases vertically, ending at output y 479 -> source y 383
- No source coordinate ever exceeds x=511 or y=383.
- A frame uses all 512 source columns and all 384 source rows.
- Each fetched source line issues four 16-beat INCR bursts.
- No read address exceeds `framebuffer_base + 0x5ffff`.
- Repeated output rows do not fetch their source row again.
- Steady state totals 384 line fetches and 1,536 AR bursts per frame.
- Both immediate and VSync framebuffer handshakes retain their existing
  behavior.
- No AXI framebuffer traffic starts before a valid swap command.
- There is no one-pixel or one-line pipeline offset.

Run the reservation and display-command tests after changing the command word.
Compile the device tree and rebuild the OpenGL runtime from a clean CMake build
directory so cached RasterIX definitions cannot mask a mismatch. Then run
Vivado synthesis and implementation and inspect timing plus actual BRAM/LUT/DSP
utilization. Do not accept synthesis alone as proof that the 100 MHz design
routes.

On hardware, first display color bars with a one-source-pixel grid or numbered
line pattern. Confirm the exact 5:4 repeat cadence and full-screen coverage.
Then run the animated OpenGL triangle and monitor CompactFlash, Ethernet, and
DMA interrupts for regression.

Useful ILA probes are:

```text
h_count, v_count, pixel_ce, video_active
source_x, source_y, horizontal_phase, vertical_phase
display_bank, bank_ready, fetch_req, fetch_req_line
ram_axi_arvalid, ram_axi_arready, ram_axi_araddr, ram_axi_arlen
ram_axi_rvalid, ram_axi_rready, ram_axi_rlast, ram_axi_rresp
swap_fb, swap_fb_enable_vsync, fb_addr, fb_size, fb_swapped
```

Expected AXI addresses for the first framebuffer are from `0x97c00000` through
`0x97c5ffff`; for the second they are from `0x97d00000` through `0x97d5ffff`.
Treat an AXI error response, out-of-range address, stalled request, incorrect
line-fetch count, or a hardware/software feature mismatch as a blocking bug.

## Completion criteria

The work is complete when all RTL and software constants agree on 512x384,
RasterIX emits six strips with log2 size 15, all automated tests pass, Vivado
implementation meets timing, the 640x480 VGA screen shows a correctly scaled
full-screen image, swap and VSync remain stable, and CF plus Ethernet continue
working under animated rendering load.

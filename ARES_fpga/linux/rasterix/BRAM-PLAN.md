# RasterIX BRAM and feature plan

This audit uses the routed `XC7A100T` design and a temporary out-of-context
RasterIX synthesis. The temporary synthesis did not modify the FPGA project.

## Current selected configuration

The current hardware uses an LG16 internal framebuffer: 65,536 pixels per
strip and three 512x128 strips per frame. Depth, stencil, fog, and texture
filtering are enabled; mipmapping and framebuffer alpha are disabled. Software
uses the matching LG16 setting. This supersedes the earlier LG15 recommendation
below and requires a fresh implementation/timing result for the enlarged
internal color, depth, and stencil buffers.

## Historical routed baseline

The routed design uses 124 of 135 BRAM tiles (91.85%):

| Block | RAMB36 | RAMB18 | Tile equivalents |
|---|---:|---:|---:|
| RasterIX | 62 | 15 | 69.5 |
| Dual-core Vexii SoC | 15 | 58 | 44.0 |
| VGA framebuffer reader line buffers | 8 | 0 | 8.0 |
| AXI DMA | 2 | 1 | 2.5 |
| **Total** | **87** | **74** | **124.0** |

The routed design also uses 52,830/63,400 LUTs and 14,831/15,850 slices.
Consequently, slice placement is at least as important as the BRAM count.

The old VDP tile and sprite memory IP synthesis runs are stale. They are not
instantiated in the routed design and cannot be removed to recover BRAM. That
baseline used two instances of `blk_mem_gen_bit_line`.

RasterIX's baseline 69.5 tiles consisted of:

| RasterIX storage | Tile equivalents |
|---|---:|
| 65,536-pixel RGB555 internal color strip | 30.0 |
| 65,536-pixel 16-bit internal depth strip | 32.0 |
| Texture/stream FIFOs and other core RAM | 7.5 |

Depth is already instantiated. Enabling `GL_DEPTH_TEST` therefore costs no
additional BRAM, provided every strip is cleared before use while framebuffer
autoload remains disabled.

## Previous LG15 recommendation

Use a 32,768-pixel internal strip at 512x384, with depth, stencil, and fog.
Keep mipmapping disabled in both hardware and software:

```verilog
.FRAMEBUFFER_SIZE_IN_PIXEL_LG(15),
.ENABLE_DEPTH_BUFFER(1),
.ENABLE_STENCIL_BUFFER(1),
.ENABLE_MIPMAPPING(0),
.ENABLE_FOG(1),
```

The matching software settings are:

```cmake
set(RIX_CORE_FRAMEBUFFER_SIZE_IN_PIXEL_LG 15 CACHE STRING "" FORCE)
set(RIX_CORE_ENABLE_MIPMAPPING false CACHE STRING "" FORCE)
```

This produces six 64-row strips at 512x384 after correcting the upstream
ceiling division. At least 13 DMA-proxy buffers are required; keep all 21.
Each RGB565 frame uses `0x60000` bytes in its unchanged 1 MiB slot.

The historical mipmapping-enabled combination was synthesized with Vivado 2025.2:

| RasterIX configuration | LUTs | Registers | BRAM tiles | DSPs |
|---|---:|---:|---:|---:|
| Current: LG16, depth | 11,894 | 8,687 | 69.5 | 18 |
| Proposed: LG15, depth, stencil, mipmap, fog | 13,788 | 9,820 | 49.5 | 36 |
| Difference | +1,894 | +1,133 | **-20.0** | +18 |

The proposed RasterIX BRAM breakdown is:

| RasterIX storage | Tile equivalents |
|---|---:|
| 32,768-pixel RGB555 internal color strip | 18.0 |
| 32,768-pixel 16-bit internal depth strip | 16.0 |
| 32,768-pixel 4-bit internal stencil strip | 8.0 |
| Texture/stream FIFOs and other core RAM | 7.5 |
| **Total** | **49.5** |

Substituting this block into the routed design gives an estimated whole-design
BRAM use of 104/135 tiles (77.04%), leaving 31 tiles. Full implementation is
still required because the extra feature logic raises estimated LUT use to
about 54,724/63,400 (86.32%), and current slice use is already high.

Fog itself uses no BRAM. Its synthesized hierarchy uses 567 LUTs, 313
registers, and one DSP. Its two 32-entry function tables map to LUTRAM.
Mipmapping also adds no BRAM in this build because external texture memory is
enabled; it adds LOD, reciprocal, and coordinate arithmetic. Stencil is the
feature that adds eight BRAM tile equivalents.

The current LG16 conversion submits three strip lists per frame. Measure
complex scenes on hardware after implementation meets timing.

## 512-pixel scanout buffers

Each source line is 8192 bits, written as 64 x 128-bit AXI beats and read as
256 x 32-bit words. Two common-clock XPM simple-dual-port buffers retain one
cycle of read latency. The wide write port can still force two BRAM primitives
per buffer; do not infer physical savings from the smaller logical depth.
Use actual synthesis and routed utilization reports for this configuration.
The historical measurements below are not timing proof for the conversion.

## Texture DDR allocation required for mipmapping

The software reserves 2048 texture pages of 2 KiB at `0x97800000`.
Mipmapping remains disabled for this conversion.

A suitable map inside the existing RasterIX AXI window is:

| Use | Physical range | Size |
|---|---|---:|
| Texture pages | `0x97800000-0x97bfffff` | 4 MiB |
| Color buffer 0 | `0x97c00000-0x97cfffff` | 1 MiB slot |
| Color buffer 1 | `0x97d00000-0x97dfffff` | 1 MiB slot |
| Future depth/stencil or spare | `0x97e00000-0x97efffff` | 1 MiB |
| DMA diagnostic scratch | `0x97f00000-0x97ffffff` | 1 MiB |

For that map, use:

```cmake
set(RIX_CORE_GRAM_MEMORY_LOC 0x97800000 CACHE STRING "" FORCE)
set(RIX_CORE_COLOR_BUFFER_LOC_0 0x00400000 CACHE STRING "" FORCE)
set(RIX_CORE_COLOR_BUFFER_LOC_1 0x00400000 CACHE STRING "" FORCE)
set(RIX_CORE_COLOR_BUFFER_LOC_2 0x00500000 CACHE STRING "" FORCE)
set(RIX_CORE_NUMBER_OF_TEXTURE_PAGES 2048 CACHE STRING "" FORCE)
set(RIX_CORE_NUMBER_OF_TEXTURES 256 CACHE STRING "" FORCE)
```

Reserve `0x97800000-0x97bfffff` with a `no-map` device-tree node. A complete
256x256 RGB565 mip chain consumes 174,762 bytes, or 86 pages of 2 KiB. The
4 MiB pool can hold approximately 24 such maximum-size chains, and many more
smaller textures.

Keep internal framebuffer autoload disabled and clear color, depth, and
stencil every frame. Persistent external depth and stencil buffers need their
the reserved auxiliary slot. Depth starts at relative `0x00600000` and
stencil at `0x00660000`. Validate external stencil packing/alignment before
enabling autoload.

## Sacrifices to avoid

- Do not disable the 16-bit depth strip. It would save 32 tiles at LG16 or 16
  at LG15, but it removes the feature most useful for 3D rendering.
- Do not reduce Vexii caches first. The Vexii block uses 44 tiles, including a
  seven-tile shared L2 and per-core L1/register memories, but OpenGL vertex
  processing and Linux both depend on those caches.
- Keep the alpha channel disabled. Adding it costs six more tiles at LG15 and
  the VGA output remains RGB565.
- RGB444 internal color would save about six tiles relative to RGB555, but it
  introduces visible banding and is unnecessary with the LG15 plan.
- The 16 KiB external-texture cache currently uses about 2,752 LUTRAM LUTs.
  A plain `ram_style="block"` attribute was tested and Vivado rejected the
  inferred access pattern for BRAM. Moving it to BRAM requires a synchronous,
  pipelined cache-memory refactor rather than an attribute change.


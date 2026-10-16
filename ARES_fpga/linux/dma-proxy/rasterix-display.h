/* SPDX-License-Identifier: GPL-2.0-only */
#ifndef ARES_RASTERIX_DISPLAY_H
#define ARES_RASTERIX_DISPLAY_H

#include <stdint.h>

#define RIX_FRAMEBUFFER_BASE UINT32_C(0x97c00000)
#define RIX_FRAMEBUFFER_SLOT_SIZE UINT32_C(0x00100000)
#define RIX_FRAMEBUFFER_RESERVATION_SIZE UINT32_C(0x00200000)
#define RIX_FRAMEBUFFER_NODE "/reserved-memory/rasterix-framebuffers@97c00000"

#define RIX_DISPLAY_WIDTH 512U
#define RIX_DISPLAY_HEIGHT 384U
#define RIX_DISPLAY_PIXELS (RIX_DISPLAY_WIDTH * RIX_DISPLAY_HEIGHT)
#define RIX_DISPLAY_BYTES (RIX_DISPLAY_PIXELS * 2U)

#define RIX_STORE_OP UINT32_C(0xd0000000)
#define RIX_STREAM_TO_PARSER_OP UINT32_C(0x90000000)
#define RIX_RENDER_CONFIG_OP UINT32_C(0x10000000)
#define RIX_COLOR_BUFFER_ADDR_REG 16U
#define RIX_FRAMEBUFFER_OP UINT32_C(0x20000000)
#define RIX_FRAMEBUFFER_SWAP UINT32_C(0x00000004)
#define RIX_FRAMEBUFFER_COLOR_SELECT UINT32_C(0x00000010)
#define RIX_FRAMEBUFFER_VSYNC UINT32_C(0x00000080)

static inline uint16_t rix_display_pixel(unsigned int x, unsigned int y)
{
	static const uint16_t bars[8] = {
		0xffff, 0xffe0, 0x07ff, 0x07e0,
		0xf81f, 0xf800, 0x001f, 0x0000,
	};
	uint16_t pixel = bars[(x * 8U) / RIX_DISPLAY_WIDTH];

	/* One-source-pixel grid exposes the 5:4 repeat cadence on both axes. */
	if ((x % 8U) == 0 || (y % 8U) == 0)
		pixel ^= 0xffff;

	/* A white border and center cross make orientation/cropping obvious. */
	if (x < 4 || x >= RIX_DISPLAY_WIDTH - 4 ||
	    y < 4 || y >= RIX_DISPLAY_HEIGHT - 4 ||
	    (x >= RIX_DISPLAY_WIDTH / 2 - 2 && x < RIX_DISPLAY_WIDTH / 2 + 2) ||
	    (y >= RIX_DISPLAY_HEIGHT / 2 - 2 && y < RIX_DISPLAY_HEIGHT / 2 + 2))
		pixel = 0xffff;
	return pixel;
}

static inline void rix_make_display_store(uint32_t *packet)
{
	unsigned int x, y;

	packet[0] = RIX_STORE_OP | RIX_DISPLAY_BYTES;
	packet[1] = RIX_FRAMEBUFFER_BASE;
	for (y = 0; y < RIX_DISPLAY_HEIGHT; y++) {
		for (x = 0; x < RIX_DISPLAY_WIDTH; x += 2) {
			uint32_t lo = rix_display_pixel(x, y);
			uint32_t hi = rix_display_pixel(x + 1, y);

			packet[2 + (y * RIX_DISPLAY_WIDTH + x) / 2] = lo | (hi << 16);
		}
	}
}

static inline void rix_make_display_swap(uint32_t *packet)
{
	/* Route four payload words from command ST0 to parser ST1. The NOP pads
	 * the complete DMA transfer to an 8-byte multiple for the no-DRE DMA.
	 */
	packet[0] = RIX_STREAM_TO_PARSER_OP | 16U;
	packet[1] = 0;
	packet[2] = RIX_RENDER_CONFIG_OP | RIX_COLOR_BUFFER_ADDR_REG;
	packet[3] = RIX_FRAMEBUFFER_BASE;
	packet[4] = RIX_FRAMEBUFFER_OP | (RIX_DISPLAY_PIXELS << 8) |
		RIX_FRAMEBUFFER_SWAP | RIX_FRAMEBUFFER_COLOR_SELECT |
		RIX_FRAMEBUFFER_VSYNC;
	packet[5] = 0;
}

#endif

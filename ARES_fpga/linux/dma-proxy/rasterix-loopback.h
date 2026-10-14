/* SPDX-License-Identifier: GPL-2.0-only */
/* FrameStreamingCore: output ST0 (bits 31:30=1), input ST0 (29:28=1).
 * Packet: command | payload bytes, ignored address word, payload words.
 * This routes the payload to m_cmd_resp_axis, not the rendering parser.
 */
#ifndef ARES_RASTERIX_LOOPBACK_H
#define ARES_RASTERIX_LOOPBACK_H

#include <stdint.h>

#define RIX_LOOPBACK_OP UINT32_C(0x50000000)
#define RIX_LOOPBACK_GUARD UINT32_C(0x6d3a91c7)

static const unsigned int rix_loopback_sizes[] = { 64, 256, 4096, 65536 };

static inline uint32_t rix_test_word(unsigned int word, unsigned int iteration)
{
	/* Include command-looking values to verify payload stays in the router. */
	switch (word & 7) {
	case 0: return 0;
	case 1: return UINT32_MAX;
	case 2: return UINT32_C(0xaaaaaaaa);
	case 3: return UINT32_C(0x55555555);
	case 4: return UINT32_C(0xd0000040);
	case 5: return UINT32_C(0x70000040);
	case 6: return word ^ (iteration * UINT32_C(0x9e3779b9));
	default: return (word * UINT32_C(0x01020408)) ^
			(iteration * UINT32_C(0x85ebca6b)) ^ UINT32_C(0xa5c35a3c);
	}
}

static inline void rix_make_loopback(uint32_t *packet, unsigned int bytes,
				     unsigned int iteration)
{
	unsigned int i;

	packet[0] = RIX_LOOPBACK_OP | bytes;
	packet[1] = 0; /* No memory channel selected: not a memory access to zero. */
	for (i = 0; i < bytes / sizeof(*packet); i++)
		packet[i + 2] = rix_test_word(i, iteration);
}

#endif

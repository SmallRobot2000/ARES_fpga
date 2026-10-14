/* SPDX-License-Identifier: GPL-2.0-only */
#ifndef ARES_RASTERIX_MEMORY_H
#define ARES_RASTERIX_MEMORY_H

#include "rasterix-loopback.h"

#define RIX_SCRATCH_BASE UINT32_C(0x97f00000)
#define RIX_SCRATCH_SIZE UINT32_C(0x00100000)
#define RIX_SCRATCH_NODE "/reserved-memory/rasterix-scratch@97f00000"
#define RIX_STORE_OP UINT32_C(0xd0000000)
#define RIX_LOAD_OP UINT32_C(0x70000000)
#define RIX_MEM_GUARD_BYTES 64U

/* Some extents cross a 4 KiB boundary; every AXI burst remains 64-byte aligned.
 * Last case is near the end of the reservation, exercising upper address bits.
 */
static const unsigned int rix_memory_offsets[] = { 0x1000, 0x1f80, 0x20000, 0xeff80 };

static inline int rix_memory_range_valid(uint32_t address, unsigned int bytes)
{
	return bytes && !(bytes & 63) && !(address & 63) &&
		address >= RIX_SCRATCH_BASE && bytes <= RIX_SCRATCH_SIZE &&
		address - RIX_SCRATCH_BASE <= RIX_SCRATCH_SIZE - bytes;
}

static inline uint32_t rix_memory_word(unsigned int word, unsigned int bytes,
				     unsigned int iteration)
{
	unsigned int guard_words = RIX_MEM_GUARD_BYTES / 4;

	if (word < guard_words)
		return UINT32_C(0x13579bdf) ^ word ^ iteration;
	if (word >= guard_words + bytes / 4)
		return UINT32_C(0xfdb97531) ^ word ^ iteration;
	return rix_test_word(word - guard_words, iteration);
}

static inline void rix_make_memory_init(uint32_t *packet, uint32_t address,
				       unsigned int bytes, unsigned int iteration)
{
	unsigned int i, total = bytes + 2 * RIX_MEM_GUARD_BYTES;

	packet[0] = RIX_STORE_OP | total;
	packet[1] = address;
	for (i = 0; i < total / 4; i++) {
		uint32_t word = rix_memory_word(i, bytes, iteration);

		/* The actual data STORE must replace this inverse pattern. */
		packet[i + 2] = (i >= RIX_MEM_GUARD_BYTES / 4 &&
			i < (RIX_MEM_GUARD_BYTES + bytes) / 4) ? ~word : word;
	}
}

static inline void rix_make_memory_store(uint32_t *packet, uint32_t address,
					unsigned int bytes, unsigned int iteration)
{
	unsigned int i;

	packet[0] = RIX_STORE_OP | bytes;
	packet[1] = address + RIX_MEM_GUARD_BYTES;
	for (i = 0; i < bytes / 4; i++)
		packet[i + 2] = rix_test_word(i, iteration);
}

static inline void rix_make_memory_load(uint32_t *packet, uint32_t address,
				       unsigned int bytes)
{
	packet[0] = RIX_LOAD_OP | (bytes + 2 * RIX_MEM_GUARD_BYTES);
	packet[1] = address;
}

#endif

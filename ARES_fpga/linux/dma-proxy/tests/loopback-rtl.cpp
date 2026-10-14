// SPDX-License-Identifier: GPL-2.0-only
// Check the actual imported FrameStreamingCore with the userspace test packets.
#include "VFrameStreamingCore.h"
#include "verilated.h"
#include "../rasterix-loopback.h"

#include <cstdio>
#include <cstdlib>
#include <vector>

static void require(bool ok, const char *message)
{
	if (!ok) {
		std::fprintf(stderr, "FAIL: %s\n", message);
		std::exit(1);
	}
}

static uint32_t random_word()
{
	static uint32_t state = 0x83da1927;

	state ^= state << 13;
	state ^= state >> 17;
	state ^= state << 5;
	return state;
}

static void no_side_effects(VFrameStreamingCore &dut)
{
	require(!dut.m_mem_axi_awvalid && !dut.m_mem_axi_arvalid &&
		!dut.m_mem_axi_wvalid, "loopback generated a RasterIX memory request");
	require(!dut.m_st1_axis_tvalid, "loopback sent payload to rendering parser");
}

static void tick(VFrameStreamingCore &dut)
{
	dut.aclk = 0;
	dut.eval();
	dut.aclk = 1;
	dut.eval();
}

static void transfer(VFrameStreamingCore &dut, unsigned bytes, unsigned iteration,
		     unsigned mode)
{
	std::vector<uint32_t> packet(bytes / 4 + 2);
	rix_make_loopback(packet.data(), bytes, iteration);
	size_t tx = 0, rx = 0;
	bool holding = false, stalled = false;
	uint32_t stalled_data = 0;
	bool stalled_last = false;
	bool finished = false;

	for (unsigned cycle = 0; cycle < (packet.size() + 128) * 32; cycle++) {
		dut.aclk = 0;
		if (!holding && tx < packet.size() &&
		    (!(mode & 1) || (random_word() & 3)))
			holding = true;
		dut.s_st0_axis_tvalid = holding;
		dut.s_st0_axis_tdata = holding ? packet[tx] : 0;
		dut.s_st0_axis_tlast = holding && tx + 1 == packet.size();
		dut.m_st0_axis_tready = !(mode & 2) ||
			(cycle > 20 && (random_word() & 3));
		dut.eval();
		no_side_effects(dut);
		if (stalled)
			require(dut.m_st0_axis_tvalid && dut.m_st0_axis_tdata == stalled_data &&
				dut.m_st0_axis_tlast == stalled_last,
				"response changed while backpressured");
		stalled = dut.m_st0_axis_tvalid && !dut.m_st0_axis_tready;
		stalled_data = dut.m_st0_axis_tdata;
		stalled_last = dut.m_st0_axis_tlast;
		if (dut.m_st0_axis_tvalid && dut.m_st0_axis_tready) {
			require(rx < bytes / 4, "extra response word");
			require(dut.m_st0_axis_tdata == rix_test_word(rx, iteration),
				"response payload mismatch");
			require(dut.m_st0_axis_tlast == (rx + 1 == bytes / 4),
				"response TLAST is not on final payload word");
			rx++;
		}
		if (holding && dut.s_st0_axis_tready) {
			tx++;
			holding = false;
		}
		dut.aclk = 1;
		dut.eval();
		if (tx == packet.size() && rx == bytes / 4) {
			finished = true;
			break;
		}
	}
	require(finished, "stream transfer timed out");
	dut.s_st0_axis_tvalid = 0;
	dut.s_st0_axis_tlast = 0;
	dut.m_st0_axis_tready = 1;
	for (unsigned i = 0; i < 8; i++) {
		tick(dut);
		no_side_effects(dut);
		require(!dut.m_st0_axis_tvalid, "extra response after packet completion");
	}
}

int main(int argc, char **argv)
{
	Verilated::commandArgs(argc, argv);
	VFrameStreamingCore dut;
	dut.resetn = 0;
	dut.s_st0_axis_tvalid = 0;
	dut.s_st0_axis_tdata = 0;
	dut.s_st0_axis_tlast = 0;
	dut.s_st1_axis_tvalid = 0;
	dut.s_st1_axis_tdata = 0;
	dut.s_st1_axis_tlast = 0;
	dut.m_st0_axis_tready = 0;
	dut.m_st1_axis_tready = 1;
	dut.m_mem_axi_awready = 1;
	dut.m_mem_axi_wready = 1;
	dut.m_mem_axi_bid = 0;
	dut.m_mem_axi_bresp = 0;
	dut.m_mem_axi_bvalid = 0;
	dut.m_mem_axi_arready = 1;
	dut.m_mem_axi_rid = 0;
	dut.m_mem_axi_rdata = 0;
	dut.m_mem_axi_rresp = 0;
	dut.m_mem_axi_rlast = 0;
	dut.m_mem_axi_rvalid = 0;
	for (unsigned i = 0; i < 5; i++)
		tick(dut);
	dut.resetn = 1;
	for (unsigned i = 0; i < 5; i++)
		tick(dut);
	unsigned count = 0;
	for (unsigned mode = 0; mode < 4; mode++)
		for (unsigned repeat = 0; repeat < 3; repeat++)
			for (unsigned bytes : rix_loopback_sizes)
				transfer(dut, bytes, count++, mode);
	std::printf("PASS: %u loopback packets; payload/TLAST/backpressure checked; no render or memory requests\n", count);
	dut.final();
	return 0;
}

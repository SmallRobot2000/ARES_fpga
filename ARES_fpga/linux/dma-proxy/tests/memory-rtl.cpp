// SPDX-License-Identifier: GPL-2.0-only
// Actual FrameStreamingCore + an independent AXI RAM responder/scoreboard.
#include "VFrameStreamingCore.h"
#include "verilated.h"
#include "../rasterix-memory.h"

#include <cstdio>
#include <cstdlib>
#include <deque>
#include <vector>

static void require(bool ok, const char *why)
{
	if (!ok) {
		std::fprintf(stderr, "FAIL: %s\n", why);
		std::exit(1);
	}
}

static uint32_t random_word()
{
	static uint32_t s = 0x25b7d491;
	s ^= s << 13;
	s ^= s >> 17;
	s ^= s << 5;
	return s;
}

struct Burst { uint32_t addr; unsigned beat = 0; };
struct Beat { uint32_t data; bool last; };

struct Ram {
	VFrameStreamingCore &d;
	std::vector<uint32_t> words;
	std::deque<Burst> writes, reads;
	std::deque<Beat> data;
	std::deque<unsigned> responses;
	unsigned cycle = 0, read_count = 0, write_count = 0, response_count = 0;
	uint32_t allowed_start = 0, allowed_bytes = 0;
	bool reading = false, stalled = false, rvalid = false;
	uint32_t rdata = 0;
	bool rlast = false;

	explicit Ram(VFrameStreamingCore &dut) : d(dut), words(RIX_SCRATCH_SIZE / 4, 0xc39a617e) {}

	void check_burst(uint32_t addr, unsigned len, unsigned size, unsigned burst)
	{
		require(len == 15 && size == 2 && burst == 1, "unexpected AXI burst geometry");
		require(rix_memory_range_valid(addr, 64), "AXI request outside reserved scratch/alignment");
		require(addr >= allowed_start && addr + 64 <= allowed_start + allowed_bytes,
			"AXI request outside the commanded extent");
		require((addr & 4095) + 64 <= 4096, "AXI burst crosses 4 KiB boundary");
	}

	void before_edge()
	{
		d.aclk = 0;
		d.m_mem_axi_awready = !stalled || (cycle % 11 > 3 && (random_word() & 3));
		d.m_mem_axi_wready = !stalled || (random_word() & 3);
		d.m_mem_axi_arready = !stalled || (random_word() & 3);
		d.m_mem_axi_bvalid = !responses.empty() && responses.front() <= cycle;
		d.m_mem_axi_bresp = 0;
		d.m_mem_axi_bid = 0;
		if (!rvalid && !reads.empty() && (!stalled || (random_word() & 3))) {
			const Burst &r = reads.front();
			rvalid = true;
			rdata = words[(r.addr - RIX_SCRATCH_BASE) / 4 + r.beat];
			rlast = r.beat == 15;
		}
		d.m_mem_axi_rvalid = rvalid;
		d.m_mem_axi_rdata = rdata;
		d.m_mem_axi_rlast = rlast;
		d.m_mem_axi_rid = 0;
		d.m_mem_axi_rresp = 0;
		d.eval();
		require(!d.m_st1_axis_tvalid, "memory command reached the rendering parser");
		if (d.m_mem_axi_awvalid) {
			require(!reading, "unexpected write during LOAD");
			check_burst(d.m_mem_axi_awaddr, d.m_mem_axi_awlen,
				    d.m_mem_axi_awsize, d.m_mem_axi_awburst);
			if (d.m_mem_axi_awready)
				writes.push_back({d.m_mem_axi_awaddr, 0});
		}
		if (d.m_mem_axi_arvalid) {
			require(reading, "unexpected read during STORE");
			check_burst(d.m_mem_axi_araddr, d.m_mem_axi_arlen,
				    d.m_mem_axi_arsize, d.m_mem_axi_arburst);
			if (d.m_mem_axi_arready)
				reads.push_back({d.m_mem_axi_araddr, 0});
		}
		if (d.m_mem_axi_bvalid && d.m_mem_axi_bready) {
			responses.pop_front();
			response_count++;
		}
		if (rvalid && d.m_mem_axi_rready) {
			rvalid = false;
			read_count++;
			if (++reads.front().beat == 16)
				reads.pop_front();
		}
		if (d.m_mem_axi_wvalid && d.m_mem_axi_wready) {
			require(!reading && d.m_mem_axi_wstrb == 15, "unexpected write strobe/direction");
			data.push_back({d.m_mem_axi_wdata, bool(d.m_mem_axi_wlast)});
		}
		/* AW and W can arrive independently, including W before AW. */
		if (!writes.empty() && !data.empty()) {
			Burst &w = writes.front();
			require(data.front().last == (w.beat == 15), "incorrect WLAST");
			words[(w.addr - RIX_SCRATCH_BASE) / 4 + w.beat] = data.front().data;
			data.pop_front();
			write_count++;
			if (++w.beat == 16) {
				writes.pop_front();
				responses.push_back(cycle + (stalled ? 1 + random_word() % 31 : 1));
			}
		}
	}

	void edge() { d.aclk = 1; d.eval(); cycle++; }
	bool idle() const { return writes.empty() && reads.empty() && data.empty() && responses.empty() && !rvalid; }
};

static void packet(Ram &ram, const std::vector<uint32_t> &tx,
		   const std::vector<uint32_t> &expected, unsigned mode)
{
	auto &d = ram.d;
	size_t sent = 0, received = 0;
	bool holding = false, rx_stalled = false;
	uint32_t held_data = 0;
	bool held_last = false, done = false;
	ram.stalled = mode & 2;
	for (unsigned cycle = 0; cycle < (tx.size() + expected.size() + 128) * 64; cycle++) {
		if (!holding && sent < tx.size() && (!(mode & 1) || (random_word() & 3)))
			holding = true;
		d.s_st0_axis_tvalid = holding;
		d.s_st0_axis_tdata = holding ? tx[sent] : 0;
		d.s_st0_axis_tlast = holding && sent + 1 == tx.size();
		d.m_st0_axis_tready = !(mode & 2) || (cycle > 20 && (random_word() & 3));
		ram.before_edge();
		if (rx_stalled)
			require(d.m_st0_axis_tvalid && d.m_st0_axis_tdata == held_data &&
				d.m_st0_axis_tlast == held_last, "response unstable under backpressure");
		rx_stalled = d.m_st0_axis_tvalid && !d.m_st0_axis_tready;
		held_data = d.m_st0_axis_tdata;
		held_last = d.m_st0_axis_tlast;
		if (d.m_st0_axis_tvalid && d.m_st0_axis_tready) {
			require(received < expected.size(), "unexpected response word");
			require(d.m_st0_axis_tdata == expected[received], "memory response mismatch");
			require(d.m_st0_axis_tlast == (received + 1 == expected.size()), "incorrect response TLAST");
			received++;
		}
		if (holding && d.s_st0_axis_tready) { sent++; holding = false; }
		ram.edge();
		if (sent == tx.size() && received == expected.size()) { done = true; break; }
	}
	require(done, "memory packet timeout");
	d.s_st0_axis_tvalid = 0;
	d.s_st0_axis_tlast = 0;
	d.m_st0_axis_tready = 1;
	/* Like the hardware diagnostic's pause: explicitly settle writes before
	 * issuing another command. This does NOT test a write-completion fence.
	 */
	for (unsigned i = 0; i < 256; i++) {
		ram.before_edge();
		require(!d.m_st0_axis_tvalid, "extra response after packet");
		ram.edge();
	}
	require(ram.idle(), "AXI transactions did not drain during settling interval");
}

int main(int argc, char **argv)
{
	Verilated::commandArgs(argc, argv);
	VFrameStreamingCore d;
	d.resetn = 0;
	d.s_st0_axis_tvalid = 0;
	d.s_st0_axis_tdata = 0;
	d.s_st0_axis_tlast = 0;
	d.s_st1_axis_tvalid = 0;
	d.s_st1_axis_tdata = 0;
	d.s_st1_axis_tlast = 0;
	d.m_st0_axis_tready = 1;
	d.m_st1_axis_tready = 1;
	Ram ram(d);
	for (unsigned i = 0; i < 5; i++) { ram.before_edge(); ram.edge(); }
	d.resetn = 1;
	for (unsigned i = 0; i < 5; i++) { ram.before_edge(); ram.edge(); }
	unsigned rounds = 0;
	for (unsigned mode = 0; mode < 4; mode++) {
		for (unsigned repeat = 0; repeat < 2; repeat++) {
			for (unsigned n = 0; n < 4; n++, rounds++) {
				unsigned bytes = rix_loopback_sizes[n], total = bytes + 128;
				uint32_t addr = RIX_SCRATCH_BASE + rix_memory_offsets[n];
				std::vector<uint32_t> init(total / 4 + 2), store(bytes / 4 + 2), load(2), expected(total / 4);
				rix_make_memory_init(init.data(), addr, bytes, rounds);
				rix_make_memory_store(store.data(), addr, bytes, rounds);
				rix_make_memory_load(load.data(), addr, bytes);
				for (unsigned i = 0; i < total / 4; i++)
					expected[i] = rix_memory_word(i, bytes, rounds);
				unsigned writes = ram.write_count, reads = ram.read_count, responses = ram.response_count;
				ram.allowed_start = addr;
				ram.allowed_bytes = total;
				ram.reading = false;
				packet(ram, init, {}, mode);
				ram.allowed_start = addr + 64;
				ram.allowed_bytes = bytes;
				packet(ram, store, {}, mode);
				/* Check RAM independently, before the LOAD command/response. */
				for (unsigned i = 0; i < total / 4; i++)
					require(ram.words[(addr - RIX_SCRATCH_BASE) / 4 + i] == expected[i], "AXI RAM contents/guards mismatch");
				ram.allowed_start = addr;
				ram.allowed_bytes = total;
				ram.reading = true;
				packet(ram, load, expected, mode);
				require(ram.write_count - writes == (total + bytes) / 4, "wrong write beat count");
				require(ram.read_count - reads == total / 4, "wrong read beat count");
				require(ram.response_count - responses == (total + bytes) / 64, "wrong B response count");
			}
		}
	}
	std::printf("PASS: %u RasterIX STORE/LOAD round-trips; AXI addresses/bursts/data/guards/TLAST/backpressure checked\n", rounds);
	d.final();
}

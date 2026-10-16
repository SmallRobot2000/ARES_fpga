// SPDX-License-Identifier: GPL-2.0-only
#include "VDisplayCommandPath.h"
#include "verilated.h"
#include "../rasterix-display.h"

#include <cstdio>
#include <cstdlib>

static void require(bool ok, const char *why)
{
	if (!ok) {
		std::fprintf(stderr, "FAIL: %s\n", why);
		std::exit(1);
	}
}

static void cycle(VDisplayCommandPath &d)
{
	d.aclk = 0;
	d.eval();
	require(!d.memory_request, "display handoff unexpectedly requested AXI memory");
	require(!d.unexpected_response, "display handoff activated an unexpected channel");
	d.aclk = 1;
	d.eval();
}

int main(int argc, char **argv)
{
	Verilated::commandArgs(argc, argv);
	VDisplayCommandPath d;
	uint32_t packet[6];
	unsigned sent = 0, low_cycles = 0;
	bool saw_swap = false, ack_scheduled = false, acked = false;

	rix_make_display_swap(packet);
	require(packet[0] == 0x90000010 && packet[2] == 0x10000010,
		"software command header/register encoding changed");
	require(packet[4] == 0x23000094,
		"software framebuffer command encoding changed");

	d.resetn = 0;
	d.s_axis_tvalid = 0;
	d.s_axis_tlast = 0;
	d.s_axis_tdata = 0;
	d.fb_swapped = 1;
	for (unsigned i = 0; i < 5; i++) cycle(d);
	d.resetn = 1;
	for (unsigned i = 0; i < 5; i++) cycle(d);

	for (unsigned n = 0; n < 400; n++) {
		d.s_axis_tvalid = sent < 6;
		d.s_axis_tdata = sent < 6 ? packet[sent] : 0;
		d.s_axis_tlast = sent == 5;
		d.aclk = 0;
		d.eval();
		require(!d.memory_request, "parser stream selected the memory channel");
		require(!d.unexpected_response, "parser selected a non-color operation");
		if (d.s_axis_tvalid && d.s_axis_tready)
			sent++;
		if (d.swap_fb) {
			saw_swap = true;
			require(d.fb_addr == RIX_FRAMEBUFFER_BASE, "RegisterBank has wrong framebuffer address");
			require(d.fb_size == RIX_DISPLAY_PIXELS, "parser has wrong framebuffer pixel count");
			require(d.swap_fb_enable_vsync, "VSync flag did not reach the parser output");
			if (!ack_scheduled) {
				d.fb_swapped = 0;
				ack_scheduled = true;
			}
			if (!d.fb_swapped)
				low_cycles++;
		}
		d.aclk = 1;
		d.eval();
		if (ack_scheduled && low_cycles >= 2 && !acked) {
			d.fb_swapped = 1;
			acked = true;
		}
		if (sent == 6 && saw_swap && acked && !d.swap_fb)
			break;
	}
	require(sent == 6, "FrameStreamingCore did not consume the complete packet");
	require(saw_swap, "RasterIX framebuffer swap was not asserted");
	require(low_cycles >= 2 && acked, "swap completion handshake was not exercised");
	require(!d.swap_fb, "RasterIX did not release swap after acknowledgement");
	std::puts("PASS: actual router/parser/register RTL decoded address, size, VSync swap and acknowledgement");
	d.final();
}

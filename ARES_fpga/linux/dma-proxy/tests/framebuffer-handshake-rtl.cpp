// SPDX-License-Identifier: GPL-2.0-only
#include "VARES_RaxyerIX_framebuffer.h"
#include "verilated.h"

#include <cstdio>
#include <cstdlib>

static void require(bool ok, const char *why)
{
	if (!ok) {
		std::fprintf(stderr, "FAIL: %s\n", why);
		std::exit(1);
	}
}

static void cycle(VARES_RaxyerIX_framebuffer &d)
{
	d.ram_axi_aclk = 0;
	d.eval();
	d.ram_axi_aclk = 1;
	d.eval();
}

int main(int argc, char **argv)
{
	Verilated::commandArgs(argc, argv);
	VARES_RaxyerIX_framebuffer d;
	d.resetn = 0;
	d.swap_fb = 0;
	d.swap_fb_enable_vsync = 0;
	d.fb_addr = 0;
	d.fb_size = 196608;
	d.ram_axi_arready = 1;
	d.ram_axi_rvalid = 0;
	d.ram_axi_rdata[0] = 0;
	d.ram_axi_rdata[1] = 0;
	d.ram_axi_rdata[2] = 0;
	d.ram_axi_rdata[3] = 0;
	d.ram_axi_rresp = 0;
	d.ram_axi_rlast = 0;
	for (unsigned i = 0; i < 4; i++) cycle(d);
	require(d.fb_swapped, "fb_swapped must reset high so RasterIX can accept commands");
	d.resetn = 1;
	for (unsigned i = 0; i < 4; i++) cycle(d);
	require(d.fb_swapped, "idle fb_swapped did not remain high");

	d.fb_addr = 0x97c00000;
	d.swap_fb_enable_vsync = 1;
	d.swap_fb = 1;
	cycle(d);
	require(!d.fb_swapped, "VSync swap did not enter busy/low state");
	bool acknowledged = false;
	for (unsigned i = 0; i < 1680000; i++) {
		cycle(d);
		if (d.fb_swapped) {
			acknowledged = true;
			break;
		}
	}
	require(acknowledged, "VSync swap was not acknowledged at vertical blank");
	d.swap_fb = 0;
	for (unsigned i = 0; i < 6; i++) cycle(d);
	require(d.fb_swapped, "acknowledgement did not remain high while idle");

	d.fb_addr = 0x97d00000;
	d.swap_fb_enable_vsync = 0;
	d.swap_fb = 1;
	cycle(d);
	require(!d.fb_swapped, "immediate swap did not enter busy/low state");
	cycle(d);
	require(d.fb_swapped, "immediate swap was not acknowledged on the next cycle");
	std::puts("PASS: framebuffer reader reset, VSync and immediate swap level handshakes");
	d.final();
}

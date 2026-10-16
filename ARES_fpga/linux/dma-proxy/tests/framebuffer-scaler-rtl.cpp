// SPDX-License-Identifier: GPL-2.0-only
#include "VARES_RaxyerIX_framebuffer.h"
#include "VARES_RaxyerIX_framebuffer___024root.h"
#include "verilated.h"
#include <array>
#include <cstdio>
#include <cstdlib>

static void require(bool ok, const char *why) {
    if (!ok) { std::fprintf(stderr, "FAIL: %s\n", why); std::exit(1); }
}
static unsigned pattern(unsigned x, unsigned y, unsigned slot) {
    // Hash both coordinates into all DAC bits; adjacent pixels/lines differ.
    unsigned v = ((x * 173) ^ (y * 317) ^ (slot * 0xabc)) & 0xfff;
    return ((v >> 8) << 12) | (((v >> 4) & 15) << 7) | ((v & 15) << 1);
}
struct Sim {
    VARES_RaxyerIX_framebuffer d;
    unsigned tick=0, remaining=0, address=0, bursts=0;
    bool hold=false, count=false, pixels=false;
    unsigned slot=0, pixelCount=0, countedBursts=0;
    std::array<unsigned,384> rows{};
    std::array<bool,512> columns{};
    std::array<bool,384> seenRows{};
    unsigned h() { return d.rootp->ARES_RaxyerIX_framebuffer__DOT__h_count; }
    unsigned v() { return d.rootp->ARES_RaxyerIX_framebuffer__DOT__v_count; }
    bool ce() { return d.rootp->ARES_RaxyerIX_framebuffer__DOT__pixel_div == 3; }
    Sim() {
        d.resetn=0; d.swap_fb=0; d.fb_addr=0; d.fb_size=196608;
        d.swap_fb_enable_vsync=0; d.ram_axi_rresp=0;
        for(int i=0;i<4;++i) step();
        require(d.fb_swapped, "reset acknowledgement"); d.resetn=1;
    }
    void step() {
        d.ram_axi_aclk=0;
        d.ram_axi_arready=!hold && tick%7!=0;
        d.ram_axi_rvalid=remaining && !hold && tick%5!=0;
        d.ram_axi_rlast=remaining==1;
        for(unsigned i=0;i<4;++i) {
            unsigned offset=(address & 0xfffff)/2 + i*2;
            unsigned bank=(address>>20)&1;
            d.ram_axi_rdata[i]=pattern(offset%512,offset/512,bank) |
                (pattern((offset+1)%512,(offset+1)/512,bank)<<16);
        }
        d.eval();
        unsigned x=h(), y=v(); bool sample=ce() && x<640 && y<480;
        unsigned sx=d.rootp->ARES_RaxyerIX_framebuffer__DOT__source_x;
        unsigned sy=d.rootp->ARES_RaxyerIX_framebuffer__DOT__source_y;
        if (sample && d.resetn) {
            require(sx==x*4/5 && sy==y*4/5,"4:5 coordinate mapping/range");
        }
        bool ar=d.ram_axi_arvalid && d.ram_axi_arready;
        bool r=d.ram_axi_rvalid && d.ram_axi_rready;
        if(r) {
            auto bank=d.rootp->ARES_RaxyerIX_framebuffer__DOT__display_bank;
            require(d.rootp->ARES_RaxyerIX_framebuffer__DOT__active_fetch_bank!=bank ||
                !(d.rootp->ARES_RaxyerIX_framebuffer__DOT__bank_ready & (1u<<bank)),
                "writing the displayed complete line");
        }
        if(ar) {
            require(!remaining,"overlapping AXI bursts");
            require(d.ram_axi_arlen==15 && d.ram_axi_arsize==4 && d.ram_axi_arburst==1,"AXI burst shape");
            require((d.ram_axi_araddr&0xff)==0 &&
                (d.ram_axi_araddr&0xfffff)+255<0x60000,"AXI address outside active image");
            require((d.ram_axi_araddr&0xffe00000)==0x97c00000,"AXI address outside slots");
            address=d.ram_axi_araddr; remaining=16; ++bursts;
            if(count) {
                require(address==0x97c00000u+slot*0x100000u+countedBursts*256u,
                    "source lines/bursts not sequential or wrong slot");
                ++countedBursts;
                ++rows[(address&0xfffff)/1024];
            }
        }
        if(r) { --remaining; address+=16; }
        d.ram_axi_aclk=1; d.eval(); ++tick;
        // Read-data, half-select, bank and active flag all describe the
        // coordinates sampled before this edge (one 100-MHz cycle latency).
        if(pixels && sample) {
            unsigned value=pattern(x*4/5,y*4/5,slot);
            if(d.vga_r!=(value>>12) || d.vga_g!=((value>>7)&15) || d.vga_b!=((value>>1)&15)) {
                std::fprintf(stderr,"pixel (%u,%u) got %x%x%x expected %04x\n",x,y,d.vga_r,d.vga_g,d.vga_b,value);
                require(false,"pixel or line pipeline offset");
            }
            columns[x*4/5]=true; seenRows[y*4/5]=true; ++pixelCount;
        }
    }
    void until(unsigned x,unsigned y) {
        unsigned deadline=tick+1680001;
        while(!(h()==x && v()==y && ce())) {require(tick<deadline,"timing stalled");step();}
    }
    void request(unsigned base,bool vsync) {
        d.swap_fb=0;step();d.fb_addr=base;d.swap_fb_enable_vsync=vsync;d.swap_fb=1;step();
        require(!d.fb_swapped,"swap busy transition");
        if(!vsync) {step();require(d.fb_swapped,"immediate acknowledgement");}
        d.swap_fb=0;
    }
    void frame(unsigned expectedSlot) {
        until(799,479);step();
        rows.fill(0);columns.fill(false);seenRows.fill(false);pixelCount=0;countedBursts=0;
        slot=expectedSlot;count=true;pixels=true;
        until(799,479);
        require(pixelCount==640*480,"active output pixel count");
        require(countedBursts==1536,"frame burst count");
        for(auto n:rows) require(n==4,"each source row must have exactly four bursts, no repeats");
        for(auto yes:columns) require(yes,"missing source column");
        for(auto yes:seenRows) require(yes,"missing source row");
        count=false;pixels=false;step();
    }
};
int main(int argc,char **argv) {
    Verilated::commandArgs(argc,argv);Sim s;
    for(unsigned i=0;i<1680000;++i) s.step();
    require(s.bursts==0,"AXI traffic before first framebuffer");
    s.request(0x97c00000,true);
    s.until(799,479);require(!s.d.fb_swapped,"VSync acknowledged early");
    s.step();require(s.d.fb_swapped,"VSync blank acknowledgement");
    s.frame(0);s.frame(0);
    // Swap with an outstanding old-frame burst and deliberately stall DDR.
    while(!s.remaining) s.step();
    s.hold=true;
    auto bank=s.d.rootp->ARES_RaxyerIX_framebuffer__DOT__display_bank;
    s.request(0x97d00000,false);
    for(unsigned i=0;i<100;++i) {
        s.step();require(s.d.rootp->ARES_RaxyerIX_framebuffer__DOT__display_bank==bank,
            "display bank changed before replacement arrived");
        require(s.d.rootp->ARES_RaxyerIX_framebuffer__DOT__bank_ready & (1u<<bank),
            "old displayed line invalidated during swap");
    }
    s.hold=false;s.frame(1);s.frame(1);
    s.request(0x97c00000,true);
    s.until(799,479);require(!s.d.fb_swapped,"second VSync acknowledged early");
    s.step();require(s.d.fb_swapped,"second VSync acknowledgement");s.frame(0);
    // A new immediate request coinciding with replacement completion must
    // discard that stale completion without flipping the displayed bank.
    while(!(s.d.rootp->ARES_RaxyerIX_framebuffer__DOT__replacement_fetch &&
            s.d.rootp->ARES_RaxyerIX_framebuffer__DOT__fetch_done)) s.step();
    bank=s.d.rootp->ARES_RaxyerIX_framebuffer__DOT__display_bank;
    s.d.fb_addr=0x97d00000;s.d.swap_fb_enable_vsync=0;s.d.swap_fb=1;s.step();
    require(!s.d.fb_swapped,"completion-coincident swap busy");
    require(s.d.rootp->ARES_RaxyerIX_framebuffer__DOT__display_bank==bank,
        "stale completion changed display bank on immediate swap");
    s.d.swap_fb=0;s.step();require(s.d.fb_swapped,"completion-coincident swap acknowledgement");
    s.frame(1);
    // Keep an old burst outstanding across the VSync swap boundary.
    while(!s.remaining) s.step();s.hold=true;s.request(0x97c00000,true);
    s.until(799,479);require(!s.d.fb_swapped,"stalled VSync acknowledged early");
    s.step();require(s.d.fb_swapped,"stalled VSync acknowledgement");
    s.hold=false;s.frame(0);
    // Exact boundary arrival must still produce an observable busy-low.
    s.until(799,479);
    s.d.fb_addr=0x97d00000;s.d.swap_fb_enable_vsync=1;s.d.swap_fb=1;s.step();
    require(!s.d.fb_swapped,"boundary VSync request skipped busy-low");
    s.d.swap_fb=0;s.until(799,479);
    require(!s.d.fb_swapped,"boundary VSync acknowledged before next blank");
    s.step();require(s.d.fb_swapped,"boundary VSync failed to acknowledge");s.frame(1);
    std::puts("PASS: 512x384 -> 640x480 pixels, all coordinates, 1536 bursts/frame, stalls and swaps");
}

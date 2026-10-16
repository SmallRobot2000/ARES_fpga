// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2026 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:ARES_RaxyerIX_framebuffer:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module Block_top_ARES_RaxyerIX_frameb_0_0 (
  resetn,
  swap_fb,
  swap_fb_enable_vsync,
  fb_addr,
  fb_size,
  fb_swapped,
  ram_axi_arvalid,
  ram_axi_arready,
  ram_axi_araddr,
  ram_axi_arlen,
  ram_axi_arsize,
  ram_axi_arburst,
  ram_axi_rvalid,
  ram_axi_rready,
  ram_axi_rdata,
  ram_axi_rresp,
  ram_axi_rlast,
  ram_axi_aclk,
  vga_r,
  vga_g,
  vga_b,
  vga_hsync,
  vga_vsync
);

(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 resetn RST" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
input wire resetn;
input wire swap_fb;
input wire swap_fb_enable_vsync;
input wire [31 : 0] fb_addr;
input wire [19 : 0] fb_size;
output wire fb_swapped;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram_axi ARVALID" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ram_axi, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_ONLY, HAS_BURST 1, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 0, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN Block_top_mig_axi_wrapper_0_0_ui_clk, NUM_READ_THREADS 1, NU\
M_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
output wire ram_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram_axi ARREADY" *)
input wire ram_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram_axi ARADDR" *)
output wire [31 : 0] ram_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram_axi ARLEN" *)
output wire [7 : 0] ram_axi_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram_axi ARSIZE" *)
output wire [2 : 0] ram_axi_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram_axi ARBURST" *)
output wire [1 : 0] ram_axi_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram_axi RVALID" *)
input wire ram_axi_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram_axi RREADY" *)
output wire ram_axi_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram_axi RDATA" *)
input wire [127 : 0] ram_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram_axi RRESP" *)
input wire [1 : 0] ram_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram_axi RLAST" *)
input wire ram_axi_rlast;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ram_axi_aclk CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ram_axi_aclk, ASSOCIATED_BUSIF ram_axi, ASSOCIATED_RESET resetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Block_top_mig_axi_wrapper_0_0_ui_clk, INSERT_VIP 0" *)
input wire ram_axi_aclk;
output wire [3 : 0] vga_r;
output wire [3 : 0] vga_g;
output wire [3 : 0] vga_b;
output wire vga_hsync;
output wire vga_vsync;

  ARES_RaxyerIX_framebuffer #(
    .ADDR_WIDTH(32),
    .SCREEN_WIDTH(640),
    .SCREEN_HEIGHT(480)
  ) inst (
    .resetn(resetn),
    .swap_fb(swap_fb),
    .swap_fb_enable_vsync(swap_fb_enable_vsync),
    .fb_addr(fb_addr),
    .fb_size(fb_size),
    .fb_swapped(fb_swapped),
    .ram_axi_arvalid(ram_axi_arvalid),
    .ram_axi_arready(ram_axi_arready),
    .ram_axi_araddr(ram_axi_araddr),
    .ram_axi_arlen(ram_axi_arlen),
    .ram_axi_arsize(ram_axi_arsize),
    .ram_axi_arburst(ram_axi_arburst),
    .ram_axi_rvalid(ram_axi_rvalid),
    .ram_axi_rready(ram_axi_rready),
    .ram_axi_rdata(ram_axi_rdata),
    .ram_axi_rresp(ram_axi_rresp),
    .ram_axi_rlast(ram_axi_rlast),
    .ram_axi_aclk(ram_axi_aclk),
    .vga_r(vga_r),
    .vga_g(vga_g),
    .vga_b(vga_b),
    .vga_hsync(vga_hsync),
    .vga_vsync(vga_vsync)
  );
endmodule

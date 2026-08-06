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


// IP VLNV: xilinx.com:module_ref:VexiiSocWrapper:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module Block_top_VexiiSocWrapper_0_1 (
  mBus_awvalid,
  mBus_awready,
  mBus_awaddr,
  mBus_awid,
  mBus_awlen,
  mBus_awsize,
  mBus_awburst,
  mBus_wvalid,
  mBus_wready,
  mBus_wdata,
  mBus_wstrb,
  mBus_wlast,
  mBus_bvalid,
  mBus_bready,
  mBus_bid,
  mBus_bresp,
  mBus_arvalid,
  mBus_arready,
  mBus_araddr,
  mBus_arid,
  mBus_arlen,
  mBus_arsize,
  mBus_arburst,
  mBus_rvalid,
  mBus_rready,
  mBus_rdata,
  mBus_rid,
  mBus_rresp,
  mBus_rlast,
  pBus_awvalid,
  pBus_awready,
  pBus_awaddr,
  pBus_awprot,
  pBus_wvalid,
  pBus_wready,
  pBus_wdata,
  pBus_wstrb,
  pBus_bvalid,
  pBus_bready,
  pBus_bresp,
  pBus_arvalid,
  pBus_arready,
  pBus_araddr,
  pBus_arprot,
  pBus_rvalid,
  pBus_rready,
  pBus_rdata,
  pBus_rresp,
  s_axi_aclk,
  s_axi_aresetn,
  peripheral_externalInterrupts_port
);

(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mBus AWVALID" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME mBus, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 8, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN Block_top_mig_axi_wrapper_0_0_ui_clk, NUM_READ_THREADS 1, NUM_W\
RITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
output wire mBus_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mBus AWREADY" *)
input wire mBus_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mBus AWADDR" *)
output wire [31 : 0] mBus_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mBus AWID" *)
output wire [7 : 0] mBus_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mBus AWLEN" *)
output wire [7 : 0] mBus_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mBus AWSIZE" *)
output wire [2 : 0] mBus_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mBus AWBURST" *)
output wire [1 : 0] mBus_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mBus WVALID" *)
output wire mBus_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mBus WREADY" *)
input wire mBus_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mBus WDATA" *)
output wire [31 : 0] mBus_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mBus WSTRB" *)
output wire [3 : 0] mBus_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mBus WLAST" *)
output wire mBus_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mBus BVALID" *)
input wire mBus_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mBus BREADY" *)
output wire mBus_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mBus BID" *)
input wire [7 : 0] mBus_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mBus BRESP" *)
input wire [1 : 0] mBus_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mBus ARVALID" *)
output wire mBus_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mBus ARREADY" *)
input wire mBus_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mBus ARADDR" *)
output wire [31 : 0] mBus_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mBus ARID" *)
output wire [7 : 0] mBus_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mBus ARLEN" *)
output wire [7 : 0] mBus_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mBus ARSIZE" *)
output wire [2 : 0] mBus_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mBus ARBURST" *)
output wire [1 : 0] mBus_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mBus RVALID" *)
input wire mBus_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mBus RREADY" *)
output wire mBus_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mBus RDATA" *)
input wire [31 : 0] mBus_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mBus RID" *)
input wire [7 : 0] mBus_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mBus RRESP" *)
input wire [1 : 0] mBus_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mBus RLAST" *)
input wire mBus_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 pBus AWVALID" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pBus, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN Block_top_mig_axi_wrapper_0_0_ui_clk, NUM_READ_THREADS 1, NUM\
_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
output wire pBus_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 pBus AWREADY" *)
input wire pBus_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 pBus AWADDR" *)
output wire [31 : 0] pBus_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 pBus AWPROT" *)
output wire [2 : 0] pBus_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 pBus WVALID" *)
output wire pBus_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 pBus WREADY" *)
input wire pBus_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 pBus WDATA" *)
output wire [31 : 0] pBus_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 pBus WSTRB" *)
output wire [3 : 0] pBus_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 pBus BVALID" *)
input wire pBus_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 pBus BREADY" *)
output wire pBus_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 pBus BRESP" *)
input wire [1 : 0] pBus_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 pBus ARVALID" *)
output wire pBus_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 pBus ARREADY" *)
input wire pBus_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 pBus ARADDR" *)
output wire [31 : 0] pBus_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 pBus ARPROT" *)
output wire [2 : 0] pBus_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 pBus RVALID" *)
input wire pBus_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 pBus RREADY" *)
output wire pBus_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 pBus RDATA" *)
input wire [31 : 0] pBus_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 pBus RRESP" *)
input wire [1 : 0] pBus_rresp;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s_axi_aclk CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_aclk, ASSOCIATED_RESET s_axi_aresetn, ASSOCIATED_BUSIF mBus:pBus, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Block_top_mig_axi_wrapper_0_0_ui_clk, INSERT_VIP 0" *)
input wire s_axi_aclk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s_axi_aresetn RST" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
input wire s_axi_aresetn;
input wire [31 : 0] peripheral_externalInterrupts_port;

  VexiiSocWrapper inst (
    .mBus_awvalid(mBus_awvalid),
    .mBus_awready(mBus_awready),
    .mBus_awaddr(mBus_awaddr),
    .mBus_awid(mBus_awid),
    .mBus_awlen(mBus_awlen),
    .mBus_awsize(mBus_awsize),
    .mBus_awburst(mBus_awburst),
    .mBus_wvalid(mBus_wvalid),
    .mBus_wready(mBus_wready),
    .mBus_wdata(mBus_wdata),
    .mBus_wstrb(mBus_wstrb),
    .mBus_wlast(mBus_wlast),
    .mBus_bvalid(mBus_bvalid),
    .mBus_bready(mBus_bready),
    .mBus_bid(mBus_bid),
    .mBus_bresp(mBus_bresp),
    .mBus_arvalid(mBus_arvalid),
    .mBus_arready(mBus_arready),
    .mBus_araddr(mBus_araddr),
    .mBus_arid(mBus_arid),
    .mBus_arlen(mBus_arlen),
    .mBus_arsize(mBus_arsize),
    .mBus_arburst(mBus_arburst),
    .mBus_rvalid(mBus_rvalid),
    .mBus_rready(mBus_rready),
    .mBus_rdata(mBus_rdata),
    .mBus_rid(mBus_rid),
    .mBus_rresp(mBus_rresp),
    .mBus_rlast(mBus_rlast),
    .pBus_awvalid(pBus_awvalid),
    .pBus_awready(pBus_awready),
    .pBus_awaddr(pBus_awaddr),
    .pBus_awprot(pBus_awprot),
    .pBus_wvalid(pBus_wvalid),
    .pBus_wready(pBus_wready),
    .pBus_wdata(pBus_wdata),
    .pBus_wstrb(pBus_wstrb),
    .pBus_bvalid(pBus_bvalid),
    .pBus_bready(pBus_bready),
    .pBus_bresp(pBus_bresp),
    .pBus_arvalid(pBus_arvalid),
    .pBus_arready(pBus_arready),
    .pBus_araddr(pBus_araddr),
    .pBus_arprot(pBus_arprot),
    .pBus_rvalid(pBus_rvalid),
    .pBus_rready(pBus_rready),
    .pBus_rdata(pBus_rdata),
    .pBus_rresp(pBus_rresp),
    .s_axi_aclk(s_axi_aclk),
    .s_axi_aresetn(s_axi_aresetn),
    .peripheral_externalInterrupts_port(peripheral_externalInterrupts_port)
  );
endmodule

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


// IP VLNV: xilinx.com:module_ref:VexiiRV_wrapper:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module CPU_block_inst_1_VexiiRV_wrapper_0_0 (
  clk,
  reset,
  cpu_rdtime,
  cpu_int_timer,
  cpu_int_soft,
  cpu_int_ext,
  cpu_axi_d_awvalid,
  cpu_axi_d_awready,
  cpu_axi_d_awaddr,
  cpu_axi_d_awid,
  cpu_axi_d_awlen,
  cpu_axi_d_awsize,
  cpu_axi_d_awburst,
  cpu_axi_d_awcache,
  cpu_axi_d_awprot,
  cpu_axi_d_wvalid,
  cpu_axi_d_wready,
  cpu_axi_d_wdata,
  cpu_axi_d_wstrb,
  cpu_axi_d_wlast,
  cpu_axi_d_bvalid,
  cpu_axi_d_bready,
  cpu_axi_d_bid,
  cpu_axi_d_bresp,
  cpu_axi_d_arvalid,
  cpu_axi_d_arready,
  cpu_axi_d_araddr,
  cpu_axi_d_arid,
  cpu_axi_d_arlen,
  cpu_axi_d_arsize,
  cpu_axi_d_arburst,
  cpu_axi_d_arcache,
  cpu_axi_d_arprot,
  cpu_axi_d_rvalid,
  cpu_axi_d_rready,
  cpu_axi_d_rdata,
  cpu_axi_d_rid,
  cpu_axi_d_rresp,
  cpu_axi_d_rlast,
  cpu_axi_i_ar_valid,
  cpu_axi_i_ar_ready,
  cpu_axi_i_ar_addr,
  cpu_axi_i_ar_id,
  cpu_axi_i_ar_len,
  cpu_axi_i_ar_size,
  cpu_axi_i_ar_burst,
  cpu_axi_i_ar_cache,
  cpu_axi_i_ar_prot,
  cpu_axi_i_r_valid,
  cpu_axi_i_r_ready,
  cpu_axi_i_r_data,
  cpu_axi_i_r_id,
  cpu_axi_i_r_resp,
  cpu_axi_i_r_last,
  cpu_axi_io_cmd_valid,
  cpu_axi_io_cmd_ready,
  cpu_axi_io_cmd_write,
  cpu_axi_io_cmd_addr,
  cpu_axi_io_cmd_dout,
  cpu_axi_io_cmd_size,
  cpu_axi_io_cmd_mask,
  cpu_axi_io_cmd_io,
  cpu_axi_io_cmd_fromHart,
  cpu_axi_io_cmd_uopId,
  cpu_axi_io_rsp_valid,
  cpu_axi_io_rsp_error,
  cpu_axi_io_rsp_din
);

(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK, ASSOCIATED_BUSIF M_AXI_D:M_AXI_I, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Block_top_mig_axi_wrapper_0_0_ui_clk, INSERT_VIP 0" *)
input wire clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST RST" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
input wire reset;
input wire [63 : 0] cpu_rdtime;
input wire cpu_int_timer;
input wire cpu_int_soft;
input wire cpu_int_ext;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D AWVALID" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_D, PROTOCOL AXI4, DATA_WIDTH 32, FREQ_HZ 100000000, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN Block_top_mig_axi_wrapper_0_0_ui_clk, NUM_READ_THREADS 1, NU\
M_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
output wire cpu_axi_d_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D AWREADY" *)
input wire cpu_axi_d_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D AWADDR" *)
output wire [31 : 0] cpu_axi_d_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D AWID" *)
output wire [0 : 0] cpu_axi_d_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D AWLEN" *)
output wire [7 : 0] cpu_axi_d_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D AWSIZE" *)
output wire [2 : 0] cpu_axi_d_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D AWBURST" *)
output wire [1 : 0] cpu_axi_d_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D AWCACHE" *)
output wire [3 : 0] cpu_axi_d_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D AWPROT" *)
output wire [2 : 0] cpu_axi_d_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D WVALID" *)
output wire cpu_axi_d_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D WREADY" *)
input wire cpu_axi_d_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D WDATA" *)
output wire [31 : 0] cpu_axi_d_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D WSTRB" *)
output wire [3 : 0] cpu_axi_d_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D WLAST" *)
output wire cpu_axi_d_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D BVALID" *)
input wire cpu_axi_d_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D BREADY" *)
output wire cpu_axi_d_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D BID" *)
input wire [0 : 0] cpu_axi_d_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D BRESP" *)
input wire [1 : 0] cpu_axi_d_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D ARVALID" *)
output wire cpu_axi_d_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D ARREADY" *)
input wire cpu_axi_d_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D ARADDR" *)
output wire [31 : 0] cpu_axi_d_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D ARID" *)
output wire [0 : 0] cpu_axi_d_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D ARLEN" *)
output wire [7 : 0] cpu_axi_d_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D ARSIZE" *)
output wire [2 : 0] cpu_axi_d_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D ARBURST" *)
output wire [1 : 0] cpu_axi_d_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D ARCACHE" *)
output wire [3 : 0] cpu_axi_d_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D ARPROT" *)
output wire [2 : 0] cpu_axi_d_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D RVALID" *)
input wire cpu_axi_d_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D RREADY" *)
output wire cpu_axi_d_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D RDATA" *)
input wire [31 : 0] cpu_axi_d_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D RID" *)
input wire [0 : 0] cpu_axi_d_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D RRESP" *)
input wire [1 : 0] cpu_axi_d_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D RLAST" *)
input wire cpu_axi_d_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_I ARVALID" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_I, PROTOCOL AXI4, DATA_WIDTH 32, FREQ_HZ 100000000, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_ONLY, HAS_BURST 1, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 0, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN Block_top_mig_axi_wrapper_0_0_ui_clk, NUM_READ_THREADS 1, NUM\
_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
output wire cpu_axi_i_ar_valid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_I ARREADY" *)
input wire cpu_axi_i_ar_ready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_I ARADDR" *)
output wire [31 : 0] cpu_axi_i_ar_addr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_I ARID" *)
output wire cpu_axi_i_ar_id;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_I ARLEN" *)
output wire [7 : 0] cpu_axi_i_ar_len;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_I ARSIZE" *)
output wire [2 : 0] cpu_axi_i_ar_size;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_I ARBURST" *)
output wire [1 : 0] cpu_axi_i_ar_burst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_I ARCACHE" *)
output wire [3 : 0] cpu_axi_i_ar_cache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_I ARPROT" *)
output wire [2 : 0] cpu_axi_i_ar_prot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_I RVALID" *)
input wire cpu_axi_i_r_valid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_I RREADY" *)
output wire cpu_axi_i_r_ready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_I RDATA" *)
input wire [31 : 0] cpu_axi_i_r_data;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_I RID" *)
input wire cpu_axi_i_r_id;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_I RRESP" *)
input wire [1 : 0] cpu_axi_i_r_resp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_I RLAST" *)
input wire cpu_axi_i_r_last;
output wire cpu_axi_io_cmd_valid;
input wire cpu_axi_io_cmd_ready;
output wire cpu_axi_io_cmd_write;
output wire [31 : 0] cpu_axi_io_cmd_addr;
output wire [31 : 0] cpu_axi_io_cmd_dout;
output wire [1 : 0] cpu_axi_io_cmd_size;
output wire [3 : 0] cpu_axi_io_cmd_mask;
output wire cpu_axi_io_cmd_io;
output wire cpu_axi_io_cmd_fromHart;
output wire [15 : 0] cpu_axi_io_cmd_uopId;
input wire cpu_axi_io_rsp_valid;
input wire cpu_axi_io_rsp_error;
input wire [31 : 0] cpu_axi_io_rsp_din;

  VexiiRV_wrapper inst (
    .clk(clk),
    .reset(reset),
    .cpu_rdtime(cpu_rdtime),
    .cpu_int_timer(cpu_int_timer),
    .cpu_int_soft(cpu_int_soft),
    .cpu_int_ext(cpu_int_ext),
    .cpu_axi_d_awvalid(cpu_axi_d_awvalid),
    .cpu_axi_d_awready(cpu_axi_d_awready),
    .cpu_axi_d_awaddr(cpu_axi_d_awaddr),
    .cpu_axi_d_awid(cpu_axi_d_awid),
    .cpu_axi_d_awlen(cpu_axi_d_awlen),
    .cpu_axi_d_awsize(cpu_axi_d_awsize),
    .cpu_axi_d_awburst(cpu_axi_d_awburst),
    .cpu_axi_d_awcache(cpu_axi_d_awcache),
    .cpu_axi_d_awprot(cpu_axi_d_awprot),
    .cpu_axi_d_wvalid(cpu_axi_d_wvalid),
    .cpu_axi_d_wready(cpu_axi_d_wready),
    .cpu_axi_d_wdata(cpu_axi_d_wdata),
    .cpu_axi_d_wstrb(cpu_axi_d_wstrb),
    .cpu_axi_d_wlast(cpu_axi_d_wlast),
    .cpu_axi_d_bvalid(cpu_axi_d_bvalid),
    .cpu_axi_d_bready(cpu_axi_d_bready),
    .cpu_axi_d_bid(cpu_axi_d_bid),
    .cpu_axi_d_bresp(cpu_axi_d_bresp),
    .cpu_axi_d_arvalid(cpu_axi_d_arvalid),
    .cpu_axi_d_arready(cpu_axi_d_arready),
    .cpu_axi_d_araddr(cpu_axi_d_araddr),
    .cpu_axi_d_arid(cpu_axi_d_arid),
    .cpu_axi_d_arlen(cpu_axi_d_arlen),
    .cpu_axi_d_arsize(cpu_axi_d_arsize),
    .cpu_axi_d_arburst(cpu_axi_d_arburst),
    .cpu_axi_d_arcache(cpu_axi_d_arcache),
    .cpu_axi_d_arprot(cpu_axi_d_arprot),
    .cpu_axi_d_rvalid(cpu_axi_d_rvalid),
    .cpu_axi_d_rready(cpu_axi_d_rready),
    .cpu_axi_d_rdata(cpu_axi_d_rdata),
    .cpu_axi_d_rid(cpu_axi_d_rid),
    .cpu_axi_d_rresp(cpu_axi_d_rresp),
    .cpu_axi_d_rlast(cpu_axi_d_rlast),
    .cpu_axi_i_ar_valid(cpu_axi_i_ar_valid),
    .cpu_axi_i_ar_ready(cpu_axi_i_ar_ready),
    .cpu_axi_i_ar_addr(cpu_axi_i_ar_addr),
    .cpu_axi_i_ar_id(cpu_axi_i_ar_id),
    .cpu_axi_i_ar_len(cpu_axi_i_ar_len),
    .cpu_axi_i_ar_size(cpu_axi_i_ar_size),
    .cpu_axi_i_ar_burst(cpu_axi_i_ar_burst),
    .cpu_axi_i_ar_cache(cpu_axi_i_ar_cache),
    .cpu_axi_i_ar_prot(cpu_axi_i_ar_prot),
    .cpu_axi_i_r_valid(cpu_axi_i_r_valid),
    .cpu_axi_i_r_ready(cpu_axi_i_r_ready),
    .cpu_axi_i_r_data(cpu_axi_i_r_data),
    .cpu_axi_i_r_id(cpu_axi_i_r_id),
    .cpu_axi_i_r_resp(cpu_axi_i_r_resp),
    .cpu_axi_i_r_last(cpu_axi_i_r_last),
    .cpu_axi_io_cmd_valid(cpu_axi_io_cmd_valid),
    .cpu_axi_io_cmd_ready(cpu_axi_io_cmd_ready),
    .cpu_axi_io_cmd_write(cpu_axi_io_cmd_write),
    .cpu_axi_io_cmd_addr(cpu_axi_io_cmd_addr),
    .cpu_axi_io_cmd_dout(cpu_axi_io_cmd_dout),
    .cpu_axi_io_cmd_size(cpu_axi_io_cmd_size),
    .cpu_axi_io_cmd_mask(cpu_axi_io_cmd_mask),
    .cpu_axi_io_cmd_io(cpu_axi_io_cmd_io),
    .cpu_axi_io_cmd_fromHart(cpu_axi_io_cmd_fromHart),
    .cpu_axi_io_cmd_uopId(cpu_axi_io_cmd_uopId),
    .cpu_axi_io_rsp_valid(cpu_axi_io_rsp_valid),
    .cpu_axi_io_rsp_error(cpu_axi_io_rsp_error),
    .cpu_axi_io_rsp_din(cpu_axi_io_rsp_din)
  );
endmodule

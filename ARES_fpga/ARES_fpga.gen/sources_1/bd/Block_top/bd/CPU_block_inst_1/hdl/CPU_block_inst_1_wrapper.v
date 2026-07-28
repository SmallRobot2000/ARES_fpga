//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
//Date        : Tue Jul 28 14:22:30 2026
//Host        : lovroRadiona running 64-bit Ubuntu 24.04.4 LTS
//Command     : generate_target CPU_block_inst_1_wrapper.bd
//Design      : CPU_block_inst_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module CPU_block_inst_1_wrapper
   (M_AXI_D_araddr,
    M_AXI_D_arburst,
    M_AXI_D_arcache,
    M_AXI_D_arid,
    M_AXI_D_arlen,
    M_AXI_D_arprot,
    M_AXI_D_arready,
    M_AXI_D_arsize,
    M_AXI_D_arvalid,
    M_AXI_D_awaddr,
    M_AXI_D_awburst,
    M_AXI_D_awcache,
    M_AXI_D_awid,
    M_AXI_D_awlen,
    M_AXI_D_awprot,
    M_AXI_D_awready,
    M_AXI_D_awsize,
    M_AXI_D_awvalid,
    M_AXI_D_bid,
    M_AXI_D_bready,
    M_AXI_D_bresp,
    M_AXI_D_bvalid,
    M_AXI_D_rdata,
    M_AXI_D_rid,
    M_AXI_D_rlast,
    M_AXI_D_rready,
    M_AXI_D_rresp,
    M_AXI_D_rvalid,
    M_AXI_D_wdata,
    M_AXI_D_wlast,
    M_AXI_D_wready,
    M_AXI_D_wstrb,
    M_AXI_D_wvalid,
    M_AXI_IO_araddr,
    M_AXI_IO_arprot,
    M_AXI_IO_arready,
    M_AXI_IO_arvalid,
    M_AXI_IO_awaddr,
    M_AXI_IO_awprot,
    M_AXI_IO_awready,
    M_AXI_IO_awvalid,
    M_AXI_IO_bready,
    M_AXI_IO_bresp,
    M_AXI_IO_bvalid,
    M_AXI_IO_rdata,
    M_AXI_IO_rready,
    M_AXI_IO_rresp,
    M_AXI_IO_rvalid,
    M_AXI_IO_wdata,
    M_AXI_IO_wready,
    M_AXI_IO_wstrb,
    M_AXI_IO_wvalid,
    M_AXI_I_araddr,
    M_AXI_I_arburst,
    M_AXI_I_arcache,
    M_AXI_I_arid,
    M_AXI_I_arlen,
    M_AXI_I_arprot,
    M_AXI_I_arready,
    M_AXI_I_arsize,
    M_AXI_I_arvalid,
    M_AXI_I_rdata,
    M_AXI_I_rid,
    M_AXI_I_rlast,
    M_AXI_I_rready,
    M_AXI_I_rresp,
    M_AXI_I_rvalid,
    clk,
    cpu_int_ext,
    cpu_int_soft,
    cpu_int_timer,
    cpu_rdtime,
    reset);
  output [31:0]M_AXI_D_araddr;
  output [1:0]M_AXI_D_arburst;
  output [3:0]M_AXI_D_arcache;
  output [0:0]M_AXI_D_arid;
  output [7:0]M_AXI_D_arlen;
  output [2:0]M_AXI_D_arprot;
  input M_AXI_D_arready;
  output [2:0]M_AXI_D_arsize;
  output M_AXI_D_arvalid;
  output [31:0]M_AXI_D_awaddr;
  output [1:0]M_AXI_D_awburst;
  output [3:0]M_AXI_D_awcache;
  output [0:0]M_AXI_D_awid;
  output [7:0]M_AXI_D_awlen;
  output [2:0]M_AXI_D_awprot;
  input M_AXI_D_awready;
  output [2:0]M_AXI_D_awsize;
  output M_AXI_D_awvalid;
  input [0:0]M_AXI_D_bid;
  output M_AXI_D_bready;
  input [1:0]M_AXI_D_bresp;
  input M_AXI_D_bvalid;
  input [31:0]M_AXI_D_rdata;
  input [0:0]M_AXI_D_rid;
  input M_AXI_D_rlast;
  output M_AXI_D_rready;
  input [1:0]M_AXI_D_rresp;
  input M_AXI_D_rvalid;
  output [31:0]M_AXI_D_wdata;
  output M_AXI_D_wlast;
  input M_AXI_D_wready;
  output [3:0]M_AXI_D_wstrb;
  output M_AXI_D_wvalid;
  output [31:0]M_AXI_IO_araddr;
  output [2:0]M_AXI_IO_arprot;
  input M_AXI_IO_arready;
  output M_AXI_IO_arvalid;
  output [31:0]M_AXI_IO_awaddr;
  output [2:0]M_AXI_IO_awprot;
  input M_AXI_IO_awready;
  output M_AXI_IO_awvalid;
  output M_AXI_IO_bready;
  input [1:0]M_AXI_IO_bresp;
  input M_AXI_IO_bvalid;
  input [31:0]M_AXI_IO_rdata;
  output M_AXI_IO_rready;
  input [1:0]M_AXI_IO_rresp;
  input M_AXI_IO_rvalid;
  output [31:0]M_AXI_IO_wdata;
  input M_AXI_IO_wready;
  output [3:0]M_AXI_IO_wstrb;
  output M_AXI_IO_wvalid;
  output [31:0]M_AXI_I_araddr;
  output [1:0]M_AXI_I_arburst;
  output [3:0]M_AXI_I_arcache;
  output M_AXI_I_arid;
  output [7:0]M_AXI_I_arlen;
  output [2:0]M_AXI_I_arprot;
  input M_AXI_I_arready;
  output [2:0]M_AXI_I_arsize;
  output M_AXI_I_arvalid;
  input [31:0]M_AXI_I_rdata;
  input M_AXI_I_rid;
  input M_AXI_I_rlast;
  output M_AXI_I_rready;
  input [1:0]M_AXI_I_rresp;
  input M_AXI_I_rvalid;
  input clk;
  input cpu_int_ext;
  input cpu_int_soft;
  input cpu_int_timer;
  input [63:0]cpu_rdtime;
  input reset;

  wire [31:0]M_AXI_D_araddr;
  wire [1:0]M_AXI_D_arburst;
  wire [3:0]M_AXI_D_arcache;
  wire [0:0]M_AXI_D_arid;
  wire [7:0]M_AXI_D_arlen;
  wire [2:0]M_AXI_D_arprot;
  wire M_AXI_D_arready;
  wire [2:0]M_AXI_D_arsize;
  wire M_AXI_D_arvalid;
  wire [31:0]M_AXI_D_awaddr;
  wire [1:0]M_AXI_D_awburst;
  wire [3:0]M_AXI_D_awcache;
  wire [0:0]M_AXI_D_awid;
  wire [7:0]M_AXI_D_awlen;
  wire [2:0]M_AXI_D_awprot;
  wire M_AXI_D_awready;
  wire [2:0]M_AXI_D_awsize;
  wire M_AXI_D_awvalid;
  wire [0:0]M_AXI_D_bid;
  wire M_AXI_D_bready;
  wire [1:0]M_AXI_D_bresp;
  wire M_AXI_D_bvalid;
  wire [31:0]M_AXI_D_rdata;
  wire [0:0]M_AXI_D_rid;
  wire M_AXI_D_rlast;
  wire M_AXI_D_rready;
  wire [1:0]M_AXI_D_rresp;
  wire M_AXI_D_rvalid;
  wire [31:0]M_AXI_D_wdata;
  wire M_AXI_D_wlast;
  wire M_AXI_D_wready;
  wire [3:0]M_AXI_D_wstrb;
  wire M_AXI_D_wvalid;
  wire [31:0]M_AXI_IO_araddr;
  wire [2:0]M_AXI_IO_arprot;
  wire M_AXI_IO_arready;
  wire M_AXI_IO_arvalid;
  wire [31:0]M_AXI_IO_awaddr;
  wire [2:0]M_AXI_IO_awprot;
  wire M_AXI_IO_awready;
  wire M_AXI_IO_awvalid;
  wire M_AXI_IO_bready;
  wire [1:0]M_AXI_IO_bresp;
  wire M_AXI_IO_bvalid;
  wire [31:0]M_AXI_IO_rdata;
  wire M_AXI_IO_rready;
  wire [1:0]M_AXI_IO_rresp;
  wire M_AXI_IO_rvalid;
  wire [31:0]M_AXI_IO_wdata;
  wire M_AXI_IO_wready;
  wire [3:0]M_AXI_IO_wstrb;
  wire M_AXI_IO_wvalid;
  wire [31:0]M_AXI_I_araddr;
  wire [1:0]M_AXI_I_arburst;
  wire [3:0]M_AXI_I_arcache;
  wire M_AXI_I_arid;
  wire [7:0]M_AXI_I_arlen;
  wire [2:0]M_AXI_I_arprot;
  wire M_AXI_I_arready;
  wire [2:0]M_AXI_I_arsize;
  wire M_AXI_I_arvalid;
  wire [31:0]M_AXI_I_rdata;
  wire M_AXI_I_rid;
  wire M_AXI_I_rlast;
  wire M_AXI_I_rready;
  wire [1:0]M_AXI_I_rresp;
  wire M_AXI_I_rvalid;
  wire clk;
  wire cpu_int_ext;
  wire cpu_int_soft;
  wire cpu_int_timer;
  wire [63:0]cpu_rdtime;
  wire reset;

  CPU_block_inst_1 CPU_block_inst_1_i
       (.M_AXI_D_araddr(M_AXI_D_araddr),
        .M_AXI_D_arburst(M_AXI_D_arburst),
        .M_AXI_D_arcache(M_AXI_D_arcache),
        .M_AXI_D_arid(M_AXI_D_arid),
        .M_AXI_D_arlen(M_AXI_D_arlen),
        .M_AXI_D_arprot(M_AXI_D_arprot),
        .M_AXI_D_arready(M_AXI_D_arready),
        .M_AXI_D_arsize(M_AXI_D_arsize),
        .M_AXI_D_arvalid(M_AXI_D_arvalid),
        .M_AXI_D_awaddr(M_AXI_D_awaddr),
        .M_AXI_D_awburst(M_AXI_D_awburst),
        .M_AXI_D_awcache(M_AXI_D_awcache),
        .M_AXI_D_awid(M_AXI_D_awid),
        .M_AXI_D_awlen(M_AXI_D_awlen),
        .M_AXI_D_awprot(M_AXI_D_awprot),
        .M_AXI_D_awready(M_AXI_D_awready),
        .M_AXI_D_awsize(M_AXI_D_awsize),
        .M_AXI_D_awvalid(M_AXI_D_awvalid),
        .M_AXI_D_bid(M_AXI_D_bid),
        .M_AXI_D_bready(M_AXI_D_bready),
        .M_AXI_D_bresp(M_AXI_D_bresp),
        .M_AXI_D_bvalid(M_AXI_D_bvalid),
        .M_AXI_D_rdata(M_AXI_D_rdata),
        .M_AXI_D_rid(M_AXI_D_rid),
        .M_AXI_D_rlast(M_AXI_D_rlast),
        .M_AXI_D_rready(M_AXI_D_rready),
        .M_AXI_D_rresp(M_AXI_D_rresp),
        .M_AXI_D_rvalid(M_AXI_D_rvalid),
        .M_AXI_D_wdata(M_AXI_D_wdata),
        .M_AXI_D_wlast(M_AXI_D_wlast),
        .M_AXI_D_wready(M_AXI_D_wready),
        .M_AXI_D_wstrb(M_AXI_D_wstrb),
        .M_AXI_D_wvalid(M_AXI_D_wvalid),
        .M_AXI_IO_araddr(M_AXI_IO_araddr),
        .M_AXI_IO_arprot(M_AXI_IO_arprot),
        .M_AXI_IO_arready(M_AXI_IO_arready),
        .M_AXI_IO_arvalid(M_AXI_IO_arvalid),
        .M_AXI_IO_awaddr(M_AXI_IO_awaddr),
        .M_AXI_IO_awprot(M_AXI_IO_awprot),
        .M_AXI_IO_awready(M_AXI_IO_awready),
        .M_AXI_IO_awvalid(M_AXI_IO_awvalid),
        .M_AXI_IO_bready(M_AXI_IO_bready),
        .M_AXI_IO_bresp(M_AXI_IO_bresp),
        .M_AXI_IO_bvalid(M_AXI_IO_bvalid),
        .M_AXI_IO_rdata(M_AXI_IO_rdata),
        .M_AXI_IO_rready(M_AXI_IO_rready),
        .M_AXI_IO_rresp(M_AXI_IO_rresp),
        .M_AXI_IO_rvalid(M_AXI_IO_rvalid),
        .M_AXI_IO_wdata(M_AXI_IO_wdata),
        .M_AXI_IO_wready(M_AXI_IO_wready),
        .M_AXI_IO_wstrb(M_AXI_IO_wstrb),
        .M_AXI_IO_wvalid(M_AXI_IO_wvalid),
        .M_AXI_I_araddr(M_AXI_I_araddr),
        .M_AXI_I_arburst(M_AXI_I_arburst),
        .M_AXI_I_arcache(M_AXI_I_arcache),
        .M_AXI_I_arid(M_AXI_I_arid),
        .M_AXI_I_arlen(M_AXI_I_arlen),
        .M_AXI_I_arprot(M_AXI_I_arprot),
        .M_AXI_I_arready(M_AXI_I_arready),
        .M_AXI_I_arsize(M_AXI_I_arsize),
        .M_AXI_I_arvalid(M_AXI_I_arvalid),
        .M_AXI_I_rdata(M_AXI_I_rdata),
        .M_AXI_I_rid(M_AXI_I_rid),
        .M_AXI_I_rlast(M_AXI_I_rlast),
        .M_AXI_I_rready(M_AXI_I_rready),
        .M_AXI_I_rresp(M_AXI_I_rresp),
        .M_AXI_I_rvalid(M_AXI_I_rvalid),
        .clk(clk),
        .cpu_int_ext(cpu_int_ext),
        .cpu_int_soft(cpu_int_soft),
        .cpu_int_timer(cpu_int_timer),
        .cpu_rdtime(cpu_rdtime),
        .reset(reset));
endmodule

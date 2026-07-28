//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
//Date        : Mon Jul 27 15:47:16 2026
//Host        : lovroRadiona running 64-bit Ubuntu 24.04.4 LTS
//Command     : generate_target CPU_block_inst_1.bd
//Design      : CPU_block_inst_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "CPU_block_inst_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=CPU_block_inst_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=/home/lovro/Documents/Alchistry_Labs/DDR3 test/cores/Alchitry AMIX_RISCV/Alchitry AMIX_RISCV.srcs/sources_1/bd/CPU_block/CPU_block.bd,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "CPU_block_inst_1.hwdef" *) 
module CPU_block_inst_1
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D ARADDR" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_D, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN Block_top_mig_axi_wrapper_0_0_ui_clk, DATA_WIDTH 32, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 1, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [31:0]M_AXI_D_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D ARBURST" *) output [1:0]M_AXI_D_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D ARCACHE" *) output [3:0]M_AXI_D_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D ARID" *) output [0:0]M_AXI_D_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D ARLEN" *) output [7:0]M_AXI_D_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D ARPROT" *) output [2:0]M_AXI_D_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D ARREADY" *) input M_AXI_D_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D ARSIZE" *) output [2:0]M_AXI_D_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D ARVALID" *) output M_AXI_D_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D AWADDR" *) output [31:0]M_AXI_D_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D AWBURST" *) output [1:0]M_AXI_D_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D AWCACHE" *) output [3:0]M_AXI_D_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D AWID" *) output [0:0]M_AXI_D_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D AWLEN" *) output [7:0]M_AXI_D_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D AWPROT" *) output [2:0]M_AXI_D_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D AWREADY" *) input M_AXI_D_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D AWSIZE" *) output [2:0]M_AXI_D_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D AWVALID" *) output M_AXI_D_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D BID" *) input [0:0]M_AXI_D_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D BREADY" *) output M_AXI_D_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D BRESP" *) input [1:0]M_AXI_D_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D BVALID" *) input M_AXI_D_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D RDATA" *) input [31:0]M_AXI_D_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D RID" *) input [0:0]M_AXI_D_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D RLAST" *) input M_AXI_D_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D RREADY" *) output M_AXI_D_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D RRESP" *) input [1:0]M_AXI_D_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D RVALID" *) input M_AXI_D_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D WDATA" *) output [31:0]M_AXI_D_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D WLAST" *) output M_AXI_D_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D WREADY" *) input M_AXI_D_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D WSTRB" *) output [3:0]M_AXI_D_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D WVALID" *) output M_AXI_D_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_IO ARADDR" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_IO, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN Block_top_mig_axi_wrapper_0_0_ui_clk, DATA_WIDTH 32, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BIT S_PER_BYTE 0, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WIZ_DATA_WIDTH 32, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [31:0]M_AXI_IO_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_IO ARPROT" *) output [2:0]M_AXI_IO_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_IO ARREADY" *) input M_AXI_IO_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_IO ARVALID" *) output M_AXI_IO_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_IO AWADDR" *) output [31:0]M_AXI_IO_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_IO AWPROT" *) output [2:0]M_AXI_IO_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_IO AWREADY" *) input M_AXI_IO_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_IO AWVALID" *) output M_AXI_IO_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_IO BREADY" *) output M_AXI_IO_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_IO BRESP" *) input [1:0]M_AXI_IO_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_IO BVALID" *) input M_AXI_IO_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_IO RDATA" *) input [31:0]M_AXI_IO_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_IO RREADY" *) output M_AXI_IO_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_IO RRESP" *) input [1:0]M_AXI_IO_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_IO RVALID" *) input M_AXI_IO_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_IO WDATA" *) output [31:0]M_AXI_IO_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_IO WREADY" *) input M_AXI_IO_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_IO WSTRB" *) output [3:0]M_AXI_IO_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_IO WVALID" *) output M_AXI_IO_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_I ARADDR" *) (* X_INTERFACE_MODE = "Master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_I, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN Block_top_mig_axi_wrapper_0_0_ui_clk, DATA_WIDTH 32, FREQ_HZ 100000000, HAS_BRESP 0, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 0, ID_WIDTH 1, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE READ_ONLY, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [31:0]M_AXI_I_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_I ARBURST" *) output [1:0]M_AXI_I_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_I ARCACHE" *) output [3:0]M_AXI_I_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_I ARID" *) output M_AXI_I_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_I ARLEN" *) output [7:0]M_AXI_I_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_I ARPROT" *) output [2:0]M_AXI_I_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_I ARREADY" *) input M_AXI_I_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_I ARSIZE" *) output [2:0]M_AXI_I_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_I ARVALID" *) output M_AXI_I_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_I RDATA" *) input [31:0]M_AXI_I_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_I RID" *) input M_AXI_I_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_I RLAST" *) input M_AXI_I_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_I RREADY" *) output M_AXI_I_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_I RRESP" *) input [1:0]M_AXI_I_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_I RVALID" *) input M_AXI_I_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_BUSIF M_AXI_D:M_AXI_I:M_AXI_IO, ASSOCIATED_RESET reset, CLK_DOMAIN Block_top_mig_axi_wrapper_0_0_ui_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk;
  input cpu_int_ext;
  input cpu_int_soft;
  input cpu_int_timer;
  input [63:0]cpu_rdtime;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input reset;

  wire CPU_IO_converter_0_cpu_io_cmd_ready;
  wire [31:0]CPU_IO_converter_0_cpu_io_rsp_din;
  wire CPU_IO_converter_0_cpu_io_rsp_error;
  wire CPU_IO_converter_0_cpu_io_rsp_valid;
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
  wire [31:0]VexiiRV_wrapper_0_cpu_axi_io_cmd_addr;
  wire [31:0]VexiiRV_wrapper_0_cpu_axi_io_cmd_dout;
  wire VexiiRV_wrapper_0_cpu_axi_io_cmd_fromHart;
  wire VexiiRV_wrapper_0_cpu_axi_io_cmd_io;
  wire [3:0]VexiiRV_wrapper_0_cpu_axi_io_cmd_mask;
  wire [1:0]VexiiRV_wrapper_0_cpu_axi_io_cmd_size;
  wire [15:0]VexiiRV_wrapper_0_cpu_axi_io_cmd_uopId;
  wire VexiiRV_wrapper_0_cpu_axi_io_cmd_valid;
  wire VexiiRV_wrapper_0_cpu_axi_io_cmd_wite;
  wire clk;
  wire cpu_int_ext;
  wire cpu_int_soft;
  wire cpu_int_timer;
  wire [63:0]cpu_rdtime;
  wire reset;
  wire [7:0]util_vector_logic_0_Res;

  CPU_block_inst_1_CPU_IO_converter_0_0 CPU_IO_converter_0
       (.cpu_io_cmd_addr(VexiiRV_wrapper_0_cpu_axi_io_cmd_addr),
        .cpu_io_cmd_dout(VexiiRV_wrapper_0_cpu_axi_io_cmd_dout),
        .cpu_io_cmd_fromHart(VexiiRV_wrapper_0_cpu_axi_io_cmd_fromHart),
        .cpu_io_cmd_io(VexiiRV_wrapper_0_cpu_axi_io_cmd_io),
        .cpu_io_cmd_mask(VexiiRV_wrapper_0_cpu_axi_io_cmd_mask),
        .cpu_io_cmd_ready(CPU_IO_converter_0_cpu_io_cmd_ready),
        .cpu_io_cmd_size(VexiiRV_wrapper_0_cpu_axi_io_cmd_size),
        .cpu_io_cmd_uopId(VexiiRV_wrapper_0_cpu_axi_io_cmd_uopId),
        .cpu_io_cmd_valid(VexiiRV_wrapper_0_cpu_axi_io_cmd_valid),
        .cpu_io_cmd_write(VexiiRV_wrapper_0_cpu_axi_io_cmd_wite),
        .cpu_io_rsp_din(CPU_IO_converter_0_cpu_io_rsp_din),
        .cpu_io_rsp_error(CPU_IO_converter_0_cpu_io_rsp_error),
        .cpu_io_rsp_valid(CPU_IO_converter_0_cpu_io_rsp_valid),
        .m00_axi_aclk(clk),
        .m00_axi_araddr(M_AXI_IO_araddr),
        .m00_axi_aresetn(util_vector_logic_0_Res[0]),
        .m00_axi_arprot(M_AXI_IO_arprot),
        .m00_axi_arready(M_AXI_IO_arready),
        .m00_axi_arvalid(M_AXI_IO_arvalid),
        .m00_axi_awaddr(M_AXI_IO_awaddr),
        .m00_axi_awprot(M_AXI_IO_awprot),
        .m00_axi_awready(M_AXI_IO_awready),
        .m00_axi_awvalid(M_AXI_IO_awvalid),
        .m00_axi_bready(M_AXI_IO_bready),
        .m00_axi_bresp(M_AXI_IO_bresp),
        .m00_axi_bvalid(M_AXI_IO_bvalid),
        .m00_axi_rdata(M_AXI_IO_rdata),
        .m00_axi_rready(M_AXI_IO_rready),
        .m00_axi_rresp(M_AXI_IO_rresp),
        .m00_axi_rvalid(M_AXI_IO_rvalid),
        .m00_axi_wdata(M_AXI_IO_wdata),
        .m00_axi_wready(M_AXI_IO_wready),
        .m00_axi_wstrb(M_AXI_IO_wstrb),
        .m00_axi_wvalid(M_AXI_IO_wvalid));
  CPU_block_inst_1_VexiiRV_wrapper_0_0 VexiiRV_wrapper_0
       (.clk(clk),
        .cpu_axi_d_araddr(M_AXI_D_araddr),
        .cpu_axi_d_arburst(M_AXI_D_arburst),
        .cpu_axi_d_arcache(M_AXI_D_arcache),
        .cpu_axi_d_arid(M_AXI_D_arid),
        .cpu_axi_d_arlen(M_AXI_D_arlen),
        .cpu_axi_d_arprot(M_AXI_D_arprot),
        .cpu_axi_d_arready(M_AXI_D_arready),
        .cpu_axi_d_arsize(M_AXI_D_arsize),
        .cpu_axi_d_arvalid(M_AXI_D_arvalid),
        .cpu_axi_d_awaddr(M_AXI_D_awaddr),
        .cpu_axi_d_awburst(M_AXI_D_awburst),
        .cpu_axi_d_awcache(M_AXI_D_awcache),
        .cpu_axi_d_awid(M_AXI_D_awid),
        .cpu_axi_d_awlen(M_AXI_D_awlen),
        .cpu_axi_d_awprot(M_AXI_D_awprot),
        .cpu_axi_d_awready(M_AXI_D_awready),
        .cpu_axi_d_awsize(M_AXI_D_awsize),
        .cpu_axi_d_awvalid(M_AXI_D_awvalid),
        .cpu_axi_d_bid(M_AXI_D_bid),
        .cpu_axi_d_bready(M_AXI_D_bready),
        .cpu_axi_d_bresp(M_AXI_D_bresp),
        .cpu_axi_d_bvalid(M_AXI_D_bvalid),
        .cpu_axi_d_rdata(M_AXI_D_rdata),
        .cpu_axi_d_rid(M_AXI_D_rid),
        .cpu_axi_d_rlast(M_AXI_D_rlast),
        .cpu_axi_d_rready(M_AXI_D_rready),
        .cpu_axi_d_rresp(M_AXI_D_rresp),
        .cpu_axi_d_rvalid(M_AXI_D_rvalid),
        .cpu_axi_d_wdata(M_AXI_D_wdata),
        .cpu_axi_d_wlast(M_AXI_D_wlast),
        .cpu_axi_d_wready(M_AXI_D_wready),
        .cpu_axi_d_wstrb(M_AXI_D_wstrb),
        .cpu_axi_d_wvalid(M_AXI_D_wvalid),
        .cpu_axi_i_ar_addr(M_AXI_I_araddr),
        .cpu_axi_i_ar_burst(M_AXI_I_arburst),
        .cpu_axi_i_ar_cache(M_AXI_I_arcache),
        .cpu_axi_i_ar_id(M_AXI_I_arid),
        .cpu_axi_i_ar_len(M_AXI_I_arlen),
        .cpu_axi_i_ar_prot(M_AXI_I_arprot),
        .cpu_axi_i_ar_ready(M_AXI_I_arready),
        .cpu_axi_i_ar_size(M_AXI_I_arsize),
        .cpu_axi_i_ar_valid(M_AXI_I_arvalid),
        .cpu_axi_i_r_data(M_AXI_I_rdata),
        .cpu_axi_i_r_id(M_AXI_I_rid),
        .cpu_axi_i_r_last(M_AXI_I_rlast),
        .cpu_axi_i_r_ready(M_AXI_I_rready),
        .cpu_axi_i_r_resp(M_AXI_I_rresp),
        .cpu_axi_i_r_valid(M_AXI_I_rvalid),
        .cpu_axi_io_cmd_addr(VexiiRV_wrapper_0_cpu_axi_io_cmd_addr),
        .cpu_axi_io_cmd_dout(VexiiRV_wrapper_0_cpu_axi_io_cmd_dout),
        .cpu_axi_io_cmd_fromHart(VexiiRV_wrapper_0_cpu_axi_io_cmd_fromHart),
        .cpu_axi_io_cmd_io(VexiiRV_wrapper_0_cpu_axi_io_cmd_io),
        .cpu_axi_io_cmd_mask(VexiiRV_wrapper_0_cpu_axi_io_cmd_mask),
        .cpu_axi_io_cmd_ready(CPU_IO_converter_0_cpu_io_cmd_ready),
        .cpu_axi_io_cmd_size(VexiiRV_wrapper_0_cpu_axi_io_cmd_size),
        .cpu_axi_io_cmd_uopId(VexiiRV_wrapper_0_cpu_axi_io_cmd_uopId),
        .cpu_axi_io_cmd_valid(VexiiRV_wrapper_0_cpu_axi_io_cmd_valid),
        .cpu_axi_io_cmd_write(VexiiRV_wrapper_0_cpu_axi_io_cmd_wite),
        .cpu_axi_io_rsp_din(CPU_IO_converter_0_cpu_io_rsp_din),
        .cpu_axi_io_rsp_error(CPU_IO_converter_0_cpu_io_rsp_error),
        .cpu_axi_io_rsp_valid(CPU_IO_converter_0_cpu_io_rsp_valid),
        .cpu_int_ext(cpu_int_ext),
        .cpu_int_soft(cpu_int_soft),
        .cpu_int_timer(cpu_int_timer),
        .cpu_rdtime(cpu_rdtime),
        .reset(reset));
  CPU_block_inst_1_util_vector_logic_0_0 util_vector_logic_0
       (.Op1({reset,reset,reset,reset,reset,reset,reset,reset}),
        .Res(util_vector_logic_0_Res));
endmodule

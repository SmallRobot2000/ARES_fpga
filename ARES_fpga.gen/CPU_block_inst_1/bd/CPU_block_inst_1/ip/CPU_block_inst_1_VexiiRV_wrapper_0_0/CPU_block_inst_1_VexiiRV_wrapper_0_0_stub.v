// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Mon Jul 27 16:30:57 2026
// Host        : lovroRadiona running 64-bit Ubuntu 24.04.4 LTS
// Command     : write_verilog -force -mode synth_stub {/home/lovro/Documents/Alchistry_Labs/DDR3 test/cores/Alchitry
//               AMIX_RISCV/Alchitry
//               AMIX_RISCV.gen/sources_1/bd/Block_top/bd/CPU_block_inst_1/ip/CPU_block_inst_1_VexiiRV_wrapper_0_0/CPU_block_inst_1_VexiiRV_wrapper_0_0_stub.v}
// Design      : CPU_block_inst_1_VexiiRV_wrapper_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tftg256-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "CPU_block_inst_1_VexiiRV_wrapper_0_0,VexiiRV_wrapper,{}" *) (* CORE_GENERATION_INFO = "CPU_block_inst_1_VexiiRV_wrapper_0_0,VexiiRV_wrapper,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=VexiiRV_wrapper,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "VexiiRV_wrapper,Vivado 2025.2" *) 
module CPU_block_inst_1_VexiiRV_wrapper_0_0(clk, reset, cpu_rdtime, cpu_int_timer, 
  cpu_int_soft, cpu_int_ext, cpu_axi_d_awvalid, cpu_axi_d_awready, cpu_axi_d_awaddr, 
  cpu_axi_d_awid, cpu_axi_d_awlen, cpu_axi_d_awsize, cpu_axi_d_awburst, cpu_axi_d_awcache, 
  cpu_axi_d_awprot, cpu_axi_d_wvalid, cpu_axi_d_wready, cpu_axi_d_wdata, cpu_axi_d_wstrb, 
  cpu_axi_d_wlast, cpu_axi_d_bvalid, cpu_axi_d_bready, cpu_axi_d_bid, cpu_axi_d_bresp, 
  cpu_axi_d_arvalid, cpu_axi_d_arready, cpu_axi_d_araddr, cpu_axi_d_arid, cpu_axi_d_arlen, 
  cpu_axi_d_arsize, cpu_axi_d_arburst, cpu_axi_d_arcache, cpu_axi_d_arprot, 
  cpu_axi_d_rvalid, cpu_axi_d_rready, cpu_axi_d_rdata, cpu_axi_d_rid, cpu_axi_d_rresp, 
  cpu_axi_d_rlast, cpu_axi_i_ar_valid, cpu_axi_i_ar_ready, cpu_axi_i_ar_addr, 
  cpu_axi_i_ar_id, cpu_axi_i_ar_len, cpu_axi_i_ar_size, cpu_axi_i_ar_burst, 
  cpu_axi_i_ar_cache, cpu_axi_i_ar_prot, cpu_axi_i_r_valid, cpu_axi_i_r_ready, 
  cpu_axi_i_r_data, cpu_axi_i_r_id, cpu_axi_i_r_resp, cpu_axi_i_r_last, 
  cpu_axi_io_cmd_valid, cpu_axi_io_cmd_ready, cpu_axi_io_cmd_write, cpu_axi_io_cmd_addr, 
  cpu_axi_io_cmd_dout, cpu_axi_io_cmd_size, cpu_axi_io_cmd_mask, cpu_axi_io_cmd_io, 
  cpu_axi_io_cmd_fromHart, cpu_axi_io_cmd_uopId, cpu_axi_io_rsp_valid, 
  cpu_axi_io_rsp_error, cpu_axi_io_rsp_din)
/* synthesis syn_black_box black_box_pad_pin="reset,cpu_rdtime[63:0],cpu_int_timer,cpu_int_soft,cpu_int_ext,cpu_axi_d_awvalid,cpu_axi_d_awready,cpu_axi_d_awaddr[31:0],cpu_axi_d_awid[0:0],cpu_axi_d_awlen[7:0],cpu_axi_d_awsize[2:0],cpu_axi_d_awburst[1:0],cpu_axi_d_awcache[3:0],cpu_axi_d_awprot[2:0],cpu_axi_d_wvalid,cpu_axi_d_wready,cpu_axi_d_wdata[31:0],cpu_axi_d_wstrb[3:0],cpu_axi_d_wlast,cpu_axi_d_bvalid,cpu_axi_d_bready,cpu_axi_d_bid[0:0],cpu_axi_d_bresp[1:0],cpu_axi_d_arvalid,cpu_axi_d_arready,cpu_axi_d_araddr[31:0],cpu_axi_d_arid[0:0],cpu_axi_d_arlen[7:0],cpu_axi_d_arsize[2:0],cpu_axi_d_arburst[1:0],cpu_axi_d_arcache[3:0],cpu_axi_d_arprot[2:0],cpu_axi_d_rvalid,cpu_axi_d_rready,cpu_axi_d_rdata[31:0],cpu_axi_d_rid[0:0],cpu_axi_d_rresp[1:0],cpu_axi_d_rlast,cpu_axi_i_ar_valid,cpu_axi_i_ar_ready,cpu_axi_i_ar_addr[31:0],cpu_axi_i_ar_id,cpu_axi_i_ar_len[7:0],cpu_axi_i_ar_size[2:0],cpu_axi_i_ar_burst[1:0],cpu_axi_i_ar_cache[3:0],cpu_axi_i_ar_prot[2:0],cpu_axi_i_r_valid,cpu_axi_i_r_ready,cpu_axi_i_r_data[31:0],cpu_axi_i_r_id,cpu_axi_i_r_resp[1:0],cpu_axi_i_r_last,cpu_axi_io_cmd_valid,cpu_axi_io_cmd_ready,cpu_axi_io_cmd_write,cpu_axi_io_cmd_addr[31:0],cpu_axi_io_cmd_dout[31:0],cpu_axi_io_cmd_size[1:0],cpu_axi_io_cmd_mask[3:0],cpu_axi_io_cmd_io,cpu_axi_io_cmd_fromHart,cpu_axi_io_cmd_uopId[15:0],cpu_axi_io_rsp_valid,cpu_axi_io_rsp_error,cpu_axi_io_rsp_din[31:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK, ASSOCIATED_BUSIF M_AXI_D:M_AXI_I, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Block_top_mig_axi_wrapper_0_0_ui_clk, INSERT_VIP 0" *) input clk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input reset;
  input [63:0]cpu_rdtime;
  input cpu_int_timer;
  input cpu_int_soft;
  input cpu_int_ext;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D AWVALID" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_D, PROTOCOL AXI4, DATA_WIDTH 32, FREQ_HZ 100000000, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN Block_top_mig_axi_wrapper_0_0_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output cpu_axi_d_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D AWREADY" *) input cpu_axi_d_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D AWADDR" *) output [31:0]cpu_axi_d_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D AWID" *) output [0:0]cpu_axi_d_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D AWLEN" *) output [7:0]cpu_axi_d_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D AWSIZE" *) output [2:0]cpu_axi_d_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D AWBURST" *) output [1:0]cpu_axi_d_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D AWCACHE" *) output [3:0]cpu_axi_d_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D AWPROT" *) output [2:0]cpu_axi_d_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D WVALID" *) output cpu_axi_d_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D WREADY" *) input cpu_axi_d_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D WDATA" *) output [31:0]cpu_axi_d_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D WSTRB" *) output [3:0]cpu_axi_d_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D WLAST" *) output cpu_axi_d_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D BVALID" *) input cpu_axi_d_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D BREADY" *) output cpu_axi_d_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D BID" *) input [0:0]cpu_axi_d_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D BRESP" *) input [1:0]cpu_axi_d_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D ARVALID" *) output cpu_axi_d_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D ARREADY" *) input cpu_axi_d_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D ARADDR" *) output [31:0]cpu_axi_d_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D ARID" *) output [0:0]cpu_axi_d_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D ARLEN" *) output [7:0]cpu_axi_d_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D ARSIZE" *) output [2:0]cpu_axi_d_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D ARBURST" *) output [1:0]cpu_axi_d_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D ARCACHE" *) output [3:0]cpu_axi_d_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D ARPROT" *) output [2:0]cpu_axi_d_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D RVALID" *) input cpu_axi_d_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D RREADY" *) output cpu_axi_d_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D RDATA" *) input [31:0]cpu_axi_d_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D RID" *) input [0:0]cpu_axi_d_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D RRESP" *) input [1:0]cpu_axi_d_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D RLAST" *) input cpu_axi_d_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_I ARVALID" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_I, PROTOCOL AXI4, DATA_WIDTH 32, FREQ_HZ 100000000, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_ONLY, HAS_BURST 1, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 0, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN Block_top_mig_axi_wrapper_0_0_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output cpu_axi_i_ar_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_I ARREADY" *) input cpu_axi_i_ar_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_I ARADDR" *) output [31:0]cpu_axi_i_ar_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_I ARID" *) output cpu_axi_i_ar_id;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_I ARLEN" *) output [7:0]cpu_axi_i_ar_len;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_I ARSIZE" *) output [2:0]cpu_axi_i_ar_size;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_I ARBURST" *) output [1:0]cpu_axi_i_ar_burst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_I ARCACHE" *) output [3:0]cpu_axi_i_ar_cache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_I ARPROT" *) output [2:0]cpu_axi_i_ar_prot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_I RVALID" *) input cpu_axi_i_r_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_I RREADY" *) output cpu_axi_i_r_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_I RDATA" *) input [31:0]cpu_axi_i_r_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_I RID" *) input cpu_axi_i_r_id;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_I RRESP" *) input [1:0]cpu_axi_i_r_resp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_I RLAST" *) input cpu_axi_i_r_last;
  output cpu_axi_io_cmd_valid;
  input cpu_axi_io_cmd_ready;
  output cpu_axi_io_cmd_write;
  output [31:0]cpu_axi_io_cmd_addr;
  output [31:0]cpu_axi_io_cmd_dout;
  output [1:0]cpu_axi_io_cmd_size;
  output [3:0]cpu_axi_io_cmd_mask;
  output cpu_axi_io_cmd_io;
  output cpu_axi_io_cmd_fromHart;
  output [15:0]cpu_axi_io_cmd_uopId;
  input cpu_axi_io_rsp_valid;
  input cpu_axi_io_rsp_error;
  input [31:0]cpu_axi_io_rsp_din;
endmodule

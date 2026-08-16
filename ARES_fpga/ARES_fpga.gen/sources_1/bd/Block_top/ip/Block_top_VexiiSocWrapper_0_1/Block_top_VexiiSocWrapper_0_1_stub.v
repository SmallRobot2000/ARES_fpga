// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Fri Aug 14 21:38:39 2026
// Host        : lovroLinuxM running 64-bit Ubuntu 24.04.4 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/lovro/ARES/ARES_fpga/ARES_fpga/ARES_fpga.gen/sources_1/bd/Block_top/ip/Block_top_VexiiSocWrapper_0_1/Block_top_VexiiSocWrapper_0_1_stub.v
// Design      : Block_top_VexiiSocWrapper_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "Block_top_VexiiSocWrapper_0_1,VexiiSocWrapper,{}" *) (* CORE_GENERATION_INFO = "Block_top_VexiiSocWrapper_0_1,VexiiSocWrapper,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=VexiiSocWrapper,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "VexiiSocWrapper,Vivado 2025.2" *) 
module Block_top_VexiiSocWrapper_0_1(mBus_awvalid, mBus_awready, mBus_awaddr, 
  mBus_awid, mBus_awlen, mBus_awsize, mBus_awburst, mBus_wvalid, mBus_wready, mBus_wdata, 
  mBus_wstrb, mBus_wlast, mBus_bvalid, mBus_bready, mBus_bid, mBus_bresp, mBus_arvalid, 
  mBus_arready, mBus_araddr, mBus_arid, mBus_arlen, mBus_arsize, mBus_arburst, mBus_rvalid, 
  mBus_rready, mBus_rdata, mBus_rid, mBus_rresp, mBus_rlast, pBus_awvalid, pBus_awready, 
  pBus_awaddr, pBus_awprot, pBus_wvalid, pBus_wready, pBus_wdata, pBus_wstrb, pBus_bvalid, 
  pBus_bready, pBus_bresp, pBus_arvalid, pBus_arready, pBus_araddr, pBus_arprot, pBus_rvalid, 
  pBus_rready, pBus_rdata, pBus_rresp, s_axi_aclk, s_axi_aresetn, 
  peripheral_externalInterrupts_port)
/* synthesis syn_black_box black_box_pad_pin="mBus_awvalid,mBus_awready,mBus_awaddr[31:0],mBus_awid[7:0],mBus_awlen[7:0],mBus_awsize[2:0],mBus_awburst[1:0],mBus_wvalid,mBus_wready,mBus_wdata[31:0],mBus_wstrb[3:0],mBus_wlast,mBus_bvalid,mBus_bready,mBus_bid[7:0],mBus_bresp[1:0],mBus_arvalid,mBus_arready,mBus_araddr[31:0],mBus_arid[7:0],mBus_arlen[7:0],mBus_arsize[2:0],mBus_arburst[1:0],mBus_rvalid,mBus_rready,mBus_rdata[31:0],mBus_rid[7:0],mBus_rresp[1:0],mBus_rlast,pBus_awvalid,pBus_awready,pBus_awaddr[31:0],pBus_awprot[2:0],pBus_wvalid,pBus_wready,pBus_wdata[31:0],pBus_wstrb[3:0],pBus_bvalid,pBus_bready,pBus_bresp[1:0],pBus_arvalid,pBus_arready,pBus_araddr[31:0],pBus_arprot[2:0],pBus_rvalid,pBus_rready,pBus_rdata[31:0],pBus_rresp[1:0],s_axi_aresetn,peripheral_externalInterrupts_port[31:0]" */
/* synthesis syn_force_seq_prim="s_axi_aclk" */;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mBus AWVALID" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME mBus, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 8, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN Block_top_mig_axi_wrapper_0_0_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output mBus_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mBus AWREADY" *) input mBus_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mBus AWADDR" *) output [31:0]mBus_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mBus AWID" *) output [7:0]mBus_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mBus AWLEN" *) output [7:0]mBus_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mBus AWSIZE" *) output [2:0]mBus_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mBus AWBURST" *) output [1:0]mBus_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mBus WVALID" *) output mBus_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mBus WREADY" *) input mBus_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mBus WDATA" *) output [31:0]mBus_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mBus WSTRB" *) output [3:0]mBus_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mBus WLAST" *) output mBus_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mBus BVALID" *) input mBus_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mBus BREADY" *) output mBus_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mBus BID" *) input [7:0]mBus_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mBus BRESP" *) input [1:0]mBus_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mBus ARVALID" *) output mBus_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mBus ARREADY" *) input mBus_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mBus ARADDR" *) output [31:0]mBus_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mBus ARID" *) output [7:0]mBus_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mBus ARLEN" *) output [7:0]mBus_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mBus ARSIZE" *) output [2:0]mBus_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mBus ARBURST" *) output [1:0]mBus_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mBus RVALID" *) input mBus_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mBus RREADY" *) output mBus_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mBus RDATA" *) input [31:0]mBus_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mBus RID" *) input [7:0]mBus_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mBus RRESP" *) input [1:0]mBus_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mBus RLAST" *) input mBus_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 pBus AWVALID" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pBus, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN Block_top_mig_axi_wrapper_0_0_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output pBus_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 pBus AWREADY" *) input pBus_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 pBus AWADDR" *) output [31:0]pBus_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 pBus AWPROT" *) output [2:0]pBus_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 pBus WVALID" *) output pBus_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 pBus WREADY" *) input pBus_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 pBus WDATA" *) output [31:0]pBus_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 pBus WSTRB" *) output [3:0]pBus_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 pBus BVALID" *) input pBus_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 pBus BREADY" *) output pBus_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 pBus BRESP" *) input [1:0]pBus_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 pBus ARVALID" *) output pBus_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 pBus ARREADY" *) input pBus_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 pBus ARADDR" *) output [31:0]pBus_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 pBus ARPROT" *) output [2:0]pBus_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 pBus RVALID" *) input pBus_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 pBus RREADY" *) output pBus_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 pBus RDATA" *) input [31:0]pBus_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 pBus RRESP" *) input [1:0]pBus_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s_axi_aclk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_aclk, ASSOCIATED_RESET s_axi_aresetn, ASSOCIATED_BUSIF mBus:pBus, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Block_top_mig_axi_wrapper_0_0_ui_clk, INSERT_VIP 0" *) input s_axi_aclk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s_axi_aresetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;
  input [31:0]peripheral_externalInterrupts_port;
endmodule

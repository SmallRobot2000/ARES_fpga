// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Sun Aug  9 11:52:14 2026
// Host        : lovroLinuxM running 64-bit Ubuntu 24.04.4 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Block_top_axi_chip2chip_0_0_stub.v
// Design      : Block_top_axi_chip2chip_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tftg256-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "Block_top_axi_chip2chip_0_0,axi_chip2chip_v5_0_28,{}" *) (* CORE_GENERATION_INFO = "Block_top_axi_chip2chip_0_0,axi_chip2chip_v5_0_28,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=axi_chip2chip,x_ipVersion=5.0,x_ipCoreRevision=28,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_FAMILY=artix7,C_INSTANCE=axi_c2c,C_SIMULATION=0,C_MASTER_FPGA=1,C_AXI_BUS_TYPE=0,C_EN_AXI_LINK_HNDLR=0,C_COMMON_CLK=0,C_INTERFACE_TYPE=1,C_INTERFACE_MODE=2,C_NUM_OF_IO=20,C_SELECTIO_PHY_CLK=100,C_INCLUDE_AXILITE=0,C_AXI_DATA_WIDTH=32,C_AXI_ID_WIDTH=1,C_AXI_WUSER_WIDTH=1,C_DISABLE_DESKEW=0,C_DISABLE_CLK_SHIFT=0,C_USE_DIFF_CLK=0,C_USE_DIFF_IO=0,C_AURORA_WIDTH=256,C_ECC_ENABLE=1,C_AXI_STB_WIDTH=4,C_AXI_ADDR_WIDTH=32,C_AXI_LEN_WIDTH=8,C_AXI_SIZE_WIDTH=3,C_AXI_BRST_WIDTH=2,C_AXI_RESP_WIDTH=2,C_INTERRUPT_WIDTH=4,C_EN_LEGACY_MODE=0,C_AXI_LITE_ADDR_WIDTH=32,C_AXI_LITE_PROT_WIDTH=2,C_AXI_LITE_DATA_WIDTH=32,C_AXI_LITE_STB_WIDTH=4,C_AXI_LITE_RESP_WIDTH=2}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* X_CORE_INFO = "axi_chip2chip_v5_0_28,Vivado 2025.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(s_aclk, s_aresetn, s_axi_awaddr, s_axi_awlen, 
  s_axi_awsize, s_axi_awburst, s_axi_awvalid, s_axi_awready, s_axi_wdata, s_axi_wstrb, 
  s_axi_wlast, s_axi_wvalid, s_axi_wready, s_axi_bresp, s_axi_bvalid, s_axi_bready, 
  s_axi_araddr, s_axi_arlen, s_axi_arsize, s_axi_arburst, s_axi_arvalid, s_axi_arready, 
  s_axi_rdata, s_axi_rresp, s_axi_rlast, s_axi_rvalid, s_axi_rready, axi_c2c_m2s_intr_in, 
  axi_c2c_s2m_intr_out, idelay_ref_clk, axi_c2c_phy_clk, axi_c2c_selio_tx_clk_out, 
  axi_c2c_selio_tx_data_out, axi_c2c_selio_rx_clk_in, axi_c2c_selio_rx_data_in, 
  axi_c2c_link_status_out, axi_c2c_multi_bit_error_out, axi_c2c_link_error_out)
/* synthesis syn_black_box black_box_pad_pin="s_aresetn,s_axi_awaddr[31:0],s_axi_awlen[7:0],s_axi_awsize[2:0],s_axi_awburst[1:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wlast,s_axi_wvalid,s_axi_wready,s_axi_bresp[1:0],s_axi_bvalid,s_axi_bready,s_axi_araddr[31:0],s_axi_arlen[7:0],s_axi_arsize[2:0],s_axi_arburst[1:0],s_axi_arvalid,s_axi_arready,s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rlast,s_axi_rvalid,s_axi_rready,axi_c2c_m2s_intr_in[3:0],axi_c2c_s2m_intr_out[3:0],axi_c2c_selio_tx_clk_out,axi_c2c_selio_tx_data_out[8:0],axi_c2c_selio_rx_clk_in,axi_c2c_selio_rx_data_in[8:0],axi_c2c_link_status_out,axi_c2c_multi_bit_error_out,axi_c2c_link_error_out" */
/* synthesis syn_force_seq_prim="s_aclk" */
/* synthesis syn_force_seq_prim="idelay_ref_clk" */
/* synthesis syn_force_seq_prim="axi_c2c_phy_clk" */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s_aclk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_aclk, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET s_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Block_top_mig_axi_wrapper_0_0_ui_clk, INSERT_VIP 0" *) input s_aclk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s_aresetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN Block_top_mig_axi_wrapper_0_0_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [31:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWLEN" *) input [7:0]s_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWSIZE" *) input [2:0]s_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWBURST" *) input [1:0]s_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WLAST" *) input s_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARADDR" *) input [31:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARLEN" *) input [7:0]s_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARSIZE" *) input [2:0]s_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARBURST" *) input [1:0]s_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RLAST" *) output s_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RREADY" *) input s_axi_rready;
  input [3:0]axi_c2c_m2s_intr_in;
  output [3:0]axi_c2c_s2m_intr_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 idelay_ref_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME idelay_ref_clk, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input idelay_ref_clk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 axi_c2c_phy_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axi_c2c_phy_clk, ASSOCIATED_BUSIF AXIS_TX:AXIS_RX, ASSOCIATED_RESET aurora_reset_pb, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Block_top_axi_c2c_phy_clk_0, INSERT_VIP 0" *) input axi_c2c_phy_clk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 axi_c2c_selio_tx_clk_out CLK" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axi_c2c_selio_tx_clk_out, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Block_top_axi_chip2chip_0_0_axi_c2c_selio_tx_clk_out, INSERT_VIP 0" *) output axi_c2c_selio_tx_clk_out;
  output [8:0]axi_c2c_selio_tx_data_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 axi_c2c_selio_rx_clk_in CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axi_c2c_selio_rx_clk_in, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Block_top_axi_c2c_selio_rx_clk_in_0, INSERT_VIP 0" *) input axi_c2c_selio_rx_clk_in;
  input [8:0]axi_c2c_selio_rx_data_in;
  output axi_c2c_link_status_out;
  output axi_c2c_multi_bit_error_out;
  output axi_c2c_link_error_out;
endmodule

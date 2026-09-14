// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Sun Sep 13 21:44:36 2026
// Host        : lovroLinuxM running 64-bit Ubuntu 24.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/lovro/ARES/ARES_fpga/ARES_fpga/ARES_fpga.gen/sources_1/bd/Block_top/ip/Block_top_axi_cf_controller_0_0/Block_top_axi_cf_controller_0_0_sim_netlist.v
// Design      : Block_top_axi_cf_controller_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Block_top_axi_cf_controller_0_0,axi_cf_controller,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "axi_cf_controller,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module Block_top_axi_cf_controller_0_0
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    cf_da,
    cf_cs0_n,
    cf_cs1_n,
    cf_iord_n,
    cf_iowr_n,
    cf_reset_n,
    cf_dq,
    cf_intrq,
    irq);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s_axi_aclk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_aclk, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Block_top_mig_axi_wrapper_0_0_ui_clk, INSERT_VIP 0" *) input s_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s_axi_aresetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, PROTOCOL AXI4LITE, DATA_WIDTH 32, ADDR_WIDTH 17, HAS_BURST 0, HAS_LOCK 0, HAS_CACHE 0, HAS_REGION 0, HAS_QOS 0, HAS_WSTRB 1, FREQ_HZ 100000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_PROT 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN Block_top_mig_axi_wrapper_0_0_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [16:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]s_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [16:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]s_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input s_axi_rready;
  output [2:0]cf_da;
  output cf_cs0_n;
  output cf_cs1_n;
  output cf_iord_n;
  output cf_iowr_n;
  output cf_reset_n;
  inout [15:0]cf_dq;
  input cf_intrq;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 irq INTERRUPT" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME irq, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output irq;

  wire \<const0> ;
  wire cf_cs0_n;
  wire cf_cs1_n;
  wire [2:0]cf_da;
  (* DRIVE = "12" *) (* IBUF_LOW_PWR *) (* SLEW = "SLOW" *) wire [15:0]cf_dq;
  wire cf_intrq;
  wire cf_iord_n;
  wire cf_iowr_n;
  wire s_axi_aclk;
  wire [16:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [16:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:1]\^s_axi_bresp ;
  wire s_axi_bvalid;
  wire [15:0]\^s_axi_rdata ;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

  assign cf_reset_n = s_axi_aresetn;
  assign irq = cf_intrq;
  assign s_axi_bresp[1] = \^s_axi_bresp [1];
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rdata[31:16] = \^s_axi_rdata [15:0];
  assign s_axi_rdata[15:0] = \^s_axi_rdata [15:0];
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  Block_top_axi_cf_controller_0_0_axi_cf_controller inst
       (.Q(cf_da),
        .cf_cs0_n(cf_cs0_n),
        .cf_cs1_n(cf_cs1_n),
        .cf_dq(cf_dq),
        .cf_iord_n(cf_iord_n),
        .cf_iowr_n(cf_iowr_n),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr({s_axi_araddr[16],s_axi_araddr[3:1]}),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr({s_axi_awaddr[16],s_axi_awaddr[3:1]}),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(\^s_axi_bresp ),
        .s_axi_bvalid_reg_0(s_axi_bvalid),
        .s_axi_rdata(\^s_axi_rdata ),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid_reg_0(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "axi_cf_controller" *) 
module Block_top_axi_cf_controller_0_0_axi_cf_controller
   (cf_iowr_n,
    Q,
    s_axi_rdata,
    s_axi_arready,
    s_axi_awready,
    s_axi_rvalid_reg_0,
    s_axi_bvalid_reg_0,
    s_axi_wready,
    cf_cs1_n,
    cf_cs0_n,
    cf_iord_n,
    s_axi_bresp,
    cf_dq,
    s_axi_arvalid,
    s_axi_aclk,
    s_axi_wstrb,
    s_axi_awaddr,
    s_axi_wdata,
    s_axi_awvalid,
    s_axi_wvalid,
    s_axi_aresetn,
    s_axi_araddr,
    s_axi_bready,
    s_axi_rready);
  output cf_iowr_n;
  output [2:0]Q;
  output [15:0]s_axi_rdata;
  output s_axi_arready;
  output s_axi_awready;
  output s_axi_rvalid_reg_0;
  output s_axi_bvalid_reg_0;
  output s_axi_wready;
  output cf_cs1_n;
  output cf_cs0_n;
  output cf_iord_n;
  output [0:0]s_axi_bresp;
  inout [15:0]cf_dq;
  input s_axi_arvalid;
  input s_axi_aclk;
  input [3:0]s_axi_wstrb;
  input [3:0]s_axi_awaddr;
  input [31:0]s_axi_wdata;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input s_axi_aresetn;
  input [3:0]s_axi_araddr;
  input s_axi_bready;
  input s_axi_rready;

  wire \FSM_sequential_cf_state[0]_i_1_n_0 ;
  wire \FSM_sequential_cf_state[1]_i_1_n_0 ;
  wire \FSM_sequential_cf_state[1]_i_2_n_0 ;
  wire \FSM_sequential_cf_state[1]_i_3_n_0 ;
  wire \FSM_sequential_cf_state[1]_i_4_n_0 ;
  wire [2:0]Q;
  wire aw_handshake;
  wire aw_pending_i_1_n_0;
  wire aw_pending_reg_n_0;
  wire [16:1]awaddr_reg;
  wire bank;
  wire [7:0]cf_count;
  wire \cf_count[2]_i_2_n_0 ;
  wire \cf_count[6]_i_2_n_0 ;
  wire \cf_count[7]_i_2_n_0 ;
  wire \cf_count[7]_i_3_n_0 ;
  wire \cf_count_reg_n_0_[0] ;
  wire \cf_count_reg_n_0_[1] ;
  wire \cf_count_reg_n_0_[2] ;
  wire \cf_count_reg_n_0_[3] ;
  wire \cf_count_reg_n_0_[4] ;
  wire \cf_count_reg_n_0_[5] ;
  wire \cf_count_reg_n_0_[6] ;
  wire \cf_count_reg_n_0_[7] ;
  wire cf_cs0_n;
  wire cf_cs1_n;
  wire [15:0]cf_dq;
  wire [15:0]cf_dq_i;
  wire cf_dq_t;
  wire cf_iord_n;
  wire cf_iowr_n;
  wire [1:0]cf_state;
  wire [15:0]p_1_in;
  wire s_axi_aclk;
  wire [3:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arready_INST_0_i_1_n_0;
  wire s_axi_arvalid;
  wire [3:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [0:0]s_axi_bresp;
  wire \s_axi_bresp[1]_i_1_n_0 ;
  wire \s_axi_bresp[1]_i_2_n_0 ;
  wire \s_axi_bresp[1]_i_3_n_0 ;
  wire \s_axi_bresp[1]_i_4_n_0 ;
  wire \s_axi_bresp[1]_i_5_n_0 ;
  wire \s_axi_bresp[1]_i_6_n_0 ;
  wire s_axi_bvalid_i_1_n_0;
  wire s_axi_bvalid_reg_0;
  wire [15:0]s_axi_rdata;
  wire \s_axi_rdata[24]_i_1_n_0 ;
  wire \s_axi_rdata[25]_i_1_n_0 ;
  wire \s_axi_rdata[26]_i_1_n_0 ;
  wire \s_axi_rdata[27]_i_1_n_0 ;
  wire \s_axi_rdata[28]_i_1_n_0 ;
  wire \s_axi_rdata[29]_i_1_n_0 ;
  wire \s_axi_rdata[30]_i_1_n_0 ;
  wire \s_axi_rdata[31]_i_1_n_0 ;
  wire \s_axi_rdata[31]_i_2_n_0 ;
  wire \s_axi_rdata[31]_i_3_n_0 ;
  wire \s_axi_rdata[31]_i_4_n_0 ;
  wire s_axi_rready;
  wire s_axi_rvalid_i_1_n_0;
  wire s_axi_rvalid_i_2_n_0;
  wire s_axi_rvalid_reg_0;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire start_write;
  wire trans_bank_i_1_n_0;
  wire [0:0]trans_da;
  wire \trans_da[0]_i_1_n_0 ;
  wire \trans_da[0]_i_2_n_0 ;
  wire \trans_da[1]_i_1_n_0 ;
  wire \trans_da[1]_i_2_n_0 ;
  wire \trans_da[2]_i_2_n_0 ;
  wire \trans_da[2]_i_3_n_0 ;
  wire \trans_da[2]_i_4_n_0 ;
  wire \trans_da[2]_i_5_n_0 ;
  wire trans_is_write_i_2_n_0;
  wire trans_is_write_i_3_n_0;
  wire trans_is_write_reg_n_0;
  wire [15:0]trans_rdata;
  wire \trans_rdata[15]_i_1_n_0 ;
  wire \trans_wdata[0]_i_2_n_0 ;
  wire \trans_wdata[0]_i_3_n_0 ;
  wire \trans_wdata[0]_i_4_n_0 ;
  wire \trans_wdata[0]_i_5_n_0 ;
  wire \trans_wdata[0]_i_6_n_0 ;
  wire \trans_wdata[10]_i_2_n_0 ;
  wire \trans_wdata[11]_i_2_n_0 ;
  wire \trans_wdata[12]_i_2_n_0 ;
  wire \trans_wdata[13]_i_2_n_0 ;
  wire \trans_wdata[14]_i_2_n_0 ;
  wire \trans_wdata[15]_i_2_n_0 ;
  wire \trans_wdata[15]_i_3_n_0 ;
  wire \trans_wdata[15]_i_4_n_0 ;
  wire \trans_wdata[15]_i_5_n_0 ;
  wire \trans_wdata[15]_i_6_n_0 ;
  wire \trans_wdata[15]_i_7_n_0 ;
  wire \trans_wdata[1]_i_2_n_0 ;
  wire \trans_wdata[1]_i_3_n_0 ;
  wire \trans_wdata[1]_i_4_n_0 ;
  wire \trans_wdata[1]_i_5_n_0 ;
  wire \trans_wdata[1]_i_6_n_0 ;
  wire \trans_wdata[1]_i_7_n_0 ;
  wire \trans_wdata[2]_i_2_n_0 ;
  wire \trans_wdata[2]_i_3_n_0 ;
  wire \trans_wdata[2]_i_4_n_0 ;
  wire \trans_wdata[2]_i_5_n_0 ;
  wire \trans_wdata[2]_i_6_n_0 ;
  wire \trans_wdata[3]_i_2_n_0 ;
  wire \trans_wdata[3]_i_3_n_0 ;
  wire \trans_wdata[3]_i_4_n_0 ;
  wire \trans_wdata[3]_i_5_n_0 ;
  wire \trans_wdata[3]_i_6_n_0 ;
  wire \trans_wdata[4]_i_2_n_0 ;
  wire \trans_wdata[4]_i_3_n_0 ;
  wire \trans_wdata[4]_i_4_n_0 ;
  wire \trans_wdata[4]_i_5_n_0 ;
  wire \trans_wdata[4]_i_6_n_0 ;
  wire \trans_wdata[5]_i_2_n_0 ;
  wire \trans_wdata[5]_i_3_n_0 ;
  wire \trans_wdata[5]_i_4_n_0 ;
  wire \trans_wdata[5]_i_5_n_0 ;
  wire \trans_wdata[5]_i_6_n_0 ;
  wire \trans_wdata[6]_i_2_n_0 ;
  wire \trans_wdata[6]_i_3_n_0 ;
  wire \trans_wdata[6]_i_4_n_0 ;
  wire \trans_wdata[6]_i_5_n_0 ;
  wire \trans_wdata[6]_i_6_n_0 ;
  wire \trans_wdata[7]_i_2_n_0 ;
  wire \trans_wdata[7]_i_3_n_0 ;
  wire \trans_wdata[7]_i_4_n_0 ;
  wire \trans_wdata[7]_i_5_n_0 ;
  wire \trans_wdata[7]_i_6_n_0 ;
  wire \trans_wdata[7]_i_7_n_0 ;
  wire \trans_wdata[7]_i_8_n_0 ;
  wire \trans_wdata[7]_i_9_n_0 ;
  wire \trans_wdata[8]_i_2_n_0 ;
  wire \trans_wdata[9]_i_2_n_0 ;
  wire \trans_wdata_reg_n_0_[0] ;
  wire \trans_wdata_reg_n_0_[10] ;
  wire \trans_wdata_reg_n_0_[11] ;
  wire \trans_wdata_reg_n_0_[12] ;
  wire \trans_wdata_reg_n_0_[13] ;
  wire \trans_wdata_reg_n_0_[14] ;
  wire \trans_wdata_reg_n_0_[15] ;
  wire \trans_wdata_reg_n_0_[1] ;
  wire \trans_wdata_reg_n_0_[2] ;
  wire \trans_wdata_reg_n_0_[3] ;
  wire \trans_wdata_reg_n_0_[4] ;
  wire \trans_wdata_reg_n_0_[5] ;
  wire \trans_wdata_reg_n_0_[6] ;
  wire \trans_wdata_reg_n_0_[7] ;
  wire \trans_wdata_reg_n_0_[8] ;
  wire \trans_wdata_reg_n_0_[9] ;
  wire w_handshake;
  wire w_pending_i_1_n_0;
  wire w_pending_i_2_n_0;
  wire w_pending_reg_n_0;
  wire [31:0]wdata_reg;
  wire [3:0]wstrb_reg;

  LUT6 #(
    .INIT(64'h15151015EAEAEFEA)) 
    \FSM_sequential_cf_state[0]_i_1 
       (.I0(\FSM_sequential_cf_state[1]_i_3_n_0 ),
        .I1(\s_axi_bresp[1]_i_3_n_0 ),
        .I2(start_write),
        .I3(s_axi_arvalid),
        .I4(\trans_da[2]_i_3_n_0 ),
        .I5(cf_state[0]),
        .O(\FSM_sequential_cf_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h555557F7AAAAA808)) 
    \FSM_sequential_cf_state[1]_i_1 
       (.I0(cf_state[0]),
        .I1(\FSM_sequential_cf_state[1]_i_2_n_0 ),
        .I2(start_write),
        .I3(\s_axi_bresp[1]_i_3_n_0 ),
        .I4(\FSM_sequential_cf_state[1]_i_3_n_0 ),
        .I5(cf_state[1]),
        .O(\FSM_sequential_cf_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \FSM_sequential_cf_state[1]_i_2 
       (.I0(s_axi_arvalid),
        .I1(trans_is_write_i_3_n_0),
        .I2(s_axi_awvalid),
        .I3(w_pending_reg_n_0),
        .I4(s_axi_wvalid),
        .I5(s_axi_arready_INST_0_i_1_n_0),
        .O(\FSM_sequential_cf_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000200FF00200020)) 
    \FSM_sequential_cf_state[1]_i_3 
       (.I0(cf_state[1]),
        .I1(\s_axi_bresp[1]_i_6_n_0 ),
        .I2(\cf_count_reg_n_0_[3] ),
        .I3(\s_axi_bresp[1]_i_5_n_0 ),
        .I4(\FSM_sequential_cf_state[1]_i_4_n_0 ),
        .I5(cf_state[0]),
        .O(\FSM_sequential_cf_state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF7F)) 
    \FSM_sequential_cf_state[1]_i_4 
       (.I0(\cf_count_reg_n_0_[2] ),
        .I1(\cf_count_reg_n_0_[1] ),
        .I2(\cf_count_reg_n_0_[0] ),
        .I3(\cf_count_reg_n_0_[4] ),
        .I4(\cf_count_reg_n_0_[3] ),
        .I5(cf_state[1]),
        .O(\FSM_sequential_cf_state[1]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "CF_IDLE:00,CF_SETUP:01,CF_STROBE:10,CF_HOLD:11," *) 
  FDRE \FSM_sequential_cf_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_cf_state[0]_i_1_n_0 ),
        .Q(cf_state[0]),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "CF_IDLE:00,CF_SETUP:01,CF_STROBE:10,CF_HOLD:11," *) 
  FDRE \FSM_sequential_cf_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_cf_state[1]_i_1_n_0 ),
        .Q(cf_state[1]),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000ABAA)) 
    aw_pending_i_1
       (.I0(aw_pending_reg_n_0),
        .I1(s_axi_bvalid_reg_0),
        .I2(s_axi_rvalid_reg_0),
        .I3(s_axi_awvalid),
        .I4(start_write),
        .O(aw_pending_i_1_n_0));
  FDRE aw_pending_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(aw_pending_i_1_n_0),
        .Q(aw_pending_reg_n_0),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000200)) 
    \awaddr_reg[16]_i_1 
       (.I0(s_axi_awvalid),
        .I1(s_axi_rvalid_reg_0),
        .I2(s_axi_bvalid_reg_0),
        .I3(s_axi_aresetn),
        .I4(aw_pending_reg_n_0),
        .O(aw_handshake));
  FDRE \awaddr_reg_reg[16] 
       (.C(s_axi_aclk),
        .CE(aw_handshake),
        .D(s_axi_awaddr[3]),
        .Q(awaddr_reg[16]),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  FDRE \awaddr_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(aw_handshake),
        .D(s_axi_awaddr[0]),
        .Q(awaddr_reg[1]),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  FDRE \awaddr_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(aw_handshake),
        .D(s_axi_awaddr[1]),
        .Q(awaddr_reg[2]),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  FDRE \awaddr_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(aw_handshake),
        .D(s_axi_awaddr[2]),
        .Q(awaddr_reg[3]),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \cf_count[0]_i_1 
       (.I0(cf_state[0]),
        .I1(cf_state[1]),
        .I2(\cf_count_reg_n_0_[0] ),
        .O(cf_count[0]));
  LUT6 #(
    .INIT(64'h0000ECE6ECE60000)) 
    \cf_count[1]_i_1 
       (.I0(cf_state[1]),
        .I1(cf_state[0]),
        .I2(\s_axi_rdata[31]_i_3_n_0 ),
        .I3(\cf_count_reg_n_0_[3] ),
        .I4(\cf_count_reg_n_0_[0] ),
        .I5(\cf_count_reg_n_0_[1] ),
        .O(cf_count[1]));
  LUT4 #(
    .INIT(16'h2A80)) 
    \cf_count[2]_i_1 
       (.I0(\cf_count[2]_i_2_n_0 ),
        .I1(\cf_count_reg_n_0_[1] ),
        .I2(\cf_count_reg_n_0_[0] ),
        .I3(\cf_count_reg_n_0_[2] ),
        .O(cf_count[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFEFDFF00)) 
    \cf_count[2]_i_2 
       (.I0(\cf_count_reg_n_0_[3] ),
        .I1(\s_axi_bresp[1]_i_6_n_0 ),
        .I2(\s_axi_bresp[1]_i_5_n_0 ),
        .I3(cf_state[0]),
        .I4(cf_state[1]),
        .O(\cf_count[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \cf_count[3]_i_1 
       (.I0(\cf_count[7]_i_3_n_0 ),
        .I1(\cf_count_reg_n_0_[0] ),
        .I2(\cf_count_reg_n_0_[1] ),
        .I3(\cf_count_reg_n_0_[2] ),
        .I4(\cf_count_reg_n_0_[3] ),
        .O(cf_count[3]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \cf_count[4]_i_1 
       (.I0(\cf_count[7]_i_3_n_0 ),
        .I1(\cf_count_reg_n_0_[2] ),
        .I2(\cf_count_reg_n_0_[1] ),
        .I3(\cf_count_reg_n_0_[0] ),
        .I4(\cf_count_reg_n_0_[3] ),
        .I5(\cf_count_reg_n_0_[4] ),
        .O(cf_count[4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h8AAA2000)) 
    \cf_count[5]_i_1 
       (.I0(\cf_count[7]_i_3_n_0 ),
        .I1(\cf_count[6]_i_2_n_0 ),
        .I2(\cf_count_reg_n_0_[3] ),
        .I3(\cf_count_reg_n_0_[4] ),
        .I4(\cf_count_reg_n_0_[5] ),
        .O(cf_count[5]));
  LUT6 #(
    .INIT(64'hAAAA2AAA00008000)) 
    \cf_count[6]_i_1 
       (.I0(\cf_count[7]_i_3_n_0 ),
        .I1(\cf_count_reg_n_0_[5] ),
        .I2(\cf_count_reg_n_0_[4] ),
        .I3(\cf_count_reg_n_0_[3] ),
        .I4(\cf_count[6]_i_2_n_0 ),
        .I5(\cf_count_reg_n_0_[6] ),
        .O(cf_count[6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \cf_count[6]_i_2 
       (.I0(\cf_count_reg_n_0_[0] ),
        .I1(\cf_count_reg_n_0_[1] ),
        .I2(\cf_count_reg_n_0_[2] ),
        .O(\cf_count[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h7800)) 
    \cf_count[7]_i_1 
       (.I0(\cf_count[7]_i_2_n_0 ),
        .I1(\cf_count_reg_n_0_[6] ),
        .I2(\cf_count_reg_n_0_[7] ),
        .I3(\cf_count[7]_i_3_n_0 ),
        .O(cf_count[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \cf_count[7]_i_2 
       (.I0(\cf_count_reg_n_0_[5] ),
        .I1(\cf_count_reg_n_0_[4] ),
        .I2(\cf_count_reg_n_0_[3] ),
        .I3(\cf_count_reg_n_0_[0] ),
        .I4(\cf_count_reg_n_0_[1] ),
        .I5(\cf_count_reg_n_0_[2] ),
        .O(\cf_count[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFCA8FCA0FCA8FC28)) 
    \cf_count[7]_i_3 
       (.I0(\FSM_sequential_cf_state[1]_i_4_n_0 ),
        .I1(cf_state[1]),
        .I2(cf_state[0]),
        .I3(\s_axi_bresp[1]_i_5_n_0 ),
        .I4(\s_axi_bresp[1]_i_6_n_0 ),
        .I5(\cf_count_reg_n_0_[3] ),
        .O(\cf_count[7]_i_3_n_0 ));
  FDRE \cf_count_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(cf_count[0]),
        .Q(\cf_count_reg_n_0_[0] ),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  FDRE \cf_count_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(cf_count[1]),
        .Q(\cf_count_reg_n_0_[1] ),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  FDRE \cf_count_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(cf_count[2]),
        .Q(\cf_count_reg_n_0_[2] ),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  FDRE \cf_count_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(cf_count[3]),
        .Q(\cf_count_reg_n_0_[3] ),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  FDRE \cf_count_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(cf_count[4]),
        .Q(\cf_count_reg_n_0_[4] ),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  FDRE \cf_count_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(cf_count[5]),
        .Q(\cf_count_reg_n_0_[5] ),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  FDRE \cf_count_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(cf_count[6]),
        .Q(\cf_count_reg_n_0_[6] ),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  FDRE \cf_count_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(cf_count[7]),
        .Q(\cf_count_reg_n_0_[7] ),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    cf_cs0_n_INST_0
       (.I0(bank),
        .I1(cf_state[0]),
        .I2(cf_state[1]),
        .O(cf_cs0_n));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h57)) 
    cf_cs1_n_INST_0
       (.I0(bank),
        .I1(cf_state[0]),
        .I2(cf_state[1]),
        .O(cf_cs1_n));
  LUT3 #(
    .INIT(8'hFB)) 
    cf_iord_n_INST_0
       (.I0(cf_state[0]),
        .I1(cf_state[1]),
        .I2(trans_is_write_reg_n_0),
        .O(cf_iord_n));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    cf_iowr_n_INST_0
       (.I0(cf_state[1]),
        .I1(cf_state[0]),
        .I2(trans_is_write_reg_n_0),
        .O(cf_iowr_n));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    \gen_cf_dq_iobuf[0].cf_dq_iobuf 
       (.I(\trans_wdata_reg_n_0_[0] ),
        .IO(cf_dq[0]),
        .O(cf_dq_i[0]),
        .T(cf_dq_t));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h57)) 
    \gen_cf_dq_iobuf[0].cf_dq_iobuf_i_1 
       (.I0(trans_is_write_reg_n_0),
        .I1(cf_state[0]),
        .I2(cf_state[1]),
        .O(cf_dq_t));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    \gen_cf_dq_iobuf[10].cf_dq_iobuf 
       (.I(\trans_wdata_reg_n_0_[10] ),
        .IO(cf_dq[10]),
        .O(cf_dq_i[10]),
        .T(cf_dq_t));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    \gen_cf_dq_iobuf[11].cf_dq_iobuf 
       (.I(\trans_wdata_reg_n_0_[11] ),
        .IO(cf_dq[11]),
        .O(cf_dq_i[11]),
        .T(cf_dq_t));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    \gen_cf_dq_iobuf[12].cf_dq_iobuf 
       (.I(\trans_wdata_reg_n_0_[12] ),
        .IO(cf_dq[12]),
        .O(cf_dq_i[12]),
        .T(cf_dq_t));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    \gen_cf_dq_iobuf[13].cf_dq_iobuf 
       (.I(\trans_wdata_reg_n_0_[13] ),
        .IO(cf_dq[13]),
        .O(cf_dq_i[13]),
        .T(cf_dq_t));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    \gen_cf_dq_iobuf[14].cf_dq_iobuf 
       (.I(\trans_wdata_reg_n_0_[14] ),
        .IO(cf_dq[14]),
        .O(cf_dq_i[14]),
        .T(cf_dq_t));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    \gen_cf_dq_iobuf[15].cf_dq_iobuf 
       (.I(\trans_wdata_reg_n_0_[15] ),
        .IO(cf_dq[15]),
        .O(cf_dq_i[15]),
        .T(cf_dq_t));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    \gen_cf_dq_iobuf[1].cf_dq_iobuf 
       (.I(\trans_wdata_reg_n_0_[1] ),
        .IO(cf_dq[1]),
        .O(cf_dq_i[1]),
        .T(cf_dq_t));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    \gen_cf_dq_iobuf[2].cf_dq_iobuf 
       (.I(\trans_wdata_reg_n_0_[2] ),
        .IO(cf_dq[2]),
        .O(cf_dq_i[2]),
        .T(cf_dq_t));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    \gen_cf_dq_iobuf[3].cf_dq_iobuf 
       (.I(\trans_wdata_reg_n_0_[3] ),
        .IO(cf_dq[3]),
        .O(cf_dq_i[3]),
        .T(cf_dq_t));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    \gen_cf_dq_iobuf[4].cf_dq_iobuf 
       (.I(\trans_wdata_reg_n_0_[4] ),
        .IO(cf_dq[4]),
        .O(cf_dq_i[4]),
        .T(cf_dq_t));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    \gen_cf_dq_iobuf[5].cf_dq_iobuf 
       (.I(\trans_wdata_reg_n_0_[5] ),
        .IO(cf_dq[5]),
        .O(cf_dq_i[5]),
        .T(cf_dq_t));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    \gen_cf_dq_iobuf[6].cf_dq_iobuf 
       (.I(\trans_wdata_reg_n_0_[6] ),
        .IO(cf_dq[6]),
        .O(cf_dq_i[6]),
        .T(cf_dq_t));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    \gen_cf_dq_iobuf[7].cf_dq_iobuf 
       (.I(\trans_wdata_reg_n_0_[7] ),
        .IO(cf_dq[7]),
        .O(cf_dq_i[7]),
        .T(cf_dq_t));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    \gen_cf_dq_iobuf[8].cf_dq_iobuf 
       (.I(\trans_wdata_reg_n_0_[8] ),
        .IO(cf_dq[8]),
        .O(cf_dq_i[8]),
        .T(cf_dq_t));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IOBUF #(
    .IOSTANDARD("DEFAULT")) 
    \gen_cf_dq_iobuf[9].cf_dq_iobuf 
       (.I(\trans_wdata_reg_n_0_[9] ),
        .IO(cf_dq[9]),
        .O(cf_dq_i[9]),
        .T(cf_dq_t));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    s_axi_arready_INST_0
       (.I0(cf_state[0]),
        .I1(cf_state[1]),
        .I2(s_axi_awvalid),
        .I3(w_pending_reg_n_0),
        .I4(s_axi_wvalid),
        .I5(s_axi_arready_INST_0_i_1_n_0),
        .O(s_axi_arready));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFFFB)) 
    s_axi_arready_INST_0_i_1
       (.I0(aw_pending_reg_n_0),
        .I1(s_axi_aresetn),
        .I2(s_axi_bvalid_reg_0),
        .I3(s_axi_rvalid_reg_0),
        .O(s_axi_arready_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    s_axi_awready_INST_0
       (.I0(s_axi_rvalid_reg_0),
        .I1(s_axi_bvalid_reg_0),
        .I2(s_axi_aresetn),
        .I3(aw_pending_reg_n_0),
        .O(s_axi_awready));
  LUT1 #(
    .INIT(2'h1)) 
    \s_axi_bresp[1]_i_1 
       (.I0(s_axi_aresetn),
        .O(\s_axi_bresp[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h111F1110)) 
    \s_axi_bresp[1]_i_2 
       (.I0(cf_state[1]),
        .I1(\s_axi_bresp[1]_i_3_n_0 ),
        .I2(start_write),
        .I3(\s_axi_bresp[1]_i_4_n_0 ),
        .I4(s_axi_bresp),
        .O(\s_axi_bresp[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFCFFFFFFFCFAFA)) 
    \s_axi_bresp[1]_i_3 
       (.I0(s_axi_wstrb[3]),
        .I1(wstrb_reg[3]),
        .I2(\trans_wdata[15]_i_3_n_0 ),
        .I3(wstrb_reg[2]),
        .I4(w_pending_reg_n_0),
        .I5(s_axi_wstrb[2]),
        .O(\s_axi_bresp[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    \s_axi_bresp[1]_i_4 
       (.I0(\s_axi_bresp[1]_i_5_n_0 ),
        .I1(\s_axi_bresp[1]_i_6_n_0 ),
        .I2(cf_state[1]),
        .I3(cf_state[0]),
        .I4(trans_is_write_reg_n_0),
        .I5(\s_axi_rdata[31]_i_4_n_0 ),
        .O(\s_axi_bresp[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \s_axi_bresp[1]_i_5 
       (.I0(\cf_count_reg_n_0_[7] ),
        .I1(\cf_count_reg_n_0_[6] ),
        .I2(\cf_count_reg_n_0_[5] ),
        .O(\s_axi_bresp[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFF7F)) 
    \s_axi_bresp[1]_i_6 
       (.I0(\cf_count_reg_n_0_[0] ),
        .I1(\cf_count_reg_n_0_[2] ),
        .I2(\cf_count_reg_n_0_[4] ),
        .I3(\cf_count_reg_n_0_[1] ),
        .O(\s_axi_bresp[1]_i_6_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) 
  FDRE \s_axi_bresp_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\s_axi_bresp[1]_i_2_n_0 ),
        .Q(s_axi_bresp),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAEFFAEAE)) 
    s_axi_bvalid_i_1
       (.I0(\s_axi_bresp[1]_i_4_n_0 ),
        .I1(start_write),
        .I2(\s_axi_bresp[1]_i_3_n_0 ),
        .I3(s_axi_bready),
        .I4(s_axi_bvalid_reg_0),
        .O(s_axi_bvalid_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) 
  FDRE s_axi_bvalid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_bvalid_i_1_n_0),
        .Q(s_axi_bvalid_reg_0),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \s_axi_rdata[24]_i_1 
       (.I0(trans_rdata[0]),
        .I1(Q[0]),
        .I2(bank),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(trans_rdata[8]),
        .O(\s_axi_rdata[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \s_axi_rdata[25]_i_1 
       (.I0(trans_rdata[1]),
        .I1(Q[0]),
        .I2(bank),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(trans_rdata[9]),
        .O(\s_axi_rdata[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \s_axi_rdata[26]_i_1 
       (.I0(trans_rdata[2]),
        .I1(Q[0]),
        .I2(bank),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(trans_rdata[10]),
        .O(\s_axi_rdata[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \s_axi_rdata[27]_i_1 
       (.I0(trans_rdata[3]),
        .I1(Q[0]),
        .I2(bank),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(trans_rdata[11]),
        .O(\s_axi_rdata[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \s_axi_rdata[28]_i_1 
       (.I0(trans_rdata[4]),
        .I1(Q[0]),
        .I2(bank),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(trans_rdata[12]),
        .O(\s_axi_rdata[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \s_axi_rdata[29]_i_1 
       (.I0(trans_rdata[5]),
        .I1(Q[0]),
        .I2(bank),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(trans_rdata[13]),
        .O(\s_axi_rdata[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \s_axi_rdata[30]_i_1 
       (.I0(trans_rdata[6]),
        .I1(Q[0]),
        .I2(bank),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(trans_rdata[14]),
        .O(\s_axi_rdata[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000040)) 
    \s_axi_rdata[31]_i_1 
       (.I0(\s_axi_rdata[31]_i_3_n_0 ),
        .I1(cf_state[1]),
        .I2(cf_state[0]),
        .I3(\s_axi_rdata[31]_i_4_n_0 ),
        .I4(trans_is_write_reg_n_0),
        .O(\s_axi_rdata[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAA8)) 
    \s_axi_rdata[31]_i_2 
       (.I0(trans_rdata[7]),
        .I1(Q[0]),
        .I2(bank),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(trans_rdata[15]),
        .O(\s_axi_rdata[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hEFFFFFFF)) 
    \s_axi_rdata[31]_i_3 
       (.I0(\s_axi_bresp[1]_i_5_n_0 ),
        .I1(\cf_count_reg_n_0_[1] ),
        .I2(\cf_count_reg_n_0_[4] ),
        .I3(\cf_count_reg_n_0_[2] ),
        .I4(\cf_count_reg_n_0_[0] ),
        .O(\s_axi_rdata[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \s_axi_rdata[31]_i_4 
       (.I0(\cf_count_reg_n_0_[5] ),
        .I1(\cf_count_reg_n_0_[3] ),
        .I2(\cf_count_reg_n_0_[4] ),
        .O(\s_axi_rdata[31]_i_4_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) 
  FDRE \s_axi_rdata_reg[16] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_1_n_0 ),
        .D(trans_rdata[0]),
        .Q(s_axi_rdata[0]),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) 
  FDRE \s_axi_rdata_reg[17] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_1_n_0 ),
        .D(trans_rdata[1]),
        .Q(s_axi_rdata[1]),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) 
  FDRE \s_axi_rdata_reg[18] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_1_n_0 ),
        .D(trans_rdata[2]),
        .Q(s_axi_rdata[2]),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) 
  FDRE \s_axi_rdata_reg[19] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_1_n_0 ),
        .D(trans_rdata[3]),
        .Q(s_axi_rdata[3]),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) 
  FDRE \s_axi_rdata_reg[20] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_1_n_0 ),
        .D(trans_rdata[4]),
        .Q(s_axi_rdata[4]),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) 
  FDRE \s_axi_rdata_reg[21] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_1_n_0 ),
        .D(trans_rdata[5]),
        .Q(s_axi_rdata[5]),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) 
  FDRE \s_axi_rdata_reg[22] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_1_n_0 ),
        .D(trans_rdata[6]),
        .Q(s_axi_rdata[6]),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) 
  FDRE \s_axi_rdata_reg[23] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_1_n_0 ),
        .D(trans_rdata[7]),
        .Q(s_axi_rdata[7]),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) 
  FDRE \s_axi_rdata_reg[24] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_1_n_0 ),
        .D(\s_axi_rdata[24]_i_1_n_0 ),
        .Q(s_axi_rdata[8]),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) 
  FDRE \s_axi_rdata_reg[25] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_1_n_0 ),
        .D(\s_axi_rdata[25]_i_1_n_0 ),
        .Q(s_axi_rdata[9]),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) 
  FDRE \s_axi_rdata_reg[26] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_1_n_0 ),
        .D(\s_axi_rdata[26]_i_1_n_0 ),
        .Q(s_axi_rdata[10]),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) 
  FDRE \s_axi_rdata_reg[27] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_1_n_0 ),
        .D(\s_axi_rdata[27]_i_1_n_0 ),
        .Q(s_axi_rdata[11]),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) 
  FDRE \s_axi_rdata_reg[28] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_1_n_0 ),
        .D(\s_axi_rdata[28]_i_1_n_0 ),
        .Q(s_axi_rdata[12]),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) 
  FDRE \s_axi_rdata_reg[29] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_1_n_0 ),
        .D(\s_axi_rdata[29]_i_1_n_0 ),
        .Q(s_axi_rdata[13]),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) 
  FDRE \s_axi_rdata_reg[30] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_1_n_0 ),
        .D(\s_axi_rdata[30]_i_1_n_0 ),
        .Q(s_axi_rdata[14]),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) 
  FDRE \s_axi_rdata_reg[31] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_1_n_0 ),
        .D(\s_axi_rdata[31]_i_2_n_0 ),
        .Q(s_axi_rdata[15]),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h10FF1010)) 
    s_axi_rvalid_i_1
       (.I0(trans_is_write_reg_n_0),
        .I1(\s_axi_rdata[31]_i_4_n_0 ),
        .I2(s_axi_rvalid_i_2_n_0),
        .I3(s_axi_rready),
        .I4(s_axi_rvalid_reg_0),
        .O(s_axi_rvalid_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    s_axi_rvalid_i_2
       (.I0(cf_state[0]),
        .I1(cf_state[1]),
        .I2(\s_axi_bresp[1]_i_6_n_0 ),
        .I3(\cf_count_reg_n_0_[7] ),
        .I4(\cf_count_reg_n_0_[6] ),
        .I5(\cf_count_reg_n_0_[5] ),
        .O(s_axi_rvalid_i_2_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) 
  FDRE s_axi_rvalid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_rvalid_i_1_n_0),
        .Q(s_axi_rvalid_reg_0),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    s_axi_wready_INST_0
       (.I0(s_axi_rvalid_reg_0),
        .I1(s_axi_bvalid_reg_0),
        .I2(s_axi_aresetn),
        .I3(w_pending_reg_n_0),
        .O(s_axi_wready));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    trans_bank_i_1
       (.I0(awaddr_reg[16]),
        .I1(aw_pending_reg_n_0),
        .I2(s_axi_awaddr[3]),
        .I3(start_write),
        .I4(s_axi_araddr[3]),
        .O(trans_bank_i_1_n_0));
  FDRE trans_bank_reg
       (.C(s_axi_aclk),
        .CE(trans_da),
        .D(trans_bank_i_1_n_0),
        .Q(bank),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20202F20)) 
    \trans_da[0]_i_1 
       (.I0(\trans_da[0]_i_2_n_0 ),
        .I1(\trans_da[2]_i_4_n_0 ),
        .I2(start_write),
        .I3(s_axi_araddr[0]),
        .I4(s_axi_araddr[3]),
        .O(\trans_da[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \trans_da[0]_i_2 
       (.I0(awaddr_reg[1]),
        .I1(aw_pending_reg_n_0),
        .I2(s_axi_awaddr[0]),
        .O(\trans_da[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hBBB8)) 
    \trans_da[1]_i_1 
       (.I0(\trans_da[1]_i_2_n_0 ),
        .I1(start_write),
        .I2(s_axi_araddr[3]),
        .I3(s_axi_araddr[1]),
        .O(\trans_da[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \trans_da[1]_i_2 
       (.I0(s_axi_awaddr[3]),
        .I1(awaddr_reg[16]),
        .I2(s_axi_awaddr[1]),
        .I3(aw_pending_reg_n_0),
        .I4(awaddr_reg[2]),
        .O(\trans_da[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h88B8)) 
    \trans_da[2]_i_1 
       (.I0(\s_axi_bresp[1]_i_3_n_0 ),
        .I1(start_write),
        .I2(s_axi_arvalid),
        .I3(\trans_da[2]_i_3_n_0 ),
        .O(trans_da));
  LUT5 #(
    .INIT(32'hEFEFEFE0)) 
    \trans_da[2]_i_2 
       (.I0(\trans_da[2]_i_4_n_0 ),
        .I1(\trans_da[2]_i_5_n_0 ),
        .I2(start_write),
        .I3(s_axi_araddr[3]),
        .I4(s_axi_araddr[2]),
        .O(\trans_da[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \trans_da[2]_i_3 
       (.I0(s_axi_arready_INST_0_i_1_n_0),
        .I1(s_axi_wvalid),
        .I2(w_pending_reg_n_0),
        .I3(s_axi_awvalid),
        .I4(cf_state[1]),
        .I5(cf_state[0]),
        .O(\trans_da[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \trans_da[2]_i_4 
       (.I0(awaddr_reg[16]),
        .I1(aw_pending_reg_n_0),
        .I2(s_axi_awaddr[3]),
        .O(\trans_da[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \trans_da[2]_i_5 
       (.I0(awaddr_reg[3]),
        .I1(aw_pending_reg_n_0),
        .I2(s_axi_awaddr[2]),
        .O(\trans_da[2]_i_5_n_0 ));
  FDRE \trans_da_reg[0] 
       (.C(s_axi_aclk),
        .CE(trans_da),
        .D(\trans_da[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  FDRE \trans_da_reg[1] 
       (.C(s_axi_aclk),
        .CE(trans_da),
        .D(\trans_da[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  FDRE \trans_da_reg[2] 
       (.C(s_axi_aclk),
        .CE(trans_da),
        .D(\trans_da[2]_i_2_n_0 ),
        .Q(Q[2]),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000E000E000E0000)) 
    trans_is_write_i_1
       (.I0(w_handshake),
        .I1(w_pending_reg_n_0),
        .I2(trans_is_write_i_2_n_0),
        .I3(trans_is_write_i_3_n_0),
        .I4(aw_pending_reg_n_0),
        .I5(aw_handshake),
        .O(start_write));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hE)) 
    trans_is_write_i_2
       (.I0(s_axi_bvalid_reg_0),
        .I1(s_axi_rvalid_reg_0),
        .O(trans_is_write_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hE)) 
    trans_is_write_i_3
       (.I0(cf_state[1]),
        .I1(cf_state[0]),
        .O(trans_is_write_i_3_n_0));
  FDRE trans_is_write_reg
       (.C(s_axi_aclk),
        .CE(trans_da),
        .D(start_write),
        .Q(trans_is_write_reg_n_0),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \trans_rdata[15]_i_1 
       (.I0(trans_is_write_reg_n_0),
        .I1(cf_state[1]),
        .I2(cf_state[0]),
        .O(\trans_rdata[15]_i_1_n_0 ));
  FDRE \trans_rdata_reg[0] 
       (.C(s_axi_aclk),
        .CE(\trans_rdata[15]_i_1_n_0 ),
        .D(cf_dq_i[0]),
        .Q(trans_rdata[0]),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  FDRE \trans_rdata_reg[10] 
       (.C(s_axi_aclk),
        .CE(\trans_rdata[15]_i_1_n_0 ),
        .D(cf_dq_i[10]),
        .Q(trans_rdata[10]),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  FDRE \trans_rdata_reg[11] 
       (.C(s_axi_aclk),
        .CE(\trans_rdata[15]_i_1_n_0 ),
        .D(cf_dq_i[11]),
        .Q(trans_rdata[11]),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  FDRE \trans_rdata_reg[12] 
       (.C(s_axi_aclk),
        .CE(\trans_rdata[15]_i_1_n_0 ),
        .D(cf_dq_i[12]),
        .Q(trans_rdata[12]),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  FDRE \trans_rdata_reg[13] 
       (.C(s_axi_aclk),
        .CE(\trans_rdata[15]_i_1_n_0 ),
        .D(cf_dq_i[13]),
        .Q(trans_rdata[13]),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  FDRE \trans_rdata_reg[14] 
       (.C(s_axi_aclk),
        .CE(\trans_rdata[15]_i_1_n_0 ),
        .D(cf_dq_i[14]),
        .Q(trans_rdata[14]),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  FDRE \trans_rdata_reg[15] 
       (.C(s_axi_aclk),
        .CE(\trans_rdata[15]_i_1_n_0 ),
        .D(cf_dq_i[15]),
        .Q(trans_rdata[15]),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  FDRE \trans_rdata_reg[1] 
       (.C(s_axi_aclk),
        .CE(\trans_rdata[15]_i_1_n_0 ),
        .D(cf_dq_i[1]),
        .Q(trans_rdata[1]),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  FDRE \trans_rdata_reg[2] 
       (.C(s_axi_aclk),
        .CE(\trans_rdata[15]_i_1_n_0 ),
        .D(cf_dq_i[2]),
        .Q(trans_rdata[2]),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  FDRE \trans_rdata_reg[3] 
       (.C(s_axi_aclk),
        .CE(\trans_rdata[15]_i_1_n_0 ),
        .D(cf_dq_i[3]),
        .Q(trans_rdata[3]),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  FDRE \trans_rdata_reg[4] 
       (.C(s_axi_aclk),
        .CE(\trans_rdata[15]_i_1_n_0 ),
        .D(cf_dq_i[4]),
        .Q(trans_rdata[4]),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  FDRE \trans_rdata_reg[5] 
       (.C(s_axi_aclk),
        .CE(\trans_rdata[15]_i_1_n_0 ),
        .D(cf_dq_i[5]),
        .Q(trans_rdata[5]),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  FDRE \trans_rdata_reg[6] 
       (.C(s_axi_aclk),
        .CE(\trans_rdata[15]_i_1_n_0 ),
        .D(cf_dq_i[6]),
        .Q(trans_rdata[6]),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  FDRE \trans_rdata_reg[7] 
       (.C(s_axi_aclk),
        .CE(\trans_rdata[15]_i_1_n_0 ),
        .D(cf_dq_i[7]),
        .Q(trans_rdata[7]),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  FDRE \trans_rdata_reg[8] 
       (.C(s_axi_aclk),
        .CE(\trans_rdata[15]_i_1_n_0 ),
        .D(cf_dq_i[8]),
        .Q(trans_rdata[8]),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  FDRE \trans_rdata_reg[9] 
       (.C(s_axi_aclk),
        .CE(\trans_rdata[15]_i_1_n_0 ),
        .D(cf_dq_i[9]),
        .Q(trans_rdata[9]),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA202A2A2A2A2A2A2)) 
    \trans_wdata[0]_i_1 
       (.I0(start_write),
        .I1(\trans_wdata[0]_i_2_n_0 ),
        .I2(\trans_wdata[7]_i_3_n_0 ),
        .I3(\trans_wdata[0]_i_3_n_0 ),
        .I4(\trans_wdata[0]_i_4_n_0 ),
        .I5(\trans_wdata[0]_i_5_n_0 ),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \trans_wdata[0]_i_2 
       (.I0(wdata_reg[16]),
        .I1(s_axi_wdata[16]),
        .I2(\trans_wdata[15]_i_3_n_0 ),
        .I3(wdata_reg[0]),
        .I4(w_pending_reg_n_0),
        .I5(s_axi_wdata[0]),
        .O(\trans_wdata[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000C0AAC000)) 
    \trans_wdata[0]_i_3 
       (.I0(s_axi_wstrb[2]),
        .I1(wstrb_reg[2]),
        .I2(wdata_reg[16]),
        .I3(w_pending_reg_n_0),
        .I4(s_axi_wdata[16]),
        .I5(\trans_wdata[15]_i_3_n_0 ),
        .O(\trans_wdata[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF3FFF5F5F3FFFFFF)) 
    \trans_wdata[0]_i_4 
       (.I0(s_axi_wdata[8]),
        .I1(wdata_reg[8]),
        .I2(\trans_wdata[7]_i_7_n_0 ),
        .I3(wstrb_reg[1]),
        .I4(w_pending_reg_n_0),
        .I5(s_axi_wstrb[1]),
        .O(\trans_wdata[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA8AAA8A8A8AAAAAA)) 
    \trans_wdata[0]_i_5 
       (.I0(\trans_wdata[0]_i_6_n_0 ),
        .I1(\trans_wdata[7]_i_9_n_0 ),
        .I2(\trans_wdata[15]_i_3_n_0 ),
        .I3(wdata_reg[24]),
        .I4(w_pending_reg_n_0),
        .I5(s_axi_wdata[24]),
        .O(\trans_wdata[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h335FFF5F)) 
    \trans_wdata[0]_i_6 
       (.I0(s_axi_wstrb[0]),
        .I1(wstrb_reg[0]),
        .I2(s_axi_wdata[0]),
        .I3(w_pending_reg_n_0),
        .I4(wdata_reg[0]),
        .O(\trans_wdata[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \trans_wdata[10]_i_1 
       (.I0(\trans_wdata[10]_i_2_n_0 ),
        .I1(\trans_wdata[15]_i_3_n_0 ),
        .I2(s_axi_wdata[10]),
        .I3(w_pending_reg_n_0),
        .I4(wdata_reg[10]),
        .I5(\trans_wdata[15]_i_4_n_0 ),
        .O(p_1_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \trans_wdata[10]_i_2 
       (.I0(wdata_reg[26]),
        .I1(w_pending_reg_n_0),
        .I2(s_axi_wdata[26]),
        .O(\trans_wdata[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \trans_wdata[11]_i_1 
       (.I0(\trans_wdata[11]_i_2_n_0 ),
        .I1(\trans_wdata[15]_i_3_n_0 ),
        .I2(s_axi_wdata[11]),
        .I3(w_pending_reg_n_0),
        .I4(wdata_reg[11]),
        .I5(\trans_wdata[15]_i_4_n_0 ),
        .O(p_1_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \trans_wdata[11]_i_2 
       (.I0(wdata_reg[27]),
        .I1(w_pending_reg_n_0),
        .I2(s_axi_wdata[27]),
        .O(\trans_wdata[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \trans_wdata[12]_i_1 
       (.I0(\trans_wdata[12]_i_2_n_0 ),
        .I1(\trans_wdata[15]_i_3_n_0 ),
        .I2(s_axi_wdata[12]),
        .I3(w_pending_reg_n_0),
        .I4(wdata_reg[12]),
        .I5(\trans_wdata[15]_i_4_n_0 ),
        .O(p_1_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \trans_wdata[12]_i_2 
       (.I0(wdata_reg[28]),
        .I1(w_pending_reg_n_0),
        .I2(s_axi_wdata[28]),
        .O(\trans_wdata[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \trans_wdata[13]_i_1 
       (.I0(\trans_wdata[13]_i_2_n_0 ),
        .I1(\trans_wdata[15]_i_3_n_0 ),
        .I2(s_axi_wdata[13]),
        .I3(w_pending_reg_n_0),
        .I4(wdata_reg[13]),
        .I5(\trans_wdata[15]_i_4_n_0 ),
        .O(p_1_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \trans_wdata[13]_i_2 
       (.I0(wdata_reg[29]),
        .I1(w_pending_reg_n_0),
        .I2(s_axi_wdata[29]),
        .O(\trans_wdata[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \trans_wdata[14]_i_1 
       (.I0(\trans_wdata[14]_i_2_n_0 ),
        .I1(\trans_wdata[15]_i_3_n_0 ),
        .I2(s_axi_wdata[14]),
        .I3(w_pending_reg_n_0),
        .I4(wdata_reg[14]),
        .I5(\trans_wdata[15]_i_4_n_0 ),
        .O(p_1_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \trans_wdata[14]_i_2 
       (.I0(wdata_reg[30]),
        .I1(w_pending_reg_n_0),
        .I2(s_axi_wdata[30]),
        .O(\trans_wdata[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \trans_wdata[15]_i_1 
       (.I0(\trans_wdata[15]_i_2_n_0 ),
        .I1(\trans_wdata[15]_i_3_n_0 ),
        .I2(s_axi_wdata[15]),
        .I3(w_pending_reg_n_0),
        .I4(wdata_reg[15]),
        .I5(\trans_wdata[15]_i_4_n_0 ),
        .O(p_1_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \trans_wdata[15]_i_2 
       (.I0(wdata_reg[31]),
        .I1(w_pending_reg_n_0),
        .I2(s_axi_wdata[31]),
        .O(\trans_wdata[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \trans_wdata[15]_i_3 
       (.I0(s_axi_wstrb[1]),
        .I1(wstrb_reg[1]),
        .I2(s_axi_wstrb[0]),
        .I3(w_pending_reg_n_0),
        .I4(wstrb_reg[0]),
        .O(\trans_wdata[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF1)) 
    \trans_wdata[15]_i_4 
       (.I0(w_handshake),
        .I1(w_pending_reg_n_0),
        .I2(\trans_wdata[15]_i_5_n_0 ),
        .I3(\trans_wdata[15]_i_6_n_0 ),
        .I4(\trans_da[1]_i_2_n_0 ),
        .I5(\trans_wdata[15]_i_7_n_0 ),
        .O(\trans_wdata[15]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \trans_wdata[15]_i_5 
       (.I0(s_axi_rvalid_reg_0),
        .I1(s_axi_bvalid_reg_0),
        .I2(cf_state[0]),
        .I3(cf_state[1]),
        .O(\trans_wdata[15]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h55515555)) 
    \trans_wdata[15]_i_6 
       (.I0(aw_pending_reg_n_0),
        .I1(s_axi_aresetn),
        .I2(s_axi_bvalid_reg_0),
        .I3(s_axi_rvalid_reg_0),
        .I4(s_axi_awvalid),
        .O(\trans_wdata[15]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    \trans_wdata[15]_i_7 
       (.I0(s_axi_awaddr[2]),
        .I1(awaddr_reg[3]),
        .I2(s_axi_awaddr[0]),
        .I3(aw_pending_reg_n_0),
        .I4(awaddr_reg[1]),
        .O(\trans_wdata[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hA2A2A2A2A202A2A2)) 
    \trans_wdata[1]_i_1 
       (.I0(start_write),
        .I1(\trans_wdata[1]_i_2_n_0 ),
        .I2(\trans_wdata[7]_i_3_n_0 ),
        .I3(\trans_wdata[1]_i_3_n_0 ),
        .I4(\trans_wdata[1]_i_4_n_0 ),
        .I5(\trans_wdata[1]_i_5_n_0 ),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \trans_wdata[1]_i_2 
       (.I0(wdata_reg[1]),
        .I1(s_axi_wdata[1]),
        .I2(\trans_wdata[15]_i_3_n_0 ),
        .I3(wdata_reg[17]),
        .I4(w_pending_reg_n_0),
        .I5(s_axi_wdata[17]),
        .O(\trans_wdata[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8A808A808A80FFFF)) 
    \trans_wdata[1]_i_3 
       (.I0(\trans_wdata[1]_i_6_n_0 ),
        .I1(wdata_reg[9]),
        .I2(w_pending_reg_n_0),
        .I3(s_axi_wdata[9]),
        .I4(\trans_wdata[1]_i_7_n_0 ),
        .I5(\trans_wdata[15]_i_3_n_0 ),
        .O(\trans_wdata[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEFAFFFFFFFAFF)) 
    \trans_wdata[1]_i_4 
       (.I0(\trans_wdata[15]_i_3_n_0 ),
        .I1(wstrb_reg[2]),
        .I2(s_axi_wstrb[2]),
        .I3(s_axi_wdata[25]),
        .I4(w_pending_reg_n_0),
        .I5(wdata_reg[25]),
        .O(\trans_wdata[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hCCA000A0)) 
    \trans_wdata[1]_i_5 
       (.I0(s_axi_wstrb[0]),
        .I1(wstrb_reg[0]),
        .I2(s_axi_wdata[1]),
        .I3(w_pending_reg_n_0),
        .I4(wdata_reg[1]),
        .O(\trans_wdata[1]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h000ACC0A)) 
    \trans_wdata[1]_i_6 
       (.I0(s_axi_wstrb[1]),
        .I1(wstrb_reg[1]),
        .I2(s_axi_wstrb[0]),
        .I3(w_pending_reg_n_0),
        .I4(wstrb_reg[0]),
        .O(\trans_wdata[1]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h335FFF5F)) 
    \trans_wdata[1]_i_7 
       (.I0(s_axi_wstrb[2]),
        .I1(wstrb_reg[2]),
        .I2(s_axi_wdata[17]),
        .I3(w_pending_reg_n_0),
        .I4(wdata_reg[17]),
        .O(\trans_wdata[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hA202A2A2A2A2A2A2)) 
    \trans_wdata[2]_i_1 
       (.I0(start_write),
        .I1(\trans_wdata[2]_i_2_n_0 ),
        .I2(\trans_wdata[7]_i_3_n_0 ),
        .I3(\trans_wdata[2]_i_3_n_0 ),
        .I4(\trans_wdata[2]_i_4_n_0 ),
        .I5(\trans_wdata[2]_i_5_n_0 ),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'h553355330F000FFF)) 
    \trans_wdata[2]_i_2 
       (.I0(wdata_reg[2]),
        .I1(s_axi_wdata[2]),
        .I2(wdata_reg[18]),
        .I3(w_pending_reg_n_0),
        .I4(s_axi_wdata[18]),
        .I5(\trans_wdata[15]_i_3_n_0 ),
        .O(\trans_wdata[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000C0AAC000)) 
    \trans_wdata[2]_i_3 
       (.I0(s_axi_wstrb[2]),
        .I1(wstrb_reg[2]),
        .I2(wdata_reg[18]),
        .I3(w_pending_reg_n_0),
        .I4(s_axi_wdata[18]),
        .I5(\trans_wdata[15]_i_3_n_0 ),
        .O(\trans_wdata[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF3FFF5F5F3FFFFFF)) 
    \trans_wdata[2]_i_4 
       (.I0(s_axi_wdata[10]),
        .I1(wdata_reg[10]),
        .I2(\trans_wdata[7]_i_7_n_0 ),
        .I3(wstrb_reg[1]),
        .I4(w_pending_reg_n_0),
        .I5(s_axi_wstrb[1]),
        .O(\trans_wdata[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h5455545454555555)) 
    \trans_wdata[2]_i_5 
       (.I0(\trans_wdata[2]_i_6_n_0 ),
        .I1(\trans_wdata[7]_i_9_n_0 ),
        .I2(\trans_wdata[15]_i_3_n_0 ),
        .I3(wdata_reg[26]),
        .I4(w_pending_reg_n_0),
        .I5(s_axi_wdata[26]),
        .O(\trans_wdata[2]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hCCA000A0)) 
    \trans_wdata[2]_i_6 
       (.I0(s_axi_wstrb[0]),
        .I1(wstrb_reg[0]),
        .I2(s_axi_wdata[2]),
        .I3(w_pending_reg_n_0),
        .I4(wdata_reg[2]),
        .O(\trans_wdata[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hA2A2A202A2A2A2A2)) 
    \trans_wdata[3]_i_1 
       (.I0(start_write),
        .I1(\trans_wdata[3]_i_2_n_0 ),
        .I2(\trans_wdata[7]_i_3_n_0 ),
        .I3(\trans_wdata[3]_i_3_n_0 ),
        .I4(\trans_wdata[3]_i_4_n_0 ),
        .I5(\trans_wdata[3]_i_5_n_0 ),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'h553355330F000FFF)) 
    \trans_wdata[3]_i_2 
       (.I0(wdata_reg[3]),
        .I1(s_axi_wdata[3]),
        .I2(wdata_reg[19]),
        .I3(w_pending_reg_n_0),
        .I4(s_axi_wdata[19]),
        .I5(\trans_wdata[15]_i_3_n_0 ),
        .O(\trans_wdata[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0C000A0A0C000000)) 
    \trans_wdata[3]_i_3 
       (.I0(s_axi_wdata[11]),
        .I1(wdata_reg[11]),
        .I2(\trans_wdata[7]_i_7_n_0 ),
        .I3(wstrb_reg[1]),
        .I4(w_pending_reg_n_0),
        .I5(s_axi_wstrb[1]),
        .O(\trans_wdata[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000C0AAC000)) 
    \trans_wdata[3]_i_4 
       (.I0(s_axi_wstrb[2]),
        .I1(wstrb_reg[2]),
        .I2(wdata_reg[19]),
        .I3(w_pending_reg_n_0),
        .I4(s_axi_wdata[19]),
        .I5(\trans_wdata[15]_i_3_n_0 ),
        .O(\trans_wdata[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h5455545454555555)) 
    \trans_wdata[3]_i_5 
       (.I0(\trans_wdata[3]_i_6_n_0 ),
        .I1(\trans_wdata[7]_i_9_n_0 ),
        .I2(\trans_wdata[15]_i_3_n_0 ),
        .I3(wdata_reg[27]),
        .I4(w_pending_reg_n_0),
        .I5(s_axi_wdata[27]),
        .O(\trans_wdata[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hCCA000A0)) 
    \trans_wdata[3]_i_6 
       (.I0(s_axi_wstrb[0]),
        .I1(wstrb_reg[0]),
        .I2(s_axi_wdata[3]),
        .I3(w_pending_reg_n_0),
        .I4(wdata_reg[3]),
        .O(\trans_wdata[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hA202A2A2A2A2A2A2)) 
    \trans_wdata[4]_i_1 
       (.I0(start_write),
        .I1(\trans_wdata[4]_i_2_n_0 ),
        .I2(\trans_wdata[7]_i_3_n_0 ),
        .I3(\trans_wdata[4]_i_3_n_0 ),
        .I4(\trans_wdata[4]_i_4_n_0 ),
        .I5(\trans_wdata[4]_i_5_n_0 ),
        .O(p_1_in[4]));
  LUT6 #(
    .INIT(64'h553355330F000FFF)) 
    \trans_wdata[4]_i_2 
       (.I0(wdata_reg[4]),
        .I1(s_axi_wdata[4]),
        .I2(wdata_reg[20]),
        .I3(w_pending_reg_n_0),
        .I4(s_axi_wdata[20]),
        .I5(\trans_wdata[15]_i_3_n_0 ),
        .O(\trans_wdata[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000C0AAC000)) 
    \trans_wdata[4]_i_3 
       (.I0(s_axi_wstrb[2]),
        .I1(wstrb_reg[2]),
        .I2(wdata_reg[20]),
        .I3(w_pending_reg_n_0),
        .I4(s_axi_wdata[20]),
        .I5(\trans_wdata[15]_i_3_n_0 ),
        .O(\trans_wdata[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF3FFF5F5F3FFFFFF)) 
    \trans_wdata[4]_i_4 
       (.I0(s_axi_wdata[12]),
        .I1(wdata_reg[12]),
        .I2(\trans_wdata[7]_i_7_n_0 ),
        .I3(wstrb_reg[1]),
        .I4(w_pending_reg_n_0),
        .I5(s_axi_wstrb[1]),
        .O(\trans_wdata[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h5455545454555555)) 
    \trans_wdata[4]_i_5 
       (.I0(\trans_wdata[4]_i_6_n_0 ),
        .I1(\trans_wdata[7]_i_9_n_0 ),
        .I2(\trans_wdata[15]_i_3_n_0 ),
        .I3(wdata_reg[28]),
        .I4(w_pending_reg_n_0),
        .I5(s_axi_wdata[28]),
        .O(\trans_wdata[4]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hCCA000A0)) 
    \trans_wdata[4]_i_6 
       (.I0(s_axi_wstrb[0]),
        .I1(wstrb_reg[0]),
        .I2(s_axi_wdata[4]),
        .I3(w_pending_reg_n_0),
        .I4(wdata_reg[4]),
        .O(\trans_wdata[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hA2A2A202A2A2A2A2)) 
    \trans_wdata[5]_i_1 
       (.I0(start_write),
        .I1(\trans_wdata[5]_i_2_n_0 ),
        .I2(\trans_wdata[7]_i_3_n_0 ),
        .I3(\trans_wdata[5]_i_3_n_0 ),
        .I4(\trans_wdata[5]_i_4_n_0 ),
        .I5(\trans_wdata[5]_i_5_n_0 ),
        .O(p_1_in[5]));
  LUT6 #(
    .INIT(64'h553355330F000FFF)) 
    \trans_wdata[5]_i_2 
       (.I0(wdata_reg[5]),
        .I1(s_axi_wdata[5]),
        .I2(wdata_reg[21]),
        .I3(w_pending_reg_n_0),
        .I4(s_axi_wdata[21]),
        .I5(\trans_wdata[15]_i_3_n_0 ),
        .O(\trans_wdata[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0C000A0A0C000000)) 
    \trans_wdata[5]_i_3 
       (.I0(s_axi_wdata[13]),
        .I1(wdata_reg[13]),
        .I2(\trans_wdata[7]_i_7_n_0 ),
        .I3(wstrb_reg[1]),
        .I4(w_pending_reg_n_0),
        .I5(s_axi_wstrb[1]),
        .O(\trans_wdata[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000C0AAC000)) 
    \trans_wdata[5]_i_4 
       (.I0(s_axi_wstrb[2]),
        .I1(wstrb_reg[2]),
        .I2(wdata_reg[21]),
        .I3(w_pending_reg_n_0),
        .I4(s_axi_wdata[21]),
        .I5(\trans_wdata[15]_i_3_n_0 ),
        .O(\trans_wdata[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h5455545454555555)) 
    \trans_wdata[5]_i_5 
       (.I0(\trans_wdata[5]_i_6_n_0 ),
        .I1(\trans_wdata[7]_i_9_n_0 ),
        .I2(\trans_wdata[15]_i_3_n_0 ),
        .I3(wdata_reg[29]),
        .I4(w_pending_reg_n_0),
        .I5(s_axi_wdata[29]),
        .O(\trans_wdata[5]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hCCA000A0)) 
    \trans_wdata[5]_i_6 
       (.I0(s_axi_wstrb[0]),
        .I1(wstrb_reg[0]),
        .I2(s_axi_wdata[5]),
        .I3(w_pending_reg_n_0),
        .I4(wdata_reg[5]),
        .O(\trans_wdata[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hA202A2A2A2A2A2A2)) 
    \trans_wdata[6]_i_1 
       (.I0(start_write),
        .I1(\trans_wdata[6]_i_2_n_0 ),
        .I2(\trans_wdata[7]_i_3_n_0 ),
        .I3(\trans_wdata[6]_i_3_n_0 ),
        .I4(\trans_wdata[6]_i_4_n_0 ),
        .I5(\trans_wdata[6]_i_5_n_0 ),
        .O(p_1_in[6]));
  LUT6 #(
    .INIT(64'h553355330F000FFF)) 
    \trans_wdata[6]_i_2 
       (.I0(wdata_reg[6]),
        .I1(s_axi_wdata[6]),
        .I2(wdata_reg[22]),
        .I3(w_pending_reg_n_0),
        .I4(s_axi_wdata[22]),
        .I5(\trans_wdata[15]_i_3_n_0 ),
        .O(\trans_wdata[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000C0AAC000)) 
    \trans_wdata[6]_i_3 
       (.I0(s_axi_wstrb[2]),
        .I1(wstrb_reg[2]),
        .I2(wdata_reg[22]),
        .I3(w_pending_reg_n_0),
        .I4(s_axi_wdata[22]),
        .I5(\trans_wdata[15]_i_3_n_0 ),
        .O(\trans_wdata[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF3FFF5F5F3FFFFFF)) 
    \trans_wdata[6]_i_4 
       (.I0(s_axi_wdata[14]),
        .I1(wdata_reg[14]),
        .I2(\trans_wdata[7]_i_7_n_0 ),
        .I3(wstrb_reg[1]),
        .I4(w_pending_reg_n_0),
        .I5(s_axi_wstrb[1]),
        .O(\trans_wdata[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h5455545454555555)) 
    \trans_wdata[6]_i_5 
       (.I0(\trans_wdata[6]_i_6_n_0 ),
        .I1(\trans_wdata[7]_i_9_n_0 ),
        .I2(\trans_wdata[15]_i_3_n_0 ),
        .I3(wdata_reg[30]),
        .I4(w_pending_reg_n_0),
        .I5(s_axi_wdata[30]),
        .O(\trans_wdata[6]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hCCA000A0)) 
    \trans_wdata[6]_i_6 
       (.I0(s_axi_wstrb[0]),
        .I1(wstrb_reg[0]),
        .I2(s_axi_wdata[6]),
        .I3(w_pending_reg_n_0),
        .I4(wdata_reg[6]),
        .O(\trans_wdata[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hA202A2A2A2A2A2A2)) 
    \trans_wdata[7]_i_1 
       (.I0(start_write),
        .I1(\trans_wdata[7]_i_2_n_0 ),
        .I2(\trans_wdata[7]_i_3_n_0 ),
        .I3(\trans_wdata[7]_i_4_n_0 ),
        .I4(\trans_wdata[7]_i_5_n_0 ),
        .I5(\trans_wdata[7]_i_6_n_0 ),
        .O(p_1_in[7]));
  LUT6 #(
    .INIT(64'h553355330F000FFF)) 
    \trans_wdata[7]_i_2 
       (.I0(wdata_reg[7]),
        .I1(s_axi_wdata[7]),
        .I2(wdata_reg[23]),
        .I3(w_pending_reg_n_0),
        .I4(s_axi_wdata[23]),
        .I5(\trans_wdata[15]_i_3_n_0 ),
        .O(\trans_wdata[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFEFFFFAEFEA)) 
    \trans_wdata[7]_i_3 
       (.I0(\trans_da[1]_i_2_n_0 ),
        .I1(awaddr_reg[1]),
        .I2(aw_pending_reg_n_0),
        .I3(s_axi_awaddr[0]),
        .I4(awaddr_reg[3]),
        .I5(s_axi_awaddr[2]),
        .O(\trans_wdata[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000C0AAC000)) 
    \trans_wdata[7]_i_4 
       (.I0(s_axi_wstrb[2]),
        .I1(wstrb_reg[2]),
        .I2(wdata_reg[23]),
        .I3(w_pending_reg_n_0),
        .I4(s_axi_wdata[23]),
        .I5(\trans_wdata[15]_i_3_n_0 ),
        .O(\trans_wdata[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF3FFF5F5F3FFFFFF)) 
    \trans_wdata[7]_i_5 
       (.I0(s_axi_wdata[15]),
        .I1(wdata_reg[15]),
        .I2(\trans_wdata[7]_i_7_n_0 ),
        .I3(wstrb_reg[1]),
        .I4(w_pending_reg_n_0),
        .I5(s_axi_wstrb[1]),
        .O(\trans_wdata[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5455545454555555)) 
    \trans_wdata[7]_i_6 
       (.I0(\trans_wdata[7]_i_8_n_0 ),
        .I1(\trans_wdata[7]_i_9_n_0 ),
        .I2(\trans_wdata[15]_i_3_n_0 ),
        .I3(wdata_reg[31]),
        .I4(w_pending_reg_n_0),
        .I5(s_axi_wdata[31]),
        .O(\trans_wdata[7]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \trans_wdata[7]_i_7 
       (.I0(wstrb_reg[0]),
        .I1(w_pending_reg_n_0),
        .I2(s_axi_wstrb[0]),
        .O(\trans_wdata[7]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hCCA000A0)) 
    \trans_wdata[7]_i_8 
       (.I0(s_axi_wstrb[0]),
        .I1(wstrb_reg[0]),
        .I2(s_axi_wdata[7]),
        .I3(w_pending_reg_n_0),
        .I4(wdata_reg[7]),
        .O(\trans_wdata[7]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \trans_wdata[7]_i_9 
       (.I0(wstrb_reg[2]),
        .I1(w_pending_reg_n_0),
        .I2(s_axi_wstrb[2]),
        .O(\trans_wdata[7]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \trans_wdata[8]_i_1 
       (.I0(\trans_wdata[8]_i_2_n_0 ),
        .I1(\trans_wdata[15]_i_3_n_0 ),
        .I2(s_axi_wdata[8]),
        .I3(w_pending_reg_n_0),
        .I4(wdata_reg[8]),
        .I5(\trans_wdata[15]_i_4_n_0 ),
        .O(p_1_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \trans_wdata[8]_i_2 
       (.I0(wdata_reg[24]),
        .I1(w_pending_reg_n_0),
        .I2(s_axi_wdata[24]),
        .O(\trans_wdata[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \trans_wdata[9]_i_1 
       (.I0(\trans_wdata[9]_i_2_n_0 ),
        .I1(\trans_wdata[15]_i_3_n_0 ),
        .I2(s_axi_wdata[9]),
        .I3(w_pending_reg_n_0),
        .I4(wdata_reg[9]),
        .I5(\trans_wdata[15]_i_4_n_0 ),
        .O(p_1_in[9]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \trans_wdata[9]_i_2 
       (.I0(wdata_reg[25]),
        .I1(w_pending_reg_n_0),
        .I2(s_axi_wdata[25]),
        .O(\trans_wdata[9]_i_2_n_0 ));
  FDRE \trans_wdata_reg[0] 
       (.C(s_axi_aclk),
        .CE(trans_da),
        .D(p_1_in[0]),
        .Q(\trans_wdata_reg_n_0_[0] ),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  FDRE \trans_wdata_reg[10] 
       (.C(s_axi_aclk),
        .CE(trans_da),
        .D(p_1_in[10]),
        .Q(\trans_wdata_reg_n_0_[10] ),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  FDRE \trans_wdata_reg[11] 
       (.C(s_axi_aclk),
        .CE(trans_da),
        .D(p_1_in[11]),
        .Q(\trans_wdata_reg_n_0_[11] ),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  FDRE \trans_wdata_reg[12] 
       (.C(s_axi_aclk),
        .CE(trans_da),
        .D(p_1_in[12]),
        .Q(\trans_wdata_reg_n_0_[12] ),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  FDRE \trans_wdata_reg[13] 
       (.C(s_axi_aclk),
        .CE(trans_da),
        .D(p_1_in[13]),
        .Q(\trans_wdata_reg_n_0_[13] ),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  FDRE \trans_wdata_reg[14] 
       (.C(s_axi_aclk),
        .CE(trans_da),
        .D(p_1_in[14]),
        .Q(\trans_wdata_reg_n_0_[14] ),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  FDRE \trans_wdata_reg[15] 
       (.C(s_axi_aclk),
        .CE(trans_da),
        .D(p_1_in[15]),
        .Q(\trans_wdata_reg_n_0_[15] ),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  FDRE \trans_wdata_reg[1] 
       (.C(s_axi_aclk),
        .CE(trans_da),
        .D(p_1_in[1]),
        .Q(\trans_wdata_reg_n_0_[1] ),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  FDRE \trans_wdata_reg[2] 
       (.C(s_axi_aclk),
        .CE(trans_da),
        .D(p_1_in[2]),
        .Q(\trans_wdata_reg_n_0_[2] ),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  FDRE \trans_wdata_reg[3] 
       (.C(s_axi_aclk),
        .CE(trans_da),
        .D(p_1_in[3]),
        .Q(\trans_wdata_reg_n_0_[3] ),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  FDRE \trans_wdata_reg[4] 
       (.C(s_axi_aclk),
        .CE(trans_da),
        .D(p_1_in[4]),
        .Q(\trans_wdata_reg_n_0_[4] ),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  FDRE \trans_wdata_reg[5] 
       (.C(s_axi_aclk),
        .CE(trans_da),
        .D(p_1_in[5]),
        .Q(\trans_wdata_reg_n_0_[5] ),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  FDRE \trans_wdata_reg[6] 
       (.C(s_axi_aclk),
        .CE(trans_da),
        .D(p_1_in[6]),
        .Q(\trans_wdata_reg_n_0_[6] ),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  FDRE \trans_wdata_reg[7] 
       (.C(s_axi_aclk),
        .CE(trans_da),
        .D(p_1_in[7]),
        .Q(\trans_wdata_reg_n_0_[7] ),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  FDRE \trans_wdata_reg[8] 
       (.C(s_axi_aclk),
        .CE(trans_da),
        .D(p_1_in[8]),
        .Q(\trans_wdata_reg_n_0_[8] ),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  FDRE \trans_wdata_reg[9] 
       (.C(s_axi_aclk),
        .CE(trans_da),
        .D(p_1_in[9]),
        .Q(\trans_wdata_reg_n_0_[9] ),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h888A8888)) 
    w_pending_i_1
       (.I0(w_pending_i_2_n_0),
        .I1(w_pending_reg_n_0),
        .I2(s_axi_bvalid_reg_0),
        .I3(s_axi_rvalid_reg_0),
        .I4(s_axi_wvalid),
        .O(w_pending_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF1)) 
    w_pending_i_2
       (.I0(aw_handshake),
        .I1(aw_pending_reg_n_0),
        .I2(cf_state[1]),
        .I3(cf_state[0]),
        .I4(s_axi_bvalid_reg_0),
        .I5(s_axi_rvalid_reg_0),
        .O(w_pending_i_2_n_0));
  FDRE w_pending_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(w_pending_i_1_n_0),
        .Q(w_pending_reg_n_0),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  FDRE \wdata_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(w_handshake),
        .D(s_axi_wdata[0]),
        .Q(wdata_reg[0]),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  FDRE \wdata_reg_reg[10] 
       (.C(s_axi_aclk),
        .CE(w_handshake),
        .D(s_axi_wdata[10]),
        .Q(wdata_reg[10]),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  FDRE \wdata_reg_reg[11] 
       (.C(s_axi_aclk),
        .CE(w_handshake),
        .D(s_axi_wdata[11]),
        .Q(wdata_reg[11]),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  FDRE \wdata_reg_reg[12] 
       (.C(s_axi_aclk),
        .CE(w_handshake),
        .D(s_axi_wdata[12]),
        .Q(wdata_reg[12]),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  FDRE \wdata_reg_reg[13] 
       (.C(s_axi_aclk),
        .CE(w_handshake),
        .D(s_axi_wdata[13]),
        .Q(wdata_reg[13]),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  FDRE \wdata_reg_reg[14] 
       (.C(s_axi_aclk),
        .CE(w_handshake),
        .D(s_axi_wdata[14]),
        .Q(wdata_reg[14]),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  FDRE \wdata_reg_reg[15] 
       (.C(s_axi_aclk),
        .CE(w_handshake),
        .D(s_axi_wdata[15]),
        .Q(wdata_reg[15]),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  FDRE \wdata_reg_reg[16] 
       (.C(s_axi_aclk),
        .CE(w_handshake),
        .D(s_axi_wdata[16]),
        .Q(wdata_reg[16]),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  FDRE \wdata_reg_reg[17] 
       (.C(s_axi_aclk),
        .CE(w_handshake),
        .D(s_axi_wdata[17]),
        .Q(wdata_reg[17]),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  FDRE \wdata_reg_reg[18] 
       (.C(s_axi_aclk),
        .CE(w_handshake),
        .D(s_axi_wdata[18]),
        .Q(wdata_reg[18]),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  FDRE \wdata_reg_reg[19] 
       (.C(s_axi_aclk),
        .CE(w_handshake),
        .D(s_axi_wdata[19]),
        .Q(wdata_reg[19]),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  FDRE \wdata_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(w_handshake),
        .D(s_axi_wdata[1]),
        .Q(wdata_reg[1]),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  FDRE \wdata_reg_reg[20] 
       (.C(s_axi_aclk),
        .CE(w_handshake),
        .D(s_axi_wdata[20]),
        .Q(wdata_reg[20]),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  FDRE \wdata_reg_reg[21] 
       (.C(s_axi_aclk),
        .CE(w_handshake),
        .D(s_axi_wdata[21]),
        .Q(wdata_reg[21]),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  FDRE \wdata_reg_reg[22] 
       (.C(s_axi_aclk),
        .CE(w_handshake),
        .D(s_axi_wdata[22]),
        .Q(wdata_reg[22]),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  FDRE \wdata_reg_reg[23] 
       (.C(s_axi_aclk),
        .CE(w_handshake),
        .D(s_axi_wdata[23]),
        .Q(wdata_reg[23]),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  FDRE \wdata_reg_reg[24] 
       (.C(s_axi_aclk),
        .CE(w_handshake),
        .D(s_axi_wdata[24]),
        .Q(wdata_reg[24]),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  FDRE \wdata_reg_reg[25] 
       (.C(s_axi_aclk),
        .CE(w_handshake),
        .D(s_axi_wdata[25]),
        .Q(wdata_reg[25]),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  FDRE \wdata_reg_reg[26] 
       (.C(s_axi_aclk),
        .CE(w_handshake),
        .D(s_axi_wdata[26]),
        .Q(wdata_reg[26]),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  FDRE \wdata_reg_reg[27] 
       (.C(s_axi_aclk),
        .CE(w_handshake),
        .D(s_axi_wdata[27]),
        .Q(wdata_reg[27]),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  FDRE \wdata_reg_reg[28] 
       (.C(s_axi_aclk),
        .CE(w_handshake),
        .D(s_axi_wdata[28]),
        .Q(wdata_reg[28]),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  FDRE \wdata_reg_reg[29] 
       (.C(s_axi_aclk),
        .CE(w_handshake),
        .D(s_axi_wdata[29]),
        .Q(wdata_reg[29]),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  FDRE \wdata_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(w_handshake),
        .D(s_axi_wdata[2]),
        .Q(wdata_reg[2]),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  FDRE \wdata_reg_reg[30] 
       (.C(s_axi_aclk),
        .CE(w_handshake),
        .D(s_axi_wdata[30]),
        .Q(wdata_reg[30]),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  FDRE \wdata_reg_reg[31] 
       (.C(s_axi_aclk),
        .CE(w_handshake),
        .D(s_axi_wdata[31]),
        .Q(wdata_reg[31]),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  FDRE \wdata_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(w_handshake),
        .D(s_axi_wdata[3]),
        .Q(wdata_reg[3]),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  FDRE \wdata_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(w_handshake),
        .D(s_axi_wdata[4]),
        .Q(wdata_reg[4]),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  FDRE \wdata_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(w_handshake),
        .D(s_axi_wdata[5]),
        .Q(wdata_reg[5]),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  FDRE \wdata_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(w_handshake),
        .D(s_axi_wdata[6]),
        .Q(wdata_reg[6]),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  FDRE \wdata_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(w_handshake),
        .D(s_axi_wdata[7]),
        .Q(wdata_reg[7]),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  FDRE \wdata_reg_reg[8] 
       (.C(s_axi_aclk),
        .CE(w_handshake),
        .D(s_axi_wdata[8]),
        .Q(wdata_reg[8]),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  FDRE \wdata_reg_reg[9] 
       (.C(s_axi_aclk),
        .CE(w_handshake),
        .D(s_axi_wdata[9]),
        .Q(wdata_reg[9]),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000200)) 
    \wstrb_reg[3]_i_1 
       (.I0(s_axi_wvalid),
        .I1(s_axi_rvalid_reg_0),
        .I2(s_axi_bvalid_reg_0),
        .I3(s_axi_aresetn),
        .I4(w_pending_reg_n_0),
        .O(w_handshake));
  FDRE \wstrb_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(w_handshake),
        .D(s_axi_wstrb[0]),
        .Q(wstrb_reg[0]),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  FDRE \wstrb_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(w_handshake),
        .D(s_axi_wstrb[1]),
        .Q(wstrb_reg[1]),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  FDRE \wstrb_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(w_handshake),
        .D(s_axi_wstrb[2]),
        .Q(wstrb_reg[2]),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
  FDRE \wstrb_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(w_handshake),
        .D(s_axi_wstrb[3]),
        .Q(wstrb_reg[3]),
        .R(\s_axi_bresp[1]_i_1_n_0 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif

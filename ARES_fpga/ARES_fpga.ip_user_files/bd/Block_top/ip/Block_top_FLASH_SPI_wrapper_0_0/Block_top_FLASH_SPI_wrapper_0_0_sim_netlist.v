// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Tue Aug 11 17:30:05 2026
// Host        : lovroLinuxM running 64-bit Ubuntu 24.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/lovro/ARES/ARES_fpga/ARES_fpga/ARES_fpga.gen/sources_1/bd/Block_top/ip/Block_top_FLASH_SPI_wrapper_0_0/Block_top_FLASH_SPI_wrapper_0_0_sim_netlist.v
// Design      : Block_top_FLASH_SPI_wrapper_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tftg256-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Block_top_FLASH_SPI_wrapper_0_0,FLASH_SPI_wrapper,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "FLASH_SPI_wrapper,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module Block_top_FLASH_SPI_wrapper_0_0
   (s_axi_arvalid,
    s_axi_arready,
    s_axi_araddr,
    s_axi_arprot,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_rdata,
    s_axi_rresp,
    spi_miso,
    spi_mosi,
    spi_sck,
    spi_ce_n,
    s_axi_clk,
    reset);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, PROTOCOL AXI4LITE, ADDR_WIDTH 32, DATA_WIDTH 32, FREQ_HZ 100000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 0, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN Block_top_mig_axi_wrapper_0_0_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [31:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]s_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  input spi_miso;
  output spi_mosi;
  output spi_sck;
  output spi_ce_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET s_axi_areset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Block_top_mig_axi_wrapper_0_0_ui_clk, INSERT_VIP 0" *) input s_axi_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESET RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESET, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input reset;

  wire \<const0> ;
  wire reset;
  wire [31:0]s_axi_araddr;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire s_axi_clk;
  wire [31:0]s_axi_rdata;
  wire s_axi_rvalid;
  wire spi_ce_n;
  wire spi_miso;
  wire spi_mosi;
  wire spi_sck;

  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  Block_top_FLASH_SPI_wrapper_0_0_FLASH_SPI_wrapper inst
       (.reset(reset),
        .s_axi_araddr(s_axi_araddr[23:0]),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_clk(s_axi_clk),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rvalid(s_axi_rvalid),
        .spi_ce_n(spi_ce_n),
        .spi_miso(spi_miso),
        .spi_mosi(spi_mosi),
        .spi_sck(spi_sck));
endmodule

(* ORIG_REF_NAME = "FLASH_SPI" *) 
module Block_top_FLASH_SPI_wrapper_0_0_FLASH_SPI
   (s_axi_rdata,
    spi_ce_n,
    s_axi_arready,
    s_axi_rvalid,
    spi_mosi,
    spi_sck,
    reset,
    s_axi_arvalid,
    s_axi_clk,
    spi_miso,
    s_axi_araddr);
  output [31:0]s_axi_rdata;
  output spi_ce_n;
  output s_axi_arready;
  output s_axi_rvalid;
  output spi_mosi;
  output spi_sck;
  input reset;
  input s_axi_arvalid;
  input s_axi_clk;
  input spi_miso;
  input [23:0]s_axi_araddr;

  wire \FSM_onehot_axi_state[1]_i_1_n_0 ;
  wire \FSM_onehot_axi_state[2]_i_1_n_0 ;
  wire \FSM_onehot_axi_state[3]_i_1_n_0 ;
  wire axi_ar_ready;
  wire axi_ar_ready_i_1_n_0;
  wire axi_r_valid_i_1_n_0;
  wire [3:1]axi_state__0;
  wire buf_dout025_out;
  wire buf_dout027_out;
  wire buf_dout029_out;
  wire \buf_dout[31]_i_2_n_0 ;
  wire \buf_dout[31]_i_3_n_0 ;
  wire \buf_dout[7]_i_1_n_0 ;
  wire \buf_dout[7]_i_2_n_0 ;
  wire buf_valid;
  wire buf_valid1;
  wire buf_valid_i_1_n_0;
  wire data0;
  wire data2;
  wire data3;
  wire data4;
  wire data5;
  wire data6;
  wire data7;
  wire p_0_in;
  wire p_0_in0;
  wire [7:0]p_2_in;
  wire reset;
  wire [23:0]s_axi_araddr;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire s_axi_clk;
  wire [31:0]s_axi_rdata;
  wire s_axi_rvalid;
  wire sck_en;
  wire sck_en_i_1_n_0;
  wire \spi_addr[23]_i_1_n_0 ;
  wire \spi_addr_reg_n_0_[0] ;
  wire \spi_addr_reg_n_0_[10] ;
  wire \spi_addr_reg_n_0_[11] ;
  wire \spi_addr_reg_n_0_[12] ;
  wire \spi_addr_reg_n_0_[13] ;
  wire \spi_addr_reg_n_0_[14] ;
  wire \spi_addr_reg_n_0_[15] ;
  wire \spi_addr_reg_n_0_[16] ;
  wire \spi_addr_reg_n_0_[17] ;
  wire \spi_addr_reg_n_0_[18] ;
  wire \spi_addr_reg_n_0_[19] ;
  wire \spi_addr_reg_n_0_[1] ;
  wire \spi_addr_reg_n_0_[20] ;
  wire \spi_addr_reg_n_0_[21] ;
  wire \spi_addr_reg_n_0_[22] ;
  wire \spi_addr_reg_n_0_[23] ;
  wire \spi_addr_reg_n_0_[2] ;
  wire \spi_addr_reg_n_0_[3] ;
  wire \spi_addr_reg_n_0_[4] ;
  wire \spi_addr_reg_n_0_[5] ;
  wire \spi_addr_reg_n_0_[6] ;
  wire \spi_addr_reg_n_0_[7] ;
  wire \spi_addr_reg_n_0_[8] ;
  wire \spi_addr_reg_n_0_[9] ;
  wire spi_ce_n;
  wire spi_cmd_start_i_1_n_0;
  wire spi_cmd_start_reg_n_0;
  wire [5:0]spi_cnt;
  wire \spi_cnt[0]_i_1_n_0 ;
  wire \spi_cnt[1]_i_1_n_0 ;
  wire \spi_cnt[2]_i_1_n_0 ;
  wire \spi_cnt[3]_i_1_n_0 ;
  wire \spi_cnt[4]_i_1_n_0 ;
  wire \spi_cnt[5]_i_1_n_0 ;
  wire \spi_cnt[5]_i_2_n_0 ;
  wire \spi_cnt[5]_i_3_n_0 ;
  wire spi_cs;
  wire spi_cs_i_1_n_0;
  wire [7:0]spi_in;
  wire [0:0]spi_in_0;
  wire spi_miso;
  wire spi_mosi;
  wire spi_mosi_i_1_n_0;
  wire spi_mosi_i_2_n_0;
  wire spi_mosi_i_3_n_0;
  wire spi_mosi_i_4_n_0;
  wire [7:0]spi_out0_in;
  wire \spi_out[0]_i_1_n_0 ;
  wire \spi_out[1]_i_1_n_0 ;
  wire \spi_out[3]_i_1_n_0 ;
  wire \spi_out[7]_i_2_n_0 ;
  wire \spi_out[7]_i_4_n_0 ;
  wire \spi_out[7]_i_6_n_0 ;
  wire \spi_out[7]_i_7_n_0 ;
  wire \spi_out[7]_i_9_n_0 ;
  wire \spi_out_reg_n_0_[0] ;
  wire spi_sck;
  wire spi_sck_i_1_n_0;
  wire [4:0]spi_state;
  wire \spi_state[0]_i_1_n_0 ;
  wire \spi_state[10]_i_1_n_0 ;
  wire \spi_state[10]_i_3_n_0 ;
  wire \spi_state[1]_i_1_n_0 ;
  wire \spi_state[2]_i_1_n_0 ;
  wire \spi_state[3]_i_1_n_0 ;
  wire \spi_state[4]_i_1_n_0 ;
  wire \spi_state[4]_i_2_n_0 ;
  wire \spi_state[4]_i_3_n_0 ;
  wire \spi_state[4]_i_4_n_0 ;
  wire \spi_state[4]_i_5_n_0 ;
  wire \spi_state[4]_i_6_n_0 ;
  wire \spi_state[4]_i_7_n_0 ;
  wire \spi_state[4]_i_8_n_0 ;
  wire \spi_state[5]_i_1_n_0 ;
  wire \spi_state[5]_i_2_n_0 ;
  wire \spi_state[5]_i_3_n_0 ;
  wire \spi_state[6]_i_1_n_0 ;
  wire \spi_state[6]_i_2_n_0 ;
  wire \spi_state[7]_i_1_n_0 ;
  wire \spi_state[7]_i_2_n_0 ;
  wire \spi_state[8]_i_1_n_0 ;
  wire \spi_state[8]_i_2_n_0 ;
  wire \spi_state[8]_i_3_n_0 ;
  wire \spi_state[8]_i_4_n_0 ;
  wire \spi_state[8]_i_5_n_0 ;
  wire \spi_state[8]_i_6_n_0 ;
  wire \spi_state[8]_i_7_n_0 ;
  wire \spi_state[9]_i_1_n_0 ;
  wire \spi_state[9]_i_2_n_0 ;
  wire \spi_state_reg_n_0_[10] ;
  wire \spi_state_reg_n_0_[6] ;
  wire \spi_state_reg_n_0_[7] ;
  wire \spi_state_reg_n_0_[8] ;
  wire \spi_state_reg_n_0_[9] ;
  wire spi_transfer118_out__0;
  wire spi_transfer120_out__0;
  wire spi_transfer_i_1_n_0;
  wire spi_transfer_i_2_n_0;
  wire spi_transfer_i_3_n_0;
  wire spi_transfer_i_4_n_0;
  wire spi_transfer_i_5_n_0;
  wire spi_transfer_reg_n_0;

  LUT6 #(
    .INIT(64'hFFCCFFDF00DD00DD)) 
    \FSM_onehot_axi_state[1]_i_1 
       (.I0(axi_state__0[2]),
        .I1(axi_state__0[3]),
        .I2(buf_valid),
        .I3(reset),
        .I4(s_axi_arvalid),
        .I5(axi_state__0[1]),
        .O(\FSM_onehot_axi_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFAAEEAA02AA02)) 
    \FSM_onehot_axi_state[2]_i_1 
       (.I0(axi_state__0[2]),
        .I1(axi_state__0[3]),
        .I2(buf_valid),
        .I3(reset),
        .I4(s_axi_arvalid),
        .I5(axi_state__0[1]),
        .O(\FSM_onehot_axi_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCAACCA8CCA8CCA8)) 
    \FSM_onehot_axi_state[3]_i_1 
       (.I0(axi_state__0[2]),
        .I1(axi_state__0[3]),
        .I2(buf_valid),
        .I3(reset),
        .I4(s_axi_arvalid),
        .I5(axi_state__0[1]),
        .O(\FSM_onehot_axi_state[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "AXI_STATE_IDLE:0010,AXI_STATE_R0:0100,AXI_STATE_RD:1000,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_axi_state_reg[1] 
       (.C(s_axi_clk),
        .CE(1'b1),
        .D(\FSM_onehot_axi_state[1]_i_1_n_0 ),
        .Q(axi_state__0[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "AXI_STATE_IDLE:0010,AXI_STATE_R0:0100,AXI_STATE_RD:1000,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_axi_state_reg[2] 
       (.C(s_axi_clk),
        .CE(1'b1),
        .D(\FSM_onehot_axi_state[2]_i_1_n_0 ),
        .Q(axi_state__0[2]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "AXI_STATE_IDLE:0010,AXI_STATE_R0:0100,AXI_STATE_RD:1000,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_axi_state_reg[3] 
       (.C(s_axi_clk),
        .CE(1'b1),
        .D(\FSM_onehot_axi_state[3]_i_1_n_0 ),
        .Q(axi_state__0[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFDDD3000)) 
    axi_ar_ready_i_1
       (.I0(axi_state__0[2]),
        .I1(reset),
        .I2(s_axi_arvalid),
        .I3(axi_state__0[1]),
        .I4(s_axi_arready),
        .O(axi_ar_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_ar_ready_reg
       (.C(s_axi_clk),
        .CE(1'b1),
        .D(axi_ar_ready_i_1_n_0),
        .Q(s_axi_arready),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hC0C0EAFFC0C04040)) 
    axi_r_valid_i_1
       (.I0(reset),
        .I1(axi_state__0[2]),
        .I2(buf_valid),
        .I3(axi_state__0[3]),
        .I4(\spi_addr[23]_i_1_n_0 ),
        .I5(s_axi_rvalid),
        .O(axi_r_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_r_valid_reg
       (.C(s_axi_clk),
        .CE(1'b1),
        .D(axi_r_valid_i_1_n_0),
        .Q(s_axi_rvalid),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \buf_dout[15]_i_1 
       (.I0(\spi_state_reg_n_0_[10] ),
        .I1(\spi_state_reg_n_0_[9] ),
        .I2(\spi_state_reg_n_0_[7] ),
        .I3(\spi_state_reg_n_0_[8] ),
        .I4(\buf_dout[31]_i_2_n_0 ),
        .I5(\buf_dout[31]_i_3_n_0 ),
        .O(buf_dout025_out));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \buf_dout[23]_i_1 
       (.I0(\spi_state_reg_n_0_[10] ),
        .I1(\spi_state_reg_n_0_[9] ),
        .I2(\spi_state_reg_n_0_[8] ),
        .I3(\spi_state_reg_n_0_[7] ),
        .I4(\buf_dout[31]_i_2_n_0 ),
        .I5(\buf_dout[31]_i_3_n_0 ),
        .O(buf_dout027_out));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \buf_dout[31]_i_1 
       (.I0(\spi_state_reg_n_0_[7] ),
        .I1(\spi_state_reg_n_0_[8] ),
        .I2(\spi_state_reg_n_0_[9] ),
        .I3(\spi_state_reg_n_0_[10] ),
        .I4(\buf_dout[31]_i_2_n_0 ),
        .I5(\buf_dout[31]_i_3_n_0 ),
        .O(buf_dout029_out));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \buf_dout[31]_i_2 
       (.I0(p_0_in0),
        .I1(\spi_state_reg_n_0_[6] ),
        .I2(spi_transfer_reg_n_0),
        .I3(spi_state[0]),
        .O(\buf_dout[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \buf_dout[31]_i_3 
       (.I0(spi_state[2]),
        .I1(spi_state[1]),
        .I2(spi_state[4]),
        .I3(spi_state[3]),
        .O(\buf_dout[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \buf_dout[7]_i_1 
       (.I0(\buf_dout[31]_i_3_n_0 ),
        .I1(p_0_in0),
        .I2(spi_state[0]),
        .I3(spi_transfer_reg_n_0),
        .I4(\spi_state_reg_n_0_[6] ),
        .I5(\buf_dout[7]_i_2_n_0 ),
        .O(\buf_dout[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \buf_dout[7]_i_2 
       (.I0(\spi_state_reg_n_0_[8] ),
        .I1(\spi_state_reg_n_0_[7] ),
        .I2(\spi_state_reg_n_0_[9] ),
        .I3(\spi_state_reg_n_0_[10] ),
        .O(\buf_dout[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \buf_dout_reg[0] 
       (.C(s_axi_clk),
        .CE(\buf_dout[7]_i_1_n_0 ),
        .D(spi_in[0]),
        .Q(s_axi_rdata[0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \buf_dout_reg[10] 
       (.C(s_axi_clk),
        .CE(buf_dout025_out),
        .D(spi_in[2]),
        .Q(s_axi_rdata[10]),
        .R(reset));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \buf_dout_reg[11] 
       (.C(s_axi_clk),
        .CE(buf_dout025_out),
        .D(spi_in[3]),
        .Q(s_axi_rdata[11]),
        .R(reset));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \buf_dout_reg[12] 
       (.C(s_axi_clk),
        .CE(buf_dout025_out),
        .D(spi_in[4]),
        .Q(s_axi_rdata[12]),
        .R(reset));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \buf_dout_reg[13] 
       (.C(s_axi_clk),
        .CE(buf_dout025_out),
        .D(spi_in[5]),
        .Q(s_axi_rdata[13]),
        .R(reset));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \buf_dout_reg[14] 
       (.C(s_axi_clk),
        .CE(buf_dout025_out),
        .D(spi_in[6]),
        .Q(s_axi_rdata[14]),
        .R(reset));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \buf_dout_reg[15] 
       (.C(s_axi_clk),
        .CE(buf_dout025_out),
        .D(spi_in[7]),
        .Q(s_axi_rdata[15]),
        .R(reset));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \buf_dout_reg[16] 
       (.C(s_axi_clk),
        .CE(buf_dout027_out),
        .D(spi_in[0]),
        .Q(s_axi_rdata[16]),
        .R(reset));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \buf_dout_reg[17] 
       (.C(s_axi_clk),
        .CE(buf_dout027_out),
        .D(spi_in[1]),
        .Q(s_axi_rdata[17]),
        .R(reset));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \buf_dout_reg[18] 
       (.C(s_axi_clk),
        .CE(buf_dout027_out),
        .D(spi_in[2]),
        .Q(s_axi_rdata[18]),
        .R(reset));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \buf_dout_reg[19] 
       (.C(s_axi_clk),
        .CE(buf_dout027_out),
        .D(spi_in[3]),
        .Q(s_axi_rdata[19]),
        .R(reset));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \buf_dout_reg[1] 
       (.C(s_axi_clk),
        .CE(\buf_dout[7]_i_1_n_0 ),
        .D(spi_in[1]),
        .Q(s_axi_rdata[1]),
        .R(reset));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \buf_dout_reg[20] 
       (.C(s_axi_clk),
        .CE(buf_dout027_out),
        .D(spi_in[4]),
        .Q(s_axi_rdata[20]),
        .R(reset));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \buf_dout_reg[21] 
       (.C(s_axi_clk),
        .CE(buf_dout027_out),
        .D(spi_in[5]),
        .Q(s_axi_rdata[21]),
        .R(reset));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \buf_dout_reg[22] 
       (.C(s_axi_clk),
        .CE(buf_dout027_out),
        .D(spi_in[6]),
        .Q(s_axi_rdata[22]),
        .R(reset));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \buf_dout_reg[23] 
       (.C(s_axi_clk),
        .CE(buf_dout027_out),
        .D(spi_in[7]),
        .Q(s_axi_rdata[23]),
        .R(reset));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \buf_dout_reg[24] 
       (.C(s_axi_clk),
        .CE(buf_dout029_out),
        .D(spi_in[0]),
        .Q(s_axi_rdata[24]),
        .R(reset));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \buf_dout_reg[25] 
       (.C(s_axi_clk),
        .CE(buf_dout029_out),
        .D(spi_in[1]),
        .Q(s_axi_rdata[25]),
        .R(reset));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \buf_dout_reg[26] 
       (.C(s_axi_clk),
        .CE(buf_dout029_out),
        .D(spi_in[2]),
        .Q(s_axi_rdata[26]),
        .R(reset));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \buf_dout_reg[27] 
       (.C(s_axi_clk),
        .CE(buf_dout029_out),
        .D(spi_in[3]),
        .Q(s_axi_rdata[27]),
        .R(reset));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \buf_dout_reg[28] 
       (.C(s_axi_clk),
        .CE(buf_dout029_out),
        .D(spi_in[4]),
        .Q(s_axi_rdata[28]),
        .R(reset));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \buf_dout_reg[29] 
       (.C(s_axi_clk),
        .CE(buf_dout029_out),
        .D(spi_in[5]),
        .Q(s_axi_rdata[29]),
        .R(reset));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \buf_dout_reg[2] 
       (.C(s_axi_clk),
        .CE(\buf_dout[7]_i_1_n_0 ),
        .D(spi_in[2]),
        .Q(s_axi_rdata[2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \buf_dout_reg[30] 
       (.C(s_axi_clk),
        .CE(buf_dout029_out),
        .D(spi_in[6]),
        .Q(s_axi_rdata[30]),
        .R(reset));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \buf_dout_reg[31] 
       (.C(s_axi_clk),
        .CE(buf_dout029_out),
        .D(spi_in[7]),
        .Q(s_axi_rdata[31]),
        .R(reset));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \buf_dout_reg[3] 
       (.C(s_axi_clk),
        .CE(\buf_dout[7]_i_1_n_0 ),
        .D(spi_in[3]),
        .Q(s_axi_rdata[3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \buf_dout_reg[4] 
       (.C(s_axi_clk),
        .CE(\buf_dout[7]_i_1_n_0 ),
        .D(spi_in[4]),
        .Q(s_axi_rdata[4]),
        .R(reset));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \buf_dout_reg[5] 
       (.C(s_axi_clk),
        .CE(\buf_dout[7]_i_1_n_0 ),
        .D(spi_in[5]),
        .Q(s_axi_rdata[5]),
        .R(reset));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \buf_dout_reg[6] 
       (.C(s_axi_clk),
        .CE(\buf_dout[7]_i_1_n_0 ),
        .D(spi_in[6]),
        .Q(s_axi_rdata[6]),
        .R(reset));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \buf_dout_reg[7] 
       (.C(s_axi_clk),
        .CE(\buf_dout[7]_i_1_n_0 ),
        .D(spi_in[7]),
        .Q(s_axi_rdata[7]),
        .R(reset));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \buf_dout_reg[8] 
       (.C(s_axi_clk),
        .CE(buf_dout025_out),
        .D(spi_in[0]),
        .Q(s_axi_rdata[8]),
        .R(reset));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \buf_dout_reg[9] 
       (.C(s_axi_clk),
        .CE(buf_dout025_out),
        .D(spi_in[1]),
        .Q(s_axi_rdata[9]),
        .R(reset));
  LUT4 #(
    .INIT(16'h00F2)) 
    buf_valid_i_1
       (.I0(buf_valid),
        .I1(\spi_state[4]_i_4_n_0 ),
        .I2(buf_valid1),
        .I3(reset),
        .O(buf_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    buf_valid_reg
       (.C(s_axi_clk),
        .CE(1'b1),
        .D(buf_valid_i_1_n_0),
        .Q(buf_valid),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hF4A0)) 
    sck_en_i_1
       (.I0(reset),
        .I1(spi_transfer_reg_n_0),
        .I2(sck_en),
        .I3(\spi_cnt[5]_i_3_n_0 ),
        .O(sck_en_i_1_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    sck_en_reg
       (.C(s_axi_clk),
        .CE(1'b1),
        .D(sck_en_i_1_n_0),
        .Q(sck_en),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h08)) 
    \spi_addr[23]_i_1 
       (.I0(axi_state__0[1]),
        .I1(s_axi_arvalid),
        .I2(reset),
        .O(\spi_addr[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \spi_addr_reg[0] 
       (.C(s_axi_clk),
        .CE(\spi_addr[23]_i_1_n_0 ),
        .D(s_axi_araddr[0]),
        .Q(\spi_addr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \spi_addr_reg[10] 
       (.C(s_axi_clk),
        .CE(\spi_addr[23]_i_1_n_0 ),
        .D(s_axi_araddr[10]),
        .Q(\spi_addr_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \spi_addr_reg[11] 
       (.C(s_axi_clk),
        .CE(\spi_addr[23]_i_1_n_0 ),
        .D(s_axi_araddr[11]),
        .Q(\spi_addr_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \spi_addr_reg[12] 
       (.C(s_axi_clk),
        .CE(\spi_addr[23]_i_1_n_0 ),
        .D(s_axi_araddr[12]),
        .Q(\spi_addr_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \spi_addr_reg[13] 
       (.C(s_axi_clk),
        .CE(\spi_addr[23]_i_1_n_0 ),
        .D(s_axi_araddr[13]),
        .Q(\spi_addr_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \spi_addr_reg[14] 
       (.C(s_axi_clk),
        .CE(\spi_addr[23]_i_1_n_0 ),
        .D(s_axi_araddr[14]),
        .Q(\spi_addr_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \spi_addr_reg[15] 
       (.C(s_axi_clk),
        .CE(\spi_addr[23]_i_1_n_0 ),
        .D(s_axi_araddr[15]),
        .Q(\spi_addr_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \spi_addr_reg[16] 
       (.C(s_axi_clk),
        .CE(\spi_addr[23]_i_1_n_0 ),
        .D(s_axi_araddr[16]),
        .Q(\spi_addr_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \spi_addr_reg[17] 
       (.C(s_axi_clk),
        .CE(\spi_addr[23]_i_1_n_0 ),
        .D(s_axi_araddr[17]),
        .Q(\spi_addr_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \spi_addr_reg[18] 
       (.C(s_axi_clk),
        .CE(\spi_addr[23]_i_1_n_0 ),
        .D(s_axi_araddr[18]),
        .Q(\spi_addr_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \spi_addr_reg[19] 
       (.C(s_axi_clk),
        .CE(\spi_addr[23]_i_1_n_0 ),
        .D(s_axi_araddr[19]),
        .Q(\spi_addr_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \spi_addr_reg[1] 
       (.C(s_axi_clk),
        .CE(\spi_addr[23]_i_1_n_0 ),
        .D(s_axi_araddr[1]),
        .Q(\spi_addr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \spi_addr_reg[20] 
       (.C(s_axi_clk),
        .CE(\spi_addr[23]_i_1_n_0 ),
        .D(s_axi_araddr[20]),
        .Q(\spi_addr_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \spi_addr_reg[21] 
       (.C(s_axi_clk),
        .CE(\spi_addr[23]_i_1_n_0 ),
        .D(s_axi_araddr[21]),
        .Q(\spi_addr_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \spi_addr_reg[22] 
       (.C(s_axi_clk),
        .CE(\spi_addr[23]_i_1_n_0 ),
        .D(s_axi_araddr[22]),
        .Q(\spi_addr_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \spi_addr_reg[23] 
       (.C(s_axi_clk),
        .CE(\spi_addr[23]_i_1_n_0 ),
        .D(s_axi_araddr[23]),
        .Q(\spi_addr_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \spi_addr_reg[2] 
       (.C(s_axi_clk),
        .CE(\spi_addr[23]_i_1_n_0 ),
        .D(s_axi_araddr[2]),
        .Q(\spi_addr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \spi_addr_reg[3] 
       (.C(s_axi_clk),
        .CE(\spi_addr[23]_i_1_n_0 ),
        .D(s_axi_araddr[3]),
        .Q(\spi_addr_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \spi_addr_reg[4] 
       (.C(s_axi_clk),
        .CE(\spi_addr[23]_i_1_n_0 ),
        .D(s_axi_araddr[4]),
        .Q(\spi_addr_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \spi_addr_reg[5] 
       (.C(s_axi_clk),
        .CE(\spi_addr[23]_i_1_n_0 ),
        .D(s_axi_araddr[5]),
        .Q(\spi_addr_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \spi_addr_reg[6] 
       (.C(s_axi_clk),
        .CE(\spi_addr[23]_i_1_n_0 ),
        .D(s_axi_araddr[6]),
        .Q(\spi_addr_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \spi_addr_reg[7] 
       (.C(s_axi_clk),
        .CE(\spi_addr[23]_i_1_n_0 ),
        .D(s_axi_araddr[7]),
        .Q(\spi_addr_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \spi_addr_reg[8] 
       (.C(s_axi_clk),
        .CE(\spi_addr[23]_i_1_n_0 ),
        .D(s_axi_araddr[8]),
        .Q(\spi_addr_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \spi_addr_reg[9] 
       (.C(s_axi_clk),
        .CE(\spi_addr[23]_i_1_n_0 ),
        .D(s_axi_araddr[9]),
        .Q(\spi_addr_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT1 #(
    .INIT(2'h1)) 
    spi_ce_n_INST_0
       (.I0(spi_cs),
        .O(spi_ce_n));
  LUT6 #(
    .INIT(64'h00000000CCCCCEEE)) 
    spi_cmd_start_i_1
       (.I0(spi_cmd_start_reg_n_0),
        .I1(axi_ar_ready),
        .I2(axi_state__0[2]),
        .I3(buf_valid),
        .I4(axi_state__0[3]),
        .I5(reset),
        .O(spi_cmd_start_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    spi_cmd_start_i_2
       (.I0(s_axi_arvalid),
        .I1(axi_state__0[1]),
        .O(axi_ar_ready));
  FDRE #(
    .INIT(1'b0)) 
    spi_cmd_start_reg
       (.C(s_axi_clk),
        .CE(1'b1),
        .D(spi_cmd_start_i_1_n_0),
        .Q(spi_cmd_start_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFE)) 
    \spi_cnt[0]_i_1 
       (.I0(p_0_in),
        .I1(spi_cnt[2]),
        .I2(spi_cnt[4]),
        .I3(spi_cnt[3]),
        .I4(spi_cnt[5]),
        .I5(spi_cnt[0]),
        .O(\spi_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9999999999999998)) 
    \spi_cnt[1]_i_1 
       (.I0(spi_cnt[0]),
        .I1(p_0_in),
        .I2(spi_cnt[5]),
        .I3(spi_cnt[3]),
        .I4(spi_cnt[4]),
        .I5(spi_cnt[2]),
        .O(\spi_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE1E1E1E1E1E1E1E0)) 
    \spi_cnt[2]_i_1 
       (.I0(p_0_in),
        .I1(spi_cnt[0]),
        .I2(spi_cnt[2]),
        .I3(spi_cnt[5]),
        .I4(spi_cnt[3]),
        .I5(spi_cnt[4]),
        .O(\spi_cnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFE01FE01FE01FE00)) 
    \spi_cnt[3]_i_1 
       (.I0(spi_cnt[2]),
        .I1(spi_cnt[0]),
        .I2(p_0_in),
        .I3(spi_cnt[3]),
        .I4(spi_cnt[5]),
        .I5(spi_cnt[4]),
        .O(\spi_cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA9AAAAAAA8)) 
    \spi_cnt[4]_i_1 
       (.I0(spi_cnt[4]),
        .I1(spi_cnt[3]),
        .I2(spi_cnt[2]),
        .I3(spi_cnt[0]),
        .I4(p_0_in),
        .I5(spi_cnt[5]),
        .O(\spi_cnt[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \spi_cnt[5]_i_1 
       (.I0(spi_transfer_reg_n_0),
        .I1(\spi_cnt[5]_i_3_n_0 ),
        .O(\spi_cnt[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \spi_cnt[5]_i_2 
       (.I0(spi_cnt[5]),
        .I1(spi_cnt[4]),
        .I2(spi_cnt[3]),
        .I3(spi_cnt[2]),
        .I4(spi_cnt[0]),
        .I5(p_0_in),
        .O(\spi_cnt[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \spi_cnt[5]_i_3 
       (.I0(spi_cnt[5]),
        .I1(spi_cnt[3]),
        .I2(spi_cnt[4]),
        .I3(spi_cnt[2]),
        .I4(spi_cnt[0]),
        .I5(p_0_in),
        .O(\spi_cnt[5]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_cnt_reg[0] 
       (.C(s_axi_clk),
        .CE(\spi_cnt[5]_i_1_n_0 ),
        .D(\spi_cnt[0]_i_1_n_0 ),
        .Q(spi_cnt[0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_cnt_reg[1] 
       (.C(s_axi_clk),
        .CE(\spi_cnt[5]_i_1_n_0 ),
        .D(\spi_cnt[1]_i_1_n_0 ),
        .Q(p_0_in),
        .R(reset));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_cnt_reg[2] 
       (.C(s_axi_clk),
        .CE(\spi_cnt[5]_i_1_n_0 ),
        .D(\spi_cnt[2]_i_1_n_0 ),
        .Q(spi_cnt[2]),
        .R(reset));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_cnt_reg[3] 
       (.C(s_axi_clk),
        .CE(\spi_cnt[5]_i_1_n_0 ),
        .D(\spi_cnt[3]_i_1_n_0 ),
        .Q(spi_cnt[3]),
        .R(reset));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_cnt_reg[4] 
       (.C(s_axi_clk),
        .CE(\spi_cnt[5]_i_1_n_0 ),
        .D(\spi_cnt[4]_i_1_n_0 ),
        .Q(spi_cnt[4]),
        .R(reset));
  FDSE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_cnt_reg[5] 
       (.C(s_axi_clk),
        .CE(\spi_cnt[5]_i_1_n_0 ),
        .D(\spi_cnt[5]_i_2_n_0 ),
        .Q(spi_cnt[5]),
        .S(reset));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h4440)) 
    spi_cs_i_1
       (.I0(reset),
        .I1(spi_cmd_start_reg_n_0),
        .I2(spi_cs),
        .I3(\spi_out[7]_i_4_n_0 ),
        .O(spi_cs_i_1_n_0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    spi_cs_reg
       (.C(s_axi_clk),
        .CE(1'b1),
        .D(spi_cs_i_1_n_0),
        .Q(spi_cs),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0400)) 
    \spi_in[7]_i_1 
       (.I0(p_0_in),
        .I1(spi_cnt[0]),
        .I2(reset),
        .I3(spi_transfer_reg_n_0),
        .O(spi_in_0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \spi_in_reg[0] 
       (.C(s_axi_clk),
        .CE(spi_in_0),
        .D(spi_miso),
        .Q(spi_in[0]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \spi_in_reg[1] 
       (.C(s_axi_clk),
        .CE(spi_in_0),
        .D(spi_in[0]),
        .Q(spi_in[1]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \spi_in_reg[2] 
       (.C(s_axi_clk),
        .CE(spi_in_0),
        .D(spi_in[1]),
        .Q(spi_in[2]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \spi_in_reg[3] 
       (.C(s_axi_clk),
        .CE(spi_in_0),
        .D(spi_in[2]),
        .Q(spi_in[3]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \spi_in_reg[4] 
       (.C(s_axi_clk),
        .CE(spi_in_0),
        .D(spi_in[3]),
        .Q(spi_in[4]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \spi_in_reg[5] 
       (.C(s_axi_clk),
        .CE(spi_in_0),
        .D(spi_in[4]),
        .Q(spi_in[5]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \spi_in_reg[6] 
       (.C(s_axi_clk),
        .CE(spi_in_0),
        .D(spi_in[5]),
        .Q(spi_in[6]),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \spi_in_reg[7] 
       (.C(s_axi_clk),
        .CE(spi_in_0),
        .D(spi_in[6]),
        .Q(spi_in[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000E00)) 
    spi_mosi_i_1
       (.I0(spi_mosi_i_2_n_0),
        .I1(spi_mosi_i_3_n_0),
        .I2(reset),
        .I3(spi_transfer_reg_n_0),
        .I4(p_0_in),
        .I5(spi_mosi),
        .O(spi_mosi_i_1_n_0));
  LUT6 #(
    .INIT(64'hEFEAAAAAAAAAAAAA)) 
    spi_mosi_i_2
       (.I0(spi_mosi_i_4_n_0),
        .I1(data7),
        .I2(spi_cnt[4]),
        .I3(data3),
        .I4(spi_cnt[2]),
        .I5(spi_cnt[3]),
        .O(spi_mosi_i_2_n_0));
  LUT6 #(
    .INIT(64'h00000A0ACFC00000)) 
    spi_mosi_i_3
       (.I0(\spi_out_reg_n_0_[0] ),
        .I1(data6),
        .I2(spi_cnt[4]),
        .I3(data2),
        .I4(spi_cnt[3]),
        .I5(spi_cnt[2]),
        .O(spi_mosi_i_3_n_0));
  LUT6 #(
    .INIT(64'h0A000A000C0F0C00)) 
    spi_mosi_i_4
       (.I0(data5),
        .I1(data4),
        .I2(spi_cnt[3]),
        .I3(spi_cnt[4]),
        .I4(data0),
        .I5(spi_cnt[2]),
        .O(spi_mosi_i_4_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    spi_mosi_reg
       (.C(s_axi_clk),
        .CE(1'b1),
        .D(spi_mosi_i_1_n_0),
        .Q(spi_mosi),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h0000FE32)) 
    \spi_out[0]_i_1 
       (.I0(\spi_out[7]_i_4_n_0 ),
        .I1(\spi_out[7]_i_2_n_0 ),
        .I2(\spi_out_reg_n_0_[0] ),
        .I3(p_2_in[0]),
        .I4(spi_out0_in[0]),
        .O(\spi_out[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \spi_out[0]_i_2 
       (.I0(\spi_addr_reg_n_0_[16] ),
        .I1(\spi_out[7]_i_6_n_0 ),
        .I2(\spi_out[7]_i_7_n_0 ),
        .I3(\spi_addr_reg_n_0_[8] ),
        .I4(spi_transfer118_out__0),
        .I5(\spi_addr_reg_n_0_[0] ),
        .O(p_2_in[0]));
  LUT5 #(
    .INIT(32'h0000FE32)) 
    \spi_out[1]_i_1 
       (.I0(\spi_out[7]_i_4_n_0 ),
        .I1(\spi_out[7]_i_2_n_0 ),
        .I2(data2),
        .I3(p_2_in[1]),
        .I4(spi_out0_in[0]),
        .O(\spi_out[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \spi_out[1]_i_2 
       (.I0(\spi_addr_reg_n_0_[17] ),
        .I1(\spi_out[7]_i_6_n_0 ),
        .I2(\spi_out[7]_i_7_n_0 ),
        .I3(\spi_addr_reg_n_0_[9] ),
        .I4(spi_transfer118_out__0),
        .I5(\spi_addr_reg_n_0_[1] ),
        .O(p_2_in[1]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \spi_out[2]_i_1 
       (.I0(\spi_addr_reg_n_0_[18] ),
        .I1(\spi_out[7]_i_6_n_0 ),
        .I2(\spi_out[7]_i_7_n_0 ),
        .I3(\spi_addr_reg_n_0_[10] ),
        .I4(spi_transfer118_out__0),
        .I5(\spi_addr_reg_n_0_[2] ),
        .O(p_2_in[2]));
  LUT5 #(
    .INIT(32'h0000FE32)) 
    \spi_out[3]_i_1 
       (.I0(\spi_out[7]_i_4_n_0 ),
        .I1(\spi_out[7]_i_2_n_0 ),
        .I2(data4),
        .I3(p_2_in[3]),
        .I4(spi_out0_in[0]),
        .O(\spi_out[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \spi_out[3]_i_2 
       (.I0(\spi_addr_reg_n_0_[19] ),
        .I1(\spi_out[7]_i_6_n_0 ),
        .I2(\spi_out[7]_i_7_n_0 ),
        .I3(\spi_addr_reg_n_0_[11] ),
        .I4(spi_transfer118_out__0),
        .I5(\spi_addr_reg_n_0_[3] ),
        .O(p_2_in[3]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \spi_out[4]_i_1 
       (.I0(\spi_addr_reg_n_0_[20] ),
        .I1(\spi_out[7]_i_6_n_0 ),
        .I2(\spi_out[7]_i_7_n_0 ),
        .I3(\spi_addr_reg_n_0_[12] ),
        .I4(spi_transfer118_out__0),
        .I5(\spi_addr_reg_n_0_[4] ),
        .O(p_2_in[4]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \spi_out[5]_i_1 
       (.I0(\spi_addr_reg_n_0_[21] ),
        .I1(\spi_out[7]_i_6_n_0 ),
        .I2(\spi_out[7]_i_7_n_0 ),
        .I3(\spi_addr_reg_n_0_[13] ),
        .I4(spi_transfer118_out__0),
        .I5(\spi_addr_reg_n_0_[5] ),
        .O(p_2_in[5]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \spi_out[6]_i_1 
       (.I0(\spi_addr_reg_n_0_[22] ),
        .I1(\spi_out[7]_i_6_n_0 ),
        .I2(\spi_out[7]_i_7_n_0 ),
        .I3(\spi_addr_reg_n_0_[14] ),
        .I4(spi_transfer118_out__0),
        .I5(\spi_addr_reg_n_0_[6] ),
        .O(p_2_in[6]));
  LUT3 #(
    .INIT(8'hF2)) 
    \spi_out[7]_i_1 
       (.I0(\spi_out[7]_i_4_n_0 ),
        .I1(\spi_out[7]_i_2_n_0 ),
        .I2(spi_out0_in[0]),
        .O(spi_out0_in[7]));
  LUT6 #(
    .INIT(64'h0000000100000110)) 
    \spi_out[7]_i_2 
       (.I0(\buf_dout[31]_i_2_n_0 ),
        .I1(\buf_dout[7]_i_2_n_0 ),
        .I2(spi_state[2]),
        .I3(spi_state[1]),
        .I4(spi_state[4]),
        .I5(spi_state[3]),
        .O(\spi_out[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \spi_out[7]_i_3 
       (.I0(\spi_addr_reg_n_0_[23] ),
        .I1(\spi_out[7]_i_6_n_0 ),
        .I2(\spi_out[7]_i_7_n_0 ),
        .I3(\spi_addr_reg_n_0_[15] ),
        .I4(spi_transfer118_out__0),
        .I5(\spi_addr_reg_n_0_[7] ),
        .O(p_2_in[7]));
  LUT5 #(
    .INIT(32'h00004000)) 
    \spi_out[7]_i_4 
       (.I0(\spi_out[7]_i_9_n_0 ),
        .I1(spi_cmd_start_reg_n_0),
        .I2(spi_state[0]),
        .I3(\buf_dout[31]_i_3_n_0 ),
        .I4(\buf_dout[7]_i_2_n_0 ),
        .O(\spi_out[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAEAA)) 
    \spi_out[7]_i_5 
       (.I0(reset),
        .I1(\spi_state[4]_i_7_n_0 ),
        .I2(spi_state[3]),
        .I3(spi_state[4]),
        .I4(spi_state[2]),
        .I5(spi_state[1]),
        .O(spi_out0_in[0]));
  LUT6 #(
    .INIT(64'h0000000000010100)) 
    \spi_out[7]_i_6 
       (.I0(\buf_dout[31]_i_2_n_0 ),
        .I1(\buf_dout[7]_i_2_n_0 ),
        .I2(spi_state[4]),
        .I3(spi_state[3]),
        .I4(spi_state[2]),
        .I5(spi_state[1]),
        .O(\spi_out[7]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000200)) 
    \spi_out[7]_i_7 
       (.I0(\spi_state[4]_i_7_n_0 ),
        .I1(spi_state[4]),
        .I2(spi_state[3]),
        .I3(spi_state[2]),
        .I4(spi_state[1]),
        .O(\spi_out[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \spi_out[7]_i_8 
       (.I0(spi_state[1]),
        .I1(spi_state[2]),
        .I2(spi_state[3]),
        .I3(spi_state[4]),
        .I4(\buf_dout[7]_i_2_n_0 ),
        .I5(\buf_dout[31]_i_2_n_0 ),
        .O(spi_transfer118_out__0));
  LUT3 #(
    .INIT(8'hFE)) 
    \spi_out[7]_i_9 
       (.I0(spi_transfer_reg_n_0),
        .I1(\spi_state_reg_n_0_[6] ),
        .I2(p_0_in0),
        .O(\spi_out[7]_i_9_n_0 ));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \spi_out_reg[0] 
       (.C(s_axi_clk),
        .CE(1'b1),
        .D(\spi_out[0]_i_1_n_0 ),
        .Q(\spi_out_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \spi_out_reg[1] 
       (.C(s_axi_clk),
        .CE(1'b1),
        .D(\spi_out[1]_i_1_n_0 ),
        .Q(data2),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \spi_out_reg[2] 
       (.C(s_axi_clk),
        .CE(\spi_out[7]_i_2_n_0 ),
        .D(p_2_in[2]),
        .Q(data3),
        .R(spi_out0_in[7]));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \spi_out_reg[3] 
       (.C(s_axi_clk),
        .CE(1'b1),
        .D(\spi_out[3]_i_1_n_0 ),
        .Q(data4),
        .R(1'b0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \spi_out_reg[4] 
       (.C(s_axi_clk),
        .CE(\spi_out[7]_i_2_n_0 ),
        .D(p_2_in[4]),
        .Q(data5),
        .R(spi_out0_in[7]));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \spi_out_reg[5] 
       (.C(s_axi_clk),
        .CE(\spi_out[7]_i_2_n_0 ),
        .D(p_2_in[5]),
        .Q(data6),
        .R(spi_out0_in[7]));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \spi_out_reg[6] 
       (.C(s_axi_clk),
        .CE(\spi_out[7]_i_2_n_0 ),
        .D(p_2_in[6]),
        .Q(data7),
        .R(spi_out0_in[7]));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    \spi_out_reg[7] 
       (.C(s_axi_clk),
        .CE(\spi_out[7]_i_2_n_0 ),
        .D(p_2_in[7]),
        .Q(data0),
        .R(spi_out0_in[7]));
  LUT4 #(
    .INIT(16'hFB08)) 
    spi_sck_i_1
       (.I0(p_0_in),
        .I1(sck_en),
        .I2(reset),
        .I3(spi_sck),
        .O(spi_sck_i_1_n_0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    spi_sck_reg
       (.C(s_axi_clk),
        .CE(1'b1),
        .D(spi_sck_i_1_n_0),
        .Q(spi_sck),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h220222FF)) 
    \spi_state[0]_i_1 
       (.I0(spi_state[0]),
        .I1(\spi_state[8]_i_2_n_0 ),
        .I2(\spi_state[4]_i_5_n_0 ),
        .I3(reset),
        .I4(spi_cmd_start_reg_n_0),
        .O(\spi_state[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF400)) 
    \spi_state[10]_i_1 
       (.I0(buf_valid1),
        .I1(spi_cmd_start_reg_n_0),
        .I2(reset),
        .I3(\spi_state[10]_i_3_n_0 ),
        .O(\spi_state[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \spi_state[10]_i_2 
       (.I0(\spi_state_reg_n_0_[7] ),
        .I1(\spi_state_reg_n_0_[8] ),
        .I2(\spi_state_reg_n_0_[10] ),
        .I3(\spi_state_reg_n_0_[9] ),
        .I4(\buf_dout[31]_i_2_n_0 ),
        .I5(\buf_dout[31]_i_3_n_0 ),
        .O(buf_valid1));
  LUT6 #(
    .INIT(64'h0C0CFFFD0C0C000C)) 
    \spi_state[10]_i_3 
       (.I0(buf_dout027_out),
        .I1(buf_dout029_out),
        .I2(buf_valid1),
        .I3(reset),
        .I4(\spi_state[8]_i_2_n_0 ),
        .I5(\spi_state_reg_n_0_[10] ),
        .O(\spi_state[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAA8A882AAAAAAAA)) 
    \spi_state[1]_i_1 
       (.I0(\spi_state[4]_i_8_n_0 ),
        .I1(spi_state[3]),
        .I2(spi_state[4]),
        .I3(spi_state[1]),
        .I4(spi_state[2]),
        .I5(\spi_state[4]_i_7_n_0 ),
        .O(\spi_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \spi_state[2]_i_1 
       (.I0(\spi_state[4]_i_7_n_0 ),
        .I1(spi_state[2]),
        .I2(spi_state[1]),
        .I3(spi_state[4]),
        .I4(spi_state[3]),
        .I5(\spi_state[4]_i_8_n_0 ),
        .O(\spi_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \spi_state[3]_i_1 
       (.I0(\spi_state[4]_i_7_n_0 ),
        .I1(spi_state[1]),
        .I2(spi_state[2]),
        .I3(spi_state[4]),
        .I4(spi_state[3]),
        .I5(\spi_state[4]_i_8_n_0 ),
        .O(\spi_state[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFEFFFF)) 
    \spi_state[4]_i_1 
       (.I0(\buf_dout[7]_i_1_n_0 ),
        .I1(buf_dout025_out),
        .I2(\spi_state[4]_i_4_n_0 ),
        .I3(\spi_state[4]_i_5_n_0 ),
        .I4(spi_cmd_start_reg_n_0),
        .I5(reset),
        .O(\spi_state[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAFE)) 
    \spi_state[4]_i_2 
       (.I0(\spi_state[4]_i_6_n_0 ),
        .I1(buf_dout025_out),
        .I2(\buf_dout[7]_i_1_n_0 ),
        .I3(\spi_state[4]_i_5_n_0 ),
        .I4(reset),
        .O(\spi_state[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \spi_state[4]_i_3 
       (.I0(\spi_state[4]_i_7_n_0 ),
        .I1(spi_state[4]),
        .I2(spi_state[3]),
        .I3(spi_state[2]),
        .I4(spi_state[1]),
        .I5(\spi_state[4]_i_8_n_0 ),
        .O(\spi_state[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \spi_state[4]_i_4 
       (.I0(\buf_dout[31]_i_3_n_0 ),
        .I1(spi_state[0]),
        .I2(p_0_in0),
        .I3(spi_transfer_reg_n_0),
        .I4(\spi_state_reg_n_0_[6] ),
        .I5(\buf_dout[7]_i_2_n_0 ),
        .O(\spi_state[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000020220)) 
    \spi_state[4]_i_5 
       (.I0(\buf_dout[31]_i_3_n_0 ),
        .I1(\buf_dout[31]_i_2_n_0 ),
        .I2(\spi_state_reg_n_0_[9] ),
        .I3(\spi_state_reg_n_0_[10] ),
        .I4(\spi_state_reg_n_0_[8] ),
        .I5(\spi_state_reg_n_0_[7] ),
        .O(\spi_state[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h1111111111111000)) 
    \spi_state[4]_i_6 
       (.I0(reset),
        .I1(\spi_state[4]_i_5_n_0 ),
        .I2(spi_cs),
        .I3(\spi_out[7]_i_4_n_0 ),
        .I4(spi_transfer120_out__0),
        .I5(\spi_out[7]_i_2_n_0 ),
        .O(\spi_state[4]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \spi_state[4]_i_7 
       (.I0(spi_state[0]),
        .I1(spi_transfer_reg_n_0),
        .I2(\spi_state_reg_n_0_[6] ),
        .I3(p_0_in0),
        .I4(\buf_dout[7]_i_2_n_0 ),
        .O(\spi_state[4]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \spi_state[4]_i_8 
       (.I0(\buf_dout[7]_i_1_n_0 ),
        .I1(buf_dout025_out),
        .I2(\spi_state[4]_i_5_n_0 ),
        .O(\spi_state[4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \spi_state[4]_i_9 
       (.I0(spi_state[1]),
        .I1(spi_state[2]),
        .I2(spi_state[4]),
        .I3(spi_state[3]),
        .I4(\buf_dout[7]_i_2_n_0 ),
        .I5(\buf_dout[31]_i_2_n_0 ),
        .O(spi_transfer120_out__0));
  LUT6 #(
    .INIT(64'hEE22FE02EE220000)) 
    \spi_state[5]_i_1 
       (.I0(p_0_in0),
        .I1(\spi_state[8]_i_2_n_0 ),
        .I2(\spi_state[4]_i_5_n_0 ),
        .I3(\spi_state[5]_i_2_n_0 ),
        .I4(reset),
        .I5(spi_cmd_start_reg_n_0),
        .O(\spi_state[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88888888888888B8)) 
    \spi_state[5]_i_2 
       (.I0(buf_valid1),
        .I1(\spi_state[4]_i_5_n_0 ),
        .I2(\spi_state[5]_i_3_n_0 ),
        .I3(\spi_state[4]_i_4_n_0 ),
        .I4(buf_dout025_out),
        .I5(\buf_dout[7]_i_1_n_0 ),
        .O(\spi_state[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \spi_state[5]_i_3 
       (.I0(spi_state[1]),
        .I1(spi_state[2]),
        .I2(spi_state[4]),
        .I3(spi_state[3]),
        .I4(\spi_state[4]_i_7_n_0 ),
        .O(\spi_state[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF000400000000)) 
    \spi_state[6]_i_1 
       (.I0(\spi_state[4]_i_5_n_0 ),
        .I1(spi_cmd_start_reg_n_0),
        .I2(\buf_dout[7]_i_1_n_0 ),
        .I3(buf_dout025_out),
        .I4(reset),
        .I5(\spi_state[6]_i_2_n_0 ),
        .O(\spi_state[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \spi_state[6]_i_2 
       (.I0(\spi_state[4]_i_8_n_0 ),
        .I1(\spi_state[4]_i_4_n_0 ),
        .I2(\spi_state[8]_i_2_n_0 ),
        .I3(\spi_state_reg_n_0_[6] ),
        .O(\spi_state[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF040000)) 
    \spi_state[7]_i_1 
       (.I0(\spi_state[4]_i_5_n_0 ),
        .I1(spi_cmd_start_reg_n_0),
        .I2(buf_dout025_out),
        .I3(reset),
        .I4(\spi_state[7]_i_2_n_0 ),
        .O(\spi_state[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h04FF0400)) 
    \spi_state[7]_i_2 
       (.I0(buf_dout025_out),
        .I1(\buf_dout[7]_i_1_n_0 ),
        .I2(\spi_state[4]_i_5_n_0 ),
        .I3(\spi_state[8]_i_2_n_0 ),
        .I4(\spi_state_reg_n_0_[7] ),
        .O(\spi_state[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00C0EEE000C000E0)) 
    \spi_state[8]_i_1 
       (.I0(spi_cmd_start_reg_n_0),
        .I1(reset),
        .I2(\spi_state_reg_n_0_[8] ),
        .I3(\spi_state[8]_i_2_n_0 ),
        .I4(\spi_state[4]_i_5_n_0 ),
        .I5(buf_dout025_out),
        .O(\spi_state[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000FFFE)) 
    \spi_state[8]_i_2 
       (.I0(\spi_state[8]_i_3_n_0 ),
        .I1(\spi_out[7]_i_2_n_0 ),
        .I2(spi_transfer120_out__0),
        .I3(\spi_state[8]_i_4_n_0 ),
        .I4(\spi_state[4]_i_5_n_0 ),
        .I5(reset),
        .O(\spi_state[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0CFF0CAE00000000)) 
    \spi_state[8]_i_3 
       (.I0(\spi_state[8]_i_5_n_0 ),
        .I1(\spi_state[8]_i_6_n_0 ),
        .I2(\buf_dout[31]_i_2_n_0 ),
        .I3(\buf_dout[7]_i_2_n_0 ),
        .I4(\spi_state[8]_i_7_n_0 ),
        .I5(\buf_dout[31]_i_3_n_0 ),
        .O(\spi_state[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \spi_state[8]_i_4 
       (.I0(spi_cs),
        .I1(\buf_dout[7]_i_2_n_0 ),
        .I2(\buf_dout[31]_i_3_n_0 ),
        .I3(spi_state[0]),
        .I4(spi_cmd_start_reg_n_0),
        .I5(\spi_out[7]_i_9_n_0 ),
        .O(\spi_state[8]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \spi_state[8]_i_5 
       (.I0(p_0_in0),
        .I1(spi_state[0]),
        .I2(spi_transfer_reg_n_0),
        .I3(\spi_state_reg_n_0_[6] ),
        .O(\spi_state[8]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \spi_state[8]_i_6 
       (.I0(\spi_state_reg_n_0_[8] ),
        .I1(\spi_state_reg_n_0_[7] ),
        .I2(\spi_state_reg_n_0_[9] ),
        .I3(\spi_state_reg_n_0_[10] ),
        .O(\spi_state[8]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \spi_state[8]_i_7 
       (.I0(spi_state[0]),
        .I1(p_0_in0),
        .I2(spi_transfer_reg_n_0),
        .I3(\spi_state_reg_n_0_[6] ),
        .O(\spi_state[8]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFF040000)) 
    \spi_state[9]_i_1 
       (.I0(buf_valid1),
        .I1(spi_cmd_start_reg_n_0),
        .I2(buf_dout029_out),
        .I3(reset),
        .I4(\spi_state[9]_i_2_n_0 ),
        .O(\spi_state[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0202FFFF02020002)) 
    \spi_state[9]_i_2 
       (.I0(buf_dout027_out),
        .I1(buf_dout029_out),
        .I2(buf_valid1),
        .I3(reset),
        .I4(\spi_state[8]_i_2_n_0 ),
        .I5(\spi_state_reg_n_0_[9] ),
        .O(\spi_state[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_state_reg[0] 
       (.C(s_axi_clk),
        .CE(1'b1),
        .D(\spi_state[0]_i_1_n_0 ),
        .Q(spi_state[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_state_reg[10] 
       (.C(s_axi_clk),
        .CE(1'b1),
        .D(\spi_state[10]_i_1_n_0 ),
        .Q(\spi_state_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_state_reg[1] 
       (.C(s_axi_clk),
        .CE(\spi_state[4]_i_2_n_0 ),
        .D(\spi_state[1]_i_1_n_0 ),
        .Q(spi_state[1]),
        .R(\spi_state[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_state_reg[2] 
       (.C(s_axi_clk),
        .CE(\spi_state[4]_i_2_n_0 ),
        .D(\spi_state[2]_i_1_n_0 ),
        .Q(spi_state[2]),
        .R(\spi_state[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_state_reg[3] 
       (.C(s_axi_clk),
        .CE(\spi_state[4]_i_2_n_0 ),
        .D(\spi_state[3]_i_1_n_0 ),
        .Q(spi_state[3]),
        .R(\spi_state[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_state_reg[4] 
       (.C(s_axi_clk),
        .CE(\spi_state[4]_i_2_n_0 ),
        .D(\spi_state[4]_i_3_n_0 ),
        .Q(spi_state[4]),
        .R(\spi_state[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_state_reg[5] 
       (.C(s_axi_clk),
        .CE(1'b1),
        .D(\spi_state[5]_i_1_n_0 ),
        .Q(p_0_in0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_state_reg[6] 
       (.C(s_axi_clk),
        .CE(1'b1),
        .D(\spi_state[6]_i_1_n_0 ),
        .Q(\spi_state_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_state_reg[7] 
       (.C(s_axi_clk),
        .CE(1'b1),
        .D(\spi_state[7]_i_1_n_0 ),
        .Q(\spi_state_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_state_reg[8] 
       (.C(s_axi_clk),
        .CE(1'b1),
        .D(\spi_state[8]_i_1_n_0 ),
        .Q(\spi_state_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \spi_state_reg[9] 
       (.C(s_axi_clk),
        .CE(1'b1),
        .D(\spi_state[9]_i_1_n_0 ),
        .Q(\spi_state_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h40)) 
    spi_transfer_i_1
       (.I0(reset),
        .I1(spi_transfer_i_2_n_0),
        .I2(\spi_cnt[5]_i_3_n_0 ),
        .O(spi_transfer_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    spi_transfer_i_2
       (.I0(spi_cs),
        .I1(\spi_out[7]_i_4_n_0 ),
        .I2(spi_transfer_i_3_n_0),
        .I3(\spi_state[4]_i_4_n_0 ),
        .I4(spi_transfer_i_4_n_0),
        .I5(spi_transfer_reg_n_0),
        .O(spi_transfer_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000002)) 
    spi_transfer_i_3
       (.I0(spi_transfer_i_5_n_0),
        .I1(p_0_in0),
        .I2(\spi_state_reg_n_0_[6] ),
        .I3(spi_transfer_reg_n_0),
        .I4(\buf_dout[7]_i_2_n_0 ),
        .I5(\buf_dout[7]_i_1_n_0 ),
        .O(spi_transfer_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    spi_transfer_i_4
       (.I0(buf_dout027_out),
        .I1(buf_dout025_out),
        .O(spi_transfer_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000116)) 
    spi_transfer_i_5
       (.I0(spi_state[1]),
        .I1(spi_state[2]),
        .I2(spi_state[4]),
        .I3(spi_state[3]),
        .I4(spi_state[0]),
        .O(spi_transfer_i_5_n_0));
  FDRE #(
    .IS_C_INVERTED(1'b1)) 
    spi_transfer_reg
       (.C(s_axi_clk),
        .CE(1'b1),
        .D(spi_transfer_i_1_n_0),
        .Q(spi_transfer_reg_n_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "FLASH_SPI_wrapper" *) 
module Block_top_FLASH_SPI_wrapper_0_0_FLASH_SPI_wrapper
   (s_axi_rdata,
    spi_ce_n,
    s_axi_arready,
    s_axi_rvalid,
    spi_mosi,
    spi_sck,
    reset,
    s_axi_arvalid,
    s_axi_clk,
    spi_miso,
    s_axi_araddr);
  output [31:0]s_axi_rdata;
  output spi_ce_n;
  output s_axi_arready;
  output s_axi_rvalid;
  output spi_mosi;
  output spi_sck;
  input reset;
  input s_axi_arvalid;
  input s_axi_clk;
  input spi_miso;
  input [23:0]s_axi_araddr;

  wire reset;
  wire [23:0]s_axi_araddr;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire s_axi_clk;
  wire [31:0]s_axi_rdata;
  wire s_axi_rvalid;
  wire spi_ce_n;
  wire spi_miso;
  wire spi_mosi;
  wire spi_sck;

  Block_top_FLASH_SPI_wrapper_0_0_FLASH_SPI flash_inst
       (.reset(reset),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_clk(s_axi_clk),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rvalid(s_axi_rvalid),
        .spi_ce_n(spi_ce_n),
        .spi_miso(spi_miso),
        .spi_mosi(spi_mosi),
        .spi_sck(spi_sck));
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

-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
-- Date        : Sun Sep 13 21:44:36 2026
-- Host        : lovroLinuxM running 64-bit Ubuntu 24.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/lovro/ARES/ARES_fpga/ARES_fpga/ARES_fpga.gen/sources_1/bd/Block_top/ip/Block_top_axi_cf_controller_0_0/Block_top_axi_cf_controller_0_0_sim_netlist.vhdl
-- Design      : Block_top_axi_cf_controller_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Block_top_axi_cf_controller_0_0_axi_cf_controller is
  port (
    cf_iowr_n : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_arready : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_rvalid_reg_0 : out STD_LOGIC;
    s_axi_bvalid_reg_0 : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    cf_cs1_n : out STD_LOGIC;
    cf_cs0_n : out STD_LOGIC;
    cf_iord_n : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    cf_dq : inout STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bready : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Block_top_axi_cf_controller_0_0_axi_cf_controller : entity is "axi_cf_controller";
end Block_top_axi_cf_controller_0_0_axi_cf_controller;

architecture STRUCTURE of Block_top_axi_cf_controller_0_0_axi_cf_controller is
  signal \FSM_sequential_cf_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_cf_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_cf_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_cf_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_cf_state[1]_i_4_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal aw_handshake : STD_LOGIC;
  signal aw_pending_i_1_n_0 : STD_LOGIC;
  signal aw_pending_reg_n_0 : STD_LOGIC;
  signal awaddr_reg : STD_LOGIC_VECTOR ( 16 downto 1 );
  signal bank : STD_LOGIC;
  signal cf_count : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \cf_count[2]_i_2_n_0\ : STD_LOGIC;
  signal \cf_count[6]_i_2_n_0\ : STD_LOGIC;
  signal \cf_count[7]_i_2_n_0\ : STD_LOGIC;
  signal \cf_count[7]_i_3_n_0\ : STD_LOGIC;
  signal \cf_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \cf_count_reg_n_0_[1]\ : STD_LOGIC;
  signal \cf_count_reg_n_0_[2]\ : STD_LOGIC;
  signal \cf_count_reg_n_0_[3]\ : STD_LOGIC;
  signal \cf_count_reg_n_0_[4]\ : STD_LOGIC;
  signal \cf_count_reg_n_0_[5]\ : STD_LOGIC;
  signal \cf_count_reg_n_0_[6]\ : STD_LOGIC;
  signal \cf_count_reg_n_0_[7]\ : STD_LOGIC;
  signal cf_dq_i : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal cf_dq_t : STD_LOGIC;
  signal cf_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal s_axi_arready_INST_0_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \s_axi_bresp[1]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_bresp[1]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_bresp[1]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_bresp[1]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_bresp[1]_i_5_n_0\ : STD_LOGIC;
  signal \s_axi_bresp[1]_i_6_n_0\ : STD_LOGIC;
  signal s_axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_bvalid_reg_0\ : STD_LOGIC;
  signal \s_axi_rdata[24]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[25]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[26]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[27]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[28]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[29]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[30]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[31]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[31]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[31]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[31]_i_4_n_0\ : STD_LOGIC;
  signal s_axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal s_axi_rvalid_i_2_n_0 : STD_LOGIC;
  signal \^s_axi_rvalid_reg_0\ : STD_LOGIC;
  signal start_write : STD_LOGIC;
  signal trans_bank_i_1_n_0 : STD_LOGIC;
  signal trans_da : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \trans_da[0]_i_1_n_0\ : STD_LOGIC;
  signal \trans_da[0]_i_2_n_0\ : STD_LOGIC;
  signal \trans_da[1]_i_1_n_0\ : STD_LOGIC;
  signal \trans_da[1]_i_2_n_0\ : STD_LOGIC;
  signal \trans_da[2]_i_2_n_0\ : STD_LOGIC;
  signal \trans_da[2]_i_3_n_0\ : STD_LOGIC;
  signal \trans_da[2]_i_4_n_0\ : STD_LOGIC;
  signal \trans_da[2]_i_5_n_0\ : STD_LOGIC;
  signal trans_is_write_i_2_n_0 : STD_LOGIC;
  signal trans_is_write_i_3_n_0 : STD_LOGIC;
  signal trans_is_write_reg_n_0 : STD_LOGIC;
  signal trans_rdata : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \trans_rdata[15]_i_1_n_0\ : STD_LOGIC;
  signal \trans_wdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \trans_wdata[0]_i_3_n_0\ : STD_LOGIC;
  signal \trans_wdata[0]_i_4_n_0\ : STD_LOGIC;
  signal \trans_wdata[0]_i_5_n_0\ : STD_LOGIC;
  signal \trans_wdata[0]_i_6_n_0\ : STD_LOGIC;
  signal \trans_wdata[10]_i_2_n_0\ : STD_LOGIC;
  signal \trans_wdata[11]_i_2_n_0\ : STD_LOGIC;
  signal \trans_wdata[12]_i_2_n_0\ : STD_LOGIC;
  signal \trans_wdata[13]_i_2_n_0\ : STD_LOGIC;
  signal \trans_wdata[14]_i_2_n_0\ : STD_LOGIC;
  signal \trans_wdata[15]_i_2_n_0\ : STD_LOGIC;
  signal \trans_wdata[15]_i_3_n_0\ : STD_LOGIC;
  signal \trans_wdata[15]_i_4_n_0\ : STD_LOGIC;
  signal \trans_wdata[15]_i_5_n_0\ : STD_LOGIC;
  signal \trans_wdata[15]_i_6_n_0\ : STD_LOGIC;
  signal \trans_wdata[15]_i_7_n_0\ : STD_LOGIC;
  signal \trans_wdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \trans_wdata[1]_i_3_n_0\ : STD_LOGIC;
  signal \trans_wdata[1]_i_4_n_0\ : STD_LOGIC;
  signal \trans_wdata[1]_i_5_n_0\ : STD_LOGIC;
  signal \trans_wdata[1]_i_6_n_0\ : STD_LOGIC;
  signal \trans_wdata[1]_i_7_n_0\ : STD_LOGIC;
  signal \trans_wdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \trans_wdata[2]_i_3_n_0\ : STD_LOGIC;
  signal \trans_wdata[2]_i_4_n_0\ : STD_LOGIC;
  signal \trans_wdata[2]_i_5_n_0\ : STD_LOGIC;
  signal \trans_wdata[2]_i_6_n_0\ : STD_LOGIC;
  signal \trans_wdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \trans_wdata[3]_i_3_n_0\ : STD_LOGIC;
  signal \trans_wdata[3]_i_4_n_0\ : STD_LOGIC;
  signal \trans_wdata[3]_i_5_n_0\ : STD_LOGIC;
  signal \trans_wdata[3]_i_6_n_0\ : STD_LOGIC;
  signal \trans_wdata[4]_i_2_n_0\ : STD_LOGIC;
  signal \trans_wdata[4]_i_3_n_0\ : STD_LOGIC;
  signal \trans_wdata[4]_i_4_n_0\ : STD_LOGIC;
  signal \trans_wdata[4]_i_5_n_0\ : STD_LOGIC;
  signal \trans_wdata[4]_i_6_n_0\ : STD_LOGIC;
  signal \trans_wdata[5]_i_2_n_0\ : STD_LOGIC;
  signal \trans_wdata[5]_i_3_n_0\ : STD_LOGIC;
  signal \trans_wdata[5]_i_4_n_0\ : STD_LOGIC;
  signal \trans_wdata[5]_i_5_n_0\ : STD_LOGIC;
  signal \trans_wdata[5]_i_6_n_0\ : STD_LOGIC;
  signal \trans_wdata[6]_i_2_n_0\ : STD_LOGIC;
  signal \trans_wdata[6]_i_3_n_0\ : STD_LOGIC;
  signal \trans_wdata[6]_i_4_n_0\ : STD_LOGIC;
  signal \trans_wdata[6]_i_5_n_0\ : STD_LOGIC;
  signal \trans_wdata[6]_i_6_n_0\ : STD_LOGIC;
  signal \trans_wdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \trans_wdata[7]_i_3_n_0\ : STD_LOGIC;
  signal \trans_wdata[7]_i_4_n_0\ : STD_LOGIC;
  signal \trans_wdata[7]_i_5_n_0\ : STD_LOGIC;
  signal \trans_wdata[7]_i_6_n_0\ : STD_LOGIC;
  signal \trans_wdata[7]_i_7_n_0\ : STD_LOGIC;
  signal \trans_wdata[7]_i_8_n_0\ : STD_LOGIC;
  signal \trans_wdata[7]_i_9_n_0\ : STD_LOGIC;
  signal \trans_wdata[8]_i_2_n_0\ : STD_LOGIC;
  signal \trans_wdata[9]_i_2_n_0\ : STD_LOGIC;
  signal \trans_wdata_reg_n_0_[0]\ : STD_LOGIC;
  signal \trans_wdata_reg_n_0_[10]\ : STD_LOGIC;
  signal \trans_wdata_reg_n_0_[11]\ : STD_LOGIC;
  signal \trans_wdata_reg_n_0_[12]\ : STD_LOGIC;
  signal \trans_wdata_reg_n_0_[13]\ : STD_LOGIC;
  signal \trans_wdata_reg_n_0_[14]\ : STD_LOGIC;
  signal \trans_wdata_reg_n_0_[15]\ : STD_LOGIC;
  signal \trans_wdata_reg_n_0_[1]\ : STD_LOGIC;
  signal \trans_wdata_reg_n_0_[2]\ : STD_LOGIC;
  signal \trans_wdata_reg_n_0_[3]\ : STD_LOGIC;
  signal \trans_wdata_reg_n_0_[4]\ : STD_LOGIC;
  signal \trans_wdata_reg_n_0_[5]\ : STD_LOGIC;
  signal \trans_wdata_reg_n_0_[6]\ : STD_LOGIC;
  signal \trans_wdata_reg_n_0_[7]\ : STD_LOGIC;
  signal \trans_wdata_reg_n_0_[8]\ : STD_LOGIC;
  signal \trans_wdata_reg_n_0_[9]\ : STD_LOGIC;
  signal w_handshake : STD_LOGIC;
  signal w_pending_i_1_n_0 : STD_LOGIC;
  signal w_pending_i_2_n_0 : STD_LOGIC;
  signal w_pending_reg_n_0 : STD_LOGIC;
  signal wdata_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal wstrb_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_cf_state_reg[0]\ : label is "CF_IDLE:00,CF_SETUP:01,CF_STROBE:10,CF_HOLD:11,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_cf_state_reg[1]\ : label is "CF_IDLE:00,CF_SETUP:01,CF_STROBE:10,CF_HOLD:11,";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cf_count[0]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \cf_count[2]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \cf_count[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cf_count[5]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cf_count[6]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cf_count[7]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of cf_cs0_n_INST_0 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of cf_cs1_n_INST_0 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of cf_iowr_n_INST_0 : label is "soft_lutpair11";
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \gen_cf_dq_iobuf[0].cf_dq_iobuf\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \gen_cf_dq_iobuf[0].cf_dq_iobuf_i_1\ : label is "soft_lutpair13";
  attribute BOX_TYPE of \gen_cf_dq_iobuf[10].cf_dq_iobuf\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_cf_dq_iobuf[11].cf_dq_iobuf\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_cf_dq_iobuf[12].cf_dq_iobuf\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_cf_dq_iobuf[13].cf_dq_iobuf\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_cf_dq_iobuf[14].cf_dq_iobuf\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_cf_dq_iobuf[15].cf_dq_iobuf\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_cf_dq_iobuf[1].cf_dq_iobuf\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_cf_dq_iobuf[2].cf_dq_iobuf\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_cf_dq_iobuf[3].cf_dq_iobuf\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_cf_dq_iobuf[4].cf_dq_iobuf\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_cf_dq_iobuf[5].cf_dq_iobuf\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_cf_dq_iobuf[6].cf_dq_iobuf\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_cf_dq_iobuf[7].cf_dq_iobuf\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_cf_dq_iobuf[8].cf_dq_iobuf\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \gen_cf_dq_iobuf[9].cf_dq_iobuf\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of s_axi_arready_INST_0_i_1 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of s_axi_awready_INST_0 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \s_axi_bresp[1]_i_5\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \s_axi_bresp[1]_i_6\ : label is "soft_lutpair5";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of \s_axi_bresp_reg[1]\ : label is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute X_INTERFACE_INFO of s_axi_bvalid_reg : label is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute SOFT_HLUTNM of \s_axi_rdata[31]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \s_axi_rdata[31]_i_4\ : label is "soft_lutpair3";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[16]\ : label is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[17]\ : label is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[18]\ : label is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[19]\ : label is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[20]\ : label is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[21]\ : label is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[22]\ : label is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[23]\ : label is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[24]\ : label is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[25]\ : label is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[26]\ : label is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[27]\ : label is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[28]\ : label is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[29]\ : label is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[30]\ : label is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute X_INTERFACE_INFO of \s_axi_rdata_reg[31]\ : label is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute X_INTERFACE_INFO of s_axi_rvalid_reg : label is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute SOFT_HLUTNM of s_axi_wready_INST_0 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of trans_bank_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \trans_da[2]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \trans_da[2]_i_5\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of trans_is_write_i_2 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of trans_is_write_i_3 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \trans_wdata[0]_i_6\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \trans_wdata[10]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \trans_wdata[11]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \trans_wdata[12]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \trans_wdata[13]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \trans_wdata[14]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \trans_wdata[15]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \trans_wdata[15]_i_5\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \trans_wdata[15]_i_6\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \trans_wdata[15]_i_7\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \trans_wdata[1]_i_7\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \trans_wdata[7]_i_7\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \trans_wdata[7]_i_9\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \trans_wdata[8]_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \trans_wdata[9]_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of w_pending_i_1 : label is "soft_lutpair9";
begin
  Q(2 downto 0) <= \^q\(2 downto 0);
  s_axi_bresp(0) <= \^s_axi_bresp\(0);
  s_axi_bvalid_reg_0 <= \^s_axi_bvalid_reg_0\;
  s_axi_rvalid_reg_0 <= \^s_axi_rvalid_reg_0\;
\FSM_sequential_cf_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"15151015EAEAEFEA"
    )
        port map (
      I0 => \FSM_sequential_cf_state[1]_i_3_n_0\,
      I1 => \s_axi_bresp[1]_i_3_n_0\,
      I2 => start_write,
      I3 => s_axi_arvalid,
      I4 => \trans_da[2]_i_3_n_0\,
      I5 => cf_state(0),
      O => \FSM_sequential_cf_state[0]_i_1_n_0\
    );
\FSM_sequential_cf_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555557F7AAAAA808"
    )
        port map (
      I0 => cf_state(0),
      I1 => \FSM_sequential_cf_state[1]_i_2_n_0\,
      I2 => start_write,
      I3 => \s_axi_bresp[1]_i_3_n_0\,
      I4 => \FSM_sequential_cf_state[1]_i_3_n_0\,
      I5 => cf_state(1),
      O => \FSM_sequential_cf_state[1]_i_1_n_0\
    );
\FSM_sequential_cf_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => trans_is_write_i_3_n_0,
      I2 => s_axi_awvalid,
      I3 => w_pending_reg_n_0,
      I4 => s_axi_wvalid,
      I5 => s_axi_arready_INST_0_i_1_n_0,
      O => \FSM_sequential_cf_state[1]_i_2_n_0\
    );
\FSM_sequential_cf_state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000200FF00200020"
    )
        port map (
      I0 => cf_state(1),
      I1 => \s_axi_bresp[1]_i_6_n_0\,
      I2 => \cf_count_reg_n_0_[3]\,
      I3 => \s_axi_bresp[1]_i_5_n_0\,
      I4 => \FSM_sequential_cf_state[1]_i_4_n_0\,
      I5 => cf_state(0),
      O => \FSM_sequential_cf_state[1]_i_3_n_0\
    );
\FSM_sequential_cf_state[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF7F"
    )
        port map (
      I0 => \cf_count_reg_n_0_[2]\,
      I1 => \cf_count_reg_n_0_[1]\,
      I2 => \cf_count_reg_n_0_[0]\,
      I3 => \cf_count_reg_n_0_[4]\,
      I4 => \cf_count_reg_n_0_[3]\,
      I5 => cf_state(1),
      O => \FSM_sequential_cf_state[1]_i_4_n_0\
    );
\FSM_sequential_cf_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_sequential_cf_state[0]_i_1_n_0\,
      Q => cf_state(0),
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\FSM_sequential_cf_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_sequential_cf_state[1]_i_1_n_0\,
      Q => cf_state(1),
      R => \s_axi_bresp[1]_i_1_n_0\
    );
aw_pending_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000ABAA"
    )
        port map (
      I0 => aw_pending_reg_n_0,
      I1 => \^s_axi_bvalid_reg_0\,
      I2 => \^s_axi_rvalid_reg_0\,
      I3 => s_axi_awvalid,
      I4 => start_write,
      O => aw_pending_i_1_n_0
    );
aw_pending_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => aw_pending_i_1_n_0,
      Q => aw_pending_reg_n_0,
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\awaddr_reg[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000200"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => \^s_axi_rvalid_reg_0\,
      I2 => \^s_axi_bvalid_reg_0\,
      I3 => s_axi_aresetn,
      I4 => aw_pending_reg_n_0,
      O => aw_handshake
    );
\awaddr_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => aw_handshake,
      D => s_axi_awaddr(3),
      Q => awaddr_reg(16),
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\awaddr_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => aw_handshake,
      D => s_axi_awaddr(0),
      Q => awaddr_reg(1),
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\awaddr_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => aw_handshake,
      D => s_axi_awaddr(1),
      Q => awaddr_reg(2),
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\awaddr_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => aw_handshake,
      D => s_axi_awaddr(2),
      Q => awaddr_reg(3),
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\cf_count[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => cf_state(0),
      I1 => cf_state(1),
      I2 => \cf_count_reg_n_0_[0]\,
      O => cf_count(0)
    );
\cf_count[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000ECE6ECE60000"
    )
        port map (
      I0 => cf_state(1),
      I1 => cf_state(0),
      I2 => \s_axi_rdata[31]_i_3_n_0\,
      I3 => \cf_count_reg_n_0_[3]\,
      I4 => \cf_count_reg_n_0_[0]\,
      I5 => \cf_count_reg_n_0_[1]\,
      O => cf_count(1)
    );
\cf_count[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \cf_count[2]_i_2_n_0\,
      I1 => \cf_count_reg_n_0_[1]\,
      I2 => \cf_count_reg_n_0_[0]\,
      I3 => \cf_count_reg_n_0_[2]\,
      O => cf_count(2)
    );
\cf_count[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFDFF00"
    )
        port map (
      I0 => \cf_count_reg_n_0_[3]\,
      I1 => \s_axi_bresp[1]_i_6_n_0\,
      I2 => \s_axi_bresp[1]_i_5_n_0\,
      I3 => cf_state(0),
      I4 => cf_state(1),
      O => \cf_count[2]_i_2_n_0\
    );
\cf_count[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \cf_count[7]_i_3_n_0\,
      I1 => \cf_count_reg_n_0_[0]\,
      I2 => \cf_count_reg_n_0_[1]\,
      I3 => \cf_count_reg_n_0_[2]\,
      I4 => \cf_count_reg_n_0_[3]\,
      O => cf_count(3)
    );
\cf_count[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \cf_count[7]_i_3_n_0\,
      I1 => \cf_count_reg_n_0_[2]\,
      I2 => \cf_count_reg_n_0_[1]\,
      I3 => \cf_count_reg_n_0_[0]\,
      I4 => \cf_count_reg_n_0_[3]\,
      I5 => \cf_count_reg_n_0_[4]\,
      O => cf_count(4)
    );
\cf_count[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8AAA2000"
    )
        port map (
      I0 => \cf_count[7]_i_3_n_0\,
      I1 => \cf_count[6]_i_2_n_0\,
      I2 => \cf_count_reg_n_0_[3]\,
      I3 => \cf_count_reg_n_0_[4]\,
      I4 => \cf_count_reg_n_0_[5]\,
      O => cf_count(5)
    );
\cf_count[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA2AAA00008000"
    )
        port map (
      I0 => \cf_count[7]_i_3_n_0\,
      I1 => \cf_count_reg_n_0_[5]\,
      I2 => \cf_count_reg_n_0_[4]\,
      I3 => \cf_count_reg_n_0_[3]\,
      I4 => \cf_count[6]_i_2_n_0\,
      I5 => \cf_count_reg_n_0_[6]\,
      O => cf_count(6)
    );
\cf_count[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \cf_count_reg_n_0_[0]\,
      I1 => \cf_count_reg_n_0_[1]\,
      I2 => \cf_count_reg_n_0_[2]\,
      O => \cf_count[6]_i_2_n_0\
    );
\cf_count[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7800"
    )
        port map (
      I0 => \cf_count[7]_i_2_n_0\,
      I1 => \cf_count_reg_n_0_[6]\,
      I2 => \cf_count_reg_n_0_[7]\,
      I3 => \cf_count[7]_i_3_n_0\,
      O => cf_count(7)
    );
\cf_count[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \cf_count_reg_n_0_[5]\,
      I1 => \cf_count_reg_n_0_[4]\,
      I2 => \cf_count_reg_n_0_[3]\,
      I3 => \cf_count_reg_n_0_[0]\,
      I4 => \cf_count_reg_n_0_[1]\,
      I5 => \cf_count_reg_n_0_[2]\,
      O => \cf_count[7]_i_2_n_0\
    );
\cf_count[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCA8FCA0FCA8FC28"
    )
        port map (
      I0 => \FSM_sequential_cf_state[1]_i_4_n_0\,
      I1 => cf_state(1),
      I2 => cf_state(0),
      I3 => \s_axi_bresp[1]_i_5_n_0\,
      I4 => \s_axi_bresp[1]_i_6_n_0\,
      I5 => \cf_count_reg_n_0_[3]\,
      O => \cf_count[7]_i_3_n_0\
    );
\cf_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => cf_count(0),
      Q => \cf_count_reg_n_0_[0]\,
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\cf_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => cf_count(1),
      Q => \cf_count_reg_n_0_[1]\,
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\cf_count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => cf_count(2),
      Q => \cf_count_reg_n_0_[2]\,
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\cf_count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => cf_count(3),
      Q => \cf_count_reg_n_0_[3]\,
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\cf_count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => cf_count(4),
      Q => \cf_count_reg_n_0_[4]\,
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\cf_count_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => cf_count(5),
      Q => \cf_count_reg_n_0_[5]\,
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\cf_count_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => cf_count(6),
      Q => \cf_count_reg_n_0_[6]\,
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\cf_count_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => cf_count(7),
      Q => \cf_count_reg_n_0_[7]\,
      R => \s_axi_bresp[1]_i_1_n_0\
    );
cf_cs0_n_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AB"
    )
        port map (
      I0 => bank,
      I1 => cf_state(0),
      I2 => cf_state(1),
      O => cf_cs0_n
    );
cf_cs1_n_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"57"
    )
        port map (
      I0 => bank,
      I1 => cf_state(0),
      I2 => cf_state(1),
      O => cf_cs1_n
    );
cf_iord_n_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => cf_state(0),
      I1 => cf_state(1),
      I2 => trans_is_write_reg_n_0,
      O => cf_iord_n
    );
cf_iowr_n_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => cf_state(1),
      I1 => cf_state(0),
      I2 => trans_is_write_reg_n_0,
      O => cf_iowr_n
    );
\gen_cf_dq_iobuf[0].cf_dq_iobuf\: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => \trans_wdata_reg_n_0_[0]\,
      IO => cf_dq(0),
      O => cf_dq_i(0),
      T => cf_dq_t
    );
\gen_cf_dq_iobuf[0].cf_dq_iobuf_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"57"
    )
        port map (
      I0 => trans_is_write_reg_n_0,
      I1 => cf_state(0),
      I2 => cf_state(1),
      O => cf_dq_t
    );
\gen_cf_dq_iobuf[10].cf_dq_iobuf\: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => \trans_wdata_reg_n_0_[10]\,
      IO => cf_dq(10),
      O => cf_dq_i(10),
      T => cf_dq_t
    );
\gen_cf_dq_iobuf[11].cf_dq_iobuf\: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => \trans_wdata_reg_n_0_[11]\,
      IO => cf_dq(11),
      O => cf_dq_i(11),
      T => cf_dq_t
    );
\gen_cf_dq_iobuf[12].cf_dq_iobuf\: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => \trans_wdata_reg_n_0_[12]\,
      IO => cf_dq(12),
      O => cf_dq_i(12),
      T => cf_dq_t
    );
\gen_cf_dq_iobuf[13].cf_dq_iobuf\: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => \trans_wdata_reg_n_0_[13]\,
      IO => cf_dq(13),
      O => cf_dq_i(13),
      T => cf_dq_t
    );
\gen_cf_dq_iobuf[14].cf_dq_iobuf\: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => \trans_wdata_reg_n_0_[14]\,
      IO => cf_dq(14),
      O => cf_dq_i(14),
      T => cf_dq_t
    );
\gen_cf_dq_iobuf[15].cf_dq_iobuf\: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => \trans_wdata_reg_n_0_[15]\,
      IO => cf_dq(15),
      O => cf_dq_i(15),
      T => cf_dq_t
    );
\gen_cf_dq_iobuf[1].cf_dq_iobuf\: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => \trans_wdata_reg_n_0_[1]\,
      IO => cf_dq(1),
      O => cf_dq_i(1),
      T => cf_dq_t
    );
\gen_cf_dq_iobuf[2].cf_dq_iobuf\: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => \trans_wdata_reg_n_0_[2]\,
      IO => cf_dq(2),
      O => cf_dq_i(2),
      T => cf_dq_t
    );
\gen_cf_dq_iobuf[3].cf_dq_iobuf\: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => \trans_wdata_reg_n_0_[3]\,
      IO => cf_dq(3),
      O => cf_dq_i(3),
      T => cf_dq_t
    );
\gen_cf_dq_iobuf[4].cf_dq_iobuf\: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => \trans_wdata_reg_n_0_[4]\,
      IO => cf_dq(4),
      O => cf_dq_i(4),
      T => cf_dq_t
    );
\gen_cf_dq_iobuf[5].cf_dq_iobuf\: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => \trans_wdata_reg_n_0_[5]\,
      IO => cf_dq(5),
      O => cf_dq_i(5),
      T => cf_dq_t
    );
\gen_cf_dq_iobuf[6].cf_dq_iobuf\: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => \trans_wdata_reg_n_0_[6]\,
      IO => cf_dq(6),
      O => cf_dq_i(6),
      T => cf_dq_t
    );
\gen_cf_dq_iobuf[7].cf_dq_iobuf\: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => \trans_wdata_reg_n_0_[7]\,
      IO => cf_dq(7),
      O => cf_dq_i(7),
      T => cf_dq_t
    );
\gen_cf_dq_iobuf[8].cf_dq_iobuf\: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => \trans_wdata_reg_n_0_[8]\,
      IO => cf_dq(8),
      O => cf_dq_i(8),
      T => cf_dq_t
    );
\gen_cf_dq_iobuf[9].cf_dq_iobuf\: unisim.vcomponents.IOBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => \trans_wdata_reg_n_0_[9]\,
      IO => cf_dq(9),
      O => cf_dq_i(9),
      T => cf_dq_t
    );
s_axi_arready_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => cf_state(0),
      I1 => cf_state(1),
      I2 => s_axi_awvalid,
      I3 => w_pending_reg_n_0,
      I4 => s_axi_wvalid,
      I5 => s_axi_arready_INST_0_i_1_n_0,
      O => s_axi_arready
    );
s_axi_arready_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFB"
    )
        port map (
      I0 => aw_pending_reg_n_0,
      I1 => s_axi_aresetn,
      I2 => \^s_axi_bvalid_reg_0\,
      I3 => \^s_axi_rvalid_reg_0\,
      O => s_axi_arready_INST_0_i_1_n_0
    );
s_axi_awready_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \^s_axi_rvalid_reg_0\,
      I1 => \^s_axi_bvalid_reg_0\,
      I2 => s_axi_aresetn,
      I3 => aw_pending_reg_n_0,
      O => s_axi_awready
    );
\s_axi_bresp[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_aresetn,
      O => \s_axi_bresp[1]_i_1_n_0\
    );
\s_axi_bresp[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"111F1110"
    )
        port map (
      I0 => cf_state(1),
      I1 => \s_axi_bresp[1]_i_3_n_0\,
      I2 => start_write,
      I3 => \s_axi_bresp[1]_i_4_n_0\,
      I4 => \^s_axi_bresp\(0),
      O => \s_axi_bresp[1]_i_2_n_0\
    );
\s_axi_bresp[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFCFFFFFFFCFAFA"
    )
        port map (
      I0 => s_axi_wstrb(3),
      I1 => wstrb_reg(3),
      I2 => \trans_wdata[15]_i_3_n_0\,
      I3 => wstrb_reg(2),
      I4 => w_pending_reg_n_0,
      I5 => s_axi_wstrb(2),
      O => \s_axi_bresp[1]_i_3_n_0\
    );
\s_axi_bresp[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010000000"
    )
        port map (
      I0 => \s_axi_bresp[1]_i_5_n_0\,
      I1 => \s_axi_bresp[1]_i_6_n_0\,
      I2 => cf_state(1),
      I3 => cf_state(0),
      I4 => trans_is_write_reg_n_0,
      I5 => \s_axi_rdata[31]_i_4_n_0\,
      O => \s_axi_bresp[1]_i_4_n_0\
    );
\s_axi_bresp[1]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \cf_count_reg_n_0_[7]\,
      I1 => \cf_count_reg_n_0_[6]\,
      I2 => \cf_count_reg_n_0_[5]\,
      O => \s_axi_bresp[1]_i_5_n_0\
    );
\s_axi_bresp[1]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => \cf_count_reg_n_0_[0]\,
      I1 => \cf_count_reg_n_0_[2]\,
      I2 => \cf_count_reg_n_0_[4]\,
      I3 => \cf_count_reg_n_0_[1]\,
      O => \s_axi_bresp[1]_i_6_n_0\
    );
\s_axi_bresp_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \s_axi_bresp[1]_i_2_n_0\,
      Q => \^s_axi_bresp\(0),
      R => \s_axi_bresp[1]_i_1_n_0\
    );
s_axi_bvalid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEFFAEAE"
    )
        port map (
      I0 => \s_axi_bresp[1]_i_4_n_0\,
      I1 => start_write,
      I2 => \s_axi_bresp[1]_i_3_n_0\,
      I3 => s_axi_bready,
      I4 => \^s_axi_bvalid_reg_0\,
      O => s_axi_bvalid_i_1_n_0
    );
s_axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_bvalid_i_1_n_0,
      Q => \^s_axi_bvalid_reg_0\,
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\s_axi_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
        port map (
      I0 => trans_rdata(0),
      I1 => \^q\(0),
      I2 => bank,
      I3 => \^q\(1),
      I4 => \^q\(2),
      I5 => trans_rdata(8),
      O => \s_axi_rdata[24]_i_1_n_0\
    );
\s_axi_rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
        port map (
      I0 => trans_rdata(1),
      I1 => \^q\(0),
      I2 => bank,
      I3 => \^q\(1),
      I4 => \^q\(2),
      I5 => trans_rdata(9),
      O => \s_axi_rdata[25]_i_1_n_0\
    );
\s_axi_rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
        port map (
      I0 => trans_rdata(2),
      I1 => \^q\(0),
      I2 => bank,
      I3 => \^q\(1),
      I4 => \^q\(2),
      I5 => trans_rdata(10),
      O => \s_axi_rdata[26]_i_1_n_0\
    );
\s_axi_rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
        port map (
      I0 => trans_rdata(3),
      I1 => \^q\(0),
      I2 => bank,
      I3 => \^q\(1),
      I4 => \^q\(2),
      I5 => trans_rdata(11),
      O => \s_axi_rdata[27]_i_1_n_0\
    );
\s_axi_rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
        port map (
      I0 => trans_rdata(4),
      I1 => \^q\(0),
      I2 => bank,
      I3 => \^q\(1),
      I4 => \^q\(2),
      I5 => trans_rdata(12),
      O => \s_axi_rdata[28]_i_1_n_0\
    );
\s_axi_rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
        port map (
      I0 => trans_rdata(5),
      I1 => \^q\(0),
      I2 => bank,
      I3 => \^q\(1),
      I4 => \^q\(2),
      I5 => trans_rdata(13),
      O => \s_axi_rdata[29]_i_1_n_0\
    );
\s_axi_rdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
        port map (
      I0 => trans_rdata(6),
      I1 => \^q\(0),
      I2 => bank,
      I3 => \^q\(1),
      I4 => \^q\(2),
      I5 => trans_rdata(14),
      O => \s_axi_rdata[30]_i_1_n_0\
    );
\s_axi_rdata[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => \s_axi_rdata[31]_i_3_n_0\,
      I1 => cf_state(1),
      I2 => cf_state(0),
      I3 => \s_axi_rdata[31]_i_4_n_0\,
      I4 => trans_is_write_reg_n_0,
      O => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAAAAAA8"
    )
        port map (
      I0 => trans_rdata(7),
      I1 => \^q\(0),
      I2 => bank,
      I3 => \^q\(1),
      I4 => \^q\(2),
      I5 => trans_rdata(15),
      O => \s_axi_rdata[31]_i_2_n_0\
    );
\s_axi_rdata[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFFFFFF"
    )
        port map (
      I0 => \s_axi_bresp[1]_i_5_n_0\,
      I1 => \cf_count_reg_n_0_[1]\,
      I2 => \cf_count_reg_n_0_[4]\,
      I3 => \cf_count_reg_n_0_[2]\,
      I4 => \cf_count_reg_n_0_[0]\,
      O => \s_axi_rdata[31]_i_3_n_0\
    );
\s_axi_rdata[31]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \cf_count_reg_n_0_[5]\,
      I1 => \cf_count_reg_n_0_[3]\,
      I2 => \cf_count_reg_n_0_[4]\,
      O => \s_axi_rdata[31]_i_4_n_0\
    );
\s_axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_1_n_0\,
      D => trans_rdata(0),
      Q => s_axi_rdata(0),
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\s_axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_1_n_0\,
      D => trans_rdata(1),
      Q => s_axi_rdata(1),
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\s_axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_1_n_0\,
      D => trans_rdata(2),
      Q => s_axi_rdata(2),
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\s_axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_1_n_0\,
      D => trans_rdata(3),
      Q => s_axi_rdata(3),
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\s_axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_1_n_0\,
      D => trans_rdata(4),
      Q => s_axi_rdata(4),
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\s_axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_1_n_0\,
      D => trans_rdata(5),
      Q => s_axi_rdata(5),
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\s_axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_1_n_0\,
      D => trans_rdata(6),
      Q => s_axi_rdata(6),
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\s_axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_1_n_0\,
      D => trans_rdata(7),
      Q => s_axi_rdata(7),
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\s_axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_1_n_0\,
      D => \s_axi_rdata[24]_i_1_n_0\,
      Q => s_axi_rdata(8),
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\s_axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_1_n_0\,
      D => \s_axi_rdata[25]_i_1_n_0\,
      Q => s_axi_rdata(9),
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\s_axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_1_n_0\,
      D => \s_axi_rdata[26]_i_1_n_0\,
      Q => s_axi_rdata(10),
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\s_axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_1_n_0\,
      D => \s_axi_rdata[27]_i_1_n_0\,
      Q => s_axi_rdata(11),
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\s_axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_1_n_0\,
      D => \s_axi_rdata[28]_i_1_n_0\,
      Q => s_axi_rdata(12),
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\s_axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_1_n_0\,
      D => \s_axi_rdata[29]_i_1_n_0\,
      Q => s_axi_rdata(13),
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\s_axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_1_n_0\,
      D => \s_axi_rdata[30]_i_1_n_0\,
      Q => s_axi_rdata(14),
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\s_axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_1_n_0\,
      D => \s_axi_rdata[31]_i_2_n_0\,
      Q => s_axi_rdata(15),
      R => \s_axi_bresp[1]_i_1_n_0\
    );
s_axi_rvalid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10FF1010"
    )
        port map (
      I0 => trans_is_write_reg_n_0,
      I1 => \s_axi_rdata[31]_i_4_n_0\,
      I2 => s_axi_rvalid_i_2_n_0,
      I3 => s_axi_rready,
      I4 => \^s_axi_rvalid_reg_0\,
      O => s_axi_rvalid_i_1_n_0
    );
s_axi_rvalid_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => cf_state(0),
      I1 => cf_state(1),
      I2 => \s_axi_bresp[1]_i_6_n_0\,
      I3 => \cf_count_reg_n_0_[7]\,
      I4 => \cf_count_reg_n_0_[6]\,
      I5 => \cf_count_reg_n_0_[5]\,
      O => s_axi_rvalid_i_2_n_0
    );
s_axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_rvalid_i_1_n_0,
      Q => \^s_axi_rvalid_reg_0\,
      R => \s_axi_bresp[1]_i_1_n_0\
    );
s_axi_wready_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \^s_axi_rvalid_reg_0\,
      I1 => \^s_axi_bvalid_reg_0\,
      I2 => s_axi_aresetn,
      I3 => w_pending_reg_n_0,
      O => s_axi_wready
    );
trans_bank_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => awaddr_reg(16),
      I1 => aw_pending_reg_n_0,
      I2 => s_axi_awaddr(3),
      I3 => start_write,
      I4 => s_axi_araddr(3),
      O => trans_bank_i_1_n_0
    );
trans_bank_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => trans_da(0),
      D => trans_bank_i_1_n_0,
      Q => bank,
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\trans_da[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20202F20"
    )
        port map (
      I0 => \trans_da[0]_i_2_n_0\,
      I1 => \trans_da[2]_i_4_n_0\,
      I2 => start_write,
      I3 => s_axi_araddr(0),
      I4 => s_axi_araddr(3),
      O => \trans_da[0]_i_1_n_0\
    );
\trans_da[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => awaddr_reg(1),
      I1 => aw_pending_reg_n_0,
      I2 => s_axi_awaddr(0),
      O => \trans_da[0]_i_2_n_0\
    );
\trans_da[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BBB8"
    )
        port map (
      I0 => \trans_da[1]_i_2_n_0\,
      I1 => start_write,
      I2 => s_axi_araddr(3),
      I3 => s_axi_araddr(1),
      O => \trans_da[1]_i_1_n_0\
    );
\trans_da[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => s_axi_awaddr(3),
      I1 => awaddr_reg(16),
      I2 => s_axi_awaddr(1),
      I3 => aw_pending_reg_n_0,
      I4 => awaddr_reg(2),
      O => \trans_da[1]_i_2_n_0\
    );
\trans_da[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => \s_axi_bresp[1]_i_3_n_0\,
      I1 => start_write,
      I2 => s_axi_arvalid,
      I3 => \trans_da[2]_i_3_n_0\,
      O => trans_da(0)
    );
\trans_da[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEFEFE0"
    )
        port map (
      I0 => \trans_da[2]_i_4_n_0\,
      I1 => \trans_da[2]_i_5_n_0\,
      I2 => start_write,
      I3 => s_axi_araddr(3),
      I4 => s_axi_araddr(2),
      O => \trans_da[2]_i_2_n_0\
    );
\trans_da[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => s_axi_arready_INST_0_i_1_n_0,
      I1 => s_axi_wvalid,
      I2 => w_pending_reg_n_0,
      I3 => s_axi_awvalid,
      I4 => cf_state(1),
      I5 => cf_state(0),
      O => \trans_da[2]_i_3_n_0\
    );
\trans_da[2]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => awaddr_reg(16),
      I1 => aw_pending_reg_n_0,
      I2 => s_axi_awaddr(3),
      O => \trans_da[2]_i_4_n_0\
    );
\trans_da[2]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => awaddr_reg(3),
      I1 => aw_pending_reg_n_0,
      I2 => s_axi_awaddr(2),
      O => \trans_da[2]_i_5_n_0\
    );
\trans_da_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => trans_da(0),
      D => \trans_da[0]_i_1_n_0\,
      Q => \^q\(0),
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\trans_da_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => trans_da(0),
      D => \trans_da[1]_i_1_n_0\,
      Q => \^q\(1),
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\trans_da_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => trans_da(0),
      D => \trans_da[2]_i_2_n_0\,
      Q => \^q\(2),
      R => \s_axi_bresp[1]_i_1_n_0\
    );
trans_is_write_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000E000E000E0000"
    )
        port map (
      I0 => w_handshake,
      I1 => w_pending_reg_n_0,
      I2 => trans_is_write_i_2_n_0,
      I3 => trans_is_write_i_3_n_0,
      I4 => aw_pending_reg_n_0,
      I5 => aw_handshake,
      O => start_write
    );
trans_is_write_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^s_axi_bvalid_reg_0\,
      I1 => \^s_axi_rvalid_reg_0\,
      O => trans_is_write_i_2_n_0
    );
trans_is_write_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cf_state(1),
      I1 => cf_state(0),
      O => trans_is_write_i_3_n_0
    );
trans_is_write_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => trans_da(0),
      D => start_write,
      Q => trans_is_write_reg_n_0,
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\trans_rdata[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => trans_is_write_reg_n_0,
      I1 => cf_state(1),
      I2 => cf_state(0),
      O => \trans_rdata[15]_i_1_n_0\
    );
\trans_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \trans_rdata[15]_i_1_n_0\,
      D => cf_dq_i(0),
      Q => trans_rdata(0),
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\trans_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \trans_rdata[15]_i_1_n_0\,
      D => cf_dq_i(10),
      Q => trans_rdata(10),
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\trans_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \trans_rdata[15]_i_1_n_0\,
      D => cf_dq_i(11),
      Q => trans_rdata(11),
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\trans_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \trans_rdata[15]_i_1_n_0\,
      D => cf_dq_i(12),
      Q => trans_rdata(12),
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\trans_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \trans_rdata[15]_i_1_n_0\,
      D => cf_dq_i(13),
      Q => trans_rdata(13),
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\trans_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \trans_rdata[15]_i_1_n_0\,
      D => cf_dq_i(14),
      Q => trans_rdata(14),
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\trans_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \trans_rdata[15]_i_1_n_0\,
      D => cf_dq_i(15),
      Q => trans_rdata(15),
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\trans_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \trans_rdata[15]_i_1_n_0\,
      D => cf_dq_i(1),
      Q => trans_rdata(1),
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\trans_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \trans_rdata[15]_i_1_n_0\,
      D => cf_dq_i(2),
      Q => trans_rdata(2),
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\trans_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \trans_rdata[15]_i_1_n_0\,
      D => cf_dq_i(3),
      Q => trans_rdata(3),
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\trans_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \trans_rdata[15]_i_1_n_0\,
      D => cf_dq_i(4),
      Q => trans_rdata(4),
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\trans_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \trans_rdata[15]_i_1_n_0\,
      D => cf_dq_i(5),
      Q => trans_rdata(5),
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\trans_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \trans_rdata[15]_i_1_n_0\,
      D => cf_dq_i(6),
      Q => trans_rdata(6),
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\trans_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \trans_rdata[15]_i_1_n_0\,
      D => cf_dq_i(7),
      Q => trans_rdata(7),
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\trans_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \trans_rdata[15]_i_1_n_0\,
      D => cf_dq_i(8),
      Q => trans_rdata(8),
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\trans_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \trans_rdata[15]_i_1_n_0\,
      D => cf_dq_i(9),
      Q => trans_rdata(9),
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\trans_wdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A202A2A2A2A2A2A2"
    )
        port map (
      I0 => start_write,
      I1 => \trans_wdata[0]_i_2_n_0\,
      I2 => \trans_wdata[7]_i_3_n_0\,
      I3 => \trans_wdata[0]_i_3_n_0\,
      I4 => \trans_wdata[0]_i_4_n_0\,
      I5 => \trans_wdata[0]_i_5_n_0\,
      O => p_1_in(0)
    );
\trans_wdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"05F5030305F5F3F3"
    )
        port map (
      I0 => wdata_reg(16),
      I1 => s_axi_wdata(16),
      I2 => \trans_wdata[15]_i_3_n_0\,
      I3 => wdata_reg(0),
      I4 => w_pending_reg_n_0,
      I5 => s_axi_wdata(0),
      O => \trans_wdata[0]_i_2_n_0\
    );
\trans_wdata[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000C0AAC000"
    )
        port map (
      I0 => s_axi_wstrb(2),
      I1 => wstrb_reg(2),
      I2 => wdata_reg(16),
      I3 => w_pending_reg_n_0,
      I4 => s_axi_wdata(16),
      I5 => \trans_wdata[15]_i_3_n_0\,
      O => \trans_wdata[0]_i_3_n_0\
    );
\trans_wdata[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3FFF5F5F3FFFFFF"
    )
        port map (
      I0 => s_axi_wdata(8),
      I1 => wdata_reg(8),
      I2 => \trans_wdata[7]_i_7_n_0\,
      I3 => wstrb_reg(1),
      I4 => w_pending_reg_n_0,
      I5 => s_axi_wstrb(1),
      O => \trans_wdata[0]_i_4_n_0\
    );
\trans_wdata[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8AAA8A8A8AAAAAA"
    )
        port map (
      I0 => \trans_wdata[0]_i_6_n_0\,
      I1 => \trans_wdata[7]_i_9_n_0\,
      I2 => \trans_wdata[15]_i_3_n_0\,
      I3 => wdata_reg(24),
      I4 => w_pending_reg_n_0,
      I5 => s_axi_wdata(24),
      O => \trans_wdata[0]_i_5_n_0\
    );
\trans_wdata[0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => s_axi_wstrb(0),
      I1 => wstrb_reg(0),
      I2 => s_axi_wdata(0),
      I3 => w_pending_reg_n_0,
      I4 => wdata_reg(0),
      O => \trans_wdata[0]_i_6_n_0\
    );
\trans_wdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \trans_wdata[10]_i_2_n_0\,
      I1 => \trans_wdata[15]_i_3_n_0\,
      I2 => s_axi_wdata(10),
      I3 => w_pending_reg_n_0,
      I4 => wdata_reg(10),
      I5 => \trans_wdata[15]_i_4_n_0\,
      O => p_1_in(10)
    );
\trans_wdata[10]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => wdata_reg(26),
      I1 => w_pending_reg_n_0,
      I2 => s_axi_wdata(26),
      O => \trans_wdata[10]_i_2_n_0\
    );
\trans_wdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \trans_wdata[11]_i_2_n_0\,
      I1 => \trans_wdata[15]_i_3_n_0\,
      I2 => s_axi_wdata(11),
      I3 => w_pending_reg_n_0,
      I4 => wdata_reg(11),
      I5 => \trans_wdata[15]_i_4_n_0\,
      O => p_1_in(11)
    );
\trans_wdata[11]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => wdata_reg(27),
      I1 => w_pending_reg_n_0,
      I2 => s_axi_wdata(27),
      O => \trans_wdata[11]_i_2_n_0\
    );
\trans_wdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \trans_wdata[12]_i_2_n_0\,
      I1 => \trans_wdata[15]_i_3_n_0\,
      I2 => s_axi_wdata(12),
      I3 => w_pending_reg_n_0,
      I4 => wdata_reg(12),
      I5 => \trans_wdata[15]_i_4_n_0\,
      O => p_1_in(12)
    );
\trans_wdata[12]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => wdata_reg(28),
      I1 => w_pending_reg_n_0,
      I2 => s_axi_wdata(28),
      O => \trans_wdata[12]_i_2_n_0\
    );
\trans_wdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \trans_wdata[13]_i_2_n_0\,
      I1 => \trans_wdata[15]_i_3_n_0\,
      I2 => s_axi_wdata(13),
      I3 => w_pending_reg_n_0,
      I4 => wdata_reg(13),
      I5 => \trans_wdata[15]_i_4_n_0\,
      O => p_1_in(13)
    );
\trans_wdata[13]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => wdata_reg(29),
      I1 => w_pending_reg_n_0,
      I2 => s_axi_wdata(29),
      O => \trans_wdata[13]_i_2_n_0\
    );
\trans_wdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \trans_wdata[14]_i_2_n_0\,
      I1 => \trans_wdata[15]_i_3_n_0\,
      I2 => s_axi_wdata(14),
      I3 => w_pending_reg_n_0,
      I4 => wdata_reg(14),
      I5 => \trans_wdata[15]_i_4_n_0\,
      O => p_1_in(14)
    );
\trans_wdata[14]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => wdata_reg(30),
      I1 => w_pending_reg_n_0,
      I2 => s_axi_wdata(30),
      O => \trans_wdata[14]_i_2_n_0\
    );
\trans_wdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \trans_wdata[15]_i_2_n_0\,
      I1 => \trans_wdata[15]_i_3_n_0\,
      I2 => s_axi_wdata(15),
      I3 => w_pending_reg_n_0,
      I4 => wdata_reg(15),
      I5 => \trans_wdata[15]_i_4_n_0\,
      O => p_1_in(15)
    );
\trans_wdata[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => wdata_reg(31),
      I1 => w_pending_reg_n_0,
      I2 => s_axi_wdata(31),
      O => \trans_wdata[15]_i_2_n_0\
    );
\trans_wdata[15]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => s_axi_wstrb(1),
      I1 => wstrb_reg(1),
      I2 => s_axi_wstrb(0),
      I3 => w_pending_reg_n_0,
      I4 => wstrb_reg(0),
      O => \trans_wdata[15]_i_3_n_0\
    );
\trans_wdata[15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF1"
    )
        port map (
      I0 => w_handshake,
      I1 => w_pending_reg_n_0,
      I2 => \trans_wdata[15]_i_5_n_0\,
      I3 => \trans_wdata[15]_i_6_n_0\,
      I4 => \trans_da[1]_i_2_n_0\,
      I5 => \trans_wdata[15]_i_7_n_0\,
      O => \trans_wdata[15]_i_4_n_0\
    );
\trans_wdata[15]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^s_axi_rvalid_reg_0\,
      I1 => \^s_axi_bvalid_reg_0\,
      I2 => cf_state(0),
      I3 => cf_state(1),
      O => \trans_wdata[15]_i_5_n_0\
    );
\trans_wdata[15]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55515555"
    )
        port map (
      I0 => aw_pending_reg_n_0,
      I1 => s_axi_aresetn,
      I2 => \^s_axi_bvalid_reg_0\,
      I3 => \^s_axi_rvalid_reg_0\,
      I4 => s_axi_awvalid,
      O => \trans_wdata[15]_i_6_n_0\
    );
\trans_wdata[15]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => awaddr_reg(3),
      I2 => s_axi_awaddr(0),
      I3 => aw_pending_reg_n_0,
      I4 => awaddr_reg(1),
      O => \trans_wdata[15]_i_7_n_0\
    );
\trans_wdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2A2A2A2A202A2A2"
    )
        port map (
      I0 => start_write,
      I1 => \trans_wdata[1]_i_2_n_0\,
      I2 => \trans_wdata[7]_i_3_n_0\,
      I3 => \trans_wdata[1]_i_3_n_0\,
      I4 => \trans_wdata[1]_i_4_n_0\,
      I5 => \trans_wdata[1]_i_5_n_0\,
      O => p_1_in(1)
    );
\trans_wdata[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => wdata_reg(1),
      I1 => s_axi_wdata(1),
      I2 => \trans_wdata[15]_i_3_n_0\,
      I3 => wdata_reg(17),
      I4 => w_pending_reg_n_0,
      I5 => s_axi_wdata(17),
      O => \trans_wdata[1]_i_2_n_0\
    );
\trans_wdata[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A808A808A80FFFF"
    )
        port map (
      I0 => \trans_wdata[1]_i_6_n_0\,
      I1 => wdata_reg(9),
      I2 => w_pending_reg_n_0,
      I3 => s_axi_wdata(9),
      I4 => \trans_wdata[1]_i_7_n_0\,
      I5 => \trans_wdata[15]_i_3_n_0\,
      O => \trans_wdata[1]_i_3_n_0\
    );
\trans_wdata[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEFAFFFFFFFAFF"
    )
        port map (
      I0 => \trans_wdata[15]_i_3_n_0\,
      I1 => wstrb_reg(2),
      I2 => s_axi_wstrb(2),
      I3 => s_axi_wdata(25),
      I4 => w_pending_reg_n_0,
      I5 => wdata_reg(25),
      O => \trans_wdata[1]_i_4_n_0\
    );
\trans_wdata[1]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCA000A0"
    )
        port map (
      I0 => s_axi_wstrb(0),
      I1 => wstrb_reg(0),
      I2 => s_axi_wdata(1),
      I3 => w_pending_reg_n_0,
      I4 => wdata_reg(1),
      O => \trans_wdata[1]_i_5_n_0\
    );
\trans_wdata[1]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000ACC0A"
    )
        port map (
      I0 => s_axi_wstrb(1),
      I1 => wstrb_reg(1),
      I2 => s_axi_wstrb(0),
      I3 => w_pending_reg_n_0,
      I4 => wstrb_reg(0),
      O => \trans_wdata[1]_i_6_n_0\
    );
\trans_wdata[1]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => s_axi_wstrb(2),
      I1 => wstrb_reg(2),
      I2 => s_axi_wdata(17),
      I3 => w_pending_reg_n_0,
      I4 => wdata_reg(17),
      O => \trans_wdata[1]_i_7_n_0\
    );
\trans_wdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A202A2A2A2A2A2A2"
    )
        port map (
      I0 => start_write,
      I1 => \trans_wdata[2]_i_2_n_0\,
      I2 => \trans_wdata[7]_i_3_n_0\,
      I3 => \trans_wdata[2]_i_3_n_0\,
      I4 => \trans_wdata[2]_i_4_n_0\,
      I5 => \trans_wdata[2]_i_5_n_0\,
      O => p_1_in(2)
    );
\trans_wdata[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"553355330F000FFF"
    )
        port map (
      I0 => wdata_reg(2),
      I1 => s_axi_wdata(2),
      I2 => wdata_reg(18),
      I3 => w_pending_reg_n_0,
      I4 => s_axi_wdata(18),
      I5 => \trans_wdata[15]_i_3_n_0\,
      O => \trans_wdata[2]_i_2_n_0\
    );
\trans_wdata[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000C0AAC000"
    )
        port map (
      I0 => s_axi_wstrb(2),
      I1 => wstrb_reg(2),
      I2 => wdata_reg(18),
      I3 => w_pending_reg_n_0,
      I4 => s_axi_wdata(18),
      I5 => \trans_wdata[15]_i_3_n_0\,
      O => \trans_wdata[2]_i_3_n_0\
    );
\trans_wdata[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3FFF5F5F3FFFFFF"
    )
        port map (
      I0 => s_axi_wdata(10),
      I1 => wdata_reg(10),
      I2 => \trans_wdata[7]_i_7_n_0\,
      I3 => wstrb_reg(1),
      I4 => w_pending_reg_n_0,
      I5 => s_axi_wstrb(1),
      O => \trans_wdata[2]_i_4_n_0\
    );
\trans_wdata[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5455545454555555"
    )
        port map (
      I0 => \trans_wdata[2]_i_6_n_0\,
      I1 => \trans_wdata[7]_i_9_n_0\,
      I2 => \trans_wdata[15]_i_3_n_0\,
      I3 => wdata_reg(26),
      I4 => w_pending_reg_n_0,
      I5 => s_axi_wdata(26),
      O => \trans_wdata[2]_i_5_n_0\
    );
\trans_wdata[2]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCA000A0"
    )
        port map (
      I0 => s_axi_wstrb(0),
      I1 => wstrb_reg(0),
      I2 => s_axi_wdata(2),
      I3 => w_pending_reg_n_0,
      I4 => wdata_reg(2),
      O => \trans_wdata[2]_i_6_n_0\
    );
\trans_wdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2A2A202A2A2A2A2"
    )
        port map (
      I0 => start_write,
      I1 => \trans_wdata[3]_i_2_n_0\,
      I2 => \trans_wdata[7]_i_3_n_0\,
      I3 => \trans_wdata[3]_i_3_n_0\,
      I4 => \trans_wdata[3]_i_4_n_0\,
      I5 => \trans_wdata[3]_i_5_n_0\,
      O => p_1_in(3)
    );
\trans_wdata[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"553355330F000FFF"
    )
        port map (
      I0 => wdata_reg(3),
      I1 => s_axi_wdata(3),
      I2 => wdata_reg(19),
      I3 => w_pending_reg_n_0,
      I4 => s_axi_wdata(19),
      I5 => \trans_wdata[15]_i_3_n_0\,
      O => \trans_wdata[3]_i_2_n_0\
    );
\trans_wdata[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C000A0A0C000000"
    )
        port map (
      I0 => s_axi_wdata(11),
      I1 => wdata_reg(11),
      I2 => \trans_wdata[7]_i_7_n_0\,
      I3 => wstrb_reg(1),
      I4 => w_pending_reg_n_0,
      I5 => s_axi_wstrb(1),
      O => \trans_wdata[3]_i_3_n_0\
    );
\trans_wdata[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000C0AAC000"
    )
        port map (
      I0 => s_axi_wstrb(2),
      I1 => wstrb_reg(2),
      I2 => wdata_reg(19),
      I3 => w_pending_reg_n_0,
      I4 => s_axi_wdata(19),
      I5 => \trans_wdata[15]_i_3_n_0\,
      O => \trans_wdata[3]_i_4_n_0\
    );
\trans_wdata[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5455545454555555"
    )
        port map (
      I0 => \trans_wdata[3]_i_6_n_0\,
      I1 => \trans_wdata[7]_i_9_n_0\,
      I2 => \trans_wdata[15]_i_3_n_0\,
      I3 => wdata_reg(27),
      I4 => w_pending_reg_n_0,
      I5 => s_axi_wdata(27),
      O => \trans_wdata[3]_i_5_n_0\
    );
\trans_wdata[3]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCA000A0"
    )
        port map (
      I0 => s_axi_wstrb(0),
      I1 => wstrb_reg(0),
      I2 => s_axi_wdata(3),
      I3 => w_pending_reg_n_0,
      I4 => wdata_reg(3),
      O => \trans_wdata[3]_i_6_n_0\
    );
\trans_wdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A202A2A2A2A2A2A2"
    )
        port map (
      I0 => start_write,
      I1 => \trans_wdata[4]_i_2_n_0\,
      I2 => \trans_wdata[7]_i_3_n_0\,
      I3 => \trans_wdata[4]_i_3_n_0\,
      I4 => \trans_wdata[4]_i_4_n_0\,
      I5 => \trans_wdata[4]_i_5_n_0\,
      O => p_1_in(4)
    );
\trans_wdata[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"553355330F000FFF"
    )
        port map (
      I0 => wdata_reg(4),
      I1 => s_axi_wdata(4),
      I2 => wdata_reg(20),
      I3 => w_pending_reg_n_0,
      I4 => s_axi_wdata(20),
      I5 => \trans_wdata[15]_i_3_n_0\,
      O => \trans_wdata[4]_i_2_n_0\
    );
\trans_wdata[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000C0AAC000"
    )
        port map (
      I0 => s_axi_wstrb(2),
      I1 => wstrb_reg(2),
      I2 => wdata_reg(20),
      I3 => w_pending_reg_n_0,
      I4 => s_axi_wdata(20),
      I5 => \trans_wdata[15]_i_3_n_0\,
      O => \trans_wdata[4]_i_3_n_0\
    );
\trans_wdata[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3FFF5F5F3FFFFFF"
    )
        port map (
      I0 => s_axi_wdata(12),
      I1 => wdata_reg(12),
      I2 => \trans_wdata[7]_i_7_n_0\,
      I3 => wstrb_reg(1),
      I4 => w_pending_reg_n_0,
      I5 => s_axi_wstrb(1),
      O => \trans_wdata[4]_i_4_n_0\
    );
\trans_wdata[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5455545454555555"
    )
        port map (
      I0 => \trans_wdata[4]_i_6_n_0\,
      I1 => \trans_wdata[7]_i_9_n_0\,
      I2 => \trans_wdata[15]_i_3_n_0\,
      I3 => wdata_reg(28),
      I4 => w_pending_reg_n_0,
      I5 => s_axi_wdata(28),
      O => \trans_wdata[4]_i_5_n_0\
    );
\trans_wdata[4]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCA000A0"
    )
        port map (
      I0 => s_axi_wstrb(0),
      I1 => wstrb_reg(0),
      I2 => s_axi_wdata(4),
      I3 => w_pending_reg_n_0,
      I4 => wdata_reg(4),
      O => \trans_wdata[4]_i_6_n_0\
    );
\trans_wdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2A2A202A2A2A2A2"
    )
        port map (
      I0 => start_write,
      I1 => \trans_wdata[5]_i_2_n_0\,
      I2 => \trans_wdata[7]_i_3_n_0\,
      I3 => \trans_wdata[5]_i_3_n_0\,
      I4 => \trans_wdata[5]_i_4_n_0\,
      I5 => \trans_wdata[5]_i_5_n_0\,
      O => p_1_in(5)
    );
\trans_wdata[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"553355330F000FFF"
    )
        port map (
      I0 => wdata_reg(5),
      I1 => s_axi_wdata(5),
      I2 => wdata_reg(21),
      I3 => w_pending_reg_n_0,
      I4 => s_axi_wdata(21),
      I5 => \trans_wdata[15]_i_3_n_0\,
      O => \trans_wdata[5]_i_2_n_0\
    );
\trans_wdata[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C000A0A0C000000"
    )
        port map (
      I0 => s_axi_wdata(13),
      I1 => wdata_reg(13),
      I2 => \trans_wdata[7]_i_7_n_0\,
      I3 => wstrb_reg(1),
      I4 => w_pending_reg_n_0,
      I5 => s_axi_wstrb(1),
      O => \trans_wdata[5]_i_3_n_0\
    );
\trans_wdata[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000C0AAC000"
    )
        port map (
      I0 => s_axi_wstrb(2),
      I1 => wstrb_reg(2),
      I2 => wdata_reg(21),
      I3 => w_pending_reg_n_0,
      I4 => s_axi_wdata(21),
      I5 => \trans_wdata[15]_i_3_n_0\,
      O => \trans_wdata[5]_i_4_n_0\
    );
\trans_wdata[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5455545454555555"
    )
        port map (
      I0 => \trans_wdata[5]_i_6_n_0\,
      I1 => \trans_wdata[7]_i_9_n_0\,
      I2 => \trans_wdata[15]_i_3_n_0\,
      I3 => wdata_reg(29),
      I4 => w_pending_reg_n_0,
      I5 => s_axi_wdata(29),
      O => \trans_wdata[5]_i_5_n_0\
    );
\trans_wdata[5]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCA000A0"
    )
        port map (
      I0 => s_axi_wstrb(0),
      I1 => wstrb_reg(0),
      I2 => s_axi_wdata(5),
      I3 => w_pending_reg_n_0,
      I4 => wdata_reg(5),
      O => \trans_wdata[5]_i_6_n_0\
    );
\trans_wdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A202A2A2A2A2A2A2"
    )
        port map (
      I0 => start_write,
      I1 => \trans_wdata[6]_i_2_n_0\,
      I2 => \trans_wdata[7]_i_3_n_0\,
      I3 => \trans_wdata[6]_i_3_n_0\,
      I4 => \trans_wdata[6]_i_4_n_0\,
      I5 => \trans_wdata[6]_i_5_n_0\,
      O => p_1_in(6)
    );
\trans_wdata[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"553355330F000FFF"
    )
        port map (
      I0 => wdata_reg(6),
      I1 => s_axi_wdata(6),
      I2 => wdata_reg(22),
      I3 => w_pending_reg_n_0,
      I4 => s_axi_wdata(22),
      I5 => \trans_wdata[15]_i_3_n_0\,
      O => \trans_wdata[6]_i_2_n_0\
    );
\trans_wdata[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000C0AAC000"
    )
        port map (
      I0 => s_axi_wstrb(2),
      I1 => wstrb_reg(2),
      I2 => wdata_reg(22),
      I3 => w_pending_reg_n_0,
      I4 => s_axi_wdata(22),
      I5 => \trans_wdata[15]_i_3_n_0\,
      O => \trans_wdata[6]_i_3_n_0\
    );
\trans_wdata[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3FFF5F5F3FFFFFF"
    )
        port map (
      I0 => s_axi_wdata(14),
      I1 => wdata_reg(14),
      I2 => \trans_wdata[7]_i_7_n_0\,
      I3 => wstrb_reg(1),
      I4 => w_pending_reg_n_0,
      I5 => s_axi_wstrb(1),
      O => \trans_wdata[6]_i_4_n_0\
    );
\trans_wdata[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5455545454555555"
    )
        port map (
      I0 => \trans_wdata[6]_i_6_n_0\,
      I1 => \trans_wdata[7]_i_9_n_0\,
      I2 => \trans_wdata[15]_i_3_n_0\,
      I3 => wdata_reg(30),
      I4 => w_pending_reg_n_0,
      I5 => s_axi_wdata(30),
      O => \trans_wdata[6]_i_5_n_0\
    );
\trans_wdata[6]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCA000A0"
    )
        port map (
      I0 => s_axi_wstrb(0),
      I1 => wstrb_reg(0),
      I2 => s_axi_wdata(6),
      I3 => w_pending_reg_n_0,
      I4 => wdata_reg(6),
      O => \trans_wdata[6]_i_6_n_0\
    );
\trans_wdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A202A2A2A2A2A2A2"
    )
        port map (
      I0 => start_write,
      I1 => \trans_wdata[7]_i_2_n_0\,
      I2 => \trans_wdata[7]_i_3_n_0\,
      I3 => \trans_wdata[7]_i_4_n_0\,
      I4 => \trans_wdata[7]_i_5_n_0\,
      I5 => \trans_wdata[7]_i_6_n_0\,
      O => p_1_in(7)
    );
\trans_wdata[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"553355330F000FFF"
    )
        port map (
      I0 => wdata_reg(7),
      I1 => s_axi_wdata(7),
      I2 => wdata_reg(23),
      I3 => w_pending_reg_n_0,
      I4 => s_axi_wdata(23),
      I5 => \trans_wdata[15]_i_3_n_0\,
      O => \trans_wdata[7]_i_2_n_0\
    );
\trans_wdata[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFEFFFFAEFEA"
    )
        port map (
      I0 => \trans_da[1]_i_2_n_0\,
      I1 => awaddr_reg(1),
      I2 => aw_pending_reg_n_0,
      I3 => s_axi_awaddr(0),
      I4 => awaddr_reg(3),
      I5 => s_axi_awaddr(2),
      O => \trans_wdata[7]_i_3_n_0\
    );
\trans_wdata[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000C0AAC000"
    )
        port map (
      I0 => s_axi_wstrb(2),
      I1 => wstrb_reg(2),
      I2 => wdata_reg(23),
      I3 => w_pending_reg_n_0,
      I4 => s_axi_wdata(23),
      I5 => \trans_wdata[15]_i_3_n_0\,
      O => \trans_wdata[7]_i_4_n_0\
    );
\trans_wdata[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3FFF5F5F3FFFFFF"
    )
        port map (
      I0 => s_axi_wdata(15),
      I1 => wdata_reg(15),
      I2 => \trans_wdata[7]_i_7_n_0\,
      I3 => wstrb_reg(1),
      I4 => w_pending_reg_n_0,
      I5 => s_axi_wstrb(1),
      O => \trans_wdata[7]_i_5_n_0\
    );
\trans_wdata[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5455545454555555"
    )
        port map (
      I0 => \trans_wdata[7]_i_8_n_0\,
      I1 => \trans_wdata[7]_i_9_n_0\,
      I2 => \trans_wdata[15]_i_3_n_0\,
      I3 => wdata_reg(31),
      I4 => w_pending_reg_n_0,
      I5 => s_axi_wdata(31),
      O => \trans_wdata[7]_i_6_n_0\
    );
\trans_wdata[7]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => wstrb_reg(0),
      I1 => w_pending_reg_n_0,
      I2 => s_axi_wstrb(0),
      O => \trans_wdata[7]_i_7_n_0\
    );
\trans_wdata[7]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCA000A0"
    )
        port map (
      I0 => s_axi_wstrb(0),
      I1 => wstrb_reg(0),
      I2 => s_axi_wdata(7),
      I3 => w_pending_reg_n_0,
      I4 => wdata_reg(7),
      O => \trans_wdata[7]_i_8_n_0\
    );
\trans_wdata[7]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => wstrb_reg(2),
      I1 => w_pending_reg_n_0,
      I2 => s_axi_wstrb(2),
      O => \trans_wdata[7]_i_9_n_0\
    );
\trans_wdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \trans_wdata[8]_i_2_n_0\,
      I1 => \trans_wdata[15]_i_3_n_0\,
      I2 => s_axi_wdata(8),
      I3 => w_pending_reg_n_0,
      I4 => wdata_reg(8),
      I5 => \trans_wdata[15]_i_4_n_0\,
      O => p_1_in(8)
    );
\trans_wdata[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => wdata_reg(24),
      I1 => w_pending_reg_n_0,
      I2 => s_axi_wdata(24),
      O => \trans_wdata[8]_i_2_n_0\
    );
\trans_wdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \trans_wdata[9]_i_2_n_0\,
      I1 => \trans_wdata[15]_i_3_n_0\,
      I2 => s_axi_wdata(9),
      I3 => w_pending_reg_n_0,
      I4 => wdata_reg(9),
      I5 => \trans_wdata[15]_i_4_n_0\,
      O => p_1_in(9)
    );
\trans_wdata[9]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => wdata_reg(25),
      I1 => w_pending_reg_n_0,
      I2 => s_axi_wdata(25),
      O => \trans_wdata[9]_i_2_n_0\
    );
\trans_wdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => trans_da(0),
      D => p_1_in(0),
      Q => \trans_wdata_reg_n_0_[0]\,
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\trans_wdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => trans_da(0),
      D => p_1_in(10),
      Q => \trans_wdata_reg_n_0_[10]\,
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\trans_wdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => trans_da(0),
      D => p_1_in(11),
      Q => \trans_wdata_reg_n_0_[11]\,
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\trans_wdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => trans_da(0),
      D => p_1_in(12),
      Q => \trans_wdata_reg_n_0_[12]\,
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\trans_wdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => trans_da(0),
      D => p_1_in(13),
      Q => \trans_wdata_reg_n_0_[13]\,
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\trans_wdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => trans_da(0),
      D => p_1_in(14),
      Q => \trans_wdata_reg_n_0_[14]\,
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\trans_wdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => trans_da(0),
      D => p_1_in(15),
      Q => \trans_wdata_reg_n_0_[15]\,
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\trans_wdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => trans_da(0),
      D => p_1_in(1),
      Q => \trans_wdata_reg_n_0_[1]\,
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\trans_wdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => trans_da(0),
      D => p_1_in(2),
      Q => \trans_wdata_reg_n_0_[2]\,
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\trans_wdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => trans_da(0),
      D => p_1_in(3),
      Q => \trans_wdata_reg_n_0_[3]\,
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\trans_wdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => trans_da(0),
      D => p_1_in(4),
      Q => \trans_wdata_reg_n_0_[4]\,
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\trans_wdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => trans_da(0),
      D => p_1_in(5),
      Q => \trans_wdata_reg_n_0_[5]\,
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\trans_wdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => trans_da(0),
      D => p_1_in(6),
      Q => \trans_wdata_reg_n_0_[6]\,
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\trans_wdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => trans_da(0),
      D => p_1_in(7),
      Q => \trans_wdata_reg_n_0_[7]\,
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\trans_wdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => trans_da(0),
      D => p_1_in(8),
      Q => \trans_wdata_reg_n_0_[8]\,
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\trans_wdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => trans_da(0),
      D => p_1_in(9),
      Q => \trans_wdata_reg_n_0_[9]\,
      R => \s_axi_bresp[1]_i_1_n_0\
    );
w_pending_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"888A8888"
    )
        port map (
      I0 => w_pending_i_2_n_0,
      I1 => w_pending_reg_n_0,
      I2 => \^s_axi_bvalid_reg_0\,
      I3 => \^s_axi_rvalid_reg_0\,
      I4 => s_axi_wvalid,
      O => w_pending_i_1_n_0
    );
w_pending_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF1"
    )
        port map (
      I0 => aw_handshake,
      I1 => aw_pending_reg_n_0,
      I2 => cf_state(1),
      I3 => cf_state(0),
      I4 => \^s_axi_bvalid_reg_0\,
      I5 => \^s_axi_rvalid_reg_0\,
      O => w_pending_i_2_n_0
    );
w_pending_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => w_pending_i_1_n_0,
      Q => w_pending_reg_n_0,
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\wdata_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => w_handshake,
      D => s_axi_wdata(0),
      Q => wdata_reg(0),
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\wdata_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => w_handshake,
      D => s_axi_wdata(10),
      Q => wdata_reg(10),
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\wdata_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => w_handshake,
      D => s_axi_wdata(11),
      Q => wdata_reg(11),
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\wdata_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => w_handshake,
      D => s_axi_wdata(12),
      Q => wdata_reg(12),
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\wdata_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => w_handshake,
      D => s_axi_wdata(13),
      Q => wdata_reg(13),
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\wdata_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => w_handshake,
      D => s_axi_wdata(14),
      Q => wdata_reg(14),
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\wdata_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => w_handshake,
      D => s_axi_wdata(15),
      Q => wdata_reg(15),
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\wdata_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => w_handshake,
      D => s_axi_wdata(16),
      Q => wdata_reg(16),
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\wdata_reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => w_handshake,
      D => s_axi_wdata(17),
      Q => wdata_reg(17),
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\wdata_reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => w_handshake,
      D => s_axi_wdata(18),
      Q => wdata_reg(18),
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\wdata_reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => w_handshake,
      D => s_axi_wdata(19),
      Q => wdata_reg(19),
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\wdata_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => w_handshake,
      D => s_axi_wdata(1),
      Q => wdata_reg(1),
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\wdata_reg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => w_handshake,
      D => s_axi_wdata(20),
      Q => wdata_reg(20),
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\wdata_reg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => w_handshake,
      D => s_axi_wdata(21),
      Q => wdata_reg(21),
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\wdata_reg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => w_handshake,
      D => s_axi_wdata(22),
      Q => wdata_reg(22),
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\wdata_reg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => w_handshake,
      D => s_axi_wdata(23),
      Q => wdata_reg(23),
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\wdata_reg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => w_handshake,
      D => s_axi_wdata(24),
      Q => wdata_reg(24),
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\wdata_reg_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => w_handshake,
      D => s_axi_wdata(25),
      Q => wdata_reg(25),
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\wdata_reg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => w_handshake,
      D => s_axi_wdata(26),
      Q => wdata_reg(26),
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\wdata_reg_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => w_handshake,
      D => s_axi_wdata(27),
      Q => wdata_reg(27),
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\wdata_reg_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => w_handshake,
      D => s_axi_wdata(28),
      Q => wdata_reg(28),
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\wdata_reg_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => w_handshake,
      D => s_axi_wdata(29),
      Q => wdata_reg(29),
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\wdata_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => w_handshake,
      D => s_axi_wdata(2),
      Q => wdata_reg(2),
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\wdata_reg_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => w_handshake,
      D => s_axi_wdata(30),
      Q => wdata_reg(30),
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\wdata_reg_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => w_handshake,
      D => s_axi_wdata(31),
      Q => wdata_reg(31),
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\wdata_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => w_handshake,
      D => s_axi_wdata(3),
      Q => wdata_reg(3),
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\wdata_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => w_handshake,
      D => s_axi_wdata(4),
      Q => wdata_reg(4),
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\wdata_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => w_handshake,
      D => s_axi_wdata(5),
      Q => wdata_reg(5),
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\wdata_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => w_handshake,
      D => s_axi_wdata(6),
      Q => wdata_reg(6),
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\wdata_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => w_handshake,
      D => s_axi_wdata(7),
      Q => wdata_reg(7),
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\wdata_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => w_handshake,
      D => s_axi_wdata(8),
      Q => wdata_reg(8),
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\wdata_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => w_handshake,
      D => s_axi_wdata(9),
      Q => wdata_reg(9),
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\wstrb_reg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000200"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => \^s_axi_rvalid_reg_0\,
      I2 => \^s_axi_bvalid_reg_0\,
      I3 => s_axi_aresetn,
      I4 => w_pending_reg_n_0,
      O => w_handshake
    );
\wstrb_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => w_handshake,
      D => s_axi_wstrb(0),
      Q => wstrb_reg(0),
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\wstrb_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => w_handshake,
      D => s_axi_wstrb(1),
      Q => wstrb_reg(1),
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\wstrb_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => w_handshake,
      D => s_axi_wstrb(2),
      Q => wstrb_reg(2),
      R => \s_axi_bresp[1]_i_1_n_0\
    );
\wstrb_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => w_handshake,
      D => s_axi_wstrb(3),
      Q => wstrb_reg(3),
      R => \s_axi_bresp[1]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Block_top_axi_cf_controller_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 16 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 16 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    cf_da : out STD_LOGIC_VECTOR ( 2 downto 0 );
    cf_cs0_n : out STD_LOGIC;
    cf_cs1_n : out STD_LOGIC;
    cf_iord_n : out STD_LOGIC;
    cf_iowr_n : out STD_LOGIC;
    cf_reset_n : out STD_LOGIC;
    cf_dq : inout STD_LOGIC_VECTOR ( 15 downto 0 );
    cf_intrq : in STD_LOGIC;
    irq : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Block_top_axi_cf_controller_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Block_top_axi_cf_controller_0_0 : entity is "Block_top_axi_cf_controller_0_0,axi_cf_controller,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of Block_top_axi_cf_controller_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of Block_top_axi_cf_controller_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of Block_top_axi_cf_controller_0_0 : entity is "axi_cf_controller,Vivado 2025.2";
end Block_top_axi_cf_controller_0_0;

architecture STRUCTURE of Block_top_axi_cf_controller_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^cf_intrq\ : STD_LOGIC;
  signal \^s_axi_aresetn\ : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of irq : signal is "xilinx.com:signal:interrupt:1.0 irq INTERRUPT";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of irq : signal is "master";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of irq : signal is "XIL_INTERFACENAME irq, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  attribute X_INTERFACE_INFO of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 s_axi_aclk CLK";
  attribute X_INTERFACE_MODE of s_axi_aclk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s_axi_aclk : signal is "XIL_INTERFACENAME s_axi_aclk, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Block_top_mig_axi_wrapper_0_0_ui_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 s_axi_aresetn RST";
  attribute X_INTERFACE_MODE of s_axi_aresetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s_axi_aresetn : signal is "XIL_INTERFACENAME s_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute X_INTERFACE_INFO of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute X_INTERFACE_INFO of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute X_INTERFACE_INFO of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute X_INTERFACE_INFO of s_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARPROT";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute X_INTERFACE_MODE of s_axi_awaddr : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s_axi_awaddr : signal is "XIL_INTERFACENAME S_AXI, PROTOCOL AXI4LITE, DATA_WIDTH 32, ADDR_WIDTH 17, HAS_BURST 0, HAS_LOCK 0, HAS_CACHE 0, HAS_REGION 0, HAS_QOS 0, HAS_WSTRB 1, FREQ_HZ 100000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_PROT 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN Block_top_mig_axi_wrapper_0_0_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWPROT";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute X_INTERFACE_INFO of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute X_INTERFACE_INFO of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute X_INTERFACE_INFO of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
begin
  \^cf_intrq\ <= cf_intrq;
  \^s_axi_aresetn\ <= s_axi_aresetn;
  cf_reset_n <= \^s_axi_aresetn\;
  irq <= \^cf_intrq\;
  s_axi_bresp(1) <= \^s_axi_bresp\(1);
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rdata(31 downto 16) <= \^s_axi_rdata\(15 downto 0);
  s_axi_rdata(15 downto 0) <= \^s_axi_rdata\(15 downto 0);
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.Block_top_axi_cf_controller_0_0_axi_cf_controller
     port map (
      Q(2 downto 0) => cf_da(2 downto 0),
      cf_cs0_n => cf_cs0_n,
      cf_cs1_n => cf_cs1_n,
      cf_dq(15 downto 0) => cf_dq(15 downto 0),
      cf_iord_n => cf_iord_n,
      cf_iowr_n => cf_iowr_n,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(3) => s_axi_araddr(16),
      s_axi_araddr(2 downto 0) => s_axi_araddr(3 downto 1),
      s_axi_aresetn => \^s_axi_aresetn\,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(3) => s_axi_awaddr(16),
      s_axi_awaddr(2 downto 0) => s_axi_awaddr(3 downto 1),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(0) => \^s_axi_bresp\(1),
      s_axi_bvalid_reg_0 => s_axi_bvalid,
      s_axi_rdata(15 downto 0) => \^s_axi_rdata\(15 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rvalid_reg_0 => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;

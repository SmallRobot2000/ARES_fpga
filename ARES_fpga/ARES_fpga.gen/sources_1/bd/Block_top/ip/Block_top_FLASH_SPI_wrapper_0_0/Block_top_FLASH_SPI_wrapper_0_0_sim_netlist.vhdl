-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
-- Date        : Mon Aug 17 15:51:43 2026
-- Host        : lovroLinuxM running 64-bit Ubuntu 24.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/lovro/ARES/ARES_fpga/ARES_fpga/ARES_fpga.gen/sources_1/bd/Block_top/ip/Block_top_FLASH_SPI_wrapper_0_0/Block_top_FLASH_SPI_wrapper_0_0_sim_netlist.vhdl
-- Design      : Block_top_FLASH_SPI_wrapper_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Block_top_FLASH_SPI_wrapper_0_0_FLASH_SPI is
  port (
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    spi_ce_n : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    spi_mosi : out STD_LOGIC;
    spi_sck : out STD_LOGIC;
    reset : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_clk : in STD_LOGIC;
    spi_miso : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Block_top_FLASH_SPI_wrapper_0_0_FLASH_SPI : entity is "FLASH_SPI";
end Block_top_FLASH_SPI_wrapper_0_0_FLASH_SPI;

architecture STRUCTURE of Block_top_FLASH_SPI_wrapper_0_0_FLASH_SPI is
  signal \FSM_onehot_axi_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_axi_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_axi_state[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_ar_ready : STD_LOGIC;
  signal axi_ar_ready_i_1_n_0 : STD_LOGIC;
  signal axi_r_valid_i_1_n_0 : STD_LOGIC;
  signal \axi_state__0\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal buf_dout025_out : STD_LOGIC;
  signal buf_dout027_out : STD_LOGIC;
  signal buf_dout029_out : STD_LOGIC;
  signal \buf_dout[31]_i_2_n_0\ : STD_LOGIC;
  signal \buf_dout[31]_i_3_n_0\ : STD_LOGIC;
  signal \buf_dout[7]_i_1_n_0\ : STD_LOGIC;
  signal \buf_dout[7]_i_2_n_0\ : STD_LOGIC;
  signal buf_valid : STD_LOGIC;
  signal buf_valid1 : STD_LOGIC;
  signal buf_valid_i_1_n_0 : STD_LOGIC;
  signal data0 : STD_LOGIC;
  signal data2 : STD_LOGIC;
  signal data3 : STD_LOGIC;
  signal data4 : STD_LOGIC;
  signal data5 : STD_LOGIC;
  signal data6 : STD_LOGIC;
  signal data7 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_in0 : STD_LOGIC;
  signal p_2_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal sck_en : STD_LOGIC;
  signal sck_en_i_1_n_0 : STD_LOGIC;
  signal \spi_addr[23]_i_1_n_0\ : STD_LOGIC;
  signal \spi_addr_reg_n_0_[0]\ : STD_LOGIC;
  signal \spi_addr_reg_n_0_[10]\ : STD_LOGIC;
  signal \spi_addr_reg_n_0_[11]\ : STD_LOGIC;
  signal \spi_addr_reg_n_0_[12]\ : STD_LOGIC;
  signal \spi_addr_reg_n_0_[13]\ : STD_LOGIC;
  signal \spi_addr_reg_n_0_[14]\ : STD_LOGIC;
  signal \spi_addr_reg_n_0_[15]\ : STD_LOGIC;
  signal \spi_addr_reg_n_0_[16]\ : STD_LOGIC;
  signal \spi_addr_reg_n_0_[17]\ : STD_LOGIC;
  signal \spi_addr_reg_n_0_[18]\ : STD_LOGIC;
  signal \spi_addr_reg_n_0_[19]\ : STD_LOGIC;
  signal \spi_addr_reg_n_0_[1]\ : STD_LOGIC;
  signal \spi_addr_reg_n_0_[20]\ : STD_LOGIC;
  signal \spi_addr_reg_n_0_[21]\ : STD_LOGIC;
  signal \spi_addr_reg_n_0_[22]\ : STD_LOGIC;
  signal \spi_addr_reg_n_0_[23]\ : STD_LOGIC;
  signal \spi_addr_reg_n_0_[2]\ : STD_LOGIC;
  signal \spi_addr_reg_n_0_[3]\ : STD_LOGIC;
  signal \spi_addr_reg_n_0_[4]\ : STD_LOGIC;
  signal \spi_addr_reg_n_0_[5]\ : STD_LOGIC;
  signal \spi_addr_reg_n_0_[6]\ : STD_LOGIC;
  signal \spi_addr_reg_n_0_[7]\ : STD_LOGIC;
  signal \spi_addr_reg_n_0_[8]\ : STD_LOGIC;
  signal \spi_addr_reg_n_0_[9]\ : STD_LOGIC;
  signal spi_cmd_start_i_1_n_0 : STD_LOGIC;
  signal spi_cmd_start_reg_n_0 : STD_LOGIC;
  signal spi_cnt : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \spi_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \spi_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \spi_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \spi_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \spi_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \spi_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \spi_cnt[5]_i_2_n_0\ : STD_LOGIC;
  signal \spi_cnt[5]_i_3_n_0\ : STD_LOGIC;
  signal spi_cs : STD_LOGIC;
  signal spi_cs_i_1_n_0 : STD_LOGIC;
  signal spi_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal spi_in_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^spi_mosi\ : STD_LOGIC;
  signal spi_mosi_i_1_n_0 : STD_LOGIC;
  signal spi_mosi_i_2_n_0 : STD_LOGIC;
  signal spi_mosi_i_3_n_0 : STD_LOGIC;
  signal spi_mosi_i_4_n_0 : STD_LOGIC;
  signal spi_out0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \spi_out[0]_i_1_n_0\ : STD_LOGIC;
  signal \spi_out[1]_i_1_n_0\ : STD_LOGIC;
  signal \spi_out[3]_i_1_n_0\ : STD_LOGIC;
  signal \spi_out[7]_i_2_n_0\ : STD_LOGIC;
  signal \spi_out[7]_i_4_n_0\ : STD_LOGIC;
  signal \spi_out[7]_i_6_n_0\ : STD_LOGIC;
  signal \spi_out[7]_i_7_n_0\ : STD_LOGIC;
  signal \spi_out[7]_i_9_n_0\ : STD_LOGIC;
  signal \spi_out_reg_n_0_[0]\ : STD_LOGIC;
  signal \^spi_sck\ : STD_LOGIC;
  signal spi_sck_i_1_n_0 : STD_LOGIC;
  signal spi_state : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \spi_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \spi_state[10]_i_1_n_0\ : STD_LOGIC;
  signal \spi_state[10]_i_3_n_0\ : STD_LOGIC;
  signal \spi_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \spi_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \spi_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \spi_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \spi_state[4]_i_2_n_0\ : STD_LOGIC;
  signal \spi_state[4]_i_3_n_0\ : STD_LOGIC;
  signal \spi_state[4]_i_4_n_0\ : STD_LOGIC;
  signal \spi_state[4]_i_5_n_0\ : STD_LOGIC;
  signal \spi_state[4]_i_6_n_0\ : STD_LOGIC;
  signal \spi_state[4]_i_7_n_0\ : STD_LOGIC;
  signal \spi_state[4]_i_8_n_0\ : STD_LOGIC;
  signal \spi_state[5]_i_1_n_0\ : STD_LOGIC;
  signal \spi_state[5]_i_2_n_0\ : STD_LOGIC;
  signal \spi_state[5]_i_3_n_0\ : STD_LOGIC;
  signal \spi_state[6]_i_1_n_0\ : STD_LOGIC;
  signal \spi_state[6]_i_2_n_0\ : STD_LOGIC;
  signal \spi_state[7]_i_1_n_0\ : STD_LOGIC;
  signal \spi_state[7]_i_2_n_0\ : STD_LOGIC;
  signal \spi_state[8]_i_1_n_0\ : STD_LOGIC;
  signal \spi_state[8]_i_2_n_0\ : STD_LOGIC;
  signal \spi_state[8]_i_3_n_0\ : STD_LOGIC;
  signal \spi_state[8]_i_4_n_0\ : STD_LOGIC;
  signal \spi_state[8]_i_5_n_0\ : STD_LOGIC;
  signal \spi_state[8]_i_6_n_0\ : STD_LOGIC;
  signal \spi_state[8]_i_7_n_0\ : STD_LOGIC;
  signal \spi_state[9]_i_1_n_0\ : STD_LOGIC;
  signal \spi_state[9]_i_2_n_0\ : STD_LOGIC;
  signal \spi_state_reg_n_0_[10]\ : STD_LOGIC;
  signal \spi_state_reg_n_0_[6]\ : STD_LOGIC;
  signal \spi_state_reg_n_0_[7]\ : STD_LOGIC;
  signal \spi_state_reg_n_0_[8]\ : STD_LOGIC;
  signal \spi_state_reg_n_0_[9]\ : STD_LOGIC;
  signal \spi_transfer118_out__0\ : STD_LOGIC;
  signal \spi_transfer120_out__0\ : STD_LOGIC;
  signal spi_transfer_i_1_n_0 : STD_LOGIC;
  signal spi_transfer_i_2_n_0 : STD_LOGIC;
  signal spi_transfer_i_3_n_0 : STD_LOGIC;
  signal spi_transfer_i_4_n_0 : STD_LOGIC;
  signal spi_transfer_i_5_n_0 : STD_LOGIC;
  signal spi_transfer_reg_n_0 : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_axi_state_reg[1]\ : label is "AXI_STATE_IDLE:0010,AXI_STATE_R0:0100,AXI_STATE_RD:1000,iSTATE:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_axi_state_reg[2]\ : label is "AXI_STATE_IDLE:0010,AXI_STATE_R0:0100,AXI_STATE_RD:1000,iSTATE:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_axi_state_reg[3]\ : label is "AXI_STATE_IDLE:0010,AXI_STATE_R0:0100,AXI_STATE_RD:1000,iSTATE:0001";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_ar_ready_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \buf_dout[31]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \buf_dout[31]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \buf_dout[7]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of sck_en_i_1 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of spi_ce_n_INST_0 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of spi_cmd_start_i_2 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of spi_cs_i_1 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \spi_out[7]_i_7\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \spi_state[4]_i_7\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \spi_state[4]_i_8\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \spi_state[5]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \spi_state[7]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \spi_state[8]_i_5\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \spi_state[8]_i_6\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \spi_state[8]_i_7\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of spi_transfer_i_1 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of spi_transfer_i_5 : label is "soft_lutpair2";
begin
  s_axi_arready <= \^s_axi_arready\;
  s_axi_rvalid <= \^s_axi_rvalid\;
  spi_mosi <= \^spi_mosi\;
  spi_sck <= \^spi_sck\;
\FSM_onehot_axi_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCCFFDF00DD00DD"
    )
        port map (
      I0 => \axi_state__0\(2),
      I1 => \axi_state__0\(3),
      I2 => buf_valid,
      I3 => reset,
      I4 => s_axi_arvalid,
      I5 => \axi_state__0\(1),
      O => \FSM_onehot_axi_state[1]_i_1_n_0\
    );
\FSM_onehot_axi_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFAAEEAA02AA02"
    )
        port map (
      I0 => \axi_state__0\(2),
      I1 => \axi_state__0\(3),
      I2 => buf_valid,
      I3 => reset,
      I4 => s_axi_arvalid,
      I5 => \axi_state__0\(1),
      O => \FSM_onehot_axi_state[2]_i_1_n_0\
    );
\FSM_onehot_axi_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAACCA8CCA8CCA8"
    )
        port map (
      I0 => \axi_state__0\(2),
      I1 => \axi_state__0\(3),
      I2 => buf_valid,
      I3 => reset,
      I4 => s_axi_arvalid,
      I5 => \axi_state__0\(1),
      O => \FSM_onehot_axi_state[3]_i_1_n_0\
    );
\FSM_onehot_axi_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_clk,
      CE => '1',
      D => \FSM_onehot_axi_state[1]_i_1_n_0\,
      Q => \axi_state__0\(1),
      R => '0'
    );
\FSM_onehot_axi_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_clk,
      CE => '1',
      D => \FSM_onehot_axi_state[2]_i_1_n_0\,
      Q => \axi_state__0\(2),
      R => '0'
    );
\FSM_onehot_axi_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_clk,
      CE => '1',
      D => \FSM_onehot_axi_state[3]_i_1_n_0\,
      Q => \axi_state__0\(3),
      R => '0'
    );
axi_ar_ready_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDDD3000"
    )
        port map (
      I0 => \axi_state__0\(2),
      I1 => reset,
      I2 => s_axi_arvalid,
      I3 => \axi_state__0\(1),
      I4 => \^s_axi_arready\,
      O => axi_ar_ready_i_1_n_0
    );
axi_ar_ready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_clk,
      CE => '1',
      D => axi_ar_ready_i_1_n_0,
      Q => \^s_axi_arready\,
      R => '0'
    );
axi_r_valid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0C0EAFFC0C04040"
    )
        port map (
      I0 => reset,
      I1 => \axi_state__0\(2),
      I2 => buf_valid,
      I3 => \axi_state__0\(3),
      I4 => \spi_addr[23]_i_1_n_0\,
      I5 => \^s_axi_rvalid\,
      O => axi_r_valid_i_1_n_0
    );
axi_r_valid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_clk,
      CE => '1',
      D => axi_r_valid_i_1_n_0,
      Q => \^s_axi_rvalid\,
      R => '0'
    );
\buf_dout[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000000000"
    )
        port map (
      I0 => \spi_state_reg_n_0_[10]\,
      I1 => \spi_state_reg_n_0_[9]\,
      I2 => \spi_state_reg_n_0_[7]\,
      I3 => \spi_state_reg_n_0_[8]\,
      I4 => \buf_dout[31]_i_2_n_0\,
      I5 => \buf_dout[31]_i_3_n_0\,
      O => buf_dout025_out
    );
\buf_dout[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000000000"
    )
        port map (
      I0 => \spi_state_reg_n_0_[10]\,
      I1 => \spi_state_reg_n_0_[9]\,
      I2 => \spi_state_reg_n_0_[8]\,
      I3 => \spi_state_reg_n_0_[7]\,
      I4 => \buf_dout[31]_i_2_n_0\,
      I5 => \buf_dout[31]_i_3_n_0\,
      O => buf_dout027_out
    );
\buf_dout[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000000000"
    )
        port map (
      I0 => \spi_state_reg_n_0_[7]\,
      I1 => \spi_state_reg_n_0_[8]\,
      I2 => \spi_state_reg_n_0_[9]\,
      I3 => \spi_state_reg_n_0_[10]\,
      I4 => \buf_dout[31]_i_2_n_0\,
      I5 => \buf_dout[31]_i_3_n_0\,
      O => buf_dout029_out
    );
\buf_dout[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => p_0_in0,
      I1 => \spi_state_reg_n_0_[6]\,
      I2 => spi_transfer_reg_n_0,
      I3 => spi_state(0),
      O => \buf_dout[31]_i_2_n_0\
    );
\buf_dout[31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => spi_state(2),
      I1 => spi_state(1),
      I2 => spi_state(4),
      I3 => spi_state(3),
      O => \buf_dout[31]_i_3_n_0\
    );
\buf_dout[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000020000"
    )
        port map (
      I0 => \buf_dout[31]_i_3_n_0\,
      I1 => p_0_in0,
      I2 => spi_state(0),
      I3 => spi_transfer_reg_n_0,
      I4 => \spi_state_reg_n_0_[6]\,
      I5 => \buf_dout[7]_i_2_n_0\,
      O => \buf_dout[7]_i_1_n_0\
    );
\buf_dout[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \spi_state_reg_n_0_[8]\,
      I1 => \spi_state_reg_n_0_[7]\,
      I2 => \spi_state_reg_n_0_[9]\,
      I3 => \spi_state_reg_n_0_[10]\,
      O => \buf_dout[7]_i_2_n_0\
    );
\buf_dout_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => s_axi_clk,
      CE => \buf_dout[7]_i_1_n_0\,
      D => spi_in(0),
      Q => s_axi_rdata(0),
      R => reset
    );
\buf_dout_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => s_axi_clk,
      CE => buf_dout025_out,
      D => spi_in(2),
      Q => s_axi_rdata(10),
      R => reset
    );
\buf_dout_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => s_axi_clk,
      CE => buf_dout025_out,
      D => spi_in(3),
      Q => s_axi_rdata(11),
      R => reset
    );
\buf_dout_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => s_axi_clk,
      CE => buf_dout025_out,
      D => spi_in(4),
      Q => s_axi_rdata(12),
      R => reset
    );
\buf_dout_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => s_axi_clk,
      CE => buf_dout025_out,
      D => spi_in(5),
      Q => s_axi_rdata(13),
      R => reset
    );
\buf_dout_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => s_axi_clk,
      CE => buf_dout025_out,
      D => spi_in(6),
      Q => s_axi_rdata(14),
      R => reset
    );
\buf_dout_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => s_axi_clk,
      CE => buf_dout025_out,
      D => spi_in(7),
      Q => s_axi_rdata(15),
      R => reset
    );
\buf_dout_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => s_axi_clk,
      CE => buf_dout027_out,
      D => spi_in(0),
      Q => s_axi_rdata(16),
      R => reset
    );
\buf_dout_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => s_axi_clk,
      CE => buf_dout027_out,
      D => spi_in(1),
      Q => s_axi_rdata(17),
      R => reset
    );
\buf_dout_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => s_axi_clk,
      CE => buf_dout027_out,
      D => spi_in(2),
      Q => s_axi_rdata(18),
      R => reset
    );
\buf_dout_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => s_axi_clk,
      CE => buf_dout027_out,
      D => spi_in(3),
      Q => s_axi_rdata(19),
      R => reset
    );
\buf_dout_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => s_axi_clk,
      CE => \buf_dout[7]_i_1_n_0\,
      D => spi_in(1),
      Q => s_axi_rdata(1),
      R => reset
    );
\buf_dout_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => s_axi_clk,
      CE => buf_dout027_out,
      D => spi_in(4),
      Q => s_axi_rdata(20),
      R => reset
    );
\buf_dout_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => s_axi_clk,
      CE => buf_dout027_out,
      D => spi_in(5),
      Q => s_axi_rdata(21),
      R => reset
    );
\buf_dout_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => s_axi_clk,
      CE => buf_dout027_out,
      D => spi_in(6),
      Q => s_axi_rdata(22),
      R => reset
    );
\buf_dout_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => s_axi_clk,
      CE => buf_dout027_out,
      D => spi_in(7),
      Q => s_axi_rdata(23),
      R => reset
    );
\buf_dout_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => s_axi_clk,
      CE => buf_dout029_out,
      D => spi_in(0),
      Q => s_axi_rdata(24),
      R => reset
    );
\buf_dout_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => s_axi_clk,
      CE => buf_dout029_out,
      D => spi_in(1),
      Q => s_axi_rdata(25),
      R => reset
    );
\buf_dout_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => s_axi_clk,
      CE => buf_dout029_out,
      D => spi_in(2),
      Q => s_axi_rdata(26),
      R => reset
    );
\buf_dout_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => s_axi_clk,
      CE => buf_dout029_out,
      D => spi_in(3),
      Q => s_axi_rdata(27),
      R => reset
    );
\buf_dout_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => s_axi_clk,
      CE => buf_dout029_out,
      D => spi_in(4),
      Q => s_axi_rdata(28),
      R => reset
    );
\buf_dout_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => s_axi_clk,
      CE => buf_dout029_out,
      D => spi_in(5),
      Q => s_axi_rdata(29),
      R => reset
    );
\buf_dout_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => s_axi_clk,
      CE => \buf_dout[7]_i_1_n_0\,
      D => spi_in(2),
      Q => s_axi_rdata(2),
      R => reset
    );
\buf_dout_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => s_axi_clk,
      CE => buf_dout029_out,
      D => spi_in(6),
      Q => s_axi_rdata(30),
      R => reset
    );
\buf_dout_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => s_axi_clk,
      CE => buf_dout029_out,
      D => spi_in(7),
      Q => s_axi_rdata(31),
      R => reset
    );
\buf_dout_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => s_axi_clk,
      CE => \buf_dout[7]_i_1_n_0\,
      D => spi_in(3),
      Q => s_axi_rdata(3),
      R => reset
    );
\buf_dout_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => s_axi_clk,
      CE => \buf_dout[7]_i_1_n_0\,
      D => spi_in(4),
      Q => s_axi_rdata(4),
      R => reset
    );
\buf_dout_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => s_axi_clk,
      CE => \buf_dout[7]_i_1_n_0\,
      D => spi_in(5),
      Q => s_axi_rdata(5),
      R => reset
    );
\buf_dout_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => s_axi_clk,
      CE => \buf_dout[7]_i_1_n_0\,
      D => spi_in(6),
      Q => s_axi_rdata(6),
      R => reset
    );
\buf_dout_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => s_axi_clk,
      CE => \buf_dout[7]_i_1_n_0\,
      D => spi_in(7),
      Q => s_axi_rdata(7),
      R => reset
    );
\buf_dout_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => s_axi_clk,
      CE => buf_dout025_out,
      D => spi_in(0),
      Q => s_axi_rdata(8),
      R => reset
    );
\buf_dout_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => s_axi_clk,
      CE => buf_dout025_out,
      D => spi_in(1),
      Q => s_axi_rdata(9),
      R => reset
    );
buf_valid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F2"
    )
        port map (
      I0 => buf_valid,
      I1 => \spi_state[4]_i_4_n_0\,
      I2 => buf_valid1,
      I3 => reset,
      O => buf_valid_i_1_n_0
    );
buf_valid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => s_axi_clk,
      CE => '1',
      D => buf_valid_i_1_n_0,
      Q => buf_valid,
      R => '0'
    );
sck_en_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F4A0"
    )
        port map (
      I0 => reset,
      I1 => spi_transfer_reg_n_0,
      I2 => sck_en,
      I3 => \spi_cnt[5]_i_3_n_0\,
      O => sck_en_i_1_n_0
    );
sck_en_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => s_axi_clk,
      CE => '1',
      D => sck_en_i_1_n_0,
      Q => sck_en,
      R => '0'
    );
\spi_addr[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \axi_state__0\(1),
      I1 => s_axi_arvalid,
      I2 => reset,
      O => \spi_addr[23]_i_1_n_0\
    );
\spi_addr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_clk,
      CE => \spi_addr[23]_i_1_n_0\,
      D => s_axi_araddr(0),
      Q => \spi_addr_reg_n_0_[0]\,
      R => '0'
    );
\spi_addr_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_clk,
      CE => \spi_addr[23]_i_1_n_0\,
      D => s_axi_araddr(10),
      Q => \spi_addr_reg_n_0_[10]\,
      R => '0'
    );
\spi_addr_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_clk,
      CE => \spi_addr[23]_i_1_n_0\,
      D => s_axi_araddr(11),
      Q => \spi_addr_reg_n_0_[11]\,
      R => '0'
    );
\spi_addr_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_clk,
      CE => \spi_addr[23]_i_1_n_0\,
      D => s_axi_araddr(12),
      Q => \spi_addr_reg_n_0_[12]\,
      R => '0'
    );
\spi_addr_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_clk,
      CE => \spi_addr[23]_i_1_n_0\,
      D => s_axi_araddr(13),
      Q => \spi_addr_reg_n_0_[13]\,
      R => '0'
    );
\spi_addr_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_clk,
      CE => \spi_addr[23]_i_1_n_0\,
      D => s_axi_araddr(14),
      Q => \spi_addr_reg_n_0_[14]\,
      R => '0'
    );
\spi_addr_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_clk,
      CE => \spi_addr[23]_i_1_n_0\,
      D => s_axi_araddr(15),
      Q => \spi_addr_reg_n_0_[15]\,
      R => '0'
    );
\spi_addr_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_clk,
      CE => \spi_addr[23]_i_1_n_0\,
      D => s_axi_araddr(16),
      Q => \spi_addr_reg_n_0_[16]\,
      R => '0'
    );
\spi_addr_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_clk,
      CE => \spi_addr[23]_i_1_n_0\,
      D => s_axi_araddr(17),
      Q => \spi_addr_reg_n_0_[17]\,
      R => '0'
    );
\spi_addr_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_clk,
      CE => \spi_addr[23]_i_1_n_0\,
      D => s_axi_araddr(18),
      Q => \spi_addr_reg_n_0_[18]\,
      R => '0'
    );
\spi_addr_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_clk,
      CE => \spi_addr[23]_i_1_n_0\,
      D => s_axi_araddr(19),
      Q => \spi_addr_reg_n_0_[19]\,
      R => '0'
    );
\spi_addr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_clk,
      CE => \spi_addr[23]_i_1_n_0\,
      D => s_axi_araddr(1),
      Q => \spi_addr_reg_n_0_[1]\,
      R => '0'
    );
\spi_addr_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_clk,
      CE => \spi_addr[23]_i_1_n_0\,
      D => s_axi_araddr(20),
      Q => \spi_addr_reg_n_0_[20]\,
      R => '0'
    );
\spi_addr_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_clk,
      CE => \spi_addr[23]_i_1_n_0\,
      D => s_axi_araddr(21),
      Q => \spi_addr_reg_n_0_[21]\,
      R => '0'
    );
\spi_addr_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_clk,
      CE => \spi_addr[23]_i_1_n_0\,
      D => s_axi_araddr(22),
      Q => \spi_addr_reg_n_0_[22]\,
      R => '0'
    );
\spi_addr_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_clk,
      CE => \spi_addr[23]_i_1_n_0\,
      D => s_axi_araddr(23),
      Q => \spi_addr_reg_n_0_[23]\,
      R => '0'
    );
\spi_addr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_clk,
      CE => \spi_addr[23]_i_1_n_0\,
      D => s_axi_araddr(2),
      Q => \spi_addr_reg_n_0_[2]\,
      R => '0'
    );
\spi_addr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_clk,
      CE => \spi_addr[23]_i_1_n_0\,
      D => s_axi_araddr(3),
      Q => \spi_addr_reg_n_0_[3]\,
      R => '0'
    );
\spi_addr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_clk,
      CE => \spi_addr[23]_i_1_n_0\,
      D => s_axi_araddr(4),
      Q => \spi_addr_reg_n_0_[4]\,
      R => '0'
    );
\spi_addr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_clk,
      CE => \spi_addr[23]_i_1_n_0\,
      D => s_axi_araddr(5),
      Q => \spi_addr_reg_n_0_[5]\,
      R => '0'
    );
\spi_addr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_clk,
      CE => \spi_addr[23]_i_1_n_0\,
      D => s_axi_araddr(6),
      Q => \spi_addr_reg_n_0_[6]\,
      R => '0'
    );
\spi_addr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_clk,
      CE => \spi_addr[23]_i_1_n_0\,
      D => s_axi_araddr(7),
      Q => \spi_addr_reg_n_0_[7]\,
      R => '0'
    );
\spi_addr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_clk,
      CE => \spi_addr[23]_i_1_n_0\,
      D => s_axi_araddr(8),
      Q => \spi_addr_reg_n_0_[8]\,
      R => '0'
    );
\spi_addr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_clk,
      CE => \spi_addr[23]_i_1_n_0\,
      D => s_axi_araddr(9),
      Q => \spi_addr_reg_n_0_[9]\,
      R => '0'
    );
spi_ce_n_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => spi_cs,
      O => spi_ce_n
    );
spi_cmd_start_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CCCCCEEE"
    )
        port map (
      I0 => spi_cmd_start_reg_n_0,
      I1 => axi_ar_ready,
      I2 => \axi_state__0\(2),
      I3 => buf_valid,
      I4 => \axi_state__0\(3),
      I5 => reset,
      O => spi_cmd_start_i_1_n_0
    );
spi_cmd_start_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \axi_state__0\(1),
      O => axi_ar_ready
    );
spi_cmd_start_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_clk,
      CE => '1',
      D => spi_cmd_start_i_1_n_0,
      Q => spi_cmd_start_reg_n_0,
      R => '0'
    );
\spi_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFFE"
    )
        port map (
      I0 => p_0_in,
      I1 => spi_cnt(2),
      I2 => spi_cnt(4),
      I3 => spi_cnt(3),
      I4 => spi_cnt(5),
      I5 => spi_cnt(0),
      O => \spi_cnt[0]_i_1_n_0\
    );
\spi_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999999999999998"
    )
        port map (
      I0 => spi_cnt(0),
      I1 => p_0_in,
      I2 => spi_cnt(5),
      I3 => spi_cnt(3),
      I4 => spi_cnt(4),
      I5 => spi_cnt(2),
      O => \spi_cnt[1]_i_1_n_0\
    );
\spi_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E1E1E1E1E1E1E1E0"
    )
        port map (
      I0 => p_0_in,
      I1 => spi_cnt(0),
      I2 => spi_cnt(2),
      I3 => spi_cnt(5),
      I4 => spi_cnt(3),
      I5 => spi_cnt(4),
      O => \spi_cnt[2]_i_1_n_0\
    );
\spi_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE01FE01FE01FE00"
    )
        port map (
      I0 => spi_cnt(2),
      I1 => spi_cnt(0),
      I2 => p_0_in,
      I3 => spi_cnt(3),
      I4 => spi_cnt(5),
      I5 => spi_cnt(4),
      O => \spi_cnt[3]_i_1_n_0\
    );
\spi_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA9AAAAAAA8"
    )
        port map (
      I0 => spi_cnt(4),
      I1 => spi_cnt(3),
      I2 => spi_cnt(2),
      I3 => spi_cnt(0),
      I4 => p_0_in,
      I5 => spi_cnt(5),
      O => \spi_cnt[4]_i_1_n_0\
    );
\spi_cnt[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => spi_transfer_reg_n_0,
      I1 => \spi_cnt[5]_i_3_n_0\,
      O => \spi_cnt[5]_i_1_n_0\
    );
\spi_cnt[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA9"
    )
        port map (
      I0 => spi_cnt(5),
      I1 => spi_cnt(4),
      I2 => spi_cnt(3),
      I3 => spi_cnt(2),
      I4 => spi_cnt(0),
      I5 => p_0_in,
      O => \spi_cnt[5]_i_2_n_0\
    );
\spi_cnt[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => spi_cnt(5),
      I1 => spi_cnt(3),
      I2 => spi_cnt(4),
      I3 => spi_cnt(2),
      I4 => spi_cnt(0),
      I5 => p_0_in,
      O => \spi_cnt[5]_i_3_n_0\
    );
\spi_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => s_axi_clk,
      CE => \spi_cnt[5]_i_1_n_0\,
      D => \spi_cnt[0]_i_1_n_0\,
      Q => spi_cnt(0),
      R => reset
    );
\spi_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => s_axi_clk,
      CE => \spi_cnt[5]_i_1_n_0\,
      D => \spi_cnt[1]_i_1_n_0\,
      Q => p_0_in,
      R => reset
    );
\spi_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => s_axi_clk,
      CE => \spi_cnt[5]_i_1_n_0\,
      D => \spi_cnt[2]_i_1_n_0\,
      Q => spi_cnt(2),
      R => reset
    );
\spi_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => s_axi_clk,
      CE => \spi_cnt[5]_i_1_n_0\,
      D => \spi_cnt[3]_i_1_n_0\,
      Q => spi_cnt(3),
      R => reset
    );
\spi_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => s_axi_clk,
      CE => \spi_cnt[5]_i_1_n_0\,
      D => \spi_cnt[4]_i_1_n_0\,
      Q => spi_cnt(4),
      R => reset
    );
\spi_cnt_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => s_axi_clk,
      CE => \spi_cnt[5]_i_1_n_0\,
      D => \spi_cnt[5]_i_2_n_0\,
      Q => spi_cnt(5),
      S => reset
    );
spi_cs_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4440"
    )
        port map (
      I0 => reset,
      I1 => spi_cmd_start_reg_n_0,
      I2 => spi_cs,
      I3 => \spi_out[7]_i_4_n_0\,
      O => spi_cs_i_1_n_0
    );
spi_cs_reg: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s_axi_clk,
      CE => '1',
      D => spi_cs_i_1_n_0,
      Q => spi_cs,
      R => '0'
    );
\spi_in[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => p_0_in,
      I1 => spi_cnt(0),
      I2 => reset,
      I3 => spi_transfer_reg_n_0,
      O => spi_in_0(0)
    );
\spi_in_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s_axi_clk,
      CE => spi_in_0(0),
      D => spi_miso,
      Q => spi_in(0),
      R => '0'
    );
\spi_in_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s_axi_clk,
      CE => spi_in_0(0),
      D => spi_in(0),
      Q => spi_in(1),
      R => '0'
    );
\spi_in_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s_axi_clk,
      CE => spi_in_0(0),
      D => spi_in(1),
      Q => spi_in(2),
      R => '0'
    );
\spi_in_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s_axi_clk,
      CE => spi_in_0(0),
      D => spi_in(2),
      Q => spi_in(3),
      R => '0'
    );
\spi_in_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s_axi_clk,
      CE => spi_in_0(0),
      D => spi_in(3),
      Q => spi_in(4),
      R => '0'
    );
\spi_in_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s_axi_clk,
      CE => spi_in_0(0),
      D => spi_in(4),
      Q => spi_in(5),
      R => '0'
    );
\spi_in_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s_axi_clk,
      CE => spi_in_0(0),
      D => spi_in(5),
      Q => spi_in(6),
      R => '0'
    );
\spi_in_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s_axi_clk,
      CE => spi_in_0(0),
      D => spi_in(6),
      Q => spi_in(7),
      R => '0'
    );
spi_mosi_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000E00"
    )
        port map (
      I0 => spi_mosi_i_2_n_0,
      I1 => spi_mosi_i_3_n_0,
      I2 => reset,
      I3 => spi_transfer_reg_n_0,
      I4 => p_0_in,
      I5 => \^spi_mosi\,
      O => spi_mosi_i_1_n_0
    );
spi_mosi_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEAAAAAAAAAAAAA"
    )
        port map (
      I0 => spi_mosi_i_4_n_0,
      I1 => data7,
      I2 => spi_cnt(4),
      I3 => data3,
      I4 => spi_cnt(2),
      I5 => spi_cnt(3),
      O => spi_mosi_i_2_n_0
    );
spi_mosi_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000A0ACFC00000"
    )
        port map (
      I0 => \spi_out_reg_n_0_[0]\,
      I1 => data6,
      I2 => spi_cnt(4),
      I3 => data2,
      I4 => spi_cnt(3),
      I5 => spi_cnt(2),
      O => spi_mosi_i_3_n_0
    );
spi_mosi_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A000A000C0F0C00"
    )
        port map (
      I0 => data5,
      I1 => data4,
      I2 => spi_cnt(3),
      I3 => spi_cnt(4),
      I4 => data0,
      I5 => spi_cnt(2),
      O => spi_mosi_i_4_n_0
    );
spi_mosi_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => s_axi_clk,
      CE => '1',
      D => spi_mosi_i_1_n_0,
      Q => \^spi_mosi\,
      R => '0'
    );
\spi_out[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FE32"
    )
        port map (
      I0 => \spi_out[7]_i_4_n_0\,
      I1 => \spi_out[7]_i_2_n_0\,
      I2 => \spi_out_reg_n_0_[0]\,
      I3 => p_2_in(0),
      I4 => spi_out0_in(0),
      O => \spi_out[0]_i_1_n_0\
    );
\spi_out[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \spi_addr_reg_n_0_[16]\,
      I1 => \spi_out[7]_i_6_n_0\,
      I2 => \spi_out[7]_i_7_n_0\,
      I3 => \spi_addr_reg_n_0_[8]\,
      I4 => \spi_transfer118_out__0\,
      I5 => \spi_addr_reg_n_0_[0]\,
      O => p_2_in(0)
    );
\spi_out[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FE32"
    )
        port map (
      I0 => \spi_out[7]_i_4_n_0\,
      I1 => \spi_out[7]_i_2_n_0\,
      I2 => data2,
      I3 => p_2_in(1),
      I4 => spi_out0_in(0),
      O => \spi_out[1]_i_1_n_0\
    );
\spi_out[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \spi_addr_reg_n_0_[17]\,
      I1 => \spi_out[7]_i_6_n_0\,
      I2 => \spi_out[7]_i_7_n_0\,
      I3 => \spi_addr_reg_n_0_[9]\,
      I4 => \spi_transfer118_out__0\,
      I5 => \spi_addr_reg_n_0_[1]\,
      O => p_2_in(1)
    );
\spi_out[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \spi_addr_reg_n_0_[18]\,
      I1 => \spi_out[7]_i_6_n_0\,
      I2 => \spi_out[7]_i_7_n_0\,
      I3 => \spi_addr_reg_n_0_[10]\,
      I4 => \spi_transfer118_out__0\,
      I5 => \spi_addr_reg_n_0_[2]\,
      O => p_2_in(2)
    );
\spi_out[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FE32"
    )
        port map (
      I0 => \spi_out[7]_i_4_n_0\,
      I1 => \spi_out[7]_i_2_n_0\,
      I2 => data4,
      I3 => p_2_in(3),
      I4 => spi_out0_in(0),
      O => \spi_out[3]_i_1_n_0\
    );
\spi_out[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \spi_addr_reg_n_0_[19]\,
      I1 => \spi_out[7]_i_6_n_0\,
      I2 => \spi_out[7]_i_7_n_0\,
      I3 => \spi_addr_reg_n_0_[11]\,
      I4 => \spi_transfer118_out__0\,
      I5 => \spi_addr_reg_n_0_[3]\,
      O => p_2_in(3)
    );
\spi_out[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \spi_addr_reg_n_0_[20]\,
      I1 => \spi_out[7]_i_6_n_0\,
      I2 => \spi_out[7]_i_7_n_0\,
      I3 => \spi_addr_reg_n_0_[12]\,
      I4 => \spi_transfer118_out__0\,
      I5 => \spi_addr_reg_n_0_[4]\,
      O => p_2_in(4)
    );
\spi_out[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \spi_addr_reg_n_0_[21]\,
      I1 => \spi_out[7]_i_6_n_0\,
      I2 => \spi_out[7]_i_7_n_0\,
      I3 => \spi_addr_reg_n_0_[13]\,
      I4 => \spi_transfer118_out__0\,
      I5 => \spi_addr_reg_n_0_[5]\,
      O => p_2_in(5)
    );
\spi_out[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \spi_addr_reg_n_0_[22]\,
      I1 => \spi_out[7]_i_6_n_0\,
      I2 => \spi_out[7]_i_7_n_0\,
      I3 => \spi_addr_reg_n_0_[14]\,
      I4 => \spi_transfer118_out__0\,
      I5 => \spi_addr_reg_n_0_[6]\,
      O => p_2_in(6)
    );
\spi_out[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F2"
    )
        port map (
      I0 => \spi_out[7]_i_4_n_0\,
      I1 => \spi_out[7]_i_2_n_0\,
      I2 => spi_out0_in(0),
      O => spi_out0_in(7)
    );
\spi_out[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000110"
    )
        port map (
      I0 => \buf_dout[31]_i_2_n_0\,
      I1 => \buf_dout[7]_i_2_n_0\,
      I2 => spi_state(2),
      I3 => spi_state(1),
      I4 => spi_state(4),
      I5 => spi_state(3),
      O => \spi_out[7]_i_2_n_0\
    );
\spi_out[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF222F222F222"
    )
        port map (
      I0 => \spi_addr_reg_n_0_[23]\,
      I1 => \spi_out[7]_i_6_n_0\,
      I2 => \spi_out[7]_i_7_n_0\,
      I3 => \spi_addr_reg_n_0_[15]\,
      I4 => \spi_transfer118_out__0\,
      I5 => \spi_addr_reg_n_0_[7]\,
      O => p_2_in(7)
    );
\spi_out[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \spi_out[7]_i_9_n_0\,
      I1 => spi_cmd_start_reg_n_0,
      I2 => spi_state(0),
      I3 => \buf_dout[31]_i_3_n_0\,
      I4 => \buf_dout[7]_i_2_n_0\,
      O => \spi_out[7]_i_4_n_0\
    );
\spi_out[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAEAA"
    )
        port map (
      I0 => reset,
      I1 => \spi_state[4]_i_7_n_0\,
      I2 => spi_state(3),
      I3 => spi_state(4),
      I4 => spi_state(2),
      I5 => spi_state(1),
      O => spi_out0_in(0)
    );
\spi_out[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010100"
    )
        port map (
      I0 => \buf_dout[31]_i_2_n_0\,
      I1 => \buf_dout[7]_i_2_n_0\,
      I2 => spi_state(4),
      I3 => spi_state(3),
      I4 => spi_state(2),
      I5 => spi_state(1),
      O => \spi_out[7]_i_6_n_0\
    );
\spi_out[7]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000200"
    )
        port map (
      I0 => \spi_state[4]_i_7_n_0\,
      I1 => spi_state(4),
      I2 => spi_state(3),
      I3 => spi_state(2),
      I4 => spi_state(1),
      O => \spi_out[7]_i_7_n_0\
    );
\spi_out[7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => spi_state(1),
      I1 => spi_state(2),
      I2 => spi_state(3),
      I3 => spi_state(4),
      I4 => \buf_dout[7]_i_2_n_0\,
      I5 => \buf_dout[31]_i_2_n_0\,
      O => \spi_transfer118_out__0\
    );
\spi_out[7]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => spi_transfer_reg_n_0,
      I1 => \spi_state_reg_n_0_[6]\,
      I2 => p_0_in0,
      O => \spi_out[7]_i_9_n_0\
    );
\spi_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s_axi_clk,
      CE => '1',
      D => \spi_out[0]_i_1_n_0\,
      Q => \spi_out_reg_n_0_[0]\,
      R => '0'
    );
\spi_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s_axi_clk,
      CE => '1',
      D => \spi_out[1]_i_1_n_0\,
      Q => data2,
      R => '0'
    );
\spi_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s_axi_clk,
      CE => \spi_out[7]_i_2_n_0\,
      D => p_2_in(2),
      Q => data3,
      R => spi_out0_in(7)
    );
\spi_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s_axi_clk,
      CE => '1',
      D => \spi_out[3]_i_1_n_0\,
      Q => data4,
      R => '0'
    );
\spi_out_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s_axi_clk,
      CE => \spi_out[7]_i_2_n_0\,
      D => p_2_in(4),
      Q => data5,
      R => spi_out0_in(7)
    );
\spi_out_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s_axi_clk,
      CE => \spi_out[7]_i_2_n_0\,
      D => p_2_in(5),
      Q => data6,
      R => spi_out0_in(7)
    );
\spi_out_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s_axi_clk,
      CE => \spi_out[7]_i_2_n_0\,
      D => p_2_in(6),
      Q => data7,
      R => spi_out0_in(7)
    );
\spi_out_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s_axi_clk,
      CE => \spi_out[7]_i_2_n_0\,
      D => p_2_in(7),
      Q => data0,
      R => spi_out0_in(7)
    );
spi_sck_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => p_0_in,
      I1 => sck_en,
      I2 => reset,
      I3 => \^spi_sck\,
      O => spi_sck_i_1_n_0
    );
spi_sck_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => s_axi_clk,
      CE => '1',
      D => spi_sck_i_1_n_0,
      Q => \^spi_sck\,
      R => '0'
    );
\spi_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"220222FF"
    )
        port map (
      I0 => spi_state(0),
      I1 => \spi_state[8]_i_2_n_0\,
      I2 => \spi_state[4]_i_5_n_0\,
      I3 => reset,
      I4 => spi_cmd_start_reg_n_0,
      O => \spi_state[0]_i_1_n_0\
    );
\spi_state[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F400"
    )
        port map (
      I0 => buf_valid1,
      I1 => spi_cmd_start_reg_n_0,
      I2 => reset,
      I3 => \spi_state[10]_i_3_n_0\,
      O => \spi_state[10]_i_1_n_0\
    );
\spi_state[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000000000"
    )
        port map (
      I0 => \spi_state_reg_n_0_[7]\,
      I1 => \spi_state_reg_n_0_[8]\,
      I2 => \spi_state_reg_n_0_[10]\,
      I3 => \spi_state_reg_n_0_[9]\,
      I4 => \buf_dout[31]_i_2_n_0\,
      I5 => \buf_dout[31]_i_3_n_0\,
      O => buf_valid1
    );
\spi_state[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C0CFFFD0C0C000C"
    )
        port map (
      I0 => buf_dout027_out,
      I1 => buf_dout029_out,
      I2 => buf_valid1,
      I3 => reset,
      I4 => \spi_state[8]_i_2_n_0\,
      I5 => \spi_state_reg_n_0_[10]\,
      O => \spi_state[10]_i_3_n_0\
    );
\spi_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA8A882AAAAAAAA"
    )
        port map (
      I0 => \spi_state[4]_i_8_n_0\,
      I1 => spi_state(3),
      I2 => spi_state(4),
      I3 => spi_state(1),
      I4 => spi_state(2),
      I5 => \spi_state[4]_i_7_n_0\,
      O => \spi_state[1]_i_1_n_0\
    );
\spi_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => \spi_state[4]_i_7_n_0\,
      I1 => spi_state(2),
      I2 => spi_state(1),
      I3 => spi_state(4),
      I4 => spi_state(3),
      I5 => \spi_state[4]_i_8_n_0\,
      O => \spi_state[2]_i_1_n_0\
    );
\spi_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => \spi_state[4]_i_7_n_0\,
      I1 => spi_state(1),
      I2 => spi_state(2),
      I3 => spi_state(4),
      I4 => spi_state(3),
      I5 => \spi_state[4]_i_8_n_0\,
      O => \spi_state[3]_i_1_n_0\
    );
\spi_state[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFEFFFF"
    )
        port map (
      I0 => \buf_dout[7]_i_1_n_0\,
      I1 => buf_dout025_out,
      I2 => \spi_state[4]_i_4_n_0\,
      I3 => \spi_state[4]_i_5_n_0\,
      I4 => spi_cmd_start_reg_n_0,
      I5 => reset,
      O => \spi_state[4]_i_1_n_0\
    );
\spi_state[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAFE"
    )
        port map (
      I0 => \spi_state[4]_i_6_n_0\,
      I1 => buf_dout025_out,
      I2 => \buf_dout[7]_i_1_n_0\,
      I3 => \spi_state[4]_i_5_n_0\,
      I4 => reset,
      O => \spi_state[4]_i_2_n_0\
    );
\spi_state[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => \spi_state[4]_i_7_n_0\,
      I1 => spi_state(4),
      I2 => spi_state(3),
      I3 => spi_state(2),
      I4 => spi_state(1),
      I5 => \spi_state[4]_i_8_n_0\,
      O => \spi_state[4]_i_3_n_0\
    );
\spi_state[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => \buf_dout[31]_i_3_n_0\,
      I1 => spi_state(0),
      I2 => p_0_in0,
      I3 => spi_transfer_reg_n_0,
      I4 => \spi_state_reg_n_0_[6]\,
      I5 => \buf_dout[7]_i_2_n_0\,
      O => \spi_state[4]_i_4_n_0\
    );
\spi_state[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000020220"
    )
        port map (
      I0 => \buf_dout[31]_i_3_n_0\,
      I1 => \buf_dout[31]_i_2_n_0\,
      I2 => \spi_state_reg_n_0_[9]\,
      I3 => \spi_state_reg_n_0_[10]\,
      I4 => \spi_state_reg_n_0_[8]\,
      I5 => \spi_state_reg_n_0_[7]\,
      O => \spi_state[4]_i_5_n_0\
    );
\spi_state[4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111111111111000"
    )
        port map (
      I0 => reset,
      I1 => \spi_state[4]_i_5_n_0\,
      I2 => spi_cs,
      I3 => \spi_out[7]_i_4_n_0\,
      I4 => \spi_transfer120_out__0\,
      I5 => \spi_out[7]_i_2_n_0\,
      O => \spi_state[4]_i_6_n_0\
    );
\spi_state[4]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => spi_state(0),
      I1 => spi_transfer_reg_n_0,
      I2 => \spi_state_reg_n_0_[6]\,
      I3 => p_0_in0,
      I4 => \buf_dout[7]_i_2_n_0\,
      O => \spi_state[4]_i_7_n_0\
    );
\spi_state[4]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \buf_dout[7]_i_1_n_0\,
      I1 => buf_dout025_out,
      I2 => \spi_state[4]_i_5_n_0\,
      O => \spi_state[4]_i_8_n_0\
    );
\spi_state[4]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => spi_state(1),
      I1 => spi_state(2),
      I2 => spi_state(4),
      I3 => spi_state(3),
      I4 => \buf_dout[7]_i_2_n_0\,
      I5 => \buf_dout[31]_i_2_n_0\,
      O => \spi_transfer120_out__0\
    );
\spi_state[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EE22FE02EE220000"
    )
        port map (
      I0 => p_0_in0,
      I1 => \spi_state[8]_i_2_n_0\,
      I2 => \spi_state[4]_i_5_n_0\,
      I3 => \spi_state[5]_i_2_n_0\,
      I4 => reset,
      I5 => spi_cmd_start_reg_n_0,
      O => \spi_state[5]_i_1_n_0\
    );
\spi_state[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888888888B8"
    )
        port map (
      I0 => buf_valid1,
      I1 => \spi_state[4]_i_5_n_0\,
      I2 => \spi_state[5]_i_3_n_0\,
      I3 => \spi_state[4]_i_4_n_0\,
      I4 => buf_dout025_out,
      I5 => \buf_dout[7]_i_1_n_0\,
      O => \spi_state[5]_i_2_n_0\
    );
\spi_state[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => spi_state(1),
      I1 => spi_state(2),
      I2 => spi_state(4),
      I3 => spi_state(3),
      I4 => \spi_state[4]_i_7_n_0\,
      O => \spi_state[5]_i_3_n_0\
    );
\spi_state[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF000400000000"
    )
        port map (
      I0 => \spi_state[4]_i_5_n_0\,
      I1 => spi_cmd_start_reg_n_0,
      I2 => \buf_dout[7]_i_1_n_0\,
      I3 => buf_dout025_out,
      I4 => reset,
      I5 => \spi_state[6]_i_2_n_0\,
      O => \spi_state[6]_i_1_n_0\
    );
\spi_state[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \spi_state[4]_i_8_n_0\,
      I1 => \spi_state[4]_i_4_n_0\,
      I2 => \spi_state[8]_i_2_n_0\,
      I3 => \spi_state_reg_n_0_[6]\,
      O => \spi_state[6]_i_2_n_0\
    );
\spi_state[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF040000"
    )
        port map (
      I0 => \spi_state[4]_i_5_n_0\,
      I1 => spi_cmd_start_reg_n_0,
      I2 => buf_dout025_out,
      I3 => reset,
      I4 => \spi_state[7]_i_2_n_0\,
      O => \spi_state[7]_i_1_n_0\
    );
\spi_state[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04FF0400"
    )
        port map (
      I0 => buf_dout025_out,
      I1 => \buf_dout[7]_i_1_n_0\,
      I2 => \spi_state[4]_i_5_n_0\,
      I3 => \spi_state[8]_i_2_n_0\,
      I4 => \spi_state_reg_n_0_[7]\,
      O => \spi_state[7]_i_2_n_0\
    );
\spi_state[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00C0EEE000C000E0"
    )
        port map (
      I0 => spi_cmd_start_reg_n_0,
      I1 => reset,
      I2 => \spi_state_reg_n_0_[8]\,
      I3 => \spi_state[8]_i_2_n_0\,
      I4 => \spi_state[4]_i_5_n_0\,
      I5 => buf_dout025_out,
      O => \spi_state[8]_i_1_n_0\
    );
\spi_state[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FFFE"
    )
        port map (
      I0 => \spi_state[8]_i_3_n_0\,
      I1 => \spi_out[7]_i_2_n_0\,
      I2 => \spi_transfer120_out__0\,
      I3 => \spi_state[8]_i_4_n_0\,
      I4 => \spi_state[4]_i_5_n_0\,
      I5 => reset,
      O => \spi_state[8]_i_2_n_0\
    );
\spi_state[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CFF0CAE00000000"
    )
        port map (
      I0 => \spi_state[8]_i_5_n_0\,
      I1 => \spi_state[8]_i_6_n_0\,
      I2 => \buf_dout[31]_i_2_n_0\,
      I3 => \buf_dout[7]_i_2_n_0\,
      I4 => \spi_state[8]_i_7_n_0\,
      I5 => \buf_dout[31]_i_3_n_0\,
      O => \spi_state[8]_i_3_n_0\
    );
\spi_state[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000020000000"
    )
        port map (
      I0 => spi_cs,
      I1 => \buf_dout[7]_i_2_n_0\,
      I2 => \buf_dout[31]_i_3_n_0\,
      I3 => spi_state(0),
      I4 => spi_cmd_start_reg_n_0,
      I5 => \spi_out[7]_i_9_n_0\,
      O => \spi_state[8]_i_4_n_0\
    );
\spi_state[8]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => p_0_in0,
      I1 => spi_state(0),
      I2 => spi_transfer_reg_n_0,
      I3 => \spi_state_reg_n_0_[6]\,
      O => \spi_state[8]_i_5_n_0\
    );
\spi_state[8]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \spi_state_reg_n_0_[8]\,
      I1 => \spi_state_reg_n_0_[7]\,
      I2 => \spi_state_reg_n_0_[9]\,
      I3 => \spi_state_reg_n_0_[10]\,
      O => \spi_state[8]_i_6_n_0\
    );
\spi_state[8]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => spi_state(0),
      I1 => p_0_in0,
      I2 => spi_transfer_reg_n_0,
      I3 => \spi_state_reg_n_0_[6]\,
      O => \spi_state[8]_i_7_n_0\
    );
\spi_state[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF040000"
    )
        port map (
      I0 => buf_valid1,
      I1 => spi_cmd_start_reg_n_0,
      I2 => buf_dout029_out,
      I3 => reset,
      I4 => \spi_state[9]_i_2_n_0\,
      O => \spi_state[9]_i_1_n_0\
    );
\spi_state[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0202FFFF02020002"
    )
        port map (
      I0 => buf_dout027_out,
      I1 => buf_dout029_out,
      I2 => buf_valid1,
      I3 => reset,
      I4 => \spi_state[8]_i_2_n_0\,
      I5 => \spi_state_reg_n_0_[9]\,
      O => \spi_state[9]_i_2_n_0\
    );
\spi_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => s_axi_clk,
      CE => '1',
      D => \spi_state[0]_i_1_n_0\,
      Q => spi_state(0),
      R => '0'
    );
\spi_state_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => s_axi_clk,
      CE => '1',
      D => \spi_state[10]_i_1_n_0\,
      Q => \spi_state_reg_n_0_[10]\,
      R => '0'
    );
\spi_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => s_axi_clk,
      CE => \spi_state[4]_i_2_n_0\,
      D => \spi_state[1]_i_1_n_0\,
      Q => spi_state(1),
      R => \spi_state[4]_i_1_n_0\
    );
\spi_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => s_axi_clk,
      CE => \spi_state[4]_i_2_n_0\,
      D => \spi_state[2]_i_1_n_0\,
      Q => spi_state(2),
      R => \spi_state[4]_i_1_n_0\
    );
\spi_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => s_axi_clk,
      CE => \spi_state[4]_i_2_n_0\,
      D => \spi_state[3]_i_1_n_0\,
      Q => spi_state(3),
      R => \spi_state[4]_i_1_n_0\
    );
\spi_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => s_axi_clk,
      CE => \spi_state[4]_i_2_n_0\,
      D => \spi_state[4]_i_3_n_0\,
      Q => spi_state(4),
      R => \spi_state[4]_i_1_n_0\
    );
\spi_state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => s_axi_clk,
      CE => '1',
      D => \spi_state[5]_i_1_n_0\,
      Q => p_0_in0,
      R => '0'
    );
\spi_state_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => s_axi_clk,
      CE => '1',
      D => \spi_state[6]_i_1_n_0\,
      Q => \spi_state_reg_n_0_[6]\,
      R => '0'
    );
\spi_state_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => s_axi_clk,
      CE => '1',
      D => \spi_state[7]_i_1_n_0\,
      Q => \spi_state_reg_n_0_[7]\,
      R => '0'
    );
\spi_state_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => s_axi_clk,
      CE => '1',
      D => \spi_state[8]_i_1_n_0\,
      Q => \spi_state_reg_n_0_[8]\,
      R => '0'
    );
\spi_state_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => s_axi_clk,
      CE => '1',
      D => \spi_state[9]_i_1_n_0\,
      Q => \spi_state_reg_n_0_[9]\,
      R => '0'
    );
spi_transfer_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => reset,
      I1 => spi_transfer_i_2_n_0,
      I2 => \spi_cnt[5]_i_3_n_0\,
      O => spi_transfer_i_1_n_0
    );
spi_transfer_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF8"
    )
        port map (
      I0 => spi_cs,
      I1 => \spi_out[7]_i_4_n_0\,
      I2 => spi_transfer_i_3_n_0,
      I3 => \spi_state[4]_i_4_n_0\,
      I4 => spi_transfer_i_4_n_0,
      I5 => spi_transfer_reg_n_0,
      O => spi_transfer_i_2_n_0
    );
spi_transfer_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000002"
    )
        port map (
      I0 => spi_transfer_i_5_n_0,
      I1 => p_0_in0,
      I2 => \spi_state_reg_n_0_[6]\,
      I3 => spi_transfer_reg_n_0,
      I4 => \buf_dout[7]_i_2_n_0\,
      I5 => \buf_dout[7]_i_1_n_0\,
      O => spi_transfer_i_3_n_0
    );
spi_transfer_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => buf_dout027_out,
      I1 => buf_dout025_out,
      O => spi_transfer_i_4_n_0
    );
spi_transfer_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000116"
    )
        port map (
      I0 => spi_state(1),
      I1 => spi_state(2),
      I2 => spi_state(4),
      I3 => spi_state(3),
      I4 => spi_state(0),
      O => spi_transfer_i_5_n_0
    );
spi_transfer_reg: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s_axi_clk,
      CE => '1',
      D => spi_transfer_i_1_n_0,
      Q => spi_transfer_reg_n_0,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Block_top_FLASH_SPI_wrapper_0_0_FLASH_SPI_wrapper is
  port (
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    spi_ce_n : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    spi_mosi : out STD_LOGIC;
    spi_sck : out STD_LOGIC;
    reset : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_clk : in STD_LOGIC;
    spi_miso : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Block_top_FLASH_SPI_wrapper_0_0_FLASH_SPI_wrapper : entity is "FLASH_SPI_wrapper";
end Block_top_FLASH_SPI_wrapper_0_0_FLASH_SPI_wrapper;

architecture STRUCTURE of Block_top_FLASH_SPI_wrapper_0_0_FLASH_SPI_wrapper is
begin
flash_inst: entity work.Block_top_FLASH_SPI_wrapper_0_0_FLASH_SPI
     port map (
      reset => reset,
      s_axi_araddr(23 downto 0) => s_axi_araddr(23 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_clk => s_axi_clk,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      spi_ce_n => spi_ce_n,
      spi_miso => spi_miso,
      spi_mosi => spi_mosi,
      spi_sck => spi_sck
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Block_top_FLASH_SPI_wrapper_0_0 is
  port (
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    spi_miso : in STD_LOGIC;
    spi_mosi : out STD_LOGIC;
    spi_sck : out STD_LOGIC;
    spi_ce_n : out STD_LOGIC;
    s_axi_clk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Block_top_FLASH_SPI_wrapper_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Block_top_FLASH_SPI_wrapper_0_0 : entity is "Block_top_FLASH_SPI_wrapper_0_0,FLASH_SPI_wrapper,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of Block_top_FLASH_SPI_wrapper_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of Block_top_FLASH_SPI_wrapper_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of Block_top_FLASH_SPI_wrapper_0_0 : entity is "FLASH_SPI_wrapper,Vivado 2025.2";
end Block_top_FLASH_SPI_wrapper_0_0;

architecture STRUCTURE of Block_top_FLASH_SPI_wrapper_0_0 is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 RST.ARESET RST";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of reset : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME RST.ARESET, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute X_INTERFACE_INFO of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute X_INTERFACE_MODE of s_axi_arvalid : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s_axi_arvalid : signal is "XIL_INTERFACENAME S_AXI, PROTOCOL AXI4LITE, ADDR_WIDTH 32, DATA_WIDTH 32, FREQ_HZ 100000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 0, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN Block_top_mig_axi_wrapper_0_0_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_clk : signal is "xilinx.com:signal:clock:1.0 CLK.ACLK CLK";
  attribute X_INTERFACE_MODE of s_axi_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s_axi_clk : signal is "XIL_INTERFACENAME CLK.ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET s_axi_areset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Block_top_mig_axi_wrapper_0_0_ui_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute X_INTERFACE_INFO of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute X_INTERFACE_INFO of s_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARPROT";
  attribute X_INTERFACE_INFO of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute X_INTERFACE_INFO of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
begin
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.Block_top_FLASH_SPI_wrapper_0_0_FLASH_SPI_wrapper
     port map (
      reset => reset,
      s_axi_araddr(23 downto 0) => s_axi_araddr(23 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_clk => s_axi_clk,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      spi_ce_n => spi_ce_n,
      spi_miso => spi_miso,
      spi_mosi => spi_mosi,
      spi_sck => spi_sck
    );
end STRUCTURE;

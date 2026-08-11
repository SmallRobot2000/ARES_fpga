-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
-- Date        : Tue Aug 11 21:52:52 2026
-- Host        : lovroLinuxM running 64-bit Ubuntu 24.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/lovro/ARES/ARES_fpga/ARES_fpga/ARES_fpga.gen/sources_1/bd/Block_top/ip/Block_top_VDP_0_0/Block_top_VDP_0_0_sim_netlist.vhdl
-- Design      : Block_top_VDP_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tftg256-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Block_top_VDP_0_0_VDP_tile_gen is
  port (
    D : out STD_LOGIC_VECTOR ( 11 downto 0 );
    map_cpu_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    data_cpu_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \FSM_onehot_gen_fin_state_reg[1]\ : out STD_LOGIC;
    \FSM_onehot_gen_fin_state_reg[0]\ : out STD_LOGIC;
    \FSM_onehot_gen_fin_state_reg[2]\ : out STD_LOGIC;
    \v_cnt_reg[5]\ : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 9 downto 0 );
    map_cpu_clk : in STD_LOGIC;
    map_cpu_en : in STD_LOGIC;
    map_cpu_wen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    map_cpu_addr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    map_cpu_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data_cpu_clk : in STD_LOGIC;
    data_cpu_en : in STD_LOGIC;
    data_cpu_wen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    data_cpu_addr : in STD_LOGIC_VECTOR ( 13 downto 0 );
    data_cpu_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    gen_fin_state : in STD_LOGIC_VECTOR ( 0 to 0 );
    gen_fin_pixel0 : in STD_LOGIC;
    gen_fin_data : in STD_LOGIC_VECTOR ( 0 to 0 );
    \map_r_addr_reg[13]_0\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \FSM_onehot_gen_fin_state[2]_i_2_0\ : in STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Block_top_VDP_0_0_VDP_tile_gen : entity is "VDP_tile_gen";
end Block_top_VDP_0_0_VDP_tile_gen;

architecture STRUCTURE of Block_top_VDP_0_0_VDP_tile_gen is
  component Block_top_VDP_0_0_blk_mem_tile_data is
  port (
    clka : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 7 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 12 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 63 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 63 downto 0 );
    clkb : in STD_LOGIC;
    enb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 13 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component Block_top_VDP_0_0_blk_mem_tile_data;
  component Block_top_VDP_0_0_blk_mem_tile_map is
  port (
    clka : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 1 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 13 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 15 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clkb : in STD_LOGIC;
    enb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 12 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component Block_top_VDP_0_0_blk_mem_tile_map;
  component Block_top_VDP_0_0_blk_mem_buf_line is
  port (
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 9 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 15 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clkb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 9 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component Block_top_VDP_0_0_blk_mem_buf_line;
  signal \FSM_onehot_gen_fin_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_fin_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_fin_state[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_fin_state[2]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_fin_state[2]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_fin_state[2]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[5]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[5]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[5]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[5]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[5]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[5]\ : STD_LOGIC;
  signal data_r_addr : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \data_r_addr_reg_n_0_[0]\ : STD_LOGIC;
  signal \data_r_addr_reg_n_0_[10]\ : STD_LOGIC;
  signal \data_r_addr_reg_n_0_[11]\ : STD_LOGIC;
  signal \data_r_addr_reg_n_0_[12]\ : STD_LOGIC;
  signal \data_r_addr_reg_n_0_[1]\ : STD_LOGIC;
  signal \data_r_addr_reg_n_0_[2]\ : STD_LOGIC;
  signal \data_r_addr_reg_n_0_[3]\ : STD_LOGIC;
  signal \data_r_addr_reg_n_0_[4]\ : STD_LOGIC;
  signal \data_r_addr_reg_n_0_[5]\ : STD_LOGIC;
  signal \data_r_addr_reg_n_0_[6]\ : STD_LOGIC;
  signal \data_r_addr_reg_n_0_[7]\ : STD_LOGIC;
  signal \data_r_addr_reg_n_0_[8]\ : STD_LOGIC;
  signal \data_r_addr_reg_n_0_[9]\ : STD_LOGIC;
  signal data_r_data : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal gen_line : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal line_buf_i_10_n_0 : STD_LOGIC;
  signal line_buf_i_11_n_0 : STD_LOGIC;
  signal line_buf_i_12_n_0 : STD_LOGIC;
  signal line_buf_i_13_n_0 : STD_LOGIC;
  signal line_buf_i_14_n_0 : STD_LOGIC;
  signal line_buf_i_15_n_0 : STD_LOGIC;
  signal line_buf_i_16_n_0 : STD_LOGIC;
  signal line_buf_i_17_n_0 : STD_LOGIC;
  signal line_buf_i_18_n_0 : STD_LOGIC;
  signal line_buf_i_19_n_0 : STD_LOGIC;
  signal line_buf_i_20_n_0 : STD_LOGIC;
  signal line_buf_i_21_n_0 : STD_LOGIC;
  signal line_buf_i_22_n_0 : STD_LOGIC;
  signal line_buf_i_23_n_0 : STD_LOGIC;
  signal line_buf_i_24_n_0 : STD_LOGIC;
  signal line_buf_i_25_n_0 : STD_LOGIC;
  signal line_buf_i_26_n_0 : STD_LOGIC;
  signal line_buf_i_27_n_0 : STD_LOGIC;
  signal line_buf_i_28_n_0 : STD_LOGIC;
  signal line_buf_i_29_n_0 : STD_LOGIC;
  signal line_buf_i_30_n_0 : STD_LOGIC;
  signal line_buf_i_31_n_0 : STD_LOGIC;
  signal line_buf_i_32_n_0 : STD_LOGIC;
  signal line_buf_i_33_n_0 : STD_LOGIC;
  signal line_buf_i_34_n_0 : STD_LOGIC;
  signal line_buf_i_8_n_0 : STD_LOGIC;
  signal line_buf_i_9_n_0 : STD_LOGIC;
  signal line_buf_n_16 : STD_LOGIC;
  signal line_buf_n_17 : STD_LOGIC;
  signal line_buf_n_18 : STD_LOGIC;
  signal line_buf_n_19 : STD_LOGIC;
  signal line_done0 : STD_LOGIC;
  signal line_done_i_1_n_0 : STD_LOGIC;
  signal map_a_dout : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal map_r_addr : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \map_r_addr[13]_i_2_n_0\ : STD_LOGIC;
  signal \map_r_addr[7]_i_1_n_0\ : STD_LOGIC;
  signal \map_r_addr[8]_i_1_n_0\ : STD_LOGIC;
  signal \map_r_addr_reg_n_0_[0]\ : STD_LOGIC;
  signal \map_r_addr_reg_n_0_[10]\ : STD_LOGIC;
  signal \map_r_addr_reg_n_0_[11]\ : STD_LOGIC;
  signal \map_r_addr_reg_n_0_[12]\ : STD_LOGIC;
  signal \map_r_addr_reg_n_0_[13]\ : STD_LOGIC;
  signal \map_r_addr_reg_n_0_[1]\ : STD_LOGIC;
  signal \map_r_addr_reg_n_0_[2]\ : STD_LOGIC;
  signal \map_r_addr_reg_n_0_[3]\ : STD_LOGIC;
  signal \map_r_addr_reg_n_0_[4]\ : STD_LOGIC;
  signal \map_r_addr_reg_n_0_[5]\ : STD_LOGIC;
  signal \map_r_addr_reg_n_0_[6]\ : STD_LOGIC;
  signal \map_r_addr_reg_n_0_[7]\ : STD_LOGIC;
  signal \map_r_addr_reg_n_0_[8]\ : STD_LOGIC;
  signal \map_r_addr_reg_n_0_[9]\ : STD_LOGIC;
  signal map_x : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \map_x[0]_i_1_n_0\ : STD_LOGIC;
  signal \map_x[1]_i_1_n_0\ : STD_LOGIC;
  signal \map_x[2]_i_1_n_0\ : STD_LOGIC;
  signal \map_x[3]_i_1_n_0\ : STD_LOGIC;
  signal \map_x[4]_i_1_n_0\ : STD_LOGIC;
  signal \map_x[5]_i_1_n_0\ : STD_LOGIC;
  signal \map_x[5]_i_2_n_0\ : STD_LOGIC;
  signal \map_x[5]_i_3_n_0\ : STD_LOGIC;
  signal \map_x[5]_i_4_n_0\ : STD_LOGIC;
  signal \map_x[6]_i_1_n_0\ : STD_LOGIC;
  signal \map_x[6]_i_2_n_0\ : STD_LOGIC;
  signal \pixel_addr[0]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_addr[1]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_addr[2]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_addr[3]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_addr[4]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_addr[5]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_addr[6]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_addr[7]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_addr[8]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_addr[8]_i_2_n_0\ : STD_LOGIC;
  signal \pixel_addr[8]_i_3_n_0\ : STD_LOGIC;
  signal \pixel_addr[9]_i_1_n_0\ : STD_LOGIC;
  signal \pixel_addr[9]_i_2_n_0\ : STD_LOGIC;
  signal \pixel_addr_reg_n_0_[0]\ : STD_LOGIC;
  signal \pixel_addr_reg_n_0_[1]\ : STD_LOGIC;
  signal \pixel_addr_reg_n_0_[2]\ : STD_LOGIC;
  signal \pixel_addr_reg_n_0_[3]\ : STD_LOGIC;
  signal \pixel_addr_reg_n_0_[4]\ : STD_LOGIC;
  signal \pixel_addr_reg_n_0_[5]\ : STD_LOGIC;
  signal \pixel_addr_reg_n_0_[6]\ : STD_LOGIC;
  signal \pixel_addr_reg_n_0_[7]\ : STD_LOGIC;
  signal \pixel_addr_reg_n_0_[8]\ : STD_LOGIC;
  signal \pixel_addr_reg_n_0_[9]\ : STD_LOGIC;
  signal pixel_data_comb : STD_LOGIC_VECTOR ( 15 downto 2 );
  signal state : STD_LOGIC_VECTOR ( 4 downto 2 );
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal t0_done : STD_LOGIC;
  signal \tile_pixel[0]_i_1_n_0\ : STD_LOGIC;
  signal \tile_pixel[1]_i_1_n_0\ : STD_LOGIC;
  signal \tile_pixel[2]_i_1_n_0\ : STD_LOGIC;
  signal \tile_pixel_reg_n_0_[0]\ : STD_LOGIC;
  signal \tile_pixel_reg_n_0_[1]\ : STD_LOGIC;
  signal \tile_pixel_reg_n_0_[2]\ : STD_LOGIC;
  signal \^v_cnt_reg[5]\ : STD_LOGIC;
  signal NLW_Tile_DATA_mem_dina_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_Tile_MAP_mem_dina_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_Tile_MAP_mem_douta_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 10 );
  signal NLW_line_buf_dinb_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_line_buf_douta_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_onehot_state[5]_i_2\ : label is "soft_lutpair4";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "STATE_C0:000000000100,STATE_C1:000000001000,STATE_C2:000000010000,STATE_C3:000000100000,STATE_START:000000000010,STATE_WAIT:000000000001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "STATE_C0:000000000100,STATE_C1:000000001000,STATE_C2:000000010000,STATE_C3:000000100000,STATE_START:000000000010,STATE_WAIT:000000000001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "STATE_C0:000000000100,STATE_C1:000000001000,STATE_C2:000000010000,STATE_C3:000000100000,STATE_START:000000000010,STATE_WAIT:000000000001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "STATE_C0:000000000100,STATE_C1:000000001000,STATE_C2:000000010000,STATE_C3:000000100000,STATE_START:000000000010,STATE_WAIT:000000000001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[4]\ : label is "STATE_C0:000000000100,STATE_C1:000000001000,STATE_C2:000000010000,STATE_C3:000000100000,STATE_START:000000000010,STATE_WAIT:000000000001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[5]\ : label is "STATE_C0:000000000100,STATE_C1:000000001000,STATE_C2:000000010000,STATE_C3:000000100000,STATE_START:000000000010,STATE_WAIT:000000000001";
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Tile_DATA_mem : label is "blk_mem_tile_data,blk_mem_gen_v8_4_12,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Tile_DATA_mem : label is "yes";
  attribute x_core_info : string;
  attribute x_core_info of Tile_DATA_mem : label is "blk_mem_gen_v8_4_12,Vivado 2025.2";
  attribute CHECK_LICENSE_TYPE of Tile_MAP_mem : label is "blk_mem_tile_map,blk_mem_gen_v8_4_12,{}";
  attribute downgradeipidentifiedwarnings of Tile_MAP_mem : label is "yes";
  attribute x_core_info of Tile_MAP_mem : label is "blk_mem_gen_v8_4_12,Vivado 2025.2";
  attribute SOFT_HLUTNM of \data_r_addr[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \data_r_addr[2]_i_1\ : label is "soft_lutpair10";
  attribute CHECK_LICENSE_TYPE of line_buf : label is "blk_mem_buf_line,blk_mem_gen_v8_4_12,{}";
  attribute downgradeipidentifiedwarnings of line_buf : label is "yes";
  attribute x_core_info of line_buf : label is "blk_mem_gen_v8_4_12,Vivado 2025.2";
  attribute SOFT_HLUTNM of \map_r_addr[11]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \map_r_addr[12]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \map_r_addr[13]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \map_r_addr[7]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \map_r_addr[8]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \map_r_addr[9]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \map_x[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \map_x[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \map_x[5]_i_4\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \pixel_addr[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \pixel_addr[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \pixel_addr[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \pixel_addr[6]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \pixel_addr[8]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \pixel_addr[9]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \pixel_addr[9]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \tile_pixel[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of v_sync_INST_0_i_1 : label is "soft_lutpair8";
begin
  \v_cnt_reg[5]\ <= \^v_cnt_reg[5]\;
\FSM_onehot_gen_fin_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABBBBFFFA0000"
    )
        port map (
      I0 => gen_fin_data(0),
      I1 => gen_fin_state(0),
      I2 => \FSM_onehot_state[5]_i_2_n_0\,
      I3 => \FSM_onehot_gen_fin_state[2]_i_2_n_0\,
      I4 => gen_fin_pixel0,
      I5 => \FSM_onehot_gen_fin_state[2]_i_3_n_0\,
      O => \FSM_onehot_gen_fin_state_reg[2]\
    );
\FSM_onehot_gen_fin_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FFFFFF000100"
    )
        port map (
      I0 => \FSM_onehot_state[5]_i_2_n_0\,
      I1 => \FSM_onehot_state[5]_i_3_n_0\,
      I2 => gen_line(9),
      I3 => gen_fin_pixel0,
      I4 => \FSM_onehot_gen_fin_state[2]_i_3_n_0\,
      I5 => gen_fin_state(0),
      O => \FSM_onehot_gen_fin_state_reg[0]\
    );
\FSM_onehot_gen_fin_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFEFFAAAA0200"
    )
        port map (
      I0 => gen_fin_state(0),
      I1 => \FSM_onehot_state[5]_i_2_n_0\,
      I2 => \FSM_onehot_gen_fin_state[2]_i_2_n_0\,
      I3 => gen_fin_pixel0,
      I4 => \FSM_onehot_gen_fin_state[2]_i_3_n_0\,
      I5 => gen_fin_data(0),
      O => \FSM_onehot_gen_fin_state_reg[1]\
    );
\FSM_onehot_gen_fin_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFB04"
    )
        port map (
      I0 => \^v_cnt_reg[5]\,
      I1 => \map_r_addr[13]_i_2_n_0\,
      I2 => \map_r_addr_reg[13]_0\(8),
      I3 => \map_r_addr_reg[13]_0\(9),
      I4 => \FSM_onehot_state[5]_i_5_n_0\,
      I5 => \FSM_onehot_gen_fin_state[2]_i_4_n_0\,
      O => \FSM_onehot_gen_fin_state[2]_i_2_n_0\
    );
\FSM_onehot_gen_fin_state[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000100"
    )
        port map (
      I0 => \FSM_onehot_gen_fin_state[2]_i_5_n_0\,
      I1 => \FSM_onehot_gen_fin_state[2]_i_6_n_0\,
      I2 => Q(3),
      I3 => gen_fin_data(0),
      I4 => Q(5),
      I5 => \FSM_onehot_gen_fin_state[2]_i_7_n_0\,
      O => \FSM_onehot_gen_fin_state[2]_i_3_n_0\
    );
\FSM_onehot_gen_fin_state[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_gen_fin_state[2]_i_2_0\(1),
      I1 => \FSM_onehot_gen_fin_state[2]_i_2_0\(0),
      I2 => \FSM_onehot_gen_fin_state[2]_i_2_0\(2),
      I3 => \FSM_onehot_gen_fin_state[2]_i_2_0\(3),
      I4 => \FSM_onehot_gen_fin_state[2]_i_2_0\(4),
      O => \FSM_onehot_gen_fin_state[2]_i_4_n_0\
    );
\FSM_onehot_gen_fin_state[2]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => Q(6),
      I1 => Q(4),
      I2 => Q(9),
      I3 => Q(2),
      O => \FSM_onehot_gen_fin_state[2]_i_5_n_0\
    );
\FSM_onehot_gen_fin_state[2]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => Q(8),
      I1 => Q(1),
      I2 => Q(7),
      I3 => Q(0),
      O => \FSM_onehot_gen_fin_state[2]_i_6_n_0\
    );
\FSM_onehot_gen_fin_state[2]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"888B"
    )
        port map (
      I0 => t0_done,
      I1 => gen_fin_state(0),
      I2 => gen_fin_data(0),
      I3 => gen_fin_pixel0,
      O => \FSM_onehot_gen_fin_state[2]_i_7_n_0\
    );
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020000000000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => \pixel_addr_reg_n_0_[8]\,
      I2 => \pixel_addr_reg_n_0_[7]\,
      I3 => \pixel_addr_reg_n_0_[9]\,
      I4 => \FSM_onehot_state[1]_i_2_n_0\,
      I5 => \pixel_addr_reg_n_0_[6]\,
      O => \state__0\(0)
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEEEEAE"
    )
        port map (
      I0 => line_done0,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      I2 => \pixel_addr_reg_n_0_[6]\,
      I3 => \FSM_onehot_state[1]_i_2_n_0\,
      I4 => \FSM_onehot_state[1]_i_3_n_0\,
      O => \state__0\(1)
    );
\FSM_onehot_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \pixel_addr_reg_n_0_[3]\,
      I1 => \pixel_addr_reg_n_0_[0]\,
      I2 => \pixel_addr_reg_n_0_[1]\,
      I3 => \pixel_addr_reg_n_0_[2]\,
      I4 => \pixel_addr_reg_n_0_[5]\,
      I5 => \pixel_addr_reg_n_0_[4]\,
      O => \FSM_onehot_state[1]_i_2_n_0\
    );
\FSM_onehot_state[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \pixel_addr_reg_n_0_[8]\,
      I1 => \pixel_addr_reg_n_0_[7]\,
      I2 => \pixel_addr_reg_n_0_[9]\,
      O => \FSM_onehot_state[1]_i_3_n_0\
    );
\FSM_onehot_state[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0100"
    )
        port map (
      I0 => \FSM_onehot_state[5]_i_2_n_0\,
      I1 => \FSM_onehot_state[5]_i_3_n_0\,
      I2 => gen_line(9),
      I3 => line_done0,
      I4 => \FSM_onehot_state[5]_i_4_n_0\,
      I5 => \state__0\(0),
      O => \FSM_onehot_state[5]_i_1_n_0\
    );
\FSM_onehot_state[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000004"
    )
        port map (
      I0 => \map_r_addr_reg[13]_0\(6),
      I1 => \map_r_addr[13]_i_2_n_0\,
      I2 => \map_r_addr_reg[13]_0\(5),
      I3 => \map_r_addr_reg[13]_0\(8),
      I4 => \map_r_addr_reg[13]_0\(7),
      O => \FSM_onehot_state[5]_i_2_n_0\
    );
\FSM_onehot_state[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_gen_fin_state[2]_i_2_0\(4),
      I1 => \FSM_onehot_gen_fin_state[2]_i_2_0\(3),
      I2 => \FSM_onehot_gen_fin_state[2]_i_2_0\(2),
      I3 => \FSM_onehot_gen_fin_state[2]_i_2_0\(0),
      I4 => \FSM_onehot_gen_fin_state[2]_i_2_0\(1),
      I5 => \FSM_onehot_state[5]_i_5_n_0\,
      O => \FSM_onehot_state[5]_i_3_n_0\
    );
\FSM_onehot_state[5]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \map_x[5]_i_4_n_0\,
      I1 => data_r_addr(0),
      I2 => map_r_addr(0),
      I3 => state(2),
      I4 => state(4),
      O => \FSM_onehot_state[5]_i_4_n_0\
    );
\FSM_onehot_state[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_gen_fin_state[2]_i_2_0\(6),
      I1 => \FSM_onehot_gen_fin_state[2]_i_2_0\(7),
      I2 => \FSM_onehot_gen_fin_state[2]_i_2_0\(5),
      I3 => \FSM_onehot_gen_fin_state[2]_i_2_0\(8),
      I4 => \FSM_onehot_gen_fin_state[2]_i_2_0\(9),
      I5 => \FSM_onehot_gen_fin_state[2]_i_2_0\(10),
      O => \FSM_onehot_state[5]_i_5_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \FSM_onehot_state[5]_i_1_n_0\,
      D => \state__0\(0),
      Q => line_done0,
      R => '0'
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \FSM_onehot_state[5]_i_1_n_0\,
      D => \state__0\(1),
      Q => map_r_addr(0),
      R => '0'
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \FSM_onehot_state[5]_i_1_n_0\,
      D => map_r_addr(0),
      Q => state(2),
      R => '0'
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \FSM_onehot_state[5]_i_1_n_0\,
      D => state(2),
      Q => data_r_addr(0),
      R => '0'
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \FSM_onehot_state[5]_i_1_n_0\,
      D => data_r_addr(0),
      Q => state(4),
      R => '0'
    );
\FSM_onehot_state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \FSM_onehot_state[5]_i_1_n_0\,
      D => state(4),
      Q => \FSM_onehot_state_reg_n_0_[5]\,
      R => '0'
    );
Tile_DATA_mem: component Block_top_VDP_0_0_blk_mem_tile_data
     port map (
      addra(12) => \data_r_addr_reg_n_0_[12]\,
      addra(11) => \data_r_addr_reg_n_0_[11]\,
      addra(10) => \data_r_addr_reg_n_0_[10]\,
      addra(9) => \data_r_addr_reg_n_0_[9]\,
      addra(8) => \data_r_addr_reg_n_0_[8]\,
      addra(7) => \data_r_addr_reg_n_0_[7]\,
      addra(6) => \data_r_addr_reg_n_0_[6]\,
      addra(5) => \data_r_addr_reg_n_0_[5]\,
      addra(4) => \data_r_addr_reg_n_0_[4]\,
      addra(3) => \data_r_addr_reg_n_0_[3]\,
      addra(2) => \data_r_addr_reg_n_0_[2]\,
      addra(1) => \data_r_addr_reg_n_0_[1]\,
      addra(0) => \data_r_addr_reg_n_0_[0]\,
      addrb(13 downto 0) => data_cpu_addr(13 downto 0),
      clka => s_axi_aclk,
      clkb => data_cpu_clk,
      dina(63 downto 0) => NLW_Tile_DATA_mem_dina_UNCONNECTED(63 downto 0),
      dinb(31 downto 0) => data_cpu_din(31 downto 0),
      douta(63 downto 0) => data_r_data(63 downto 0),
      doutb(31 downto 0) => data_cpu_dout(31 downto 0),
      enb => data_cpu_en,
      wea(7 downto 0) => B"00000000",
      web(3 downto 0) => data_cpu_wen(3 downto 0)
    );
Tile_MAP_mem: component Block_top_VDP_0_0_blk_mem_tile_map
     port map (
      addra(13) => \map_r_addr_reg_n_0_[13]\,
      addra(12) => \map_r_addr_reg_n_0_[12]\,
      addra(11) => \map_r_addr_reg_n_0_[11]\,
      addra(10) => \map_r_addr_reg_n_0_[10]\,
      addra(9) => \map_r_addr_reg_n_0_[9]\,
      addra(8) => \map_r_addr_reg_n_0_[8]\,
      addra(7) => \map_r_addr_reg_n_0_[7]\,
      addra(6) => \map_r_addr_reg_n_0_[6]\,
      addra(5) => \map_r_addr_reg_n_0_[5]\,
      addra(4) => \map_r_addr_reg_n_0_[4]\,
      addra(3) => \map_r_addr_reg_n_0_[3]\,
      addra(2) => \map_r_addr_reg_n_0_[2]\,
      addra(1) => \map_r_addr_reg_n_0_[1]\,
      addra(0) => \map_r_addr_reg_n_0_[0]\,
      addrb(12 downto 0) => map_cpu_addr(12 downto 0),
      clka => s_axi_aclk,
      clkb => map_cpu_clk,
      dina(15 downto 0) => NLW_Tile_MAP_mem_dina_UNCONNECTED(15 downto 0),
      dinb(31 downto 0) => map_cpu_din(31 downto 0),
      douta(15 downto 10) => NLW_Tile_MAP_mem_douta_UNCONNECTED(15 downto 10),
      douta(9 downto 0) => map_a_dout(9 downto 0),
      doutb(31 downto 0) => map_cpu_dout(31 downto 0),
      enb => map_cpu_en,
      wea(1 downto 0) => B"00",
      web(3 downto 0) => map_cpu_wen(3 downto 0)
    );
\data_r_addr[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \map_r_addr_reg[13]_0\(1),
      O => gen_line(1)
    );
\data_r_addr[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \map_r_addr_reg[13]_0\(1),
      I1 => \map_r_addr_reg[13]_0\(2),
      O => gen_line(2)
    );
\data_r_addr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_r_addr(0),
      D => \map_r_addr_reg[13]_0\(0),
      Q => \data_r_addr_reg_n_0_[0]\,
      R => '0'
    );
\data_r_addr_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_r_addr(0),
      D => map_a_dout(7),
      Q => \data_r_addr_reg_n_0_[10]\,
      R => '0'
    );
\data_r_addr_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_r_addr(0),
      D => map_a_dout(8),
      Q => \data_r_addr_reg_n_0_[11]\,
      R => '0'
    );
\data_r_addr_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_r_addr(0),
      D => map_a_dout(9),
      Q => \data_r_addr_reg_n_0_[12]\,
      R => '0'
    );
\data_r_addr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_r_addr(0),
      D => gen_line(1),
      Q => \data_r_addr_reg_n_0_[1]\,
      R => '0'
    );
\data_r_addr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_r_addr(0),
      D => gen_line(2),
      Q => \data_r_addr_reg_n_0_[2]\,
      R => '0'
    );
\data_r_addr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_r_addr(0),
      D => map_a_dout(0),
      Q => \data_r_addr_reg_n_0_[3]\,
      R => '0'
    );
\data_r_addr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_r_addr(0),
      D => map_a_dout(1),
      Q => \data_r_addr_reg_n_0_[4]\,
      R => '0'
    );
\data_r_addr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_r_addr(0),
      D => map_a_dout(2),
      Q => \data_r_addr_reg_n_0_[5]\,
      R => '0'
    );
\data_r_addr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_r_addr(0),
      D => map_a_dout(3),
      Q => \data_r_addr_reg_n_0_[6]\,
      R => '0'
    );
\data_r_addr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_r_addr(0),
      D => map_a_dout(4),
      Q => \data_r_addr_reg_n_0_[7]\,
      R => '0'
    );
\data_r_addr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_r_addr(0),
      D => map_a_dout(5),
      Q => \data_r_addr_reg_n_0_[8]\,
      R => '0'
    );
\data_r_addr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => data_r_addr(0),
      D => map_a_dout(6),
      Q => \data_r_addr_reg_n_0_[9]\,
      R => '0'
    );
line_buf: component Block_top_VDP_0_0_blk_mem_buf_line
     port map (
      addra(9) => \pixel_addr_reg_n_0_[9]\,
      addra(8) => \pixel_addr_reg_n_0_[8]\,
      addra(7) => \pixel_addr_reg_n_0_[7]\,
      addra(6) => \pixel_addr_reg_n_0_[6]\,
      addra(5) => \pixel_addr_reg_n_0_[5]\,
      addra(4) => \pixel_addr_reg_n_0_[4]\,
      addra(3) => \pixel_addr_reg_n_0_[3]\,
      addra(2) => \pixel_addr_reg_n_0_[2]\,
      addra(1) => \pixel_addr_reg_n_0_[1]\,
      addra(0) => \pixel_addr_reg_n_0_[0]\,
      addrb(9 downto 0) => Q(9 downto 0),
      clka => s_axi_aclk,
      clkb => s_axi_aclk,
      dina(15) => pixel_data_comb(15),
      dina(14) => pixel_data_comb(15),
      dina(13) => pixel_data_comb(15),
      dina(12) => pixel_data_comb(15),
      dina(11 downto 10) => pixel_data_comb(11 downto 10),
      dina(9) => pixel_data_comb(10),
      dina(8) => pixel_data_comb(10),
      dina(7 downto 6) => pixel_data_comb(7 downto 6),
      dina(5) => pixel_data_comb(6),
      dina(4) => pixel_data_comb(6),
      dina(3 downto 2) => pixel_data_comb(3 downto 2),
      dina(1) => pixel_data_comb(2),
      dina(0) => pixel_data_comb(2),
      dinb(15 downto 0) => NLW_line_buf_dinb_UNCONNECTED(15 downto 0),
      douta(15 downto 0) => NLW_line_buf_douta_UNCONNECTED(15 downto 0),
      doutb(15) => line_buf_n_16,
      doutb(14) => line_buf_n_17,
      doutb(13) => line_buf_n_18,
      doutb(12) => line_buf_n_19,
      doutb(11 downto 0) => D(11 downto 0),
      ena => \FSM_onehot_state_reg_n_0_[5]\,
      wea(0) => '1',
      web(0) => '0'
    );
line_buf_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => line_buf_i_8_n_0,
      I1 => line_buf_i_9_n_0,
      I2 => line_buf_i_10_n_0,
      I3 => line_buf_i_11_n_0,
      I4 => line_buf_i_12_n_0,
      I5 => line_buf_i_13_n_0,
      O => pixel_data_comb(15)
    );
line_buf_i_10: unisim.vcomponents.MUXF7
     port map (
      I0 => line_buf_i_25_n_0,
      I1 => line_buf_i_26_n_0,
      O => line_buf_i_10_n_0,
      S => \tile_pixel_reg_n_0_[2]\
    );
line_buf_i_11: unisim.vcomponents.MUXF7
     port map (
      I0 => line_buf_i_27_n_0,
      I1 => line_buf_i_28_n_0,
      O => line_buf_i_11_n_0,
      S => \tile_pixel_reg_n_0_[2]\
    );
line_buf_i_12: unisim.vcomponents.MUXF7
     port map (
      I0 => line_buf_i_29_n_0,
      I1 => line_buf_i_30_n_0,
      O => line_buf_i_12_n_0,
      S => \tile_pixel_reg_n_0_[2]\
    );
line_buf_i_13: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => line_buf_i_31_n_0,
      I1 => line_buf_i_32_n_0,
      I2 => line_buf_i_33_n_0,
      I3 => \tile_pixel_reg_n_0_[2]\,
      I4 => line_buf_i_34_n_0,
      O => line_buf_i_13_n_0
    );
line_buf_i_14: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => line_buf_i_29_n_0,
      I1 => line_buf_i_30_n_0,
      I2 => line_buf_i_27_n_0,
      I3 => \tile_pixel_reg_n_0_[2]\,
      I4 => line_buf_i_28_n_0,
      O => line_buf_i_14_n_0
    );
line_buf_i_15: unisim.vcomponents.MUXF7
     port map (
      I0 => line_buf_i_21_n_0,
      I1 => line_buf_i_22_n_0,
      O => line_buf_i_15_n_0,
      S => \tile_pixel_reg_n_0_[2]\
    );
line_buf_i_16: unisim.vcomponents.MUXF7
     port map (
      I0 => line_buf_i_23_n_0,
      I1 => line_buf_i_24_n_0,
      O => line_buf_i_16_n_0,
      S => \tile_pixel_reg_n_0_[2]\
    );
line_buf_i_17: unisim.vcomponents.MUXF7
     port map (
      I0 => line_buf_i_33_n_0,
      I1 => line_buf_i_34_n_0,
      O => line_buf_i_17_n_0,
      S => \tile_pixel_reg_n_0_[2]\
    );
line_buf_i_18: unisim.vcomponents.MUXF7
     port map (
      I0 => line_buf_i_31_n_0,
      I1 => line_buf_i_32_n_0,
      O => line_buf_i_18_n_0,
      S => \tile_pixel_reg_n_0_[2]\
    );
line_buf_i_19: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_r_data(27),
      I1 => data_r_data(19),
      I2 => \tile_pixel_reg_n_0_[1]\,
      I3 => data_r_data(11),
      I4 => \tile_pixel_reg_n_0_[0]\,
      I5 => data_r_data(3),
      O => line_buf_i_19_n_0
    );
line_buf_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000E000600060004"
    )
        port map (
      I0 => line_buf_i_8_n_0,
      I1 => line_buf_i_10_n_0,
      I2 => line_buf_i_13_n_0,
      I3 => line_buf_i_14_n_0,
      I4 => line_buf_i_15_n_0,
      I5 => line_buf_i_16_n_0,
      O => pixel_data_comb(11)
    );
line_buf_i_20: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_r_data(59),
      I1 => data_r_data(51),
      I2 => \tile_pixel_reg_n_0_[1]\,
      I3 => data_r_data(43),
      I4 => \tile_pixel_reg_n_0_[0]\,
      I5 => data_r_data(35),
      O => line_buf_i_20_n_0
    );
line_buf_i_21: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_r_data(24),
      I1 => data_r_data(16),
      I2 => \tile_pixel_reg_n_0_[1]\,
      I3 => data_r_data(8),
      I4 => \tile_pixel_reg_n_0_[0]\,
      I5 => data_r_data(0),
      O => line_buf_i_21_n_0
    );
line_buf_i_22: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_r_data(56),
      I1 => data_r_data(48),
      I2 => \tile_pixel_reg_n_0_[1]\,
      I3 => data_r_data(40),
      I4 => \tile_pixel_reg_n_0_[0]\,
      I5 => data_r_data(32),
      O => line_buf_i_22_n_0
    );
line_buf_i_23: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_r_data(26),
      I1 => data_r_data(18),
      I2 => \tile_pixel_reg_n_0_[1]\,
      I3 => data_r_data(10),
      I4 => \tile_pixel_reg_n_0_[0]\,
      I5 => data_r_data(2),
      O => line_buf_i_23_n_0
    );
line_buf_i_24: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_r_data(58),
      I1 => data_r_data(50),
      I2 => \tile_pixel_reg_n_0_[1]\,
      I3 => data_r_data(42),
      I4 => \tile_pixel_reg_n_0_[0]\,
      I5 => data_r_data(34),
      O => line_buf_i_24_n_0
    );
line_buf_i_25: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_r_data(25),
      I1 => data_r_data(17),
      I2 => \tile_pixel_reg_n_0_[1]\,
      I3 => data_r_data(9),
      I4 => \tile_pixel_reg_n_0_[0]\,
      I5 => data_r_data(1),
      O => line_buf_i_25_n_0
    );
line_buf_i_26: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_r_data(57),
      I1 => data_r_data(49),
      I2 => \tile_pixel_reg_n_0_[1]\,
      I3 => data_r_data(41),
      I4 => \tile_pixel_reg_n_0_[0]\,
      I5 => data_r_data(33),
      O => line_buf_i_26_n_0
    );
line_buf_i_27: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_r_data(29),
      I1 => data_r_data(21),
      I2 => \tile_pixel_reg_n_0_[1]\,
      I3 => data_r_data(13),
      I4 => \tile_pixel_reg_n_0_[0]\,
      I5 => data_r_data(5),
      O => line_buf_i_27_n_0
    );
line_buf_i_28: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_r_data(61),
      I1 => data_r_data(53),
      I2 => \tile_pixel_reg_n_0_[1]\,
      I3 => data_r_data(45),
      I4 => \tile_pixel_reg_n_0_[0]\,
      I5 => data_r_data(37),
      O => line_buf_i_28_n_0
    );
line_buf_i_29: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_r_data(28),
      I1 => data_r_data(20),
      I2 => \tile_pixel_reg_n_0_[1]\,
      I3 => data_r_data(12),
      I4 => \tile_pixel_reg_n_0_[0]\,
      I5 => data_r_data(4),
      O => line_buf_i_29_n_0
    );
line_buf_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => line_buf_i_11_n_0,
      I1 => line_buf_i_12_n_0,
      I2 => line_buf_i_17_n_0,
      I3 => line_buf_i_18_n_0,
      I4 => line_buf_i_10_n_0,
      I5 => line_buf_i_8_n_0,
      O => pixel_data_comb(10)
    );
line_buf_i_30: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_r_data(60),
      I1 => data_r_data(52),
      I2 => \tile_pixel_reg_n_0_[1]\,
      I3 => data_r_data(44),
      I4 => \tile_pixel_reg_n_0_[0]\,
      I5 => data_r_data(36),
      O => line_buf_i_30_n_0
    );
line_buf_i_31: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_r_data(30),
      I1 => data_r_data(22),
      I2 => \tile_pixel_reg_n_0_[1]\,
      I3 => data_r_data(14),
      I4 => \tile_pixel_reg_n_0_[0]\,
      I5 => data_r_data(6),
      O => line_buf_i_31_n_0
    );
line_buf_i_32: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_r_data(62),
      I1 => data_r_data(54),
      I2 => \tile_pixel_reg_n_0_[1]\,
      I3 => data_r_data(46),
      I4 => \tile_pixel_reg_n_0_[0]\,
      I5 => data_r_data(38),
      O => line_buf_i_32_n_0
    );
line_buf_i_33: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_r_data(31),
      I1 => data_r_data(23),
      I2 => \tile_pixel_reg_n_0_[1]\,
      I3 => data_r_data(15),
      I4 => \tile_pixel_reg_n_0_[0]\,
      I5 => data_r_data(7),
      O => line_buf_i_33_n_0
    );
line_buf_i_34: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data_r_data(63),
      I1 => data_r_data(55),
      I2 => \tile_pixel_reg_n_0_[1]\,
      I3 => data_r_data(47),
      I4 => \tile_pixel_reg_n_0_[0]\,
      I5 => data_r_data(39),
      O => line_buf_i_34_n_0
    );
line_buf_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000B300000032"
    )
        port map (
      I0 => line_buf_i_8_n_0,
      I1 => line_buf_i_15_n_0,
      I2 => line_buf_i_16_n_0,
      I3 => line_buf_i_14_n_0,
      I4 => line_buf_i_13_n_0,
      I5 => line_buf_i_10_n_0,
      O => pixel_data_comb(7)
    );
line_buf_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010302"
    )
        port map (
      I0 => line_buf_i_16_n_0,
      I1 => line_buf_i_14_n_0,
      I2 => line_buf_i_13_n_0,
      I3 => line_buf_i_10_n_0,
      I4 => line_buf_i_8_n_0,
      I5 => line_buf_i_15_n_0,
      O => pixel_data_comb(6)
    );
line_buf_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000E9000000C2"
    )
        port map (
      I0 => line_buf_i_8_n_0,
      I1 => line_buf_i_15_n_0,
      I2 => line_buf_i_16_n_0,
      I3 => line_buf_i_14_n_0,
      I4 => line_buf_i_13_n_0,
      I5 => line_buf_i_10_n_0,
      O => pixel_data_comb(3)
    );
line_buf_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0003000000000102"
    )
        port map (
      I0 => line_buf_i_10_n_0,
      I1 => line_buf_i_14_n_0,
      I2 => line_buf_i_13_n_0,
      I3 => line_buf_i_8_n_0,
      I4 => line_buf_i_16_n_0,
      I5 => line_buf_i_15_n_0,
      O => pixel_data_comb(2)
    );
line_buf_i_8: unisim.vcomponents.MUXF7
     port map (
      I0 => line_buf_i_19_n_0,
      I1 => line_buf_i_20_n_0,
      O => line_buf_i_8_n_0,
      S => \tile_pixel_reg_n_0_[2]\
    );
line_buf_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => line_buf_i_21_n_0,
      I1 => line_buf_i_22_n_0,
      I2 => line_buf_i_23_n_0,
      I3 => \tile_pixel_reg_n_0_[2]\,
      I4 => line_buf_i_24_n_0,
      O => line_buf_i_9_n_0
    );
line_done_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => t0_done,
      I1 => \state__0\(0),
      I2 => line_done0,
      O => line_done_i_1_n_0
    );
line_done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => line_done_i_1_n_0,
      Q => t0_done,
      R => '0'
    );
\map_r_addr[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF800000007FFF"
    )
        port map (
      I0 => \map_r_addr_reg[13]_0\(3),
      I1 => \map_r_addr_reg[13]_0\(4),
      I2 => \map_r_addr_reg[13]_0\(1),
      I3 => \map_r_addr_reg[13]_0\(2),
      I4 => \map_r_addr_reg[13]_0\(5),
      I5 => \map_r_addr_reg[13]_0\(6),
      O => gen_line(6)
    );
\map_r_addr[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA9A"
    )
        port map (
      I0 => \map_r_addr_reg[13]_0\(7),
      I1 => \map_r_addr_reg[13]_0\(6),
      I2 => \map_r_addr[13]_i_2_n_0\,
      I3 => \map_r_addr_reg[13]_0\(5),
      O => gen_line(7)
    );
\map_r_addr[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFD0002"
    )
        port map (
      I0 => \map_r_addr[13]_i_2_n_0\,
      I1 => \map_r_addr_reg[13]_0\(7),
      I2 => \map_r_addr_reg[13]_0\(6),
      I3 => \map_r_addr_reg[13]_0\(5),
      I4 => \map_r_addr_reg[13]_0\(8),
      O => gen_line(8)
    );
\map_r_addr[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAA9A"
    )
        port map (
      I0 => \map_r_addr_reg[13]_0\(9),
      I1 => \map_r_addr_reg[13]_0\(8),
      I2 => \map_r_addr[13]_i_2_n_0\,
      I3 => \map_r_addr_reg[13]_0\(7),
      I4 => \map_r_addr_reg[13]_0\(6),
      I5 => \map_r_addr_reg[13]_0\(5),
      O => gen_line(9)
    );
\map_r_addr[13]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \map_r_addr_reg[13]_0\(2),
      I1 => \map_r_addr_reg[13]_0\(1),
      I2 => \map_r_addr_reg[13]_0\(4),
      I3 => \map_r_addr_reg[13]_0\(3),
      O => \map_r_addr[13]_i_2_n_0\
    );
\map_r_addr[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \map_r_addr_reg[13]_0\(3),
      I1 => \map_r_addr_reg[13]_0\(2),
      I2 => \map_r_addr_reg[13]_0\(1),
      O => \map_r_addr[7]_i_1_n_0\
    );
\map_r_addr[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \map_r_addr_reg[13]_0\(4),
      I1 => \map_r_addr_reg[13]_0\(3),
      I2 => \map_r_addr_reg[13]_0\(1),
      I3 => \map_r_addr_reg[13]_0\(2),
      O => \map_r_addr[8]_i_1_n_0\
    );
\map_r_addr[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80007FFF"
    )
        port map (
      I0 => \map_r_addr_reg[13]_0\(2),
      I1 => \map_r_addr_reg[13]_0\(1),
      I2 => \map_r_addr_reg[13]_0\(4),
      I3 => \map_r_addr_reg[13]_0\(3),
      I4 => \map_r_addr_reg[13]_0\(5),
      O => gen_line(5)
    );
\map_r_addr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => map_r_addr(0),
      D => map_x(0),
      Q => \map_r_addr_reg_n_0_[0]\,
      R => '0'
    );
\map_r_addr_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => map_r_addr(0),
      D => gen_line(6),
      Q => \map_r_addr_reg_n_0_[10]\,
      R => '0'
    );
\map_r_addr_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => map_r_addr(0),
      D => gen_line(7),
      Q => \map_r_addr_reg_n_0_[11]\,
      R => '0'
    );
\map_r_addr_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => map_r_addr(0),
      D => gen_line(8),
      Q => \map_r_addr_reg_n_0_[12]\,
      R => '0'
    );
\map_r_addr_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => map_r_addr(0),
      D => gen_line(9),
      Q => \map_r_addr_reg_n_0_[13]\,
      R => '0'
    );
\map_r_addr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => map_r_addr(0),
      D => map_x(1),
      Q => \map_r_addr_reg_n_0_[1]\,
      R => '0'
    );
\map_r_addr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => map_r_addr(0),
      D => map_x(2),
      Q => \map_r_addr_reg_n_0_[2]\,
      R => '0'
    );
\map_r_addr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => map_r_addr(0),
      D => map_x(3),
      Q => \map_r_addr_reg_n_0_[3]\,
      R => '0'
    );
\map_r_addr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => map_r_addr(0),
      D => map_x(4),
      Q => \map_r_addr_reg_n_0_[4]\,
      R => '0'
    );
\map_r_addr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => map_r_addr(0),
      D => map_x(5),
      Q => \map_r_addr_reg_n_0_[5]\,
      R => '0'
    );
\map_r_addr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => map_r_addr(0),
      D => map_x(6),
      Q => \map_r_addr_reg_n_0_[6]\,
      R => '0'
    );
\map_r_addr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => map_r_addr(0),
      D => \map_r_addr[7]_i_1_n_0\,
      Q => \map_r_addr_reg_n_0_[7]\,
      R => '0'
    );
\map_r_addr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => map_r_addr(0),
      D => \map_r_addr[8]_i_1_n_0\,
      Q => \map_r_addr_reg_n_0_[8]\,
      R => '0'
    );
\map_r_addr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => map_r_addr(0),
      D => gen_line(5),
      Q => \map_r_addr_reg_n_0_[9]\,
      R => '0'
    );
\map_x[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => map_x(0),
      O => \map_x[0]_i_1_n_0\
    );
\map_x[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F80"
    )
        port map (
      I0 => map_x(0),
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      I2 => \map_x[5]_i_2_n_0\,
      I3 => map_x(1),
      O => \map_x[1]_i_1_n_0\
    );
\map_x[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => map_x(2),
      I2 => map_x(1),
      I3 => map_x(0),
      O => \map_x[2]_i_1_n_0\
    );
\map_x[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28888888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => map_x(3),
      I2 => map_x(2),
      I3 => map_x(0),
      I4 => map_x(1),
      O => \map_x[3]_i_1_n_0\
    );
\map_x[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2888888888888888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => map_x(4),
      I2 => map_x(3),
      I3 => map_x(1),
      I4 => map_x(0),
      I5 => map_x(2),
      O => \map_x[4]_i_1_n_0\
    );
\map_x[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \map_x[5]_i_2_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      O => \map_x[5]_i_1_n_0\
    );
\map_x[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEEEEAE"
    )
        port map (
      I0 => line_done0,
      I1 => \map_x[5]_i_4_n_0\,
      I2 => \pixel_addr_reg_n_0_[6]\,
      I3 => \FSM_onehot_state[1]_i_2_n_0\,
      I4 => \FSM_onehot_state[1]_i_3_n_0\,
      O => \map_x[5]_i_2_n_0\
    );
\map_x[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => map_x(5),
      I1 => map_x(2),
      I2 => map_x(0),
      I3 => map_x(1),
      I4 => map_x(3),
      I5 => map_x(4),
      O => \map_x[5]_i_3_n_0\
    );
\map_x[5]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => \tile_pixel_reg_n_0_[2]\,
      I2 => \tile_pixel_reg_n_0_[0]\,
      I3 => \tile_pixel_reg_n_0_[1]\,
      O => \map_x[5]_i_4_n_0\
    );
\map_x[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"70FF8000"
    )
        port map (
      I0 => \map_x[6]_i_2_n_0\,
      I1 => map_x(5),
      I2 => \FSM_onehot_state_reg_n_0_[5]\,
      I3 => \map_x[5]_i_2_n_0\,
      I4 => map_x(6),
      O => \map_x[6]_i_1_n_0\
    );
\map_x[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => map_x(4),
      I1 => map_x(3),
      I2 => map_x(1),
      I3 => map_x(0),
      I4 => map_x(2),
      O => \map_x[6]_i_2_n_0\
    );
\map_x_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \map_x[5]_i_2_n_0\,
      D => \map_x[0]_i_1_n_0\,
      Q => map_x(0),
      R => '0'
    );
\map_x_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \map_x[1]_i_1_n_0\,
      Q => map_x(1),
      R => '0'
    );
\map_x_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \map_x[5]_i_2_n_0\,
      D => \map_x[2]_i_1_n_0\,
      Q => map_x(2),
      R => '0'
    );
\map_x_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \map_x[5]_i_2_n_0\,
      D => \map_x[3]_i_1_n_0\,
      Q => map_x(3),
      R => '0'
    );
\map_x_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \map_x[5]_i_2_n_0\,
      D => \map_x[4]_i_1_n_0\,
      Q => map_x(4),
      R => '0'
    );
\map_x_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \map_x[5]_i_2_n_0\,
      D => \map_x[5]_i_3_n_0\,
      Q => map_x(5),
      R => \map_x[5]_i_1_n_0\
    );
\map_x_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \map_x[6]_i_1_n_0\,
      Q => map_x(6),
      R => '0'
    );
\pixel_addr[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => \pixel_addr_reg_n_0_[0]\,
      O => \pixel_addr[0]_i_1_n_0\
    );
\pixel_addr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F80"
    )
        port map (
      I0 => \pixel_addr_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      I2 => \state__0\(1),
      I3 => \pixel_addr_reg_n_0_[1]\,
      O => \pixel_addr[1]_i_1_n_0\
    );
\pixel_addr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => \pixel_addr_reg_n_0_[2]\,
      I2 => \pixel_addr_reg_n_0_[0]\,
      I3 => \pixel_addr_reg_n_0_[1]\,
      O => \pixel_addr[2]_i_1_n_0\
    );
\pixel_addr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"28888888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => \pixel_addr_reg_n_0_[3]\,
      I2 => \pixel_addr_reg_n_0_[2]\,
      I3 => \pixel_addr_reg_n_0_[1]\,
      I4 => \pixel_addr_reg_n_0_[0]\,
      O => \pixel_addr[3]_i_1_n_0\
    );
\pixel_addr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2888888888888888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => \pixel_addr_reg_n_0_[4]\,
      I2 => \pixel_addr_reg_n_0_[3]\,
      I3 => \pixel_addr_reg_n_0_[0]\,
      I4 => \pixel_addr_reg_n_0_[1]\,
      I5 => \pixel_addr_reg_n_0_[2]\,
      O => \pixel_addr[4]_i_1_n_0\
    );
\pixel_addr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \pixel_addr_reg_n_0_[5]\,
      I1 => \pixel_addr_reg_n_0_[4]\,
      I2 => \pixel_addr_reg_n_0_[2]\,
      I3 => \pixel_addr_reg_n_0_[1]\,
      I4 => \pixel_addr_reg_n_0_[0]\,
      I5 => \pixel_addr_reg_n_0_[3]\,
      O => \pixel_addr[5]_i_1_n_0\
    );
\pixel_addr[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88882888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => \pixel_addr_reg_n_0_[6]\,
      I2 => \pixel_addr_reg_n_0_[4]\,
      I3 => \pixel_addr_reg_n_0_[5]\,
      I4 => \pixel_addr[8]_i_3_n_0\,
      O => \pixel_addr[6]_i_1_n_0\
    );
\pixel_addr[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8828888888888888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => \pixel_addr_reg_n_0_[7]\,
      I2 => \pixel_addr_reg_n_0_[6]\,
      I3 => \pixel_addr[8]_i_3_n_0\,
      I4 => \pixel_addr_reg_n_0_[5]\,
      I5 => \pixel_addr_reg_n_0_[4]\,
      O => \pixel_addr[7]_i_1_n_0\
    );
\pixel_addr[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      O => \pixel_addr[8]_i_1_n_0\
    );
\pixel_addr[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA6AAAAAAAAAAAAA"
    )
        port map (
      I0 => \pixel_addr_reg_n_0_[8]\,
      I1 => \pixel_addr_reg_n_0_[4]\,
      I2 => \pixel_addr_reg_n_0_[5]\,
      I3 => \pixel_addr[8]_i_3_n_0\,
      I4 => \pixel_addr_reg_n_0_[6]\,
      I5 => \pixel_addr_reg_n_0_[7]\,
      O => \pixel_addr[8]_i_2_n_0\
    );
\pixel_addr[8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \pixel_addr_reg_n_0_[2]\,
      I1 => \pixel_addr_reg_n_0_[1]\,
      I2 => \pixel_addr_reg_n_0_[0]\,
      I3 => \pixel_addr_reg_n_0_[3]\,
      O => \pixel_addr[8]_i_3_n_0\
    );
\pixel_addr[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88882888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => \pixel_addr_reg_n_0_[9]\,
      I2 => \pixel_addr_reg_n_0_[8]\,
      I3 => \pixel_addr_reg_n_0_[7]\,
      I4 => \pixel_addr[9]_i_2_n_0\,
      O => \pixel_addr[9]_i_1_n_0\
    );
\pixel_addr[9]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F7FF"
    )
        port map (
      I0 => \pixel_addr_reg_n_0_[4]\,
      I1 => \pixel_addr_reg_n_0_[5]\,
      I2 => \pixel_addr[8]_i_3_n_0\,
      I3 => \pixel_addr_reg_n_0_[6]\,
      O => \pixel_addr[9]_i_2_n_0\
    );
\pixel_addr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \state__0\(1),
      D => \pixel_addr[0]_i_1_n_0\,
      Q => \pixel_addr_reg_n_0_[0]\,
      R => '0'
    );
\pixel_addr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \pixel_addr[1]_i_1_n_0\,
      Q => \pixel_addr_reg_n_0_[1]\,
      R => '0'
    );
\pixel_addr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \state__0\(1),
      D => \pixel_addr[2]_i_1_n_0\,
      Q => \pixel_addr_reg_n_0_[2]\,
      R => '0'
    );
\pixel_addr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \state__0\(1),
      D => \pixel_addr[3]_i_1_n_0\,
      Q => \pixel_addr_reg_n_0_[3]\,
      R => '0'
    );
\pixel_addr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \state__0\(1),
      D => \pixel_addr[4]_i_1_n_0\,
      Q => \pixel_addr_reg_n_0_[4]\,
      R => '0'
    );
\pixel_addr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \state__0\(1),
      D => \pixel_addr[5]_i_1_n_0\,
      Q => \pixel_addr_reg_n_0_[5]\,
      R => \pixel_addr[8]_i_1_n_0\
    );
\pixel_addr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \state__0\(1),
      D => \pixel_addr[6]_i_1_n_0\,
      Q => \pixel_addr_reg_n_0_[6]\,
      R => '0'
    );
\pixel_addr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \state__0\(1),
      D => \pixel_addr[7]_i_1_n_0\,
      Q => \pixel_addr_reg_n_0_[7]\,
      R => '0'
    );
\pixel_addr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \state__0\(1),
      D => \pixel_addr[8]_i_2_n_0\,
      Q => \pixel_addr_reg_n_0_[8]\,
      R => \pixel_addr[8]_i_1_n_0\
    );
\pixel_addr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \state__0\(1),
      D => \pixel_addr[9]_i_1_n_0\,
      Q => \pixel_addr_reg_n_0_[9]\,
      R => '0'
    );
\tile_pixel[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => \tile_pixel_reg_n_0_[0]\,
      O => \tile_pixel[0]_i_1_n_0\
    );
\tile_pixel[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F80"
    )
        port map (
      I0 => \tile_pixel_reg_n_0_[0]\,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      I2 => \state__0\(1),
      I3 => \tile_pixel_reg_n_0_[1]\,
      O => \tile_pixel[1]_i_1_n_0\
    );
\tile_pixel[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2888"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => \tile_pixel_reg_n_0_[2]\,
      I2 => \tile_pixel_reg_n_0_[1]\,
      I3 => \tile_pixel_reg_n_0_[0]\,
      O => \tile_pixel[2]_i_1_n_0\
    );
\tile_pixel_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \state__0\(1),
      D => \tile_pixel[0]_i_1_n_0\,
      Q => \tile_pixel_reg_n_0_[0]\,
      R => '0'
    );
\tile_pixel_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \tile_pixel[1]_i_1_n_0\,
      Q => \tile_pixel_reg_n_0_[1]\,
      R => '0'
    );
\tile_pixel_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \state__0\(1),
      D => \tile_pixel[2]_i_1_n_0\,
      Q => \tile_pixel_reg_n_0_[2]\,
      R => '0'
    );
v_sync_INST_0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \map_r_addr_reg[13]_0\(5),
      I1 => \map_r_addr_reg[13]_0\(6),
      I2 => \map_r_addr_reg[13]_0\(7),
      O => \^v_cnt_reg[5]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Block_top_VDP_0_0_VDP is
  port (
    map_cpu_addr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    map_cpu_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    map_cpu_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    map_cpu_en : in STD_LOGIC;
    map_cpu_wen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    map_cpu_clk : in STD_LOGIC;
    data_cpu_addr : in STD_LOGIC_VECTOR ( 13 downto 0 );
    data_cpu_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data_cpu_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    data_cpu_en : in STD_LOGIC;
    data_cpu_wen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    data_cpu_clk : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    h_sync : out STD_LOGIC;
    v_sync : out STD_LOGIC;
    vga_r : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_g : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_b : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Block_top_VDP_0_0_VDP : entity is "VDP";
  attribute STATE_C0 : string;
  attribute STATE_C0 of Block_top_VDP_0_0_VDP : entity is "12'b000000000100";
  attribute STATE_C1 : string;
  attribute STATE_C1 of Block_top_VDP_0_0_VDP : entity is "12'b000000001000";
  attribute STATE_C2 : string;
  attribute STATE_C2 of Block_top_VDP_0_0_VDP : entity is "12'b000000010000";
  attribute STATE_START : string;
  attribute STATE_START of Block_top_VDP_0_0_VDP : entity is "12'b000000000010";
  attribute STATE_WAIT : string;
  attribute STATE_WAIT of Block_top_VDP_0_0_VDP : entity is "12'b000000000001";
  attribute VGA_H_ACTIVE : integer;
  attribute VGA_H_ACTIVE of Block_top_VDP_0_0_VDP : entity is 640;
  attribute VGA_H_BACK_PORCH : integer;
  attribute VGA_H_BACK_PORCH of Block_top_VDP_0_0_VDP : entity is 48;
  attribute VGA_H_FRONT_PORCH : integer;
  attribute VGA_H_FRONT_PORCH of Block_top_VDP_0_0_VDP : entity is 16;
  attribute VGA_H_SYNC : integer;
  attribute VGA_H_SYNC of Block_top_VDP_0_0_VDP : entity is 96;
  attribute VGA_H_TOTAL : integer;
  attribute VGA_H_TOTAL of Block_top_VDP_0_0_VDP : entity is 800;
  attribute VGA_V_ACTIVE : integer;
  attribute VGA_V_ACTIVE of Block_top_VDP_0_0_VDP : entity is 480;
  attribute VGA_V_BACK_PORCH : integer;
  attribute VGA_V_BACK_PORCH of Block_top_VDP_0_0_VDP : entity is 31;
  attribute VGA_V_FRONT_PORCH : integer;
  attribute VGA_V_FRONT_PORCH of Block_top_VDP_0_0_VDP : entity is 11;
  attribute VGA_V_SYNC : integer;
  attribute VGA_V_SYNC of Block_top_VDP_0_0_VDP : entity is 2;
  attribute VGA_V_TOTAL : integer;
  attribute VGA_V_TOTAL of Block_top_VDP_0_0_VDP : entity is 524;
end Block_top_VDP_0_0_VDP;

architecture STRUCTURE of Block_top_VDP_0_0_VDP is
  component Block_top_VDP_0_0_blk_mem_fin_line is
  port (
    clka : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 10 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 11 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 11 downto 0 );
    clkb : in STD_LOGIC;
    enb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 10 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 11 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  end component Block_top_VDP_0_0_blk_mem_fin_line;
  signal T0_gen_n_76 : STD_LOGIC;
  signal T0_gen_n_77 : STD_LOGIC;
  signal T0_gen_n_78 : STD_LOGIC;
  signal T0_gen_n_79 : STD_LOGIC;
  signal VGA_clk : STD_LOGIC;
  signal \VGA_clk_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \VGA_clk_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \VGA_clk_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal draw_pixel_addr : STD_LOGIC_VECTOR ( 10 downto 3 );
  signal fin_line_buf_i_1_n_1 : STD_LOGIC;
  signal fin_line_buf_i_1_n_2 : STD_LOGIC;
  signal fin_line_buf_i_1_n_3 : STD_LOGIC;
  signal fin_line_buf_i_2_n_0 : STD_LOGIC;
  signal fin_line_buf_i_2_n_1 : STD_LOGIC;
  signal fin_line_buf_i_2_n_2 : STD_LOGIC;
  signal fin_line_buf_i_2_n_3 : STD_LOGIC;
  signal fin_line_buf_i_3_n_0 : STD_LOGIC;
  signal fin_line_buf_i_4_n_0 : STD_LOGIC;
  signal fin_line_buf_i_5_n_0 : STD_LOGIC;
  signal fin_line_buf_i_6_n_0 : STD_LOGIC;
  signal fin_line_buf_i_7_n_0 : STD_LOGIC;
  signal fin_line_buf_i_8_n_0 : STD_LOGIC;
  signal fin_line_buf_i_9_n_0 : STD_LOGIC;
  signal gen_fin_buf_en_i_1_n_0 : STD_LOGIC;
  signal gen_fin_buf_en_reg_n_0 : STD_LOGIC;
  signal gen_fin_data : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gen_fin_data_reg_n_0_[0]\ : STD_LOGIC;
  signal \gen_fin_data_reg_n_0_[10]\ : STD_LOGIC;
  signal \gen_fin_data_reg_n_0_[11]\ : STD_LOGIC;
  signal \gen_fin_data_reg_n_0_[1]\ : STD_LOGIC;
  signal \gen_fin_data_reg_n_0_[2]\ : STD_LOGIC;
  signal \gen_fin_data_reg_n_0_[3]\ : STD_LOGIC;
  signal \gen_fin_data_reg_n_0_[4]\ : STD_LOGIC;
  signal \gen_fin_data_reg_n_0_[5]\ : STD_LOGIC;
  signal \gen_fin_data_reg_n_0_[6]\ : STD_LOGIC;
  signal \gen_fin_data_reg_n_0_[7]\ : STD_LOGIC;
  signal \gen_fin_data_reg_n_0_[8]\ : STD_LOGIC;
  signal \gen_fin_data_reg_n_0_[9]\ : STD_LOGIC;
  signal gen_fin_pixel0 : STD_LOGIC;
  signal \gen_fin_pixel[3]_i_1_n_0\ : STD_LOGIC;
  signal \gen_fin_pixel[9]_i_2_n_0\ : STD_LOGIC;
  signal gen_fin_pixel_reg : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \gen_fin_pixel_reg1__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \gen_fin_pixel_reg__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal gen_fin_state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \h_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \h_cnt[10]_i_1_n_0\ : STD_LOGIC;
  signal \h_cnt[10]_i_2_n_0\ : STD_LOGIC;
  signal \h_cnt[10]_i_3_n_0\ : STD_LOGIC;
  signal \h_cnt[10]_i_4_n_0\ : STD_LOGIC;
  signal \h_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \h_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \h_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \h_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \h_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \h_cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \h_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \h_cnt[8]_i_1_n_0\ : STD_LOGIC;
  signal \h_cnt[8]_i_2_n_0\ : STD_LOGIC;
  signal \h_cnt[9]_i_1_n_0\ : STD_LOGIC;
  signal h_cnt_reg : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \h_cnt_reg__0\ : STD_LOGIC_VECTOR ( 10 downto 3 );
  signal p_0_in : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal t0_dout : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \v_cnt[10]_i_1_n_0\ : STD_LOGIC;
  signal \v_cnt[10]_i_2_n_0\ : STD_LOGIC;
  signal \v_cnt[10]_i_3_n_0\ : STD_LOGIC;
  signal \v_cnt[10]_i_4_n_0\ : STD_LOGIC;
  signal \v_cnt[10]_i_5_n_0\ : STD_LOGIC;
  signal \v_cnt[10]_i_6_n_0\ : STD_LOGIC;
  signal \v_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \v_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \v_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \v_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \v_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \v_cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \v_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \v_cnt[8]_i_1_n_0\ : STD_LOGIC;
  signal \v_cnt[9]_i_1_n_0\ : STD_LOGIC;
  signal \v_cnt[9]_i_2_n_0\ : STD_LOGIC;
  signal \v_cnt[9]_i_3_n_0\ : STD_LOGIC;
  signal \v_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \v_cnt_reg_n_0_[10]\ : STD_LOGIC;
  signal \v_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \v_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \v_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \v_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \v_cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \v_cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \v_cnt_reg_n_0_[7]\ : STD_LOGIC;
  signal \v_cnt_reg_n_0_[8]\ : STD_LOGIC;
  signal \v_cnt_reg_n_0_[9]\ : STD_LOGIC;
  signal v_sync_INST_0_i_2_n_0 : STD_LOGIC;
  signal \vga_r[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \vga_r[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \vga_r[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \vga_r[3]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \vga_r[3]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \vga_r[3]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal vga_rgb : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_fin_line_buf_doutb_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_fin_line_buf_i_1_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_fin_state_reg[0]\ : label is "STATE_WAIT:000000000001,STATE_START:000000000010,STATE_C0:000000000100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_fin_state_reg[1]\ : label is "STATE_WAIT:000000000001,STATE_START:000000000010,STATE_C0:000000000100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_fin_state_reg[2]\ : label is "STATE_WAIT:000000000001,STATE_START:000000000010,STATE_C0:000000000100,";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \VGA_clk_cnt[0]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \VGA_clk_cnt[1]_i_1\ : label is "soft_lutpair27";
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of fin_line_buf : label is "blk_mem_fin_line,blk_mem_gen_v8_4_12,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of fin_line_buf : label is "yes";
  attribute x_core_info : string;
  attribute x_core_info of fin_line_buf : label is "blk_mem_gen_v8_4_12,Vivado 2025.2";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of fin_line_buf_i_1 : label is 35;
  attribute ADDER_THRESHOLD of fin_line_buf_i_2 : label is 35;
  attribute SOFT_HLUTNM of fin_line_buf_i_3 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \gen_fin_pixel[1]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \gen_fin_pixel[2]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \gen_fin_pixel[3]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \gen_fin_pixel[4]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \gen_fin_pixel[6]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \gen_fin_pixel[7]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \gen_fin_pixel[8]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \gen_fin_pixel[9]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \h_cnt[10]_i_3\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \h_cnt[1]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \h_cnt[2]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \h_cnt[3]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \h_cnt[4]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \h_cnt[6]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \h_cnt[7]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \h_cnt[8]_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \h_cnt[9]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \v_cnt[10]_i_4\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \v_cnt[10]_i_5\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \v_cnt[1]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \v_cnt[2]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \v_cnt[3]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \v_cnt[4]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \v_cnt[6]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \v_cnt[7]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \v_cnt[8]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \v_cnt[9]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \v_cnt[9]_i_3\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \vga_r[3]_INST_0_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \vga_r[3]_INST_0_i_3\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \vga_r[3]_INST_0_i_5\ : label is "soft_lutpair13";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of data_cpu_clk : signal is "xilinx.com:interface:bram:1.0 DATA_CPU_BRAM CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of data_cpu_clk : signal is "XIL_INTERFACENAME DATA_CPU_BRAM, MASTER_TYPE BRAM_CTRL, MEM_SIZE 65536, READ_WRITE_MODE READ_WRITE";
  attribute X_INTERFACE_INFO of data_cpu_en : signal is "xilinx.com:interface:bram:1.0 DATA_CPU_BRAM EN";
  attribute X_INTERFACE_INFO of map_cpu_clk : signal is "xilinx.com:interface:bram:1.0 MAP_CPU_BRAM CLK";
  attribute X_INTERFACE_PARAMETER of map_cpu_clk : signal is "XIL_INTERFACENAME MAP_CPU_BRAM, MASTER_TYPE BRAM_CTRL, MEM_SIZE 32768, READ_WRITE_MODE READ_WRITE";
  attribute X_INTERFACE_INFO of map_cpu_en : signal is "xilinx.com:interface:bram:1.0 MAP_CPU_BRAM EN";
  attribute X_INTERFACE_INFO of data_cpu_addr : signal is "xilinx.com:interface:bram:1.0 DATA_CPU_BRAM ADDR";
  attribute X_INTERFACE_INFO of data_cpu_din : signal is "xilinx.com:interface:bram:1.0 DATA_CPU_BRAM DIN";
  attribute X_INTERFACE_INFO of data_cpu_dout : signal is "xilinx.com:interface:bram:1.0 DATA_CPU_BRAM DOUT";
  attribute X_INTERFACE_INFO of data_cpu_wen : signal is "xilinx.com:interface:bram:1.0 DATA_CPU_BRAM WE";
  attribute X_INTERFACE_INFO of map_cpu_addr : signal is "xilinx.com:interface:bram:1.0 MAP_CPU_BRAM ADDR";
  attribute X_INTERFACE_INFO of map_cpu_din : signal is "xilinx.com:interface:bram:1.0 MAP_CPU_BRAM DIN";
  attribute X_INTERFACE_INFO of map_cpu_dout : signal is "xilinx.com:interface:bram:1.0 MAP_CPU_BRAM DOUT";
  attribute X_INTERFACE_INFO of map_cpu_wen : signal is "xilinx.com:interface:bram:1.0 MAP_CPU_BRAM WE";
begin
\FSM_onehot_gen_fin_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => T0_gen_n_78,
      Q => gen_fin_pixel0,
      R => '0'
    );
\FSM_onehot_gen_fin_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => T0_gen_n_77,
      Q => gen_fin_state(1),
      R => '0'
    );
\FSM_onehot_gen_fin_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => T0_gen_n_76,
      Q => gen_fin_data(0),
      R => '0'
    );
T0_gen: entity work.Block_top_VDP_0_0_VDP_tile_gen
     port map (
      D(11 downto 0) => t0_dout(11 downto 0),
      \FSM_onehot_gen_fin_state[2]_i_2_0\(10 downto 3) => \h_cnt_reg__0\(10 downto 3),
      \FSM_onehot_gen_fin_state[2]_i_2_0\(2 downto 0) => h_cnt_reg(2 downto 0),
      \FSM_onehot_gen_fin_state_reg[0]\ => T0_gen_n_77,
      \FSM_onehot_gen_fin_state_reg[1]\ => T0_gen_n_76,
      \FSM_onehot_gen_fin_state_reg[2]\ => T0_gen_n_78,
      Q(9 downto 0) => gen_fin_pixel_reg(9 downto 0),
      data_cpu_addr(13 downto 0) => data_cpu_addr(13 downto 0),
      data_cpu_clk => data_cpu_clk,
      data_cpu_din(31 downto 0) => data_cpu_din(31 downto 0),
      data_cpu_dout(31 downto 0) => data_cpu_dout(31 downto 0),
      data_cpu_en => data_cpu_en,
      data_cpu_wen(3 downto 0) => data_cpu_wen(3 downto 0),
      gen_fin_data(0) => gen_fin_data(0),
      gen_fin_pixel0 => gen_fin_pixel0,
      gen_fin_state(0) => gen_fin_state(1),
      map_cpu_addr(12 downto 0) => map_cpu_addr(12 downto 0),
      map_cpu_clk => map_cpu_clk,
      map_cpu_din(31 downto 0) => map_cpu_din(31 downto 0),
      map_cpu_dout(31 downto 0) => map_cpu_dout(31 downto 0),
      map_cpu_en => map_cpu_en,
      map_cpu_wen(3 downto 0) => map_cpu_wen(3 downto 0),
      \map_r_addr_reg[13]_0\(9) => \v_cnt_reg_n_0_[9]\,
      \map_r_addr_reg[13]_0\(8) => \v_cnt_reg_n_0_[8]\,
      \map_r_addr_reg[13]_0\(7) => \v_cnt_reg_n_0_[7]\,
      \map_r_addr_reg[13]_0\(6) => \v_cnt_reg_n_0_[6]\,
      \map_r_addr_reg[13]_0\(5) => \v_cnt_reg_n_0_[5]\,
      \map_r_addr_reg[13]_0\(4) => \v_cnt_reg_n_0_[4]\,
      \map_r_addr_reg[13]_0\(3) => \v_cnt_reg_n_0_[3]\,
      \map_r_addr_reg[13]_0\(2) => \v_cnt_reg_n_0_[2]\,
      \map_r_addr_reg[13]_0\(1) => \v_cnt_reg_n_0_[1]\,
      \map_r_addr_reg[13]_0\(0) => \v_cnt_reg_n_0_[0]\,
      s_axi_aclk => s_axi_aclk,
      \v_cnt_reg[5]\ => T0_gen_n_79
    );
\VGA_clk_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VGA_clk_cnt_reg_n_0_[0]\,
      O => \VGA_clk_cnt[0]_i_1_n_0\
    );
\VGA_clk_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \VGA_clk_cnt_reg_n_0_[0]\,
      I1 => VGA_clk,
      O => \VGA_clk_cnt[1]_i_1_n_0\
    );
\VGA_clk_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \VGA_clk_cnt[0]_i_1_n_0\,
      Q => \VGA_clk_cnt_reg_n_0_[0]\,
      R => '0'
    );
\VGA_clk_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \VGA_clk_cnt[1]_i_1_n_0\,
      Q => VGA_clk,
      R => '0'
    );
fin_line_buf: component Block_top_VDP_0_0_blk_mem_fin_line
     port map (
      addra(10 downto 3) => draw_pixel_addr(10 downto 3),
      addra(2 downto 0) => h_cnt_reg(2 downto 0),
      addrb(10) => fin_line_buf_i_3_n_0,
      addrb(9 downto 0) => \gen_fin_pixel_reg1__0\(9 downto 0),
      clka => s_axi_aclk,
      clkb => s_axi_aclk,
      dina(11 downto 0) => B"000000000000",
      dinb(11) => \gen_fin_data_reg_n_0_[11]\,
      dinb(10) => \gen_fin_data_reg_n_0_[10]\,
      dinb(9) => \gen_fin_data_reg_n_0_[9]\,
      dinb(8) => \gen_fin_data_reg_n_0_[8]\,
      dinb(7) => \gen_fin_data_reg_n_0_[7]\,
      dinb(6) => \gen_fin_data_reg_n_0_[6]\,
      dinb(5) => \gen_fin_data_reg_n_0_[5]\,
      dinb(4) => \gen_fin_data_reg_n_0_[4]\,
      dinb(3) => \gen_fin_data_reg_n_0_[3]\,
      dinb(2) => \gen_fin_data_reg_n_0_[2]\,
      dinb(1) => \gen_fin_data_reg_n_0_[1]\,
      dinb(0) => \gen_fin_data_reg_n_0_[0]\,
      douta(11 downto 0) => vga_rgb(11 downto 0),
      doutb(11 downto 0) => NLW_fin_line_buf_doutb_UNCONNECTED(11 downto 0),
      enb => gen_fin_buf_en_reg_n_0,
      wea(0) => '0',
      web(0) => '1'
    );
fin_line_buf_i_1: unisim.vcomponents.CARRY4
     port map (
      CI => fin_line_buf_i_2_n_0,
      CO(3) => NLW_fin_line_buf_i_1_CO_UNCONNECTED(3),
      CO(2) => fin_line_buf_i_1_n_1,
      CO(1) => fin_line_buf_i_1_n_2,
      CO(0) => fin_line_buf_i_1_n_3,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => \h_cnt_reg__0\(9 downto 7),
      O(3 downto 0) => draw_pixel_addr(10 downto 7),
      S(3) => fin_line_buf_i_4_n_0,
      S(2) => fin_line_buf_i_5_n_0,
      S(1) => fin_line_buf_i_6_n_0,
      S(0) => fin_line_buf_i_7_n_0
    );
fin_line_buf_i_2: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => fin_line_buf_i_2_n_0,
      CO(2) => fin_line_buf_i_2_n_1,
      CO(1) => fin_line_buf_i_2_n_2,
      CO(0) => fin_line_buf_i_2_n_3,
      CYINIT => '0',
      DI(3) => \h_cnt_reg__0\(6),
      DI(2) => '0',
      DI(1) => \h_cnt_reg__0\(4),
      DI(0) => '0',
      O(3 downto 0) => draw_pixel_addr(6 downto 3),
      S(3) => fin_line_buf_i_8_n_0,
      S(2) => \h_cnt_reg__0\(5),
      S(1) => fin_line_buf_i_9_n_0,
      S(0) => \h_cnt_reg__0\(3)
    );
fin_line_buf_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \v_cnt_reg_n_0_[0]\,
      O => fin_line_buf_i_3_n_0
    );
fin_line_buf_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \h_cnt_reg__0\(10),
      I1 => \v_cnt_reg_n_0_[0]\,
      O => fin_line_buf_i_4_n_0
    );
fin_line_buf_i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \h_cnt_reg__0\(9),
      O => fin_line_buf_i_5_n_0
    );
fin_line_buf_i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \h_cnt_reg__0\(8),
      O => fin_line_buf_i_6_n_0
    );
fin_line_buf_i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \h_cnt_reg__0\(7),
      O => fin_line_buf_i_7_n_0
    );
fin_line_buf_i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \h_cnt_reg__0\(6),
      O => fin_line_buf_i_8_n_0
    );
fin_line_buf_i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \h_cnt_reg__0\(4),
      O => fin_line_buf_i_9_n_0
    );
gen_fin_buf_en_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"CE"
    )
        port map (
      I0 => gen_fin_buf_en_reg_n_0,
      I1 => gen_fin_data(0),
      I2 => gen_fin_pixel0,
      O => gen_fin_buf_en_i_1_n_0
    );
gen_fin_buf_en_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gen_fin_buf_en_i_1_n_0,
      Q => gen_fin_buf_en_reg_n_0,
      R => '0'
    );
\gen_fin_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => gen_fin_data(0),
      D => t0_dout(0),
      Q => \gen_fin_data_reg_n_0_[0]\,
      R => '0'
    );
\gen_fin_data_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => gen_fin_data(0),
      D => t0_dout(10),
      Q => \gen_fin_data_reg_n_0_[10]\,
      R => '0'
    );
\gen_fin_data_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => gen_fin_data(0),
      D => t0_dout(11),
      Q => \gen_fin_data_reg_n_0_[11]\,
      R => '0'
    );
\gen_fin_data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => gen_fin_data(0),
      D => t0_dout(1),
      Q => \gen_fin_data_reg_n_0_[1]\,
      R => '0'
    );
\gen_fin_data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => gen_fin_data(0),
      D => t0_dout(2),
      Q => \gen_fin_data_reg_n_0_[2]\,
      R => '0'
    );
\gen_fin_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => gen_fin_data(0),
      D => t0_dout(3),
      Q => \gen_fin_data_reg_n_0_[3]\,
      R => '0'
    );
\gen_fin_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => gen_fin_data(0),
      D => t0_dout(4),
      Q => \gen_fin_data_reg_n_0_[4]\,
      R => '0'
    );
\gen_fin_data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => gen_fin_data(0),
      D => t0_dout(5),
      Q => \gen_fin_data_reg_n_0_[5]\,
      R => '0'
    );
\gen_fin_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => gen_fin_data(0),
      D => t0_dout(6),
      Q => \gen_fin_data_reg_n_0_[6]\,
      R => '0'
    );
\gen_fin_data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => gen_fin_data(0),
      D => t0_dout(7),
      Q => \gen_fin_data_reg_n_0_[7]\,
      R => '0'
    );
\gen_fin_data_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => gen_fin_data(0),
      D => t0_dout(8),
      Q => \gen_fin_data_reg_n_0_[8]\,
      R => '0'
    );
\gen_fin_data_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => gen_fin_data(0),
      D => t0_dout(9),
      Q => \gen_fin_data_reg_n_0_[9]\,
      R => '0'
    );
\gen_fin_pixel[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => gen_fin_pixel_reg(0),
      O => p_0_in(0)
    );
\gen_fin_pixel[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => gen_fin_pixel_reg(0),
      I1 => gen_fin_pixel_reg(1),
      O => p_0_in(1)
    );
\gen_fin_pixel[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => gen_fin_pixel_reg(2),
      I1 => gen_fin_pixel_reg(0),
      I2 => gen_fin_pixel_reg(1),
      O => p_0_in(2)
    );
\gen_fin_pixel[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => gen_fin_pixel_reg(3),
      I1 => gen_fin_pixel_reg(2),
      I2 => gen_fin_pixel_reg(0),
      I3 => gen_fin_pixel_reg(1),
      O => \gen_fin_pixel[3]_i_1_n_0\
    );
\gen_fin_pixel[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => gen_fin_pixel_reg(4),
      I1 => gen_fin_pixel_reg(2),
      I2 => gen_fin_pixel_reg(0),
      I3 => gen_fin_pixel_reg(1),
      I4 => gen_fin_pixel_reg(3),
      O => p_0_in(4)
    );
\gen_fin_pixel[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => gen_fin_pixel_reg(3),
      I1 => gen_fin_pixel_reg(1),
      I2 => gen_fin_pixel_reg(0),
      I3 => gen_fin_pixel_reg(2),
      I4 => gen_fin_pixel_reg(4),
      I5 => gen_fin_pixel_reg(5),
      O => p_0_in(5)
    );
\gen_fin_pixel[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => gen_fin_pixel_reg(6),
      I1 => \gen_fin_pixel[9]_i_2_n_0\,
      O => p_0_in(6)
    );
\gen_fin_pixel[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => gen_fin_pixel_reg(7),
      I1 => \gen_fin_pixel[9]_i_2_n_0\,
      I2 => gen_fin_pixel_reg(6),
      O => p_0_in(7)
    );
\gen_fin_pixel[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => gen_fin_pixel_reg(8),
      I1 => gen_fin_pixel_reg(6),
      I2 => \gen_fin_pixel[9]_i_2_n_0\,
      I3 => gen_fin_pixel_reg(7),
      O => p_0_in(8)
    );
\gen_fin_pixel[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => gen_fin_pixel_reg(9),
      I1 => gen_fin_pixel_reg(7),
      I2 => \gen_fin_pixel[9]_i_2_n_0\,
      I3 => gen_fin_pixel_reg(6),
      I4 => gen_fin_pixel_reg(8),
      O => p_0_in(9)
    );
\gen_fin_pixel[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => gen_fin_pixel_reg(5),
      I1 => gen_fin_pixel_reg(4),
      I2 => gen_fin_pixel_reg(2),
      I3 => gen_fin_pixel_reg(0),
      I4 => gen_fin_pixel_reg(1),
      I5 => gen_fin_pixel_reg(3),
      O => \gen_fin_pixel[9]_i_2_n_0\
    );
\gen_fin_pixel_reg1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \gen_fin_pixel_reg__0\(0),
      Q => \gen_fin_pixel_reg1__0\(0),
      R => '0'
    );
\gen_fin_pixel_reg1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \gen_fin_pixel_reg__0\(1),
      Q => \gen_fin_pixel_reg1__0\(1),
      R => '0'
    );
\gen_fin_pixel_reg1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \gen_fin_pixel_reg__0\(2),
      Q => \gen_fin_pixel_reg1__0\(2),
      R => '0'
    );
\gen_fin_pixel_reg1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \gen_fin_pixel_reg__0\(3),
      Q => \gen_fin_pixel_reg1__0\(3),
      R => '0'
    );
\gen_fin_pixel_reg1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \gen_fin_pixel_reg__0\(4),
      Q => \gen_fin_pixel_reg1__0\(4),
      R => '0'
    );
\gen_fin_pixel_reg1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \gen_fin_pixel_reg__0\(5),
      Q => \gen_fin_pixel_reg1__0\(5),
      R => '0'
    );
\gen_fin_pixel_reg1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \gen_fin_pixel_reg__0\(6),
      Q => \gen_fin_pixel_reg1__0\(6),
      R => '0'
    );
\gen_fin_pixel_reg1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \gen_fin_pixel_reg__0\(7),
      Q => \gen_fin_pixel_reg1__0\(7),
      R => '0'
    );
\gen_fin_pixel_reg1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \gen_fin_pixel_reg__0\(8),
      Q => \gen_fin_pixel_reg1__0\(8),
      R => '0'
    );
\gen_fin_pixel_reg1_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \gen_fin_pixel_reg__0\(9),
      Q => \gen_fin_pixel_reg1__0\(9),
      R => '0'
    );
\gen_fin_pixel_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => gen_fin_data(0),
      D => p_0_in(0),
      Q => gen_fin_pixel_reg(0),
      R => gen_fin_pixel0
    );
\gen_fin_pixel_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => gen_fin_data(0),
      D => p_0_in(1),
      Q => gen_fin_pixel_reg(1),
      R => gen_fin_pixel0
    );
\gen_fin_pixel_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => gen_fin_data(0),
      D => p_0_in(2),
      Q => gen_fin_pixel_reg(2),
      R => gen_fin_pixel0
    );
\gen_fin_pixel_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => gen_fin_data(0),
      D => \gen_fin_pixel[3]_i_1_n_0\,
      Q => gen_fin_pixel_reg(3),
      R => gen_fin_pixel0
    );
\gen_fin_pixel_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => gen_fin_data(0),
      D => p_0_in(4),
      Q => gen_fin_pixel_reg(4),
      R => gen_fin_pixel0
    );
\gen_fin_pixel_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => gen_fin_data(0),
      D => p_0_in(5),
      Q => gen_fin_pixel_reg(5),
      R => gen_fin_pixel0
    );
\gen_fin_pixel_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => gen_fin_data(0),
      D => p_0_in(6),
      Q => gen_fin_pixel_reg(6),
      R => gen_fin_pixel0
    );
\gen_fin_pixel_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => gen_fin_data(0),
      D => p_0_in(7),
      Q => gen_fin_pixel_reg(7),
      R => gen_fin_pixel0
    );
\gen_fin_pixel_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => gen_fin_data(0),
      D => p_0_in(8),
      Q => gen_fin_pixel_reg(8),
      R => gen_fin_pixel0
    );
\gen_fin_pixel_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => gen_fin_data(0),
      D => p_0_in(9),
      Q => gen_fin_pixel_reg(9),
      R => gen_fin_pixel0
    );
\gen_fin_pixel_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gen_fin_pixel_reg(0),
      Q => \gen_fin_pixel_reg__0\(0),
      R => '0'
    );
\gen_fin_pixel_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gen_fin_pixel_reg(1),
      Q => \gen_fin_pixel_reg__0\(1),
      R => '0'
    );
\gen_fin_pixel_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gen_fin_pixel_reg(2),
      Q => \gen_fin_pixel_reg__0\(2),
      R => '0'
    );
\gen_fin_pixel_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gen_fin_pixel_reg(3),
      Q => \gen_fin_pixel_reg__0\(3),
      R => '0'
    );
\gen_fin_pixel_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gen_fin_pixel_reg(4),
      Q => \gen_fin_pixel_reg__0\(4),
      R => '0'
    );
\gen_fin_pixel_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gen_fin_pixel_reg(5),
      Q => \gen_fin_pixel_reg__0\(5),
      R => '0'
    );
\gen_fin_pixel_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gen_fin_pixel_reg(6),
      Q => \gen_fin_pixel_reg__0\(6),
      R => '0'
    );
\gen_fin_pixel_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gen_fin_pixel_reg(7),
      Q => \gen_fin_pixel_reg__0\(7),
      R => '0'
    );
\gen_fin_pixel_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gen_fin_pixel_reg(8),
      Q => \gen_fin_pixel_reg__0\(8),
      R => '0'
    );
\gen_fin_pixel_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gen_fin_pixel_reg(9),
      Q => \gen_fin_pixel_reg__0\(9),
      R => '0'
    );
\h_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => h_cnt_reg(0),
      O => \h_cnt[0]_i_1_n_0\
    );
\h_cnt[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAEFFFFFFFF"
    )
        port map (
      I0 => \v_cnt[10]_i_6_n_0\,
      I1 => \v_cnt[10]_i_5_n_0\,
      I2 => \h_cnt_reg__0\(10),
      I3 => \h_cnt[10]_i_3_n_0\,
      I4 => \v_cnt[10]_i_4_n_0\,
      I5 => s_axi_aresetn,
      O => \h_cnt[10]_i_1_n_0\
    );
\h_cnt[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA6AAAAAAA"
    )
        port map (
      I0 => \h_cnt_reg__0\(10),
      I1 => \h_cnt_reg__0\(8),
      I2 => \h_cnt_reg__0\(9),
      I3 => \h_cnt_reg__0\(7),
      I4 => \h_cnt_reg__0\(6),
      I5 => \h_cnt[10]_i_4_n_0\,
      O => \h_cnt[10]_i_2_n_0\
    );
\h_cnt[10]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \h_cnt_reg__0\(8),
      I1 => \h_cnt_reg__0\(9),
      O => \h_cnt[10]_i_3_n_0\
    );
\h_cnt[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \h_cnt_reg__0\(3),
      I1 => h_cnt_reg(1),
      I2 => h_cnt_reg(0),
      I3 => h_cnt_reg(2),
      I4 => \h_cnt_reg__0\(5),
      I5 => \h_cnt_reg__0\(4),
      O => \h_cnt[10]_i_4_n_0\
    );
\h_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => h_cnt_reg(0),
      I1 => h_cnt_reg(1),
      O => \h_cnt[1]_i_1_n_0\
    );
\h_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => h_cnt_reg(2),
      I1 => h_cnt_reg(0),
      I2 => h_cnt_reg(1),
      O => \h_cnt[2]_i_1_n_0\
    );
\h_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \h_cnt_reg__0\(3),
      I1 => h_cnt_reg(1),
      I2 => h_cnt_reg(0),
      I3 => h_cnt_reg(2),
      O => \h_cnt[3]_i_1_n_0\
    );
\h_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \h_cnt_reg__0\(4),
      I1 => \h_cnt_reg__0\(3),
      I2 => h_cnt_reg(1),
      I3 => h_cnt_reg(0),
      I4 => h_cnt_reg(2),
      O => \h_cnt[4]_i_1_n_0\
    );
\h_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \h_cnt_reg__0\(5),
      I1 => h_cnt_reg(2),
      I2 => h_cnt_reg(0),
      I3 => h_cnt_reg(1),
      I4 => \h_cnt_reg__0\(3),
      I5 => \h_cnt_reg__0\(4),
      O => \h_cnt[5]_i_1_n_0\
    );
\h_cnt[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA6A"
    )
        port map (
      I0 => \h_cnt_reg__0\(6),
      I1 => \h_cnt_reg__0\(4),
      I2 => \h_cnt_reg__0\(5),
      I3 => \h_cnt[8]_i_2_n_0\,
      O => \h_cnt[6]_i_1_n_0\
    );
\h_cnt[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9AAAAAAA"
    )
        port map (
      I0 => \h_cnt_reg__0\(7),
      I1 => \h_cnt[8]_i_2_n_0\,
      I2 => \h_cnt_reg__0\(5),
      I3 => \h_cnt_reg__0\(4),
      I4 => \h_cnt_reg__0\(6),
      O => \h_cnt[7]_i_1_n_0\
    );
\h_cnt[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \h_cnt_reg__0\(8),
      I1 => \h_cnt[8]_i_2_n_0\,
      I2 => \h_cnt_reg__0\(5),
      I3 => \h_cnt_reg__0\(4),
      I4 => \h_cnt_reg__0\(6),
      I5 => \h_cnt_reg__0\(7),
      O => \h_cnt[8]_i_1_n_0\
    );
\h_cnt[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => h_cnt_reg(2),
      I1 => h_cnt_reg(0),
      I2 => h_cnt_reg(1),
      I3 => \h_cnt_reg__0\(3),
      O => \h_cnt[8]_i_2_n_0\
    );
\h_cnt[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA6AAA"
    )
        port map (
      I0 => \h_cnt_reg__0\(9),
      I1 => \h_cnt_reg__0\(8),
      I2 => \h_cnt_reg__0\(7),
      I3 => \h_cnt_reg__0\(6),
      I4 => \h_cnt[10]_i_4_n_0\,
      O => \h_cnt[9]_i_1_n_0\
    );
\h_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => VGA_clk,
      CE => '1',
      D => \h_cnt[0]_i_1_n_0\,
      Q => h_cnt_reg(0),
      R => \h_cnt[10]_i_1_n_0\
    );
\h_cnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => VGA_clk,
      CE => '1',
      D => \h_cnt[10]_i_2_n_0\,
      Q => \h_cnt_reg__0\(10),
      R => \h_cnt[10]_i_1_n_0\
    );
\h_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => VGA_clk,
      CE => '1',
      D => \h_cnt[1]_i_1_n_0\,
      Q => h_cnt_reg(1),
      R => \h_cnt[10]_i_1_n_0\
    );
\h_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => VGA_clk,
      CE => '1',
      D => \h_cnt[2]_i_1_n_0\,
      Q => h_cnt_reg(2),
      R => \h_cnt[10]_i_1_n_0\
    );
\h_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => VGA_clk,
      CE => '1',
      D => \h_cnt[3]_i_1_n_0\,
      Q => \h_cnt_reg__0\(3),
      R => \h_cnt[10]_i_1_n_0\
    );
\h_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => VGA_clk,
      CE => '1',
      D => \h_cnt[4]_i_1_n_0\,
      Q => \h_cnt_reg__0\(4),
      R => \h_cnt[10]_i_1_n_0\
    );
\h_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => VGA_clk,
      CE => '1',
      D => \h_cnt[5]_i_1_n_0\,
      Q => \h_cnt_reg__0\(5),
      R => \h_cnt[10]_i_1_n_0\
    );
\h_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => VGA_clk,
      CE => '1',
      D => \h_cnt[6]_i_1_n_0\,
      Q => \h_cnt_reg__0\(6),
      R => \h_cnt[10]_i_1_n_0\
    );
\h_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => VGA_clk,
      CE => '1',
      D => \h_cnt[7]_i_1_n_0\,
      Q => \h_cnt_reg__0\(7),
      R => \h_cnt[10]_i_1_n_0\
    );
\h_cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => VGA_clk,
      CE => '1',
      D => \h_cnt[8]_i_1_n_0\,
      Q => \h_cnt_reg__0\(8),
      R => \h_cnt[10]_i_1_n_0\
    );
\h_cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => VGA_clk,
      CE => '1',
      D => \h_cnt[9]_i_1_n_0\,
      Q => \h_cnt_reg__0\(9),
      R => \h_cnt[10]_i_1_n_0\
    );
h_sync_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0030000000001000"
    )
        port map (
      I0 => \h_cnt_reg__0\(5),
      I1 => \h_cnt_reg__0\(10),
      I2 => \h_cnt_reg__0\(9),
      I3 => \h_cnt_reg__0\(8),
      I4 => \h_cnt_reg__0\(7),
      I5 => \h_cnt_reg__0\(6),
      O => h_sync
    );
\v_cnt[10]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_aresetn,
      O => \v_cnt[10]_i_1_n_0\
    );
\v_cnt[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00400000"
    )
        port map (
      I0 => \v_cnt[10]_i_4_n_0\,
      I1 => \h_cnt_reg__0\(8),
      I2 => \h_cnt_reg__0\(9),
      I3 => \h_cnt_reg__0\(10),
      I4 => \v_cnt[10]_i_5_n_0\,
      I5 => \v_cnt[10]_i_6_n_0\,
      O => \v_cnt[10]_i_2_n_0\
    );
\v_cnt[10]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \v_cnt_reg_n_0_[10]\,
      I1 => \v_cnt_reg_n_0_[9]\,
      I2 => \vga_r[3]_INST_0_i_3_n_0\,
      O => \v_cnt[10]_i_3_n_0\
    );
\v_cnt[10]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \h_cnt_reg__0\(5),
      I1 => \h_cnt_reg__0\(7),
      I2 => \h_cnt_reg__0\(6),
      O => \v_cnt[10]_i_4_n_0\
    );
\v_cnt[10]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \h_cnt_reg__0\(4),
      I1 => \h_cnt_reg__0\(3),
      I2 => h_cnt_reg(1),
      I3 => h_cnt_reg(0),
      I4 => h_cnt_reg(2),
      O => \v_cnt[10]_i_5_n_0\
    );
\v_cnt[10]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010000000"
    )
        port map (
      I0 => T0_gen_n_79,
      I1 => \v_cnt_reg_n_0_[4]\,
      I2 => \v_cnt_reg_n_0_[0]\,
      I3 => \v_cnt_reg_n_0_[1]\,
      I4 => \v_cnt_reg_n_0_[9]\,
      I5 => v_sync_INST_0_i_2_n_0,
      O => \v_cnt[10]_i_6_n_0\
    );
\v_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \v_cnt_reg_n_0_[1]\,
      I1 => \v_cnt_reg_n_0_[0]\,
      O => \v_cnt[1]_i_1_n_0\
    );
\v_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0078"
    )
        port map (
      I0 => \v_cnt_reg_n_0_[1]\,
      I1 => \v_cnt_reg_n_0_[0]\,
      I2 => \v_cnt_reg_n_0_[2]\,
      I3 => \v_cnt[10]_i_6_n_0\,
      O => \v_cnt[2]_i_1_n_0\
    );
\v_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007F80"
    )
        port map (
      I0 => \v_cnt_reg_n_0_[0]\,
      I1 => \v_cnt_reg_n_0_[1]\,
      I2 => \v_cnt_reg_n_0_[2]\,
      I3 => \v_cnt_reg_n_0_[3]\,
      I4 => \v_cnt[10]_i_6_n_0\,
      O => \v_cnt[3]_i_1_n_0\
    );
\v_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \v_cnt_reg_n_0_[4]\,
      I1 => \v_cnt_reg_n_0_[3]\,
      I2 => \v_cnt_reg_n_0_[0]\,
      I3 => \v_cnt_reg_n_0_[1]\,
      I4 => \v_cnt_reg_n_0_[2]\,
      O => \v_cnt[4]_i_1_n_0\
    );
\v_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \v_cnt_reg_n_0_[5]\,
      I1 => \v_cnt_reg_n_0_[4]\,
      I2 => \v_cnt_reg_n_0_[2]\,
      I3 => \v_cnt_reg_n_0_[1]\,
      I4 => \v_cnt_reg_n_0_[0]\,
      I5 => \v_cnt_reg_n_0_[3]\,
      O => \v_cnt[5]_i_1_n_0\
    );
\v_cnt[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A6"
    )
        port map (
      I0 => \v_cnt_reg_n_0_[6]\,
      I1 => \v_cnt_reg_n_0_[5]\,
      I2 => \vga_r[3]_INST_0_i_1_n_0\,
      O => \v_cnt[6]_i_1_n_0\
    );
\v_cnt[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9AAA"
    )
        port map (
      I0 => \v_cnt_reg_n_0_[7]\,
      I1 => \vga_r[3]_INST_0_i_1_n_0\,
      I2 => \v_cnt_reg_n_0_[5]\,
      I3 => \v_cnt_reg_n_0_[6]\,
      O => \v_cnt[7]_i_1_n_0\
    );
\v_cnt[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA6AAAAA"
    )
        port map (
      I0 => \v_cnt_reg_n_0_[8]\,
      I1 => \v_cnt_reg_n_0_[6]\,
      I2 => \v_cnt_reg_n_0_[5]\,
      I3 => \vga_r[3]_INST_0_i_1_n_0\,
      I4 => \v_cnt_reg_n_0_[7]\,
      O => \v_cnt[8]_i_1_n_0\
    );
\v_cnt[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00F7FF00"
    )
        port map (
      I0 => \v_cnt_reg_n_0_[0]\,
      I1 => \v_cnt_reg_n_0_[3]\,
      I2 => \v_cnt[9]_i_2_n_0\,
      I3 => \vga_r[3]_INST_0_i_3_n_0\,
      I4 => \v_cnt_reg_n_0_[9]\,
      O => \v_cnt[9]_i_1_n_0\
    );
\v_cnt[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \v_cnt_reg_n_0_[6]\,
      I1 => \v_cnt_reg_n_0_[2]\,
      I2 => \v_cnt_reg_n_0_[7]\,
      I3 => \v_cnt_reg_n_0_[8]\,
      I4 => \v_cnt[9]_i_3_n_0\,
      O => \v_cnt[9]_i_2_n_0\
    );
\v_cnt[9]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => \v_cnt_reg_n_0_[5]\,
      I1 => \v_cnt_reg_n_0_[4]\,
      I2 => \v_cnt_reg_n_0_[1]\,
      I3 => \v_cnt_reg_n_0_[10]\,
      O => \v_cnt[9]_i_3_n_0\
    );
\v_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => VGA_clk,
      CE => \v_cnt[10]_i_2_n_0\,
      D => fin_line_buf_i_3_n_0,
      Q => \v_cnt_reg_n_0_[0]\,
      R => \v_cnt[10]_i_1_n_0\
    );
\v_cnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => VGA_clk,
      CE => \v_cnt[10]_i_2_n_0\,
      D => \v_cnt[10]_i_3_n_0\,
      Q => \v_cnt_reg_n_0_[10]\,
      R => \v_cnt[10]_i_1_n_0\
    );
\v_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => VGA_clk,
      CE => \v_cnt[10]_i_2_n_0\,
      D => \v_cnt[1]_i_1_n_0\,
      Q => \v_cnt_reg_n_0_[1]\,
      R => \v_cnt[10]_i_1_n_0\
    );
\v_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => VGA_clk,
      CE => \v_cnt[10]_i_2_n_0\,
      D => \v_cnt[2]_i_1_n_0\,
      Q => \v_cnt_reg_n_0_[2]\,
      R => \v_cnt[10]_i_1_n_0\
    );
\v_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => VGA_clk,
      CE => \v_cnt[10]_i_2_n_0\,
      D => \v_cnt[3]_i_1_n_0\,
      Q => \v_cnt_reg_n_0_[3]\,
      R => \v_cnt[10]_i_1_n_0\
    );
\v_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => VGA_clk,
      CE => \v_cnt[10]_i_2_n_0\,
      D => \v_cnt[4]_i_1_n_0\,
      Q => \v_cnt_reg_n_0_[4]\,
      R => \v_cnt[10]_i_1_n_0\
    );
\v_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => VGA_clk,
      CE => \v_cnt[10]_i_2_n_0\,
      D => \v_cnt[5]_i_1_n_0\,
      Q => \v_cnt_reg_n_0_[5]\,
      R => \v_cnt[10]_i_1_n_0\
    );
\v_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => VGA_clk,
      CE => \v_cnt[10]_i_2_n_0\,
      D => \v_cnt[6]_i_1_n_0\,
      Q => \v_cnt_reg_n_0_[6]\,
      R => \v_cnt[10]_i_1_n_0\
    );
\v_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => VGA_clk,
      CE => \v_cnt[10]_i_2_n_0\,
      D => \v_cnt[7]_i_1_n_0\,
      Q => \v_cnt_reg_n_0_[7]\,
      R => \v_cnt[10]_i_1_n_0\
    );
\v_cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => VGA_clk,
      CE => \v_cnt[10]_i_2_n_0\,
      D => \v_cnt[8]_i_1_n_0\,
      Q => \v_cnt_reg_n_0_[8]\,
      R => \v_cnt[10]_i_1_n_0\
    );
\v_cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => VGA_clk,
      CE => \v_cnt[10]_i_2_n_0\,
      D => \v_cnt[9]_i_1_n_0\,
      Q => \v_cnt_reg_n_0_[9]\,
      R => \v_cnt[10]_i_1_n_0\
    );
v_sync_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => T0_gen_n_79,
      I1 => \v_cnt_reg_n_0_[4]\,
      I2 => \v_cnt_reg_n_0_[1]\,
      I3 => \v_cnt_reg_n_0_[9]\,
      I4 => v_sync_INST_0_i_2_n_0,
      O => v_sync
    );
v_sync_INST_0_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => \v_cnt_reg_n_0_[8]\,
      I1 => \v_cnt_reg_n_0_[10]\,
      I2 => \v_cnt_reg_n_0_[3]\,
      I3 => \v_cnt_reg_n_0_[2]\,
      O => v_sync_INST_0_i_2_n_0
    );
\vga_b[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000A8AA"
    )
        port map (
      I0 => vga_rgb(0),
      I1 => \v_cnt_reg_n_0_[8]\,
      I2 => T0_gen_n_79,
      I3 => \vga_r[3]_INST_0_i_1_n_0\,
      I4 => \vga_r[3]_INST_0_i_2_n_0\,
      I5 => \vga_r[3]_INST_0_i_3_n_0\,
      O => vga_b(0)
    );
\vga_b[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000A8AA"
    )
        port map (
      I0 => vga_rgb(1),
      I1 => \v_cnt_reg_n_0_[8]\,
      I2 => T0_gen_n_79,
      I3 => \vga_r[3]_INST_0_i_1_n_0\,
      I4 => \vga_r[3]_INST_0_i_2_n_0\,
      I5 => \vga_r[3]_INST_0_i_3_n_0\,
      O => vga_b(1)
    );
\vga_b[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000A8AA"
    )
        port map (
      I0 => vga_rgb(2),
      I1 => \v_cnt_reg_n_0_[8]\,
      I2 => T0_gen_n_79,
      I3 => \vga_r[3]_INST_0_i_1_n_0\,
      I4 => \vga_r[3]_INST_0_i_2_n_0\,
      I5 => \vga_r[3]_INST_0_i_3_n_0\,
      O => vga_b(2)
    );
\vga_b[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000A8AA"
    )
        port map (
      I0 => vga_rgb(3),
      I1 => \v_cnt_reg_n_0_[8]\,
      I2 => T0_gen_n_79,
      I3 => \vga_r[3]_INST_0_i_1_n_0\,
      I4 => \vga_r[3]_INST_0_i_2_n_0\,
      I5 => \vga_r[3]_INST_0_i_3_n_0\,
      O => vga_b(3)
    );
\vga_g[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000A8AA"
    )
        port map (
      I0 => vga_rgb(4),
      I1 => \v_cnt_reg_n_0_[8]\,
      I2 => T0_gen_n_79,
      I3 => \vga_r[3]_INST_0_i_1_n_0\,
      I4 => \vga_r[3]_INST_0_i_2_n_0\,
      I5 => \vga_r[3]_INST_0_i_3_n_0\,
      O => vga_g(0)
    );
\vga_g[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000A8AA"
    )
        port map (
      I0 => vga_rgb(5),
      I1 => \v_cnt_reg_n_0_[8]\,
      I2 => T0_gen_n_79,
      I3 => \vga_r[3]_INST_0_i_1_n_0\,
      I4 => \vga_r[3]_INST_0_i_2_n_0\,
      I5 => \vga_r[3]_INST_0_i_3_n_0\,
      O => vga_g(1)
    );
\vga_g[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000A8AA"
    )
        port map (
      I0 => vga_rgb(6),
      I1 => \v_cnt_reg_n_0_[8]\,
      I2 => T0_gen_n_79,
      I3 => \vga_r[3]_INST_0_i_1_n_0\,
      I4 => \vga_r[3]_INST_0_i_2_n_0\,
      I5 => \vga_r[3]_INST_0_i_3_n_0\,
      O => vga_g(2)
    );
\vga_g[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000A8AA"
    )
        port map (
      I0 => vga_rgb(7),
      I1 => \v_cnt_reg_n_0_[8]\,
      I2 => T0_gen_n_79,
      I3 => \vga_r[3]_INST_0_i_1_n_0\,
      I4 => \vga_r[3]_INST_0_i_2_n_0\,
      I5 => \vga_r[3]_INST_0_i_3_n_0\,
      O => vga_g(3)
    );
\vga_r[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000A8AA"
    )
        port map (
      I0 => vga_rgb(8),
      I1 => \v_cnt_reg_n_0_[8]\,
      I2 => T0_gen_n_79,
      I3 => \vga_r[3]_INST_0_i_1_n_0\,
      I4 => \vga_r[3]_INST_0_i_2_n_0\,
      I5 => \vga_r[3]_INST_0_i_3_n_0\,
      O => vga_r(0)
    );
\vga_r[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000A8AA"
    )
        port map (
      I0 => vga_rgb(9),
      I1 => \v_cnt_reg_n_0_[8]\,
      I2 => T0_gen_n_79,
      I3 => \vga_r[3]_INST_0_i_1_n_0\,
      I4 => \vga_r[3]_INST_0_i_2_n_0\,
      I5 => \vga_r[3]_INST_0_i_3_n_0\,
      O => vga_r(1)
    );
\vga_r[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000A8AA"
    )
        port map (
      I0 => vga_rgb(10),
      I1 => \v_cnt_reg_n_0_[8]\,
      I2 => T0_gen_n_79,
      I3 => \vga_r[3]_INST_0_i_1_n_0\,
      I4 => \vga_r[3]_INST_0_i_2_n_0\,
      I5 => \vga_r[3]_INST_0_i_3_n_0\,
      O => vga_r(2)
    );
\vga_r[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000A8AA"
    )
        port map (
      I0 => vga_rgb(11),
      I1 => \v_cnt_reg_n_0_[8]\,
      I2 => T0_gen_n_79,
      I3 => \vga_r[3]_INST_0_i_1_n_0\,
      I4 => \vga_r[3]_INST_0_i_2_n_0\,
      I5 => \vga_r[3]_INST_0_i_3_n_0\,
      O => vga_r(3)
    );
\vga_r[3]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \v_cnt_reg_n_0_[3]\,
      I1 => \v_cnt_reg_n_0_[0]\,
      I2 => \v_cnt_reg_n_0_[1]\,
      I3 => \v_cnt_reg_n_0_[2]\,
      I4 => \v_cnt_reg_n_0_[4]\,
      O => \vga_r[3]_INST_0_i_1_n_0\
    );
\vga_r[3]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFEFFFFFFFE"
    )
        port map (
      I0 => \vga_r[3]_INST_0_i_4_n_0\,
      I1 => \h_cnt_reg__0\(10),
      I2 => \v_cnt_reg_n_0_[10]\,
      I3 => \v_cnt_reg_n_0_[9]\,
      I4 => \vga_r[3]_INST_0_i_5_n_0\,
      I5 => \vga_r[3]_INST_0_i_6_n_0\,
      O => \vga_r[3]_INST_0_i_2_n_0\
    );
\vga_r[3]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => \v_cnt_reg_n_0_[8]\,
      I1 => \v_cnt_reg_n_0_[6]\,
      I2 => \v_cnt_reg_n_0_[5]\,
      I3 => \vga_r[3]_INST_0_i_1_n_0\,
      I4 => \v_cnt_reg_n_0_[7]\,
      O => \vga_r[3]_INST_0_i_3_n_0\
    );
\vga_r[3]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA8888AAAA8000"
    )
        port map (
      I0 => \h_cnt_reg__0\(9),
      I1 => \h_cnt_reg__0\(7),
      I2 => \h_cnt_reg__0\(5),
      I3 => \h_cnt_reg__0\(4),
      I4 => \h_cnt_reg__0\(8),
      I5 => \h_cnt_reg__0\(6),
      O => \vga_r[3]_INST_0_i_4_n_0\
    );
\vga_r[3]_INST_0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0007"
    )
        port map (
      I0 => \h_cnt_reg__0\(5),
      I1 => \h_cnt_reg__0\(4),
      I2 => \h_cnt_reg__0\(7),
      I3 => \h_cnt_reg__0\(6),
      O => \vga_r[3]_INST_0_i_5_n_0\
    );
\vga_r[3]_INST_0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \h_cnt_reg__0\(10),
      I1 => \h_cnt_reg__0\(9),
      I2 => \h_cnt_reg__0\(8),
      O => \vga_r[3]_INST_0_i_6_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Block_top_VDP_0_0 is
  port (
    map_cpu_addr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    map_cpu_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    map_cpu_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    map_cpu_en : in STD_LOGIC;
    map_cpu_wen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    map_cpu_clk : in STD_LOGIC;
    data_cpu_addr : in STD_LOGIC_VECTOR ( 13 downto 0 );
    data_cpu_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data_cpu_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    data_cpu_en : in STD_LOGIC;
    data_cpu_wen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    data_cpu_clk : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    h_sync : out STD_LOGIC;
    v_sync : out STD_LOGIC;
    vga_r : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_g : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_b : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Block_top_VDP_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Block_top_VDP_0_0 : entity is "Block_top_VDP_0_0,VDP,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of Block_top_VDP_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of Block_top_VDP_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of Block_top_VDP_0_0 : entity is "VDP,Vivado 2025.2";
end Block_top_VDP_0_0;

architecture STRUCTURE of Block_top_VDP_0_0 is
  attribute STATE_C0 : string;
  attribute STATE_C0 of inst : label is "12'b000000000100";
  attribute STATE_C1 : string;
  attribute STATE_C1 of inst : label is "12'b000000001000";
  attribute STATE_C2 : string;
  attribute STATE_C2 of inst : label is "12'b000000010000";
  attribute STATE_START : string;
  attribute STATE_START of inst : label is "12'b000000000010";
  attribute STATE_WAIT : string;
  attribute STATE_WAIT of inst : label is "12'b000000000001";
  attribute VGA_H_ACTIVE : integer;
  attribute VGA_H_ACTIVE of inst : label is 640;
  attribute VGA_H_BACK_PORCH : integer;
  attribute VGA_H_BACK_PORCH of inst : label is 48;
  attribute VGA_H_FRONT_PORCH : integer;
  attribute VGA_H_FRONT_PORCH of inst : label is 16;
  attribute VGA_H_SYNC : integer;
  attribute VGA_H_SYNC of inst : label is 96;
  attribute VGA_H_TOTAL : integer;
  attribute VGA_H_TOTAL of inst : label is 800;
  attribute VGA_V_ACTIVE : integer;
  attribute VGA_V_ACTIVE of inst : label is 480;
  attribute VGA_V_BACK_PORCH : integer;
  attribute VGA_V_BACK_PORCH of inst : label is 31;
  attribute VGA_V_FRONT_PORCH : integer;
  attribute VGA_V_FRONT_PORCH of inst : label is 11;
  attribute VGA_V_SYNC : integer;
  attribute VGA_V_SYNC of inst : label is 2;
  attribute VGA_V_TOTAL : integer;
  attribute VGA_V_TOTAL of inst : label is 524;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of data_cpu_clk : signal is "xilinx.com:interface:bram:1.0 DATA_CPU_BRAM CLK";
  attribute X_INTERFACE_INFO of data_cpu_en : signal is "xilinx.com:interface:bram:1.0 DATA_CPU_BRAM EN";
  attribute X_INTERFACE_INFO of map_cpu_clk : signal is "xilinx.com:interface:bram:1.0 MAP_CPU_BRAM CLK";
  attribute X_INTERFACE_INFO of map_cpu_en : signal is "xilinx.com:interface:bram:1.0 MAP_CPU_BRAM EN";
  attribute X_INTERFACE_INFO of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 s_axi_aclk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of s_axi_aclk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of s_axi_aclk : signal is "XIL_INTERFACENAME s_axi_aclk, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Block_top_mig_axi_wrapper_0_0_ui_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 s_axi_aresetn RST";
  attribute X_INTERFACE_MODE of s_axi_aresetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s_axi_aresetn : signal is "XIL_INTERFACENAME s_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of data_cpu_addr : signal is "xilinx.com:interface:bram:1.0 DATA_CPU_BRAM ADDR";
  attribute X_INTERFACE_MODE of data_cpu_addr : signal is "slave";
  attribute X_INTERFACE_PARAMETER of data_cpu_addr : signal is "XIL_INTERFACENAME DATA_CPU_BRAM, MASTER_TYPE BRAM_CTRL, MEM_SIZE 65536, READ_WRITE_MODE READ_WRITE, MEM_WIDTH 32, MEM_ECC NONE, READ_LATENCY 1";
  attribute X_INTERFACE_INFO of data_cpu_din : signal is "xilinx.com:interface:bram:1.0 DATA_CPU_BRAM DIN";
  attribute X_INTERFACE_INFO of data_cpu_dout : signal is "xilinx.com:interface:bram:1.0 DATA_CPU_BRAM DOUT";
  attribute X_INTERFACE_INFO of data_cpu_wen : signal is "xilinx.com:interface:bram:1.0 DATA_CPU_BRAM WE";
  attribute X_INTERFACE_INFO of map_cpu_addr : signal is "xilinx.com:interface:bram:1.0 MAP_CPU_BRAM ADDR";
  attribute X_INTERFACE_MODE of map_cpu_addr : signal is "slave";
  attribute X_INTERFACE_PARAMETER of map_cpu_addr : signal is "XIL_INTERFACENAME MAP_CPU_BRAM, MASTER_TYPE BRAM_CTRL, MEM_SIZE 32768, READ_WRITE_MODE READ_WRITE, MEM_WIDTH 32, MEM_ECC NONE, READ_LATENCY 1";
  attribute X_INTERFACE_INFO of map_cpu_din : signal is "xilinx.com:interface:bram:1.0 MAP_CPU_BRAM DIN";
  attribute X_INTERFACE_INFO of map_cpu_dout : signal is "xilinx.com:interface:bram:1.0 MAP_CPU_BRAM DOUT";
  attribute X_INTERFACE_INFO of map_cpu_wen : signal is "xilinx.com:interface:bram:1.0 MAP_CPU_BRAM WE";
begin
inst: entity work.Block_top_VDP_0_0_VDP
     port map (
      data_cpu_addr(13 downto 0) => data_cpu_addr(13 downto 0),
      data_cpu_clk => data_cpu_clk,
      data_cpu_din(31 downto 0) => data_cpu_din(31 downto 0),
      data_cpu_dout(31 downto 0) => data_cpu_dout(31 downto 0),
      data_cpu_en => data_cpu_en,
      data_cpu_wen(3 downto 0) => data_cpu_wen(3 downto 0),
      h_sync => h_sync,
      map_cpu_addr(12 downto 0) => map_cpu_addr(12 downto 0),
      map_cpu_clk => map_cpu_clk,
      map_cpu_din(31 downto 0) => map_cpu_din(31 downto 0),
      map_cpu_dout(31 downto 0) => map_cpu_dout(31 downto 0),
      map_cpu_en => map_cpu_en,
      map_cpu_wen(3 downto 0) => map_cpu_wen(3 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      v_sync => v_sync,
      vga_b(3 downto 0) => vga_b(3 downto 0),
      vga_g(3 downto 0) => vga_g(3 downto 0),
      vga_r(3 downto 0) => vga_r(3 downto 0)
    );
end STRUCTURE;

-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
-- Date        : Mon Jul 27 16:30:14 2026
-- Host        : lovroRadiona running 64-bit Ubuntu 24.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim {/home/lovro/Documents/Alchistry_Labs/DDR3 test/cores/Alchitry
--               AMIX_RISCV/Alchitry
--               AMIX_RISCV.gen/sources_1/bd/Block_top/bd/CPU_block_inst_1/ip/CPU_block_inst_1_CPU_IO_converter_0_0/CPU_block_inst_1_CPU_IO_converter_0_0_sim_netlist.vhdl}
-- Design      : CPU_block_inst_1_CPU_IO_converter_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tftg256-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity CPU_block_inst_1_CPU_IO_converter_0_0_CPU_IO_converter is
  port (
    m00_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    cpu_io_cmd_ready : out STD_LOGIC;
    cpu_io_rsp_valid : out STD_LOGIC;
    cpu_io_rsp_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_awvalid : out STD_LOGIC;
    m00_axi_wvalid : out STD_LOGIC;
    m00_axi_bready : out STD_LOGIC;
    m00_axi_arvalid : out STD_LOGIC;
    m00_axi_rready : out STD_LOGIC;
    cpu_io_cmd_write : in STD_LOGIC;
    m00_axi_aclk : in STD_LOGIC;
    cpu_io_cmd_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    cpu_io_cmd_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    cpu_io_cmd_mask : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    cpu_io_cmd_valid : in STD_LOGIC;
    m00_axi_awready : in STD_LOGIC;
    m00_axi_bvalid : in STD_LOGIC;
    m00_axi_rvalid : in STD_LOGIC;
    m00_axi_wready : in STD_LOGIC;
    m00_axi_arready : in STD_LOGIC;
    m00_axi_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of CPU_block_inst_1_CPU_IO_converter_0_0_CPU_IO_converter : entity is "CPU_IO_converter";
end CPU_block_inst_1_CPU_IO_converter_0_0_CPU_IO_converter;

architecture STRUCTURE of CPU_block_inst_1_CPU_IO_converter_0_0_CPU_IO_converter is
  signal \FSM_onehot_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[5]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[5]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[5]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \cpu_io_rsp_din[31]_i_1_n_0\ : STD_LOGIC;
  signal cpu_io_rsp_valid_i_1_n_0 : STD_LOGIC;
  signal \m00_axi_araddr[31]_i_1_n_0\ : STD_LOGIC;
  signal \^m00_axi_arvalid\ : STD_LOGIC;
  signal m00_axi_arvalid_i_1_n_0 : STD_LOGIC;
  signal \m00_axi_awaddr[31]_i_1_n_0\ : STD_LOGIC;
  signal \m00_axi_awaddr[31]_i_2_n_0\ : STD_LOGIC;
  signal \^m00_axi_awvalid\ : STD_LOGIC;
  signal m00_axi_awvalid_i_1_n_0 : STD_LOGIC;
  signal \^m00_axi_bready\ : STD_LOGIC;
  signal m00_axi_bready_i_1_n_0 : STD_LOGIC;
  signal \^m00_axi_rready\ : STD_LOGIC;
  signal m00_axi_rready_i_1_n_0 : STD_LOGIC;
  signal \m00_axi_wdata[31]_i_1_n_0\ : STD_LOGIC;
  signal \^m00_axi_wvalid\ : STD_LOGIC;
  signal m00_axi_wvalid_i_1_n_0 : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 5 downto 1 );
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_onehot_state[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_onehot_state[5]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_onehot_state[5]_i_3\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "STATE_IDLE:0000000000000001,STATE_W:0000000000000100,STATE_B:0000000000001000,STATE_R:0000000000100000,STATE_AR:0000000000010000,STATE_AW:0000000000000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "STATE_IDLE:0000000000000001,STATE_W:0000000000000100,STATE_B:0000000000001000,STATE_R:0000000000100000,STATE_AR:0000000000010000,STATE_AW:0000000000000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "STATE_IDLE:0000000000000001,STATE_W:0000000000000100,STATE_B:0000000000001000,STATE_R:0000000000100000,STATE_AR:0000000000010000,STATE_AW:0000000000000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "STATE_IDLE:0000000000000001,STATE_W:0000000000000100,STATE_B:0000000000001000,STATE_R:0000000000100000,STATE_AR:0000000000010000,STATE_AW:0000000000000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[4]\ : label is "STATE_IDLE:0000000000000001,STATE_W:0000000000000100,STATE_B:0000000000001000,STATE_R:0000000000100000,STATE_AR:0000000000010000,STATE_AW:0000000000000010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[5]\ : label is "STATE_IDLE:0000000000000001,STATE_W:0000000000000100,STATE_B:0000000000001000,STATE_R:0000000000100000,STATE_AR:0000000000010000,STATE_AW:0000000000000010";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of \m00_axi_araddr_reg[0]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR";
  attribute X_INTERFACE_INFO of \m00_axi_araddr_reg[10]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR";
  attribute X_INTERFACE_INFO of \m00_axi_araddr_reg[11]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR";
  attribute X_INTERFACE_INFO of \m00_axi_araddr_reg[12]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR";
  attribute X_INTERFACE_INFO of \m00_axi_araddr_reg[13]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR";
  attribute X_INTERFACE_INFO of \m00_axi_araddr_reg[14]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR";
  attribute X_INTERFACE_INFO of \m00_axi_araddr_reg[15]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR";
  attribute X_INTERFACE_INFO of \m00_axi_araddr_reg[16]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR";
  attribute X_INTERFACE_INFO of \m00_axi_araddr_reg[17]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR";
  attribute X_INTERFACE_INFO of \m00_axi_araddr_reg[18]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR";
  attribute X_INTERFACE_INFO of \m00_axi_araddr_reg[19]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR";
  attribute X_INTERFACE_INFO of \m00_axi_araddr_reg[1]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR";
  attribute X_INTERFACE_INFO of \m00_axi_araddr_reg[20]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR";
  attribute X_INTERFACE_INFO of \m00_axi_araddr_reg[21]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR";
  attribute X_INTERFACE_INFO of \m00_axi_araddr_reg[22]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR";
  attribute X_INTERFACE_INFO of \m00_axi_araddr_reg[23]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR";
  attribute X_INTERFACE_INFO of \m00_axi_araddr_reg[24]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR";
  attribute X_INTERFACE_INFO of \m00_axi_araddr_reg[25]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR";
  attribute X_INTERFACE_INFO of \m00_axi_araddr_reg[26]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR";
  attribute X_INTERFACE_INFO of \m00_axi_araddr_reg[27]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR";
  attribute X_INTERFACE_INFO of \m00_axi_araddr_reg[28]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR";
  attribute X_INTERFACE_INFO of \m00_axi_araddr_reg[29]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR";
  attribute X_INTERFACE_INFO of \m00_axi_araddr_reg[2]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR";
  attribute X_INTERFACE_INFO of \m00_axi_araddr_reg[30]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR";
  attribute X_INTERFACE_INFO of \m00_axi_araddr_reg[31]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR";
  attribute X_INTERFACE_INFO of \m00_axi_araddr_reg[3]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR";
  attribute X_INTERFACE_INFO of \m00_axi_araddr_reg[4]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR";
  attribute X_INTERFACE_INFO of \m00_axi_araddr_reg[5]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR";
  attribute X_INTERFACE_INFO of \m00_axi_araddr_reg[6]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR";
  attribute X_INTERFACE_INFO of \m00_axi_araddr_reg[7]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR";
  attribute X_INTERFACE_INFO of \m00_axi_araddr_reg[8]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR";
  attribute X_INTERFACE_INFO of \m00_axi_araddr_reg[9]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR";
  attribute X_INTERFACE_INFO of m00_axi_arvalid_reg : label is "xilinx.com:interface:aximm:1.0 M00_AXI ARVALID";
  attribute X_INTERFACE_INFO of \m00_axi_awaddr_reg[0]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of \m00_axi_awaddr_reg[0]\ : label is "master";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of \m00_axi_awaddr_reg[0]\ : label is "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BIT    S_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of \m00_axi_awaddr_reg[10]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR";
  attribute X_INTERFACE_MODE of \m00_axi_awaddr_reg[10]\ : label is "master";
  attribute X_INTERFACE_PARAMETER of \m00_axi_awaddr_reg[10]\ : label is "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BIT    S_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of \m00_axi_awaddr_reg[11]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR";
  attribute X_INTERFACE_MODE of \m00_axi_awaddr_reg[11]\ : label is "master";
  attribute X_INTERFACE_PARAMETER of \m00_axi_awaddr_reg[11]\ : label is "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BIT    S_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of \m00_axi_awaddr_reg[12]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR";
  attribute X_INTERFACE_MODE of \m00_axi_awaddr_reg[12]\ : label is "master";
  attribute X_INTERFACE_PARAMETER of \m00_axi_awaddr_reg[12]\ : label is "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BIT    S_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of \m00_axi_awaddr_reg[13]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR";
  attribute X_INTERFACE_MODE of \m00_axi_awaddr_reg[13]\ : label is "master";
  attribute X_INTERFACE_PARAMETER of \m00_axi_awaddr_reg[13]\ : label is "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BIT    S_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of \m00_axi_awaddr_reg[14]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR";
  attribute X_INTERFACE_MODE of \m00_axi_awaddr_reg[14]\ : label is "master";
  attribute X_INTERFACE_PARAMETER of \m00_axi_awaddr_reg[14]\ : label is "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BIT    S_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of \m00_axi_awaddr_reg[15]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR";
  attribute X_INTERFACE_MODE of \m00_axi_awaddr_reg[15]\ : label is "master";
  attribute X_INTERFACE_PARAMETER of \m00_axi_awaddr_reg[15]\ : label is "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BIT    S_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of \m00_axi_awaddr_reg[16]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR";
  attribute X_INTERFACE_MODE of \m00_axi_awaddr_reg[16]\ : label is "master";
  attribute X_INTERFACE_PARAMETER of \m00_axi_awaddr_reg[16]\ : label is "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BIT    S_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of \m00_axi_awaddr_reg[17]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR";
  attribute X_INTERFACE_MODE of \m00_axi_awaddr_reg[17]\ : label is "master";
  attribute X_INTERFACE_PARAMETER of \m00_axi_awaddr_reg[17]\ : label is "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BIT    S_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of \m00_axi_awaddr_reg[18]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR";
  attribute X_INTERFACE_MODE of \m00_axi_awaddr_reg[18]\ : label is "master";
  attribute X_INTERFACE_PARAMETER of \m00_axi_awaddr_reg[18]\ : label is "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BIT    S_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of \m00_axi_awaddr_reg[19]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR";
  attribute X_INTERFACE_MODE of \m00_axi_awaddr_reg[19]\ : label is "master";
  attribute X_INTERFACE_PARAMETER of \m00_axi_awaddr_reg[19]\ : label is "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BIT    S_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of \m00_axi_awaddr_reg[1]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR";
  attribute X_INTERFACE_MODE of \m00_axi_awaddr_reg[1]\ : label is "master";
  attribute X_INTERFACE_PARAMETER of \m00_axi_awaddr_reg[1]\ : label is "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BIT    S_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of \m00_axi_awaddr_reg[20]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR";
  attribute X_INTERFACE_MODE of \m00_axi_awaddr_reg[20]\ : label is "master";
  attribute X_INTERFACE_PARAMETER of \m00_axi_awaddr_reg[20]\ : label is "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BIT    S_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of \m00_axi_awaddr_reg[21]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR";
  attribute X_INTERFACE_MODE of \m00_axi_awaddr_reg[21]\ : label is "master";
  attribute X_INTERFACE_PARAMETER of \m00_axi_awaddr_reg[21]\ : label is "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BIT    S_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of \m00_axi_awaddr_reg[22]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR";
  attribute X_INTERFACE_MODE of \m00_axi_awaddr_reg[22]\ : label is "master";
  attribute X_INTERFACE_PARAMETER of \m00_axi_awaddr_reg[22]\ : label is "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BIT    S_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of \m00_axi_awaddr_reg[23]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR";
  attribute X_INTERFACE_MODE of \m00_axi_awaddr_reg[23]\ : label is "master";
  attribute X_INTERFACE_PARAMETER of \m00_axi_awaddr_reg[23]\ : label is "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BIT    S_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of \m00_axi_awaddr_reg[24]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR";
  attribute X_INTERFACE_MODE of \m00_axi_awaddr_reg[24]\ : label is "master";
  attribute X_INTERFACE_PARAMETER of \m00_axi_awaddr_reg[24]\ : label is "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BIT    S_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of \m00_axi_awaddr_reg[25]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR";
  attribute X_INTERFACE_MODE of \m00_axi_awaddr_reg[25]\ : label is "master";
  attribute X_INTERFACE_PARAMETER of \m00_axi_awaddr_reg[25]\ : label is "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BIT    S_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of \m00_axi_awaddr_reg[26]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR";
  attribute X_INTERFACE_MODE of \m00_axi_awaddr_reg[26]\ : label is "master";
  attribute X_INTERFACE_PARAMETER of \m00_axi_awaddr_reg[26]\ : label is "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BIT    S_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of \m00_axi_awaddr_reg[27]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR";
  attribute X_INTERFACE_MODE of \m00_axi_awaddr_reg[27]\ : label is "master";
  attribute X_INTERFACE_PARAMETER of \m00_axi_awaddr_reg[27]\ : label is "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BIT    S_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of \m00_axi_awaddr_reg[28]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR";
  attribute X_INTERFACE_MODE of \m00_axi_awaddr_reg[28]\ : label is "master";
  attribute X_INTERFACE_PARAMETER of \m00_axi_awaddr_reg[28]\ : label is "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BIT    S_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of \m00_axi_awaddr_reg[29]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR";
  attribute X_INTERFACE_MODE of \m00_axi_awaddr_reg[29]\ : label is "master";
  attribute X_INTERFACE_PARAMETER of \m00_axi_awaddr_reg[29]\ : label is "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BIT    S_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of \m00_axi_awaddr_reg[2]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR";
  attribute X_INTERFACE_MODE of \m00_axi_awaddr_reg[2]\ : label is "master";
  attribute X_INTERFACE_PARAMETER of \m00_axi_awaddr_reg[2]\ : label is "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BIT    S_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of \m00_axi_awaddr_reg[30]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR";
  attribute X_INTERFACE_MODE of \m00_axi_awaddr_reg[30]\ : label is "master";
  attribute X_INTERFACE_PARAMETER of \m00_axi_awaddr_reg[30]\ : label is "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BIT    S_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of \m00_axi_awaddr_reg[31]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR";
  attribute X_INTERFACE_MODE of \m00_axi_awaddr_reg[31]\ : label is "master";
  attribute X_INTERFACE_PARAMETER of \m00_axi_awaddr_reg[31]\ : label is "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BIT    S_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of \m00_axi_awaddr_reg[3]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR";
  attribute X_INTERFACE_MODE of \m00_axi_awaddr_reg[3]\ : label is "master";
  attribute X_INTERFACE_PARAMETER of \m00_axi_awaddr_reg[3]\ : label is "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BIT    S_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of \m00_axi_awaddr_reg[4]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR";
  attribute X_INTERFACE_MODE of \m00_axi_awaddr_reg[4]\ : label is "master";
  attribute X_INTERFACE_PARAMETER of \m00_axi_awaddr_reg[4]\ : label is "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BIT    S_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of \m00_axi_awaddr_reg[5]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR";
  attribute X_INTERFACE_MODE of \m00_axi_awaddr_reg[5]\ : label is "master";
  attribute X_INTERFACE_PARAMETER of \m00_axi_awaddr_reg[5]\ : label is "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BIT    S_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of \m00_axi_awaddr_reg[6]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR";
  attribute X_INTERFACE_MODE of \m00_axi_awaddr_reg[6]\ : label is "master";
  attribute X_INTERFACE_PARAMETER of \m00_axi_awaddr_reg[6]\ : label is "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BIT    S_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of \m00_axi_awaddr_reg[7]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR";
  attribute X_INTERFACE_MODE of \m00_axi_awaddr_reg[7]\ : label is "master";
  attribute X_INTERFACE_PARAMETER of \m00_axi_awaddr_reg[7]\ : label is "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BIT    S_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of \m00_axi_awaddr_reg[8]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR";
  attribute X_INTERFACE_MODE of \m00_axi_awaddr_reg[8]\ : label is "master";
  attribute X_INTERFACE_PARAMETER of \m00_axi_awaddr_reg[8]\ : label is "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BIT    S_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of \m00_axi_awaddr_reg[9]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR";
  attribute X_INTERFACE_MODE of \m00_axi_awaddr_reg[9]\ : label is "master";
  attribute X_INTERFACE_PARAMETER of \m00_axi_awaddr_reg[9]\ : label is "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BIT    S_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m00_axi_awvalid_reg : label is "xilinx.com:interface:aximm:1.0 M00_AXI AWVALID";
  attribute SOFT_HLUTNM of m00_axi_bready_i_1 : label is "soft_lutpair0";
  attribute X_INTERFACE_INFO of m00_axi_bready_reg : label is "xilinx.com:interface:aximm:1.0 M00_AXI BREADY";
  attribute X_INTERFACE_INFO of m00_axi_rready_reg : label is "xilinx.com:interface:aximm:1.0 M00_AXI RREADY";
  attribute X_INTERFACE_INFO of \m00_axi_wdata_reg[0]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI WDATA";
  attribute X_INTERFACE_INFO of \m00_axi_wdata_reg[10]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI WDATA";
  attribute X_INTERFACE_INFO of \m00_axi_wdata_reg[11]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI WDATA";
  attribute X_INTERFACE_INFO of \m00_axi_wdata_reg[12]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI WDATA";
  attribute X_INTERFACE_INFO of \m00_axi_wdata_reg[13]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI WDATA";
  attribute X_INTERFACE_INFO of \m00_axi_wdata_reg[14]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI WDATA";
  attribute X_INTERFACE_INFO of \m00_axi_wdata_reg[15]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI WDATA";
  attribute X_INTERFACE_INFO of \m00_axi_wdata_reg[16]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI WDATA";
  attribute X_INTERFACE_INFO of \m00_axi_wdata_reg[17]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI WDATA";
  attribute X_INTERFACE_INFO of \m00_axi_wdata_reg[18]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI WDATA";
  attribute X_INTERFACE_INFO of \m00_axi_wdata_reg[19]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI WDATA";
  attribute X_INTERFACE_INFO of \m00_axi_wdata_reg[1]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI WDATA";
  attribute X_INTERFACE_INFO of \m00_axi_wdata_reg[20]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI WDATA";
  attribute X_INTERFACE_INFO of \m00_axi_wdata_reg[21]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI WDATA";
  attribute X_INTERFACE_INFO of \m00_axi_wdata_reg[22]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI WDATA";
  attribute X_INTERFACE_INFO of \m00_axi_wdata_reg[23]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI WDATA";
  attribute X_INTERFACE_INFO of \m00_axi_wdata_reg[24]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI WDATA";
  attribute X_INTERFACE_INFO of \m00_axi_wdata_reg[25]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI WDATA";
  attribute X_INTERFACE_INFO of \m00_axi_wdata_reg[26]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI WDATA";
  attribute X_INTERFACE_INFO of \m00_axi_wdata_reg[27]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI WDATA";
  attribute X_INTERFACE_INFO of \m00_axi_wdata_reg[28]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI WDATA";
  attribute X_INTERFACE_INFO of \m00_axi_wdata_reg[29]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI WDATA";
  attribute X_INTERFACE_INFO of \m00_axi_wdata_reg[2]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI WDATA";
  attribute X_INTERFACE_INFO of \m00_axi_wdata_reg[30]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI WDATA";
  attribute X_INTERFACE_INFO of \m00_axi_wdata_reg[31]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI WDATA";
  attribute X_INTERFACE_INFO of \m00_axi_wdata_reg[3]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI WDATA";
  attribute X_INTERFACE_INFO of \m00_axi_wdata_reg[4]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI WDATA";
  attribute X_INTERFACE_INFO of \m00_axi_wdata_reg[5]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI WDATA";
  attribute X_INTERFACE_INFO of \m00_axi_wdata_reg[6]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI WDATA";
  attribute X_INTERFACE_INFO of \m00_axi_wdata_reg[7]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI WDATA";
  attribute X_INTERFACE_INFO of \m00_axi_wdata_reg[8]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI WDATA";
  attribute X_INTERFACE_INFO of \m00_axi_wdata_reg[9]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI WDATA";
  attribute X_INTERFACE_INFO of \m00_axi_wstrb_reg[0]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI WSTRB";
  attribute X_INTERFACE_INFO of \m00_axi_wstrb_reg[1]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI WSTRB";
  attribute X_INTERFACE_INFO of \m00_axi_wstrb_reg[2]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI WSTRB";
  attribute X_INTERFACE_INFO of \m00_axi_wstrb_reg[3]\ : label is "xilinx.com:interface:aximm:1.0 M00_AXI WSTRB";
  attribute X_INTERFACE_INFO of m00_axi_wvalid_reg : label is "xilinx.com:interface:aximm:1.0 M00_AXI WVALID";
begin
  m00_axi_arvalid <= \^m00_axi_arvalid\;
  m00_axi_awvalid <= \^m00_axi_awvalid\;
  m00_axi_bready <= \^m00_axi_bready\;
  m00_axi_rready <= \^m00_axi_rready\;
  m00_axi_wvalid <= \^m00_axi_wvalid\;
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => state(3),
      I1 => state(5),
      O => \state__0\(0)
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => cpu_io_cmd_write,
      O => \state__0\(1)
    );
\FSM_onehot_state[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => cpu_io_cmd_write,
      O => \FSM_onehot_state[4]_i_1_n_0\
    );
\FSM_onehot_state[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF888"
    )
        port map (
      I0 => m00_axi_awready,
      I1 => state(1),
      I2 => cpu_io_cmd_valid,
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      I4 => \FSM_onehot_state[5]_i_2_n_0\,
      I5 => \FSM_onehot_state[5]_i_3_n_0\,
      O => \FSM_onehot_state[5]_i_1_n_0\
    );
\FSM_onehot_state[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => state(4),
      I1 => m00_axi_arready,
      I2 => state(5),
      I3 => m00_axi_rvalid,
      O => \FSM_onehot_state[5]_i_2_n_0\
    );
\FSM_onehot_state[5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => state(2),
      I1 => m00_axi_wready,
      I2 => state(3),
      I3 => m00_axi_bvalid,
      O => \FSM_onehot_state[5]_i_3_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m00_axi_aclk,
      CE => \FSM_onehot_state[5]_i_1_n_0\,
      D => \state__0\(0),
      PRE => \m00_axi_awaddr[31]_i_2_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[0]\
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \FSM_onehot_state[5]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => \state__0\(1),
      Q => state(1)
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \FSM_onehot_state[5]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => state(1),
      Q => state(2)
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \FSM_onehot_state[5]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => state(2),
      Q => state(3)
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \FSM_onehot_state[5]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => \FSM_onehot_state[4]_i_1_n_0\,
      Q => state(4)
    );
\FSM_onehot_state_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m00_axi_aclk,
      CE => \FSM_onehot_state[5]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => state(4),
      Q => state(5)
    );
cpu_io_cmd_ready_reg: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => \FSM_onehot_state_reg_n_0_[0]\,
      Q => cpu_io_cmd_ready
    );
\cpu_io_rsp_din[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(5),
      I1 => m00_axi_rvalid,
      O => \cpu_io_rsp_din[31]_i_1_n_0\
    );
\cpu_io_rsp_din_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \cpu_io_rsp_din[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => m00_axi_rdata(0),
      Q => cpu_io_rsp_din(0)
    );
\cpu_io_rsp_din_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \cpu_io_rsp_din[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => m00_axi_rdata(10),
      Q => cpu_io_rsp_din(10)
    );
\cpu_io_rsp_din_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \cpu_io_rsp_din[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => m00_axi_rdata(11),
      Q => cpu_io_rsp_din(11)
    );
\cpu_io_rsp_din_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \cpu_io_rsp_din[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => m00_axi_rdata(12),
      Q => cpu_io_rsp_din(12)
    );
\cpu_io_rsp_din_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \cpu_io_rsp_din[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => m00_axi_rdata(13),
      Q => cpu_io_rsp_din(13)
    );
\cpu_io_rsp_din_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \cpu_io_rsp_din[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => m00_axi_rdata(14),
      Q => cpu_io_rsp_din(14)
    );
\cpu_io_rsp_din_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \cpu_io_rsp_din[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => m00_axi_rdata(15),
      Q => cpu_io_rsp_din(15)
    );
\cpu_io_rsp_din_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \cpu_io_rsp_din[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => m00_axi_rdata(16),
      Q => cpu_io_rsp_din(16)
    );
\cpu_io_rsp_din_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \cpu_io_rsp_din[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => m00_axi_rdata(17),
      Q => cpu_io_rsp_din(17)
    );
\cpu_io_rsp_din_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \cpu_io_rsp_din[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => m00_axi_rdata(18),
      Q => cpu_io_rsp_din(18)
    );
\cpu_io_rsp_din_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \cpu_io_rsp_din[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => m00_axi_rdata(19),
      Q => cpu_io_rsp_din(19)
    );
\cpu_io_rsp_din_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \cpu_io_rsp_din[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => m00_axi_rdata(1),
      Q => cpu_io_rsp_din(1)
    );
\cpu_io_rsp_din_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \cpu_io_rsp_din[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => m00_axi_rdata(20),
      Q => cpu_io_rsp_din(20)
    );
\cpu_io_rsp_din_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \cpu_io_rsp_din[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => m00_axi_rdata(21),
      Q => cpu_io_rsp_din(21)
    );
\cpu_io_rsp_din_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \cpu_io_rsp_din[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => m00_axi_rdata(22),
      Q => cpu_io_rsp_din(22)
    );
\cpu_io_rsp_din_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \cpu_io_rsp_din[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => m00_axi_rdata(23),
      Q => cpu_io_rsp_din(23)
    );
\cpu_io_rsp_din_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \cpu_io_rsp_din[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => m00_axi_rdata(24),
      Q => cpu_io_rsp_din(24)
    );
\cpu_io_rsp_din_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \cpu_io_rsp_din[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => m00_axi_rdata(25),
      Q => cpu_io_rsp_din(25)
    );
\cpu_io_rsp_din_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \cpu_io_rsp_din[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => m00_axi_rdata(26),
      Q => cpu_io_rsp_din(26)
    );
\cpu_io_rsp_din_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \cpu_io_rsp_din[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => m00_axi_rdata(27),
      Q => cpu_io_rsp_din(27)
    );
\cpu_io_rsp_din_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \cpu_io_rsp_din[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => m00_axi_rdata(28),
      Q => cpu_io_rsp_din(28)
    );
\cpu_io_rsp_din_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \cpu_io_rsp_din[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => m00_axi_rdata(29),
      Q => cpu_io_rsp_din(29)
    );
\cpu_io_rsp_din_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \cpu_io_rsp_din[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => m00_axi_rdata(2),
      Q => cpu_io_rsp_din(2)
    );
\cpu_io_rsp_din_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \cpu_io_rsp_din[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => m00_axi_rdata(30),
      Q => cpu_io_rsp_din(30)
    );
\cpu_io_rsp_din_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \cpu_io_rsp_din[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => m00_axi_rdata(31),
      Q => cpu_io_rsp_din(31)
    );
\cpu_io_rsp_din_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \cpu_io_rsp_din[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => m00_axi_rdata(3),
      Q => cpu_io_rsp_din(3)
    );
\cpu_io_rsp_din_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \cpu_io_rsp_din[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => m00_axi_rdata(4),
      Q => cpu_io_rsp_din(4)
    );
\cpu_io_rsp_din_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \cpu_io_rsp_din[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => m00_axi_rdata(5),
      Q => cpu_io_rsp_din(5)
    );
\cpu_io_rsp_din_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \cpu_io_rsp_din[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => m00_axi_rdata(6),
      Q => cpu_io_rsp_din(6)
    );
\cpu_io_rsp_din_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \cpu_io_rsp_din[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => m00_axi_rdata(7),
      Q => cpu_io_rsp_din(7)
    );
\cpu_io_rsp_din_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \cpu_io_rsp_din[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => m00_axi_rdata(8),
      Q => cpu_io_rsp_din(8)
    );
\cpu_io_rsp_din_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \cpu_io_rsp_din[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => m00_axi_rdata(9),
      Q => cpu_io_rsp_din(9)
    );
cpu_io_rsp_valid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => m00_axi_bvalid,
      I1 => state(3),
      I2 => m00_axi_rvalid,
      I3 => state(5),
      O => cpu_io_rsp_valid_i_1_n_0
    );
cpu_io_rsp_valid_reg: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_rsp_valid_i_1_n_0,
      Q => cpu_io_rsp_valid
    );
\m00_axi_araddr[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => cpu_io_cmd_write,
      I2 => cpu_io_cmd_valid,
      O => \m00_axi_araddr[31]_i_1_n_0\
    );
\m00_axi_araddr_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_araddr[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_addr(0),
      Q => m00_axi_araddr(0)
    );
\m00_axi_araddr_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_araddr[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_addr(10),
      Q => m00_axi_araddr(10)
    );
\m00_axi_araddr_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_araddr[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_addr(11),
      Q => m00_axi_araddr(11)
    );
\m00_axi_araddr_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_araddr[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_addr(12),
      Q => m00_axi_araddr(12)
    );
\m00_axi_araddr_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_araddr[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_addr(13),
      Q => m00_axi_araddr(13)
    );
\m00_axi_araddr_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_araddr[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_addr(14),
      Q => m00_axi_araddr(14)
    );
\m00_axi_araddr_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_araddr[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_addr(15),
      Q => m00_axi_araddr(15)
    );
\m00_axi_araddr_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_araddr[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_addr(16),
      Q => m00_axi_araddr(16)
    );
\m00_axi_araddr_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_araddr[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_addr(17),
      Q => m00_axi_araddr(17)
    );
\m00_axi_araddr_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_araddr[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_addr(18),
      Q => m00_axi_araddr(18)
    );
\m00_axi_araddr_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_araddr[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_addr(19),
      Q => m00_axi_araddr(19)
    );
\m00_axi_araddr_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_araddr[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_addr(1),
      Q => m00_axi_araddr(1)
    );
\m00_axi_araddr_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_araddr[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_addr(20),
      Q => m00_axi_araddr(20)
    );
\m00_axi_araddr_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_araddr[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_addr(21),
      Q => m00_axi_araddr(21)
    );
\m00_axi_araddr_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_araddr[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_addr(22),
      Q => m00_axi_araddr(22)
    );
\m00_axi_araddr_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_araddr[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_addr(23),
      Q => m00_axi_araddr(23)
    );
\m00_axi_araddr_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_araddr[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_addr(24),
      Q => m00_axi_araddr(24)
    );
\m00_axi_araddr_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_araddr[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_addr(25),
      Q => m00_axi_araddr(25)
    );
\m00_axi_araddr_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_araddr[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_addr(26),
      Q => m00_axi_araddr(26)
    );
\m00_axi_araddr_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_araddr[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_addr(27),
      Q => m00_axi_araddr(27)
    );
\m00_axi_araddr_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_araddr[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_addr(28),
      Q => m00_axi_araddr(28)
    );
\m00_axi_araddr_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_araddr[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_addr(29),
      Q => m00_axi_araddr(29)
    );
\m00_axi_araddr_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_araddr[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_addr(2),
      Q => m00_axi_araddr(2)
    );
\m00_axi_araddr_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_araddr[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_addr(30),
      Q => m00_axi_araddr(30)
    );
\m00_axi_araddr_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_araddr[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_addr(31),
      Q => m00_axi_araddr(31)
    );
\m00_axi_araddr_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_araddr[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_addr(3),
      Q => m00_axi_araddr(3)
    );
\m00_axi_araddr_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_araddr[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_addr(4),
      Q => m00_axi_araddr(4)
    );
\m00_axi_araddr_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_araddr[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_addr(5),
      Q => m00_axi_araddr(5)
    );
\m00_axi_araddr_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_araddr[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_addr(6),
      Q => m00_axi_araddr(6)
    );
\m00_axi_araddr_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_araddr[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_addr(7),
      Q => m00_axi_araddr(7)
    );
\m00_axi_araddr_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_araddr[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_addr(8),
      Q => m00_axi_araddr(8)
    );
\m00_axi_araddr_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_araddr[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_addr(9),
      Q => m00_axi_araddr(9)
    );
m00_axi_arvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"404F4F4F40404040"
    )
        port map (
      I0 => cpu_io_cmd_write,
      I1 => cpu_io_cmd_valid,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => m00_axi_arready,
      I4 => state(4),
      I5 => \^m00_axi_arvalid\,
      O => m00_axi_arvalid_i_1_n_0
    );
m00_axi_arvalid_reg: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => m00_axi_arvalid_i_1_n_0,
      Q => \^m00_axi_arvalid\
    );
\m00_axi_awaddr[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => cpu_io_cmd_write,
      I2 => cpu_io_cmd_valid,
      O => \m00_axi_awaddr[31]_i_1_n_0\
    );
\m00_axi_awaddr[31]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m00_axi_aresetn,
      O => \m00_axi_awaddr[31]_i_2_n_0\
    );
\m00_axi_awaddr_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_awaddr[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_addr(0),
      Q => m00_axi_awaddr(0)
    );
\m00_axi_awaddr_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_awaddr[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_addr(10),
      Q => m00_axi_awaddr(10)
    );
\m00_axi_awaddr_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_awaddr[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_addr(11),
      Q => m00_axi_awaddr(11)
    );
\m00_axi_awaddr_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_awaddr[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_addr(12),
      Q => m00_axi_awaddr(12)
    );
\m00_axi_awaddr_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_awaddr[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_addr(13),
      Q => m00_axi_awaddr(13)
    );
\m00_axi_awaddr_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_awaddr[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_addr(14),
      Q => m00_axi_awaddr(14)
    );
\m00_axi_awaddr_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_awaddr[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_addr(15),
      Q => m00_axi_awaddr(15)
    );
\m00_axi_awaddr_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_awaddr[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_addr(16),
      Q => m00_axi_awaddr(16)
    );
\m00_axi_awaddr_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_awaddr[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_addr(17),
      Q => m00_axi_awaddr(17)
    );
\m00_axi_awaddr_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_awaddr[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_addr(18),
      Q => m00_axi_awaddr(18)
    );
\m00_axi_awaddr_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_awaddr[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_addr(19),
      Q => m00_axi_awaddr(19)
    );
\m00_axi_awaddr_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_awaddr[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_addr(1),
      Q => m00_axi_awaddr(1)
    );
\m00_axi_awaddr_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_awaddr[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_addr(20),
      Q => m00_axi_awaddr(20)
    );
\m00_axi_awaddr_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_awaddr[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_addr(21),
      Q => m00_axi_awaddr(21)
    );
\m00_axi_awaddr_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_awaddr[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_addr(22),
      Q => m00_axi_awaddr(22)
    );
\m00_axi_awaddr_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_awaddr[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_addr(23),
      Q => m00_axi_awaddr(23)
    );
\m00_axi_awaddr_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_awaddr[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_addr(24),
      Q => m00_axi_awaddr(24)
    );
\m00_axi_awaddr_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_awaddr[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_addr(25),
      Q => m00_axi_awaddr(25)
    );
\m00_axi_awaddr_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_awaddr[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_addr(26),
      Q => m00_axi_awaddr(26)
    );
\m00_axi_awaddr_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_awaddr[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_addr(27),
      Q => m00_axi_awaddr(27)
    );
\m00_axi_awaddr_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_awaddr[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_addr(28),
      Q => m00_axi_awaddr(28)
    );
\m00_axi_awaddr_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_awaddr[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_addr(29),
      Q => m00_axi_awaddr(29)
    );
\m00_axi_awaddr_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_awaddr[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_addr(2),
      Q => m00_axi_awaddr(2)
    );
\m00_axi_awaddr_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_awaddr[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_addr(30),
      Q => m00_axi_awaddr(30)
    );
\m00_axi_awaddr_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_awaddr[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_addr(31),
      Q => m00_axi_awaddr(31)
    );
\m00_axi_awaddr_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_awaddr[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_addr(3),
      Q => m00_axi_awaddr(3)
    );
\m00_axi_awaddr_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_awaddr[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_addr(4),
      Q => m00_axi_awaddr(4)
    );
\m00_axi_awaddr_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_awaddr[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_addr(5),
      Q => m00_axi_awaddr(5)
    );
\m00_axi_awaddr_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_awaddr[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_addr(6),
      Q => m00_axi_awaddr(6)
    );
\m00_axi_awaddr_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_awaddr[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_addr(7),
      Q => m00_axi_awaddr(7)
    );
\m00_axi_awaddr_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_awaddr[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_addr(8),
      Q => m00_axi_awaddr(8)
    );
\m00_axi_awaddr_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_awaddr[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_addr(9),
      Q => m00_axi_awaddr(9)
    );
m00_axi_awvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"808F8F8F80808080"
    )
        port map (
      I0 => cpu_io_cmd_write,
      I1 => cpu_io_cmd_valid,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => m00_axi_awready,
      I4 => state(1),
      I5 => \^m00_axi_awvalid\,
      O => m00_axi_awvalid_i_1_n_0
    );
m00_axi_awvalid_reg: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => m00_axi_awvalid_i_1_n_0,
      Q => \^m00_axi_awvalid\
    );
m00_axi_bready_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FFF8888"
    )
        port map (
      I0 => m00_axi_wready,
      I1 => state(2),
      I2 => m00_axi_bvalid,
      I3 => state(3),
      I4 => \^m00_axi_bready\,
      O => m00_axi_bready_i_1_n_0
    );
m00_axi_bready_reg: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => m00_axi_bready_i_1_n_0,
      Q => \^m00_axi_bready\
    );
m00_axi_rready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF151515FF000000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => state(5),
      I2 => m00_axi_rvalid,
      I3 => state(4),
      I4 => m00_axi_arready,
      I5 => \^m00_axi_rready\,
      O => m00_axi_rready_i_1_n_0
    );
m00_axi_rready_reg: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => m00_axi_rready_i_1_n_0,
      Q => \^m00_axi_rready\
    );
\m00_axi_wdata[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(1),
      I1 => m00_axi_awready,
      O => \m00_axi_wdata[31]_i_1_n_0\
    );
\m00_axi_wdata_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_wdata[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_dout(0),
      Q => m00_axi_wdata(0)
    );
\m00_axi_wdata_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_wdata[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_dout(10),
      Q => m00_axi_wdata(10)
    );
\m00_axi_wdata_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_wdata[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_dout(11),
      Q => m00_axi_wdata(11)
    );
\m00_axi_wdata_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_wdata[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_dout(12),
      Q => m00_axi_wdata(12)
    );
\m00_axi_wdata_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_wdata[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_dout(13),
      Q => m00_axi_wdata(13)
    );
\m00_axi_wdata_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_wdata[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_dout(14),
      Q => m00_axi_wdata(14)
    );
\m00_axi_wdata_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_wdata[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_dout(15),
      Q => m00_axi_wdata(15)
    );
\m00_axi_wdata_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_wdata[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_dout(16),
      Q => m00_axi_wdata(16)
    );
\m00_axi_wdata_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_wdata[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_dout(17),
      Q => m00_axi_wdata(17)
    );
\m00_axi_wdata_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_wdata[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_dout(18),
      Q => m00_axi_wdata(18)
    );
\m00_axi_wdata_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_wdata[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_dout(19),
      Q => m00_axi_wdata(19)
    );
\m00_axi_wdata_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_wdata[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_dout(1),
      Q => m00_axi_wdata(1)
    );
\m00_axi_wdata_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_wdata[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_dout(20),
      Q => m00_axi_wdata(20)
    );
\m00_axi_wdata_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_wdata[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_dout(21),
      Q => m00_axi_wdata(21)
    );
\m00_axi_wdata_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_wdata[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_dout(22),
      Q => m00_axi_wdata(22)
    );
\m00_axi_wdata_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_wdata[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_dout(23),
      Q => m00_axi_wdata(23)
    );
\m00_axi_wdata_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_wdata[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_dout(24),
      Q => m00_axi_wdata(24)
    );
\m00_axi_wdata_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_wdata[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_dout(25),
      Q => m00_axi_wdata(25)
    );
\m00_axi_wdata_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_wdata[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_dout(26),
      Q => m00_axi_wdata(26)
    );
\m00_axi_wdata_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_wdata[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_dout(27),
      Q => m00_axi_wdata(27)
    );
\m00_axi_wdata_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_wdata[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_dout(28),
      Q => m00_axi_wdata(28)
    );
\m00_axi_wdata_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_wdata[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_dout(29),
      Q => m00_axi_wdata(29)
    );
\m00_axi_wdata_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_wdata[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_dout(2),
      Q => m00_axi_wdata(2)
    );
\m00_axi_wdata_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_wdata[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_dout(30),
      Q => m00_axi_wdata(30)
    );
\m00_axi_wdata_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_wdata[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_dout(31),
      Q => m00_axi_wdata(31)
    );
\m00_axi_wdata_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_wdata[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_dout(3),
      Q => m00_axi_wdata(3)
    );
\m00_axi_wdata_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_wdata[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_dout(4),
      Q => m00_axi_wdata(4)
    );
\m00_axi_wdata_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_wdata[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_dout(5),
      Q => m00_axi_wdata(5)
    );
\m00_axi_wdata_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_wdata[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_dout(6),
      Q => m00_axi_wdata(6)
    );
\m00_axi_wdata_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_wdata[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_dout(7),
      Q => m00_axi_wdata(7)
    );
\m00_axi_wdata_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_wdata[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_dout(8),
      Q => m00_axi_wdata(8)
    );
\m00_axi_wdata_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_wdata[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_dout(9),
      Q => m00_axi_wdata(9)
    );
\m00_axi_wstrb_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_wdata[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_mask(0),
      Q => m00_axi_wstrb(0)
    );
\m00_axi_wstrb_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_wdata[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_mask(1),
      Q => m00_axi_wstrb(1)
    );
\m00_axi_wstrb_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_wdata[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_mask(2),
      Q => m00_axi_wstrb(2)
    );
\m00_axi_wstrb_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => \m00_axi_wdata[31]_i_1_n_0\,
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => cpu_io_cmd_mask(3),
      Q => m00_axi_wstrb(3)
    );
m00_axi_wvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF151515FF000000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => state(2),
      I2 => m00_axi_wready,
      I3 => state(1),
      I4 => m00_axi_awready,
      I5 => \^m00_axi_wvalid\,
      O => m00_axi_wvalid_i_1_n_0
    );
m00_axi_wvalid_reg: unisim.vcomponents.FDCE
     port map (
      C => m00_axi_aclk,
      CE => '1',
      CLR => \m00_axi_awaddr[31]_i_2_n_0\,
      D => m00_axi_wvalid_i_1_n_0,
      Q => \^m00_axi_wvalid\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity CPU_block_inst_1_CPU_IO_converter_0_0 is
  port (
    m00_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m00_axi_awvalid : out STD_LOGIC;
    m00_axi_awready : in STD_LOGIC;
    m00_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axi_wvalid : out STD_LOGIC;
    m00_axi_wready : in STD_LOGIC;
    m00_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m00_axi_bvalid : in STD_LOGIC;
    m00_axi_bready : out STD_LOGIC;
    m00_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m00_axi_arvalid : out STD_LOGIC;
    m00_axi_arready : in STD_LOGIC;
    m00_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m00_axi_rvalid : in STD_LOGIC;
    m00_axi_rready : out STD_LOGIC;
    m00_axi_aclk : in STD_LOGIC;
    m00_axi_aresetn : in STD_LOGIC;
    cpu_io_cmd_valid : in STD_LOGIC;
    cpu_io_cmd_ready : out STD_LOGIC;
    cpu_io_cmd_write : in STD_LOGIC;
    cpu_io_cmd_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    cpu_io_cmd_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    cpu_io_cmd_size : in STD_LOGIC_VECTOR ( 1 downto 0 );
    cpu_io_cmd_mask : in STD_LOGIC_VECTOR ( 3 downto 0 );
    cpu_io_cmd_io : in STD_LOGIC;
    cpu_io_cmd_fromHart : in STD_LOGIC;
    cpu_io_cmd_uopId : in STD_LOGIC_VECTOR ( 15 downto 0 );
    cpu_io_rsp_valid : out STD_LOGIC;
    cpu_io_rsp_error : out STD_LOGIC;
    cpu_io_rsp_din : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of CPU_block_inst_1_CPU_IO_converter_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of CPU_block_inst_1_CPU_IO_converter_0_0 : entity is "CPU_block_inst_1_CPU_IO_converter_0_0,CPU_IO_converter,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of CPU_block_inst_1_CPU_IO_converter_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of CPU_block_inst_1_CPU_IO_converter_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of CPU_block_inst_1_CPU_IO_converter_0_0 : entity is "CPU_IO_converter,Vivado 2025.2";
end CPU_block_inst_1_CPU_IO_converter_0_0;

architecture STRUCTURE of CPU_block_inst_1_CPU_IO_converter_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of m00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 M00_AXI_CLK CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of m00_axi_aclk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of m00_axi_aclk : signal is "XIL_INTERFACENAME M00_AXI_CLK, ASSOCIATED_BUSIF M00_AXI, ASSOCIATED_RESET m00_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0, CLK_DOMAIN Block_top_mig_axi_wrapper_0_0_ui_clk";
  attribute X_INTERFACE_INFO of m00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 M00_AXI_RST RST";
  attribute X_INTERFACE_MODE of m00_axi_aresetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of m00_axi_aresetn : signal is "XIL_INTERFACENAME M00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARREADY";
  attribute X_INTERFACE_INFO of m00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARVALID";
  attribute X_INTERFACE_INFO of m00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWREADY";
  attribute X_INTERFACE_INFO of m00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWVALID";
  attribute X_INTERFACE_INFO of m00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 M00_AXI BREADY";
  attribute X_INTERFACE_INFO of m00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI BVALID";
  attribute X_INTERFACE_INFO of m00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 M00_AXI RREADY";
  attribute X_INTERFACE_INFO of m00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI RVALID";
  attribute X_INTERFACE_INFO of m00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 M00_AXI WREADY";
  attribute X_INTERFACE_INFO of m00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI WVALID";
  attribute X_INTERFACE_INFO of m00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR";
  attribute X_INTERFACE_INFO of m00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARPROT";
  attribute X_INTERFACE_INFO of m00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR";
  attribute X_INTERFACE_MODE of m00_axi_awaddr : signal is "master";
  attribute X_INTERFACE_PARAMETER of m00_axi_awaddr : signal is "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BIT S_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, CLK_DOMAIN Block_top_mig_axi_wrapper_0_0_ui_clk, RUSER_BITS_PER_BYTE 0";
  attribute X_INTERFACE_INFO of m00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWPROT";
  attribute X_INTERFACE_INFO of m00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 M00_AXI BRESP";
  attribute X_INTERFACE_INFO of m00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 M00_AXI RDATA";
  attribute X_INTERFACE_INFO of m00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 M00_AXI RRESP";
  attribute X_INTERFACE_INFO of m00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 M00_AXI WDATA";
  attribute X_INTERFACE_INFO of m00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 M00_AXI WSTRB";
begin
  cpu_io_rsp_error <= \<const0>\;
  m00_axi_arprot(2) <= \<const0>\;
  m00_axi_arprot(1) <= \<const1>\;
  m00_axi_arprot(0) <= \<const0>\;
  m00_axi_awprot(2) <= \<const0>\;
  m00_axi_awprot(1) <= \<const1>\;
  m00_axi_awprot(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.CPU_block_inst_1_CPU_IO_converter_0_0_CPU_IO_converter
     port map (
      cpu_io_cmd_addr(31 downto 0) => cpu_io_cmd_addr(31 downto 0),
      cpu_io_cmd_dout(31 downto 0) => cpu_io_cmd_dout(31 downto 0),
      cpu_io_cmd_mask(3 downto 0) => cpu_io_cmd_mask(3 downto 0),
      cpu_io_cmd_ready => cpu_io_cmd_ready,
      cpu_io_cmd_valid => cpu_io_cmd_valid,
      cpu_io_cmd_write => cpu_io_cmd_write,
      cpu_io_rsp_din(31 downto 0) => cpu_io_rsp_din(31 downto 0),
      cpu_io_rsp_valid => cpu_io_rsp_valid,
      m00_axi_aclk => m00_axi_aclk,
      m00_axi_araddr(31 downto 0) => m00_axi_araddr(31 downto 0),
      m00_axi_aresetn => m00_axi_aresetn,
      m00_axi_arready => m00_axi_arready,
      m00_axi_arvalid => m00_axi_arvalid,
      m00_axi_awaddr(31 downto 0) => m00_axi_awaddr(31 downto 0),
      m00_axi_awready => m00_axi_awready,
      m00_axi_awvalid => m00_axi_awvalid,
      m00_axi_bready => m00_axi_bready,
      m00_axi_bvalid => m00_axi_bvalid,
      m00_axi_rdata(31 downto 0) => m00_axi_rdata(31 downto 0),
      m00_axi_rready => m00_axi_rready,
      m00_axi_rvalid => m00_axi_rvalid,
      m00_axi_wdata(31 downto 0) => m00_axi_wdata(31 downto 0),
      m00_axi_wready => m00_axi_wready,
      m00_axi_wstrb(3 downto 0) => m00_axi_wstrb(3 downto 0),
      m00_axi_wvalid => m00_axi_wvalid
    );
end STRUCTURE;

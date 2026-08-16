-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
-- Date        : Fri Aug 14 21:38:18 2026
-- Host        : lovroLinuxM running 64-bit Ubuntu 24.04.4 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/lovro/ARES/ARES_fpga/ARES_fpga/ARES_fpga.gen/sources_1/bd/Block_top/ip/Block_top_VDP_0_0/Block_top_VDP_0_0_stub.vhdl
-- Design      : Block_top_VDP_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Block_top_VDP_0_0 is
  Port ( 
    t0_map_cpu_addr : in STD_LOGIC_VECTOR ( 14 downto 0 );
    t0_map_cpu_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    t0_map_cpu_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    t0_map_cpu_en : in STD_LOGIC;
    t0_map_cpu_wen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    t0_map_cpu_clk : in STD_LOGIC;
    t0_data_cpu_addr : in STD_LOGIC_VECTOR ( 15 downto 0 );
    t0_data_cpu_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    t0_data_cpu_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    t0_data_cpu_en : in STD_LOGIC;
    t0_data_cpu_wen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    t0_data_cpu_clk : in STD_LOGIC;
    s0_att_cpu_addr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s0_att_cpu_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s0_att_cpu_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s0_att_cpu_en : in STD_LOGIC;
    s0_att_cpu_wen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s0_att_cpu_clk : in STD_LOGIC;
    s0_data_cpu_addr : in STD_LOGIC_VECTOR ( 14 downto 0 );
    s0_data_cpu_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s0_data_cpu_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s0_data_cpu_en : in STD_LOGIC;
    s0_data_cpu_wen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s0_data_cpu_clk : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    h_sync : out STD_LOGIC;
    v_sync : out STD_LOGIC;
    vga_r : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_g : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_b : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Block_top_VDP_0_0 : entity is "Block_top_VDP_0_0,VDP,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of Block_top_VDP_0_0 : entity is "Block_top_VDP_0_0,VDP,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=VDP,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,VGA_H_ACTIVE=640,VGA_V_ACTIVE=480,VGA_H_SYNC=96,VGA_V_SYNC=2,VGA_H_FRONT_PORCH=16,VGA_V_FRONT_PORCH=11,VGA_H_BACK_PORCH=48,VGA_V_BACK_PORCH=31,VGA_H_TOTAL=800,VGA_V_TOTAL=524,NUM_GEN=2,T0_GEN_NUM=0,S0_GEN_NUM=1}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of Block_top_VDP_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of Block_top_VDP_0_0 : entity is "module_ref";
end Block_top_VDP_0_0;

architecture stub of Block_top_VDP_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "t0_map_cpu_addr[14:0],t0_map_cpu_din[31:0],t0_map_cpu_dout[31:0],t0_map_cpu_en,t0_map_cpu_wen[3:0],t0_map_cpu_clk,t0_data_cpu_addr[15:0],t0_data_cpu_din[31:0],t0_data_cpu_dout[31:0],t0_data_cpu_en,t0_data_cpu_wen[3:0],t0_data_cpu_clk,s0_att_cpu_addr[8:0],s0_att_cpu_din[31:0],s0_att_cpu_dout[31:0],s0_att_cpu_en,s0_att_cpu_wen[3:0],s0_att_cpu_clk,s0_data_cpu_addr[14:0],s0_data_cpu_din[31:0],s0_data_cpu_dout[31:0],s0_data_cpu_en,s0_data_cpu_wen[3:0],s0_data_cpu_clk,s_axi_aclk,s_axi_aresetn,h_sync,v_sync,vga_r[3:0],vga_g[3:0],vga_b[3:0]";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of t0_map_cpu_addr : signal is "xilinx.com:interface:bram:1.0 T0_MAP_CPU_BRAM ADDR";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of t0_map_cpu_addr : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of t0_map_cpu_addr : signal is "XIL_INTERFACENAME T0_MAP_CPU_BRAM, MASTER_TYPE BRAM_CTRL, MEM_SIZE 32768, READ_WRITE_MODE READ_WRITE, MEM_WIDTH 32, MEM_ECC NONE, READ_LATENCY 1";
  attribute X_INTERFACE_INFO of t0_map_cpu_din : signal is "xilinx.com:interface:bram:1.0 T0_MAP_CPU_BRAM DIN";
  attribute X_INTERFACE_INFO of t0_map_cpu_dout : signal is "xilinx.com:interface:bram:1.0 T0_MAP_CPU_BRAM DOUT";
  attribute X_INTERFACE_INFO of t0_map_cpu_en : signal is "xilinx.com:interface:bram:1.0 T0_MAP_CPU_BRAM EN";
  attribute X_INTERFACE_INFO of t0_map_cpu_wen : signal is "xilinx.com:interface:bram:1.0 T0_MAP_CPU_BRAM WE";
  attribute X_INTERFACE_INFO of t0_map_cpu_clk : signal is "xilinx.com:interface:bram:1.0 T0_MAP_CPU_BRAM CLK";
  attribute X_INTERFACE_INFO of t0_data_cpu_addr : signal is "xilinx.com:interface:bram:1.0 T0_DATA_CPU_BRAM ADDR";
  attribute X_INTERFACE_MODE of t0_data_cpu_addr : signal is "slave";
  attribute X_INTERFACE_PARAMETER of t0_data_cpu_addr : signal is "XIL_INTERFACENAME T0_DATA_CPU_BRAM, MASTER_TYPE BRAM_CTRL, MEM_SIZE 65536, READ_WRITE_MODE READ_WRITE, MEM_WIDTH 32, MEM_ECC NONE, READ_LATENCY 1";
  attribute X_INTERFACE_INFO of t0_data_cpu_din : signal is "xilinx.com:interface:bram:1.0 T0_DATA_CPU_BRAM DIN";
  attribute X_INTERFACE_INFO of t0_data_cpu_dout : signal is "xilinx.com:interface:bram:1.0 T0_DATA_CPU_BRAM DOUT";
  attribute X_INTERFACE_INFO of t0_data_cpu_en : signal is "xilinx.com:interface:bram:1.0 T0_DATA_CPU_BRAM EN";
  attribute X_INTERFACE_INFO of t0_data_cpu_wen : signal is "xilinx.com:interface:bram:1.0 T0_DATA_CPU_BRAM WE";
  attribute X_INTERFACE_INFO of t0_data_cpu_clk : signal is "xilinx.com:interface:bram:1.0 T0_DATA_CPU_BRAM CLK";
  attribute X_INTERFACE_INFO of s0_att_cpu_addr : signal is "xilinx.com:interface:bram:1.0 S0_ATT_CPU_BRAM ADDR";
  attribute X_INTERFACE_MODE of s0_att_cpu_addr : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s0_att_cpu_addr : signal is "XIL_INTERFACENAME S0_ATT_CPU_BRAM, MASTER_TYPE BRAM_CTRL, MEM_SIZE 512, READ_WRITE_MODE READ_WRITE, MEM_WIDTH 32, MEM_ECC NONE, READ_LATENCY 1";
  attribute X_INTERFACE_INFO of s0_att_cpu_din : signal is "xilinx.com:interface:bram:1.0 S0_ATT_CPU_BRAM DIN";
  attribute X_INTERFACE_INFO of s0_att_cpu_dout : signal is "xilinx.com:interface:bram:1.0 S0_ATT_CPU_BRAM DOUT";
  attribute X_INTERFACE_INFO of s0_att_cpu_en : signal is "xilinx.com:interface:bram:1.0 S0_ATT_CPU_BRAM EN";
  attribute X_INTERFACE_INFO of s0_att_cpu_wen : signal is "xilinx.com:interface:bram:1.0 S0_ATT_CPU_BRAM WE";
  attribute X_INTERFACE_INFO of s0_att_cpu_clk : signal is "xilinx.com:interface:bram:1.0 S0_ATT_CPU_BRAM CLK";
  attribute X_INTERFACE_INFO of s0_data_cpu_addr : signal is "xilinx.com:interface:bram:1.0 S0_DATA_CPU_BRAM ADDR";
  attribute X_INTERFACE_MODE of s0_data_cpu_addr : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s0_data_cpu_addr : signal is "XIL_INTERFACENAME S0_DATA_CPU_BRAM, MASTER_TYPE BRAM_CTRL, MEM_SIZE 32768, READ_WRITE_MODE READ_WRITE, MEM_WIDTH 32, MEM_ECC NONE, READ_LATENCY 1";
  attribute X_INTERFACE_INFO of s0_data_cpu_din : signal is "xilinx.com:interface:bram:1.0 S0_DATA_CPU_BRAM DIN";
  attribute X_INTERFACE_INFO of s0_data_cpu_dout : signal is "xilinx.com:interface:bram:1.0 S0_DATA_CPU_BRAM DOUT";
  attribute X_INTERFACE_INFO of s0_data_cpu_en : signal is "xilinx.com:interface:bram:1.0 S0_DATA_CPU_BRAM EN";
  attribute X_INTERFACE_INFO of s0_data_cpu_wen : signal is "xilinx.com:interface:bram:1.0 S0_DATA_CPU_BRAM WE";
  attribute X_INTERFACE_INFO of s0_data_cpu_clk : signal is "xilinx.com:interface:bram:1.0 S0_DATA_CPU_BRAM CLK";
  attribute X_INTERFACE_INFO of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 s_axi_aclk CLK";
  attribute X_INTERFACE_MODE of s_axi_aclk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s_axi_aclk : signal is "XIL_INTERFACENAME s_axi_aclk, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Block_top_mig_axi_wrapper_0_0_ui_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 s_axi_aresetn RST";
  attribute X_INTERFACE_MODE of s_axi_aresetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s_axi_aresetn : signal is "XIL_INTERFACENAME s_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "VDP,Vivado 2025.2";
begin
end;

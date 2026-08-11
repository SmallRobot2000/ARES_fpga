-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
-- Date        : Sun Aug  9 11:52:14 2026
-- Host        : lovroLinuxM running 64-bit Ubuntu 24.04.4 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Block_top_axi_chip2chip_0_0_stub.vhdl
-- Design      : Block_top_axi_chip2chip_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tftg256-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    axi_c2c_m2s_intr_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_c2c_s2m_intr_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    idelay_ref_clk : in STD_LOGIC;
    axi_c2c_phy_clk : in STD_LOGIC;
    axi_c2c_selio_tx_clk_out : out STD_LOGIC;
    axi_c2c_selio_tx_data_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    axi_c2c_selio_rx_clk_in : in STD_LOGIC;
    axi_c2c_selio_rx_data_in : in STD_LOGIC_VECTOR ( 8 downto 0 );
    axi_c2c_link_status_out : out STD_LOGIC;
    axi_c2c_multi_bit_error_out : out STD_LOGIC;
    axi_c2c_link_error_out : out STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Block_top_axi_chip2chip_0_0,axi_chip2chip_v5_0_28,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Block_top_axi_chip2chip_0_0,axi_chip2chip_v5_0_28,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=axi_chip2chip,x_ipVersion=5.0,x_ipCoreRevision=28,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_FAMILY=artix7,C_INSTANCE=axi_c2c,C_SIMULATION=0,C_MASTER_FPGA=1,C_AXI_BUS_TYPE=0,C_EN_AXI_LINK_HNDLR=0,C_COMMON_CLK=0,C_INTERFACE_TYPE=1,C_INTERFACE_MODE=2,C_NUM_OF_IO=20,C_SELECTIO_PHY_CLK=100,C_INCLUDE_AXILITE=0,C_AXI_DATA_WIDTH=32,C_AXI_ID_WIDTH=1,C_AXI_WUSER_WIDTH=1,C_DISABLE_DESKEW=0,C_DISABLE_CLK_SHIFT=0,C_USE_DIFF_CLK=0,C_USE_DIFF_IO=0,C_AURORA_WIDTH=256,C_ECC_ENABLE=1,C_AXI_STB_WIDTH=4,C_AXI_ADDR_WIDTH=32,C_AXI_LEN_WIDTH=8,C_AXI_SIZE_WIDTH=3,C_AXI_BRST_WIDTH=2,C_AXI_RESP_WIDTH=2,C_INTERRUPT_WIDTH=4,C_EN_LEGACY_MODE=0,C_AXI_LITE_ADDR_WIDTH=32,C_AXI_LITE_PROT_WIDTH=2,C_AXI_LITE_DATA_WIDTH=32,C_AXI_LITE_STB_WIDTH=4,C_AXI_LITE_RESP_WIDTH=2}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "s_aclk,s_aresetn,s_axi_awaddr[31:0],s_axi_awlen[7:0],s_axi_awsize[2:0],s_axi_awburst[1:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wlast,s_axi_wvalid,s_axi_wready,s_axi_bresp[1:0],s_axi_bvalid,s_axi_bready,s_axi_araddr[31:0],s_axi_arlen[7:0],s_axi_arsize[2:0],s_axi_arburst[1:0],s_axi_arvalid,s_axi_arready,s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rlast,s_axi_rvalid,s_axi_rready,axi_c2c_m2s_intr_in[3:0],axi_c2c_s2m_intr_out[3:0],idelay_ref_clk,axi_c2c_phy_clk,axi_c2c_selio_tx_clk_out,axi_c2c_selio_tx_data_out[8:0],axi_c2c_selio_rx_clk_in,axi_c2c_selio_rx_data_in[8:0],axi_c2c_link_status_out,axi_c2c_multi_bit_error_out,axi_c2c_link_error_out";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of s_aclk : signal is "xilinx.com:signal:clock:1.0 s_aclk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of s_aclk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of s_aclk : signal is "XIL_INTERFACENAME s_aclk, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET s_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Block_top_mig_axi_wrapper_0_0_ui_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_aresetn : signal is "xilinx.com:signal:reset:1.0 s_aresetn RST";
  attribute X_INTERFACE_MODE of s_aresetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s_aresetn : signal is "XIL_INTERFACENAME s_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 s_axi AWADDR";
  attribute X_INTERFACE_MODE of s_axi_awaddr : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s_axi_awaddr : signal is "XIL_INTERFACENAME s_axi, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN Block_top_mig_axi_wrapper_0_0_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_awlen : signal is "xilinx.com:interface:aximm:1.0 s_axi AWLEN";
  attribute X_INTERFACE_INFO of s_axi_awsize : signal is "xilinx.com:interface:aximm:1.0 s_axi AWSIZE";
  attribute X_INTERFACE_INFO of s_axi_awburst : signal is "xilinx.com:interface:aximm:1.0 s_axi AWBURST";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi AWVALID";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 s_axi AWREADY";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 s_axi WDATA";
  attribute X_INTERFACE_INFO of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 s_axi WSTRB";
  attribute X_INTERFACE_INFO of s_axi_wlast : signal is "xilinx.com:interface:aximm:1.0 s_axi WLAST";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi WVALID";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 s_axi WREADY";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 s_axi BRESP";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi BVALID";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 s_axi BREADY";
  attribute X_INTERFACE_INFO of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 s_axi ARADDR";
  attribute X_INTERFACE_INFO of s_axi_arlen : signal is "xilinx.com:interface:aximm:1.0 s_axi ARLEN";
  attribute X_INTERFACE_INFO of s_axi_arsize : signal is "xilinx.com:interface:aximm:1.0 s_axi ARSIZE";
  attribute X_INTERFACE_INFO of s_axi_arburst : signal is "xilinx.com:interface:aximm:1.0 s_axi ARBURST";
  attribute X_INTERFACE_INFO of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi ARVALID";
  attribute X_INTERFACE_INFO of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 s_axi ARREADY";
  attribute X_INTERFACE_INFO of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 s_axi RRESP";
  attribute X_INTERFACE_INFO of s_axi_rlast : signal is "xilinx.com:interface:aximm:1.0 s_axi RLAST";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi RVALID";
  attribute X_INTERFACE_INFO of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 s_axi RREADY";
  attribute X_INTERFACE_INFO of idelay_ref_clk : signal is "xilinx.com:signal:clock:1.0 idelay_ref_clk CLK";
  attribute X_INTERFACE_MODE of idelay_ref_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of idelay_ref_clk : signal is "XIL_INTERFACENAME idelay_ref_clk, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of axi_c2c_phy_clk : signal is "xilinx.com:signal:clock:1.0 axi_c2c_phy_clk CLK";
  attribute X_INTERFACE_MODE of axi_c2c_phy_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of axi_c2c_phy_clk : signal is "XIL_INTERFACENAME axi_c2c_phy_clk, ASSOCIATED_BUSIF AXIS_TX:AXIS_RX, ASSOCIATED_RESET aurora_reset_pb, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Block_top_axi_c2c_phy_clk_0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of axi_c2c_selio_tx_clk_out : signal is "xilinx.com:signal:clock:1.0 axi_c2c_selio_tx_clk_out CLK";
  attribute X_INTERFACE_MODE of axi_c2c_selio_tx_clk_out : signal is "master";
  attribute X_INTERFACE_PARAMETER of axi_c2c_selio_tx_clk_out : signal is "XIL_INTERFACENAME axi_c2c_selio_tx_clk_out, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Block_top_axi_chip2chip_0_0_axi_c2c_selio_tx_clk_out, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of axi_c2c_selio_rx_clk_in : signal is "xilinx.com:signal:clock:1.0 axi_c2c_selio_rx_clk_in CLK";
  attribute X_INTERFACE_MODE of axi_c2c_selio_rx_clk_in : signal is "slave";
  attribute X_INTERFACE_PARAMETER of axi_c2c_selio_rx_clk_in : signal is "XIL_INTERFACENAME axi_c2c_selio_rx_clk_in, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Block_top_axi_c2c_selio_rx_clk_in_0, INSERT_VIP 0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "axi_chip2chip_v5_0_28,Vivado 2025.2";
begin
end;

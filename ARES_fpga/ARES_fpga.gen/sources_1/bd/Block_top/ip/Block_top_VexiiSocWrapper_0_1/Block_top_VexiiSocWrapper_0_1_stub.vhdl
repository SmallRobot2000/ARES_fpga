-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
-- Date        : Thu Aug  6 22:29:24 2026
-- Host        : lovroLinuxM running 64-bit Ubuntu 24.04.4 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/lovro/ARES/ARES_fpga/ARES_fpga/ARES_fpga.gen/sources_1/bd/Block_top/ip/Block_top_VexiiSocWrapper_0_1/Block_top_VexiiSocWrapper_0_1_stub.vhdl
-- Design      : Block_top_VexiiSocWrapper_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tftg256-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Block_top_VexiiSocWrapper_0_1 is
  Port ( 
    mBus_awvalid : out STD_LOGIC;
    mBus_awready : in STD_LOGIC;
    mBus_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    mBus_awid : out STD_LOGIC_VECTOR ( 7 downto 0 );
    mBus_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    mBus_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    mBus_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    mBus_wvalid : out STD_LOGIC;
    mBus_wready : in STD_LOGIC;
    mBus_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    mBus_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    mBus_wlast : out STD_LOGIC;
    mBus_bvalid : in STD_LOGIC;
    mBus_bready : out STD_LOGIC;
    mBus_bid : in STD_LOGIC_VECTOR ( 7 downto 0 );
    mBus_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    mBus_arvalid : out STD_LOGIC;
    mBus_arready : in STD_LOGIC;
    mBus_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    mBus_arid : out STD_LOGIC_VECTOR ( 7 downto 0 );
    mBus_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    mBus_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    mBus_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    mBus_rvalid : in STD_LOGIC;
    mBus_rready : out STD_LOGIC;
    mBus_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    mBus_rid : in STD_LOGIC_VECTOR ( 7 downto 0 );
    mBus_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    mBus_rlast : in STD_LOGIC;
    pBus_awvalid : out STD_LOGIC;
    pBus_awready : in STD_LOGIC;
    pBus_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    pBus_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    pBus_wvalid : out STD_LOGIC;
    pBus_wready : in STD_LOGIC;
    pBus_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    pBus_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    pBus_bvalid : in STD_LOGIC;
    pBus_bready : out STD_LOGIC;
    pBus_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    pBus_arvalid : out STD_LOGIC;
    pBus_arready : in STD_LOGIC;
    pBus_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    pBus_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    pBus_rvalid : in STD_LOGIC;
    pBus_rready : out STD_LOGIC;
    pBus_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pBus_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    peripheral_externalInterrupts_port : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Block_top_VexiiSocWrapper_0_1 : entity is "Block_top_VexiiSocWrapper_0_1,VexiiSocWrapper,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of Block_top_VexiiSocWrapper_0_1 : entity is "Block_top_VexiiSocWrapper_0_1,VexiiSocWrapper,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=VexiiSocWrapper,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of Block_top_VexiiSocWrapper_0_1 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of Block_top_VexiiSocWrapper_0_1 : entity is "module_ref";
end Block_top_VexiiSocWrapper_0_1;

architecture stub of Block_top_VexiiSocWrapper_0_1 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "mBus_awvalid,mBus_awready,mBus_awaddr[31:0],mBus_awid[7:0],mBus_awlen[7:0],mBus_awsize[2:0],mBus_awburst[1:0],mBus_wvalid,mBus_wready,mBus_wdata[31:0],mBus_wstrb[3:0],mBus_wlast,mBus_bvalid,mBus_bready,mBus_bid[7:0],mBus_bresp[1:0],mBus_arvalid,mBus_arready,mBus_araddr[31:0],mBus_arid[7:0],mBus_arlen[7:0],mBus_arsize[2:0],mBus_arburst[1:0],mBus_rvalid,mBus_rready,mBus_rdata[31:0],mBus_rid[7:0],mBus_rresp[1:0],mBus_rlast,pBus_awvalid,pBus_awready,pBus_awaddr[31:0],pBus_awprot[2:0],pBus_wvalid,pBus_wready,pBus_wdata[31:0],pBus_wstrb[3:0],pBus_bvalid,pBus_bready,pBus_bresp[1:0],pBus_arvalid,pBus_arready,pBus_araddr[31:0],pBus_arprot[2:0],pBus_rvalid,pBus_rready,pBus_rdata[31:0],pBus_rresp[1:0],s_axi_aclk,s_axi_aresetn,peripheral_externalInterrupts_port[31:0]";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of mBus_awvalid : signal is "xilinx.com:interface:aximm:1.0 mBus AWVALID";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of mBus_awvalid : signal is "master";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of mBus_awvalid : signal is "XIL_INTERFACENAME mBus, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 8, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN Block_top_mig_axi_wrapper_0_0_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of mBus_awready : signal is "xilinx.com:interface:aximm:1.0 mBus AWREADY";
  attribute X_INTERFACE_INFO of mBus_awaddr : signal is "xilinx.com:interface:aximm:1.0 mBus AWADDR";
  attribute X_INTERFACE_INFO of mBus_awid : signal is "xilinx.com:interface:aximm:1.0 mBus AWID";
  attribute X_INTERFACE_INFO of mBus_awlen : signal is "xilinx.com:interface:aximm:1.0 mBus AWLEN";
  attribute X_INTERFACE_INFO of mBus_awsize : signal is "xilinx.com:interface:aximm:1.0 mBus AWSIZE";
  attribute X_INTERFACE_INFO of mBus_awburst : signal is "xilinx.com:interface:aximm:1.0 mBus AWBURST";
  attribute X_INTERFACE_INFO of mBus_wvalid : signal is "xilinx.com:interface:aximm:1.0 mBus WVALID";
  attribute X_INTERFACE_INFO of mBus_wready : signal is "xilinx.com:interface:aximm:1.0 mBus WREADY";
  attribute X_INTERFACE_INFO of mBus_wdata : signal is "xilinx.com:interface:aximm:1.0 mBus WDATA";
  attribute X_INTERFACE_INFO of mBus_wstrb : signal is "xilinx.com:interface:aximm:1.0 mBus WSTRB";
  attribute X_INTERFACE_INFO of mBus_wlast : signal is "xilinx.com:interface:aximm:1.0 mBus WLAST";
  attribute X_INTERFACE_INFO of mBus_bvalid : signal is "xilinx.com:interface:aximm:1.0 mBus BVALID";
  attribute X_INTERFACE_INFO of mBus_bready : signal is "xilinx.com:interface:aximm:1.0 mBus BREADY";
  attribute X_INTERFACE_INFO of mBus_bid : signal is "xilinx.com:interface:aximm:1.0 mBus BID";
  attribute X_INTERFACE_INFO of mBus_bresp : signal is "xilinx.com:interface:aximm:1.0 mBus BRESP";
  attribute X_INTERFACE_INFO of mBus_arvalid : signal is "xilinx.com:interface:aximm:1.0 mBus ARVALID";
  attribute X_INTERFACE_INFO of mBus_arready : signal is "xilinx.com:interface:aximm:1.0 mBus ARREADY";
  attribute X_INTERFACE_INFO of mBus_araddr : signal is "xilinx.com:interface:aximm:1.0 mBus ARADDR";
  attribute X_INTERFACE_INFO of mBus_arid : signal is "xilinx.com:interface:aximm:1.0 mBus ARID";
  attribute X_INTERFACE_INFO of mBus_arlen : signal is "xilinx.com:interface:aximm:1.0 mBus ARLEN";
  attribute X_INTERFACE_INFO of mBus_arsize : signal is "xilinx.com:interface:aximm:1.0 mBus ARSIZE";
  attribute X_INTERFACE_INFO of mBus_arburst : signal is "xilinx.com:interface:aximm:1.0 mBus ARBURST";
  attribute X_INTERFACE_INFO of mBus_rvalid : signal is "xilinx.com:interface:aximm:1.0 mBus RVALID";
  attribute X_INTERFACE_INFO of mBus_rready : signal is "xilinx.com:interface:aximm:1.0 mBus RREADY";
  attribute X_INTERFACE_INFO of mBus_rdata : signal is "xilinx.com:interface:aximm:1.0 mBus RDATA";
  attribute X_INTERFACE_INFO of mBus_rid : signal is "xilinx.com:interface:aximm:1.0 mBus RID";
  attribute X_INTERFACE_INFO of mBus_rresp : signal is "xilinx.com:interface:aximm:1.0 mBus RRESP";
  attribute X_INTERFACE_INFO of mBus_rlast : signal is "xilinx.com:interface:aximm:1.0 mBus RLAST";
  attribute X_INTERFACE_INFO of pBus_awvalid : signal is "xilinx.com:interface:aximm:1.0 pBus AWVALID";
  attribute X_INTERFACE_MODE of pBus_awvalid : signal is "master";
  attribute X_INTERFACE_PARAMETER of pBus_awvalid : signal is "XIL_INTERFACENAME pBus, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN Block_top_mig_axi_wrapper_0_0_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of pBus_awready : signal is "xilinx.com:interface:aximm:1.0 pBus AWREADY";
  attribute X_INTERFACE_INFO of pBus_awaddr : signal is "xilinx.com:interface:aximm:1.0 pBus AWADDR";
  attribute X_INTERFACE_INFO of pBus_awprot : signal is "xilinx.com:interface:aximm:1.0 pBus AWPROT";
  attribute X_INTERFACE_INFO of pBus_wvalid : signal is "xilinx.com:interface:aximm:1.0 pBus WVALID";
  attribute X_INTERFACE_INFO of pBus_wready : signal is "xilinx.com:interface:aximm:1.0 pBus WREADY";
  attribute X_INTERFACE_INFO of pBus_wdata : signal is "xilinx.com:interface:aximm:1.0 pBus WDATA";
  attribute X_INTERFACE_INFO of pBus_wstrb : signal is "xilinx.com:interface:aximm:1.0 pBus WSTRB";
  attribute X_INTERFACE_INFO of pBus_bvalid : signal is "xilinx.com:interface:aximm:1.0 pBus BVALID";
  attribute X_INTERFACE_INFO of pBus_bready : signal is "xilinx.com:interface:aximm:1.0 pBus BREADY";
  attribute X_INTERFACE_INFO of pBus_bresp : signal is "xilinx.com:interface:aximm:1.0 pBus BRESP";
  attribute X_INTERFACE_INFO of pBus_arvalid : signal is "xilinx.com:interface:aximm:1.0 pBus ARVALID";
  attribute X_INTERFACE_INFO of pBus_arready : signal is "xilinx.com:interface:aximm:1.0 pBus ARREADY";
  attribute X_INTERFACE_INFO of pBus_araddr : signal is "xilinx.com:interface:aximm:1.0 pBus ARADDR";
  attribute X_INTERFACE_INFO of pBus_arprot : signal is "xilinx.com:interface:aximm:1.0 pBus ARPROT";
  attribute X_INTERFACE_INFO of pBus_rvalid : signal is "xilinx.com:interface:aximm:1.0 pBus RVALID";
  attribute X_INTERFACE_INFO of pBus_rready : signal is "xilinx.com:interface:aximm:1.0 pBus RREADY";
  attribute X_INTERFACE_INFO of pBus_rdata : signal is "xilinx.com:interface:aximm:1.0 pBus RDATA";
  attribute X_INTERFACE_INFO of pBus_rresp : signal is "xilinx.com:interface:aximm:1.0 pBus RRESP";
  attribute X_INTERFACE_INFO of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 s_axi_aclk CLK";
  attribute X_INTERFACE_MODE of s_axi_aclk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s_axi_aclk : signal is "XIL_INTERFACENAME s_axi_aclk, ASSOCIATED_RESET s_axi_aresetn, ASSOCIATED_BUSIF mBus:pBus, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Block_top_mig_axi_wrapper_0_0_ui_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 s_axi_aresetn RST";
  attribute X_INTERFACE_MODE of s_axi_aresetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s_axi_aresetn : signal is "XIL_INTERFACENAME s_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "VexiiSocWrapper,Vivado 2025.2";
begin
end;

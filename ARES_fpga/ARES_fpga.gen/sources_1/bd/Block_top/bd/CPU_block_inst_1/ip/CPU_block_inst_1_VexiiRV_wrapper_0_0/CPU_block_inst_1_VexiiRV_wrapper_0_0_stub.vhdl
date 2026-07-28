-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
-- Date        : Mon Jul 27 16:30:57 2026
-- Host        : lovroRadiona running 64-bit Ubuntu 24.04.4 LTS
-- Command     : write_vhdl -force -mode synth_stub {/home/lovro/Documents/Alchistry_Labs/DDR3 test/cores/Alchitry
--               AMIX_RISCV/Alchitry
--               AMIX_RISCV.gen/sources_1/bd/Block_top/bd/CPU_block_inst_1/ip/CPU_block_inst_1_VexiiRV_wrapper_0_0/CPU_block_inst_1_VexiiRV_wrapper_0_0_stub.vhdl}
-- Design      : CPU_block_inst_1_VexiiRV_wrapper_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tftg256-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CPU_block_inst_1_VexiiRV_wrapper_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    cpu_rdtime : in STD_LOGIC_VECTOR ( 63 downto 0 );
    cpu_int_timer : in STD_LOGIC;
    cpu_int_soft : in STD_LOGIC;
    cpu_int_ext : in STD_LOGIC;
    cpu_axi_d_awvalid : out STD_LOGIC;
    cpu_axi_d_awready : in STD_LOGIC;
    cpu_axi_d_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    cpu_axi_d_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    cpu_axi_d_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    cpu_axi_d_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    cpu_axi_d_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    cpu_axi_d_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    cpu_axi_d_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    cpu_axi_d_wvalid : out STD_LOGIC;
    cpu_axi_d_wready : in STD_LOGIC;
    cpu_axi_d_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    cpu_axi_d_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    cpu_axi_d_wlast : out STD_LOGIC;
    cpu_axi_d_bvalid : in STD_LOGIC;
    cpu_axi_d_bready : out STD_LOGIC;
    cpu_axi_d_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    cpu_axi_d_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    cpu_axi_d_arvalid : out STD_LOGIC;
    cpu_axi_d_arready : in STD_LOGIC;
    cpu_axi_d_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    cpu_axi_d_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    cpu_axi_d_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    cpu_axi_d_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    cpu_axi_d_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    cpu_axi_d_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    cpu_axi_d_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    cpu_axi_d_rvalid : in STD_LOGIC;
    cpu_axi_d_rready : out STD_LOGIC;
    cpu_axi_d_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    cpu_axi_d_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    cpu_axi_d_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    cpu_axi_d_rlast : in STD_LOGIC;
    cpu_axi_i_ar_valid : out STD_LOGIC;
    cpu_axi_i_ar_ready : in STD_LOGIC;
    cpu_axi_i_ar_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    cpu_axi_i_ar_id : out STD_LOGIC;
    cpu_axi_i_ar_len : out STD_LOGIC_VECTOR ( 7 downto 0 );
    cpu_axi_i_ar_size : out STD_LOGIC_VECTOR ( 2 downto 0 );
    cpu_axi_i_ar_burst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    cpu_axi_i_ar_cache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    cpu_axi_i_ar_prot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    cpu_axi_i_r_valid : in STD_LOGIC;
    cpu_axi_i_r_ready : out STD_LOGIC;
    cpu_axi_i_r_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    cpu_axi_i_r_id : in STD_LOGIC;
    cpu_axi_i_r_resp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    cpu_axi_i_r_last : in STD_LOGIC;
    cpu_axi_io_cmd_valid : out STD_LOGIC;
    cpu_axi_io_cmd_ready : in STD_LOGIC;
    cpu_axi_io_cmd_write : out STD_LOGIC;
    cpu_axi_io_cmd_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    cpu_axi_io_cmd_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    cpu_axi_io_cmd_size : out STD_LOGIC_VECTOR ( 1 downto 0 );
    cpu_axi_io_cmd_mask : out STD_LOGIC_VECTOR ( 3 downto 0 );
    cpu_axi_io_cmd_io : out STD_LOGIC;
    cpu_axi_io_cmd_fromHart : out STD_LOGIC;
    cpu_axi_io_cmd_uopId : out STD_LOGIC_VECTOR ( 15 downto 0 );
    cpu_axi_io_rsp_valid : in STD_LOGIC;
    cpu_axi_io_rsp_error : in STD_LOGIC;
    cpu_axi_io_rsp_din : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of CPU_block_inst_1_VexiiRV_wrapper_0_0 : entity is "CPU_block_inst_1_VexiiRV_wrapper_0_0,VexiiRV_wrapper,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of CPU_block_inst_1_VexiiRV_wrapper_0_0 : entity is "CPU_block_inst_1_VexiiRV_wrapper_0_0,VexiiRV_wrapper,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=VexiiRV_wrapper,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of CPU_block_inst_1_VexiiRV_wrapper_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of CPU_block_inst_1_VexiiRV_wrapper_0_0 : entity is "module_ref";
end CPU_block_inst_1_VexiiRV_wrapper_0_0;

architecture stub of CPU_block_inst_1_VexiiRV_wrapper_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "clk,reset,cpu_rdtime[63:0],cpu_int_timer,cpu_int_soft,cpu_int_ext,cpu_axi_d_awvalid,cpu_axi_d_awready,cpu_axi_d_awaddr[31:0],cpu_axi_d_awid[0:0],cpu_axi_d_awlen[7:0],cpu_axi_d_awsize[2:0],cpu_axi_d_awburst[1:0],cpu_axi_d_awcache[3:0],cpu_axi_d_awprot[2:0],cpu_axi_d_wvalid,cpu_axi_d_wready,cpu_axi_d_wdata[31:0],cpu_axi_d_wstrb[3:0],cpu_axi_d_wlast,cpu_axi_d_bvalid,cpu_axi_d_bready,cpu_axi_d_bid[0:0],cpu_axi_d_bresp[1:0],cpu_axi_d_arvalid,cpu_axi_d_arready,cpu_axi_d_araddr[31:0],cpu_axi_d_arid[0:0],cpu_axi_d_arlen[7:0],cpu_axi_d_arsize[2:0],cpu_axi_d_arburst[1:0],cpu_axi_d_arcache[3:0],cpu_axi_d_arprot[2:0],cpu_axi_d_rvalid,cpu_axi_d_rready,cpu_axi_d_rdata[31:0],cpu_axi_d_rid[0:0],cpu_axi_d_rresp[1:0],cpu_axi_d_rlast,cpu_axi_i_ar_valid,cpu_axi_i_ar_ready,cpu_axi_i_ar_addr[31:0],cpu_axi_i_ar_id,cpu_axi_i_ar_len[7:0],cpu_axi_i_ar_size[2:0],cpu_axi_i_ar_burst[1:0],cpu_axi_i_ar_cache[3:0],cpu_axi_i_ar_prot[2:0],cpu_axi_i_r_valid,cpu_axi_i_r_ready,cpu_axi_i_r_data[31:0],cpu_axi_i_r_id,cpu_axi_i_r_resp[1:0],cpu_axi_i_r_last,cpu_axi_io_cmd_valid,cpu_axi_io_cmd_ready,cpu_axi_io_cmd_write,cpu_axi_io_cmd_addr[31:0],cpu_axi_io_cmd_dout[31:0],cpu_axi_io_cmd_size[1:0],cpu_axi_io_cmd_mask[3:0],cpu_axi_io_cmd_io,cpu_axi_io_cmd_fromHart,cpu_axi_io_cmd_uopId[15:0],cpu_axi_io_rsp_valid,cpu_axi_io_rsp_error,cpu_axi_io_rsp_din[31:0]";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK, ASSOCIATED_BUSIF M_AXI_D:M_AXI_I, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Block_top_mig_axi_wrapper_0_0_ui_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 RST RST";
  attribute X_INTERFACE_MODE of reset : signal is "slave";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME RST, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of cpu_axi_d_awvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI_D AWVALID";
  attribute X_INTERFACE_MODE of cpu_axi_d_awvalid : signal is "master";
  attribute X_INTERFACE_PARAMETER of cpu_axi_d_awvalid : signal is "XIL_INTERFACENAME M_AXI_D, PROTOCOL AXI4, DATA_WIDTH 32, FREQ_HZ 100000000, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN Block_top_mig_axi_wrapper_0_0_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of cpu_axi_d_awready : signal is "xilinx.com:interface:aximm:1.0 M_AXI_D AWREADY";
  attribute X_INTERFACE_INFO of cpu_axi_d_awaddr : signal is "xilinx.com:interface:aximm:1.0 M_AXI_D AWADDR";
  attribute X_INTERFACE_INFO of cpu_axi_d_awid : signal is "xilinx.com:interface:aximm:1.0 M_AXI_D AWID";
  attribute X_INTERFACE_INFO of cpu_axi_d_awlen : signal is "xilinx.com:interface:aximm:1.0 M_AXI_D AWLEN";
  attribute X_INTERFACE_INFO of cpu_axi_d_awsize : signal is "xilinx.com:interface:aximm:1.0 M_AXI_D AWSIZE";
  attribute X_INTERFACE_INFO of cpu_axi_d_awburst : signal is "xilinx.com:interface:aximm:1.0 M_AXI_D AWBURST";
  attribute X_INTERFACE_INFO of cpu_axi_d_awcache : signal is "xilinx.com:interface:aximm:1.0 M_AXI_D AWCACHE";
  attribute X_INTERFACE_INFO of cpu_axi_d_awprot : signal is "xilinx.com:interface:aximm:1.0 M_AXI_D AWPROT";
  attribute X_INTERFACE_INFO of cpu_axi_d_wvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI_D WVALID";
  attribute X_INTERFACE_INFO of cpu_axi_d_wready : signal is "xilinx.com:interface:aximm:1.0 M_AXI_D WREADY";
  attribute X_INTERFACE_INFO of cpu_axi_d_wdata : signal is "xilinx.com:interface:aximm:1.0 M_AXI_D WDATA";
  attribute X_INTERFACE_INFO of cpu_axi_d_wstrb : signal is "xilinx.com:interface:aximm:1.0 M_AXI_D WSTRB";
  attribute X_INTERFACE_INFO of cpu_axi_d_wlast : signal is "xilinx.com:interface:aximm:1.0 M_AXI_D WLAST";
  attribute X_INTERFACE_INFO of cpu_axi_d_bvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI_D BVALID";
  attribute X_INTERFACE_INFO of cpu_axi_d_bready : signal is "xilinx.com:interface:aximm:1.0 M_AXI_D BREADY";
  attribute X_INTERFACE_INFO of cpu_axi_d_bid : signal is "xilinx.com:interface:aximm:1.0 M_AXI_D BID";
  attribute X_INTERFACE_INFO of cpu_axi_d_bresp : signal is "xilinx.com:interface:aximm:1.0 M_AXI_D BRESP";
  attribute X_INTERFACE_INFO of cpu_axi_d_arvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI_D ARVALID";
  attribute X_INTERFACE_INFO of cpu_axi_d_arready : signal is "xilinx.com:interface:aximm:1.0 M_AXI_D ARREADY";
  attribute X_INTERFACE_INFO of cpu_axi_d_araddr : signal is "xilinx.com:interface:aximm:1.0 M_AXI_D ARADDR";
  attribute X_INTERFACE_INFO of cpu_axi_d_arid : signal is "xilinx.com:interface:aximm:1.0 M_AXI_D ARID";
  attribute X_INTERFACE_INFO of cpu_axi_d_arlen : signal is "xilinx.com:interface:aximm:1.0 M_AXI_D ARLEN";
  attribute X_INTERFACE_INFO of cpu_axi_d_arsize : signal is "xilinx.com:interface:aximm:1.0 M_AXI_D ARSIZE";
  attribute X_INTERFACE_INFO of cpu_axi_d_arburst : signal is "xilinx.com:interface:aximm:1.0 M_AXI_D ARBURST";
  attribute X_INTERFACE_INFO of cpu_axi_d_arcache : signal is "xilinx.com:interface:aximm:1.0 M_AXI_D ARCACHE";
  attribute X_INTERFACE_INFO of cpu_axi_d_arprot : signal is "xilinx.com:interface:aximm:1.0 M_AXI_D ARPROT";
  attribute X_INTERFACE_INFO of cpu_axi_d_rvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI_D RVALID";
  attribute X_INTERFACE_INFO of cpu_axi_d_rready : signal is "xilinx.com:interface:aximm:1.0 M_AXI_D RREADY";
  attribute X_INTERFACE_INFO of cpu_axi_d_rdata : signal is "xilinx.com:interface:aximm:1.0 M_AXI_D RDATA";
  attribute X_INTERFACE_INFO of cpu_axi_d_rid : signal is "xilinx.com:interface:aximm:1.0 M_AXI_D RID";
  attribute X_INTERFACE_INFO of cpu_axi_d_rresp : signal is "xilinx.com:interface:aximm:1.0 M_AXI_D RRESP";
  attribute X_INTERFACE_INFO of cpu_axi_d_rlast : signal is "xilinx.com:interface:aximm:1.0 M_AXI_D RLAST";
  attribute X_INTERFACE_INFO of cpu_axi_i_ar_valid : signal is "xilinx.com:interface:aximm:1.0 M_AXI_I ARVALID";
  attribute X_INTERFACE_MODE of cpu_axi_i_ar_valid : signal is "master";
  attribute X_INTERFACE_PARAMETER of cpu_axi_i_ar_valid : signal is "XIL_INTERFACENAME M_AXI_I, PROTOCOL AXI4, DATA_WIDTH 32, FREQ_HZ 100000000, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_ONLY, HAS_BURST 1, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 0, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN Block_top_mig_axi_wrapper_0_0_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of cpu_axi_i_ar_ready : signal is "xilinx.com:interface:aximm:1.0 M_AXI_I ARREADY";
  attribute X_INTERFACE_INFO of cpu_axi_i_ar_addr : signal is "xilinx.com:interface:aximm:1.0 M_AXI_I ARADDR";
  attribute X_INTERFACE_INFO of cpu_axi_i_ar_id : signal is "xilinx.com:interface:aximm:1.0 M_AXI_I ARID";
  attribute X_INTERFACE_INFO of cpu_axi_i_ar_len : signal is "xilinx.com:interface:aximm:1.0 M_AXI_I ARLEN";
  attribute X_INTERFACE_INFO of cpu_axi_i_ar_size : signal is "xilinx.com:interface:aximm:1.0 M_AXI_I ARSIZE";
  attribute X_INTERFACE_INFO of cpu_axi_i_ar_burst : signal is "xilinx.com:interface:aximm:1.0 M_AXI_I ARBURST";
  attribute X_INTERFACE_INFO of cpu_axi_i_ar_cache : signal is "xilinx.com:interface:aximm:1.0 M_AXI_I ARCACHE";
  attribute X_INTERFACE_INFO of cpu_axi_i_ar_prot : signal is "xilinx.com:interface:aximm:1.0 M_AXI_I ARPROT";
  attribute X_INTERFACE_INFO of cpu_axi_i_r_valid : signal is "xilinx.com:interface:aximm:1.0 M_AXI_I RVALID";
  attribute X_INTERFACE_INFO of cpu_axi_i_r_ready : signal is "xilinx.com:interface:aximm:1.0 M_AXI_I RREADY";
  attribute X_INTERFACE_INFO of cpu_axi_i_r_data : signal is "xilinx.com:interface:aximm:1.0 M_AXI_I RDATA";
  attribute X_INTERFACE_INFO of cpu_axi_i_r_id : signal is "xilinx.com:interface:aximm:1.0 M_AXI_I RID";
  attribute X_INTERFACE_INFO of cpu_axi_i_r_resp : signal is "xilinx.com:interface:aximm:1.0 M_AXI_I RRESP";
  attribute X_INTERFACE_INFO of cpu_axi_i_r_last : signal is "xilinx.com:interface:aximm:1.0 M_AXI_I RLAST";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "VexiiRV_wrapper,Vivado 2025.2";
begin
end;

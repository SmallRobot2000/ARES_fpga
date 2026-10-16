//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
//Date        : Thu Oct 15 14:49:49 2026
//Host        : lovroLinuxM running 64-bit Ubuntu 24.04.4 LTS
//Command     : generate_target Block_top.bd
//Design      : Block_top
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "Block_top,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Block_top,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=30,numReposBlks=30,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=7,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=1,da_board_cnt=2,da_clkrst_cnt=2,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "Block_top.hwdef" *) 
module Block_top
   (KYBD_COL,
    KYBD_LED_CAPS,
    KYBD_LED_CODE,
    KYBD_ROW,
    clk,
    ddr3_addr,
    ddr3_ba,
    ddr3_cas_n,
    ddr3_ck_n,
    ddr3_ck_p,
    ddr3_cke,
    ddr3_cs_n,
    ddr3_dm,
    ddr3_dq,
    ddr3_dqs_n,
    ddr3_dqs_p,
    ddr3_odt,
    ddr3_ras_n,
    ddr3_reset_n,
    ddr3_we_n,
    h_sync,
    ide_a,
    ide_cs0_n,
    ide_cs1_n,
    ide_d,
    ide_dtack,
    ide_irq,
    ide_rd_n,
    ide_reset_n,
    ide_wr_n,
    rst_n,
    spi_controller0_miso,
    spi_controller0_mosi,
    spi_controller0_sck,
    spi_controller0_ss,
    spi_controller1_miso,
    spi_controller1_mosi,
    spi_controller1_sck,
    spi_controller1_ss,
    spi_flash_ce_n,
    spi_int_n,
    spi_miso,
    spi_mosi,
    spi_sck,
    test_tx,
    usb_rx,
    usb_tx,
    v_sync,
    vga_b,
    vga_g,
    vga_r);
  input [7:0]KYBD_COL;
  output KYBD_LED_CAPS;
  output KYBD_LED_CODE;
  output [3:0]KYBD_ROW;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN Block_top_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk;
  output [13:0]ddr3_addr;
  output [2:0]ddr3_ba;
  output ddr3_cas_n;
  output [0:0]ddr3_ck_n;
  output [0:0]ddr3_ck_p;
  output [0:0]ddr3_cke;
  output [0:0]ddr3_cs_n;
  output [1:0]ddr3_dm;
  inout [15:0]ddr3_dq;
  inout [1:0]ddr3_dqs_n;
  inout [1:0]ddr3_dqs_p;
  output [0:0]ddr3_odt;
  output ddr3_ras_n;
  output ddr3_reset_n;
  output ddr3_we_n;
  output [0:0]h_sync;
  output [2:0]ide_a;
  output ide_cs0_n;
  output ide_cs1_n;
  inout [15:0]ide_d;
  output [0:0]ide_dtack;
  input ide_irq;
  output ide_rd_n;
  output ide_reset_n;
  output ide_wr_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RST_N RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RST_N, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input rst_n;
  inout [0:0]spi_controller0_miso;
  inout [0:0]spi_controller0_mosi;
  inout [0:0]spi_controller0_sck;
  inout [0:0]spi_controller0_ss;
  inout [0:0]spi_controller1_miso;
  inout [0:0]spi_controller1_mosi;
  inout [0:0]spi_controller1_sck;
  inout [0:0]spi_controller1_ss;
  output spi_flash_ce_n;
  input spi_int_n;
  input spi_miso;
  output spi_mosi;
  output spi_sck;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.TEST_TX DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.TEST_TX, LAYERED_METADATA undef" *) output test_tx;
  input usb_rx;
  output usb_tx;
  output [0:0]v_sync;
  output [3:0]vga_b;
  output [3:0]vga_g;
  output [3:0]vga_r;

  wire [31:0]ARES_RasterIXWrapper_0_fb_addr;
  wire [19:0]ARES_RasterIXWrapper_0_fb_size;
  wire [31:0]ARES_RasterIXWrapper_0_m_axi_ARADDR;
  wire [1:0]ARES_RasterIXWrapper_0_m_axi_ARBURST;
  wire [3:0]ARES_RasterIXWrapper_0_m_axi_ARCACHE;
  wire [3:0]ARES_RasterIXWrapper_0_m_axi_ARID;
  wire [7:0]ARES_RasterIXWrapper_0_m_axi_ARLEN;
  wire ARES_RasterIXWrapper_0_m_axi_ARLOCK;
  wire [2:0]ARES_RasterIXWrapper_0_m_axi_ARPROT;
  wire ARES_RasterIXWrapper_0_m_axi_ARREADY;
  wire [2:0]ARES_RasterIXWrapper_0_m_axi_ARSIZE;
  wire ARES_RasterIXWrapper_0_m_axi_ARVALID;
  wire [31:0]ARES_RasterIXWrapper_0_m_axi_AWADDR;
  wire [1:0]ARES_RasterIXWrapper_0_m_axi_AWBURST;
  wire [3:0]ARES_RasterIXWrapper_0_m_axi_AWCACHE;
  wire [3:0]ARES_RasterIXWrapper_0_m_axi_AWID;
  wire [7:0]ARES_RasterIXWrapper_0_m_axi_AWLEN;
  wire ARES_RasterIXWrapper_0_m_axi_AWLOCK;
  wire [2:0]ARES_RasterIXWrapper_0_m_axi_AWPROT;
  wire ARES_RasterIXWrapper_0_m_axi_AWREADY;
  wire [2:0]ARES_RasterIXWrapper_0_m_axi_AWSIZE;
  wire ARES_RasterIXWrapper_0_m_axi_AWVALID;
  wire [3:0]ARES_RasterIXWrapper_0_m_axi_BID;
  wire ARES_RasterIXWrapper_0_m_axi_BREADY;
  wire [1:0]ARES_RasterIXWrapper_0_m_axi_BRESP;
  wire ARES_RasterIXWrapper_0_m_axi_BVALID;
  wire [63:0]ARES_RasterIXWrapper_0_m_axi_RDATA;
  wire [3:0]ARES_RasterIXWrapper_0_m_axi_RID;
  wire ARES_RasterIXWrapper_0_m_axi_RLAST;
  wire ARES_RasterIXWrapper_0_m_axi_RREADY;
  wire [1:0]ARES_RasterIXWrapper_0_m_axi_RRESP;
  wire ARES_RasterIXWrapper_0_m_axi_RVALID;
  wire [63:0]ARES_RasterIXWrapper_0_m_axi_WDATA;
  wire ARES_RasterIXWrapper_0_m_axi_WLAST;
  wire ARES_RasterIXWrapper_0_m_axi_WREADY;
  wire [7:0]ARES_RasterIXWrapper_0_m_axi_WSTRB;
  wire ARES_RasterIXWrapper_0_m_axi_WVALID;
  wire [31:0]ARES_RasterIXWrapper_0_m_cmd_resp_axis_TDATA;
  wire ARES_RasterIXWrapper_0_m_cmd_resp_axis_TLAST;
  wire ARES_RasterIXWrapper_0_m_cmd_resp_axis_TREADY;
  wire ARES_RasterIXWrapper_0_m_cmd_resp_axis_TVALID;
  wire ARES_RasterIXWrapper_0_swap_fb;
  wire ARES_RasterIXWrapper_0_swap_fb_enable_vsync;
  wire ARES_RaxyerIX_frameb_0_fb_swapped;
  wire [31:0]ARES_RaxyerIX_frameb_0_ram_axi_ARADDR;
  wire [1:0]ARES_RaxyerIX_frameb_0_ram_axi_ARBURST;
  wire [7:0]ARES_RaxyerIX_frameb_0_ram_axi_ARLEN;
  wire ARES_RaxyerIX_frameb_0_ram_axi_ARREADY;
  wire [2:0]ARES_RaxyerIX_frameb_0_ram_axi_ARSIZE;
  wire ARES_RaxyerIX_frameb_0_ram_axi_ARVALID;
  wire [127:0]ARES_RaxyerIX_frameb_0_ram_axi_RDATA;
  wire ARES_RaxyerIX_frameb_0_ram_axi_RLAST;
  wire ARES_RaxyerIX_frameb_0_ram_axi_RREADY;
  wire [1:0]ARES_RaxyerIX_frameb_0_ram_axi_RRESP;
  wire ARES_RaxyerIX_frameb_0_ram_axi_RVALID;
  wire [7:0]KYBD_COL;
  wire KYBD_LED_CAPS;
  wire KYBD_LED_CODE;
  wire [3:0]KYBD_ROW;
  wire [31:0]VexiiSocWrapper_0_mBus_ARADDR;
  wire [1:0]VexiiSocWrapper_0_mBus_ARBURST;
  wire [7:0]VexiiSocWrapper_0_mBus_ARID;
  wire [7:0]VexiiSocWrapper_0_mBus_ARLEN;
  wire VexiiSocWrapper_0_mBus_ARREADY;
  wire [2:0]VexiiSocWrapper_0_mBus_ARSIZE;
  wire VexiiSocWrapper_0_mBus_ARVALID;
  wire [31:0]VexiiSocWrapper_0_mBus_AWADDR;
  wire [1:0]VexiiSocWrapper_0_mBus_AWBURST;
  wire [7:0]VexiiSocWrapper_0_mBus_AWID;
  wire [7:0]VexiiSocWrapper_0_mBus_AWLEN;
  wire VexiiSocWrapper_0_mBus_AWREADY;
  wire [2:0]VexiiSocWrapper_0_mBus_AWSIZE;
  wire VexiiSocWrapper_0_mBus_AWVALID;
  wire [7:0]VexiiSocWrapper_0_mBus_BID;
  wire VexiiSocWrapper_0_mBus_BREADY;
  wire [1:0]VexiiSocWrapper_0_mBus_BRESP;
  wire VexiiSocWrapper_0_mBus_BVALID;
  wire [31:0]VexiiSocWrapper_0_mBus_RDATA;
  wire [7:0]VexiiSocWrapper_0_mBus_RID;
  wire VexiiSocWrapper_0_mBus_RLAST;
  wire VexiiSocWrapper_0_mBus_RREADY;
  wire [1:0]VexiiSocWrapper_0_mBus_RRESP;
  wire VexiiSocWrapper_0_mBus_RVALID;
  wire [31:0]VexiiSocWrapper_0_mBus_WDATA;
  wire VexiiSocWrapper_0_mBus_WLAST;
  wire VexiiSocWrapper_0_mBus_WREADY;
  wire [3:0]VexiiSocWrapper_0_mBus_WSTRB;
  wire VexiiSocWrapper_0_mBus_WVALID;
  wire [31:0]VexiiSocWrapper_0_pBus_ARADDR;
  wire [2:0]VexiiSocWrapper_0_pBus_ARPROT;
  wire VexiiSocWrapper_0_pBus_ARREADY;
  wire VexiiSocWrapper_0_pBus_ARVALID;
  wire [31:0]VexiiSocWrapper_0_pBus_AWADDR;
  wire [2:0]VexiiSocWrapper_0_pBus_AWPROT;
  wire VexiiSocWrapper_0_pBus_AWREADY;
  wire VexiiSocWrapper_0_pBus_AWVALID;
  wire VexiiSocWrapper_0_pBus_BREADY;
  wire [1:0]VexiiSocWrapper_0_pBus_BRESP;
  wire VexiiSocWrapper_0_pBus_BVALID;
  wire [31:0]VexiiSocWrapper_0_pBus_RDATA;
  wire VexiiSocWrapper_0_pBus_RREADY;
  wire [1:0]VexiiSocWrapper_0_pBus_RRESP;
  wire VexiiSocWrapper_0_pBus_RVALID;
  wire [31:0]VexiiSocWrapper_0_pBus_WDATA;
  wire VexiiSocWrapper_0_pBus_WREADY;
  wire [3:0]VexiiSocWrapper_0_pBus_WSTRB;
  wire VexiiSocWrapper_0_pBus_WVALID;
  wire axi_cf_controller_0_irq;
  wire [31:0]axi_dma_0_M_AXIS_MM2S_TDATA;
  wire axi_dma_0_M_AXIS_MM2S_TLAST;
  wire axi_dma_0_M_AXIS_MM2S_TREADY;
  wire axi_dma_0_M_AXIS_MM2S_TVALID;
  wire [31:0]axi_dma_0_M_AXI_MM2S_ARADDR;
  wire [1:0]axi_dma_0_M_AXI_MM2S_ARBURST;
  wire [3:0]axi_dma_0_M_AXI_MM2S_ARCACHE;
  wire [7:0]axi_dma_0_M_AXI_MM2S_ARLEN;
  wire [2:0]axi_dma_0_M_AXI_MM2S_ARPROT;
  wire axi_dma_0_M_AXI_MM2S_ARREADY;
  wire [2:0]axi_dma_0_M_AXI_MM2S_ARSIZE;
  wire axi_dma_0_M_AXI_MM2S_ARVALID;
  wire [63:0]axi_dma_0_M_AXI_MM2S_RDATA;
  wire axi_dma_0_M_AXI_MM2S_RLAST;
  wire axi_dma_0_M_AXI_MM2S_RREADY;
  wire [1:0]axi_dma_0_M_AXI_MM2S_RRESP;
  wire axi_dma_0_M_AXI_MM2S_RVALID;
  wire [31:0]axi_dma_0_M_AXI_S2MM_AWADDR;
  wire [1:0]axi_dma_0_M_AXI_S2MM_AWBURST;
  wire [3:0]axi_dma_0_M_AXI_S2MM_AWCACHE;
  wire [7:0]axi_dma_0_M_AXI_S2MM_AWLEN;
  wire [2:0]axi_dma_0_M_AXI_S2MM_AWPROT;
  wire axi_dma_0_M_AXI_S2MM_AWREADY;
  wire [2:0]axi_dma_0_M_AXI_S2MM_AWSIZE;
  wire axi_dma_0_M_AXI_S2MM_AWVALID;
  wire axi_dma_0_M_AXI_S2MM_BREADY;
  wire [1:0]axi_dma_0_M_AXI_S2MM_BRESP;
  wire axi_dma_0_M_AXI_S2MM_BVALID;
  wire [31:0]axi_dma_0_M_AXI_S2MM_WDATA;
  wire axi_dma_0_M_AXI_S2MM_WLAST;
  wire axi_dma_0_M_AXI_S2MM_WREADY;
  wire [3:0]axi_dma_0_M_AXI_S2MM_WSTRB;
  wire axi_dma_0_M_AXI_S2MM_WVALID;
  wire axi_dma_0_mm2s_introut;
  wire axi_dma_0_s2mm_introut;
  wire axi_keyboard_0_irq;
  wire axi_quad_spi_0_io0_o;
  wire axi_quad_spi_0_io0_t;
  wire axi_quad_spi_0_io1_o;
  wire axi_quad_spi_0_io1_t;
  wire axi_quad_spi_0_ip2intc_irpt;
  wire axi_quad_spi_0_sck_o;
  wire axi_quad_spi_0_sck_t;
  wire [0:0]axi_quad_spi_0_ss_o;
  wire axi_quad_spi_0_ss_t;
  wire axi_quad_spi_1_io0_o;
  wire axi_quad_spi_1_io0_t;
  wire axi_quad_spi_1_io1_o;
  wire axi_quad_spi_1_io1_t;
  wire axi_quad_spi_1_ip2intc_irpt;
  wire axi_quad_spi_1_sck_o;
  wire axi_quad_spi_1_sck_t;
  wire [0:0]axi_quad_spi_1_ss_o;
  wire axi_quad_spi_1_ss_t;
  wire axi_uartlite_0_interrupt;
  wire clk;
  wire clk_wiz_0_clk_100;
  wire clk_wiz_0_clk_200;
  wire [13:0]ddr3_addr;
  wire [2:0]ddr3_ba;
  wire ddr3_cas_n;
  wire [0:0]ddr3_ck_n;
  wire [0:0]ddr3_ck_p;
  wire [0:0]ddr3_cke;
  wire [0:0]ddr3_cs_n;
  wire [1:0]ddr3_dm;
  wire [15:0]ddr3_dq;
  wire [1:0]ddr3_dqs_n;
  wire [1:0]ddr3_dqs_p;
  wire [0:0]ddr3_odt;
  wire ddr3_ras_n;
  wire ddr3_reset_n;
  wire ddr3_we_n;
  wire \^h_sync ;
  wire [2:0]ide_a;
  wire ide_cs0_n;
  wire ide_cs1_n;
  wire [15:0]ide_d;
  wire [0:0]ide_dtack;
  wire ide_irq;
  wire ide_rd_n;
  wire ide_reset_n;
  wire ide_wr_n;
  wire mig_axi_wrapper_0_ui_clk;
  wire reset;
  wire [0:0]reset_n;
  wire [0:0]rst_in;
  wire rst_n;
  wire [31:0]smartconnect_0_M00_AXI1_ARADDR;
  wire [1:0]smartconnect_0_M00_AXI1_ARBURST;
  wire [3:0]smartconnect_0_M00_AXI1_ARCACHE;
  wire [7:0]smartconnect_0_M00_AXI1_ARLEN;
  wire [0:0]smartconnect_0_M00_AXI1_ARLOCK;
  wire [2:0]smartconnect_0_M00_AXI1_ARPROT;
  wire [3:0]smartconnect_0_M00_AXI1_ARQOS;
  wire smartconnect_0_M00_AXI1_ARREADY;
  wire [2:0]smartconnect_0_M00_AXI1_ARSIZE;
  wire smartconnect_0_M00_AXI1_ARVALID;
  wire [31:0]smartconnect_0_M00_AXI1_AWADDR;
  wire [1:0]smartconnect_0_M00_AXI1_AWBURST;
  wire [3:0]smartconnect_0_M00_AXI1_AWCACHE;
  wire [7:0]smartconnect_0_M00_AXI1_AWLEN;
  wire [0:0]smartconnect_0_M00_AXI1_AWLOCK;
  wire [2:0]smartconnect_0_M00_AXI1_AWPROT;
  wire [3:0]smartconnect_0_M00_AXI1_AWQOS;
  wire smartconnect_0_M00_AXI1_AWREADY;
  wire [2:0]smartconnect_0_M00_AXI1_AWSIZE;
  wire smartconnect_0_M00_AXI1_AWVALID;
  wire smartconnect_0_M00_AXI1_BREADY;
  wire [1:0]smartconnect_0_M00_AXI1_BRESP;
  wire smartconnect_0_M00_AXI1_BVALID;
  wire [63:0]smartconnect_0_M00_AXI1_RDATA;
  wire smartconnect_0_M00_AXI1_RLAST;
  wire smartconnect_0_M00_AXI1_RREADY;
  wire [1:0]smartconnect_0_M00_AXI1_RRESP;
  wire smartconnect_0_M00_AXI1_RVALID;
  wire [63:0]smartconnect_0_M00_AXI1_WDATA;
  wire smartconnect_0_M00_AXI1_WLAST;
  wire smartconnect_0_M00_AXI1_WREADY;
  wire [7:0]smartconnect_0_M00_AXI1_WSTRB;
  wire smartconnect_0_M00_AXI1_WVALID;
  wire [31:0]smartconnect_0_M00_AXI_ARADDR;
  wire [2:0]smartconnect_0_M00_AXI_ARPROT;
  wire smartconnect_0_M00_AXI_ARREADY;
  wire smartconnect_0_M00_AXI_ARVALID;
  wire [31:0]smartconnect_0_M00_AXI_RDATA;
  wire smartconnect_0_M00_AXI_RREADY;
  wire [1:0]smartconnect_0_M00_AXI_RRESP;
  wire smartconnect_0_M00_AXI_RVALID;
  wire [3:0]smartconnect_io_M00_AXI_ARADDR;
  wire smartconnect_io_M00_AXI_ARREADY;
  wire smartconnect_io_M00_AXI_ARVALID;
  wire [3:0]smartconnect_io_M00_AXI_AWADDR;
  wire smartconnect_io_M00_AXI_AWREADY;
  wire smartconnect_io_M00_AXI_AWVALID;
  wire smartconnect_io_M00_AXI_BREADY;
  wire [1:0]smartconnect_io_M00_AXI_BRESP;
  wire smartconnect_io_M00_AXI_BVALID;
  wire [31:0]smartconnect_io_M00_AXI_RDATA;
  wire smartconnect_io_M00_AXI_RREADY;
  wire [1:0]smartconnect_io_M00_AXI_RRESP;
  wire smartconnect_io_M00_AXI_RVALID;
  wire [31:0]smartconnect_io_M00_AXI_WDATA;
  wire smartconnect_io_M00_AXI_WREADY;
  wire [3:0]smartconnect_io_M00_AXI_WSTRB;
  wire smartconnect_io_M00_AXI_WVALID;
  wire [6:0]smartconnect_io_M01_AXI_ARADDR;
  wire smartconnect_io_M01_AXI_ARREADY;
  wire smartconnect_io_M01_AXI_ARVALID;
  wire [6:0]smartconnect_io_M01_AXI_AWADDR;
  wire smartconnect_io_M01_AXI_AWREADY;
  wire smartconnect_io_M01_AXI_AWVALID;
  wire smartconnect_io_M01_AXI_BREADY;
  wire [1:0]smartconnect_io_M01_AXI_BRESP;
  wire smartconnect_io_M01_AXI_BVALID;
  wire [31:0]smartconnect_io_M01_AXI_RDATA;
  wire smartconnect_io_M01_AXI_RREADY;
  wire [1:0]smartconnect_io_M01_AXI_RRESP;
  wire smartconnect_io_M01_AXI_RVALID;
  wire [31:0]smartconnect_io_M01_AXI_WDATA;
  wire smartconnect_io_M01_AXI_WREADY;
  wire [3:0]smartconnect_io_M01_AXI_WSTRB;
  wire smartconnect_io_M01_AXI_WVALID;
  wire [9:0]smartconnect_io_M05_AXI_ARADDR;
  wire smartconnect_io_M05_AXI_ARREADY;
  wire smartconnect_io_M05_AXI_ARVALID;
  wire [9:0]smartconnect_io_M05_AXI_AWADDR;
  wire smartconnect_io_M05_AXI_AWREADY;
  wire smartconnect_io_M05_AXI_AWVALID;
  wire smartconnect_io_M05_AXI_BREADY;
  wire [1:0]smartconnect_io_M05_AXI_BRESP;
  wire smartconnect_io_M05_AXI_BVALID;
  wire [31:0]smartconnect_io_M05_AXI_RDATA;
  wire smartconnect_io_M05_AXI_RREADY;
  wire [1:0]smartconnect_io_M05_AXI_RRESP;
  wire smartconnect_io_M05_AXI_RVALID;
  wire [31:0]smartconnect_io_M05_AXI_WDATA;
  wire smartconnect_io_M05_AXI_WREADY;
  wire smartconnect_io_M05_AXI_WVALID;
  wire [6:0]smartconnect_io_M09_AXI_ARADDR;
  wire smartconnect_io_M09_AXI_ARREADY;
  wire smartconnect_io_M09_AXI_ARVALID;
  wire [6:0]smartconnect_io_M09_AXI_AWADDR;
  wire smartconnect_io_M09_AXI_AWREADY;
  wire smartconnect_io_M09_AXI_AWVALID;
  wire smartconnect_io_M09_AXI_BREADY;
  wire [1:0]smartconnect_io_M09_AXI_BRESP;
  wire smartconnect_io_M09_AXI_BVALID;
  wire [31:0]smartconnect_io_M09_AXI_RDATA;
  wire smartconnect_io_M09_AXI_RREADY;
  wire [1:0]smartconnect_io_M09_AXI_RRESP;
  wire smartconnect_io_M09_AXI_RVALID;
  wire [31:0]smartconnect_io_M09_AXI_WDATA;
  wire smartconnect_io_M09_AXI_WREADY;
  wire [3:0]smartconnect_io_M09_AXI_WSTRB;
  wire smartconnect_io_M09_AXI_WVALID;
  wire [5:0]smartconnect_io_M10_AXI_ARADDR;
  wire smartconnect_io_M10_AXI_ARREADY;
  wire smartconnect_io_M10_AXI_ARVALID;
  wire [5:0]smartconnect_io_M10_AXI_AWADDR;
  wire smartconnect_io_M10_AXI_AWREADY;
  wire smartconnect_io_M10_AXI_AWVALID;
  wire smartconnect_io_M10_AXI_BREADY;
  wire [1:0]smartconnect_io_M10_AXI_BRESP;
  wire smartconnect_io_M10_AXI_BVALID;
  wire [31:0]smartconnect_io_M10_AXI_RDATA;
  wire smartconnect_io_M10_AXI_RREADY;
  wire [1:0]smartconnect_io_M10_AXI_RRESP;
  wire smartconnect_io_M10_AXI_RVALID;
  wire [31:0]smartconnect_io_M10_AXI_WDATA;
  wire smartconnect_io_M10_AXI_WREADY;
  wire [3:0]smartconnect_io_M10_AXI_WSTRB;
  wire smartconnect_io_M10_AXI_WVALID;
  wire [16:0]smartconnect_io_M11_AXI_ARADDR;
  wire [2:0]smartconnect_io_M11_AXI_ARPROT;
  wire smartconnect_io_M11_AXI_ARREADY;
  wire smartconnect_io_M11_AXI_ARVALID;
  wire [16:0]smartconnect_io_M11_AXI_AWADDR;
  wire [2:0]smartconnect_io_M11_AXI_AWPROT;
  wire smartconnect_io_M11_AXI_AWREADY;
  wire smartconnect_io_M11_AXI_AWVALID;
  wire smartconnect_io_M11_AXI_BREADY;
  wire [1:0]smartconnect_io_M11_AXI_BRESP;
  wire smartconnect_io_M11_AXI_BVALID;
  wire [31:0]smartconnect_io_M11_AXI_RDATA;
  wire smartconnect_io_M11_AXI_RREADY;
  wire [1:0]smartconnect_io_M11_AXI_RRESP;
  wire smartconnect_io_M11_AXI_RVALID;
  wire [31:0]smartconnect_io_M11_AXI_WDATA;
  wire smartconnect_io_M11_AXI_WREADY;
  wire [3:0]smartconnect_io_M11_AXI_WSTRB;
  wire smartconnect_io_M11_AXI_WVALID;
  wire [27:0]smartconnect_mem_M01_AXI_ARADDR;
  wire [1:0]smartconnect_mem_M01_AXI_ARBURST;
  wire [3:0]smartconnect_mem_M01_AXI_ARCACHE;
  wire [7:0]smartconnect_mem_M01_AXI_ARLEN;
  wire [0:0]smartconnect_mem_M01_AXI_ARLOCK;
  wire [2:0]smartconnect_mem_M01_AXI_ARPROT;
  wire [3:0]smartconnect_mem_M01_AXI_ARQOS;
  wire smartconnect_mem_M01_AXI_ARREADY;
  wire [2:0]smartconnect_mem_M01_AXI_ARSIZE;
  wire smartconnect_mem_M01_AXI_ARVALID;
  wire [27:0]smartconnect_mem_M01_AXI_AWADDR;
  wire [1:0]smartconnect_mem_M01_AXI_AWBURST;
  wire [3:0]smartconnect_mem_M01_AXI_AWCACHE;
  wire [7:0]smartconnect_mem_M01_AXI_AWLEN;
  wire [0:0]smartconnect_mem_M01_AXI_AWLOCK;
  wire [2:0]smartconnect_mem_M01_AXI_AWPROT;
  wire [3:0]smartconnect_mem_M01_AXI_AWQOS;
  wire smartconnect_mem_M01_AXI_AWREADY;
  wire [2:0]smartconnect_mem_M01_AXI_AWSIZE;
  wire smartconnect_mem_M01_AXI_AWVALID;
  wire smartconnect_mem_M01_AXI_BREADY;
  wire [1:0]smartconnect_mem_M01_AXI_BRESP;
  wire smartconnect_mem_M01_AXI_BVALID;
  wire [127:0]smartconnect_mem_M01_AXI_RDATA;
  wire smartconnect_mem_M01_AXI_RLAST;
  wire smartconnect_mem_M01_AXI_RREADY;
  wire [1:0]smartconnect_mem_M01_AXI_RRESP;
  wire smartconnect_mem_M01_AXI_RVALID;
  wire [127:0]smartconnect_mem_M01_AXI_WDATA;
  wire smartconnect_mem_M01_AXI_WLAST;
  wire smartconnect_mem_M01_AXI_WREADY;
  wire [15:0]smartconnect_mem_M01_AXI_WSTRB;
  wire smartconnect_mem_M01_AXI_WVALID;
  wire [0:0]spi_controller0_miso;
  wire [0:0]spi_controller0_mosi;
  wire [0:0]spi_controller0_sck;
  wire [0:0]spi_controller0_ss;
  wire [0:0]spi_controller1_miso;
  wire [0:0]spi_controller1_mosi;
  wire [0:0]spi_controller1_sck;
  wire [0:0]spi_controller1_ss;
  wire spi_flash_ce_n;
  wire spi_int_n;
  wire spi_miso;
  wire spi_mosi;
  wire spi_sck;
  wire test_tx;
  wire usb_rx;
  wire [0:0]util_ds_buf_0_IOBUF_IO_O;
  wire [0:0]util_ds_buf_1_IOBUF_IO_O;
  wire [0:0]util_ds_buf_2_IOBUF_IO_O;
  wire [0:0]util_ds_buf_3_IOBUF_IO_O;
  wire [0:0]util_ds_buf_4_IOBUF_IO_O;
  wire [0:0]util_ds_buf_5_IOBUF_IO_O;
  wire [0:0]util_ds_buf_6_IOBUF_IO_O;
  wire [0:0]util_ds_buf_7_IOBUF_IO_O;
  wire [0:0]util_vector_logic_2_Res;
  wire \^v_sync ;
  wire [3:0]vga_b;
  wire [3:0]vga_g;
  wire [3:0]vga_r;
  wire [31:0]xlconcat_0_dout;

  assign h_sync[0] = \^h_sync ;
  assign usb_tx = test_tx;
  assign v_sync[0] = \^v_sync ;
  Block_top_ARES_RasterIXWrapper_0_0 ARES_RasterIXWrapper_0
       (.aclk(mig_axi_wrapper_0_ui_clk),
        .fb_addr(ARES_RasterIXWrapper_0_fb_addr),
        .fb_size(ARES_RasterIXWrapper_0_fb_size),
        .fb_swapped(ARES_RaxyerIX_frameb_0_fb_swapped),
        .m_axi_araddr(ARES_RasterIXWrapper_0_m_axi_ARADDR),
        .m_axi_arburst(ARES_RasterIXWrapper_0_m_axi_ARBURST),
        .m_axi_arcache(ARES_RasterIXWrapper_0_m_axi_ARCACHE),
        .m_axi_arid(ARES_RasterIXWrapper_0_m_axi_ARID),
        .m_axi_arlen(ARES_RasterIXWrapper_0_m_axi_ARLEN),
        .m_axi_arlock(ARES_RasterIXWrapper_0_m_axi_ARLOCK),
        .m_axi_arprot(ARES_RasterIXWrapper_0_m_axi_ARPROT),
        .m_axi_arready(ARES_RasterIXWrapper_0_m_axi_ARREADY),
        .m_axi_arsize(ARES_RasterIXWrapper_0_m_axi_ARSIZE),
        .m_axi_arvalid(ARES_RasterIXWrapper_0_m_axi_ARVALID),
        .m_axi_awaddr(ARES_RasterIXWrapper_0_m_axi_AWADDR),
        .m_axi_awburst(ARES_RasterIXWrapper_0_m_axi_AWBURST),
        .m_axi_awcache(ARES_RasterIXWrapper_0_m_axi_AWCACHE),
        .m_axi_awid(ARES_RasterIXWrapper_0_m_axi_AWID),
        .m_axi_awlen(ARES_RasterIXWrapper_0_m_axi_AWLEN),
        .m_axi_awlock(ARES_RasterIXWrapper_0_m_axi_AWLOCK),
        .m_axi_awprot(ARES_RasterIXWrapper_0_m_axi_AWPROT),
        .m_axi_awready(ARES_RasterIXWrapper_0_m_axi_AWREADY),
        .m_axi_awsize(ARES_RasterIXWrapper_0_m_axi_AWSIZE),
        .m_axi_awvalid(ARES_RasterIXWrapper_0_m_axi_AWVALID),
        .m_axi_bid(ARES_RasterIXWrapper_0_m_axi_BID),
        .m_axi_bready(ARES_RasterIXWrapper_0_m_axi_BREADY),
        .m_axi_bresp(ARES_RasterIXWrapper_0_m_axi_BRESP),
        .m_axi_bvalid(ARES_RasterIXWrapper_0_m_axi_BVALID),
        .m_axi_rdata(ARES_RasterIXWrapper_0_m_axi_RDATA),
        .m_axi_rid(ARES_RasterIXWrapper_0_m_axi_RID),
        .m_axi_rlast(ARES_RasterIXWrapper_0_m_axi_RLAST),
        .m_axi_rready(ARES_RasterIXWrapper_0_m_axi_RREADY),
        .m_axi_rresp(ARES_RasterIXWrapper_0_m_axi_RRESP),
        .m_axi_rvalid(ARES_RasterIXWrapper_0_m_axi_RVALID),
        .m_axi_wdata(ARES_RasterIXWrapper_0_m_axi_WDATA),
        .m_axi_wlast(ARES_RasterIXWrapper_0_m_axi_WLAST),
        .m_axi_wready(ARES_RasterIXWrapper_0_m_axi_WREADY),
        .m_axi_wstrb(ARES_RasterIXWrapper_0_m_axi_WSTRB),
        .m_axi_wvalid(ARES_RasterIXWrapper_0_m_axi_WVALID),
        .m_cmd_resp_axis_tdata(ARES_RasterIXWrapper_0_m_cmd_resp_axis_TDATA),
        .m_cmd_resp_axis_tlast(ARES_RasterIXWrapper_0_m_cmd_resp_axis_TLAST),
        .m_cmd_resp_axis_tready(ARES_RasterIXWrapper_0_m_cmd_resp_axis_TREADY),
        .m_cmd_resp_axis_tvalid(ARES_RasterIXWrapper_0_m_cmd_resp_axis_TVALID),
        .resetn(reset_n),
        .s_cmd_axis_tdata(axi_dma_0_M_AXIS_MM2S_TDATA),
        .s_cmd_axis_tlast(axi_dma_0_M_AXIS_MM2S_TLAST),
        .s_cmd_axis_tready(axi_dma_0_M_AXIS_MM2S_TREADY),
        .s_cmd_axis_tvalid(axi_dma_0_M_AXIS_MM2S_TVALID),
        .swap_fb(ARES_RasterIXWrapper_0_swap_fb),
        .swap_fb_enable_vsync(ARES_RasterIXWrapper_0_swap_fb_enable_vsync));
  Block_top_ARES_RaxyerIX_frameb_0_0 ARES_RaxyerIX_frameb_0
       (.fb_addr(ARES_RasterIXWrapper_0_fb_addr),
        .fb_size(ARES_RasterIXWrapper_0_fb_size),
        .fb_swapped(ARES_RaxyerIX_frameb_0_fb_swapped),
        .ram_axi_aclk(mig_axi_wrapper_0_ui_clk),
        .ram_axi_araddr(ARES_RaxyerIX_frameb_0_ram_axi_ARADDR),
        .ram_axi_arburst(ARES_RaxyerIX_frameb_0_ram_axi_ARBURST),
        .ram_axi_arlen(ARES_RaxyerIX_frameb_0_ram_axi_ARLEN),
        .ram_axi_arready(ARES_RaxyerIX_frameb_0_ram_axi_ARREADY),
        .ram_axi_arsize(ARES_RaxyerIX_frameb_0_ram_axi_ARSIZE),
        .ram_axi_arvalid(ARES_RaxyerIX_frameb_0_ram_axi_ARVALID),
        .ram_axi_rdata(ARES_RaxyerIX_frameb_0_ram_axi_RDATA),
        .ram_axi_rlast(ARES_RaxyerIX_frameb_0_ram_axi_RLAST),
        .ram_axi_rready(ARES_RaxyerIX_frameb_0_ram_axi_RREADY),
        .ram_axi_rresp(ARES_RaxyerIX_frameb_0_ram_axi_RRESP),
        .ram_axi_rvalid(ARES_RaxyerIX_frameb_0_ram_axi_RVALID),
        .resetn(reset_n),
        .swap_fb(ARES_RasterIXWrapper_0_swap_fb),
        .swap_fb_enable_vsync(ARES_RasterIXWrapper_0_swap_fb_enable_vsync),
        .vga_b(vga_b),
        .vga_g(vga_g),
        .vga_hsync(\^h_sync ),
        .vga_r(vga_r),
        .vga_vsync(\^v_sync ));
  Block_top_FLASH_SPI_wrapper_0_0 FLASH_SPI_wrapper_0
       (.reset(reset),
        .s_axi_araddr(smartconnect_0_M00_AXI_ARADDR),
        .s_axi_arprot(smartconnect_0_M00_AXI_ARPROT),
        .s_axi_arready(smartconnect_0_M00_AXI_ARREADY),
        .s_axi_arvalid(smartconnect_0_M00_AXI_ARVALID),
        .s_axi_clk(mig_axi_wrapper_0_ui_clk),
        .s_axi_rdata(smartconnect_0_M00_AXI_RDATA),
        .s_axi_rready(smartconnect_0_M00_AXI_RREADY),
        .s_axi_rresp(smartconnect_0_M00_AXI_RRESP),
        .s_axi_rvalid(smartconnect_0_M00_AXI_RVALID),
        .spi_ce_n(spi_flash_ce_n),
        .spi_miso(spi_miso),
        .spi_mosi(spi_mosi),
        .spi_sck(spi_sck));
  Block_top_VexiiSocWrapper_0_1 VexiiSocWrapper_0
       (.dma_bus_araddr(smartconnect_0_M00_AXI1_ARADDR),
        .dma_bus_arburst(smartconnect_0_M00_AXI1_ARBURST),
        .dma_bus_arcache(smartconnect_0_M00_AXI1_ARCACHE),
        .dma_bus_arid({1'b0,1'b0,1'b0,1'b0}),
        .dma_bus_arlen(smartconnect_0_M00_AXI1_ARLEN),
        .dma_bus_arlock(smartconnect_0_M00_AXI1_ARLOCK),
        .dma_bus_arprot(smartconnect_0_M00_AXI1_ARPROT),
        .dma_bus_arqos(smartconnect_0_M00_AXI1_ARQOS),
        .dma_bus_arready(smartconnect_0_M00_AXI1_ARREADY),
        .dma_bus_arregion({1'b0,1'b0,1'b0,1'b0}),
        .dma_bus_arsize(smartconnect_0_M00_AXI1_ARSIZE),
        .dma_bus_arvalid(smartconnect_0_M00_AXI1_ARVALID),
        .dma_bus_awaddr(smartconnect_0_M00_AXI1_AWADDR),
        .dma_bus_awburst(smartconnect_0_M00_AXI1_AWBURST),
        .dma_bus_awcache(smartconnect_0_M00_AXI1_AWCACHE),
        .dma_bus_awid({1'b0,1'b0,1'b0,1'b0}),
        .dma_bus_awlen(smartconnect_0_M00_AXI1_AWLEN),
        .dma_bus_awlock(smartconnect_0_M00_AXI1_AWLOCK),
        .dma_bus_awprot(smartconnect_0_M00_AXI1_AWPROT),
        .dma_bus_awqos(smartconnect_0_M00_AXI1_AWQOS),
        .dma_bus_awready(smartconnect_0_M00_AXI1_AWREADY),
        .dma_bus_awregion({1'b0,1'b0,1'b0,1'b0}),
        .dma_bus_awsize(smartconnect_0_M00_AXI1_AWSIZE),
        .dma_bus_awvalid(smartconnect_0_M00_AXI1_AWVALID),
        .dma_bus_bready(smartconnect_0_M00_AXI1_BREADY),
        .dma_bus_bresp(smartconnect_0_M00_AXI1_BRESP),
        .dma_bus_bvalid(smartconnect_0_M00_AXI1_BVALID),
        .dma_bus_rdata(smartconnect_0_M00_AXI1_RDATA),
        .dma_bus_rlast(smartconnect_0_M00_AXI1_RLAST),
        .dma_bus_rready(smartconnect_0_M00_AXI1_RREADY),
        .dma_bus_rresp(smartconnect_0_M00_AXI1_RRESP),
        .dma_bus_rvalid(smartconnect_0_M00_AXI1_RVALID),
        .dma_bus_wdata(smartconnect_0_M00_AXI1_WDATA),
        .dma_bus_wlast(smartconnect_0_M00_AXI1_WLAST),
        .dma_bus_wready(smartconnect_0_M00_AXI1_WREADY),
        .dma_bus_wstrb(smartconnect_0_M00_AXI1_WSTRB),
        .dma_bus_wvalid(smartconnect_0_M00_AXI1_WVALID),
        .mBus_araddr(VexiiSocWrapper_0_mBus_ARADDR),
        .mBus_arburst(VexiiSocWrapper_0_mBus_ARBURST),
        .mBus_arid(VexiiSocWrapper_0_mBus_ARID),
        .mBus_arlen(VexiiSocWrapper_0_mBus_ARLEN),
        .mBus_arready(VexiiSocWrapper_0_mBus_ARREADY),
        .mBus_arsize(VexiiSocWrapper_0_mBus_ARSIZE),
        .mBus_arvalid(VexiiSocWrapper_0_mBus_ARVALID),
        .mBus_awaddr(VexiiSocWrapper_0_mBus_AWADDR),
        .mBus_awburst(VexiiSocWrapper_0_mBus_AWBURST),
        .mBus_awid(VexiiSocWrapper_0_mBus_AWID),
        .mBus_awlen(VexiiSocWrapper_0_mBus_AWLEN),
        .mBus_awready(VexiiSocWrapper_0_mBus_AWREADY),
        .mBus_awsize(VexiiSocWrapper_0_mBus_AWSIZE),
        .mBus_awvalid(VexiiSocWrapper_0_mBus_AWVALID),
        .mBus_bid(VexiiSocWrapper_0_mBus_BID),
        .mBus_bready(VexiiSocWrapper_0_mBus_BREADY),
        .mBus_bresp(VexiiSocWrapper_0_mBus_BRESP),
        .mBus_bvalid(VexiiSocWrapper_0_mBus_BVALID),
        .mBus_rdata(VexiiSocWrapper_0_mBus_RDATA),
        .mBus_rid(VexiiSocWrapper_0_mBus_RID),
        .mBus_rlast(VexiiSocWrapper_0_mBus_RLAST),
        .mBus_rready(VexiiSocWrapper_0_mBus_RREADY),
        .mBus_rresp(VexiiSocWrapper_0_mBus_RRESP),
        .mBus_rvalid(VexiiSocWrapper_0_mBus_RVALID),
        .mBus_wdata(VexiiSocWrapper_0_mBus_WDATA),
        .mBus_wlast(VexiiSocWrapper_0_mBus_WLAST),
        .mBus_wready(VexiiSocWrapper_0_mBus_WREADY),
        .mBus_wstrb(VexiiSocWrapper_0_mBus_WSTRB),
        .mBus_wvalid(VexiiSocWrapper_0_mBus_WVALID),
        .pBus_araddr(VexiiSocWrapper_0_pBus_ARADDR),
        .pBus_arprot(VexiiSocWrapper_0_pBus_ARPROT),
        .pBus_arready(VexiiSocWrapper_0_pBus_ARREADY),
        .pBus_arvalid(VexiiSocWrapper_0_pBus_ARVALID),
        .pBus_awaddr(VexiiSocWrapper_0_pBus_AWADDR),
        .pBus_awprot(VexiiSocWrapper_0_pBus_AWPROT),
        .pBus_awready(VexiiSocWrapper_0_pBus_AWREADY),
        .pBus_awvalid(VexiiSocWrapper_0_pBus_AWVALID),
        .pBus_bready(VexiiSocWrapper_0_pBus_BREADY),
        .pBus_bresp(VexiiSocWrapper_0_pBus_BRESP),
        .pBus_bvalid(VexiiSocWrapper_0_pBus_BVALID),
        .pBus_rdata(VexiiSocWrapper_0_pBus_RDATA),
        .pBus_rready(VexiiSocWrapper_0_pBus_RREADY),
        .pBus_rresp(VexiiSocWrapper_0_pBus_RRESP),
        .pBus_rvalid(VexiiSocWrapper_0_pBus_RVALID),
        .pBus_wdata(VexiiSocWrapper_0_pBus_WDATA),
        .pBus_wready(VexiiSocWrapper_0_pBus_WREADY),
        .pBus_wstrb(VexiiSocWrapper_0_pBus_WSTRB),
        .pBus_wvalid(VexiiSocWrapper_0_pBus_WVALID),
        .peripheral_externalInterrupts_port(xlconcat_0_dout),
        .s_axi_aclk(mig_axi_wrapper_0_ui_clk),
        .s_axi_aresetn(reset_n));
  Block_top_axi_cf_controller_0_0 axi_cf_controller_0
       (.cf_cs0_n(ide_cs0_n),
        .cf_cs1_n(ide_cs1_n),
        .cf_da(ide_a),
        .cf_dq(ide_d),
        .cf_intrq(ide_irq),
        .cf_iord_n(ide_rd_n),
        .cf_iowr_n(ide_wr_n),
        .cf_reset_n(ide_reset_n),
        .irq(axi_cf_controller_0_irq),
        .s_axi_aclk(mig_axi_wrapper_0_ui_clk),
        .s_axi_araddr(smartconnect_io_M11_AXI_ARADDR),
        .s_axi_aresetn(reset_n),
        .s_axi_arprot(smartconnect_io_M11_AXI_ARPROT),
        .s_axi_arready(smartconnect_io_M11_AXI_ARREADY),
        .s_axi_arvalid(smartconnect_io_M11_AXI_ARVALID),
        .s_axi_awaddr(smartconnect_io_M11_AXI_AWADDR),
        .s_axi_awprot(smartconnect_io_M11_AXI_AWPROT),
        .s_axi_awready(smartconnect_io_M11_AXI_AWREADY),
        .s_axi_awvalid(smartconnect_io_M11_AXI_AWVALID),
        .s_axi_bready(smartconnect_io_M11_AXI_BREADY),
        .s_axi_bresp(smartconnect_io_M11_AXI_BRESP),
        .s_axi_bvalid(smartconnect_io_M11_AXI_BVALID),
        .s_axi_rdata(smartconnect_io_M11_AXI_RDATA),
        .s_axi_rready(smartconnect_io_M11_AXI_RREADY),
        .s_axi_rresp(smartconnect_io_M11_AXI_RRESP),
        .s_axi_rvalid(smartconnect_io_M11_AXI_RVALID),
        .s_axi_wdata(smartconnect_io_M11_AXI_WDATA),
        .s_axi_wready(smartconnect_io_M11_AXI_WREADY),
        .s_axi_wstrb(smartconnect_io_M11_AXI_WSTRB),
        .s_axi_wvalid(smartconnect_io_M11_AXI_WVALID));
  Block_top_axi_dma_0_0 axi_dma_0
       (.axi_resetn(reset_n),
        .m_axi_mm2s_aclk(mig_axi_wrapper_0_ui_clk),
        .m_axi_mm2s_araddr(axi_dma_0_M_AXI_MM2S_ARADDR),
        .m_axi_mm2s_arburst(axi_dma_0_M_AXI_MM2S_ARBURST),
        .m_axi_mm2s_arcache(axi_dma_0_M_AXI_MM2S_ARCACHE),
        .m_axi_mm2s_arlen(axi_dma_0_M_AXI_MM2S_ARLEN),
        .m_axi_mm2s_arprot(axi_dma_0_M_AXI_MM2S_ARPROT),
        .m_axi_mm2s_arready(axi_dma_0_M_AXI_MM2S_ARREADY),
        .m_axi_mm2s_arsize(axi_dma_0_M_AXI_MM2S_ARSIZE),
        .m_axi_mm2s_arvalid(axi_dma_0_M_AXI_MM2S_ARVALID),
        .m_axi_mm2s_rdata(axi_dma_0_M_AXI_MM2S_RDATA),
        .m_axi_mm2s_rlast(axi_dma_0_M_AXI_MM2S_RLAST),
        .m_axi_mm2s_rready(axi_dma_0_M_AXI_MM2S_RREADY),
        .m_axi_mm2s_rresp(axi_dma_0_M_AXI_MM2S_RRESP),
        .m_axi_mm2s_rvalid(axi_dma_0_M_AXI_MM2S_RVALID),
        .m_axi_s2mm_aclk(mig_axi_wrapper_0_ui_clk),
        .m_axi_s2mm_awaddr(axi_dma_0_M_AXI_S2MM_AWADDR),
        .m_axi_s2mm_awburst(axi_dma_0_M_AXI_S2MM_AWBURST),
        .m_axi_s2mm_awcache(axi_dma_0_M_AXI_S2MM_AWCACHE),
        .m_axi_s2mm_awlen(axi_dma_0_M_AXI_S2MM_AWLEN),
        .m_axi_s2mm_awprot(axi_dma_0_M_AXI_S2MM_AWPROT),
        .m_axi_s2mm_awready(axi_dma_0_M_AXI_S2MM_AWREADY),
        .m_axi_s2mm_awsize(axi_dma_0_M_AXI_S2MM_AWSIZE),
        .m_axi_s2mm_awvalid(axi_dma_0_M_AXI_S2MM_AWVALID),
        .m_axi_s2mm_bready(axi_dma_0_M_AXI_S2MM_BREADY),
        .m_axi_s2mm_bresp(axi_dma_0_M_AXI_S2MM_BRESP),
        .m_axi_s2mm_bvalid(axi_dma_0_M_AXI_S2MM_BVALID),
        .m_axi_s2mm_wdata(axi_dma_0_M_AXI_S2MM_WDATA),
        .m_axi_s2mm_wlast(axi_dma_0_M_AXI_S2MM_WLAST),
        .m_axi_s2mm_wready(axi_dma_0_M_AXI_S2MM_WREADY),
        .m_axi_s2mm_wstrb(axi_dma_0_M_AXI_S2MM_WSTRB),
        .m_axi_s2mm_wvalid(axi_dma_0_M_AXI_S2MM_WVALID),
        .m_axis_mm2s_tdata(axi_dma_0_M_AXIS_MM2S_TDATA),
        .m_axis_mm2s_tlast(axi_dma_0_M_AXIS_MM2S_TLAST),
        .m_axis_mm2s_tready(axi_dma_0_M_AXIS_MM2S_TREADY),
        .m_axis_mm2s_tvalid(axi_dma_0_M_AXIS_MM2S_TVALID),
        .mm2s_introut(axi_dma_0_mm2s_introut),
        .s2mm_introut(axi_dma_0_s2mm_introut),
        .s_axi_lite_aclk(mig_axi_wrapper_0_ui_clk),
        .s_axi_lite_araddr(smartconnect_io_M05_AXI_ARADDR),
        .s_axi_lite_arready(smartconnect_io_M05_AXI_ARREADY),
        .s_axi_lite_arvalid(smartconnect_io_M05_AXI_ARVALID),
        .s_axi_lite_awaddr(smartconnect_io_M05_AXI_AWADDR),
        .s_axi_lite_awready(smartconnect_io_M05_AXI_AWREADY),
        .s_axi_lite_awvalid(smartconnect_io_M05_AXI_AWVALID),
        .s_axi_lite_bready(smartconnect_io_M05_AXI_BREADY),
        .s_axi_lite_bresp(smartconnect_io_M05_AXI_BRESP),
        .s_axi_lite_bvalid(smartconnect_io_M05_AXI_BVALID),
        .s_axi_lite_rdata(smartconnect_io_M05_AXI_RDATA),
        .s_axi_lite_rready(smartconnect_io_M05_AXI_RREADY),
        .s_axi_lite_rresp(smartconnect_io_M05_AXI_RRESP),
        .s_axi_lite_rvalid(smartconnect_io_M05_AXI_RVALID),
        .s_axi_lite_wdata(smartconnect_io_M05_AXI_WDATA),
        .s_axi_lite_wready(smartconnect_io_M05_AXI_WREADY),
        .s_axi_lite_wvalid(smartconnect_io_M05_AXI_WVALID),
        .s_axis_s2mm_tdata(ARES_RasterIXWrapper_0_m_cmd_resp_axis_TDATA),
        .s_axis_s2mm_tkeep({1'b1,1'b1,1'b1,1'b1}),
        .s_axis_s2mm_tlast(ARES_RasterIXWrapper_0_m_cmd_resp_axis_TLAST),
        .s_axis_s2mm_tready(ARES_RasterIXWrapper_0_m_cmd_resp_axis_TREADY),
        .s_axis_s2mm_tvalid(ARES_RasterIXWrapper_0_m_cmd_resp_axis_TVALID));
  Block_top_axi_keyboard_0_0 axi_keyboard_0
       (.caps_led(KYBD_LED_CAPS),
        .irq(axi_keyboard_0_irq),
        .kana_led(KYBD_LED_CODE),
        .keyboard_col_n(KYBD_COL),
        .keyboard_row(KYBD_ROW),
        .s_axi_aclk(mig_axi_wrapper_0_ui_clk),
        .s_axi_araddr(smartconnect_io_M10_AXI_ARADDR),
        .s_axi_aresetn(reset_n),
        .s_axi_arready(smartconnect_io_M10_AXI_ARREADY),
        .s_axi_arvalid(smartconnect_io_M10_AXI_ARVALID),
        .s_axi_awaddr(smartconnect_io_M10_AXI_AWADDR),
        .s_axi_awready(smartconnect_io_M10_AXI_AWREADY),
        .s_axi_awvalid(smartconnect_io_M10_AXI_AWVALID),
        .s_axi_bready(smartconnect_io_M10_AXI_BREADY),
        .s_axi_bresp(smartconnect_io_M10_AXI_BRESP),
        .s_axi_bvalid(smartconnect_io_M10_AXI_BVALID),
        .s_axi_rdata(smartconnect_io_M10_AXI_RDATA),
        .s_axi_rready(smartconnect_io_M10_AXI_RREADY),
        .s_axi_rresp(smartconnect_io_M10_AXI_RRESP),
        .s_axi_rvalid(smartconnect_io_M10_AXI_RVALID),
        .s_axi_wdata(smartconnect_io_M10_AXI_WDATA),
        .s_axi_wready(smartconnect_io_M10_AXI_WREADY),
        .s_axi_wstrb(smartconnect_io_M10_AXI_WSTRB),
        .s_axi_wvalid(smartconnect_io_M10_AXI_WVALID));
  Block_top_axi_quad_spi_0_1 axi_quad_spi_0
       (.ext_spi_clk(mig_axi_wrapper_0_ui_clk),
        .io0_i(util_ds_buf_0_IOBUF_IO_O),
        .io0_o(axi_quad_spi_0_io0_o),
        .io0_t(axi_quad_spi_0_io0_t),
        .io1_i(util_ds_buf_1_IOBUF_IO_O),
        .io1_o(axi_quad_spi_0_io1_o),
        .io1_t(axi_quad_spi_0_io1_t),
        .ip2intc_irpt(axi_quad_spi_0_ip2intc_irpt),
        .s_axi_aclk(mig_axi_wrapper_0_ui_clk),
        .s_axi_araddr(smartconnect_io_M01_AXI_ARADDR),
        .s_axi_aresetn(reset_n),
        .s_axi_arready(smartconnect_io_M01_AXI_ARREADY),
        .s_axi_arvalid(smartconnect_io_M01_AXI_ARVALID),
        .s_axi_awaddr(smartconnect_io_M01_AXI_AWADDR),
        .s_axi_awready(smartconnect_io_M01_AXI_AWREADY),
        .s_axi_awvalid(smartconnect_io_M01_AXI_AWVALID),
        .s_axi_bready(smartconnect_io_M01_AXI_BREADY),
        .s_axi_bresp(smartconnect_io_M01_AXI_BRESP),
        .s_axi_bvalid(smartconnect_io_M01_AXI_BVALID),
        .s_axi_rdata(smartconnect_io_M01_AXI_RDATA),
        .s_axi_rready(smartconnect_io_M01_AXI_RREADY),
        .s_axi_rresp(smartconnect_io_M01_AXI_RRESP),
        .s_axi_rvalid(smartconnect_io_M01_AXI_RVALID),
        .s_axi_wdata(smartconnect_io_M01_AXI_WDATA),
        .s_axi_wready(smartconnect_io_M01_AXI_WREADY),
        .s_axi_wstrb(smartconnect_io_M01_AXI_WSTRB),
        .s_axi_wvalid(smartconnect_io_M01_AXI_WVALID),
        .sck_i(util_ds_buf_2_IOBUF_IO_O),
        .sck_o(axi_quad_spi_0_sck_o),
        .sck_t(axi_quad_spi_0_sck_t),
        .ss_i(util_ds_buf_3_IOBUF_IO_O),
        .ss_o(axi_quad_spi_0_ss_o),
        .ss_t(axi_quad_spi_0_ss_t));
  Block_top_axi_quad_spi_0_2 axi_quad_spi_1
       (.ext_spi_clk(mig_axi_wrapper_0_ui_clk),
        .io0_i(util_ds_buf_4_IOBUF_IO_O),
        .io0_o(axi_quad_spi_1_io0_o),
        .io0_t(axi_quad_spi_1_io0_t),
        .io1_i(util_ds_buf_6_IOBUF_IO_O),
        .io1_o(axi_quad_spi_1_io1_o),
        .io1_t(axi_quad_spi_1_io1_t),
        .ip2intc_irpt(axi_quad_spi_1_ip2intc_irpt),
        .s_axi_aclk(mig_axi_wrapper_0_ui_clk),
        .s_axi_araddr(smartconnect_io_M09_AXI_ARADDR),
        .s_axi_aresetn(reset_n),
        .s_axi_arready(smartconnect_io_M09_AXI_ARREADY),
        .s_axi_arvalid(smartconnect_io_M09_AXI_ARVALID),
        .s_axi_awaddr(smartconnect_io_M09_AXI_AWADDR),
        .s_axi_awready(smartconnect_io_M09_AXI_AWREADY),
        .s_axi_awvalid(smartconnect_io_M09_AXI_AWVALID),
        .s_axi_bready(smartconnect_io_M09_AXI_BREADY),
        .s_axi_bresp(smartconnect_io_M09_AXI_BRESP),
        .s_axi_bvalid(smartconnect_io_M09_AXI_BVALID),
        .s_axi_rdata(smartconnect_io_M09_AXI_RDATA),
        .s_axi_rready(smartconnect_io_M09_AXI_RREADY),
        .s_axi_rresp(smartconnect_io_M09_AXI_RRESP),
        .s_axi_rvalid(smartconnect_io_M09_AXI_RVALID),
        .s_axi_wdata(smartconnect_io_M09_AXI_WDATA),
        .s_axi_wready(smartconnect_io_M09_AXI_WREADY),
        .s_axi_wstrb(smartconnect_io_M09_AXI_WSTRB),
        .s_axi_wvalid(smartconnect_io_M09_AXI_WVALID),
        .sck_i(util_ds_buf_7_IOBUF_IO_O),
        .sck_o(axi_quad_spi_1_sck_o),
        .sck_t(axi_quad_spi_1_sck_t),
        .ss_i(util_ds_buf_5_IOBUF_IO_O),
        .ss_o(axi_quad_spi_1_ss_o),
        .ss_t(axi_quad_spi_1_ss_t));
  Block_top_axi_uartlite_0_0 axi_uartlite_0
       (.interrupt(axi_uartlite_0_interrupt),
        .rx(usb_rx),
        .s_axi_aclk(mig_axi_wrapper_0_ui_clk),
        .s_axi_araddr(smartconnect_io_M00_AXI_ARADDR),
        .s_axi_aresetn(reset_n),
        .s_axi_arready(smartconnect_io_M00_AXI_ARREADY),
        .s_axi_arvalid(smartconnect_io_M00_AXI_ARVALID),
        .s_axi_awaddr(smartconnect_io_M00_AXI_AWADDR),
        .s_axi_awready(smartconnect_io_M00_AXI_AWREADY),
        .s_axi_awvalid(smartconnect_io_M00_AXI_AWVALID),
        .s_axi_bready(smartconnect_io_M00_AXI_BREADY),
        .s_axi_bresp(smartconnect_io_M00_AXI_BRESP),
        .s_axi_bvalid(smartconnect_io_M00_AXI_BVALID),
        .s_axi_rdata(smartconnect_io_M00_AXI_RDATA),
        .s_axi_rready(smartconnect_io_M00_AXI_RREADY),
        .s_axi_rresp(smartconnect_io_M00_AXI_RRESP),
        .s_axi_rvalid(smartconnect_io_M00_AXI_RVALID),
        .s_axi_wdata(smartconnect_io_M00_AXI_WDATA),
        .s_axi_wready(smartconnect_io_M00_AXI_WREADY),
        .s_axi_wstrb(smartconnect_io_M00_AXI_WSTRB),
        .s_axi_wvalid(smartconnect_io_M00_AXI_WVALID),
        .tx(test_tx));
  Block_top_clk_wiz_0_0 clk_wiz_0
       (.clk_100(clk_wiz_0_clk_100),
        .clk_200(clk_wiz_0_clk_200),
        .clk_in1(clk));
  Block_top_ila_0_0 ila_0
       (.clk(mig_axi_wrapper_0_ui_clk),
        .probe0(1'b0),
        .probe1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .probe10(ARES_RaxyerIX_frameb_0_ram_axi_RDATA),
        .probe11(1'b0),
        .probe12(1'b0),
        .probe13(ARES_RaxyerIX_frameb_0_ram_axi_RRESP),
        .probe14({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .probe15({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .probe16(ARES_RaxyerIX_frameb_0_ram_axi_RVALID),
        .probe17({1'b0,1'b0,1'b0}),
        .probe18({1'b0,1'b0,1'b0}),
        .probe19(1'b0),
        .probe2({1'b0,1'b0}),
        .probe20(1'b0),
        .probe21({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .probe22(1'b0),
        .probe23({1'b1,1'b0,1'b0}),
        .probe24({1'b0,1'b1}),
        .probe25(1'b0),
        .probe26(1'b0),
        .probe27(ARES_RaxyerIX_frameb_0_ram_axi_ARLEN),
        .probe28(ARES_RaxyerIX_frameb_0_ram_axi_ARSIZE),
        .probe29(ARES_RaxyerIX_frameb_0_ram_axi_ARBURST),
        .probe3(1'b0),
        .probe30(1'b0),
        .probe31({1'b0,1'b0,1'b1,1'b1}),
        .probe32({1'b0,1'b0,1'b1,1'b1}),
        .probe33({1'b0,1'b0,1'b0,1'b0}),
        .probe34({1'b0,1'b0,1'b0,1'b0}),
        .probe35(1'b0),
        .probe36({1'b0,1'b0,1'b0,1'b0}),
        .probe37({1'b0,1'b0,1'b0,1'b0}),
        .probe38(1'b0),
        .probe39(1'b0),
        .probe4(1'b0),
        .probe40(ARES_RaxyerIX_frameb_0_ram_axi_RLAST),
        .probe41(1'b0),
        .probe42(1'b0),
        .probe43(1'b0),
        .probe5(ARES_RaxyerIX_frameb_0_ram_axi_ARADDR),
        .probe6(ARES_RaxyerIX_frameb_0_ram_axi_RREADY),
        .probe7(1'b0),
        .probe8(ARES_RaxyerIX_frameb_0_ram_axi_ARVALID),
        .probe9(ARES_RaxyerIX_frameb_0_ram_axi_ARREADY));
  Block_top_ila_0_1 ila_1
       (.clk(mig_axi_wrapper_0_ui_clk),
        .probe0(ARES_RasterIXWrapper_0_fb_addr),
        .probe1(ARES_RasterIXWrapper_0_fb_size),
        .probe2(ARES_RaxyerIX_frameb_0_fb_swapped),
        .probe3(ARES_RasterIXWrapper_0_swap_fb),
        .probe4(ARES_RasterIXWrapper_0_swap_fb_enable_vsync));
  Block_top_mig_axi_wrapper_0_0 mig_axi_wrapper_0
       (.aresetn(reset_n),
        .clk_ref_i(clk_wiz_0_clk_200),
        .ddr3_addr(ddr3_addr),
        .ddr3_ba(ddr3_ba),
        .ddr3_cas_n(ddr3_cas_n),
        .ddr3_ck_n(ddr3_ck_n),
        .ddr3_ck_p(ddr3_ck_p),
        .ddr3_cke(ddr3_cke),
        .ddr3_cs_n(ddr3_cs_n),
        .ddr3_dm(ddr3_dm),
        .ddr3_dq(ddr3_dq),
        .ddr3_dqs_n(ddr3_dqs_n),
        .ddr3_dqs_p(ddr3_dqs_p),
        .ddr3_odt(ddr3_odt),
        .ddr3_ras_n(ddr3_ras_n),
        .ddr3_reset_n(ddr3_reset_n),
        .ddr3_we_n(ddr3_we_n),
        .s_axi_araddr(smartconnect_mem_M01_AXI_ARADDR),
        .s_axi_arburst(smartconnect_mem_M01_AXI_ARBURST),
        .s_axi_arcache(smartconnect_mem_M01_AXI_ARCACHE),
        .s_axi_arid(1'b0),
        .s_axi_arlen(smartconnect_mem_M01_AXI_ARLEN),
        .s_axi_arlock(smartconnect_mem_M01_AXI_ARLOCK),
        .s_axi_arprot(smartconnect_mem_M01_AXI_ARPROT),
        .s_axi_arqos(smartconnect_mem_M01_AXI_ARQOS),
        .s_axi_arready(smartconnect_mem_M01_AXI_ARREADY),
        .s_axi_arsize(smartconnect_mem_M01_AXI_ARSIZE),
        .s_axi_arvalid(smartconnect_mem_M01_AXI_ARVALID),
        .s_axi_awaddr(smartconnect_mem_M01_AXI_AWADDR),
        .s_axi_awburst(smartconnect_mem_M01_AXI_AWBURST),
        .s_axi_awcache(smartconnect_mem_M01_AXI_AWCACHE),
        .s_axi_awid(1'b0),
        .s_axi_awlen(smartconnect_mem_M01_AXI_AWLEN),
        .s_axi_awlock(smartconnect_mem_M01_AXI_AWLOCK),
        .s_axi_awprot(smartconnect_mem_M01_AXI_AWPROT),
        .s_axi_awqos(smartconnect_mem_M01_AXI_AWQOS),
        .s_axi_awready(smartconnect_mem_M01_AXI_AWREADY),
        .s_axi_awsize(smartconnect_mem_M01_AXI_AWSIZE),
        .s_axi_awvalid(smartconnect_mem_M01_AXI_AWVALID),
        .s_axi_bready(smartconnect_mem_M01_AXI_BREADY),
        .s_axi_bresp(smartconnect_mem_M01_AXI_BRESP),
        .s_axi_bvalid(smartconnect_mem_M01_AXI_BVALID),
        .s_axi_rdata(smartconnect_mem_M01_AXI_RDATA),
        .s_axi_rlast(smartconnect_mem_M01_AXI_RLAST),
        .s_axi_rready(smartconnect_mem_M01_AXI_RREADY),
        .s_axi_rresp(smartconnect_mem_M01_AXI_RRESP),
        .s_axi_rvalid(smartconnect_mem_M01_AXI_RVALID),
        .s_axi_wdata(smartconnect_mem_M01_AXI_WDATA),
        .s_axi_wlast(smartconnect_mem_M01_AXI_WLAST),
        .s_axi_wready(smartconnect_mem_M01_AXI_WREADY),
        .s_axi_wstrb(smartconnect_mem_M01_AXI_WSTRB),
        .s_axi_wvalid(smartconnect_mem_M01_AXI_WVALID),
        .sys_clk_i(clk_wiz_0_clk_100),
        .sys_rst(rst_in),
        .ui_clk(mig_axi_wrapper_0_ui_clk),
        .ui_clk_sync_rst(reset));
  Block_top_smartconnect_0_2 smartconnect_dma
       (.M00_AXI_araddr(smartconnect_0_M00_AXI1_ARADDR),
        .M00_AXI_arburst(smartconnect_0_M00_AXI1_ARBURST),
        .M00_AXI_arcache(smartconnect_0_M00_AXI1_ARCACHE),
        .M00_AXI_arlen(smartconnect_0_M00_AXI1_ARLEN),
        .M00_AXI_arlock(smartconnect_0_M00_AXI1_ARLOCK),
        .M00_AXI_arprot(smartconnect_0_M00_AXI1_ARPROT),
        .M00_AXI_arqos(smartconnect_0_M00_AXI1_ARQOS),
        .M00_AXI_arready(smartconnect_0_M00_AXI1_ARREADY),
        .M00_AXI_arsize(smartconnect_0_M00_AXI1_ARSIZE),
        .M00_AXI_arvalid(smartconnect_0_M00_AXI1_ARVALID),
        .M00_AXI_awaddr(smartconnect_0_M00_AXI1_AWADDR),
        .M00_AXI_awburst(smartconnect_0_M00_AXI1_AWBURST),
        .M00_AXI_awcache(smartconnect_0_M00_AXI1_AWCACHE),
        .M00_AXI_awlen(smartconnect_0_M00_AXI1_AWLEN),
        .M00_AXI_awlock(smartconnect_0_M00_AXI1_AWLOCK),
        .M00_AXI_awprot(smartconnect_0_M00_AXI1_AWPROT),
        .M00_AXI_awqos(smartconnect_0_M00_AXI1_AWQOS),
        .M00_AXI_awready(smartconnect_0_M00_AXI1_AWREADY),
        .M00_AXI_awsize(smartconnect_0_M00_AXI1_AWSIZE),
        .M00_AXI_awvalid(smartconnect_0_M00_AXI1_AWVALID),
        .M00_AXI_bready(smartconnect_0_M00_AXI1_BREADY),
        .M00_AXI_bresp(smartconnect_0_M00_AXI1_BRESP),
        .M00_AXI_bvalid(smartconnect_0_M00_AXI1_BVALID),
        .M00_AXI_rdata(smartconnect_0_M00_AXI1_RDATA),
        .M00_AXI_rlast(smartconnect_0_M00_AXI1_RLAST),
        .M00_AXI_rready(smartconnect_0_M00_AXI1_RREADY),
        .M00_AXI_rresp(smartconnect_0_M00_AXI1_RRESP),
        .M00_AXI_rvalid(smartconnect_0_M00_AXI1_RVALID),
        .M00_AXI_wdata(smartconnect_0_M00_AXI1_WDATA),
        .M00_AXI_wlast(smartconnect_0_M00_AXI1_WLAST),
        .M00_AXI_wready(smartconnect_0_M00_AXI1_WREADY),
        .M00_AXI_wstrb(smartconnect_0_M00_AXI1_WSTRB),
        .M00_AXI_wvalid(smartconnect_0_M00_AXI1_WVALID),
        .S00_AXI_araddr(axi_dma_0_M_AXI_MM2S_ARADDR),
        .S00_AXI_arburst(axi_dma_0_M_AXI_MM2S_ARBURST),
        .S00_AXI_arcache(axi_dma_0_M_AXI_MM2S_ARCACHE),
        .S00_AXI_arlen(axi_dma_0_M_AXI_MM2S_ARLEN),
        .S00_AXI_arlock(1'b0),
        .S00_AXI_arprot(axi_dma_0_M_AXI_MM2S_ARPROT),
        .S00_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_arready(axi_dma_0_M_AXI_MM2S_ARREADY),
        .S00_AXI_arsize(axi_dma_0_M_AXI_MM2S_ARSIZE),
        .S00_AXI_arvalid(axi_dma_0_M_AXI_MM2S_ARVALID),
        .S00_AXI_rdata(axi_dma_0_M_AXI_MM2S_RDATA),
        .S00_AXI_rlast(axi_dma_0_M_AXI_MM2S_RLAST),
        .S00_AXI_rready(axi_dma_0_M_AXI_MM2S_RREADY),
        .S00_AXI_rresp(axi_dma_0_M_AXI_MM2S_RRESP),
        .S00_AXI_rvalid(axi_dma_0_M_AXI_MM2S_RVALID),
        .S01_AXI_awaddr(axi_dma_0_M_AXI_S2MM_AWADDR),
        .S01_AXI_awburst(axi_dma_0_M_AXI_S2MM_AWBURST),
        .S01_AXI_awcache(axi_dma_0_M_AXI_S2MM_AWCACHE),
        .S01_AXI_awlen(axi_dma_0_M_AXI_S2MM_AWLEN),
        .S01_AXI_awlock(1'b0),
        .S01_AXI_awprot(axi_dma_0_M_AXI_S2MM_AWPROT),
        .S01_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S01_AXI_awready(axi_dma_0_M_AXI_S2MM_AWREADY),
        .S01_AXI_awsize(axi_dma_0_M_AXI_S2MM_AWSIZE),
        .S01_AXI_awvalid(axi_dma_0_M_AXI_S2MM_AWVALID),
        .S01_AXI_bready(axi_dma_0_M_AXI_S2MM_BREADY),
        .S01_AXI_bresp(axi_dma_0_M_AXI_S2MM_BRESP),
        .S01_AXI_bvalid(axi_dma_0_M_AXI_S2MM_BVALID),
        .S01_AXI_wdata(axi_dma_0_M_AXI_S2MM_WDATA),
        .S01_AXI_wlast(axi_dma_0_M_AXI_S2MM_WLAST),
        .S01_AXI_wready(axi_dma_0_M_AXI_S2MM_WREADY),
        .S01_AXI_wstrb(axi_dma_0_M_AXI_S2MM_WSTRB),
        .S01_AXI_wvalid(axi_dma_0_M_AXI_S2MM_WVALID),
        .S02_AXI_araddr(ARES_RasterIXWrapper_0_m_axi_ARADDR),
        .S02_AXI_arburst(ARES_RasterIXWrapper_0_m_axi_ARBURST),
        .S02_AXI_arcache(ARES_RasterIXWrapper_0_m_axi_ARCACHE),
        .S02_AXI_arid(ARES_RasterIXWrapper_0_m_axi_ARID),
        .S02_AXI_arlen(ARES_RasterIXWrapper_0_m_axi_ARLEN),
        .S02_AXI_arlock(ARES_RasterIXWrapper_0_m_axi_ARLOCK),
        .S02_AXI_arprot(ARES_RasterIXWrapper_0_m_axi_ARPROT),
        .S02_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S02_AXI_arready(ARES_RasterIXWrapper_0_m_axi_ARREADY),
        .S02_AXI_arsize(ARES_RasterIXWrapper_0_m_axi_ARSIZE),
        .S02_AXI_arvalid(ARES_RasterIXWrapper_0_m_axi_ARVALID),
        .S02_AXI_awaddr(ARES_RasterIXWrapper_0_m_axi_AWADDR),
        .S02_AXI_awburst(ARES_RasterIXWrapper_0_m_axi_AWBURST),
        .S02_AXI_awcache(ARES_RasterIXWrapper_0_m_axi_AWCACHE),
        .S02_AXI_awid(ARES_RasterIXWrapper_0_m_axi_AWID),
        .S02_AXI_awlen(ARES_RasterIXWrapper_0_m_axi_AWLEN),
        .S02_AXI_awlock(ARES_RasterIXWrapper_0_m_axi_AWLOCK),
        .S02_AXI_awprot(ARES_RasterIXWrapper_0_m_axi_AWPROT),
        .S02_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S02_AXI_awready(ARES_RasterIXWrapper_0_m_axi_AWREADY),
        .S02_AXI_awsize(ARES_RasterIXWrapper_0_m_axi_AWSIZE),
        .S02_AXI_awvalid(ARES_RasterIXWrapper_0_m_axi_AWVALID),
        .S02_AXI_bid(ARES_RasterIXWrapper_0_m_axi_BID),
        .S02_AXI_bready(ARES_RasterIXWrapper_0_m_axi_BREADY),
        .S02_AXI_bresp(ARES_RasterIXWrapper_0_m_axi_BRESP),
        .S02_AXI_bvalid(ARES_RasterIXWrapper_0_m_axi_BVALID),
        .S02_AXI_rdata(ARES_RasterIXWrapper_0_m_axi_RDATA),
        .S02_AXI_rid(ARES_RasterIXWrapper_0_m_axi_RID),
        .S02_AXI_rlast(ARES_RasterIXWrapper_0_m_axi_RLAST),
        .S02_AXI_rready(ARES_RasterIXWrapper_0_m_axi_RREADY),
        .S02_AXI_rresp(ARES_RasterIXWrapper_0_m_axi_RRESP),
        .S02_AXI_rvalid(ARES_RasterIXWrapper_0_m_axi_RVALID),
        .S02_AXI_wdata(ARES_RasterIXWrapper_0_m_axi_WDATA),
        .S02_AXI_wlast(ARES_RasterIXWrapper_0_m_axi_WLAST),
        .S02_AXI_wready(ARES_RasterIXWrapper_0_m_axi_WREADY),
        .S02_AXI_wstrb(ARES_RasterIXWrapper_0_m_axi_WSTRB),
        .S02_AXI_wvalid(ARES_RasterIXWrapper_0_m_axi_WVALID),
        .S03_AXI_araddr(ARES_RaxyerIX_frameb_0_ram_axi_ARADDR),
        .S03_AXI_arburst(ARES_RaxyerIX_frameb_0_ram_axi_ARBURST),
        .S03_AXI_arcache({1'b0,1'b0,1'b1,1'b1}),
        .S03_AXI_arlen(ARES_RaxyerIX_frameb_0_ram_axi_ARLEN),
        .S03_AXI_arlock(1'b0),
        .S03_AXI_arprot({1'b0,1'b0,1'b0}),
        .S03_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S03_AXI_arready(ARES_RaxyerIX_frameb_0_ram_axi_ARREADY),
        .S03_AXI_arsize(ARES_RaxyerIX_frameb_0_ram_axi_ARSIZE),
        .S03_AXI_arvalid(ARES_RaxyerIX_frameb_0_ram_axi_ARVALID),
        .S03_AXI_rdata(ARES_RaxyerIX_frameb_0_ram_axi_RDATA),
        .S03_AXI_rlast(ARES_RaxyerIX_frameb_0_ram_axi_RLAST),
        .S03_AXI_rready(ARES_RaxyerIX_frameb_0_ram_axi_RREADY),
        .S03_AXI_rresp(ARES_RaxyerIX_frameb_0_ram_axi_RRESP),
        .S03_AXI_rvalid(ARES_RaxyerIX_frameb_0_ram_axi_RVALID),
        .aclk(mig_axi_wrapper_0_ui_clk),
        .aresetn(reset_n));
  Block_top_smartconnect_0_1 smartconnect_io
       (.M00_AXI_araddr(smartconnect_io_M00_AXI_ARADDR),
        .M00_AXI_arready(smartconnect_io_M00_AXI_ARREADY),
        .M00_AXI_arvalid(smartconnect_io_M00_AXI_ARVALID),
        .M00_AXI_awaddr(smartconnect_io_M00_AXI_AWADDR),
        .M00_AXI_awready(smartconnect_io_M00_AXI_AWREADY),
        .M00_AXI_awvalid(smartconnect_io_M00_AXI_AWVALID),
        .M00_AXI_bready(smartconnect_io_M00_AXI_BREADY),
        .M00_AXI_bresp(smartconnect_io_M00_AXI_BRESP),
        .M00_AXI_bvalid(smartconnect_io_M00_AXI_BVALID),
        .M00_AXI_rdata(smartconnect_io_M00_AXI_RDATA),
        .M00_AXI_rready(smartconnect_io_M00_AXI_RREADY),
        .M00_AXI_rresp(smartconnect_io_M00_AXI_RRESP),
        .M00_AXI_rvalid(smartconnect_io_M00_AXI_RVALID),
        .M00_AXI_wdata(smartconnect_io_M00_AXI_WDATA),
        .M00_AXI_wready(smartconnect_io_M00_AXI_WREADY),
        .M00_AXI_wstrb(smartconnect_io_M00_AXI_WSTRB),
        .M00_AXI_wvalid(smartconnect_io_M00_AXI_WVALID),
        .M01_AXI_araddr(smartconnect_io_M01_AXI_ARADDR),
        .M01_AXI_arready(smartconnect_io_M01_AXI_ARREADY),
        .M01_AXI_arvalid(smartconnect_io_M01_AXI_ARVALID),
        .M01_AXI_awaddr(smartconnect_io_M01_AXI_AWADDR),
        .M01_AXI_awready(smartconnect_io_M01_AXI_AWREADY),
        .M01_AXI_awvalid(smartconnect_io_M01_AXI_AWVALID),
        .M01_AXI_bready(smartconnect_io_M01_AXI_BREADY),
        .M01_AXI_bresp(smartconnect_io_M01_AXI_BRESP),
        .M01_AXI_bvalid(smartconnect_io_M01_AXI_BVALID),
        .M01_AXI_rdata(smartconnect_io_M01_AXI_RDATA),
        .M01_AXI_rready(smartconnect_io_M01_AXI_RREADY),
        .M01_AXI_rresp(smartconnect_io_M01_AXI_RRESP),
        .M01_AXI_rvalid(smartconnect_io_M01_AXI_RVALID),
        .M01_AXI_wdata(smartconnect_io_M01_AXI_WDATA),
        .M01_AXI_wready(smartconnect_io_M01_AXI_WREADY),
        .M01_AXI_wstrb(smartconnect_io_M01_AXI_WSTRB),
        .M01_AXI_wvalid(smartconnect_io_M01_AXI_WVALID),
        .M02_AXI_araddr(smartconnect_io_M10_AXI_ARADDR),
        .M02_AXI_arready(smartconnect_io_M10_AXI_ARREADY),
        .M02_AXI_arvalid(smartconnect_io_M10_AXI_ARVALID),
        .M02_AXI_awaddr(smartconnect_io_M10_AXI_AWADDR),
        .M02_AXI_awready(smartconnect_io_M10_AXI_AWREADY),
        .M02_AXI_awvalid(smartconnect_io_M10_AXI_AWVALID),
        .M02_AXI_bready(smartconnect_io_M10_AXI_BREADY),
        .M02_AXI_bresp(smartconnect_io_M10_AXI_BRESP),
        .M02_AXI_bvalid(smartconnect_io_M10_AXI_BVALID),
        .M02_AXI_rdata(smartconnect_io_M10_AXI_RDATA),
        .M02_AXI_rready(smartconnect_io_M10_AXI_RREADY),
        .M02_AXI_rresp(smartconnect_io_M10_AXI_RRESP),
        .M02_AXI_rvalid(smartconnect_io_M10_AXI_RVALID),
        .M02_AXI_wdata(smartconnect_io_M10_AXI_WDATA),
        .M02_AXI_wready(smartconnect_io_M10_AXI_WREADY),
        .M02_AXI_wstrb(smartconnect_io_M10_AXI_WSTRB),
        .M02_AXI_wvalid(smartconnect_io_M10_AXI_WVALID),
        .M03_AXI_araddr(smartconnect_io_M11_AXI_ARADDR),
        .M03_AXI_arprot(smartconnect_io_M11_AXI_ARPROT),
        .M03_AXI_arready(smartconnect_io_M11_AXI_ARREADY),
        .M03_AXI_arvalid(smartconnect_io_M11_AXI_ARVALID),
        .M03_AXI_awaddr(smartconnect_io_M11_AXI_AWADDR),
        .M03_AXI_awprot(smartconnect_io_M11_AXI_AWPROT),
        .M03_AXI_awready(smartconnect_io_M11_AXI_AWREADY),
        .M03_AXI_awvalid(smartconnect_io_M11_AXI_AWVALID),
        .M03_AXI_bready(smartconnect_io_M11_AXI_BREADY),
        .M03_AXI_bresp(smartconnect_io_M11_AXI_BRESP),
        .M03_AXI_bvalid(smartconnect_io_M11_AXI_BVALID),
        .M03_AXI_rdata(smartconnect_io_M11_AXI_RDATA),
        .M03_AXI_rready(smartconnect_io_M11_AXI_RREADY),
        .M03_AXI_rresp(smartconnect_io_M11_AXI_RRESP),
        .M03_AXI_rvalid(smartconnect_io_M11_AXI_RVALID),
        .M03_AXI_wdata(smartconnect_io_M11_AXI_WDATA),
        .M03_AXI_wready(smartconnect_io_M11_AXI_WREADY),
        .M03_AXI_wstrb(smartconnect_io_M11_AXI_WSTRB),
        .M03_AXI_wvalid(smartconnect_io_M11_AXI_WVALID),
        .M04_AXI_araddr(smartconnect_io_M09_AXI_ARADDR),
        .M04_AXI_arready(smartconnect_io_M09_AXI_ARREADY),
        .M04_AXI_arvalid(smartconnect_io_M09_AXI_ARVALID),
        .M04_AXI_awaddr(smartconnect_io_M09_AXI_AWADDR),
        .M04_AXI_awready(smartconnect_io_M09_AXI_AWREADY),
        .M04_AXI_awvalid(smartconnect_io_M09_AXI_AWVALID),
        .M04_AXI_bready(smartconnect_io_M09_AXI_BREADY),
        .M04_AXI_bresp(smartconnect_io_M09_AXI_BRESP),
        .M04_AXI_bvalid(smartconnect_io_M09_AXI_BVALID),
        .M04_AXI_rdata(smartconnect_io_M09_AXI_RDATA),
        .M04_AXI_rready(smartconnect_io_M09_AXI_RREADY),
        .M04_AXI_rresp(smartconnect_io_M09_AXI_RRESP),
        .M04_AXI_rvalid(smartconnect_io_M09_AXI_RVALID),
        .M04_AXI_wdata(smartconnect_io_M09_AXI_WDATA),
        .M04_AXI_wready(smartconnect_io_M09_AXI_WREADY),
        .M04_AXI_wstrb(smartconnect_io_M09_AXI_WSTRB),
        .M04_AXI_wvalid(smartconnect_io_M09_AXI_WVALID),
        .M05_AXI_araddr(smartconnect_io_M05_AXI_ARADDR),
        .M05_AXI_arready(smartconnect_io_M05_AXI_ARREADY),
        .M05_AXI_arvalid(smartconnect_io_M05_AXI_ARVALID),
        .M05_AXI_awaddr(smartconnect_io_M05_AXI_AWADDR),
        .M05_AXI_awready(smartconnect_io_M05_AXI_AWREADY),
        .M05_AXI_awvalid(smartconnect_io_M05_AXI_AWVALID),
        .M05_AXI_bready(smartconnect_io_M05_AXI_BREADY),
        .M05_AXI_bresp(smartconnect_io_M05_AXI_BRESP),
        .M05_AXI_bvalid(smartconnect_io_M05_AXI_BVALID),
        .M05_AXI_rdata(smartconnect_io_M05_AXI_RDATA),
        .M05_AXI_rready(smartconnect_io_M05_AXI_RREADY),
        .M05_AXI_rresp(smartconnect_io_M05_AXI_RRESP),
        .M05_AXI_rvalid(smartconnect_io_M05_AXI_RVALID),
        .M05_AXI_wdata(smartconnect_io_M05_AXI_WDATA),
        .M05_AXI_wready(smartconnect_io_M05_AXI_WREADY),
        .M05_AXI_wvalid(smartconnect_io_M05_AXI_WVALID),
        .S00_AXI_araddr(VexiiSocWrapper_0_pBus_ARADDR),
        .S00_AXI_arprot(VexiiSocWrapper_0_pBus_ARPROT),
        .S00_AXI_arready(VexiiSocWrapper_0_pBus_ARREADY),
        .S00_AXI_arvalid(VexiiSocWrapper_0_pBus_ARVALID),
        .S00_AXI_awaddr(VexiiSocWrapper_0_pBus_AWADDR),
        .S00_AXI_awprot(VexiiSocWrapper_0_pBus_AWPROT),
        .S00_AXI_awready(VexiiSocWrapper_0_pBus_AWREADY),
        .S00_AXI_awvalid(VexiiSocWrapper_0_pBus_AWVALID),
        .S00_AXI_bready(VexiiSocWrapper_0_pBus_BREADY),
        .S00_AXI_bresp(VexiiSocWrapper_0_pBus_BRESP),
        .S00_AXI_bvalid(VexiiSocWrapper_0_pBus_BVALID),
        .S00_AXI_rdata(VexiiSocWrapper_0_pBus_RDATA),
        .S00_AXI_rready(VexiiSocWrapper_0_pBus_RREADY),
        .S00_AXI_rresp(VexiiSocWrapper_0_pBus_RRESP),
        .S00_AXI_rvalid(VexiiSocWrapper_0_pBus_RVALID),
        .S00_AXI_wdata(VexiiSocWrapper_0_pBus_WDATA),
        .S00_AXI_wready(VexiiSocWrapper_0_pBus_WREADY),
        .S00_AXI_wstrb(VexiiSocWrapper_0_pBus_WSTRB),
        .S00_AXI_wvalid(VexiiSocWrapper_0_pBus_WVALID),
        .aclk(mig_axi_wrapper_0_ui_clk),
        .aresetn(reset_n));
  Block_top_smartconnect_0_0 smartconnect_mem
       (.M00_AXI_araddr(smartconnect_0_M00_AXI_ARADDR),
        .M00_AXI_arprot(smartconnect_0_M00_AXI_ARPROT),
        .M00_AXI_arready(smartconnect_0_M00_AXI_ARREADY),
        .M00_AXI_arvalid(smartconnect_0_M00_AXI_ARVALID),
        .M00_AXI_rdata(smartconnect_0_M00_AXI_RDATA),
        .M00_AXI_rready(smartconnect_0_M00_AXI_RREADY),
        .M00_AXI_rresp(smartconnect_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(smartconnect_0_M00_AXI_RVALID),
        .M01_AXI_araddr(smartconnect_mem_M01_AXI_ARADDR),
        .M01_AXI_arburst(smartconnect_mem_M01_AXI_ARBURST),
        .M01_AXI_arcache(smartconnect_mem_M01_AXI_ARCACHE),
        .M01_AXI_arlen(smartconnect_mem_M01_AXI_ARLEN),
        .M01_AXI_arlock(smartconnect_mem_M01_AXI_ARLOCK),
        .M01_AXI_arprot(smartconnect_mem_M01_AXI_ARPROT),
        .M01_AXI_arqos(smartconnect_mem_M01_AXI_ARQOS),
        .M01_AXI_arready(smartconnect_mem_M01_AXI_ARREADY),
        .M01_AXI_arsize(smartconnect_mem_M01_AXI_ARSIZE),
        .M01_AXI_arvalid(smartconnect_mem_M01_AXI_ARVALID),
        .M01_AXI_awaddr(smartconnect_mem_M01_AXI_AWADDR),
        .M01_AXI_awburst(smartconnect_mem_M01_AXI_AWBURST),
        .M01_AXI_awcache(smartconnect_mem_M01_AXI_AWCACHE),
        .M01_AXI_awlen(smartconnect_mem_M01_AXI_AWLEN),
        .M01_AXI_awlock(smartconnect_mem_M01_AXI_AWLOCK),
        .M01_AXI_awprot(smartconnect_mem_M01_AXI_AWPROT),
        .M01_AXI_awqos(smartconnect_mem_M01_AXI_AWQOS),
        .M01_AXI_awready(smartconnect_mem_M01_AXI_AWREADY),
        .M01_AXI_awsize(smartconnect_mem_M01_AXI_AWSIZE),
        .M01_AXI_awvalid(smartconnect_mem_M01_AXI_AWVALID),
        .M01_AXI_bready(smartconnect_mem_M01_AXI_BREADY),
        .M01_AXI_bresp(smartconnect_mem_M01_AXI_BRESP),
        .M01_AXI_bvalid(smartconnect_mem_M01_AXI_BVALID),
        .M01_AXI_rdata(smartconnect_mem_M01_AXI_RDATA),
        .M01_AXI_rlast(smartconnect_mem_M01_AXI_RLAST),
        .M01_AXI_rready(smartconnect_mem_M01_AXI_RREADY),
        .M01_AXI_rresp(smartconnect_mem_M01_AXI_RRESP),
        .M01_AXI_rvalid(smartconnect_mem_M01_AXI_RVALID),
        .M01_AXI_wdata(smartconnect_mem_M01_AXI_WDATA),
        .M01_AXI_wlast(smartconnect_mem_M01_AXI_WLAST),
        .M01_AXI_wready(smartconnect_mem_M01_AXI_WREADY),
        .M01_AXI_wstrb(smartconnect_mem_M01_AXI_WSTRB),
        .M01_AXI_wvalid(smartconnect_mem_M01_AXI_WVALID),
        .S00_AXI_araddr(VexiiSocWrapper_0_mBus_ARADDR),
        .S00_AXI_arburst(VexiiSocWrapper_0_mBus_ARBURST),
        .S00_AXI_arcache({1'b0,1'b0,1'b1,1'b1}),
        .S00_AXI_arid(VexiiSocWrapper_0_mBus_ARID),
        .S00_AXI_arlen(VexiiSocWrapper_0_mBus_ARLEN),
        .S00_AXI_arlock(1'b0),
        .S00_AXI_arprot({1'b0,1'b0,1'b0}),
        .S00_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_arready(VexiiSocWrapper_0_mBus_ARREADY),
        .S00_AXI_arsize(VexiiSocWrapper_0_mBus_ARSIZE),
        .S00_AXI_arvalid(VexiiSocWrapper_0_mBus_ARVALID),
        .S00_AXI_awaddr(VexiiSocWrapper_0_mBus_AWADDR),
        .S00_AXI_awburst(VexiiSocWrapper_0_mBus_AWBURST),
        .S00_AXI_awcache({1'b0,1'b0,1'b1,1'b1}),
        .S00_AXI_awid(VexiiSocWrapper_0_mBus_AWID),
        .S00_AXI_awlen(VexiiSocWrapper_0_mBus_AWLEN),
        .S00_AXI_awlock(1'b0),
        .S00_AXI_awprot({1'b0,1'b0,1'b0}),
        .S00_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_awready(VexiiSocWrapper_0_mBus_AWREADY),
        .S00_AXI_awsize(VexiiSocWrapper_0_mBus_AWSIZE),
        .S00_AXI_awvalid(VexiiSocWrapper_0_mBus_AWVALID),
        .S00_AXI_bid(VexiiSocWrapper_0_mBus_BID),
        .S00_AXI_bready(VexiiSocWrapper_0_mBus_BREADY),
        .S00_AXI_bresp(VexiiSocWrapper_0_mBus_BRESP),
        .S00_AXI_bvalid(VexiiSocWrapper_0_mBus_BVALID),
        .S00_AXI_rdata(VexiiSocWrapper_0_mBus_RDATA),
        .S00_AXI_rid(VexiiSocWrapper_0_mBus_RID),
        .S00_AXI_rlast(VexiiSocWrapper_0_mBus_RLAST),
        .S00_AXI_rready(VexiiSocWrapper_0_mBus_RREADY),
        .S00_AXI_rresp(VexiiSocWrapper_0_mBus_RRESP),
        .S00_AXI_rvalid(VexiiSocWrapper_0_mBus_RVALID),
        .S00_AXI_wdata(VexiiSocWrapper_0_mBus_WDATA),
        .S00_AXI_wlast(VexiiSocWrapper_0_mBus_WLAST),
        .S00_AXI_wready(VexiiSocWrapper_0_mBus_WREADY),
        .S00_AXI_wstrb(VexiiSocWrapper_0_mBus_WSTRB),
        .S00_AXI_wvalid(VexiiSocWrapper_0_mBus_WVALID),
        .aclk(mig_axi_wrapper_0_ui_clk),
        .aresetn(reset_n));
  Block_top_util_ds_buf_0_0 util_ds_buf_0
       (.IOBUF_IO_I(axi_quad_spi_0_io0_o),
        .IOBUF_IO_IO(spi_controller0_mosi),
        .IOBUF_IO_O(util_ds_buf_0_IOBUF_IO_O),
        .IOBUF_IO_T(axi_quad_spi_0_io0_t));
  Block_top_util_ds_buf_0_1 util_ds_buf_1
       (.IOBUF_IO_I(axi_quad_spi_0_io1_o),
        .IOBUF_IO_IO(spi_controller0_miso),
        .IOBUF_IO_O(util_ds_buf_1_IOBUF_IO_O),
        .IOBUF_IO_T(axi_quad_spi_0_io1_t));
  Block_top_util_ds_buf_0_2 util_ds_buf_2
       (.IOBUF_IO_I(axi_quad_spi_0_sck_o),
        .IOBUF_IO_IO(spi_controller0_sck),
        .IOBUF_IO_O(util_ds_buf_2_IOBUF_IO_O),
        .IOBUF_IO_T(axi_quad_spi_0_sck_t));
  Block_top_util_ds_buf_2_0 util_ds_buf_3
       (.IOBUF_IO_I(axi_quad_spi_0_ss_o),
        .IOBUF_IO_IO(spi_controller0_ss),
        .IOBUF_IO_O(util_ds_buf_3_IOBUF_IO_O),
        .IOBUF_IO_T(axi_quad_spi_0_ss_t));
  Block_top_util_ds_buf_0_3 util_ds_buf_4
       (.IOBUF_IO_I(axi_quad_spi_1_io0_o),
        .IOBUF_IO_IO(spi_controller1_mosi),
        .IOBUF_IO_O(util_ds_buf_4_IOBUF_IO_O),
        .IOBUF_IO_T(axi_quad_spi_1_io0_t));
  Block_top_util_ds_buf_1_0 util_ds_buf_5
       (.IOBUF_IO_I(axi_quad_spi_1_ss_o),
        .IOBUF_IO_IO(spi_controller1_ss),
        .IOBUF_IO_O(util_ds_buf_5_IOBUF_IO_O),
        .IOBUF_IO_T(axi_quad_spi_1_ss_t));
  Block_top_util_ds_buf_2_1 util_ds_buf_6
       (.IOBUF_IO_I(axi_quad_spi_1_io1_o),
        .IOBUF_IO_IO(spi_controller1_miso),
        .IOBUF_IO_O(util_ds_buf_6_IOBUF_IO_O),
        .IOBUF_IO_T(axi_quad_spi_1_io1_t));
  Block_top_util_ds_buf_3_0 util_ds_buf_7
       (.IOBUF_IO_I(axi_quad_spi_1_sck_o),
        .IOBUF_IO_IO(spi_controller1_sck),
        .IOBUF_IO_O(util_ds_buf_7_IOBUF_IO_O),
        .IOBUF_IO_T(axi_quad_spi_1_sck_t));
  Block_top_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(rst_n),
        .Res(rst_in));
  Block_top_util_vector_logic_0_1 util_vector_logic_1
       (.Op1(reset),
        .Res(reset_n));
  Block_top_util_vector_logic_1_0 util_vector_logic_2
       (.Op1(spi_int_n),
        .Res(util_vector_logic_2_Res));
  Block_top_xlconcat_0_0 xlconcat_0
       (.In0(1'b0),
        .In1(axi_uartlite_0_interrupt),
        .In10(1'b0),
        .In11(1'b0),
        .In12(1'b0),
        .In13(1'b0),
        .In14(1'b0),
        .In15(1'b0),
        .In16(1'b0),
        .In17(1'b0),
        .In18(1'b0),
        .In19(1'b0),
        .In2(axi_quad_spi_0_ip2intc_irpt),
        .In20(1'b0),
        .In21(1'b0),
        .In22(1'b0),
        .In23(1'b0),
        .In24(1'b0),
        .In25(1'b0),
        .In26(1'b0),
        .In27(1'b0),
        .In28(1'b0),
        .In29(1'b0),
        .In3(axi_quad_spi_1_ip2intc_irpt),
        .In30(1'b0),
        .In31(1'b0),
        .In4(util_vector_logic_2_Res),
        .In5(axi_keyboard_0_irq),
        .In6(axi_cf_controller_0_irq),
        .In7(axi_dma_0_mm2s_introut),
        .In8(axi_dma_0_s2mm_introut),
        .In9(1'b0),
        .dout(xlconcat_0_dout));
  Block_top_xlconstant_1_0 xlconstant_1
       (.dout(ide_dtack));
endmodule

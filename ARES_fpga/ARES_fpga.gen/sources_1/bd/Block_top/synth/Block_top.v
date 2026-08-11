//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
//Date        : Tue Aug 11 21:51:30 2026
//Host        : lovroLinuxM running 64-bit Ubuntu 24.04.4 LTS
//Command     : generate_target Block_top.bd
//Design      : Block_top
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "Block_top,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Block_top,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=18,numReposBlks=18,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=4,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=1,da_board_cnt=2,da_clkrst_cnt=2,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "Block_top.hwdef" *) 
module Block_top
   (clk,
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
    rst_n,
    spi_controller_miso,
    spi_controller_mosi,
    spi_controller_sck,
    spi_controller_ss,
    spi_flash_ce_n,
    spi_miso,
    spi_mosi,
    spi_sck,
    test_tx,
    uart_rx,
    uart_tx,
    v_sync,
    vga_b,
    vga_g,
    vga_r);
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
  output h_sync;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RST_N RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RST_N, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input rst_n;
  inout [0:0]spi_controller_miso;
  inout [0:0]spi_controller_mosi;
  inout [0:0]spi_controller_sck;
  inout [3:0]spi_controller_ss;
  output spi_flash_ce_n;
  input spi_miso;
  output spi_mosi;
  output spi_sck;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.TEST_TX DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.TEST_TX, LAYERED_METADATA undef" *) output test_tx;
  input uart_rx;
  output uart_tx;
  output v_sync;
  output [3:0]vga_b;
  output [3:0]vga_g;
  output [3:0]vga_r;

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
  wire [14:0]axi_bram_ctrl_0_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_0_BRAM_PORTA_CLK;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTA_DIN;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_0_BRAM_PORTA_EN;
  wire [3:0]axi_bram_ctrl_0_BRAM_PORTA_WE;
  wire [15:0]axi_bram_ctrl_vdp_t0_data_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_vdp_t0_data_BRAM_PORTA_CLK;
  wire [31:0]axi_bram_ctrl_vdp_t0_data_BRAM_PORTA_DIN;
  wire [31:0]axi_bram_ctrl_vdp_t0_data_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_vdp_t0_data_BRAM_PORTA_EN;
  wire [3:0]axi_bram_ctrl_vdp_t0_data_BRAM_PORTA_WE;
  wire axi_quad_spi_0_io0_o;
  wire axi_quad_spi_0_io0_t;
  wire axi_quad_spi_0_io1_o;
  wire axi_quad_spi_0_io1_t;
  wire axi_quad_spi_0_ip2intc_irpt;
  wire axi_quad_spi_0_sck_o;
  wire axi_quad_spi_0_sck_t;
  wire [3:0]axi_quad_spi_0_ss_o;
  wire axi_quad_spi_0_ss_t;
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
  wire h_sync;
  wire mig_axi_wrapper_0_ui_clk;
  wire reset;
  wire [0:0]reset_n;
  wire [0:0]rst_in;
  wire rst_n;
  wire [31:0]smartconnect_0_M00_AXI_ARADDR;
  wire [2:0]smartconnect_0_M00_AXI_ARPROT;
  wire smartconnect_0_M00_AXI_ARREADY;
  wire smartconnect_0_M00_AXI_ARVALID;
  wire [31:0]smartconnect_0_M00_AXI_RDATA;
  wire smartconnect_0_M00_AXI_RREADY;
  wire [1:0]smartconnect_0_M00_AXI_RRESP;
  wire smartconnect_0_M00_AXI_RVALID;
  wire [27:0]smartconnect_0_M01_AXI_ARADDR;
  wire [1:0]smartconnect_0_M01_AXI_ARBURST;
  wire [3:0]smartconnect_0_M01_AXI_ARCACHE;
  wire [7:0]smartconnect_0_M01_AXI_ARLEN;
  wire [0:0]smartconnect_0_M01_AXI_ARLOCK;
  wire [2:0]smartconnect_0_M01_AXI_ARPROT;
  wire [3:0]smartconnect_0_M01_AXI_ARQOS;
  wire smartconnect_0_M01_AXI_ARREADY;
  wire [2:0]smartconnect_0_M01_AXI_ARSIZE;
  wire smartconnect_0_M01_AXI_ARVALID;
  wire [27:0]smartconnect_0_M01_AXI_AWADDR;
  wire [1:0]smartconnect_0_M01_AXI_AWBURST;
  wire [3:0]smartconnect_0_M01_AXI_AWCACHE;
  wire [7:0]smartconnect_0_M01_AXI_AWLEN;
  wire [0:0]smartconnect_0_M01_AXI_AWLOCK;
  wire [2:0]smartconnect_0_M01_AXI_AWPROT;
  wire [3:0]smartconnect_0_M01_AXI_AWQOS;
  wire smartconnect_0_M01_AXI_AWREADY;
  wire [2:0]smartconnect_0_M01_AXI_AWSIZE;
  wire smartconnect_0_M01_AXI_AWVALID;
  wire smartconnect_0_M01_AXI_BREADY;
  wire [1:0]smartconnect_0_M01_AXI_BRESP;
  wire smartconnect_0_M01_AXI_BVALID;
  wire [127:0]smartconnect_0_M01_AXI_RDATA;
  wire smartconnect_0_M01_AXI_RLAST;
  wire smartconnect_0_M01_AXI_RREADY;
  wire [1:0]smartconnect_0_M01_AXI_RRESP;
  wire smartconnect_0_M01_AXI_RVALID;
  wire [127:0]smartconnect_0_M01_AXI_WDATA;
  wire smartconnect_0_M01_AXI_WLAST;
  wire smartconnect_0_M01_AXI_WREADY;
  wire [15:0]smartconnect_0_M01_AXI_WSTRB;
  wire smartconnect_0_M01_AXI_WVALID;
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
  wire [14:0]smartconnect_io_M02_AXI_ARADDR;
  wire [1:0]smartconnect_io_M02_AXI_ARBURST;
  wire [3:0]smartconnect_io_M02_AXI_ARCACHE;
  wire [7:0]smartconnect_io_M02_AXI_ARLEN;
  wire [0:0]smartconnect_io_M02_AXI_ARLOCK;
  wire [2:0]smartconnect_io_M02_AXI_ARPROT;
  wire smartconnect_io_M02_AXI_ARREADY;
  wire [2:0]smartconnect_io_M02_AXI_ARSIZE;
  wire smartconnect_io_M02_AXI_ARVALID;
  wire [14:0]smartconnect_io_M02_AXI_AWADDR;
  wire [1:0]smartconnect_io_M02_AXI_AWBURST;
  wire [3:0]smartconnect_io_M02_AXI_AWCACHE;
  wire [7:0]smartconnect_io_M02_AXI_AWLEN;
  wire [0:0]smartconnect_io_M02_AXI_AWLOCK;
  wire [2:0]smartconnect_io_M02_AXI_AWPROT;
  wire smartconnect_io_M02_AXI_AWREADY;
  wire [2:0]smartconnect_io_M02_AXI_AWSIZE;
  wire smartconnect_io_M02_AXI_AWVALID;
  wire smartconnect_io_M02_AXI_BREADY;
  wire [1:0]smartconnect_io_M02_AXI_BRESP;
  wire smartconnect_io_M02_AXI_BVALID;
  wire [31:0]smartconnect_io_M02_AXI_RDATA;
  wire smartconnect_io_M02_AXI_RLAST;
  wire smartconnect_io_M02_AXI_RREADY;
  wire [1:0]smartconnect_io_M02_AXI_RRESP;
  wire smartconnect_io_M02_AXI_RVALID;
  wire [31:0]smartconnect_io_M02_AXI_WDATA;
  wire smartconnect_io_M02_AXI_WLAST;
  wire smartconnect_io_M02_AXI_WREADY;
  wire [3:0]smartconnect_io_M02_AXI_WSTRB;
  wire smartconnect_io_M02_AXI_WVALID;
  wire [15:0]smartconnect_io_M03_AXI_ARADDR;
  wire [1:0]smartconnect_io_M03_AXI_ARBURST;
  wire [3:0]smartconnect_io_M03_AXI_ARCACHE;
  wire [7:0]smartconnect_io_M03_AXI_ARLEN;
  wire [0:0]smartconnect_io_M03_AXI_ARLOCK;
  wire [2:0]smartconnect_io_M03_AXI_ARPROT;
  wire smartconnect_io_M03_AXI_ARREADY;
  wire [2:0]smartconnect_io_M03_AXI_ARSIZE;
  wire smartconnect_io_M03_AXI_ARVALID;
  wire [15:0]smartconnect_io_M03_AXI_AWADDR;
  wire [1:0]smartconnect_io_M03_AXI_AWBURST;
  wire [3:0]smartconnect_io_M03_AXI_AWCACHE;
  wire [7:0]smartconnect_io_M03_AXI_AWLEN;
  wire [0:0]smartconnect_io_M03_AXI_AWLOCK;
  wire [2:0]smartconnect_io_M03_AXI_AWPROT;
  wire smartconnect_io_M03_AXI_AWREADY;
  wire [2:0]smartconnect_io_M03_AXI_AWSIZE;
  wire smartconnect_io_M03_AXI_AWVALID;
  wire smartconnect_io_M03_AXI_BREADY;
  wire [1:0]smartconnect_io_M03_AXI_BRESP;
  wire smartconnect_io_M03_AXI_BVALID;
  wire [31:0]smartconnect_io_M03_AXI_RDATA;
  wire smartconnect_io_M03_AXI_RLAST;
  wire smartconnect_io_M03_AXI_RREADY;
  wire [1:0]smartconnect_io_M03_AXI_RRESP;
  wire smartconnect_io_M03_AXI_RVALID;
  wire [31:0]smartconnect_io_M03_AXI_WDATA;
  wire smartconnect_io_M03_AXI_WLAST;
  wire smartconnect_io_M03_AXI_WREADY;
  wire [3:0]smartconnect_io_M03_AXI_WSTRB;
  wire smartconnect_io_M03_AXI_WVALID;
  wire [0:0]spi_controller_miso;
  wire [0:0]spi_controller_mosi;
  wire [0:0]spi_controller_sck;
  wire [3:0]spi_controller_ss;
  wire spi_flash_ce_n;
  wire spi_miso;
  wire spi_mosi;
  wire spi_sck;
  wire test_tx;
  wire uart_rx;
  wire [0:0]util_ds_buf_0_IOBUF_IO_O;
  wire [0:0]util_ds_buf_1_IOBUF_IO_O;
  wire [0:0]util_ds_buf_2_IOBUF_IO_O;
  wire [3:0]util_ds_buf_3_IOBUF_IO_O;
  wire v_sync;
  wire [3:0]vga_b;
  wire [3:0]vga_g;
  wire [3:0]vga_r;
  wire [31:0]xlconcat_0_dout;

  assign uart_tx = test_tx;
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
  Block_top_VDP_0_0 VDP_0
       (.data_cpu_addr(axi_bram_ctrl_vdp_t0_data_BRAM_PORTA_ADDR[13:0]),
        .data_cpu_clk(axi_bram_ctrl_vdp_t0_data_BRAM_PORTA_CLK),
        .data_cpu_din(axi_bram_ctrl_vdp_t0_data_BRAM_PORTA_DIN),
        .data_cpu_dout(axi_bram_ctrl_vdp_t0_data_BRAM_PORTA_DOUT),
        .data_cpu_en(axi_bram_ctrl_vdp_t0_data_BRAM_PORTA_EN),
        .data_cpu_wen(axi_bram_ctrl_vdp_t0_data_BRAM_PORTA_WE),
        .h_sync(h_sync),
        .map_cpu_addr(axi_bram_ctrl_0_BRAM_PORTA_ADDR[12:0]),
        .map_cpu_clk(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .map_cpu_din(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .map_cpu_dout(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .map_cpu_en(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .map_cpu_wen(axi_bram_ctrl_0_BRAM_PORTA_WE),
        .s_axi_aclk(mig_axi_wrapper_0_ui_clk),
        .s_axi_aresetn(reset_n),
        .v_sync(v_sync),
        .vga_b(vga_b),
        .vga_g(vga_g),
        .vga_r(vga_r));
  Block_top_VexiiSocWrapper_0_1 VexiiSocWrapper_0
       (.mBus_araddr(VexiiSocWrapper_0_mBus_ARADDR),
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
  Block_top_axi_bram_ctrl_map_0 axi_bram_ctrl_vdp_t0_data
       (.bram_addr_a(axi_bram_ctrl_vdp_t0_data_BRAM_PORTA_ADDR),
        .bram_clk_a(axi_bram_ctrl_vdp_t0_data_BRAM_PORTA_CLK),
        .bram_en_a(axi_bram_ctrl_vdp_t0_data_BRAM_PORTA_EN),
        .bram_rddata_a(axi_bram_ctrl_vdp_t0_data_BRAM_PORTA_DOUT),
        .bram_we_a(axi_bram_ctrl_vdp_t0_data_BRAM_PORTA_WE),
        .bram_wrdata_a(axi_bram_ctrl_vdp_t0_data_BRAM_PORTA_DIN),
        .s_axi_aclk(mig_axi_wrapper_0_ui_clk),
        .s_axi_araddr(smartconnect_io_M03_AXI_ARADDR),
        .s_axi_arburst(smartconnect_io_M03_AXI_ARBURST),
        .s_axi_arcache(smartconnect_io_M03_AXI_ARCACHE),
        .s_axi_aresetn(reset_n),
        .s_axi_arlen(smartconnect_io_M03_AXI_ARLEN),
        .s_axi_arlock(smartconnect_io_M03_AXI_ARLOCK),
        .s_axi_arprot(smartconnect_io_M03_AXI_ARPROT),
        .s_axi_arready(smartconnect_io_M03_AXI_ARREADY),
        .s_axi_arsize(smartconnect_io_M03_AXI_ARSIZE),
        .s_axi_arvalid(smartconnect_io_M03_AXI_ARVALID),
        .s_axi_awaddr(smartconnect_io_M03_AXI_AWADDR),
        .s_axi_awburst(smartconnect_io_M03_AXI_AWBURST),
        .s_axi_awcache(smartconnect_io_M03_AXI_AWCACHE),
        .s_axi_awlen(smartconnect_io_M03_AXI_AWLEN),
        .s_axi_awlock(smartconnect_io_M03_AXI_AWLOCK),
        .s_axi_awprot(smartconnect_io_M03_AXI_AWPROT),
        .s_axi_awready(smartconnect_io_M03_AXI_AWREADY),
        .s_axi_awsize(smartconnect_io_M03_AXI_AWSIZE),
        .s_axi_awvalid(smartconnect_io_M03_AXI_AWVALID),
        .s_axi_bready(smartconnect_io_M03_AXI_BREADY),
        .s_axi_bresp(smartconnect_io_M03_AXI_BRESP),
        .s_axi_bvalid(smartconnect_io_M03_AXI_BVALID),
        .s_axi_rdata(smartconnect_io_M03_AXI_RDATA),
        .s_axi_rlast(smartconnect_io_M03_AXI_RLAST),
        .s_axi_rready(smartconnect_io_M03_AXI_RREADY),
        .s_axi_rresp(smartconnect_io_M03_AXI_RRESP),
        .s_axi_rvalid(smartconnect_io_M03_AXI_RVALID),
        .s_axi_wdata(smartconnect_io_M03_AXI_WDATA),
        .s_axi_wlast(smartconnect_io_M03_AXI_WLAST),
        .s_axi_wready(smartconnect_io_M03_AXI_WREADY),
        .s_axi_wstrb(smartconnect_io_M03_AXI_WSTRB),
        .s_axi_wvalid(smartconnect_io_M03_AXI_WVALID));
  Block_top_axi_bram_ctrl_0_0 axi_bram_ctrl_vdp_t0_map
       (.bram_addr_a(axi_bram_ctrl_0_BRAM_PORTA_ADDR),
        .bram_clk_a(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .bram_en_a(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .bram_rddata_a(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .bram_we_a(axi_bram_ctrl_0_BRAM_PORTA_WE),
        .bram_wrdata_a(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .s_axi_aclk(mig_axi_wrapper_0_ui_clk),
        .s_axi_araddr(smartconnect_io_M02_AXI_ARADDR),
        .s_axi_arburst(smartconnect_io_M02_AXI_ARBURST),
        .s_axi_arcache(smartconnect_io_M02_AXI_ARCACHE),
        .s_axi_aresetn(reset_n),
        .s_axi_arlen(smartconnect_io_M02_AXI_ARLEN),
        .s_axi_arlock(smartconnect_io_M02_AXI_ARLOCK),
        .s_axi_arprot(smartconnect_io_M02_AXI_ARPROT),
        .s_axi_arready(smartconnect_io_M02_AXI_ARREADY),
        .s_axi_arsize(smartconnect_io_M02_AXI_ARSIZE),
        .s_axi_arvalid(smartconnect_io_M02_AXI_ARVALID),
        .s_axi_awaddr(smartconnect_io_M02_AXI_AWADDR),
        .s_axi_awburst(smartconnect_io_M02_AXI_AWBURST),
        .s_axi_awcache(smartconnect_io_M02_AXI_AWCACHE),
        .s_axi_awlen(smartconnect_io_M02_AXI_AWLEN),
        .s_axi_awlock(smartconnect_io_M02_AXI_AWLOCK),
        .s_axi_awprot(smartconnect_io_M02_AXI_AWPROT),
        .s_axi_awready(smartconnect_io_M02_AXI_AWREADY),
        .s_axi_awsize(smartconnect_io_M02_AXI_AWSIZE),
        .s_axi_awvalid(smartconnect_io_M02_AXI_AWVALID),
        .s_axi_bready(smartconnect_io_M02_AXI_BREADY),
        .s_axi_bresp(smartconnect_io_M02_AXI_BRESP),
        .s_axi_bvalid(smartconnect_io_M02_AXI_BVALID),
        .s_axi_rdata(smartconnect_io_M02_AXI_RDATA),
        .s_axi_rlast(smartconnect_io_M02_AXI_RLAST),
        .s_axi_rready(smartconnect_io_M02_AXI_RREADY),
        .s_axi_rresp(smartconnect_io_M02_AXI_RRESP),
        .s_axi_rvalid(smartconnect_io_M02_AXI_RVALID),
        .s_axi_wdata(smartconnect_io_M02_AXI_WDATA),
        .s_axi_wlast(smartconnect_io_M02_AXI_WLAST),
        .s_axi_wready(smartconnect_io_M02_AXI_WREADY),
        .s_axi_wstrb(smartconnect_io_M02_AXI_WSTRB),
        .s_axi_wvalid(smartconnect_io_M02_AXI_WVALID));
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
  Block_top_axi_uartlite_0_0 axi_uartlite_0
       (.interrupt(axi_uartlite_0_interrupt),
        .rx(uart_rx),
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
        .s_axi_araddr(smartconnect_0_M01_AXI_ARADDR),
        .s_axi_arburst(smartconnect_0_M01_AXI_ARBURST),
        .s_axi_arcache(smartconnect_0_M01_AXI_ARCACHE),
        .s_axi_arid(1'b0),
        .s_axi_arlen(smartconnect_0_M01_AXI_ARLEN),
        .s_axi_arlock(smartconnect_0_M01_AXI_ARLOCK),
        .s_axi_arprot(smartconnect_0_M01_AXI_ARPROT),
        .s_axi_arqos(smartconnect_0_M01_AXI_ARQOS),
        .s_axi_arready(smartconnect_0_M01_AXI_ARREADY),
        .s_axi_arsize(smartconnect_0_M01_AXI_ARSIZE),
        .s_axi_arvalid(smartconnect_0_M01_AXI_ARVALID),
        .s_axi_awaddr(smartconnect_0_M01_AXI_AWADDR),
        .s_axi_awburst(smartconnect_0_M01_AXI_AWBURST),
        .s_axi_awcache(smartconnect_0_M01_AXI_AWCACHE),
        .s_axi_awid(1'b0),
        .s_axi_awlen(smartconnect_0_M01_AXI_AWLEN),
        .s_axi_awlock(smartconnect_0_M01_AXI_AWLOCK),
        .s_axi_awprot(smartconnect_0_M01_AXI_AWPROT),
        .s_axi_awqos(smartconnect_0_M01_AXI_AWQOS),
        .s_axi_awready(smartconnect_0_M01_AXI_AWREADY),
        .s_axi_awsize(smartconnect_0_M01_AXI_AWSIZE),
        .s_axi_awvalid(smartconnect_0_M01_AXI_AWVALID),
        .s_axi_bready(smartconnect_0_M01_AXI_BREADY),
        .s_axi_bresp(smartconnect_0_M01_AXI_BRESP),
        .s_axi_bvalid(smartconnect_0_M01_AXI_BVALID),
        .s_axi_rdata(smartconnect_0_M01_AXI_RDATA),
        .s_axi_rlast(smartconnect_0_M01_AXI_RLAST),
        .s_axi_rready(smartconnect_0_M01_AXI_RREADY),
        .s_axi_rresp(smartconnect_0_M01_AXI_RRESP),
        .s_axi_rvalid(smartconnect_0_M01_AXI_RVALID),
        .s_axi_wdata(smartconnect_0_M01_AXI_WDATA),
        .s_axi_wlast(smartconnect_0_M01_AXI_WLAST),
        .s_axi_wready(smartconnect_0_M01_AXI_WREADY),
        .s_axi_wstrb(smartconnect_0_M01_AXI_WSTRB),
        .s_axi_wvalid(smartconnect_0_M01_AXI_WVALID),
        .sys_clk_i(clk_wiz_0_clk_100),
        .sys_rst(rst_in),
        .ui_clk(mig_axi_wrapper_0_ui_clk),
        .ui_clk_sync_rst(reset));
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
        .M02_AXI_araddr(smartconnect_io_M02_AXI_ARADDR),
        .M02_AXI_arburst(smartconnect_io_M02_AXI_ARBURST),
        .M02_AXI_arcache(smartconnect_io_M02_AXI_ARCACHE),
        .M02_AXI_arlen(smartconnect_io_M02_AXI_ARLEN),
        .M02_AXI_arlock(smartconnect_io_M02_AXI_ARLOCK),
        .M02_AXI_arprot(smartconnect_io_M02_AXI_ARPROT),
        .M02_AXI_arready(smartconnect_io_M02_AXI_ARREADY),
        .M02_AXI_arsize(smartconnect_io_M02_AXI_ARSIZE),
        .M02_AXI_arvalid(smartconnect_io_M02_AXI_ARVALID),
        .M02_AXI_awaddr(smartconnect_io_M02_AXI_AWADDR),
        .M02_AXI_awburst(smartconnect_io_M02_AXI_AWBURST),
        .M02_AXI_awcache(smartconnect_io_M02_AXI_AWCACHE),
        .M02_AXI_awlen(smartconnect_io_M02_AXI_AWLEN),
        .M02_AXI_awlock(smartconnect_io_M02_AXI_AWLOCK),
        .M02_AXI_awprot(smartconnect_io_M02_AXI_AWPROT),
        .M02_AXI_awready(smartconnect_io_M02_AXI_AWREADY),
        .M02_AXI_awsize(smartconnect_io_M02_AXI_AWSIZE),
        .M02_AXI_awvalid(smartconnect_io_M02_AXI_AWVALID),
        .M02_AXI_bready(smartconnect_io_M02_AXI_BREADY),
        .M02_AXI_bresp(smartconnect_io_M02_AXI_BRESP),
        .M02_AXI_bvalid(smartconnect_io_M02_AXI_BVALID),
        .M02_AXI_rdata(smartconnect_io_M02_AXI_RDATA),
        .M02_AXI_rlast(smartconnect_io_M02_AXI_RLAST),
        .M02_AXI_rready(smartconnect_io_M02_AXI_RREADY),
        .M02_AXI_rresp(smartconnect_io_M02_AXI_RRESP),
        .M02_AXI_rvalid(smartconnect_io_M02_AXI_RVALID),
        .M02_AXI_wdata(smartconnect_io_M02_AXI_WDATA),
        .M02_AXI_wlast(smartconnect_io_M02_AXI_WLAST),
        .M02_AXI_wready(smartconnect_io_M02_AXI_WREADY),
        .M02_AXI_wstrb(smartconnect_io_M02_AXI_WSTRB),
        .M02_AXI_wvalid(smartconnect_io_M02_AXI_WVALID),
        .M03_AXI_araddr(smartconnect_io_M03_AXI_ARADDR),
        .M03_AXI_arburst(smartconnect_io_M03_AXI_ARBURST),
        .M03_AXI_arcache(smartconnect_io_M03_AXI_ARCACHE),
        .M03_AXI_arlen(smartconnect_io_M03_AXI_ARLEN),
        .M03_AXI_arlock(smartconnect_io_M03_AXI_ARLOCK),
        .M03_AXI_arprot(smartconnect_io_M03_AXI_ARPROT),
        .M03_AXI_arready(smartconnect_io_M03_AXI_ARREADY),
        .M03_AXI_arsize(smartconnect_io_M03_AXI_ARSIZE),
        .M03_AXI_arvalid(smartconnect_io_M03_AXI_ARVALID),
        .M03_AXI_awaddr(smartconnect_io_M03_AXI_AWADDR),
        .M03_AXI_awburst(smartconnect_io_M03_AXI_AWBURST),
        .M03_AXI_awcache(smartconnect_io_M03_AXI_AWCACHE),
        .M03_AXI_awlen(smartconnect_io_M03_AXI_AWLEN),
        .M03_AXI_awlock(smartconnect_io_M03_AXI_AWLOCK),
        .M03_AXI_awprot(smartconnect_io_M03_AXI_AWPROT),
        .M03_AXI_awready(smartconnect_io_M03_AXI_AWREADY),
        .M03_AXI_awsize(smartconnect_io_M03_AXI_AWSIZE),
        .M03_AXI_awvalid(smartconnect_io_M03_AXI_AWVALID),
        .M03_AXI_bready(smartconnect_io_M03_AXI_BREADY),
        .M03_AXI_bresp(smartconnect_io_M03_AXI_BRESP),
        .M03_AXI_bvalid(smartconnect_io_M03_AXI_BVALID),
        .M03_AXI_rdata(smartconnect_io_M03_AXI_RDATA),
        .M03_AXI_rlast(smartconnect_io_M03_AXI_RLAST),
        .M03_AXI_rready(smartconnect_io_M03_AXI_RREADY),
        .M03_AXI_rresp(smartconnect_io_M03_AXI_RRESP),
        .M03_AXI_rvalid(smartconnect_io_M03_AXI_RVALID),
        .M03_AXI_wdata(smartconnect_io_M03_AXI_WDATA),
        .M03_AXI_wlast(smartconnect_io_M03_AXI_WLAST),
        .M03_AXI_wready(smartconnect_io_M03_AXI_WREADY),
        .M03_AXI_wstrb(smartconnect_io_M03_AXI_WSTRB),
        .M03_AXI_wvalid(smartconnect_io_M03_AXI_WVALID),
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
        .M01_AXI_araddr(smartconnect_0_M01_AXI_ARADDR),
        .M01_AXI_arburst(smartconnect_0_M01_AXI_ARBURST),
        .M01_AXI_arcache(smartconnect_0_M01_AXI_ARCACHE),
        .M01_AXI_arlen(smartconnect_0_M01_AXI_ARLEN),
        .M01_AXI_arlock(smartconnect_0_M01_AXI_ARLOCK),
        .M01_AXI_arprot(smartconnect_0_M01_AXI_ARPROT),
        .M01_AXI_arqos(smartconnect_0_M01_AXI_ARQOS),
        .M01_AXI_arready(smartconnect_0_M01_AXI_ARREADY),
        .M01_AXI_arsize(smartconnect_0_M01_AXI_ARSIZE),
        .M01_AXI_arvalid(smartconnect_0_M01_AXI_ARVALID),
        .M01_AXI_awaddr(smartconnect_0_M01_AXI_AWADDR),
        .M01_AXI_awburst(smartconnect_0_M01_AXI_AWBURST),
        .M01_AXI_awcache(smartconnect_0_M01_AXI_AWCACHE),
        .M01_AXI_awlen(smartconnect_0_M01_AXI_AWLEN),
        .M01_AXI_awlock(smartconnect_0_M01_AXI_AWLOCK),
        .M01_AXI_awprot(smartconnect_0_M01_AXI_AWPROT),
        .M01_AXI_awqos(smartconnect_0_M01_AXI_AWQOS),
        .M01_AXI_awready(smartconnect_0_M01_AXI_AWREADY),
        .M01_AXI_awsize(smartconnect_0_M01_AXI_AWSIZE),
        .M01_AXI_awvalid(smartconnect_0_M01_AXI_AWVALID),
        .M01_AXI_bready(smartconnect_0_M01_AXI_BREADY),
        .M01_AXI_bresp(smartconnect_0_M01_AXI_BRESP),
        .M01_AXI_bvalid(smartconnect_0_M01_AXI_BVALID),
        .M01_AXI_rdata(smartconnect_0_M01_AXI_RDATA),
        .M01_AXI_rlast(smartconnect_0_M01_AXI_RLAST),
        .M01_AXI_rready(smartconnect_0_M01_AXI_RREADY),
        .M01_AXI_rresp(smartconnect_0_M01_AXI_RRESP),
        .M01_AXI_rvalid(smartconnect_0_M01_AXI_RVALID),
        .M01_AXI_wdata(smartconnect_0_M01_AXI_WDATA),
        .M01_AXI_wlast(smartconnect_0_M01_AXI_WLAST),
        .M01_AXI_wready(smartconnect_0_M01_AXI_WREADY),
        .M01_AXI_wstrb(smartconnect_0_M01_AXI_WSTRB),
        .M01_AXI_wvalid(smartconnect_0_M01_AXI_WVALID),
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
        .IOBUF_IO_IO(spi_controller_mosi),
        .IOBUF_IO_O(util_ds_buf_0_IOBUF_IO_O),
        .IOBUF_IO_T(axi_quad_spi_0_io0_t));
  Block_top_util_ds_buf_0_1 util_ds_buf_1
       (.IOBUF_IO_I(axi_quad_spi_0_io1_o),
        .IOBUF_IO_IO(spi_controller_miso),
        .IOBUF_IO_O(util_ds_buf_1_IOBUF_IO_O),
        .IOBUF_IO_T(axi_quad_spi_0_io1_t));
  Block_top_util_ds_buf_0_2 util_ds_buf_2
       (.IOBUF_IO_I(axi_quad_spi_0_sck_o),
        .IOBUF_IO_IO(spi_controller_sck),
        .IOBUF_IO_O(util_ds_buf_2_IOBUF_IO_O),
        .IOBUF_IO_T(axi_quad_spi_0_sck_t));
  Block_top_util_ds_buf_2_0 util_ds_buf_3
       (.IOBUF_IO_I(axi_quad_spi_0_ss_o),
        .IOBUF_IO_IO(spi_controller_ss),
        .IOBUF_IO_O(util_ds_buf_3_IOBUF_IO_O),
        .IOBUF_IO_T({axi_quad_spi_0_ss_t,axi_quad_spi_0_ss_t,axi_quad_spi_0_ss_t,axi_quad_spi_0_ss_t}));
  Block_top_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(rst_n),
        .Res(rst_in));
  Block_top_util_vector_logic_0_1 util_vector_logic_1
       (.Op1(reset),
        .Res(reset_n));
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
        .In3(1'b0),
        .In30(1'b0),
        .In31(1'b0),
        .In4(1'b0),
        .In5(1'b0),
        .In6(1'b0),
        .In7(1'b0),
        .In8(1'b0),
        .In9(1'b0),
        .dout(xlconcat_0_dout));
endmodule

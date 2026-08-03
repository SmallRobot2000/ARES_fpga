//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
//Date        : Mon Aug  3 14:12:23 2026
//Host        : lovroRadiona running 64-bit Ubuntu 24.04.4 LTS
//Command     : generate_target Block_top.bd
//Design      : Block_top
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "Block_top,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Block_top,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=19,numReposBlks=18,numNonXlnxBlks=0,numHierBlks=1,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=4,numPkgbdBlks=1,bdsource=USER,da_axi4_cnt=1,da_board_cnt=2,da_clkrst_cnt=2,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "Block_top.hwdef" *) 
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
    uart_tx);
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

  wire [31:0]CPU_block_0_M_AXI_D_ARADDR;
  wire [1:0]CPU_block_0_M_AXI_D_ARBURST;
  wire [3:0]CPU_block_0_M_AXI_D_ARCACHE;
  wire [0:0]CPU_block_0_M_AXI_D_ARID;
  wire [7:0]CPU_block_0_M_AXI_D_ARLEN;
  wire [2:0]CPU_block_0_M_AXI_D_ARPROT;
  wire CPU_block_0_M_AXI_D_ARREADY;
  wire [2:0]CPU_block_0_M_AXI_D_ARSIZE;
  wire CPU_block_0_M_AXI_D_ARVALID;
  wire [31:0]CPU_block_0_M_AXI_D_AWADDR;
  wire [1:0]CPU_block_0_M_AXI_D_AWBURST;
  wire [3:0]CPU_block_0_M_AXI_D_AWCACHE;
  wire [0:0]CPU_block_0_M_AXI_D_AWID;
  wire [7:0]CPU_block_0_M_AXI_D_AWLEN;
  wire [2:0]CPU_block_0_M_AXI_D_AWPROT;
  wire CPU_block_0_M_AXI_D_AWREADY;
  wire [2:0]CPU_block_0_M_AXI_D_AWSIZE;
  wire CPU_block_0_M_AXI_D_AWVALID;
  wire [0:0]CPU_block_0_M_AXI_D_BID;
  wire CPU_block_0_M_AXI_D_BREADY;
  wire [1:0]CPU_block_0_M_AXI_D_BRESP;
  wire CPU_block_0_M_AXI_D_BVALID;
  wire [31:0]CPU_block_0_M_AXI_D_RDATA;
  wire [0:0]CPU_block_0_M_AXI_D_RID;
  wire CPU_block_0_M_AXI_D_RLAST;
  wire CPU_block_0_M_AXI_D_RREADY;
  wire [1:0]CPU_block_0_M_AXI_D_RRESP;
  wire CPU_block_0_M_AXI_D_RVALID;
  wire [31:0]CPU_block_0_M_AXI_D_WDATA;
  wire CPU_block_0_M_AXI_D_WLAST;
  wire CPU_block_0_M_AXI_D_WREADY;
  wire [3:0]CPU_block_0_M_AXI_D_WSTRB;
  wire CPU_block_0_M_AXI_D_WVALID;
  wire [31:0]CPU_block_0_M_AXI_IO_ARADDR;
  wire [2:0]CPU_block_0_M_AXI_IO_ARPROT;
  wire CPU_block_0_M_AXI_IO_ARREADY;
  wire CPU_block_0_M_AXI_IO_ARVALID;
  wire [31:0]CPU_block_0_M_AXI_IO_AWADDR;
  wire [2:0]CPU_block_0_M_AXI_IO_AWPROT;
  wire CPU_block_0_M_AXI_IO_AWREADY;
  wire CPU_block_0_M_AXI_IO_AWVALID;
  wire CPU_block_0_M_AXI_IO_BREADY;
  wire [1:0]CPU_block_0_M_AXI_IO_BRESP;
  wire CPU_block_0_M_AXI_IO_BVALID;
  wire [31:0]CPU_block_0_M_AXI_IO_RDATA;
  wire CPU_block_0_M_AXI_IO_RREADY;
  wire [1:0]CPU_block_0_M_AXI_IO_RRESP;
  wire CPU_block_0_M_AXI_IO_RVALID;
  wire [31:0]CPU_block_0_M_AXI_IO_WDATA;
  wire CPU_block_0_M_AXI_IO_WREADY;
  wire [3:0]CPU_block_0_M_AXI_IO_WSTRB;
  wire CPU_block_0_M_AXI_IO_WVALID;
  wire [31:0]CPU_block_0_M_AXI_I_ARADDR;
  wire [1:0]CPU_block_0_M_AXI_I_ARBURST;
  wire [3:0]CPU_block_0_M_AXI_I_ARCACHE;
  wire CPU_block_0_M_AXI_I_ARID;
  wire [7:0]CPU_block_0_M_AXI_I_ARLEN;
  wire [2:0]CPU_block_0_M_AXI_I_ARPROT;
  wire CPU_block_0_M_AXI_I_ARREADY;
  wire [2:0]CPU_block_0_M_AXI_I_ARSIZE;
  wire CPU_block_0_M_AXI_I_ARVALID;
  wire [31:0]CPU_block_0_M_AXI_I_RDATA;
  wire [0:0]CPU_block_0_M_AXI_I_RID;
  wire CPU_block_0_M_AXI_I_RLAST;
  wire CPU_block_0_M_AXI_I_RREADY;
  wire [1:0]CPU_block_0_M_AXI_I_RRESP;
  wire CPU_block_0_M_AXI_I_RVALID;
  wire axi_quad_spi_0_io0_o;
  wire axi_quad_spi_0_io0_t;
  wire axi_quad_spi_0_io1_o;
  wire axi_quad_spi_0_io1_t;
  wire axi_quad_spi_0_sck_o;
  wire axi_quad_spi_0_sck_t;
  wire [3:0]axi_quad_spi_0_ss_o;
  wire axi_quad_spi_0_ss_t;
  wire axi_timer_0_interrupt;
  wire [63:0]c_counter_binary_0_Q;
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
  wire [4:0]smartconnect_io_M02_AXI_ARADDR;
  wire smartconnect_io_M02_AXI_ARREADY;
  wire smartconnect_io_M02_AXI_ARVALID;
  wire [4:0]smartconnect_io_M02_AXI_AWADDR;
  wire smartconnect_io_M02_AXI_AWREADY;
  wire smartconnect_io_M02_AXI_AWVALID;
  wire smartconnect_io_M02_AXI_BREADY;
  wire [1:0]smartconnect_io_M02_AXI_BRESP;
  wire smartconnect_io_M02_AXI_BVALID;
  wire [31:0]smartconnect_io_M02_AXI_RDATA;
  wire smartconnect_io_M02_AXI_RREADY;
  wire [1:0]smartconnect_io_M02_AXI_RRESP;
  wire smartconnect_io_M02_AXI_RVALID;
  wire [31:0]smartconnect_io_M02_AXI_WDATA;
  wire smartconnect_io_M02_AXI_WREADY;
  wire [3:0]smartconnect_io_M02_AXI_WSTRB;
  wire smartconnect_io_M02_AXI_WVALID;
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

  assign uart_tx = test_tx;
  CPU_block_inst_1 CPU_block_0
       (.M_AXI_D_araddr(CPU_block_0_M_AXI_D_ARADDR),
        .M_AXI_D_arburst(CPU_block_0_M_AXI_D_ARBURST),
        .M_AXI_D_arcache(CPU_block_0_M_AXI_D_ARCACHE),
        .M_AXI_D_arid(CPU_block_0_M_AXI_D_ARID),
        .M_AXI_D_arlen(CPU_block_0_M_AXI_D_ARLEN),
        .M_AXI_D_arprot(CPU_block_0_M_AXI_D_ARPROT),
        .M_AXI_D_arready(CPU_block_0_M_AXI_D_ARREADY),
        .M_AXI_D_arsize(CPU_block_0_M_AXI_D_ARSIZE),
        .M_AXI_D_arvalid(CPU_block_0_M_AXI_D_ARVALID),
        .M_AXI_D_awaddr(CPU_block_0_M_AXI_D_AWADDR),
        .M_AXI_D_awburst(CPU_block_0_M_AXI_D_AWBURST),
        .M_AXI_D_awcache(CPU_block_0_M_AXI_D_AWCACHE),
        .M_AXI_D_awid(CPU_block_0_M_AXI_D_AWID),
        .M_AXI_D_awlen(CPU_block_0_M_AXI_D_AWLEN),
        .M_AXI_D_awprot(CPU_block_0_M_AXI_D_AWPROT),
        .M_AXI_D_awready(CPU_block_0_M_AXI_D_AWREADY),
        .M_AXI_D_awsize(CPU_block_0_M_AXI_D_AWSIZE),
        .M_AXI_D_awvalid(CPU_block_0_M_AXI_D_AWVALID),
        .M_AXI_D_bid(CPU_block_0_M_AXI_D_BID),
        .M_AXI_D_bready(CPU_block_0_M_AXI_D_BREADY),
        .M_AXI_D_bresp(CPU_block_0_M_AXI_D_BRESP),
        .M_AXI_D_bvalid(CPU_block_0_M_AXI_D_BVALID),
        .M_AXI_D_rdata(CPU_block_0_M_AXI_D_RDATA),
        .M_AXI_D_rid(CPU_block_0_M_AXI_D_RID),
        .M_AXI_D_rlast(CPU_block_0_M_AXI_D_RLAST),
        .M_AXI_D_rready(CPU_block_0_M_AXI_D_RREADY),
        .M_AXI_D_rresp(CPU_block_0_M_AXI_D_RRESP),
        .M_AXI_D_rvalid(CPU_block_0_M_AXI_D_RVALID),
        .M_AXI_D_wdata(CPU_block_0_M_AXI_D_WDATA),
        .M_AXI_D_wlast(CPU_block_0_M_AXI_D_WLAST),
        .M_AXI_D_wready(CPU_block_0_M_AXI_D_WREADY),
        .M_AXI_D_wstrb(CPU_block_0_M_AXI_D_WSTRB),
        .M_AXI_D_wvalid(CPU_block_0_M_AXI_D_WVALID),
        .M_AXI_IO_araddr(CPU_block_0_M_AXI_IO_ARADDR),
        .M_AXI_IO_arprot(CPU_block_0_M_AXI_IO_ARPROT),
        .M_AXI_IO_arready(CPU_block_0_M_AXI_IO_ARREADY),
        .M_AXI_IO_arvalid(CPU_block_0_M_AXI_IO_ARVALID),
        .M_AXI_IO_awaddr(CPU_block_0_M_AXI_IO_AWADDR),
        .M_AXI_IO_awprot(CPU_block_0_M_AXI_IO_AWPROT),
        .M_AXI_IO_awready(CPU_block_0_M_AXI_IO_AWREADY),
        .M_AXI_IO_awvalid(CPU_block_0_M_AXI_IO_AWVALID),
        .M_AXI_IO_bready(CPU_block_0_M_AXI_IO_BREADY),
        .M_AXI_IO_bresp(CPU_block_0_M_AXI_IO_BRESP),
        .M_AXI_IO_bvalid(CPU_block_0_M_AXI_IO_BVALID),
        .M_AXI_IO_rdata(CPU_block_0_M_AXI_IO_RDATA),
        .M_AXI_IO_rready(CPU_block_0_M_AXI_IO_RREADY),
        .M_AXI_IO_rresp(CPU_block_0_M_AXI_IO_RRESP),
        .M_AXI_IO_rvalid(CPU_block_0_M_AXI_IO_RVALID),
        .M_AXI_IO_wdata(CPU_block_0_M_AXI_IO_WDATA),
        .M_AXI_IO_wready(CPU_block_0_M_AXI_IO_WREADY),
        .M_AXI_IO_wstrb(CPU_block_0_M_AXI_IO_WSTRB),
        .M_AXI_IO_wvalid(CPU_block_0_M_AXI_IO_WVALID),
        .M_AXI_I_araddr(CPU_block_0_M_AXI_I_ARADDR),
        .M_AXI_I_arburst(CPU_block_0_M_AXI_I_ARBURST),
        .M_AXI_I_arcache(CPU_block_0_M_AXI_I_ARCACHE),
        .M_AXI_I_arid(CPU_block_0_M_AXI_I_ARID),
        .M_AXI_I_arlen(CPU_block_0_M_AXI_I_ARLEN),
        .M_AXI_I_arprot(CPU_block_0_M_AXI_I_ARPROT),
        .M_AXI_I_arready(CPU_block_0_M_AXI_I_ARREADY),
        .M_AXI_I_arsize(CPU_block_0_M_AXI_I_ARSIZE),
        .M_AXI_I_arvalid(CPU_block_0_M_AXI_I_ARVALID),
        .M_AXI_I_rdata(CPU_block_0_M_AXI_I_RDATA),
        .M_AXI_I_rid(CPU_block_0_M_AXI_I_RID),
        .M_AXI_I_rlast(CPU_block_0_M_AXI_I_RLAST),
        .M_AXI_I_rready(CPU_block_0_M_AXI_I_RREADY),
        .M_AXI_I_rresp(CPU_block_0_M_AXI_I_RRESP),
        .M_AXI_I_rvalid(CPU_block_0_M_AXI_I_RVALID),
        .clk(mig_axi_wrapper_0_ui_clk),
        .cpi_int_s_ext(1'b0),
        .cpu_int_m_ext(1'b0),
        .cpu_int_soft(1'b0),
        .cpu_int_timer(axi_timer_0_interrupt),
        .cpu_rdtime(c_counter_binary_0_Q),
        .reset(reset));
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
  Block_top_axi_quad_spi_0_1 axi_quad_spi_0
       (.ext_spi_clk(mig_axi_wrapper_0_ui_clk),
        .io0_i(util_ds_buf_0_IOBUF_IO_O),
        .io0_o(axi_quad_spi_0_io0_o),
        .io0_t(axi_quad_spi_0_io0_t),
        .io1_i(util_ds_buf_1_IOBUF_IO_O),
        .io1_o(axi_quad_spi_0_io1_o),
        .io1_t(axi_quad_spi_0_io1_t),
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
  Block_top_axi_timer_0_0 axi_timer_0
       (.capturetrig0(1'b0),
        .capturetrig1(1'b0),
        .freeze(1'b0),
        .interrupt(axi_timer_0_interrupt),
        .s_axi_aclk(mig_axi_wrapper_0_ui_clk),
        .s_axi_araddr(smartconnect_io_M02_AXI_ARADDR),
        .s_axi_aresetn(reset_n),
        .s_axi_arready(smartconnect_io_M02_AXI_ARREADY),
        .s_axi_arvalid(smartconnect_io_M02_AXI_ARVALID),
        .s_axi_awaddr(smartconnect_io_M02_AXI_AWADDR),
        .s_axi_awready(smartconnect_io_M02_AXI_AWREADY),
        .s_axi_awvalid(smartconnect_io_M02_AXI_AWVALID),
        .s_axi_bready(smartconnect_io_M02_AXI_BREADY),
        .s_axi_bresp(smartconnect_io_M02_AXI_BRESP),
        .s_axi_bvalid(smartconnect_io_M02_AXI_BVALID),
        .s_axi_rdata(smartconnect_io_M02_AXI_RDATA),
        .s_axi_rready(smartconnect_io_M02_AXI_RREADY),
        .s_axi_rresp(smartconnect_io_M02_AXI_RRESP),
        .s_axi_rvalid(smartconnect_io_M02_AXI_RVALID),
        .s_axi_wdata(smartconnect_io_M02_AXI_WDATA),
        .s_axi_wready(smartconnect_io_M02_AXI_WREADY),
        .s_axi_wstrb(smartconnect_io_M02_AXI_WSTRB),
        .s_axi_wvalid(smartconnect_io_M02_AXI_WVALID));
  Block_top_axi_uartlite_0_0 axi_uartlite_0
       (.rx(uart_rx),
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
  Block_top_c_counter_binary_0_0 c_counter_binary_0
       (.CLK(mig_axi_wrapper_0_ui_clk),
        .Q(c_counter_binary_0_Q));
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
        .M02_AXI_arready(smartconnect_io_M02_AXI_ARREADY),
        .M02_AXI_arvalid(smartconnect_io_M02_AXI_ARVALID),
        .M02_AXI_awaddr(smartconnect_io_M02_AXI_AWADDR),
        .M02_AXI_awready(smartconnect_io_M02_AXI_AWREADY),
        .M02_AXI_awvalid(smartconnect_io_M02_AXI_AWVALID),
        .M02_AXI_bready(smartconnect_io_M02_AXI_BREADY),
        .M02_AXI_bresp(smartconnect_io_M02_AXI_BRESP),
        .M02_AXI_bvalid(smartconnect_io_M02_AXI_BVALID),
        .M02_AXI_rdata(smartconnect_io_M02_AXI_RDATA),
        .M02_AXI_rready(smartconnect_io_M02_AXI_RREADY),
        .M02_AXI_rresp(smartconnect_io_M02_AXI_RRESP),
        .M02_AXI_rvalid(smartconnect_io_M02_AXI_RVALID),
        .M02_AXI_wdata(smartconnect_io_M02_AXI_WDATA),
        .M02_AXI_wready(smartconnect_io_M02_AXI_WREADY),
        .M02_AXI_wstrb(smartconnect_io_M02_AXI_WSTRB),
        .M02_AXI_wvalid(smartconnect_io_M02_AXI_WVALID),
        .S00_AXI_araddr(CPU_block_0_M_AXI_IO_ARADDR),
        .S00_AXI_arprot(CPU_block_0_M_AXI_IO_ARPROT),
        .S00_AXI_arready(CPU_block_0_M_AXI_IO_ARREADY),
        .S00_AXI_arvalid(CPU_block_0_M_AXI_IO_ARVALID),
        .S00_AXI_awaddr(CPU_block_0_M_AXI_IO_AWADDR),
        .S00_AXI_awprot(CPU_block_0_M_AXI_IO_AWPROT),
        .S00_AXI_awready(CPU_block_0_M_AXI_IO_AWREADY),
        .S00_AXI_awvalid(CPU_block_0_M_AXI_IO_AWVALID),
        .S00_AXI_bready(CPU_block_0_M_AXI_IO_BREADY),
        .S00_AXI_bresp(CPU_block_0_M_AXI_IO_BRESP),
        .S00_AXI_bvalid(CPU_block_0_M_AXI_IO_BVALID),
        .S00_AXI_rdata(CPU_block_0_M_AXI_IO_RDATA),
        .S00_AXI_rready(CPU_block_0_M_AXI_IO_RREADY),
        .S00_AXI_rresp(CPU_block_0_M_AXI_IO_RRESP),
        .S00_AXI_rvalid(CPU_block_0_M_AXI_IO_RVALID),
        .S00_AXI_wdata(CPU_block_0_M_AXI_IO_WDATA),
        .S00_AXI_wready(CPU_block_0_M_AXI_IO_WREADY),
        .S00_AXI_wstrb(CPU_block_0_M_AXI_IO_WSTRB),
        .S00_AXI_wvalid(CPU_block_0_M_AXI_IO_WVALID),
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
        .S00_AXI_araddr(CPU_block_0_M_AXI_D_ARADDR),
        .S00_AXI_arburst(CPU_block_0_M_AXI_D_ARBURST),
        .S00_AXI_arcache(CPU_block_0_M_AXI_D_ARCACHE),
        .S00_AXI_arid(CPU_block_0_M_AXI_D_ARID),
        .S00_AXI_arlen(CPU_block_0_M_AXI_D_ARLEN),
        .S00_AXI_arlock(1'b0),
        .S00_AXI_arprot(CPU_block_0_M_AXI_D_ARPROT),
        .S00_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_arready(CPU_block_0_M_AXI_D_ARREADY),
        .S00_AXI_arsize(CPU_block_0_M_AXI_D_ARSIZE),
        .S00_AXI_arvalid(CPU_block_0_M_AXI_D_ARVALID),
        .S00_AXI_awaddr(CPU_block_0_M_AXI_D_AWADDR),
        .S00_AXI_awburst(CPU_block_0_M_AXI_D_AWBURST),
        .S00_AXI_awcache(CPU_block_0_M_AXI_D_AWCACHE),
        .S00_AXI_awid(CPU_block_0_M_AXI_D_AWID),
        .S00_AXI_awlen(CPU_block_0_M_AXI_D_AWLEN),
        .S00_AXI_awlock(1'b0),
        .S00_AXI_awprot(CPU_block_0_M_AXI_D_AWPROT),
        .S00_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_awready(CPU_block_0_M_AXI_D_AWREADY),
        .S00_AXI_awsize(CPU_block_0_M_AXI_D_AWSIZE),
        .S00_AXI_awvalid(CPU_block_0_M_AXI_D_AWVALID),
        .S00_AXI_bid(CPU_block_0_M_AXI_D_BID),
        .S00_AXI_bready(CPU_block_0_M_AXI_D_BREADY),
        .S00_AXI_bresp(CPU_block_0_M_AXI_D_BRESP),
        .S00_AXI_bvalid(CPU_block_0_M_AXI_D_BVALID),
        .S00_AXI_rdata(CPU_block_0_M_AXI_D_RDATA),
        .S00_AXI_rid(CPU_block_0_M_AXI_D_RID),
        .S00_AXI_rlast(CPU_block_0_M_AXI_D_RLAST),
        .S00_AXI_rready(CPU_block_0_M_AXI_D_RREADY),
        .S00_AXI_rresp(CPU_block_0_M_AXI_D_RRESP),
        .S00_AXI_rvalid(CPU_block_0_M_AXI_D_RVALID),
        .S00_AXI_wdata(CPU_block_0_M_AXI_D_WDATA),
        .S00_AXI_wlast(CPU_block_0_M_AXI_D_WLAST),
        .S00_AXI_wready(CPU_block_0_M_AXI_D_WREADY),
        .S00_AXI_wstrb(CPU_block_0_M_AXI_D_WSTRB),
        .S00_AXI_wvalid(CPU_block_0_M_AXI_D_WVALID),
        .S01_AXI_araddr(CPU_block_0_M_AXI_I_ARADDR),
        .S01_AXI_arburst(CPU_block_0_M_AXI_I_ARBURST),
        .S01_AXI_arcache(CPU_block_0_M_AXI_I_ARCACHE),
        .S01_AXI_arid(CPU_block_0_M_AXI_I_ARID),
        .S01_AXI_arlen(CPU_block_0_M_AXI_I_ARLEN),
        .S01_AXI_arlock(1'b0),
        .S01_AXI_arprot(CPU_block_0_M_AXI_I_ARPROT),
        .S01_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S01_AXI_arready(CPU_block_0_M_AXI_I_ARREADY),
        .S01_AXI_arsize(CPU_block_0_M_AXI_I_ARSIZE),
        .S01_AXI_arvalid(CPU_block_0_M_AXI_I_ARVALID),
        .S01_AXI_rdata(CPU_block_0_M_AXI_I_RDATA),
        .S01_AXI_rid(CPU_block_0_M_AXI_I_RID),
        .S01_AXI_rlast(CPU_block_0_M_AXI_I_RLAST),
        .S01_AXI_rready(CPU_block_0_M_AXI_I_RREADY),
        .S01_AXI_rresp(CPU_block_0_M_AXI_I_RRESP),
        .S01_AXI_rvalid(CPU_block_0_M_AXI_I_RVALID),
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
endmodule

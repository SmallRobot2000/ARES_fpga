//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
//Date        : Tue Aug 11 21:51:31 2026
//Host        : lovroLinuxM running 64-bit Ubuntu 24.04.4 LTS
//Command     : generate_target Block_top_wrapper.bd
//Design      : Block_top_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Block_top_wrapper
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
  input clk;
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
  input rst_n;
  inout [0:0]spi_controller_miso;
  inout [0:0]spi_controller_mosi;
  inout [0:0]spi_controller_sck;
  inout [3:0]spi_controller_ss;
  output spi_flash_ce_n;
  input spi_miso;
  output spi_mosi;
  output spi_sck;
  output test_tx;
  input uart_rx;
  output uart_tx;
  output v_sync;
  output [3:0]vga_b;
  output [3:0]vga_g;
  output [3:0]vga_r;

  wire clk;
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
  wire rst_n;
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
  wire uart_tx;
  wire v_sync;
  wire [3:0]vga_b;
  wire [3:0]vga_g;
  wire [3:0]vga_r;

  Block_top Block_top_i
       (.clk(clk),
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
        .h_sync(h_sync),
        .rst_n(rst_n),
        .spi_controller_miso(spi_controller_miso),
        .spi_controller_mosi(spi_controller_mosi),
        .spi_controller_sck(spi_controller_sck),
        .spi_controller_ss(spi_controller_ss),
        .spi_flash_ce_n(spi_flash_ce_n),
        .spi_miso(spi_miso),
        .spi_mosi(spi_mosi),
        .spi_sck(spi_sck),
        .test_tx(test_tx),
        .uart_rx(uart_rx),
        .uart_tx(uart_tx),
        .v_sync(v_sync),
        .vga_b(vga_b),
        .vga_g(vga_g),
        .vga_r(vga_r));
endmodule

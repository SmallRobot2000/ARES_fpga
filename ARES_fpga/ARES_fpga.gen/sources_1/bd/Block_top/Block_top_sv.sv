// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
//
// DO NOT MODIFY THIS FILE.

// MODULE VLNV: amd.com:blockdesign:Block_top:1.0

`timescale 1ps / 1ps

`include "vivado_interfaces.svh"

module Block_top_sv (
  (* X_INTERFACE_IGNORE = "true" *)
  inout wire [15:0] ddr3_dq,
  (* X_INTERFACE_IGNORE = "true" *)
  inout wire [1:0] ddr3_dqs_n,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire ddr3_ras_n,
  (* X_INTERFACE_IGNORE = "true" *)
  inout wire [1:0] ddr3_dqs_p,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire [13:0] ddr3_addr,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire [2:0] ddr3_ba,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire ddr3_cas_n,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire ddr3_reset_n,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire [0:0] ddr3_ck_p,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire [0:0] ddr3_ck_n,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire [0:0] ddr3_cs_n,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire [0:0] ddr3_odt,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire [1:0] ddr3_dm,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire ddr3_we_n,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire [0:0] ddr3_cke,
  (* X_INTERFACE_IGNORE = "true" *)
  input wire rst_n,
  (* X_INTERFACE_IGNORE = "true" *)
  input wire clk,
  (* X_INTERFACE_IGNORE = "true" *)
  input wire spi_miso,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire spi_mosi,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire spi_sck,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire spi_flash_ce_n,
  (* X_INTERFACE_IGNORE = "true" *)
  input wire uart_rx,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire uart_tx,
  (* X_INTERFACE_IGNORE = "true" *)
  output wire test_tx,
  (* X_INTERFACE_IGNORE = "true" *)
  inout wire [0:0] spi_controller_mosi,
  (* X_INTERFACE_IGNORE = "true" *)
  inout wire [0:0] spi_controller_miso,
  (* X_INTERFACE_IGNORE = "true" *)
  inout wire [0:0] spi_controller_sck,
  (* X_INTERFACE_IGNORE = "true" *)
  inout wire [3:0] spi_controller_ss
);

  Block_top inst (
    .ddr3_dq(ddr3_dq),
    .ddr3_dqs_n(ddr3_dqs_n),
    .ddr3_ras_n(ddr3_ras_n),
    .ddr3_dqs_p(ddr3_dqs_p),
    .ddr3_addr(ddr3_addr),
    .ddr3_ba(ddr3_ba),
    .ddr3_cas_n(ddr3_cas_n),
    .ddr3_reset_n(ddr3_reset_n),
    .ddr3_ck_p(ddr3_ck_p),
    .ddr3_ck_n(ddr3_ck_n),
    .ddr3_cs_n(ddr3_cs_n),
    .ddr3_odt(ddr3_odt),
    .ddr3_dm(ddr3_dm),
    .ddr3_we_n(ddr3_we_n),
    .ddr3_cke(ddr3_cke),
    .rst_n(rst_n),
    .clk(clk),
    .spi_miso(spi_miso),
    .spi_mosi(spi_mosi),
    .spi_sck(spi_sck),
    .spi_flash_ce_n(spi_flash_ce_n),
    .uart_rx(uart_rx),
    .uart_tx(uart_tx),
    .test_tx(test_tx),
    .spi_controller_mosi(spi_controller_mosi),
    .spi_controller_miso(spi_controller_miso),
    .spi_controller_sck(spi_controller_sck),
    .spi_controller_ss(spi_controller_ss)
  );

endmodule

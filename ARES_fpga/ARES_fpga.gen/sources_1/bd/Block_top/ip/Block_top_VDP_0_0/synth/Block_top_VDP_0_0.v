// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2026 Advanced Micro Devices, Inc. All rights reserved.
// 
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


// IP VLNV: xilinx.com:module_ref:VDP:1.0
// IP Revision: 1

(* X_CORE_INFO = "VDP,Vivado 2025.2" *)
(* CHECK_LICENSE_TYPE = "Block_top_VDP_0_0,VDP,{}" *)
(* CORE_GENERATION_INFO = "Block_top_VDP_0_0,VDP,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=VDP,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,VGA_H_ACTIVE=640,VGA_V_ACTIVE=480,VGA_H_SYNC=96,VGA_V_SYNC=2,VGA_H_FRONT_PORCH=16,VGA_V_FRONT_PORCH=11,VGA_H_BACK_PORCH=48,VGA_V_BACK_PORCH=31,VGA_H_TOTAL=800,VGA_V_TOTAL=524}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module Block_top_VDP_0_0 (
  map_cpu_addr,
  map_cpu_din,
  map_cpu_dout,
  map_cpu_en,
  map_cpu_wen,
  map_cpu_clk,
  data_cpu_addr,
  data_cpu_din,
  data_cpu_dout,
  data_cpu_en,
  data_cpu_wen,
  data_cpu_clk,
  s_axi_aclk,
  s_axi_aresetn,
  h_sync,
  v_sync,
  vga_r,
  vga_g,
  vga_b
);

(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 MAP_CPU_BRAM ADDR" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME MAP_CPU_BRAM, MASTER_TYPE BRAM_CTRL, MEM_SIZE 32768, READ_WRITE_MODE READ_WRITE, MEM_WIDTH 32, MEM_ECC NONE, READ_LATENCY 1" *)
input wire [12 : 0] map_cpu_addr;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 MAP_CPU_BRAM DIN" *)
input wire [31 : 0] map_cpu_din;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 MAP_CPU_BRAM DOUT" *)
output wire [31 : 0] map_cpu_dout;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 MAP_CPU_BRAM EN" *)
input wire map_cpu_en;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 MAP_CPU_BRAM WE" *)
input wire [3 : 0] map_cpu_wen;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 MAP_CPU_BRAM CLK" *)
input wire map_cpu_clk;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 DATA_CPU_BRAM ADDR" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA_CPU_BRAM, MASTER_TYPE BRAM_CTRL, MEM_SIZE 65536, READ_WRITE_MODE READ_WRITE, MEM_WIDTH 32, MEM_ECC NONE, READ_LATENCY 1" *)
input wire [13 : 0] data_cpu_addr;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 DATA_CPU_BRAM DIN" *)
input wire [31 : 0] data_cpu_din;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 DATA_CPU_BRAM DOUT" *)
output wire [31 : 0] data_cpu_dout;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 DATA_CPU_BRAM EN" *)
input wire data_cpu_en;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 DATA_CPU_BRAM WE" *)
input wire [3 : 0] data_cpu_wen;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 DATA_CPU_BRAM CLK" *)
input wire data_cpu_clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s_axi_aclk CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_aclk, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Block_top_mig_axi_wrapper_0_0_ui_clk, INSERT_VIP 0" *)
input wire s_axi_aclk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s_axi_aresetn RST" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
input wire s_axi_aresetn;
output wire h_sync;
output wire v_sync;
output wire [3 : 0] vga_r;
output wire [3 : 0] vga_g;
output wire [3 : 0] vga_b;

  VDP #(
    .VGA_H_ACTIVE(640),
    .VGA_V_ACTIVE(480),
    .VGA_H_SYNC(96),
    .VGA_V_SYNC(2),
    .VGA_H_FRONT_PORCH(16),
    .VGA_V_FRONT_PORCH(11),
    .VGA_H_BACK_PORCH(48),
    .VGA_V_BACK_PORCH(31),
    .VGA_H_TOTAL(800),
    .VGA_V_TOTAL(524)
  ) inst (
    .map_cpu_addr(map_cpu_addr),
    .map_cpu_din(map_cpu_din),
    .map_cpu_dout(map_cpu_dout),
    .map_cpu_en(map_cpu_en),
    .map_cpu_wen(map_cpu_wen),
    .map_cpu_clk(map_cpu_clk),
    .data_cpu_addr(data_cpu_addr),
    .data_cpu_din(data_cpu_din),
    .data_cpu_dout(data_cpu_dout),
    .data_cpu_en(data_cpu_en),
    .data_cpu_wen(data_cpu_wen),
    .data_cpu_clk(data_cpu_clk),
    .s_axi_aclk(s_axi_aclk),
    .s_axi_aresetn(s_axi_aresetn),
    .h_sync(h_sync),
    .v_sync(v_sync),
    .vga_r(vga_r),
    .vga_g(vga_g),
    .vga_b(vga_b)
  );
endmodule

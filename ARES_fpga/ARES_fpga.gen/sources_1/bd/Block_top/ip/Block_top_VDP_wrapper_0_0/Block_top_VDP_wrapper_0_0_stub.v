// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Thu Aug 20 16:15:51 2026
// Host        : lovroLinuxM running 64-bit Ubuntu 24.04.4 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/lovro/ARES/ARES_fpga/ARES_fpga/ARES_fpga.gen/sources_1/bd/Block_top/ip/Block_top_VDP_wrapper_0_0/Block_top_VDP_wrapper_0_0_stub.v
// Design      : Block_top_VDP_wrapper_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "Block_top_VDP_wrapper_0_0,VDP_wrapper,{}" *) (* CORE_GENERATION_INFO = "Block_top_VDP_wrapper_0_0,VDP_wrapper,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=VDP_wrapper,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "VDP_wrapper,Vivado 2025.2" *) 
module Block_top_VDP_wrapper_0_0(t0_map_cpu_addr, t0_map_cpu_din, 
  t0_map_cpu_dout, t0_map_cpu_en, t0_map_cpu_wen, t0_map_cpu_clk, t0_data_cpu_addr, 
  t0_data_cpu_din, t0_data_cpu_dout, t0_data_cpu_en, t0_data_cpu_wen, t0_data_cpu_clk, 
  t1_map_cpu_addr, t1_map_cpu_din, t1_map_cpu_dout, t1_map_cpu_en, t1_map_cpu_wen, 
  t1_map_cpu_clk, t1_data_cpu_addr, t1_data_cpu_din, t1_data_cpu_dout, t1_data_cpu_en, 
  t1_data_cpu_wen, t1_data_cpu_clk, s0_att_cpu_addr, s0_att_cpu_din, s0_att_cpu_dout, 
  s0_att_cpu_en, s0_att_cpu_wen, s0_att_cpu_clk, s0_data_cpu_addr, s0_data_cpu_din, 
  s0_data_cpu_dout, s0_data_cpu_en, s0_data_cpu_wen, s0_data_cpu_clk, r0_map_cpu_addr, 
  r0_map_cpu_din, r0_map_cpu_dout, r0_map_cpu_en, r0_map_cpu_wen, r0_map_cpu_clk, 
  s_axi_aresetn, h_sync, v_sync, vga_r, vga_g, vga_b, ram0_arvalid, ram0_arready, ram0_araddr, 
  ram0_arlen, ram0_arsize, ram0_arburst, ram0_rvalid, ram0_rready, ram0_rdata, ram0_rresp, 
  ram0_rlast, s_axi_aclk)
/* synthesis syn_black_box black_box_pad_pin="t0_map_cpu_addr[14:0],t0_map_cpu_din[31:0],t0_map_cpu_dout[31:0],t0_map_cpu_en,t0_map_cpu_wen[3:0],t0_map_cpu_clk,t0_data_cpu_addr[15:0],t0_data_cpu_din[31:0],t0_data_cpu_dout[31:0],t0_data_cpu_en,t0_data_cpu_wen[3:0],t0_data_cpu_clk,t1_map_cpu_addr[14:0],t1_map_cpu_din[31:0],t1_map_cpu_dout[31:0],t1_map_cpu_en,t1_map_cpu_wen[3:0],t1_map_cpu_clk,t1_data_cpu_addr[15:0],t1_data_cpu_din[31:0],t1_data_cpu_dout[31:0],t1_data_cpu_en,t1_data_cpu_wen[3:0],t1_data_cpu_clk,s0_att_cpu_addr[8:0],s0_att_cpu_din[31:0],s0_att_cpu_dout[31:0],s0_att_cpu_en,s0_att_cpu_wen[3:0],s0_att_cpu_clk,s0_data_cpu_addr[14:0],s0_data_cpu_din[31:0],s0_data_cpu_dout[31:0],s0_data_cpu_en,s0_data_cpu_wen[3:0],s0_data_cpu_clk,r0_map_cpu_addr[12:0],r0_map_cpu_din[31:0],r0_map_cpu_dout[31:0],r0_map_cpu_en,r0_map_cpu_wen[3:0],s_axi_aresetn,h_sync,v_sync,vga_r[3:0],vga_g[3:0],vga_b[3:0],ram0_arvalid,ram0_arready,ram0_araddr[31:0],ram0_arlen[7:0],ram0_arsize[2:0],ram0_arburst[1:0],ram0_rvalid,ram0_rready,ram0_rdata[127:0],ram0_rresp[1:0],ram0_rlast" */
/* synthesis syn_force_seq_prim="r0_map_cpu_clk" */
/* synthesis syn_force_seq_prim="s_axi_aclk" */;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0_MAP_CPU_BRAM ADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME T0_MAP_CPU_BRAM, MASTER_TYPE BRAM_CTRL, MEM_SIZE 32768, READ_WRITE_MODE READ_WRITE, MEM_WIDTH 32, MEM_ECC NONE, READ_LATENCY 1" *) input [14:0]t0_map_cpu_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0_MAP_CPU_BRAM DIN" *) input [31:0]t0_map_cpu_din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0_MAP_CPU_BRAM DOUT" *) output [31:0]t0_map_cpu_dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0_MAP_CPU_BRAM EN" *) input t0_map_cpu_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0_MAP_CPU_BRAM WE" *) input [3:0]t0_map_cpu_wen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0_MAP_CPU_BRAM CLK" *) input t0_map_cpu_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0_DATA_CPU_BRAM ADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME T0_DATA_CPU_BRAM, MASTER_TYPE BRAM_CTRL, MEM_SIZE 65536, READ_WRITE_MODE READ_WRITE, MEM_WIDTH 32, MEM_ECC NONE, READ_LATENCY 1" *) input [15:0]t0_data_cpu_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0_DATA_CPU_BRAM DIN" *) input [31:0]t0_data_cpu_din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0_DATA_CPU_BRAM DOUT" *) output [31:0]t0_data_cpu_dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0_DATA_CPU_BRAM EN" *) input t0_data_cpu_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0_DATA_CPU_BRAM WE" *) input [3:0]t0_data_cpu_wen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0_DATA_CPU_BRAM CLK" *) input t0_data_cpu_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1_MAP_CPU_BRAM ADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME T1_MAP_CPU_BRAM, MASTER_TYPE BRAM_CTRL, MEM_SIZE 32768, READ_WRITE_MODE READ_WRITE, MEM_WIDTH 32, MEM_ECC NONE, READ_LATENCY 1" *) input [14:0]t1_map_cpu_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1_MAP_CPU_BRAM DIN" *) input [31:0]t1_map_cpu_din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1_MAP_CPU_BRAM DOUT" *) output [31:0]t1_map_cpu_dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1_MAP_CPU_BRAM EN" *) input t1_map_cpu_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1_MAP_CPU_BRAM WE" *) input [3:0]t1_map_cpu_wen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1_MAP_CPU_BRAM CLK" *) input t1_map_cpu_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1_DATA_CPU_BRAM ADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME T1_DATA_CPU_BRAM, MASTER_TYPE BRAM_CTRL, MEM_SIZE 65536, READ_WRITE_MODE READ_WRITE, MEM_WIDTH 32, MEM_ECC NONE, READ_LATENCY 1" *) input [15:0]t1_data_cpu_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1_DATA_CPU_BRAM DIN" *) input [31:0]t1_data_cpu_din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1_DATA_CPU_BRAM DOUT" *) output [31:0]t1_data_cpu_dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1_DATA_CPU_BRAM EN" *) input t1_data_cpu_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1_DATA_CPU_BRAM WE" *) input [3:0]t1_data_cpu_wen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1_DATA_CPU_BRAM CLK" *) input t1_data_cpu_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 S0_ATT_CPU_BRAM ADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S0_ATT_CPU_BRAM, MASTER_TYPE BRAM_CTRL, MEM_SIZE 512, READ_WRITE_MODE READ_WRITE, MEM_WIDTH 32, MEM_ECC NONE, READ_LATENCY 1" *) input [8:0]s0_att_cpu_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 S0_ATT_CPU_BRAM DIN" *) input [31:0]s0_att_cpu_din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 S0_ATT_CPU_BRAM DOUT" *) output [31:0]s0_att_cpu_dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 S0_ATT_CPU_BRAM EN" *) input s0_att_cpu_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 S0_ATT_CPU_BRAM WE" *) input [3:0]s0_att_cpu_wen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 S0_ATT_CPU_BRAM CLK" *) input s0_att_cpu_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 S0_DATA_CPU_BRAM ADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S0_DATA_CPU_BRAM, MASTER_TYPE BRAM_CTRL, MEM_SIZE 32768, READ_WRITE_MODE READ_WRITE, MEM_WIDTH 32, MEM_ECC NONE, READ_LATENCY 1" *) input [14:0]s0_data_cpu_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 S0_DATA_CPU_BRAM DIN" *) input [31:0]s0_data_cpu_din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 S0_DATA_CPU_BRAM DOUT" *) output [31:0]s0_data_cpu_dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 S0_DATA_CPU_BRAM EN" *) input s0_data_cpu_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 S0_DATA_CPU_BRAM WE" *) input [3:0]s0_data_cpu_wen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 S0_DATA_CPU_BRAM CLK" *) input s0_data_cpu_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 R0_MAP_CPU_BRAM ADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME R0_MAP_CPU_BRAM, MASTER_TYPE BRAM_CTRL, MEM_SIZE 8192, READ_WRITE_MODE READ_WRITE, MEM_WIDTH 32, MEM_ECC NONE, READ_LATENCY 2" *) input [12:0]r0_map_cpu_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 R0_MAP_CPU_BRAM DIN" *) input [31:0]r0_map_cpu_din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 R0_MAP_CPU_BRAM DOUT" *) output [31:0]r0_map_cpu_dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 R0_MAP_CPU_BRAM EN" *) input r0_map_cpu_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 R0_MAP_CPU_BRAM WE" *) input [3:0]r0_map_cpu_wen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 R0_MAP_CPU_BRAM CLK" *) input r0_map_cpu_clk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s_axi_aresetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;
  output h_sync;
  output v_sync;
  output [3:0]vga_r;
  output [3:0]vga_g;
  output [3:0]vga_b;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram0 ARVALID" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ram0, PROTOCOL AXI4, DATA_WIDTH 128, ADDR_WIDTH 32, READ_WRITE_MODE READ_ONLY, HAS_BURST 1, FREQ_HZ 100000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 0, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN Block_top_mig_axi_wrapper_0_0_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output ram0_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram0 ARREADY" *) input ram0_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram0 ARADDR" *) output [31:0]ram0_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram0 ARLEN" *) output [7:0]ram0_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram0 ARSIZE" *) output [2:0]ram0_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram0 ARBURST" *) output [1:0]ram0_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram0 RVALID" *) input ram0_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram0 RREADY" *) output ram0_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram0 RDATA" *) input [127:0]ram0_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram0 RRESP" *) input [1:0]ram0_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ram0 RLAST" *) input ram0_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s_axi_aclk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_aclk, ASSOCIATED_RESET s_axi_aresetn, ASSOCIATED_BUSIF ram0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Block_top_mig_axi_wrapper_0_0_ui_clk, INSERT_VIP 0" *) input s_axi_aclk /* synthesis syn_isclock = 1 */;
endmodule

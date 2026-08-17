// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Mon Aug 17 21:12:19 2026
// Host        : lovroLinuxM running 64-bit Ubuntu 24.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/lovro/ARES/ARES_fpga/ARES_fpga/ARES_fpga.gen/sources_1/bd/Block_top/ip/Block_top_VDP_wrapper_0_0/Block_top_VDP_wrapper_0_0_sim_netlist.v
// Design      : Block_top_VDP_wrapper_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Block_top_VDP_wrapper_0_0,VDP_wrapper,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "VDP_wrapper,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module Block_top_VDP_wrapper_0_0
   (t0_map_cpu_addr,
    t0_map_cpu_din,
    t0_map_cpu_dout,
    t0_map_cpu_en,
    t0_map_cpu_wen,
    t0_map_cpu_clk,
    t0_data_cpu_addr,
    t0_data_cpu_din,
    t0_data_cpu_dout,
    t0_data_cpu_en,
    t0_data_cpu_wen,
    t0_data_cpu_clk,
    t1_map_cpu_addr,
    t1_map_cpu_din,
    t1_map_cpu_dout,
    t1_map_cpu_en,
    t1_map_cpu_wen,
    t1_map_cpu_clk,
    t1_data_cpu_addr,
    t1_data_cpu_din,
    t1_data_cpu_dout,
    t1_data_cpu_en,
    t1_data_cpu_wen,
    t1_data_cpu_clk,
    s0_att_cpu_addr,
    s0_att_cpu_din,
    s0_att_cpu_dout,
    s0_att_cpu_en,
    s0_att_cpu_wen,
    s0_att_cpu_clk,
    s0_data_cpu_addr,
    s0_data_cpu_din,
    s0_data_cpu_dout,
    s0_data_cpu_en,
    s0_data_cpu_wen,
    s0_data_cpu_clk,
    r0_map_cpu_addr,
    r0_map_cpu_din,
    r0_map_cpu_dout,
    r0_map_cpu_en,
    r0_map_cpu_wen,
    r0_map_cpu_clk,
    s_axi_aclk,
    s_axi_aresetn,
    h_sync,
    v_sync,
    vga_r,
    vga_g,
    vga_b);
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 R0_MAP_CPU_BRAM CLK" *) input r0_map_cpu_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s_axi_aclk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_aclk, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Block_top_mig_axi_wrapper_0_0_ui_clk, INSERT_VIP 0" *) input s_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s_axi_aresetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;
  output h_sync;
  output v_sync;
  output [3:0]vga_r;
  output [3:0]vga_g;
  output [3:0]vga_b;

  wire h_sync;
  wire [12:0]r0_map_cpu_addr;
  wire r0_map_cpu_clk;
  wire [31:0]r0_map_cpu_din;
  wire [31:0]r0_map_cpu_dout;
  wire r0_map_cpu_en;
  wire [3:0]r0_map_cpu_wen;
  wire [8:0]s0_att_cpu_addr;
  wire s0_att_cpu_clk;
  wire [31:0]s0_att_cpu_din;
  wire [31:0]s0_att_cpu_dout;
  wire s0_att_cpu_en;
  wire [3:0]s0_att_cpu_wen;
  wire [14:0]s0_data_cpu_addr;
  wire s0_data_cpu_clk;
  wire [31:0]s0_data_cpu_din;
  wire [31:0]s0_data_cpu_dout;
  wire s0_data_cpu_en;
  wire [3:0]s0_data_cpu_wen;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [15:0]t0_data_cpu_addr;
  wire t0_data_cpu_clk;
  wire [31:0]t0_data_cpu_din;
  wire [31:0]t0_data_cpu_dout;
  wire t0_data_cpu_en;
  wire [3:0]t0_data_cpu_wen;
  wire [14:0]t0_map_cpu_addr;
  wire t0_map_cpu_clk;
  wire [31:0]t0_map_cpu_din;
  wire [31:0]t0_map_cpu_dout;
  wire t0_map_cpu_en;
  wire [3:0]t0_map_cpu_wen;
  wire [15:0]t1_data_cpu_addr;
  wire t1_data_cpu_clk;
  wire [31:0]t1_data_cpu_din;
  wire [31:0]t1_data_cpu_dout;
  wire t1_data_cpu_en;
  wire [3:0]t1_data_cpu_wen;
  wire [14:0]t1_map_cpu_addr;
  wire t1_map_cpu_clk;
  wire [31:0]t1_map_cpu_din;
  wire [31:0]t1_map_cpu_dout;
  wire t1_map_cpu_en;
  wire [3:0]t1_map_cpu_wen;
  wire v_sync;
  wire [3:0]vga_b;
  wire [3:0]vga_g;
  wire [3:0]vga_r;

  Block_top_VDP_wrapper_0_0_VDP_wrapper inst
       (.h_sync(h_sync),
        .r0_map_cpu_addr({r0_map_cpu_addr[12:2],1'b0,1'b0}),
        .r0_map_cpu_clk(r0_map_cpu_clk),
        .r0_map_cpu_din(r0_map_cpu_din),
        .r0_map_cpu_dout(r0_map_cpu_dout),
        .r0_map_cpu_en(r0_map_cpu_en),
        .r0_map_cpu_wen(r0_map_cpu_wen),
        .s0_att_cpu_addr({s0_att_cpu_addr[8:2],1'b0,1'b0}),
        .s0_att_cpu_clk(s0_att_cpu_clk),
        .s0_att_cpu_din(s0_att_cpu_din),
        .s0_att_cpu_dout(s0_att_cpu_dout),
        .s0_att_cpu_en(s0_att_cpu_en),
        .s0_att_cpu_wen(s0_att_cpu_wen),
        .s0_data_cpu_addr({s0_data_cpu_addr[14:2],1'b0,1'b0}),
        .s0_data_cpu_clk(s0_data_cpu_clk),
        .s0_data_cpu_din(s0_data_cpu_din),
        .s0_data_cpu_dout(s0_data_cpu_dout),
        .s0_data_cpu_en(s0_data_cpu_en),
        .s0_data_cpu_wen(s0_data_cpu_wen),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .t0_data_cpu_addr({t0_data_cpu_addr[15:2],1'b0,1'b0}),
        .t0_data_cpu_clk(t0_data_cpu_clk),
        .t0_data_cpu_din(t0_data_cpu_din),
        .t0_data_cpu_dout(t0_data_cpu_dout),
        .t0_data_cpu_en(t0_data_cpu_en),
        .t0_data_cpu_wen(t0_data_cpu_wen),
        .t0_map_cpu_addr({t0_map_cpu_addr[14:2],1'b0,1'b0}),
        .t0_map_cpu_clk(t0_map_cpu_clk),
        .t0_map_cpu_din(t0_map_cpu_din),
        .t0_map_cpu_dout(t0_map_cpu_dout),
        .t0_map_cpu_en(t0_map_cpu_en),
        .t0_map_cpu_wen(t0_map_cpu_wen),
        .t1_data_cpu_addr({t1_data_cpu_addr[15:2],1'b0,1'b0}),
        .t1_data_cpu_clk(t1_data_cpu_clk),
        .t1_data_cpu_din(t1_data_cpu_din),
        .t1_data_cpu_dout(t1_data_cpu_dout),
        .t1_data_cpu_en(t1_data_cpu_en),
        .t1_data_cpu_wen(t1_data_cpu_wen),
        .t1_map_cpu_addr({t1_map_cpu_addr[14:2],1'b0,1'b0}),
        .t1_map_cpu_clk(t1_map_cpu_clk),
        .t1_map_cpu_din(t1_map_cpu_din),
        .t1_map_cpu_dout(t1_map_cpu_dout),
        .t1_map_cpu_en(t1_map_cpu_en),
        .t1_map_cpu_wen(t1_map_cpu_wen),
        .v_sync(v_sync),
        .vga_b(vga_b),
        .vga_g(vga_g),
        .vga_r(vga_r));
endmodule

(* ORIG_REF_NAME = "REG_MEMORY" *) 
module Block_top_VDP_wrapper_0_0_REG_MEMORY
   (\t0_y_off_reg_reg[7]_0 ,
    \t0_y_off_reg_reg[9]_0 ,
    \t1_y_off_reg_reg[7]_0 ,
    \t1_y_off_reg_reg[9]_0 ,
    D,
    S,
    \v_cnt_reg[1] ,
    \h_cnt_reg[6] ,
    \v_cnt_reg[8] ,
    \v_cnt_reg[4] ,
    t1_palette_data,
    t0_palette_data,
    s0_palette_data,
    r0_map_cpu_dout,
    ctrl_reg,
    t0_x_off_reg,
    t1_x_off_reg,
    r0_map_cpu_addr,
    r0_map_cpu_wen,
    Q,
    \map_r_addr_reg[11] ,
    \map_r_addr_reg[11]_0 ,
    r0_map_cpu_en,
    \vga_b[0] ,
    \data_out[8]_i_7_0 ,
    r0_map_cpu_clk,
    r0_map_cpu_din,
    t1_palette_addr,
    s_axi_aclk,
    t0_palette_addr,
    s0_palette_addr,
    DPRA,
    \data_out[15]_i_6_0 ,
    \data_out[9]_i_4_0 );
  output [2:0]\t0_y_off_reg_reg[7]_0 ;
  output [5:0]\t0_y_off_reg_reg[9]_0 ;
  output [2:0]\t1_y_off_reg_reg[7]_0 ;
  output [5:0]\t1_y_off_reg_reg[9]_0 ;
  output [0:0]D;
  output [0:0]S;
  output [0:0]\v_cnt_reg[1] ;
  output [0:0]\h_cnt_reg[6] ;
  output \v_cnt_reg[8] ;
  output \v_cnt_reg[4] ;
  output [15:0]t1_palette_data;
  output [15:0]t0_palette_data;
  output [15:0]s0_palette_data;
  output [31:0]r0_map_cpu_dout;
  output [2:0]ctrl_reg;
  output [9:0]t0_x_off_reg;
  output [9:0]t1_x_off_reg;
  input [10:0]r0_map_cpu_addr;
  input [3:0]r0_map_cpu_wen;
  input [10:0]Q;
  input \map_r_addr_reg[11] ;
  input \map_r_addr_reg[11]_0 ;
  input r0_map_cpu_en;
  input [6:0]\vga_b[0] ;
  input \data_out[8]_i_7_0 ;
  input r0_map_cpu_clk;
  input [31:0]r0_map_cpu_din;
  input [7:0]t1_palette_addr;
  input s_axi_aclk;
  input [7:0]t0_palette_addr;
  input [9:0]s0_palette_addr;
  input [6:0]DPRA;
  input [6:0]\data_out[15]_i_6_0 ;
  input [1:0]\data_out[9]_i_4_0 ;

  wire [0:0]D;
  wire [6:0]DPRA;
  wire [10:0]Q;
  wire [0:0]S;
  wire [2:0]ctrl_reg;
  wire \ctrl_reg[0]_i_1_n_0 ;
  wire \ctrl_reg[1]_i_1_n_0 ;
  wire \ctrl_reg[2]_i_1_n_0 ;
  wire \ctrl_reg[2]_i_2_n_0 ;
  wire [9:2]data2;
  wire [31:0]data_out0__0;
  wire \data_out[0]_i_2_n_0 ;
  wire \data_out[0]_i_3_n_0 ;
  wire \data_out[0]_i_5_n_0 ;
  wire \data_out[0]_i_7_n_0 ;
  wire \data_out[0]_i_8_n_0 ;
  wire \data_out[10]_i_2_n_0 ;
  wire \data_out[10]_i_4_n_0 ;
  wire \data_out[10]_i_5_n_0 ;
  wire \data_out[10]_i_6_n_0 ;
  wire \data_out[10]_i_7_n_0 ;
  wire \data_out[11]_i_2_n_0 ;
  wire \data_out[11]_i_4_n_0 ;
  wire \data_out[11]_i_5_n_0 ;
  wire \data_out[11]_i_6_n_0 ;
  wire \data_out[11]_i_7_n_0 ;
  wire \data_out[12]_i_2_n_0 ;
  wire \data_out[12]_i_4_n_0 ;
  wire \data_out[12]_i_5_n_0 ;
  wire \data_out[12]_i_6_n_0 ;
  wire \data_out[12]_i_7_n_0 ;
  wire \data_out[13]_i_2_n_0 ;
  wire \data_out[13]_i_4_n_0 ;
  wire \data_out[13]_i_5_n_0 ;
  wire \data_out[13]_i_6_n_0 ;
  wire \data_out[13]_i_7_n_0 ;
  wire \data_out[14]_i_2_n_0 ;
  wire \data_out[14]_i_4_n_0 ;
  wire \data_out[14]_i_5_n_0 ;
  wire \data_out[14]_i_6_n_0 ;
  wire \data_out[14]_i_7_n_0 ;
  wire \data_out[15]_i_2_n_0 ;
  wire \data_out[15]_i_4_n_0 ;
  wire [6:0]\data_out[15]_i_6_0 ;
  wire \data_out[15]_i_6_n_0 ;
  wire \data_out[15]_i_7_n_0 ;
  wire \data_out[15]_i_8_n_0 ;
  wire \data_out[16]_i_1_n_0 ;
  wire \data_out[17]_i_1_n_0 ;
  wire \data_out[18]_i_1_n_0 ;
  wire \data_out[19]_i_1_n_0 ;
  wire \data_out[1]_i_10_n_0 ;
  wire \data_out[1]_i_11_n_0 ;
  wire \data_out[1]_i_2_n_0 ;
  wire \data_out[1]_i_3_n_0 ;
  wire \data_out[1]_i_5_n_0 ;
  wire \data_out[1]_i_7_n_0 ;
  wire \data_out[1]_i_8_n_0 ;
  wire \data_out[20]_i_1_n_0 ;
  wire \data_out[21]_i_1_n_0 ;
  wire \data_out[22]_i_1_n_0 ;
  wire \data_out[23]_i_1_n_0 ;
  wire \data_out[24]_i_1_n_0 ;
  wire \data_out[25]_i_1_n_0 ;
  wire \data_out[26]_i_1_n_0 ;
  wire \data_out[27]_i_1_n_0 ;
  wire \data_out[28]_i_1_n_0 ;
  wire \data_out[29]_i_1_n_0 ;
  wire \data_out[2]_i_2_n_0 ;
  wire \data_out[2]_i_4_n_0 ;
  wire \data_out[2]_i_5_n_0 ;
  wire \data_out[2]_i_6_n_0 ;
  wire \data_out[30]_i_1_n_0 ;
  wire \data_out[31]_i_1_n_0 ;
  wire \data_out[31]_i_2_n_0 ;
  wire \data_out[31]_i_3_n_0 ;
  wire \data_out[31]_i_5_n_0 ;
  wire \data_out[31]_i_6_n_0 ;
  wire \data_out[31]_i_7_n_0 ;
  wire \data_out[31]_i_8_n_0 ;
  wire \data_out[3]_i_2_n_0 ;
  wire \data_out[3]_i_4_n_0 ;
  wire \data_out[3]_i_5_n_0 ;
  wire \data_out[3]_i_6_n_0 ;
  wire \data_out[3]_i_8_n_0 ;
  wire \data_out[4]_i_2_n_0 ;
  wire \data_out[4]_i_4_n_0 ;
  wire \data_out[4]_i_5_n_0 ;
  wire \data_out[4]_i_6_n_0 ;
  wire \data_out[5]_i_2_n_0 ;
  wire \data_out[5]_i_4_n_0 ;
  wire \data_out[5]_i_5_n_0 ;
  wire \data_out[5]_i_6_n_0 ;
  wire \data_out[6]_i_2_n_0 ;
  wire \data_out[6]_i_4_n_0 ;
  wire \data_out[6]_i_5_n_0 ;
  wire \data_out[6]_i_6_n_0 ;
  wire \data_out[7]_i_2_n_0 ;
  wire \data_out[7]_i_4_n_0 ;
  wire \data_out[7]_i_5_n_0 ;
  wire \data_out[7]_i_6_n_0 ;
  wire \data_out[7]_i_8_n_0 ;
  wire \data_out[7]_i_9_n_0 ;
  wire \data_out[8]_i_2_n_0 ;
  wire \data_out[8]_i_4_n_0 ;
  wire \data_out[8]_i_5_n_0 ;
  wire \data_out[8]_i_6_n_0 ;
  wire \data_out[8]_i_7_0 ;
  wire \data_out[8]_i_8_n_0 ;
  wire \data_out[9]_i_2_n_0 ;
  wire [1:0]\data_out[9]_i_4_0 ;
  wire \data_out[9]_i_4_n_0 ;
  wire \data_out[9]_i_5_n_0 ;
  wire \data_out[9]_i_6_n_0 ;
  wire \data_out_reg[0]_i_4_n_0 ;
  wire \data_out_reg[10]_i_3_n_0 ;
  wire \data_out_reg[11]_i_3_n_0 ;
  wire \data_out_reg[12]_i_3_n_0 ;
  wire \data_out_reg[13]_i_3_n_0 ;
  wire \data_out_reg[14]_i_3_n_0 ;
  wire \data_out_reg[15]_i_3_n_0 ;
  wire \data_out_reg[1]_i_4_n_0 ;
  wire \data_out_reg[2]_i_3_n_0 ;
  wire \data_out_reg[3]_i_3_n_0 ;
  wire \data_out_reg[4]_i_3_n_0 ;
  wire \data_out_reg[5]_i_3_n_0 ;
  wire \data_out_reg[6]_i_3_n_0 ;
  wire \data_out_reg[7]_i_3_n_0 ;
  wire \data_out_reg[8]_i_3_n_0 ;
  wire \data_out_reg[9]_i_3_n_0 ;
  wire [0:0]\h_cnt_reg[6] ;
  wire \map_r_addr_reg[11] ;
  wire \map_r_addr_reg[11]_0 ;
  wire [2:2]p_0_in;
  wire [24:0]p_0_in__0;
  wire [1:0]p_1_in;
  wire [15:0]p_1_out;
  wire palette_s0_mem_reg_0_127_0_0_i_1_n_0;
  wire palette_s0_mem_reg_0_127_0_0_n_0;
  wire palette_s0_mem_reg_0_127_0_0_n_1;
  wire palette_s0_mem_reg_0_127_10_10_n_0;
  wire palette_s0_mem_reg_0_127_10_10_n_1;
  wire palette_s0_mem_reg_0_127_11_11_n_0;
  wire palette_s0_mem_reg_0_127_11_11_n_1;
  wire palette_s0_mem_reg_0_127_12_12_n_0;
  wire palette_s0_mem_reg_0_127_12_12_n_1;
  wire palette_s0_mem_reg_0_127_13_13_n_0;
  wire palette_s0_mem_reg_0_127_13_13_n_1;
  wire palette_s0_mem_reg_0_127_14_14_n_0;
  wire palette_s0_mem_reg_0_127_14_14_n_1;
  wire palette_s0_mem_reg_0_127_15_15_n_0;
  wire palette_s0_mem_reg_0_127_15_15_n_1;
  wire palette_s0_mem_reg_0_127_1_1_n_0;
  wire palette_s0_mem_reg_0_127_1_1_n_1;
  wire palette_s0_mem_reg_0_127_2_2_n_0;
  wire palette_s0_mem_reg_0_127_2_2_n_1;
  wire palette_s0_mem_reg_0_127_3_3_n_0;
  wire palette_s0_mem_reg_0_127_3_3_n_1;
  wire palette_s0_mem_reg_0_127_4_4_n_0;
  wire palette_s0_mem_reg_0_127_4_4_n_1;
  wire palette_s0_mem_reg_0_127_5_5_n_0;
  wire palette_s0_mem_reg_0_127_5_5_n_1;
  wire palette_s0_mem_reg_0_127_6_6_n_0;
  wire palette_s0_mem_reg_0_127_6_6_n_1;
  wire palette_s0_mem_reg_0_127_7_7_n_0;
  wire palette_s0_mem_reg_0_127_7_7_n_1;
  wire palette_s0_mem_reg_0_127_8_8_i_1_n_0;
  wire palette_s0_mem_reg_0_127_8_8_n_0;
  wire palette_s0_mem_reg_0_127_8_8_n_1;
  wire palette_s0_mem_reg_0_127_9_9_n_0;
  wire palette_s0_mem_reg_0_127_9_9_n_1;
  wire palette_s0_mem_reg_128_255_0_0_i_1_n_0;
  wire palette_s0_mem_reg_128_255_0_0_n_0;
  wire palette_s0_mem_reg_128_255_0_0_n_1;
  wire palette_s0_mem_reg_128_255_10_10_n_0;
  wire palette_s0_mem_reg_128_255_10_10_n_1;
  wire palette_s0_mem_reg_128_255_11_11_n_0;
  wire palette_s0_mem_reg_128_255_11_11_n_1;
  wire palette_s0_mem_reg_128_255_12_12_n_0;
  wire palette_s0_mem_reg_128_255_12_12_n_1;
  wire palette_s0_mem_reg_128_255_13_13_n_0;
  wire palette_s0_mem_reg_128_255_13_13_n_1;
  wire palette_s0_mem_reg_128_255_14_14_n_0;
  wire palette_s0_mem_reg_128_255_14_14_n_1;
  wire palette_s0_mem_reg_128_255_15_15_n_0;
  wire palette_s0_mem_reg_128_255_15_15_n_1;
  wire palette_s0_mem_reg_128_255_1_1_n_0;
  wire palette_s0_mem_reg_128_255_1_1_n_1;
  wire palette_s0_mem_reg_128_255_2_2_n_0;
  wire palette_s0_mem_reg_128_255_2_2_n_1;
  wire palette_s0_mem_reg_128_255_3_3_n_0;
  wire palette_s0_mem_reg_128_255_3_3_n_1;
  wire palette_s0_mem_reg_128_255_4_4_n_0;
  wire palette_s0_mem_reg_128_255_4_4_n_1;
  wire palette_s0_mem_reg_128_255_5_5_n_0;
  wire palette_s0_mem_reg_128_255_5_5_n_1;
  wire palette_s0_mem_reg_128_255_6_6_n_0;
  wire palette_s0_mem_reg_128_255_6_6_n_1;
  wire palette_s0_mem_reg_128_255_7_7_n_0;
  wire palette_s0_mem_reg_128_255_7_7_n_1;
  wire palette_s0_mem_reg_128_255_8_8_i_1_n_0;
  wire palette_s0_mem_reg_128_255_8_8_n_0;
  wire palette_s0_mem_reg_128_255_8_8_n_1;
  wire palette_s0_mem_reg_128_255_9_9_n_0;
  wire palette_s0_mem_reg_128_255_9_9_n_1;
  wire palette_s0_mem_reg_256_383_0_0_i_1_n_0;
  wire palette_s0_mem_reg_256_383_0_0_n_0;
  wire palette_s0_mem_reg_256_383_0_0_n_1;
  wire palette_s0_mem_reg_256_383_10_10_n_0;
  wire palette_s0_mem_reg_256_383_10_10_n_1;
  wire palette_s0_mem_reg_256_383_11_11_n_0;
  wire palette_s0_mem_reg_256_383_11_11_n_1;
  wire palette_s0_mem_reg_256_383_12_12_n_0;
  wire palette_s0_mem_reg_256_383_12_12_n_1;
  wire palette_s0_mem_reg_256_383_13_13_n_0;
  wire palette_s0_mem_reg_256_383_13_13_n_1;
  wire palette_s0_mem_reg_256_383_14_14_n_0;
  wire palette_s0_mem_reg_256_383_14_14_n_1;
  wire palette_s0_mem_reg_256_383_15_15_n_0;
  wire palette_s0_mem_reg_256_383_15_15_n_1;
  wire palette_s0_mem_reg_256_383_1_1_n_0;
  wire palette_s0_mem_reg_256_383_1_1_n_1;
  wire palette_s0_mem_reg_256_383_2_2_n_0;
  wire palette_s0_mem_reg_256_383_2_2_n_1;
  wire palette_s0_mem_reg_256_383_3_3_n_0;
  wire palette_s0_mem_reg_256_383_3_3_n_1;
  wire palette_s0_mem_reg_256_383_4_4_n_0;
  wire palette_s0_mem_reg_256_383_4_4_n_1;
  wire palette_s0_mem_reg_256_383_5_5_n_0;
  wire palette_s0_mem_reg_256_383_5_5_n_1;
  wire palette_s0_mem_reg_256_383_6_6_n_0;
  wire palette_s0_mem_reg_256_383_6_6_n_1;
  wire palette_s0_mem_reg_256_383_7_7_n_0;
  wire palette_s0_mem_reg_256_383_7_7_n_1;
  wire palette_s0_mem_reg_256_383_8_8_i_1_n_0;
  wire palette_s0_mem_reg_256_383_8_8_n_0;
  wire palette_s0_mem_reg_256_383_8_8_n_1;
  wire palette_s0_mem_reg_256_383_9_9_n_0;
  wire palette_s0_mem_reg_256_383_9_9_n_1;
  wire palette_s0_mem_reg_384_511_0_0_i_1_n_0;
  wire palette_s0_mem_reg_384_511_0_0_n_0;
  wire palette_s0_mem_reg_384_511_0_0_n_1;
  wire palette_s0_mem_reg_384_511_10_10_n_0;
  wire palette_s0_mem_reg_384_511_10_10_n_1;
  wire palette_s0_mem_reg_384_511_11_11_n_0;
  wire palette_s0_mem_reg_384_511_11_11_n_1;
  wire palette_s0_mem_reg_384_511_12_12_n_0;
  wire palette_s0_mem_reg_384_511_12_12_n_1;
  wire palette_s0_mem_reg_384_511_13_13_n_0;
  wire palette_s0_mem_reg_384_511_13_13_n_1;
  wire palette_s0_mem_reg_384_511_14_14_n_0;
  wire palette_s0_mem_reg_384_511_14_14_n_1;
  wire palette_s0_mem_reg_384_511_15_15_n_0;
  wire palette_s0_mem_reg_384_511_15_15_n_1;
  wire palette_s0_mem_reg_384_511_1_1_n_0;
  wire palette_s0_mem_reg_384_511_1_1_n_1;
  wire palette_s0_mem_reg_384_511_2_2_n_0;
  wire palette_s0_mem_reg_384_511_2_2_n_1;
  wire palette_s0_mem_reg_384_511_3_3_n_0;
  wire palette_s0_mem_reg_384_511_3_3_n_1;
  wire palette_s0_mem_reg_384_511_4_4_n_0;
  wire palette_s0_mem_reg_384_511_4_4_n_1;
  wire palette_s0_mem_reg_384_511_5_5_n_0;
  wire palette_s0_mem_reg_384_511_5_5_n_1;
  wire palette_s0_mem_reg_384_511_6_6_n_0;
  wire palette_s0_mem_reg_384_511_6_6_n_1;
  wire palette_s0_mem_reg_384_511_7_7_n_0;
  wire palette_s0_mem_reg_384_511_7_7_n_1;
  wire palette_s0_mem_reg_384_511_8_8_i_1_n_0;
  wire palette_s0_mem_reg_384_511_8_8_n_0;
  wire palette_s0_mem_reg_384_511_8_8_n_1;
  wire palette_s0_mem_reg_384_511_9_9_n_0;
  wire palette_s0_mem_reg_384_511_9_9_n_1;
  wire palette_s0_mem_reg_512_639_0_0_i_1_n_0;
  wire palette_s0_mem_reg_512_639_0_0_n_0;
  wire palette_s0_mem_reg_512_639_0_0_n_1;
  wire palette_s0_mem_reg_512_639_10_10_n_0;
  wire palette_s0_mem_reg_512_639_10_10_n_1;
  wire palette_s0_mem_reg_512_639_11_11_n_0;
  wire palette_s0_mem_reg_512_639_11_11_n_1;
  wire palette_s0_mem_reg_512_639_12_12_n_0;
  wire palette_s0_mem_reg_512_639_12_12_n_1;
  wire palette_s0_mem_reg_512_639_13_13_n_0;
  wire palette_s0_mem_reg_512_639_13_13_n_1;
  wire palette_s0_mem_reg_512_639_14_14_n_0;
  wire palette_s0_mem_reg_512_639_14_14_n_1;
  wire palette_s0_mem_reg_512_639_15_15_n_0;
  wire palette_s0_mem_reg_512_639_15_15_n_1;
  wire palette_s0_mem_reg_512_639_1_1_n_0;
  wire palette_s0_mem_reg_512_639_1_1_n_1;
  wire palette_s0_mem_reg_512_639_2_2_n_0;
  wire palette_s0_mem_reg_512_639_2_2_n_1;
  wire palette_s0_mem_reg_512_639_3_3_n_0;
  wire palette_s0_mem_reg_512_639_3_3_n_1;
  wire palette_s0_mem_reg_512_639_4_4_n_0;
  wire palette_s0_mem_reg_512_639_4_4_n_1;
  wire palette_s0_mem_reg_512_639_5_5_n_0;
  wire palette_s0_mem_reg_512_639_5_5_n_1;
  wire palette_s0_mem_reg_512_639_6_6_n_0;
  wire palette_s0_mem_reg_512_639_6_6_n_1;
  wire palette_s0_mem_reg_512_639_7_7_n_0;
  wire palette_s0_mem_reg_512_639_7_7_n_1;
  wire palette_s0_mem_reg_512_639_8_8_i_1_n_0;
  wire palette_s0_mem_reg_512_639_8_8_n_0;
  wire palette_s0_mem_reg_512_639_8_8_n_1;
  wire palette_s0_mem_reg_512_639_9_9_n_0;
  wire palette_s0_mem_reg_512_639_9_9_n_1;
  wire palette_s0_mem_reg_640_767_0_0_i_1_n_0;
  wire palette_s0_mem_reg_640_767_0_0_n_0;
  wire palette_s0_mem_reg_640_767_0_0_n_1;
  wire palette_s0_mem_reg_640_767_10_10_n_0;
  wire palette_s0_mem_reg_640_767_10_10_n_1;
  wire palette_s0_mem_reg_640_767_11_11_n_0;
  wire palette_s0_mem_reg_640_767_11_11_n_1;
  wire palette_s0_mem_reg_640_767_12_12_n_0;
  wire palette_s0_mem_reg_640_767_12_12_n_1;
  wire palette_s0_mem_reg_640_767_13_13_n_0;
  wire palette_s0_mem_reg_640_767_13_13_n_1;
  wire palette_s0_mem_reg_640_767_14_14_n_0;
  wire palette_s0_mem_reg_640_767_14_14_n_1;
  wire palette_s0_mem_reg_640_767_15_15_n_0;
  wire palette_s0_mem_reg_640_767_15_15_n_1;
  wire palette_s0_mem_reg_640_767_1_1_n_0;
  wire palette_s0_mem_reg_640_767_1_1_n_1;
  wire palette_s0_mem_reg_640_767_2_2_n_0;
  wire palette_s0_mem_reg_640_767_2_2_n_1;
  wire palette_s0_mem_reg_640_767_3_3_n_0;
  wire palette_s0_mem_reg_640_767_3_3_n_1;
  wire palette_s0_mem_reg_640_767_4_4_n_0;
  wire palette_s0_mem_reg_640_767_4_4_n_1;
  wire palette_s0_mem_reg_640_767_5_5_n_0;
  wire palette_s0_mem_reg_640_767_5_5_n_1;
  wire palette_s0_mem_reg_640_767_6_6_n_0;
  wire palette_s0_mem_reg_640_767_6_6_n_1;
  wire palette_s0_mem_reg_640_767_7_7_n_0;
  wire palette_s0_mem_reg_640_767_7_7_n_1;
  wire palette_s0_mem_reg_640_767_8_8_i_1_n_0;
  wire palette_s0_mem_reg_640_767_8_8_n_0;
  wire palette_s0_mem_reg_640_767_8_8_n_1;
  wire palette_s0_mem_reg_640_767_9_9_n_0;
  wire palette_s0_mem_reg_640_767_9_9_n_1;
  wire palette_s0_mem_reg_768_895_0_0_i_1_n_0;
  wire palette_s0_mem_reg_768_895_0_0_n_0;
  wire palette_s0_mem_reg_768_895_0_0_n_1;
  wire palette_s0_mem_reg_768_895_10_10_n_0;
  wire palette_s0_mem_reg_768_895_10_10_n_1;
  wire palette_s0_mem_reg_768_895_11_11_n_0;
  wire palette_s0_mem_reg_768_895_11_11_n_1;
  wire palette_s0_mem_reg_768_895_12_12_n_0;
  wire palette_s0_mem_reg_768_895_12_12_n_1;
  wire palette_s0_mem_reg_768_895_13_13_n_0;
  wire palette_s0_mem_reg_768_895_13_13_n_1;
  wire palette_s0_mem_reg_768_895_14_14_n_0;
  wire palette_s0_mem_reg_768_895_14_14_n_1;
  wire palette_s0_mem_reg_768_895_15_15_n_0;
  wire palette_s0_mem_reg_768_895_15_15_n_1;
  wire palette_s0_mem_reg_768_895_1_1_n_0;
  wire palette_s0_mem_reg_768_895_1_1_n_1;
  wire palette_s0_mem_reg_768_895_2_2_n_0;
  wire palette_s0_mem_reg_768_895_2_2_n_1;
  wire palette_s0_mem_reg_768_895_3_3_n_0;
  wire palette_s0_mem_reg_768_895_3_3_n_1;
  wire palette_s0_mem_reg_768_895_4_4_n_0;
  wire palette_s0_mem_reg_768_895_4_4_n_1;
  wire palette_s0_mem_reg_768_895_5_5_n_0;
  wire palette_s0_mem_reg_768_895_5_5_n_1;
  wire palette_s0_mem_reg_768_895_6_6_n_0;
  wire palette_s0_mem_reg_768_895_6_6_n_1;
  wire palette_s0_mem_reg_768_895_7_7_n_0;
  wire palette_s0_mem_reg_768_895_7_7_n_1;
  wire palette_s0_mem_reg_768_895_8_8_i_1_n_0;
  wire palette_s0_mem_reg_768_895_8_8_n_0;
  wire palette_s0_mem_reg_768_895_8_8_n_1;
  wire palette_s0_mem_reg_768_895_9_9_n_0;
  wire palette_s0_mem_reg_768_895_9_9_n_1;
  wire palette_s0_mem_reg_896_1023_0_0_i_1_n_0;
  wire palette_s0_mem_reg_896_1023_0_0_n_0;
  wire palette_s0_mem_reg_896_1023_0_0_n_1;
  wire palette_s0_mem_reg_896_1023_10_10_n_0;
  wire palette_s0_mem_reg_896_1023_10_10_n_1;
  wire palette_s0_mem_reg_896_1023_11_11_n_0;
  wire palette_s0_mem_reg_896_1023_11_11_n_1;
  wire palette_s0_mem_reg_896_1023_12_12_n_0;
  wire palette_s0_mem_reg_896_1023_12_12_n_1;
  wire palette_s0_mem_reg_896_1023_13_13_n_0;
  wire palette_s0_mem_reg_896_1023_13_13_n_1;
  wire palette_s0_mem_reg_896_1023_14_14_n_0;
  wire palette_s0_mem_reg_896_1023_14_14_n_1;
  wire palette_s0_mem_reg_896_1023_15_15_n_0;
  wire palette_s0_mem_reg_896_1023_15_15_n_1;
  wire palette_s0_mem_reg_896_1023_1_1_n_0;
  wire palette_s0_mem_reg_896_1023_1_1_n_1;
  wire palette_s0_mem_reg_896_1023_2_2_n_0;
  wire palette_s0_mem_reg_896_1023_2_2_n_1;
  wire palette_s0_mem_reg_896_1023_3_3_n_0;
  wire palette_s0_mem_reg_896_1023_3_3_n_1;
  wire palette_s0_mem_reg_896_1023_4_4_n_0;
  wire palette_s0_mem_reg_896_1023_4_4_n_1;
  wire palette_s0_mem_reg_896_1023_5_5_n_0;
  wire palette_s0_mem_reg_896_1023_5_5_n_1;
  wire palette_s0_mem_reg_896_1023_6_6_n_0;
  wire palette_s0_mem_reg_896_1023_6_6_n_1;
  wire palette_s0_mem_reg_896_1023_7_7_n_0;
  wire palette_s0_mem_reg_896_1023_7_7_n_1;
  wire palette_s0_mem_reg_896_1023_8_8_i_1_n_0;
  wire palette_s0_mem_reg_896_1023_8_8_n_0;
  wire palette_s0_mem_reg_896_1023_8_8_n_1;
  wire palette_s0_mem_reg_896_1023_9_9_n_0;
  wire palette_s0_mem_reg_896_1023_9_9_n_1;
  wire palette_t0_mem_reg_0_127_0_0_i_1_n_0;
  wire palette_t0_mem_reg_0_127_0_0_n_0;
  wire palette_t0_mem_reg_0_127_0_0_n_1;
  wire palette_t0_mem_reg_0_127_10_10_n_0;
  wire palette_t0_mem_reg_0_127_10_10_n_1;
  wire palette_t0_mem_reg_0_127_11_11_n_0;
  wire palette_t0_mem_reg_0_127_11_11_n_1;
  wire palette_t0_mem_reg_0_127_12_12_n_0;
  wire palette_t0_mem_reg_0_127_12_12_n_1;
  wire palette_t0_mem_reg_0_127_13_13_n_0;
  wire palette_t0_mem_reg_0_127_13_13_n_1;
  wire palette_t0_mem_reg_0_127_14_14_n_0;
  wire palette_t0_mem_reg_0_127_14_14_n_1;
  wire palette_t0_mem_reg_0_127_15_15_n_0;
  wire palette_t0_mem_reg_0_127_15_15_n_1;
  wire palette_t0_mem_reg_0_127_1_1_n_0;
  wire palette_t0_mem_reg_0_127_1_1_n_1;
  wire palette_t0_mem_reg_0_127_2_2_n_0;
  wire palette_t0_mem_reg_0_127_2_2_n_1;
  wire palette_t0_mem_reg_0_127_3_3_n_0;
  wire palette_t0_mem_reg_0_127_3_3_n_1;
  wire palette_t0_mem_reg_0_127_4_4_n_0;
  wire palette_t0_mem_reg_0_127_4_4_n_1;
  wire palette_t0_mem_reg_0_127_5_5_n_0;
  wire palette_t0_mem_reg_0_127_5_5_n_1;
  wire palette_t0_mem_reg_0_127_6_6_n_0;
  wire palette_t0_mem_reg_0_127_6_6_n_1;
  wire palette_t0_mem_reg_0_127_7_7_n_0;
  wire palette_t0_mem_reg_0_127_7_7_n_1;
  wire palette_t0_mem_reg_0_127_8_8_i_1_n_0;
  wire palette_t0_mem_reg_0_127_8_8_n_0;
  wire palette_t0_mem_reg_0_127_8_8_n_1;
  wire palette_t0_mem_reg_0_127_9_9_n_0;
  wire palette_t0_mem_reg_0_127_9_9_n_1;
  wire palette_t0_mem_reg_128_255_0_0_i_1_n_0;
  wire palette_t0_mem_reg_128_255_0_0_n_0;
  wire palette_t0_mem_reg_128_255_0_0_n_1;
  wire palette_t0_mem_reg_128_255_10_10_n_0;
  wire palette_t0_mem_reg_128_255_10_10_n_1;
  wire palette_t0_mem_reg_128_255_11_11_n_0;
  wire palette_t0_mem_reg_128_255_11_11_n_1;
  wire palette_t0_mem_reg_128_255_12_12_n_0;
  wire palette_t0_mem_reg_128_255_12_12_n_1;
  wire palette_t0_mem_reg_128_255_13_13_n_0;
  wire palette_t0_mem_reg_128_255_13_13_n_1;
  wire palette_t0_mem_reg_128_255_14_14_n_0;
  wire palette_t0_mem_reg_128_255_14_14_n_1;
  wire palette_t0_mem_reg_128_255_15_15_n_0;
  wire palette_t0_mem_reg_128_255_15_15_n_1;
  wire palette_t0_mem_reg_128_255_1_1_n_0;
  wire palette_t0_mem_reg_128_255_1_1_n_1;
  wire palette_t0_mem_reg_128_255_2_2_n_0;
  wire palette_t0_mem_reg_128_255_2_2_n_1;
  wire palette_t0_mem_reg_128_255_3_3_n_0;
  wire palette_t0_mem_reg_128_255_3_3_n_1;
  wire palette_t0_mem_reg_128_255_4_4_n_0;
  wire palette_t0_mem_reg_128_255_4_4_n_1;
  wire palette_t0_mem_reg_128_255_5_5_n_0;
  wire palette_t0_mem_reg_128_255_5_5_n_1;
  wire palette_t0_mem_reg_128_255_6_6_n_0;
  wire palette_t0_mem_reg_128_255_6_6_n_1;
  wire palette_t0_mem_reg_128_255_7_7_n_0;
  wire palette_t0_mem_reg_128_255_7_7_n_1;
  wire palette_t0_mem_reg_128_255_8_8_i_1_n_0;
  wire palette_t0_mem_reg_128_255_8_8_n_0;
  wire palette_t0_mem_reg_128_255_8_8_n_1;
  wire palette_t0_mem_reg_128_255_9_9_n_0;
  wire palette_t0_mem_reg_128_255_9_9_n_1;
  wire palette_t1_mem_reg_0_127_0_0_i_1_n_0;
  wire palette_t1_mem_reg_0_127_0_0_n_0;
  wire palette_t1_mem_reg_0_127_0_0_n_1;
  wire palette_t1_mem_reg_0_127_10_10_n_0;
  wire palette_t1_mem_reg_0_127_10_10_n_1;
  wire palette_t1_mem_reg_0_127_11_11_n_0;
  wire palette_t1_mem_reg_0_127_11_11_n_1;
  wire palette_t1_mem_reg_0_127_12_12_n_0;
  wire palette_t1_mem_reg_0_127_12_12_n_1;
  wire palette_t1_mem_reg_0_127_13_13_n_0;
  wire palette_t1_mem_reg_0_127_13_13_n_1;
  wire palette_t1_mem_reg_0_127_14_14_n_0;
  wire palette_t1_mem_reg_0_127_14_14_n_1;
  wire palette_t1_mem_reg_0_127_15_15_n_0;
  wire palette_t1_mem_reg_0_127_15_15_n_1;
  wire palette_t1_mem_reg_0_127_1_1_n_0;
  wire palette_t1_mem_reg_0_127_1_1_n_1;
  wire palette_t1_mem_reg_0_127_2_2_n_0;
  wire palette_t1_mem_reg_0_127_2_2_n_1;
  wire palette_t1_mem_reg_0_127_3_3_n_0;
  wire palette_t1_mem_reg_0_127_3_3_n_1;
  wire palette_t1_mem_reg_0_127_4_4_n_0;
  wire palette_t1_mem_reg_0_127_4_4_n_1;
  wire palette_t1_mem_reg_0_127_5_5_n_0;
  wire palette_t1_mem_reg_0_127_5_5_n_1;
  wire palette_t1_mem_reg_0_127_6_6_n_0;
  wire palette_t1_mem_reg_0_127_6_6_n_1;
  wire palette_t1_mem_reg_0_127_7_7_n_0;
  wire palette_t1_mem_reg_0_127_7_7_n_1;
  wire palette_t1_mem_reg_0_127_8_8_i_1_n_0;
  wire palette_t1_mem_reg_0_127_8_8_n_0;
  wire palette_t1_mem_reg_0_127_8_8_n_1;
  wire palette_t1_mem_reg_0_127_9_9_n_0;
  wire palette_t1_mem_reg_0_127_9_9_n_1;
  wire palette_t1_mem_reg_128_255_0_0_i_1_n_0;
  wire palette_t1_mem_reg_128_255_0_0_n_0;
  wire palette_t1_mem_reg_128_255_0_0_n_1;
  wire palette_t1_mem_reg_128_255_10_10_n_0;
  wire palette_t1_mem_reg_128_255_10_10_n_1;
  wire palette_t1_mem_reg_128_255_11_11_n_0;
  wire palette_t1_mem_reg_128_255_11_11_n_1;
  wire palette_t1_mem_reg_128_255_12_12_n_0;
  wire palette_t1_mem_reg_128_255_12_12_n_1;
  wire palette_t1_mem_reg_128_255_13_13_n_0;
  wire palette_t1_mem_reg_128_255_13_13_n_1;
  wire palette_t1_mem_reg_128_255_14_14_n_0;
  wire palette_t1_mem_reg_128_255_14_14_n_1;
  wire palette_t1_mem_reg_128_255_15_15_n_0;
  wire palette_t1_mem_reg_128_255_15_15_n_1;
  wire palette_t1_mem_reg_128_255_1_1_n_0;
  wire palette_t1_mem_reg_128_255_1_1_n_1;
  wire palette_t1_mem_reg_128_255_2_2_n_0;
  wire palette_t1_mem_reg_128_255_2_2_n_1;
  wire palette_t1_mem_reg_128_255_3_3_n_0;
  wire palette_t1_mem_reg_128_255_3_3_n_1;
  wire palette_t1_mem_reg_128_255_4_4_n_0;
  wire palette_t1_mem_reg_128_255_4_4_n_1;
  wire palette_t1_mem_reg_128_255_5_5_n_0;
  wire palette_t1_mem_reg_128_255_5_5_n_1;
  wire palette_t1_mem_reg_128_255_6_6_n_0;
  wire palette_t1_mem_reg_128_255_6_6_n_1;
  wire palette_t1_mem_reg_128_255_7_7_n_0;
  wire palette_t1_mem_reg_128_255_7_7_n_1;
  wire palette_t1_mem_reg_128_255_8_8_i_1_n_0;
  wire palette_t1_mem_reg_128_255_8_8_n_0;
  wire palette_t1_mem_reg_128_255_8_8_n_1;
  wire palette_t1_mem_reg_128_255_9_9_n_0;
  wire palette_t1_mem_reg_128_255_9_9_n_1;
  wire [10:0]r0_map_cpu_addr;
  wire r0_map_cpu_clk;
  wire [31:0]r0_map_cpu_din;
  wire [31:0]r0_map_cpu_dout;
  wire r0_map_cpu_en;
  wire [3:0]r0_map_cpu_wen;
  wire [9:9]s0_pal_offset;
  wire [9:0]s0_palette_addr;
  wire [15:0]s0_palette_data;
  wire [15:0]s0_palette_data0;
  wire \s0_palette_data[0]_i_2_n_0 ;
  wire \s0_palette_data[0]_i_3_n_0 ;
  wire \s0_palette_data[10]_i_2_n_0 ;
  wire \s0_palette_data[10]_i_3_n_0 ;
  wire \s0_palette_data[11]_i_2_n_0 ;
  wire \s0_palette_data[11]_i_3_n_0 ;
  wire \s0_palette_data[12]_i_2_n_0 ;
  wire \s0_palette_data[12]_i_3_n_0 ;
  wire \s0_palette_data[13]_i_2_n_0 ;
  wire \s0_palette_data[13]_i_3_n_0 ;
  wire \s0_palette_data[14]_i_2_n_0 ;
  wire \s0_palette_data[14]_i_3_n_0 ;
  wire \s0_palette_data[15]_i_2_n_0 ;
  wire \s0_palette_data[15]_i_3_n_0 ;
  wire \s0_palette_data[1]_i_2_n_0 ;
  wire \s0_palette_data[1]_i_3_n_0 ;
  wire \s0_palette_data[2]_i_2_n_0 ;
  wire \s0_palette_data[2]_i_3_n_0 ;
  wire \s0_palette_data[3]_i_2_n_0 ;
  wire \s0_palette_data[3]_i_3_n_0 ;
  wire \s0_palette_data[4]_i_2_n_0 ;
  wire \s0_palette_data[4]_i_3_n_0 ;
  wire \s0_palette_data[5]_i_2_n_0 ;
  wire \s0_palette_data[5]_i_3_n_0 ;
  wire \s0_palette_data[6]_i_2_n_0 ;
  wire \s0_palette_data[6]_i_3_n_0 ;
  wire \s0_palette_data[7]_i_2_n_0 ;
  wire \s0_palette_data[7]_i_3_n_0 ;
  wire \s0_palette_data[8]_i_2_n_0 ;
  wire \s0_palette_data[8]_i_3_n_0 ;
  wire \s0_palette_data[9]_i_2_n_0 ;
  wire \s0_palette_data[9]_i_3_n_0 ;
  wire s_axi_aclk;
  wire [1:1]stat_reg;
  wire [7:0]t0_palette_addr;
  wire [15:0]t0_palette_data;
  wire [15:0]t0_palette_data0;
  wire [9:0]t0_x_off_reg;
  wire \t0_x_off_reg[7]_i_1_n_0 ;
  wire \t0_x_off_reg[7]_i_2_n_0 ;
  wire \t0_x_off_reg[7]_i_3_n_0 ;
  wire \t0_x_off_reg[8]_i_1_n_0 ;
  wire \t0_x_off_reg[9]_i_1_n_0 ;
  wire \t0_x_off_reg[9]_i_2_n_0 ;
  wire [7:1]t0_y_off_reg;
  wire \t0_y_off_reg[7]_i_1_n_0 ;
  wire \t0_y_off_reg[8]_i_1_n_0 ;
  wire \t0_y_off_reg[9]_i_1_n_0 ;
  wire [2:0]\t0_y_off_reg_reg[7]_0 ;
  wire [5:0]\t0_y_off_reg_reg[9]_0 ;
  wire [7:0]t1_palette_addr;
  wire [15:0]t1_palette_data;
  wire [15:0]t1_palette_data0;
  wire [9:0]t1_x_off_reg;
  wire \t1_x_off_reg[7]_i_1_n_0 ;
  wire \t1_x_off_reg[8]_i_1_n_0 ;
  wire \t1_x_off_reg[9]_i_1_n_0 ;
  wire \t1_x_off_reg[9]_i_2_n_0 ;
  wire [7:1]t1_y_off_reg;
  wire \t1_y_off_reg[7]_i_1_n_0 ;
  wire \t1_y_off_reg[8]_i_1_n_0 ;
  wire \t1_y_off_reg[9]_i_1_n_0 ;
  wire \t1_y_off_reg[9]_i_2_n_0 ;
  wire [2:0]\t1_y_off_reg_reg[7]_0 ;
  wire [5:0]\t1_y_off_reg_reg[9]_0 ;
  wire [0:0]\v_cnt_reg[1] ;
  wire \v_cnt_reg[4] ;
  wire \v_cnt_reg[8] ;
  wire [6:0]\vga_b[0] ;
  wire \vga_r[3]_INST_0_i_5_n_0 ;

  LUT3 #(
    .INIT(8'hB8)) 
    \ctrl_reg[0]_i_1 
       (.I0(r0_map_cpu_din[0]),
        .I1(\ctrl_reg[2]_i_2_n_0 ),
        .I2(ctrl_reg[0]),
        .O(\ctrl_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ctrl_reg[1]_i_1 
       (.I0(r0_map_cpu_din[1]),
        .I1(\ctrl_reg[2]_i_2_n_0 ),
        .I2(ctrl_reg[1]),
        .O(\ctrl_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \ctrl_reg[2]_i_1 
       (.I0(r0_map_cpu_din[2]),
        .I1(\ctrl_reg[2]_i_2_n_0 ),
        .I2(ctrl_reg[2]),
        .O(\ctrl_reg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \ctrl_reg[2]_i_2 
       (.I0(r0_map_cpu_addr[0]),
        .I1(r0_map_cpu_addr[1]),
        .I2(r0_map_cpu_wen[0]),
        .I3(r0_map_cpu_addr[2]),
        .I4(r0_map_cpu_addr[3]),
        .I5(\t0_x_off_reg[7]_i_2_n_0 ),
        .O(\ctrl_reg[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_reg[0] 
       (.C(r0_map_cpu_clk),
        .CE(1'b1),
        .D(\ctrl_reg[0]_i_1_n_0 ),
        .Q(ctrl_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_reg[1] 
       (.C(r0_map_cpu_clk),
        .CE(1'b1),
        .D(\ctrl_reg[1]_i_1_n_0 ),
        .Q(ctrl_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_reg_reg[2] 
       (.C(r0_map_cpu_clk),
        .CE(1'b1),
        .D(\ctrl_reg[2]_i_1_n_0 ),
        .Q(ctrl_reg[2]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFF54FE54FE54FE54)) 
    \data_out[0]_i_1 
       (.I0(r0_map_cpu_addr[10]),
        .I1(\data_out[0]_i_2_n_0 ),
        .I2(\data_out[0]_i_3_n_0 ),
        .I3(\data_out_reg[0]_i_4_n_0 ),
        .I4(r0_map_cpu_addr[8]),
        .I5(r0_map_cpu_addr[9]),
        .O(p_1_out[0]));
  LUT6 #(
    .INIT(64'h00000000AAAAEEFA)) 
    \data_out[0]_i_2 
       (.I0(\data_out[0]_i_5_n_0 ),
        .I1(data_out0__0[0]),
        .I2(p_1_in[0]),
        .I3(\data_out[31]_i_8_n_0 ),
        .I4(r0_map_cpu_addr[8]),
        .I5(r0_map_cpu_addr[9]),
        .O(\data_out[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h44400040)) 
    \data_out[0]_i_3 
       (.I0(r0_map_cpu_addr[8]),
        .I1(r0_map_cpu_addr[9]),
        .I2(palette_t1_mem_reg_0_127_0_0_n_1),
        .I3(r0_map_cpu_addr[7]),
        .I4(palette_t1_mem_reg_128_255_0_0_n_1),
        .O(\data_out[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \data_out[0]_i_5 
       (.I0(palette_t0_mem_reg_0_127_0_0_n_1),
        .I1(r0_map_cpu_addr[7]),
        .I2(palette_t0_mem_reg_128_255_0_0_n_1),
        .I3(r0_map_cpu_addr[8]),
        .O(\data_out[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFC5F0C50)) 
    \data_out[0]_i_6 
       (.I0(Q[0]),
        .I1(\h_cnt_reg[6] ),
        .I2(r0_map_cpu_addr[1]),
        .I3(r0_map_cpu_addr[0]),
        .I4(data_out0__0[0]),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[0]_i_7 
       (.I0(palette_s0_mem_reg_128_255_0_0_n_1),
        .I1(palette_s0_mem_reg_0_127_0_0_n_1),
        .I2(r0_map_cpu_addr[8]),
        .I3(palette_s0_mem_reg_384_511_0_0_n_1),
        .I4(r0_map_cpu_addr[7]),
        .I5(palette_s0_mem_reg_256_383_0_0_n_1),
        .O(\data_out[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[0]_i_8 
       (.I0(palette_s0_mem_reg_640_767_0_0_n_1),
        .I1(palette_s0_mem_reg_512_639_0_0_n_1),
        .I2(r0_map_cpu_addr[8]),
        .I3(palette_s0_mem_reg_896_1023_0_0_n_1),
        .I4(r0_map_cpu_addr[7]),
        .I5(palette_s0_mem_reg_768_895_0_0_n_1),
        .O(\data_out[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF5555FEEE4444)) 
    \data_out[10]_i_1 
       (.I0(r0_map_cpu_addr[10]),
        .I1(\data_out[10]_i_2_n_0 ),
        .I2(r0_map_cpu_addr[9]),
        .I3(r0_map_cpu_addr[8]),
        .I4(\data_out_reg[10]_i_3_n_0 ),
        .I5(\data_out[10]_i_4_n_0 ),
        .O(p_1_out[10]));
  LUT5 #(
    .INIT(32'h44400040)) 
    \data_out[10]_i_2 
       (.I0(r0_map_cpu_addr[9]),
        .I1(r0_map_cpu_addr[8]),
        .I2(palette_t0_mem_reg_0_127_10_10_n_1),
        .I3(r0_map_cpu_addr[7]),
        .I4(palette_t0_mem_reg_128_255_10_10_n_1),
        .O(\data_out[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hABABABABABAAAAAA)) 
    \data_out[10]_i_4 
       (.I0(\data_out[10]_i_7_n_0 ),
        .I1(r0_map_cpu_addr[8]),
        .I2(r0_map_cpu_addr[9]),
        .I3(data_out0__0[10]),
        .I4(\data_out[31]_i_6_n_0 ),
        .I5(\data_out[31]_i_5_n_0 ),
        .O(\data_out[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[10]_i_5 
       (.I0(palette_s0_mem_reg_128_255_10_10_n_1),
        .I1(palette_s0_mem_reg_0_127_10_10_n_1),
        .I2(r0_map_cpu_addr[8]),
        .I3(palette_s0_mem_reg_384_511_10_10_n_1),
        .I4(r0_map_cpu_addr[7]),
        .I5(palette_s0_mem_reg_256_383_10_10_n_1),
        .O(\data_out[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[10]_i_6 
       (.I0(palette_s0_mem_reg_640_767_10_10_n_1),
        .I1(palette_s0_mem_reg_512_639_10_10_n_1),
        .I2(r0_map_cpu_addr[8]),
        .I3(palette_s0_mem_reg_896_1023_10_10_n_1),
        .I4(r0_map_cpu_addr[7]),
        .I5(palette_s0_mem_reg_768_895_10_10_n_1),
        .O(\data_out[10]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h44400040)) 
    \data_out[10]_i_7 
       (.I0(r0_map_cpu_addr[8]),
        .I1(r0_map_cpu_addr[9]),
        .I2(palette_t1_mem_reg_0_127_10_10_n_1),
        .I3(r0_map_cpu_addr[7]),
        .I4(palette_t1_mem_reg_128_255_10_10_n_1),
        .O(\data_out[10]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF5555FEEE4444)) 
    \data_out[11]_i_1 
       (.I0(r0_map_cpu_addr[10]),
        .I1(\data_out[11]_i_2_n_0 ),
        .I2(r0_map_cpu_addr[9]),
        .I3(r0_map_cpu_addr[8]),
        .I4(\data_out_reg[11]_i_3_n_0 ),
        .I5(\data_out[11]_i_4_n_0 ),
        .O(p_1_out[11]));
  LUT5 #(
    .INIT(32'h44400040)) 
    \data_out[11]_i_2 
       (.I0(r0_map_cpu_addr[9]),
        .I1(r0_map_cpu_addr[8]),
        .I2(palette_t0_mem_reg_0_127_11_11_n_1),
        .I3(r0_map_cpu_addr[7]),
        .I4(palette_t0_mem_reg_128_255_11_11_n_1),
        .O(\data_out[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hABABABABABAAAAAA)) 
    \data_out[11]_i_4 
       (.I0(\data_out[11]_i_7_n_0 ),
        .I1(r0_map_cpu_addr[8]),
        .I2(r0_map_cpu_addr[9]),
        .I3(data_out0__0[11]),
        .I4(\data_out[31]_i_6_n_0 ),
        .I5(\data_out[31]_i_5_n_0 ),
        .O(\data_out[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[11]_i_5 
       (.I0(palette_s0_mem_reg_128_255_11_11_n_1),
        .I1(palette_s0_mem_reg_0_127_11_11_n_1),
        .I2(r0_map_cpu_addr[8]),
        .I3(palette_s0_mem_reg_384_511_11_11_n_1),
        .I4(r0_map_cpu_addr[7]),
        .I5(palette_s0_mem_reg_256_383_11_11_n_1),
        .O(\data_out[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[11]_i_6 
       (.I0(palette_s0_mem_reg_640_767_11_11_n_1),
        .I1(palette_s0_mem_reg_512_639_11_11_n_1),
        .I2(r0_map_cpu_addr[8]),
        .I3(palette_s0_mem_reg_896_1023_11_11_n_1),
        .I4(r0_map_cpu_addr[7]),
        .I5(palette_s0_mem_reg_768_895_11_11_n_1),
        .O(\data_out[11]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h44400040)) 
    \data_out[11]_i_7 
       (.I0(r0_map_cpu_addr[8]),
        .I1(r0_map_cpu_addr[9]),
        .I2(palette_t1_mem_reg_0_127_11_11_n_1),
        .I3(r0_map_cpu_addr[7]),
        .I4(palette_t1_mem_reg_128_255_11_11_n_1),
        .O(\data_out[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF5555FEEE4444)) 
    \data_out[12]_i_1 
       (.I0(r0_map_cpu_addr[10]),
        .I1(\data_out[12]_i_2_n_0 ),
        .I2(r0_map_cpu_addr[9]),
        .I3(r0_map_cpu_addr[8]),
        .I4(\data_out_reg[12]_i_3_n_0 ),
        .I5(\data_out[12]_i_4_n_0 ),
        .O(p_1_out[12]));
  LUT5 #(
    .INIT(32'h44400040)) 
    \data_out[12]_i_2 
       (.I0(r0_map_cpu_addr[9]),
        .I1(r0_map_cpu_addr[8]),
        .I2(palette_t0_mem_reg_0_127_12_12_n_1),
        .I3(r0_map_cpu_addr[7]),
        .I4(palette_t0_mem_reg_128_255_12_12_n_1),
        .O(\data_out[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hABABABABABAAAAAA)) 
    \data_out[12]_i_4 
       (.I0(\data_out[12]_i_7_n_0 ),
        .I1(r0_map_cpu_addr[8]),
        .I2(r0_map_cpu_addr[9]),
        .I3(data_out0__0[12]),
        .I4(\data_out[31]_i_6_n_0 ),
        .I5(\data_out[31]_i_5_n_0 ),
        .O(\data_out[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[12]_i_5 
       (.I0(palette_s0_mem_reg_128_255_12_12_n_1),
        .I1(palette_s0_mem_reg_0_127_12_12_n_1),
        .I2(r0_map_cpu_addr[8]),
        .I3(palette_s0_mem_reg_384_511_12_12_n_1),
        .I4(r0_map_cpu_addr[7]),
        .I5(palette_s0_mem_reg_256_383_12_12_n_1),
        .O(\data_out[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[12]_i_6 
       (.I0(palette_s0_mem_reg_640_767_12_12_n_1),
        .I1(palette_s0_mem_reg_512_639_12_12_n_1),
        .I2(r0_map_cpu_addr[8]),
        .I3(palette_s0_mem_reg_896_1023_12_12_n_1),
        .I4(r0_map_cpu_addr[7]),
        .I5(palette_s0_mem_reg_768_895_12_12_n_1),
        .O(\data_out[12]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h44400040)) 
    \data_out[12]_i_7 
       (.I0(r0_map_cpu_addr[8]),
        .I1(r0_map_cpu_addr[9]),
        .I2(palette_t1_mem_reg_0_127_12_12_n_1),
        .I3(r0_map_cpu_addr[7]),
        .I4(palette_t1_mem_reg_128_255_12_12_n_1),
        .O(\data_out[12]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF5555FEEE4444)) 
    \data_out[13]_i_1 
       (.I0(r0_map_cpu_addr[10]),
        .I1(\data_out[13]_i_2_n_0 ),
        .I2(r0_map_cpu_addr[9]),
        .I3(r0_map_cpu_addr[8]),
        .I4(\data_out_reg[13]_i_3_n_0 ),
        .I5(\data_out[13]_i_4_n_0 ),
        .O(p_1_out[13]));
  LUT5 #(
    .INIT(32'h44400040)) 
    \data_out[13]_i_2 
       (.I0(r0_map_cpu_addr[9]),
        .I1(r0_map_cpu_addr[8]),
        .I2(palette_t0_mem_reg_0_127_13_13_n_1),
        .I3(r0_map_cpu_addr[7]),
        .I4(palette_t0_mem_reg_128_255_13_13_n_1),
        .O(\data_out[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hABABABABABAAAAAA)) 
    \data_out[13]_i_4 
       (.I0(\data_out[13]_i_7_n_0 ),
        .I1(r0_map_cpu_addr[8]),
        .I2(r0_map_cpu_addr[9]),
        .I3(data_out0__0[13]),
        .I4(\data_out[31]_i_6_n_0 ),
        .I5(\data_out[31]_i_5_n_0 ),
        .O(\data_out[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[13]_i_5 
       (.I0(palette_s0_mem_reg_128_255_13_13_n_1),
        .I1(palette_s0_mem_reg_0_127_13_13_n_1),
        .I2(r0_map_cpu_addr[8]),
        .I3(palette_s0_mem_reg_384_511_13_13_n_1),
        .I4(r0_map_cpu_addr[7]),
        .I5(palette_s0_mem_reg_256_383_13_13_n_1),
        .O(\data_out[13]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[13]_i_6 
       (.I0(palette_s0_mem_reg_640_767_13_13_n_1),
        .I1(palette_s0_mem_reg_512_639_13_13_n_1),
        .I2(r0_map_cpu_addr[8]),
        .I3(palette_s0_mem_reg_896_1023_13_13_n_1),
        .I4(r0_map_cpu_addr[7]),
        .I5(palette_s0_mem_reg_768_895_13_13_n_1),
        .O(\data_out[13]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h44400040)) 
    \data_out[13]_i_7 
       (.I0(r0_map_cpu_addr[8]),
        .I1(r0_map_cpu_addr[9]),
        .I2(palette_t1_mem_reg_0_127_13_13_n_1),
        .I3(r0_map_cpu_addr[7]),
        .I4(palette_t1_mem_reg_128_255_13_13_n_1),
        .O(\data_out[13]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF5555FEEE4444)) 
    \data_out[14]_i_1 
       (.I0(r0_map_cpu_addr[10]),
        .I1(\data_out[14]_i_2_n_0 ),
        .I2(r0_map_cpu_addr[9]),
        .I3(r0_map_cpu_addr[8]),
        .I4(\data_out_reg[14]_i_3_n_0 ),
        .I5(\data_out[14]_i_4_n_0 ),
        .O(p_1_out[14]));
  LUT5 #(
    .INIT(32'h44400040)) 
    \data_out[14]_i_2 
       (.I0(r0_map_cpu_addr[9]),
        .I1(r0_map_cpu_addr[8]),
        .I2(palette_t0_mem_reg_0_127_14_14_n_1),
        .I3(r0_map_cpu_addr[7]),
        .I4(palette_t0_mem_reg_128_255_14_14_n_1),
        .O(\data_out[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hABABABABABAAAAAA)) 
    \data_out[14]_i_4 
       (.I0(\data_out[14]_i_7_n_0 ),
        .I1(r0_map_cpu_addr[8]),
        .I2(r0_map_cpu_addr[9]),
        .I3(data_out0__0[14]),
        .I4(\data_out[31]_i_6_n_0 ),
        .I5(\data_out[31]_i_5_n_0 ),
        .O(\data_out[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[14]_i_5 
       (.I0(palette_s0_mem_reg_128_255_14_14_n_1),
        .I1(palette_s0_mem_reg_0_127_14_14_n_1),
        .I2(r0_map_cpu_addr[8]),
        .I3(palette_s0_mem_reg_384_511_14_14_n_1),
        .I4(r0_map_cpu_addr[7]),
        .I5(palette_s0_mem_reg_256_383_14_14_n_1),
        .O(\data_out[14]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[14]_i_6 
       (.I0(palette_s0_mem_reg_640_767_14_14_n_1),
        .I1(palette_s0_mem_reg_512_639_14_14_n_1),
        .I2(r0_map_cpu_addr[8]),
        .I3(palette_s0_mem_reg_896_1023_14_14_n_1),
        .I4(r0_map_cpu_addr[7]),
        .I5(palette_s0_mem_reg_768_895_14_14_n_1),
        .O(\data_out[14]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h44400040)) 
    \data_out[14]_i_7 
       (.I0(r0_map_cpu_addr[8]),
        .I1(r0_map_cpu_addr[9]),
        .I2(palette_t1_mem_reg_0_127_14_14_n_1),
        .I3(r0_map_cpu_addr[7]),
        .I4(palette_t1_mem_reg_128_255_14_14_n_1),
        .O(\data_out[14]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF5555FEEE4444)) 
    \data_out[15]_i_1 
       (.I0(r0_map_cpu_addr[10]),
        .I1(\data_out[15]_i_2_n_0 ),
        .I2(r0_map_cpu_addr[9]),
        .I3(r0_map_cpu_addr[8]),
        .I4(\data_out_reg[15]_i_3_n_0 ),
        .I5(\data_out[15]_i_4_n_0 ),
        .O(p_1_out[15]));
  LUT5 #(
    .INIT(32'h44400040)) 
    \data_out[15]_i_2 
       (.I0(r0_map_cpu_addr[9]),
        .I1(r0_map_cpu_addr[8]),
        .I2(palette_t0_mem_reg_0_127_15_15_n_1),
        .I3(r0_map_cpu_addr[7]),
        .I4(palette_t0_mem_reg_128_255_15_15_n_1),
        .O(\data_out[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hABABABABABAAAAAA)) 
    \data_out[15]_i_4 
       (.I0(\data_out[15]_i_8_n_0 ),
        .I1(r0_map_cpu_addr[8]),
        .I2(r0_map_cpu_addr[9]),
        .I3(data_out0__0[15]),
        .I4(\data_out[31]_i_6_n_0 ),
        .I5(\data_out[31]_i_5_n_0 ),
        .O(\data_out[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \data_out[15]_i_5 
       (.I0(r0_map_cpu_addr[8]),
        .I1(r0_map_cpu_addr[9]),
        .O(s0_pal_offset));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[15]_i_6 
       (.I0(palette_s0_mem_reg_128_255_15_15_n_1),
        .I1(palette_s0_mem_reg_0_127_15_15_n_1),
        .I2(r0_map_cpu_addr[8]),
        .I3(palette_s0_mem_reg_384_511_15_15_n_1),
        .I4(r0_map_cpu_addr[7]),
        .I5(palette_s0_mem_reg_256_383_15_15_n_1),
        .O(\data_out[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[15]_i_7 
       (.I0(palette_s0_mem_reg_640_767_15_15_n_1),
        .I1(palette_s0_mem_reg_512_639_15_15_n_1),
        .I2(r0_map_cpu_addr[8]),
        .I3(palette_s0_mem_reg_896_1023_15_15_n_1),
        .I4(r0_map_cpu_addr[7]),
        .I5(palette_s0_mem_reg_768_895_15_15_n_1),
        .O(\data_out[15]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h44400040)) 
    \data_out[15]_i_8 
       (.I0(r0_map_cpu_addr[8]),
        .I1(r0_map_cpu_addr[9]),
        .I2(palette_t1_mem_reg_0_127_15_15_n_1),
        .I3(r0_map_cpu_addr[7]),
        .I4(palette_t1_mem_reg_128_255_15_15_n_1),
        .O(\data_out[15]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h000000EA)) 
    \data_out[16]_i_1 
       (.I0(\data_out[31]_i_5_n_0 ),
        .I1(\data_out[31]_i_6_n_0 ),
        .I2(data_out0__0[16]),
        .I3(r0_map_cpu_addr[9]),
        .I4(r0_map_cpu_addr[8]),
        .O(\data_out[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000EA)) 
    \data_out[17]_i_1 
       (.I0(\data_out[31]_i_5_n_0 ),
        .I1(\data_out[31]_i_6_n_0 ),
        .I2(data_out0__0[17]),
        .I3(r0_map_cpu_addr[9]),
        .I4(r0_map_cpu_addr[8]),
        .O(\data_out[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000EA)) 
    \data_out[18]_i_1 
       (.I0(\data_out[31]_i_5_n_0 ),
        .I1(\data_out[31]_i_6_n_0 ),
        .I2(data_out0__0[18]),
        .I3(r0_map_cpu_addr[9]),
        .I4(r0_map_cpu_addr[8]),
        .O(\data_out[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000EA)) 
    \data_out[19]_i_1 
       (.I0(\data_out[31]_i_5_n_0 ),
        .I1(\data_out[31]_i_6_n_0 ),
        .I2(data_out0__0[19]),
        .I3(r0_map_cpu_addr[9]),
        .I4(r0_map_cpu_addr[8]),
        .O(\data_out[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF54FE54FE54FE54)) 
    \data_out[1]_i_1 
       (.I0(r0_map_cpu_addr[10]),
        .I1(\data_out[1]_i_2_n_0 ),
        .I2(\data_out[1]_i_3_n_0 ),
        .I3(\data_out_reg[1]_i_4_n_0 ),
        .I4(r0_map_cpu_addr[8]),
        .I5(r0_map_cpu_addr[9]),
        .O(p_1_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_out[1]_i_10 
       (.I0(Q[7]),
        .I1(Q[8]),
        .O(\data_out[1]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \data_out[1]_i_11 
       (.I0(Q[6]),
        .I1(Q[5]),
        .O(\data_out[1]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAAEEFA)) 
    \data_out[1]_i_2 
       (.I0(\data_out[1]_i_5_n_0 ),
        .I1(data_out0__0[1]),
        .I2(p_1_in[1]),
        .I3(\data_out[31]_i_8_n_0 ),
        .I4(r0_map_cpu_addr[8]),
        .I5(r0_map_cpu_addr[9]),
        .O(\data_out[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h44400040)) 
    \data_out[1]_i_3 
       (.I0(r0_map_cpu_addr[8]),
        .I1(r0_map_cpu_addr[9]),
        .I2(palette_t1_mem_reg_0_127_1_1_n_1),
        .I3(r0_map_cpu_addr[7]),
        .I4(palette_t1_mem_reg_128_255_1_1_n_1),
        .O(\data_out[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hE200)) 
    \data_out[1]_i_5 
       (.I0(palette_t0_mem_reg_0_127_1_1_n_1),
        .I1(r0_map_cpu_addr[7]),
        .I2(palette_t0_mem_reg_128_255_1_1_n_1),
        .I3(r0_map_cpu_addr[8]),
        .O(\data_out[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFF066FF00F06600)) 
    \data_out[1]_i_6 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(stat_reg),
        .I3(r0_map_cpu_addr[1]),
        .I4(r0_map_cpu_addr[0]),
        .I5(data_out0__0[1]),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[1]_i_7 
       (.I0(palette_s0_mem_reg_128_255_1_1_n_1),
        .I1(palette_s0_mem_reg_0_127_1_1_n_1),
        .I2(r0_map_cpu_addr[8]),
        .I3(palette_s0_mem_reg_384_511_1_1_n_1),
        .I4(r0_map_cpu_addr[7]),
        .I5(palette_s0_mem_reg_256_383_1_1_n_1),
        .O(\data_out[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[1]_i_8 
       (.I0(palette_s0_mem_reg_640_767_1_1_n_1),
        .I1(palette_s0_mem_reg_512_639_1_1_n_1),
        .I2(r0_map_cpu_addr[8]),
        .I3(palette_s0_mem_reg_896_1023_1_1_n_1),
        .I4(r0_map_cpu_addr[7]),
        .I5(palette_s0_mem_reg_768_895_1_1_n_1),
        .O(\data_out[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF2F2F0FF)) 
    \data_out[1]_i_9 
       (.I0(\data_out[1]_i_10_n_0 ),
        .I1(\data_out[1]_i_11_n_0 ),
        .I2(Q[9]),
        .I3(\v_cnt_reg[8] ),
        .I4(\v_cnt_reg[4] ),
        .I5(Q[10]),
        .O(stat_reg));
  LUT5 #(
    .INIT(32'h000000EA)) 
    \data_out[20]_i_1 
       (.I0(\data_out[31]_i_5_n_0 ),
        .I1(\data_out[31]_i_6_n_0 ),
        .I2(data_out0__0[20]),
        .I3(r0_map_cpu_addr[9]),
        .I4(r0_map_cpu_addr[8]),
        .O(\data_out[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000EA)) 
    \data_out[21]_i_1 
       (.I0(\data_out[31]_i_5_n_0 ),
        .I1(\data_out[31]_i_6_n_0 ),
        .I2(data_out0__0[21]),
        .I3(r0_map_cpu_addr[9]),
        .I4(r0_map_cpu_addr[8]),
        .O(\data_out[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000EA)) 
    \data_out[22]_i_1 
       (.I0(\data_out[31]_i_5_n_0 ),
        .I1(\data_out[31]_i_6_n_0 ),
        .I2(data_out0__0[22]),
        .I3(r0_map_cpu_addr[9]),
        .I4(r0_map_cpu_addr[8]),
        .O(\data_out[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000EA)) 
    \data_out[23]_i_1 
       (.I0(\data_out[31]_i_5_n_0 ),
        .I1(\data_out[31]_i_6_n_0 ),
        .I2(data_out0__0[23]),
        .I3(r0_map_cpu_addr[9]),
        .I4(r0_map_cpu_addr[8]),
        .O(\data_out[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000EA)) 
    \data_out[24]_i_1 
       (.I0(\data_out[31]_i_5_n_0 ),
        .I1(\data_out[31]_i_6_n_0 ),
        .I2(data_out0__0[24]),
        .I3(r0_map_cpu_addr[9]),
        .I4(r0_map_cpu_addr[8]),
        .O(\data_out[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000EA)) 
    \data_out[25]_i_1 
       (.I0(\data_out[31]_i_5_n_0 ),
        .I1(\data_out[31]_i_6_n_0 ),
        .I2(data_out0__0[25]),
        .I3(r0_map_cpu_addr[9]),
        .I4(r0_map_cpu_addr[8]),
        .O(\data_out[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000EA)) 
    \data_out[26]_i_1 
       (.I0(\data_out[31]_i_5_n_0 ),
        .I1(\data_out[31]_i_6_n_0 ),
        .I2(data_out0__0[26]),
        .I3(r0_map_cpu_addr[9]),
        .I4(r0_map_cpu_addr[8]),
        .O(\data_out[26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000EA)) 
    \data_out[27]_i_1 
       (.I0(\data_out[31]_i_5_n_0 ),
        .I1(\data_out[31]_i_6_n_0 ),
        .I2(data_out0__0[27]),
        .I3(r0_map_cpu_addr[9]),
        .I4(r0_map_cpu_addr[8]),
        .O(\data_out[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000EA)) 
    \data_out[28]_i_1 
       (.I0(\data_out[31]_i_5_n_0 ),
        .I1(\data_out[31]_i_6_n_0 ),
        .I2(data_out0__0[28]),
        .I3(r0_map_cpu_addr[9]),
        .I4(r0_map_cpu_addr[8]),
        .O(\data_out[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000EA)) 
    \data_out[29]_i_1 
       (.I0(\data_out[31]_i_5_n_0 ),
        .I1(\data_out[31]_i_6_n_0 ),
        .I2(data_out0__0[29]),
        .I3(r0_map_cpu_addr[9]),
        .I4(r0_map_cpu_addr[8]),
        .O(\data_out[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF5555FEEE4444)) 
    \data_out[2]_i_1 
       (.I0(r0_map_cpu_addr[10]),
        .I1(\data_out[2]_i_2_n_0 ),
        .I2(r0_map_cpu_addr[9]),
        .I3(r0_map_cpu_addr[8]),
        .I4(\data_out_reg[2]_i_3_n_0 ),
        .I5(\data_out[2]_i_4_n_0 ),
        .O(p_1_out[2]));
  LUT5 #(
    .INIT(32'h44400040)) 
    \data_out[2]_i_2 
       (.I0(r0_map_cpu_addr[9]),
        .I1(r0_map_cpu_addr[8]),
        .I2(palette_t0_mem_reg_0_127_2_2_n_1),
        .I3(r0_map_cpu_addr[7]),
        .I4(palette_t0_mem_reg_128_255_2_2_n_1),
        .O(\data_out[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00B800FF00B80000)) 
    \data_out[2]_i_4 
       (.I0(palette_t1_mem_reg_128_255_2_2_n_1),
        .I1(r0_map_cpu_addr[7]),
        .I2(palette_t1_mem_reg_0_127_2_2_n_1),
        .I3(r0_map_cpu_addr[8]),
        .I4(r0_map_cpu_addr[9]),
        .I5(data2[2]),
        .O(\data_out[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[2]_i_5 
       (.I0(palette_s0_mem_reg_128_255_2_2_n_1),
        .I1(palette_s0_mem_reg_0_127_2_2_n_1),
        .I2(r0_map_cpu_addr[8]),
        .I3(palette_s0_mem_reg_384_511_2_2_n_1),
        .I4(r0_map_cpu_addr[7]),
        .I5(palette_s0_mem_reg_256_383_2_2_n_1),
        .O(\data_out[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[2]_i_6 
       (.I0(palette_s0_mem_reg_640_767_2_2_n_1),
        .I1(palette_s0_mem_reg_512_639_2_2_n_1),
        .I2(r0_map_cpu_addr[8]),
        .I3(palette_s0_mem_reg_896_1023_2_2_n_1),
        .I4(r0_map_cpu_addr[7]),
        .I5(palette_s0_mem_reg_768_895_2_2_n_1),
        .O(\data_out[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8FF8F8F888888888)) 
    \data_out[2]_i_7 
       (.I0(data_out0__0[2]),
        .I1(\data_out[31]_i_6_n_0 ),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(\data_out[7]_i_9_n_0 ),
        .O(data2[2]));
  LUT5 #(
    .INIT(32'h000000EA)) 
    \data_out[30]_i_1 
       (.I0(\data_out[31]_i_5_n_0 ),
        .I1(\data_out[31]_i_6_n_0 ),
        .I2(data_out0__0[30]),
        .I3(r0_map_cpu_addr[9]),
        .I4(r0_map_cpu_addr[8]),
        .O(\data_out[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00007000)) 
    \data_out[31]_i_1 
       (.I0(r0_map_cpu_addr[9]),
        .I1(r0_map_cpu_addr[8]),
        .I2(r0_map_cpu_addr[10]),
        .I3(r0_map_cpu_en),
        .I4(p_0_in),
        .O(\data_out[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00007F00)) 
    \data_out[31]_i_2 
       (.I0(r0_map_cpu_addr[9]),
        .I1(r0_map_cpu_addr[8]),
        .I2(r0_map_cpu_addr[10]),
        .I3(r0_map_cpu_en),
        .I4(p_0_in),
        .O(\data_out[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h000000EA)) 
    \data_out[31]_i_3 
       (.I0(\data_out[31]_i_5_n_0 ),
        .I1(\data_out[31]_i_6_n_0 ),
        .I2(data_out0__0[31]),
        .I3(r0_map_cpu_addr[9]),
        .I4(r0_map_cpu_addr[8]),
        .O(\data_out[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \data_out[31]_i_4 
       (.I0(r0_map_cpu_en),
        .I1(r0_map_cpu_wen[0]),
        .I2(r0_map_cpu_wen[1]),
        .I3(r0_map_cpu_wen[2]),
        .I4(r0_map_cpu_wen[3]),
        .O(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \data_out[31]_i_5 
       (.I0(r0_map_cpu_addr[1]),
        .I1(r0_map_cpu_addr[0]),
        .I2(\data_out[31]_i_7_n_0 ),
        .I3(Q[9]),
        .I4(\data_out[31]_i_8_n_0 ),
        .O(\data_out[31]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'hEB)) 
    \data_out[31]_i_6 
       (.I0(\data_out[31]_i_8_n_0 ),
        .I1(r0_map_cpu_addr[0]),
        .I2(r0_map_cpu_addr[1]),
        .O(\data_out[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \data_out[31]_i_7 
       (.I0(Q[0]),
        .I1(Q[6]),
        .I2(Q[7]),
        .I3(Q[5]),
        .I4(\data_out[8]_i_7_0 ),
        .I5(Q[8]),
        .O(\data_out[31]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \data_out[31]_i_8 
       (.I0(r0_map_cpu_addr[7]),
        .I1(r0_map_cpu_addr[6]),
        .I2(r0_map_cpu_addr[5]),
        .I3(r0_map_cpu_addr[4]),
        .I4(r0_map_cpu_addr[2]),
        .I5(r0_map_cpu_addr[3]),
        .O(\data_out[31]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF5555FEEE4444)) 
    \data_out[3]_i_1 
       (.I0(r0_map_cpu_addr[10]),
        .I1(\data_out[3]_i_2_n_0 ),
        .I2(r0_map_cpu_addr[9]),
        .I3(r0_map_cpu_addr[8]),
        .I4(\data_out_reg[3]_i_3_n_0 ),
        .I5(\data_out[3]_i_4_n_0 ),
        .O(p_1_out[3]));
  LUT5 #(
    .INIT(32'h44400040)) 
    \data_out[3]_i_2 
       (.I0(r0_map_cpu_addr[9]),
        .I1(r0_map_cpu_addr[8]),
        .I2(palette_t0_mem_reg_0_127_3_3_n_1),
        .I3(r0_map_cpu_addr[7]),
        .I4(palette_t0_mem_reg_128_255_3_3_n_1),
        .O(\data_out[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00B800FF00B80000)) 
    \data_out[3]_i_4 
       (.I0(palette_t1_mem_reg_128_255_3_3_n_1),
        .I1(r0_map_cpu_addr[7]),
        .I2(palette_t1_mem_reg_0_127_3_3_n_1),
        .I3(r0_map_cpu_addr[8]),
        .I4(r0_map_cpu_addr[9]),
        .I5(data2[3]),
        .O(\data_out[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[3]_i_5 
       (.I0(palette_s0_mem_reg_128_255_3_3_n_1),
        .I1(palette_s0_mem_reg_0_127_3_3_n_1),
        .I2(r0_map_cpu_addr[8]),
        .I3(palette_s0_mem_reg_384_511_3_3_n_1),
        .I4(r0_map_cpu_addr[7]),
        .I5(palette_s0_mem_reg_256_383_3_3_n_1),
        .O(\data_out[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[3]_i_6 
       (.I0(palette_s0_mem_reg_640_767_3_3_n_1),
        .I1(palette_s0_mem_reg_512_639_3_3_n_1),
        .I2(r0_map_cpu_addr[8]),
        .I3(palette_s0_mem_reg_896_1023_3_3_n_1),
        .I4(r0_map_cpu_addr[7]),
        .I5(palette_s0_mem_reg_768_895_3_3_n_1),
        .O(\data_out[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF88FF8F888888888)) 
    \data_out[3]_i_7 
       (.I0(data_out0__0[3]),
        .I1(\data_out[31]_i_6_n_0 ),
        .I2(Q[3]),
        .I3(\data_out[3]_i_8_n_0 ),
        .I4(Q[0]),
        .I5(\data_out[7]_i_9_n_0 ),
        .O(data2[3]));
  LUT2 #(
    .INIT(4'h7)) 
    \data_out[3]_i_8 
       (.I0(Q[1]),
        .I1(Q[2]),
        .O(\data_out[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF5555FEEE4444)) 
    \data_out[4]_i_1 
       (.I0(r0_map_cpu_addr[10]),
        .I1(\data_out[4]_i_2_n_0 ),
        .I2(r0_map_cpu_addr[9]),
        .I3(r0_map_cpu_addr[8]),
        .I4(\data_out_reg[4]_i_3_n_0 ),
        .I5(\data_out[4]_i_4_n_0 ),
        .O(p_1_out[4]));
  LUT5 #(
    .INIT(32'h44400040)) 
    \data_out[4]_i_2 
       (.I0(r0_map_cpu_addr[9]),
        .I1(r0_map_cpu_addr[8]),
        .I2(palette_t0_mem_reg_0_127_4_4_n_1),
        .I3(r0_map_cpu_addr[7]),
        .I4(palette_t0_mem_reg_128_255_4_4_n_1),
        .O(\data_out[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00B800FF00B80000)) 
    \data_out[4]_i_4 
       (.I0(palette_t1_mem_reg_128_255_4_4_n_1),
        .I1(r0_map_cpu_addr[7]),
        .I2(palette_t1_mem_reg_0_127_4_4_n_1),
        .I3(r0_map_cpu_addr[8]),
        .I4(r0_map_cpu_addr[9]),
        .I5(data2[4]),
        .O(\data_out[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[4]_i_5 
       (.I0(palette_s0_mem_reg_128_255_4_4_n_1),
        .I1(palette_s0_mem_reg_0_127_4_4_n_1),
        .I2(r0_map_cpu_addr[8]),
        .I3(palette_s0_mem_reg_384_511_4_4_n_1),
        .I4(r0_map_cpu_addr[7]),
        .I5(palette_s0_mem_reg_256_383_4_4_n_1),
        .O(\data_out[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[4]_i_6 
       (.I0(palette_s0_mem_reg_640_767_4_4_n_1),
        .I1(palette_s0_mem_reg_512_639_4_4_n_1),
        .I2(r0_map_cpu_addr[8]),
        .I3(palette_s0_mem_reg_896_1023_4_4_n_1),
        .I4(r0_map_cpu_addr[7]),
        .I5(palette_s0_mem_reg_768_895_4_4_n_1),
        .O(\data_out[4]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT5 #(
    .INIT(32'hAAAAAC0A)) 
    \data_out[4]_i_7 
       (.I0(data_out0__0[4]),
        .I1(D),
        .I2(r0_map_cpu_addr[0]),
        .I3(r0_map_cpu_addr[1]),
        .I4(\data_out[31]_i_8_n_0 ),
        .O(data2[4]));
  LUT6 #(
    .INIT(64'hFFFF5555FEEE4444)) 
    \data_out[5]_i_1 
       (.I0(r0_map_cpu_addr[10]),
        .I1(\data_out[5]_i_2_n_0 ),
        .I2(r0_map_cpu_addr[9]),
        .I3(r0_map_cpu_addr[8]),
        .I4(\data_out_reg[5]_i_3_n_0 ),
        .I5(\data_out[5]_i_4_n_0 ),
        .O(p_1_out[5]));
  LUT5 #(
    .INIT(32'h44400040)) 
    \data_out[5]_i_2 
       (.I0(r0_map_cpu_addr[9]),
        .I1(r0_map_cpu_addr[8]),
        .I2(palette_t0_mem_reg_0_127_5_5_n_1),
        .I3(r0_map_cpu_addr[7]),
        .I4(palette_t0_mem_reg_128_255_5_5_n_1),
        .O(\data_out[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00B800FF00B80000)) 
    \data_out[5]_i_4 
       (.I0(palette_t1_mem_reg_128_255_5_5_n_1),
        .I1(r0_map_cpu_addr[7]),
        .I2(palette_t1_mem_reg_0_127_5_5_n_1),
        .I3(r0_map_cpu_addr[8]),
        .I4(r0_map_cpu_addr[9]),
        .I5(data2[5]),
        .O(\data_out[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[5]_i_5 
       (.I0(palette_s0_mem_reg_128_255_5_5_n_1),
        .I1(palette_s0_mem_reg_0_127_5_5_n_1),
        .I2(r0_map_cpu_addr[8]),
        .I3(palette_s0_mem_reg_384_511_5_5_n_1),
        .I4(r0_map_cpu_addr[7]),
        .I5(palette_s0_mem_reg_256_383_5_5_n_1),
        .O(\data_out[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[5]_i_6 
       (.I0(palette_s0_mem_reg_640_767_5_5_n_1),
        .I1(palette_s0_mem_reg_512_639_5_5_n_1),
        .I2(r0_map_cpu_addr[8]),
        .I3(palette_s0_mem_reg_896_1023_5_5_n_1),
        .I4(r0_map_cpu_addr[7]),
        .I5(palette_s0_mem_reg_768_895_5_5_n_1),
        .O(\data_out[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAC300AA)) 
    \data_out[5]_i_7 
       (.I0(data_out0__0[5]),
        .I1(Q[5]),
        .I2(\v_cnt_reg[4] ),
        .I3(r0_map_cpu_addr[0]),
        .I4(r0_map_cpu_addr[1]),
        .I5(\data_out[31]_i_8_n_0 ),
        .O(data2[5]));
  LUT6 #(
    .INIT(64'hFFFF5555FEEE4444)) 
    \data_out[6]_i_1 
       (.I0(r0_map_cpu_addr[10]),
        .I1(\data_out[6]_i_2_n_0 ),
        .I2(r0_map_cpu_addr[9]),
        .I3(r0_map_cpu_addr[8]),
        .I4(\data_out_reg[6]_i_3_n_0 ),
        .I5(\data_out[6]_i_4_n_0 ),
        .O(p_1_out[6]));
  LUT5 #(
    .INIT(32'h44400040)) 
    \data_out[6]_i_2 
       (.I0(r0_map_cpu_addr[9]),
        .I1(r0_map_cpu_addr[8]),
        .I2(palette_t0_mem_reg_0_127_6_6_n_1),
        .I3(r0_map_cpu_addr[7]),
        .I4(palette_t0_mem_reg_128_255_6_6_n_1),
        .O(\data_out[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00B800FF00B80000)) 
    \data_out[6]_i_4 
       (.I0(palette_t1_mem_reg_128_255_6_6_n_1),
        .I1(r0_map_cpu_addr[7]),
        .I2(palette_t1_mem_reg_0_127_6_6_n_1),
        .I3(r0_map_cpu_addr[8]),
        .I4(r0_map_cpu_addr[9]),
        .I5(data2[6]),
        .O(\data_out[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[6]_i_5 
       (.I0(palette_s0_mem_reg_128_255_6_6_n_1),
        .I1(palette_s0_mem_reg_0_127_6_6_n_1),
        .I2(r0_map_cpu_addr[8]),
        .I3(palette_s0_mem_reg_384_511_6_6_n_1),
        .I4(r0_map_cpu_addr[7]),
        .I5(palette_s0_mem_reg_256_383_6_6_n_1),
        .O(\data_out[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[6]_i_6 
       (.I0(palette_s0_mem_reg_640_767_6_6_n_1),
        .I1(palette_s0_mem_reg_512_639_6_6_n_1),
        .I2(r0_map_cpu_addr[8]),
        .I3(palette_s0_mem_reg_896_1023_6_6_n_1),
        .I4(r0_map_cpu_addr[7]),
        .I5(palette_s0_mem_reg_768_895_6_6_n_1),
        .O(\data_out[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA3C00AA)) 
    \data_out[6]_i_7 
       (.I0(data_out0__0[6]),
        .I1(\map_r_addr_reg[11] ),
        .I2(\data_out[7]_i_8_n_0 ),
        .I3(r0_map_cpu_addr[0]),
        .I4(r0_map_cpu_addr[1]),
        .I5(\data_out[31]_i_8_n_0 ),
        .O(data2[6]));
  LUT6 #(
    .INIT(64'hFFFF5555FEEE4444)) 
    \data_out[7]_i_1 
       (.I0(r0_map_cpu_addr[10]),
        .I1(\data_out[7]_i_2_n_0 ),
        .I2(r0_map_cpu_addr[9]),
        .I3(r0_map_cpu_addr[8]),
        .I4(\data_out_reg[7]_i_3_n_0 ),
        .I5(\data_out[7]_i_4_n_0 ),
        .O(p_1_out[7]));
  LUT5 #(
    .INIT(32'h44400040)) 
    \data_out[7]_i_2 
       (.I0(r0_map_cpu_addr[9]),
        .I1(r0_map_cpu_addr[8]),
        .I2(palette_t0_mem_reg_0_127_7_7_n_1),
        .I3(r0_map_cpu_addr[7]),
        .I4(palette_t0_mem_reg_128_255_7_7_n_1),
        .O(\data_out[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00B800FF00B80000)) 
    \data_out[7]_i_4 
       (.I0(palette_t1_mem_reg_128_255_7_7_n_1),
        .I1(r0_map_cpu_addr[7]),
        .I2(palette_t1_mem_reg_0_127_7_7_n_1),
        .I3(r0_map_cpu_addr[8]),
        .I4(r0_map_cpu_addr[9]),
        .I5(data2[7]),
        .O(\data_out[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[7]_i_5 
       (.I0(palette_s0_mem_reg_128_255_7_7_n_1),
        .I1(palette_s0_mem_reg_0_127_7_7_n_1),
        .I2(r0_map_cpu_addr[8]),
        .I3(palette_s0_mem_reg_384_511_7_7_n_1),
        .I4(r0_map_cpu_addr[7]),
        .I5(palette_s0_mem_reg_256_383_7_7_n_1),
        .O(\data_out[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[7]_i_6 
       (.I0(palette_s0_mem_reg_640_767_7_7_n_1),
        .I1(palette_s0_mem_reg_512_639_7_7_n_1),
        .I2(r0_map_cpu_addr[8]),
        .I3(palette_s0_mem_reg_896_1023_7_7_n_1),
        .I4(r0_map_cpu_addr[7]),
        .I5(palette_s0_mem_reg_768_895_7_7_n_1),
        .O(\data_out[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8F8F8FF888888888)) 
    \data_out[7]_i_7 
       (.I0(data_out0__0[7]),
        .I1(\data_out[31]_i_6_n_0 ),
        .I2(\map_r_addr_reg[11]_0 ),
        .I3(\data_out[7]_i_8_n_0 ),
        .I4(Q[6]),
        .I5(\data_out[7]_i_9_n_0 ),
        .O(data2[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFFBFFFFFFF)) 
    \data_out[7]_i_8 
       (.I0(Q[5]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[4]),
        .I4(Q[3]),
        .I5(Q[0]),
        .O(\data_out[7]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \data_out[7]_i_9 
       (.I0(r0_map_cpu_addr[0]),
        .I1(r0_map_cpu_addr[1]),
        .I2(\data_out[31]_i_8_n_0 ),
        .O(\data_out[7]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF5555FEEE4444)) 
    \data_out[8]_i_1 
       (.I0(r0_map_cpu_addr[10]),
        .I1(\data_out[8]_i_2_n_0 ),
        .I2(r0_map_cpu_addr[9]),
        .I3(r0_map_cpu_addr[8]),
        .I4(\data_out_reg[8]_i_3_n_0 ),
        .I5(\data_out[8]_i_4_n_0 ),
        .O(p_1_out[8]));
  LUT5 #(
    .INIT(32'h44400040)) 
    \data_out[8]_i_2 
       (.I0(r0_map_cpu_addr[9]),
        .I1(r0_map_cpu_addr[8]),
        .I2(palette_t0_mem_reg_0_127_8_8_n_1),
        .I3(r0_map_cpu_addr[7]),
        .I4(palette_t0_mem_reg_128_255_8_8_n_1),
        .O(\data_out[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00B800FF00B80000)) 
    \data_out[8]_i_4 
       (.I0(palette_t1_mem_reg_128_255_8_8_n_1),
        .I1(r0_map_cpu_addr[7]),
        .I2(palette_t1_mem_reg_0_127_8_8_n_1),
        .I3(r0_map_cpu_addr[8]),
        .I4(r0_map_cpu_addr[9]),
        .I5(data2[8]),
        .O(\data_out[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[8]_i_5 
       (.I0(palette_s0_mem_reg_128_255_8_8_n_1),
        .I1(palette_s0_mem_reg_0_127_8_8_n_1),
        .I2(r0_map_cpu_addr[8]),
        .I3(palette_s0_mem_reg_384_511_8_8_n_1),
        .I4(r0_map_cpu_addr[7]),
        .I5(palette_s0_mem_reg_256_383_8_8_n_1),
        .O(\data_out[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[8]_i_6 
       (.I0(palette_s0_mem_reg_640_767_8_8_n_1),
        .I1(palette_s0_mem_reg_512_639_8_8_n_1),
        .I2(r0_map_cpu_addr[8]),
        .I3(palette_s0_mem_reg_896_1023_8_8_n_1),
        .I4(r0_map_cpu_addr[7]),
        .I5(palette_s0_mem_reg_768_895_8_8_n_1),
        .O(\data_out[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA3C00AA)) 
    \data_out[8]_i_7 
       (.I0(data_out0__0[8]),
        .I1(\data_out[9]_i_4_0 [0]),
        .I2(\data_out[8]_i_8_n_0 ),
        .I3(r0_map_cpu_addr[0]),
        .I4(r0_map_cpu_addr[1]),
        .I5(\data_out[31]_i_8_n_0 ),
        .O(data2[8]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \data_out[8]_i_8 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\data_out[8]_i_7_0 ),
        .I3(Q[0]),
        .I4(Q[6]),
        .O(\data_out[8]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF5555FEEE4444)) 
    \data_out[9]_i_1 
       (.I0(r0_map_cpu_addr[10]),
        .I1(\data_out[9]_i_2_n_0 ),
        .I2(r0_map_cpu_addr[9]),
        .I3(r0_map_cpu_addr[8]),
        .I4(\data_out_reg[9]_i_3_n_0 ),
        .I5(\data_out[9]_i_4_n_0 ),
        .O(p_1_out[9]));
  LUT5 #(
    .INIT(32'h44400040)) 
    \data_out[9]_i_2 
       (.I0(r0_map_cpu_addr[9]),
        .I1(r0_map_cpu_addr[8]),
        .I2(palette_t0_mem_reg_0_127_9_9_n_1),
        .I3(r0_map_cpu_addr[7]),
        .I4(palette_t0_mem_reg_128_255_9_9_n_1),
        .O(\data_out[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00B800FF00B80000)) 
    \data_out[9]_i_4 
       (.I0(palette_t1_mem_reg_128_255_9_9_n_1),
        .I1(r0_map_cpu_addr[7]),
        .I2(palette_t1_mem_reg_0_127_9_9_n_1),
        .I3(r0_map_cpu_addr[8]),
        .I4(r0_map_cpu_addr[9]),
        .I5(data2[9]),
        .O(\data_out[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[9]_i_5 
       (.I0(palette_s0_mem_reg_128_255_9_9_n_1),
        .I1(palette_s0_mem_reg_0_127_9_9_n_1),
        .I2(r0_map_cpu_addr[8]),
        .I3(palette_s0_mem_reg_384_511_9_9_n_1),
        .I4(r0_map_cpu_addr[7]),
        .I5(palette_s0_mem_reg_256_383_9_9_n_1),
        .O(\data_out[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[9]_i_6 
       (.I0(palette_s0_mem_reg_640_767_9_9_n_1),
        .I1(palette_s0_mem_reg_512_639_9_9_n_1),
        .I2(r0_map_cpu_addr[8]),
        .I3(palette_s0_mem_reg_896_1023_9_9_n_1),
        .I4(r0_map_cpu_addr[7]),
        .I5(palette_s0_mem_reg_768_895_9_9_n_1),
        .O(\data_out[9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA3C00AA)) 
    \data_out[9]_i_7 
       (.I0(data_out0__0[9]),
        .I1(\data_out[9]_i_4_0 [1]),
        .I2(\data_out[31]_i_7_n_0 ),
        .I3(r0_map_cpu_addr[0]),
        .I4(r0_map_cpu_addr[1]),
        .I5(\data_out[31]_i_8_n_0 ),
        .O(data2[9]));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[0] 
       (.C(r0_map_cpu_clk),
        .CE(\data_out[31]_i_2_n_0 ),
        .D(p_1_out[0]),
        .Q(r0_map_cpu_dout[0]),
        .R(1'b0));
  MUXF7 \data_out_reg[0]_i_4 
       (.I0(\data_out[0]_i_7_n_0 ),
        .I1(\data_out[0]_i_8_n_0 ),
        .O(\data_out_reg[0]_i_4_n_0 ),
        .S(s0_pal_offset));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[10] 
       (.C(r0_map_cpu_clk),
        .CE(\data_out[31]_i_2_n_0 ),
        .D(p_1_out[10]),
        .Q(r0_map_cpu_dout[10]),
        .R(1'b0));
  MUXF7 \data_out_reg[10]_i_3 
       (.I0(\data_out[10]_i_5_n_0 ),
        .I1(\data_out[10]_i_6_n_0 ),
        .O(\data_out_reg[10]_i_3_n_0 ),
        .S(s0_pal_offset));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[11] 
       (.C(r0_map_cpu_clk),
        .CE(\data_out[31]_i_2_n_0 ),
        .D(p_1_out[11]),
        .Q(r0_map_cpu_dout[11]),
        .R(1'b0));
  MUXF7 \data_out_reg[11]_i_3 
       (.I0(\data_out[11]_i_5_n_0 ),
        .I1(\data_out[11]_i_6_n_0 ),
        .O(\data_out_reg[11]_i_3_n_0 ),
        .S(s0_pal_offset));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[12] 
       (.C(r0_map_cpu_clk),
        .CE(\data_out[31]_i_2_n_0 ),
        .D(p_1_out[12]),
        .Q(r0_map_cpu_dout[12]),
        .R(1'b0));
  MUXF7 \data_out_reg[12]_i_3 
       (.I0(\data_out[12]_i_5_n_0 ),
        .I1(\data_out[12]_i_6_n_0 ),
        .O(\data_out_reg[12]_i_3_n_0 ),
        .S(s0_pal_offset));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[13] 
       (.C(r0_map_cpu_clk),
        .CE(\data_out[31]_i_2_n_0 ),
        .D(p_1_out[13]),
        .Q(r0_map_cpu_dout[13]),
        .R(1'b0));
  MUXF7 \data_out_reg[13]_i_3 
       (.I0(\data_out[13]_i_5_n_0 ),
        .I1(\data_out[13]_i_6_n_0 ),
        .O(\data_out_reg[13]_i_3_n_0 ),
        .S(s0_pal_offset));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[14] 
       (.C(r0_map_cpu_clk),
        .CE(\data_out[31]_i_2_n_0 ),
        .D(p_1_out[14]),
        .Q(r0_map_cpu_dout[14]),
        .R(1'b0));
  MUXF7 \data_out_reg[14]_i_3 
       (.I0(\data_out[14]_i_5_n_0 ),
        .I1(\data_out[14]_i_6_n_0 ),
        .O(\data_out_reg[14]_i_3_n_0 ),
        .S(s0_pal_offset));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[15] 
       (.C(r0_map_cpu_clk),
        .CE(\data_out[31]_i_2_n_0 ),
        .D(p_1_out[15]),
        .Q(r0_map_cpu_dout[15]),
        .R(1'b0));
  MUXF7 \data_out_reg[15]_i_3 
       (.I0(\data_out[15]_i_6_n_0 ),
        .I1(\data_out[15]_i_7_n_0 ),
        .O(\data_out_reg[15]_i_3_n_0 ),
        .S(s0_pal_offset));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[16] 
       (.C(r0_map_cpu_clk),
        .CE(\data_out[31]_i_2_n_0 ),
        .D(\data_out[16]_i_1_n_0 ),
        .Q(r0_map_cpu_dout[16]),
        .R(\data_out[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[17] 
       (.C(r0_map_cpu_clk),
        .CE(\data_out[31]_i_2_n_0 ),
        .D(\data_out[17]_i_1_n_0 ),
        .Q(r0_map_cpu_dout[17]),
        .R(\data_out[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[18] 
       (.C(r0_map_cpu_clk),
        .CE(\data_out[31]_i_2_n_0 ),
        .D(\data_out[18]_i_1_n_0 ),
        .Q(r0_map_cpu_dout[18]),
        .R(\data_out[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[19] 
       (.C(r0_map_cpu_clk),
        .CE(\data_out[31]_i_2_n_0 ),
        .D(\data_out[19]_i_1_n_0 ),
        .Q(r0_map_cpu_dout[19]),
        .R(\data_out[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[1] 
       (.C(r0_map_cpu_clk),
        .CE(\data_out[31]_i_2_n_0 ),
        .D(p_1_out[1]),
        .Q(r0_map_cpu_dout[1]),
        .R(1'b0));
  MUXF7 \data_out_reg[1]_i_4 
       (.I0(\data_out[1]_i_7_n_0 ),
        .I1(\data_out[1]_i_8_n_0 ),
        .O(\data_out_reg[1]_i_4_n_0 ),
        .S(s0_pal_offset));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[20] 
       (.C(r0_map_cpu_clk),
        .CE(\data_out[31]_i_2_n_0 ),
        .D(\data_out[20]_i_1_n_0 ),
        .Q(r0_map_cpu_dout[20]),
        .R(\data_out[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[21] 
       (.C(r0_map_cpu_clk),
        .CE(\data_out[31]_i_2_n_0 ),
        .D(\data_out[21]_i_1_n_0 ),
        .Q(r0_map_cpu_dout[21]),
        .R(\data_out[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[22] 
       (.C(r0_map_cpu_clk),
        .CE(\data_out[31]_i_2_n_0 ),
        .D(\data_out[22]_i_1_n_0 ),
        .Q(r0_map_cpu_dout[22]),
        .R(\data_out[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[23] 
       (.C(r0_map_cpu_clk),
        .CE(\data_out[31]_i_2_n_0 ),
        .D(\data_out[23]_i_1_n_0 ),
        .Q(r0_map_cpu_dout[23]),
        .R(\data_out[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[24] 
       (.C(r0_map_cpu_clk),
        .CE(\data_out[31]_i_2_n_0 ),
        .D(\data_out[24]_i_1_n_0 ),
        .Q(r0_map_cpu_dout[24]),
        .R(\data_out[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[25] 
       (.C(r0_map_cpu_clk),
        .CE(\data_out[31]_i_2_n_0 ),
        .D(\data_out[25]_i_1_n_0 ),
        .Q(r0_map_cpu_dout[25]),
        .R(\data_out[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[26] 
       (.C(r0_map_cpu_clk),
        .CE(\data_out[31]_i_2_n_0 ),
        .D(\data_out[26]_i_1_n_0 ),
        .Q(r0_map_cpu_dout[26]),
        .R(\data_out[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[27] 
       (.C(r0_map_cpu_clk),
        .CE(\data_out[31]_i_2_n_0 ),
        .D(\data_out[27]_i_1_n_0 ),
        .Q(r0_map_cpu_dout[27]),
        .R(\data_out[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[28] 
       (.C(r0_map_cpu_clk),
        .CE(\data_out[31]_i_2_n_0 ),
        .D(\data_out[28]_i_1_n_0 ),
        .Q(r0_map_cpu_dout[28]),
        .R(\data_out[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[29] 
       (.C(r0_map_cpu_clk),
        .CE(\data_out[31]_i_2_n_0 ),
        .D(\data_out[29]_i_1_n_0 ),
        .Q(r0_map_cpu_dout[29]),
        .R(\data_out[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[2] 
       (.C(r0_map_cpu_clk),
        .CE(\data_out[31]_i_2_n_0 ),
        .D(p_1_out[2]),
        .Q(r0_map_cpu_dout[2]),
        .R(1'b0));
  MUXF7 \data_out_reg[2]_i_3 
       (.I0(\data_out[2]_i_5_n_0 ),
        .I1(\data_out[2]_i_6_n_0 ),
        .O(\data_out_reg[2]_i_3_n_0 ),
        .S(s0_pal_offset));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[30] 
       (.C(r0_map_cpu_clk),
        .CE(\data_out[31]_i_2_n_0 ),
        .D(\data_out[30]_i_1_n_0 ),
        .Q(r0_map_cpu_dout[30]),
        .R(\data_out[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[31] 
       (.C(r0_map_cpu_clk),
        .CE(\data_out[31]_i_2_n_0 ),
        .D(\data_out[31]_i_3_n_0 ),
        .Q(r0_map_cpu_dout[31]),
        .R(\data_out[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[3] 
       (.C(r0_map_cpu_clk),
        .CE(\data_out[31]_i_2_n_0 ),
        .D(p_1_out[3]),
        .Q(r0_map_cpu_dout[3]),
        .R(1'b0));
  MUXF7 \data_out_reg[3]_i_3 
       (.I0(\data_out[3]_i_5_n_0 ),
        .I1(\data_out[3]_i_6_n_0 ),
        .O(\data_out_reg[3]_i_3_n_0 ),
        .S(s0_pal_offset));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[4] 
       (.C(r0_map_cpu_clk),
        .CE(\data_out[31]_i_2_n_0 ),
        .D(p_1_out[4]),
        .Q(r0_map_cpu_dout[4]),
        .R(1'b0));
  MUXF7 \data_out_reg[4]_i_3 
       (.I0(\data_out[4]_i_5_n_0 ),
        .I1(\data_out[4]_i_6_n_0 ),
        .O(\data_out_reg[4]_i_3_n_0 ),
        .S(s0_pal_offset));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[5] 
       (.C(r0_map_cpu_clk),
        .CE(\data_out[31]_i_2_n_0 ),
        .D(p_1_out[5]),
        .Q(r0_map_cpu_dout[5]),
        .R(1'b0));
  MUXF7 \data_out_reg[5]_i_3 
       (.I0(\data_out[5]_i_5_n_0 ),
        .I1(\data_out[5]_i_6_n_0 ),
        .O(\data_out_reg[5]_i_3_n_0 ),
        .S(s0_pal_offset));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[6] 
       (.C(r0_map_cpu_clk),
        .CE(\data_out[31]_i_2_n_0 ),
        .D(p_1_out[6]),
        .Q(r0_map_cpu_dout[6]),
        .R(1'b0));
  MUXF7 \data_out_reg[6]_i_3 
       (.I0(\data_out[6]_i_5_n_0 ),
        .I1(\data_out[6]_i_6_n_0 ),
        .O(\data_out_reg[6]_i_3_n_0 ),
        .S(s0_pal_offset));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[7] 
       (.C(r0_map_cpu_clk),
        .CE(\data_out[31]_i_2_n_0 ),
        .D(p_1_out[7]),
        .Q(r0_map_cpu_dout[7]),
        .R(1'b0));
  MUXF7 \data_out_reg[7]_i_3 
       (.I0(\data_out[7]_i_5_n_0 ),
        .I1(\data_out[7]_i_6_n_0 ),
        .O(\data_out_reg[7]_i_3_n_0 ),
        .S(s0_pal_offset));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[8] 
       (.C(r0_map_cpu_clk),
        .CE(\data_out[31]_i_2_n_0 ),
        .D(p_1_out[8]),
        .Q(r0_map_cpu_dout[8]),
        .R(1'b0));
  MUXF7 \data_out_reg[8]_i_3 
       (.I0(\data_out[8]_i_5_n_0 ),
        .I1(\data_out[8]_i_6_n_0 ),
        .O(\data_out_reg[8]_i_3_n_0 ),
        .S(s0_pal_offset));
  FDRE #(
    .INIT(1'b0)) 
    \data_out_reg[9] 
       (.C(r0_map_cpu_clk),
        .CE(\data_out[31]_i_2_n_0 ),
        .D(p_1_out[9]),
        .Q(r0_map_cpu_dout[9]),
        .R(1'b0));
  MUXF7 \data_out_reg[9]_i_3 
       (.I0(\data_out[9]_i_5_n_0 ),
        .I1(\data_out[9]_i_6_n_0 ),
        .O(\data_out_reg[9]_i_3_n_0 ),
        .S(s0_pal_offset));
  LUT2 #(
    .INIT(4'h9)) 
    \map_r_addr[11]_i_4__0 
       (.I0(\map_r_addr_reg[11]_0 ),
        .I1(t1_y_off_reg[7]),
        .O(\t1_y_off_reg_reg[7]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    \map_r_addr[11]_i_5 
       (.I0(\map_r_addr_reg[11] ),
        .I1(t1_y_off_reg[6]),
        .O(\t1_y_off_reg_reg[7]_0 [1]));
  LUT6 #(
    .INIT(64'h7FFF800080007FFF)) 
    \map_r_addr[11]_i_6 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[4]),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(t1_y_off_reg[5]),
        .O(\t1_y_off_reg_reg[7]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    \map_r_addr[11]_i_6__0 
       (.I0(\map_r_addr_reg[11]_0 ),
        .I1(t0_y_off_reg[7]),
        .O(\t0_y_off_reg_reg[7]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    \map_r_addr[11]_i_7 
       (.I0(\map_r_addr_reg[11] ),
        .I1(t0_y_off_reg[6]),
        .O(\t0_y_off_reg_reg[7]_0 [1]));
  LUT6 #(
    .INIT(64'h7FFF800080007FFF)) 
    \map_r_addr[11]_i_8 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[4]),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(t0_y_off_reg[5]),
        .O(\t0_y_off_reg_reg[7]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    \map_r_addr[7]_i_7 
       (.I0(Q[1]),
        .I1(t1_y_off_reg[1]),
        .O(S));
  LUT2 #(
    .INIT(4'h9)) 
    \map_r_addr[7]_i_7__0 
       (.I0(Q[1]),
        .I1(t0_y_off_reg[1]),
        .O(\v_cnt_reg[1] ));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM128X1D #(
    .INIT(128'h000000000000000000000000000001A4)) 
    palette_s0_mem_reg_0_127_0_0
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[0]),
        .DPO(palette_s0_mem_reg_0_127_0_0_n_0),
        .DPRA(s0_palette_addr[6:0]),
        .SPO(palette_s0_mem_reg_0_127_0_0_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_0_127_0_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    palette_s0_mem_reg_0_127_0_0_i_1
       (.I0(r0_map_cpu_wen[0]),
        .I1(r0_map_cpu_addr[10]),
        .I2(r0_map_cpu_addr[9]),
        .I3(p_0_in),
        .I4(r0_map_cpu_addr[8]),
        .I5(r0_map_cpu_addr[7]),
        .O(palette_s0_mem_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "10" *) 
  (* ram_slice_end = "10" *) 
  RAM128X1D #(
    .INIT(128'h000000000000000000000000000000CC)) 
    palette_s0_mem_reg_0_127_10_10
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[10]),
        .DPO(palette_s0_mem_reg_0_127_10_10_n_0),
        .DPRA(DPRA),
        .SPO(palette_s0_mem_reg_0_127_10_10_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_0_127_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "11" *) 
  (* ram_slice_end = "11" *) 
  RAM128X1D #(
    .INIT(128'h0000000000000000000000000000B2CC)) 
    palette_s0_mem_reg_0_127_11_11
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[11]),
        .DPO(palette_s0_mem_reg_0_127_11_11_n_0),
        .DPRA(DPRA),
        .SPO(palette_s0_mem_reg_0_127_11_11_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_0_127_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM128X1D #(
    .INIT(128'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE)) 
    palette_s0_mem_reg_0_127_12_12
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[12]),
        .DPO(palette_s0_mem_reg_0_127_12_12_n_0),
        .DPRA(\data_out[15]_i_6_0 ),
        .SPO(palette_s0_mem_reg_0_127_12_12_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_0_127_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "13" *) 
  (* ram_slice_end = "13" *) 
  RAM128X1D #(
    .INIT(128'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE)) 
    palette_s0_mem_reg_0_127_13_13
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[13]),
        .DPO(palette_s0_mem_reg_0_127_13_13_n_0),
        .DPRA(\data_out[15]_i_6_0 ),
        .SPO(palette_s0_mem_reg_0_127_13_13_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_0_127_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "14" *) 
  RAM128X1D #(
    .INIT(128'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE)) 
    palette_s0_mem_reg_0_127_14_14
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[14]),
        .DPO(palette_s0_mem_reg_0_127_14_14_n_0),
        .DPRA(\data_out[15]_i_6_0 ),
        .SPO(palette_s0_mem_reg_0_127_14_14_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_0_127_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAM128X1D #(
    .INIT(128'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE)) 
    palette_s0_mem_reg_0_127_15_15
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[15]),
        .DPO(palette_s0_mem_reg_0_127_15_15_n_0),
        .DPRA(\data_out[15]_i_6_0 ),
        .SPO(palette_s0_mem_reg_0_127_15_15_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_0_127_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAM128X1D #(
    .INIT(128'h000000000000000000000000000001A4)) 
    palette_s0_mem_reg_0_127_1_1
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[1]),
        .DPO(palette_s0_mem_reg_0_127_1_1_n_0),
        .DPRA(s0_palette_addr[6:0]),
        .SPO(palette_s0_mem_reg_0_127_1_1_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAM128X1D #(
    .INIT(128'h000000000000000000000000000001A4)) 
    palette_s0_mem_reg_0_127_2_2
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[2]),
        .DPO(palette_s0_mem_reg_0_127_2_2_n_0),
        .DPRA(s0_palette_addr[6:0]),
        .SPO(palette_s0_mem_reg_0_127_2_2_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAM128X1D #(
    .INIT(128'h0000000000000000000000000000E9A4)) 
    palette_s0_mem_reg_0_127_3_3
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[3]),
        .DPO(palette_s0_mem_reg_0_127_3_3_n_0),
        .DPRA(s0_palette_addr[6:0]),
        .SPO(palette_s0_mem_reg_0_127_3_3_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000154)) 
    palette_s0_mem_reg_0_127_4_4
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[4]),
        .DPO(palette_s0_mem_reg_0_127_4_4_n_0),
        .DPRA(s0_palette_addr[6:0]),
        .SPO(palette_s0_mem_reg_0_127_4_4_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000154)) 
    palette_s0_mem_reg_0_127_5_5
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[5]),
        .DPO(palette_s0_mem_reg_0_127_5_5_n_0),
        .DPRA(s0_palette_addr[6:0]),
        .SPO(palette_s0_mem_reg_0_127_5_5_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000154)) 
    palette_s0_mem_reg_0_127_6_6
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[6]),
        .DPO(palette_s0_mem_reg_0_127_6_6_n_0),
        .DPRA(DPRA),
        .SPO(palette_s0_mem_reg_0_127_6_6_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM128X1D #(
    .INIT(128'h0000000000000000000000000000D554)) 
    palette_s0_mem_reg_0_127_7_7
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[7]),
        .DPO(palette_s0_mem_reg_0_127_7_7_n_0),
        .DPRA(DPRA),
        .SPO(palette_s0_mem_reg_0_127_7_7_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "8" *) 
  (* ram_slice_end = "8" *) 
  RAM128X1D #(
    .INIT(128'h000000000000000000000000000000CC)) 
    palette_s0_mem_reg_0_127_8_8
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[8]),
        .DPO(palette_s0_mem_reg_0_127_8_8_n_0),
        .DPRA(DPRA),
        .SPO(palette_s0_mem_reg_0_127_8_8_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_0_127_8_8_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    palette_s0_mem_reg_0_127_8_8_i_1
       (.I0(r0_map_cpu_wen[1]),
        .I1(r0_map_cpu_addr[10]),
        .I2(r0_map_cpu_addr[9]),
        .I3(p_0_in),
        .I4(r0_map_cpu_addr[8]),
        .I5(r0_map_cpu_addr[7]),
        .O(palette_s0_mem_reg_0_127_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "9" *) 
  RAM128X1D #(
    .INIT(128'h000000000000000000000000000000CC)) 
    palette_s0_mem_reg_0_127_9_9
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[9]),
        .DPO(palette_s0_mem_reg_0_127_9_9_n_0),
        .DPRA(DPRA),
        .SPO(palette_s0_mem_reg_0_127_9_9_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_0_127_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_128_255_0_0
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[0]),
        .DPO(palette_s0_mem_reg_128_255_0_0_n_0),
        .DPRA(s0_palette_addr[6:0]),
        .SPO(palette_s0_mem_reg_128_255_0_0_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_128_255_0_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    palette_s0_mem_reg_128_255_0_0_i_1
       (.I0(r0_map_cpu_addr[7]),
        .I1(r0_map_cpu_wen[0]),
        .I2(r0_map_cpu_addr[10]),
        .I3(r0_map_cpu_addr[8]),
        .I4(r0_map_cpu_addr[9]),
        .I5(p_0_in),
        .O(palette_s0_mem_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "10" *) 
  (* ram_slice_end = "10" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_128_255_10_10
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[10]),
        .DPO(palette_s0_mem_reg_128_255_10_10_n_0),
        .DPRA(DPRA),
        .SPO(palette_s0_mem_reg_128_255_10_10_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_128_255_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "11" *) 
  (* ram_slice_end = "11" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_128_255_11_11
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[11]),
        .DPO(palette_s0_mem_reg_128_255_11_11_n_0),
        .DPRA(DPRA),
        .SPO(palette_s0_mem_reg_128_255_11_11_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_128_255_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM128X1D #(
    .INIT(128'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF)) 
    palette_s0_mem_reg_128_255_12_12
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[12]),
        .DPO(palette_s0_mem_reg_128_255_12_12_n_0),
        .DPRA(\data_out[15]_i_6_0 ),
        .SPO(palette_s0_mem_reg_128_255_12_12_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_128_255_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "13" *) 
  (* ram_slice_end = "13" *) 
  RAM128X1D #(
    .INIT(128'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF)) 
    palette_s0_mem_reg_128_255_13_13
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[13]),
        .DPO(palette_s0_mem_reg_128_255_13_13_n_0),
        .DPRA(\data_out[15]_i_6_0 ),
        .SPO(palette_s0_mem_reg_128_255_13_13_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_128_255_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "14" *) 
  RAM128X1D #(
    .INIT(128'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF)) 
    palette_s0_mem_reg_128_255_14_14
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[14]),
        .DPO(palette_s0_mem_reg_128_255_14_14_n_0),
        .DPRA(\data_out[15]_i_6_0 ),
        .SPO(palette_s0_mem_reg_128_255_14_14_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_128_255_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAM128X1D #(
    .INIT(128'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF)) 
    palette_s0_mem_reg_128_255_15_15
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[15]),
        .DPO(palette_s0_mem_reg_128_255_15_15_n_0),
        .DPRA(\data_out[15]_i_6_0 ),
        .SPO(palette_s0_mem_reg_128_255_15_15_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_128_255_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_128_255_1_1
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[1]),
        .DPO(palette_s0_mem_reg_128_255_1_1_n_0),
        .DPRA(s0_palette_addr[6:0]),
        .SPO(palette_s0_mem_reg_128_255_1_1_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_128_255_2_2
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[2]),
        .DPO(palette_s0_mem_reg_128_255_2_2_n_0),
        .DPRA(s0_palette_addr[6:0]),
        .SPO(palette_s0_mem_reg_128_255_2_2_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_128_255_3_3
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[3]),
        .DPO(palette_s0_mem_reg_128_255_3_3_n_0),
        .DPRA(s0_palette_addr[6:0]),
        .SPO(palette_s0_mem_reg_128_255_3_3_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_128_255_4_4
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[4]),
        .DPO(palette_s0_mem_reg_128_255_4_4_n_0),
        .DPRA(s0_palette_addr[6:0]),
        .SPO(palette_s0_mem_reg_128_255_4_4_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_128_255_5_5
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[5]),
        .DPO(palette_s0_mem_reg_128_255_5_5_n_0),
        .DPRA(s0_palette_addr[6:0]),
        .SPO(palette_s0_mem_reg_128_255_5_5_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_128_255_6_6
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[6]),
        .DPO(palette_s0_mem_reg_128_255_6_6_n_0),
        .DPRA(DPRA),
        .SPO(palette_s0_mem_reg_128_255_6_6_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_128_255_7_7
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[7]),
        .DPO(palette_s0_mem_reg_128_255_7_7_n_0),
        .DPRA(DPRA),
        .SPO(palette_s0_mem_reg_128_255_7_7_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "8" *) 
  (* ram_slice_end = "8" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_128_255_8_8
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[8]),
        .DPO(palette_s0_mem_reg_128_255_8_8_n_0),
        .DPRA(DPRA),
        .SPO(palette_s0_mem_reg_128_255_8_8_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_128_255_8_8_i_1_n_0));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    palette_s0_mem_reg_128_255_8_8_i_1
       (.I0(r0_map_cpu_addr[7]),
        .I1(r0_map_cpu_wen[1]),
        .I2(r0_map_cpu_addr[10]),
        .I3(r0_map_cpu_addr[8]),
        .I4(r0_map_cpu_addr[9]),
        .I5(p_0_in),
        .O(palette_s0_mem_reg_128_255_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "9" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_128_255_9_9
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[9]),
        .DPO(palette_s0_mem_reg_128_255_9_9_n_0),
        .DPRA(DPRA),
        .SPO(palette_s0_mem_reg_128_255_9_9_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_128_255_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_256_383_0_0
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[0]),
        .DPO(palette_s0_mem_reg_256_383_0_0_n_0),
        .DPRA(s0_palette_addr[6:0]),
        .SPO(palette_s0_mem_reg_256_383_0_0_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_256_383_0_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    palette_s0_mem_reg_256_383_0_0_i_1
       (.I0(r0_map_cpu_addr[7]),
        .I1(r0_map_cpu_wen[0]),
        .I2(r0_map_cpu_addr[10]),
        .I3(r0_map_cpu_addr[8]),
        .I4(r0_map_cpu_addr[9]),
        .I5(p_0_in),
        .O(palette_s0_mem_reg_256_383_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "10" *) 
  (* ram_slice_end = "10" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_256_383_10_10
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[10]),
        .DPO(palette_s0_mem_reg_256_383_10_10_n_0),
        .DPRA(DPRA),
        .SPO(palette_s0_mem_reg_256_383_10_10_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_256_383_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "11" *) 
  (* ram_slice_end = "11" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_256_383_11_11
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[11]),
        .DPO(palette_s0_mem_reg_256_383_11_11_n_0),
        .DPRA(DPRA),
        .SPO(palette_s0_mem_reg_256_383_11_11_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_256_383_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM128X1D #(
    .INIT(128'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF)) 
    palette_s0_mem_reg_256_383_12_12
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[12]),
        .DPO(palette_s0_mem_reg_256_383_12_12_n_0),
        .DPRA(\data_out[15]_i_6_0 ),
        .SPO(palette_s0_mem_reg_256_383_12_12_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_256_383_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "13" *) 
  (* ram_slice_end = "13" *) 
  RAM128X1D #(
    .INIT(128'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF)) 
    palette_s0_mem_reg_256_383_13_13
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[13]),
        .DPO(palette_s0_mem_reg_256_383_13_13_n_0),
        .DPRA(\data_out[15]_i_6_0 ),
        .SPO(palette_s0_mem_reg_256_383_13_13_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_256_383_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "14" *) 
  RAM128X1D #(
    .INIT(128'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF)) 
    palette_s0_mem_reg_256_383_14_14
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[14]),
        .DPO(palette_s0_mem_reg_256_383_14_14_n_0),
        .DPRA(\data_out[15]_i_6_0 ),
        .SPO(palette_s0_mem_reg_256_383_14_14_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_256_383_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAM128X1D #(
    .INIT(128'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF)) 
    palette_s0_mem_reg_256_383_15_15
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[15]),
        .DPO(palette_s0_mem_reg_256_383_15_15_n_0),
        .DPRA(\data_out[15]_i_6_0 ),
        .SPO(palette_s0_mem_reg_256_383_15_15_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_256_383_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_256_383_1_1
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[1]),
        .DPO(palette_s0_mem_reg_256_383_1_1_n_0),
        .DPRA(s0_palette_addr[6:0]),
        .SPO(palette_s0_mem_reg_256_383_1_1_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_256_383_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_256_383_2_2
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[2]),
        .DPO(palette_s0_mem_reg_256_383_2_2_n_0),
        .DPRA(s0_palette_addr[6:0]),
        .SPO(palette_s0_mem_reg_256_383_2_2_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_256_383_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_256_383_3_3
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[3]),
        .DPO(palette_s0_mem_reg_256_383_3_3_n_0),
        .DPRA(s0_palette_addr[6:0]),
        .SPO(palette_s0_mem_reg_256_383_3_3_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_256_383_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_256_383_4_4
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[4]),
        .DPO(palette_s0_mem_reg_256_383_4_4_n_0),
        .DPRA(s0_palette_addr[6:0]),
        .SPO(palette_s0_mem_reg_256_383_4_4_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_256_383_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_256_383_5_5
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[5]),
        .DPO(palette_s0_mem_reg_256_383_5_5_n_0),
        .DPRA(s0_palette_addr[6:0]),
        .SPO(palette_s0_mem_reg_256_383_5_5_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_256_383_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_256_383_6_6
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[6]),
        .DPO(palette_s0_mem_reg_256_383_6_6_n_0),
        .DPRA(DPRA),
        .SPO(palette_s0_mem_reg_256_383_6_6_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_256_383_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_256_383_7_7
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[7]),
        .DPO(palette_s0_mem_reg_256_383_7_7_n_0),
        .DPRA(DPRA),
        .SPO(palette_s0_mem_reg_256_383_7_7_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_256_383_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "8" *) 
  (* ram_slice_end = "8" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_256_383_8_8
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[8]),
        .DPO(palette_s0_mem_reg_256_383_8_8_n_0),
        .DPRA(DPRA),
        .SPO(palette_s0_mem_reg_256_383_8_8_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_256_383_8_8_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    palette_s0_mem_reg_256_383_8_8_i_1
       (.I0(r0_map_cpu_addr[7]),
        .I1(r0_map_cpu_wen[1]),
        .I2(r0_map_cpu_addr[10]),
        .I3(r0_map_cpu_addr[8]),
        .I4(r0_map_cpu_addr[9]),
        .I5(p_0_in),
        .O(palette_s0_mem_reg_256_383_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "256" *) 
  (* ram_addr_end = "383" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "9" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_256_383_9_9
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[9]),
        .DPO(palette_s0_mem_reg_256_383_9_9_n_0),
        .DPRA(DPRA),
        .SPO(palette_s0_mem_reg_256_383_9_9_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_256_383_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_384_511_0_0
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[0]),
        .DPO(palette_s0_mem_reg_384_511_0_0_n_0),
        .DPRA(s0_palette_addr[6:0]),
        .SPO(palette_s0_mem_reg_384_511_0_0_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_384_511_0_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    palette_s0_mem_reg_384_511_0_0_i_1
       (.I0(r0_map_cpu_wen[0]),
        .I1(r0_map_cpu_addr[10]),
        .I2(r0_map_cpu_addr[9]),
        .I3(p_0_in),
        .I4(r0_map_cpu_addr[7]),
        .I5(r0_map_cpu_addr[8]),
        .O(palette_s0_mem_reg_384_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "10" *) 
  (* ram_slice_end = "10" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_384_511_10_10
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[10]),
        .DPO(palette_s0_mem_reg_384_511_10_10_n_0),
        .DPRA(DPRA),
        .SPO(palette_s0_mem_reg_384_511_10_10_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_384_511_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "11" *) 
  (* ram_slice_end = "11" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_384_511_11_11
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[11]),
        .DPO(palette_s0_mem_reg_384_511_11_11_n_0),
        .DPRA(DPRA),
        .SPO(palette_s0_mem_reg_384_511_11_11_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_384_511_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM128X1D #(
    .INIT(128'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF)) 
    palette_s0_mem_reg_384_511_12_12
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[12]),
        .DPO(palette_s0_mem_reg_384_511_12_12_n_0),
        .DPRA(\data_out[15]_i_6_0 ),
        .SPO(palette_s0_mem_reg_384_511_12_12_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_384_511_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "13" *) 
  (* ram_slice_end = "13" *) 
  RAM128X1D #(
    .INIT(128'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF)) 
    palette_s0_mem_reg_384_511_13_13
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[13]),
        .DPO(palette_s0_mem_reg_384_511_13_13_n_0),
        .DPRA(\data_out[15]_i_6_0 ),
        .SPO(palette_s0_mem_reg_384_511_13_13_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_384_511_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "14" *) 
  RAM128X1D #(
    .INIT(128'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF)) 
    palette_s0_mem_reg_384_511_14_14
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[14]),
        .DPO(palette_s0_mem_reg_384_511_14_14_n_0),
        .DPRA(\data_out[15]_i_6_0 ),
        .SPO(palette_s0_mem_reg_384_511_14_14_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_384_511_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAM128X1D #(
    .INIT(128'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF)) 
    palette_s0_mem_reg_384_511_15_15
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[15]),
        .DPO(palette_s0_mem_reg_384_511_15_15_n_0),
        .DPRA(\data_out[15]_i_6_0 ),
        .SPO(palette_s0_mem_reg_384_511_15_15_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_384_511_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_384_511_1_1
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[1]),
        .DPO(palette_s0_mem_reg_384_511_1_1_n_0),
        .DPRA(s0_palette_addr[6:0]),
        .SPO(palette_s0_mem_reg_384_511_1_1_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_384_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_384_511_2_2
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[2]),
        .DPO(palette_s0_mem_reg_384_511_2_2_n_0),
        .DPRA(s0_palette_addr[6:0]),
        .SPO(palette_s0_mem_reg_384_511_2_2_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_384_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_384_511_3_3
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[3]),
        .DPO(palette_s0_mem_reg_384_511_3_3_n_0),
        .DPRA(s0_palette_addr[6:0]),
        .SPO(palette_s0_mem_reg_384_511_3_3_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_384_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_384_511_4_4
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[4]),
        .DPO(palette_s0_mem_reg_384_511_4_4_n_0),
        .DPRA(s0_palette_addr[6:0]),
        .SPO(palette_s0_mem_reg_384_511_4_4_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_384_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_384_511_5_5
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[5]),
        .DPO(palette_s0_mem_reg_384_511_5_5_n_0),
        .DPRA(s0_palette_addr[6:0]),
        .SPO(palette_s0_mem_reg_384_511_5_5_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_384_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_384_511_6_6
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[6]),
        .DPO(palette_s0_mem_reg_384_511_6_6_n_0),
        .DPRA(DPRA),
        .SPO(palette_s0_mem_reg_384_511_6_6_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_384_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_384_511_7_7
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[7]),
        .DPO(palette_s0_mem_reg_384_511_7_7_n_0),
        .DPRA(DPRA),
        .SPO(palette_s0_mem_reg_384_511_7_7_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_384_511_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "8" *) 
  (* ram_slice_end = "8" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_384_511_8_8
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[8]),
        .DPO(palette_s0_mem_reg_384_511_8_8_n_0),
        .DPRA(DPRA),
        .SPO(palette_s0_mem_reg_384_511_8_8_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_384_511_8_8_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    palette_s0_mem_reg_384_511_8_8_i_1
       (.I0(r0_map_cpu_wen[1]),
        .I1(r0_map_cpu_addr[10]),
        .I2(r0_map_cpu_addr[9]),
        .I3(p_0_in),
        .I4(r0_map_cpu_addr[7]),
        .I5(r0_map_cpu_addr[8]),
        .O(palette_s0_mem_reg_384_511_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "384" *) 
  (* ram_addr_end = "511" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "9" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_384_511_9_9
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[9]),
        .DPO(palette_s0_mem_reg_384_511_9_9_n_0),
        .DPRA(DPRA),
        .SPO(palette_s0_mem_reg_384_511_9_9_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_384_511_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "639" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_512_639_0_0
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[0]),
        .DPO(palette_s0_mem_reg_512_639_0_0_n_0),
        .DPRA(s0_palette_addr[6:0]),
        .SPO(palette_s0_mem_reg_512_639_0_0_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_512_639_0_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    palette_s0_mem_reg_512_639_0_0_i_1
       (.I0(r0_map_cpu_addr[7]),
        .I1(r0_map_cpu_addr[8]),
        .I2(r0_map_cpu_addr[9]),
        .I3(r0_map_cpu_wen[0]),
        .I4(r0_map_cpu_addr[10]),
        .I5(p_0_in),
        .O(palette_s0_mem_reg_512_639_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "639" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "10" *) 
  (* ram_slice_end = "10" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_512_639_10_10
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[10]),
        .DPO(palette_s0_mem_reg_512_639_10_10_n_0),
        .DPRA(DPRA),
        .SPO(palette_s0_mem_reg_512_639_10_10_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_512_639_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "639" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "11" *) 
  (* ram_slice_end = "11" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_512_639_11_11
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[11]),
        .DPO(palette_s0_mem_reg_512_639_11_11_n_0),
        .DPRA(DPRA),
        .SPO(palette_s0_mem_reg_512_639_11_11_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_512_639_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "639" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM128X1D #(
    .INIT(128'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF)) 
    palette_s0_mem_reg_512_639_12_12
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[12]),
        .DPO(palette_s0_mem_reg_512_639_12_12_n_0),
        .DPRA(\data_out[15]_i_6_0 ),
        .SPO(palette_s0_mem_reg_512_639_12_12_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_512_639_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "639" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "13" *) 
  (* ram_slice_end = "13" *) 
  RAM128X1D #(
    .INIT(128'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF)) 
    palette_s0_mem_reg_512_639_13_13
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[13]),
        .DPO(palette_s0_mem_reg_512_639_13_13_n_0),
        .DPRA(\data_out[15]_i_6_0 ),
        .SPO(palette_s0_mem_reg_512_639_13_13_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_512_639_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "639" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "14" *) 
  RAM128X1D #(
    .INIT(128'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF)) 
    palette_s0_mem_reg_512_639_14_14
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[14]),
        .DPO(palette_s0_mem_reg_512_639_14_14_n_0),
        .DPRA(\data_out[15]_i_6_0 ),
        .SPO(palette_s0_mem_reg_512_639_14_14_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_512_639_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "639" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAM128X1D #(
    .INIT(128'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF)) 
    palette_s0_mem_reg_512_639_15_15
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[15]),
        .DPO(palette_s0_mem_reg_512_639_15_15_n_0),
        .DPRA(\data_out[15]_i_6_0 ),
        .SPO(palette_s0_mem_reg_512_639_15_15_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_512_639_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "639" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_512_639_1_1
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[1]),
        .DPO(palette_s0_mem_reg_512_639_1_1_n_0),
        .DPRA(s0_palette_addr[6:0]),
        .SPO(palette_s0_mem_reg_512_639_1_1_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_512_639_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "639" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_512_639_2_2
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[2]),
        .DPO(palette_s0_mem_reg_512_639_2_2_n_0),
        .DPRA(s0_palette_addr[6:0]),
        .SPO(palette_s0_mem_reg_512_639_2_2_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_512_639_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "639" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_512_639_3_3
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[3]),
        .DPO(palette_s0_mem_reg_512_639_3_3_n_0),
        .DPRA(s0_palette_addr[6:0]),
        .SPO(palette_s0_mem_reg_512_639_3_3_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_512_639_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "639" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_512_639_4_4
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[4]),
        .DPO(palette_s0_mem_reg_512_639_4_4_n_0),
        .DPRA(s0_palette_addr[6:0]),
        .SPO(palette_s0_mem_reg_512_639_4_4_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_512_639_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "639" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_512_639_5_5
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[5]),
        .DPO(palette_s0_mem_reg_512_639_5_5_n_0),
        .DPRA(s0_palette_addr[6:0]),
        .SPO(palette_s0_mem_reg_512_639_5_5_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_512_639_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "639" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_512_639_6_6
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[6]),
        .DPO(palette_s0_mem_reg_512_639_6_6_n_0),
        .DPRA(DPRA),
        .SPO(palette_s0_mem_reg_512_639_6_6_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_512_639_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "639" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_512_639_7_7
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[7]),
        .DPO(palette_s0_mem_reg_512_639_7_7_n_0),
        .DPRA(DPRA),
        .SPO(palette_s0_mem_reg_512_639_7_7_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_512_639_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "639" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "8" *) 
  (* ram_slice_end = "8" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_512_639_8_8
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[8]),
        .DPO(palette_s0_mem_reg_512_639_8_8_n_0),
        .DPRA(DPRA),
        .SPO(palette_s0_mem_reg_512_639_8_8_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_512_639_8_8_i_1_n_0));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    palette_s0_mem_reg_512_639_8_8_i_1
       (.I0(r0_map_cpu_addr[7]),
        .I1(r0_map_cpu_addr[8]),
        .I2(r0_map_cpu_addr[9]),
        .I3(r0_map_cpu_wen[1]),
        .I4(r0_map_cpu_addr[10]),
        .I5(p_0_in),
        .O(palette_s0_mem_reg_512_639_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "512" *) 
  (* ram_addr_end = "639" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "9" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_512_639_9_9
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[9]),
        .DPO(palette_s0_mem_reg_512_639_9_9_n_0),
        .DPRA(DPRA),
        .SPO(palette_s0_mem_reg_512_639_9_9_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_512_639_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "640" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_640_767_0_0
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[0]),
        .DPO(palette_s0_mem_reg_640_767_0_0_n_0),
        .DPRA(s0_palette_addr[6:0]),
        .SPO(palette_s0_mem_reg_640_767_0_0_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_640_767_0_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    palette_s0_mem_reg_640_767_0_0_i_1
       (.I0(r0_map_cpu_wen[0]),
        .I1(r0_map_cpu_addr[10]),
        .I2(p_0_in),
        .I3(r0_map_cpu_addr[7]),
        .I4(r0_map_cpu_addr[8]),
        .I5(r0_map_cpu_addr[9]),
        .O(palette_s0_mem_reg_640_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "640" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "10" *) 
  (* ram_slice_end = "10" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_640_767_10_10
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[10]),
        .DPO(palette_s0_mem_reg_640_767_10_10_n_0),
        .DPRA(DPRA),
        .SPO(palette_s0_mem_reg_640_767_10_10_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_640_767_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "640" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "11" *) 
  (* ram_slice_end = "11" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_640_767_11_11
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[11]),
        .DPO(palette_s0_mem_reg_640_767_11_11_n_0),
        .DPRA(DPRA),
        .SPO(palette_s0_mem_reg_640_767_11_11_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_640_767_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "640" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM128X1D #(
    .INIT(128'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF)) 
    palette_s0_mem_reg_640_767_12_12
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[12]),
        .DPO(palette_s0_mem_reg_640_767_12_12_n_0),
        .DPRA(\data_out[15]_i_6_0 ),
        .SPO(palette_s0_mem_reg_640_767_12_12_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_640_767_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "640" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "13" *) 
  (* ram_slice_end = "13" *) 
  RAM128X1D #(
    .INIT(128'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF)) 
    palette_s0_mem_reg_640_767_13_13
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[13]),
        .DPO(palette_s0_mem_reg_640_767_13_13_n_0),
        .DPRA(\data_out[15]_i_6_0 ),
        .SPO(palette_s0_mem_reg_640_767_13_13_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_640_767_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "640" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "14" *) 
  RAM128X1D #(
    .INIT(128'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF)) 
    palette_s0_mem_reg_640_767_14_14
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[14]),
        .DPO(palette_s0_mem_reg_640_767_14_14_n_0),
        .DPRA(\data_out[15]_i_6_0 ),
        .SPO(palette_s0_mem_reg_640_767_14_14_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_640_767_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "640" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAM128X1D #(
    .INIT(128'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF)) 
    palette_s0_mem_reg_640_767_15_15
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[15]),
        .DPO(palette_s0_mem_reg_640_767_15_15_n_0),
        .DPRA(\data_out[15]_i_6_0 ),
        .SPO(palette_s0_mem_reg_640_767_15_15_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_640_767_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "640" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_640_767_1_1
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[1]),
        .DPO(palette_s0_mem_reg_640_767_1_1_n_0),
        .DPRA(s0_palette_addr[6:0]),
        .SPO(palette_s0_mem_reg_640_767_1_1_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_640_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "640" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_640_767_2_2
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[2]),
        .DPO(palette_s0_mem_reg_640_767_2_2_n_0),
        .DPRA(s0_palette_addr[6:0]),
        .SPO(palette_s0_mem_reg_640_767_2_2_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_640_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "640" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_640_767_3_3
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[3]),
        .DPO(palette_s0_mem_reg_640_767_3_3_n_0),
        .DPRA(s0_palette_addr[6:0]),
        .SPO(palette_s0_mem_reg_640_767_3_3_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_640_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "640" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_640_767_4_4
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[4]),
        .DPO(palette_s0_mem_reg_640_767_4_4_n_0),
        .DPRA(s0_palette_addr[6:0]),
        .SPO(palette_s0_mem_reg_640_767_4_4_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_640_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "640" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_640_767_5_5
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[5]),
        .DPO(palette_s0_mem_reg_640_767_5_5_n_0),
        .DPRA(s0_palette_addr[6:0]),
        .SPO(palette_s0_mem_reg_640_767_5_5_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_640_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "640" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_640_767_6_6
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[6]),
        .DPO(palette_s0_mem_reg_640_767_6_6_n_0),
        .DPRA(DPRA),
        .SPO(palette_s0_mem_reg_640_767_6_6_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_640_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "640" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_640_767_7_7
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[7]),
        .DPO(palette_s0_mem_reg_640_767_7_7_n_0),
        .DPRA(DPRA),
        .SPO(palette_s0_mem_reg_640_767_7_7_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_640_767_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "640" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "8" *) 
  (* ram_slice_end = "8" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_640_767_8_8
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[8]),
        .DPO(palette_s0_mem_reg_640_767_8_8_n_0),
        .DPRA(DPRA),
        .SPO(palette_s0_mem_reg_640_767_8_8_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_640_767_8_8_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    palette_s0_mem_reg_640_767_8_8_i_1
       (.I0(r0_map_cpu_wen[1]),
        .I1(r0_map_cpu_addr[10]),
        .I2(p_0_in),
        .I3(r0_map_cpu_addr[7]),
        .I4(r0_map_cpu_addr[8]),
        .I5(r0_map_cpu_addr[9]),
        .O(palette_s0_mem_reg_640_767_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "640" *) 
  (* ram_addr_end = "767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "9" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_640_767_9_9
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[9]),
        .DPO(palette_s0_mem_reg_640_767_9_9_n_0),
        .DPRA(DPRA),
        .SPO(palette_s0_mem_reg_640_767_9_9_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_640_767_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "895" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_768_895_0_0
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[0]),
        .DPO(palette_s0_mem_reg_768_895_0_0_n_0),
        .DPRA(s0_palette_addr[6:0]),
        .SPO(palette_s0_mem_reg_768_895_0_0_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_768_895_0_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    palette_s0_mem_reg_768_895_0_0_i_1
       (.I0(r0_map_cpu_wen[0]),
        .I1(r0_map_cpu_addr[10]),
        .I2(p_0_in),
        .I3(r0_map_cpu_addr[7]),
        .I4(r0_map_cpu_addr[8]),
        .I5(r0_map_cpu_addr[9]),
        .O(palette_s0_mem_reg_768_895_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "895" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "10" *) 
  (* ram_slice_end = "10" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_768_895_10_10
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[10]),
        .DPO(palette_s0_mem_reg_768_895_10_10_n_0),
        .DPRA(DPRA),
        .SPO(palette_s0_mem_reg_768_895_10_10_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_768_895_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "895" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "11" *) 
  (* ram_slice_end = "11" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_768_895_11_11
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[11]),
        .DPO(palette_s0_mem_reg_768_895_11_11_n_0),
        .DPRA(DPRA),
        .SPO(palette_s0_mem_reg_768_895_11_11_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_768_895_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "895" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM128X1D #(
    .INIT(128'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF)) 
    palette_s0_mem_reg_768_895_12_12
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[12]),
        .DPO(palette_s0_mem_reg_768_895_12_12_n_0),
        .DPRA(\data_out[15]_i_6_0 ),
        .SPO(palette_s0_mem_reg_768_895_12_12_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_768_895_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "895" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "13" *) 
  (* ram_slice_end = "13" *) 
  RAM128X1D #(
    .INIT(128'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF)) 
    palette_s0_mem_reg_768_895_13_13
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[13]),
        .DPO(palette_s0_mem_reg_768_895_13_13_n_0),
        .DPRA(\data_out[15]_i_6_0 ),
        .SPO(palette_s0_mem_reg_768_895_13_13_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_768_895_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "895" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "14" *) 
  RAM128X1D #(
    .INIT(128'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF)) 
    palette_s0_mem_reg_768_895_14_14
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[14]),
        .DPO(palette_s0_mem_reg_768_895_14_14_n_0),
        .DPRA(\data_out[15]_i_6_0 ),
        .SPO(palette_s0_mem_reg_768_895_14_14_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_768_895_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "895" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAM128X1D #(
    .INIT(128'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF)) 
    palette_s0_mem_reg_768_895_15_15
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[15]),
        .DPO(palette_s0_mem_reg_768_895_15_15_n_0),
        .DPRA(\data_out[15]_i_6_0 ),
        .SPO(palette_s0_mem_reg_768_895_15_15_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_768_895_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "895" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_768_895_1_1
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[1]),
        .DPO(palette_s0_mem_reg_768_895_1_1_n_0),
        .DPRA(s0_palette_addr[6:0]),
        .SPO(palette_s0_mem_reg_768_895_1_1_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_768_895_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "895" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_768_895_2_2
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[2]),
        .DPO(palette_s0_mem_reg_768_895_2_2_n_0),
        .DPRA(s0_palette_addr[6:0]),
        .SPO(palette_s0_mem_reg_768_895_2_2_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_768_895_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "895" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_768_895_3_3
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[3]),
        .DPO(palette_s0_mem_reg_768_895_3_3_n_0),
        .DPRA(s0_palette_addr[6:0]),
        .SPO(palette_s0_mem_reg_768_895_3_3_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_768_895_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "895" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_768_895_4_4
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[4]),
        .DPO(palette_s0_mem_reg_768_895_4_4_n_0),
        .DPRA(s0_palette_addr[6:0]),
        .SPO(palette_s0_mem_reg_768_895_4_4_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_768_895_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "895" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_768_895_5_5
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[5]),
        .DPO(palette_s0_mem_reg_768_895_5_5_n_0),
        .DPRA(s0_palette_addr[6:0]),
        .SPO(palette_s0_mem_reg_768_895_5_5_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_768_895_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "895" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_768_895_6_6
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[6]),
        .DPO(palette_s0_mem_reg_768_895_6_6_n_0),
        .DPRA(DPRA),
        .SPO(palette_s0_mem_reg_768_895_6_6_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_768_895_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "895" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_768_895_7_7
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[7]),
        .DPO(palette_s0_mem_reg_768_895_7_7_n_0),
        .DPRA(DPRA),
        .SPO(palette_s0_mem_reg_768_895_7_7_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_768_895_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "895" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "8" *) 
  (* ram_slice_end = "8" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_768_895_8_8
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[8]),
        .DPO(palette_s0_mem_reg_768_895_8_8_n_0),
        .DPRA(DPRA),
        .SPO(palette_s0_mem_reg_768_895_8_8_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_768_895_8_8_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    palette_s0_mem_reg_768_895_8_8_i_1
       (.I0(r0_map_cpu_wen[1]),
        .I1(r0_map_cpu_addr[10]),
        .I2(p_0_in),
        .I3(r0_map_cpu_addr[7]),
        .I4(r0_map_cpu_addr[8]),
        .I5(r0_map_cpu_addr[9]),
        .O(palette_s0_mem_reg_768_895_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "768" *) 
  (* ram_addr_end = "895" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "9" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_768_895_9_9
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[9]),
        .DPO(palette_s0_mem_reg_768_895_9_9_n_0),
        .DPRA(DPRA),
        .SPO(palette_s0_mem_reg_768_895_9_9_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_768_895_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "896" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_896_1023_0_0
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[0]),
        .DPO(palette_s0_mem_reg_896_1023_0_0_n_0),
        .DPRA(s0_palette_addr[6:0]),
        .SPO(palette_s0_mem_reg_896_1023_0_0_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_896_1023_0_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    palette_s0_mem_reg_896_1023_0_0_i_1
       (.I0(r0_map_cpu_addr[9]),
        .I1(r0_map_cpu_wen[0]),
        .I2(r0_map_cpu_addr[10]),
        .I3(p_0_in),
        .I4(r0_map_cpu_addr[7]),
        .I5(r0_map_cpu_addr[8]),
        .O(palette_s0_mem_reg_896_1023_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "896" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "10" *) 
  (* ram_slice_end = "10" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_896_1023_10_10
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[10]),
        .DPO(palette_s0_mem_reg_896_1023_10_10_n_0),
        .DPRA(DPRA),
        .SPO(palette_s0_mem_reg_896_1023_10_10_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_896_1023_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "896" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "11" *) 
  (* ram_slice_end = "11" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_896_1023_11_11
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[11]),
        .DPO(palette_s0_mem_reg_896_1023_11_11_n_0),
        .DPRA(DPRA),
        .SPO(palette_s0_mem_reg_896_1023_11_11_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_896_1023_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "896" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM128X1D #(
    .INIT(128'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF)) 
    palette_s0_mem_reg_896_1023_12_12
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[12]),
        .DPO(palette_s0_mem_reg_896_1023_12_12_n_0),
        .DPRA(\data_out[15]_i_6_0 ),
        .SPO(palette_s0_mem_reg_896_1023_12_12_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_896_1023_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "896" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "13" *) 
  (* ram_slice_end = "13" *) 
  RAM128X1D #(
    .INIT(128'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF)) 
    palette_s0_mem_reg_896_1023_13_13
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[13]),
        .DPO(palette_s0_mem_reg_896_1023_13_13_n_0),
        .DPRA(\data_out[15]_i_6_0 ),
        .SPO(palette_s0_mem_reg_896_1023_13_13_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_896_1023_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "896" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "14" *) 
  RAM128X1D #(
    .INIT(128'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF)) 
    palette_s0_mem_reg_896_1023_14_14
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[14]),
        .DPO(palette_s0_mem_reg_896_1023_14_14_n_0),
        .DPRA(\data_out[15]_i_6_0 ),
        .SPO(palette_s0_mem_reg_896_1023_14_14_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_896_1023_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "896" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAM128X1D #(
    .INIT(128'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF)) 
    palette_s0_mem_reg_896_1023_15_15
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[15]),
        .DPO(palette_s0_mem_reg_896_1023_15_15_n_0),
        .DPRA(\data_out[15]_i_6_0 ),
        .SPO(palette_s0_mem_reg_896_1023_15_15_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_896_1023_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "896" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_896_1023_1_1
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[1]),
        .DPO(palette_s0_mem_reg_896_1023_1_1_n_0),
        .DPRA(s0_palette_addr[6:0]),
        .SPO(palette_s0_mem_reg_896_1023_1_1_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_896_1023_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "896" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_896_1023_2_2
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[2]),
        .DPO(palette_s0_mem_reg_896_1023_2_2_n_0),
        .DPRA(s0_palette_addr[6:0]),
        .SPO(palette_s0_mem_reg_896_1023_2_2_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_896_1023_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "896" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_896_1023_3_3
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[3]),
        .DPO(palette_s0_mem_reg_896_1023_3_3_n_0),
        .DPRA(s0_palette_addr[6:0]),
        .SPO(palette_s0_mem_reg_896_1023_3_3_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_896_1023_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "896" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_896_1023_4_4
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[4]),
        .DPO(palette_s0_mem_reg_896_1023_4_4_n_0),
        .DPRA(s0_palette_addr[6:0]),
        .SPO(palette_s0_mem_reg_896_1023_4_4_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_896_1023_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "896" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_896_1023_5_5
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[5]),
        .DPO(palette_s0_mem_reg_896_1023_5_5_n_0),
        .DPRA(s0_palette_addr[6:0]),
        .SPO(palette_s0_mem_reg_896_1023_5_5_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_896_1023_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "896" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_896_1023_6_6
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[6]),
        .DPO(palette_s0_mem_reg_896_1023_6_6_n_0),
        .DPRA(DPRA),
        .SPO(palette_s0_mem_reg_896_1023_6_6_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_896_1023_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "896" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_896_1023_7_7
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[7]),
        .DPO(palette_s0_mem_reg_896_1023_7_7_n_0),
        .DPRA(DPRA),
        .SPO(palette_s0_mem_reg_896_1023_7_7_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_896_1023_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "896" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "8" *) 
  (* ram_slice_end = "8" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_896_1023_8_8
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[8]),
        .DPO(palette_s0_mem_reg_896_1023_8_8_n_0),
        .DPRA(DPRA),
        .SPO(palette_s0_mem_reg_896_1023_8_8_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_896_1023_8_8_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    palette_s0_mem_reg_896_1023_8_8_i_1
       (.I0(r0_map_cpu_addr[9]),
        .I1(r0_map_cpu_wen[1]),
        .I2(r0_map_cpu_addr[10]),
        .I3(p_0_in),
        .I4(r0_map_cpu_addr[7]),
        .I5(r0_map_cpu_addr[8]),
        .O(palette_s0_mem_reg_896_1023_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_s0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "896" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "9" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_s0_mem_reg_896_1023_9_9
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[9]),
        .DPO(palette_s0_mem_reg_896_1023_9_9_n_0),
        .DPRA(DPRA),
        .SPO(palette_s0_mem_reg_896_1023_9_9_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_s0_mem_reg_896_1023_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_t0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM128X1D #(
    .INIT(128'h000000000000000000000000000001A4)) 
    palette_t0_mem_reg_0_127_0_0
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[0]),
        .DPO(palette_t0_mem_reg_0_127_0_0_n_0),
        .DPRA(t0_palette_addr[6:0]),
        .SPO(palette_t0_mem_reg_0_127_0_0_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_t0_mem_reg_0_127_0_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    palette_t0_mem_reg_0_127_0_0_i_1
       (.I0(p_0_in),
        .I1(r0_map_cpu_addr[10]),
        .I2(r0_map_cpu_addr[9]),
        .I3(r0_map_cpu_addr[8]),
        .I4(r0_map_cpu_wen[0]),
        .I5(r0_map_cpu_addr[7]),
        .O(palette_t0_mem_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_t0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "10" *) 
  (* ram_slice_end = "10" *) 
  RAM128X1D #(
    .INIT(128'h000000000000000000000000000000CC)) 
    palette_t0_mem_reg_0_127_10_10
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[10]),
        .DPO(palette_t0_mem_reg_0_127_10_10_n_0),
        .DPRA(t0_palette_addr[6:0]),
        .SPO(palette_t0_mem_reg_0_127_10_10_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_t0_mem_reg_0_127_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_t0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "11" *) 
  (* ram_slice_end = "11" *) 
  RAM128X1D #(
    .INIT(128'h0000000000000000000000000000B2CC)) 
    palette_t0_mem_reg_0_127_11_11
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[11]),
        .DPO(palette_t0_mem_reg_0_127_11_11_n_0),
        .DPRA(t0_palette_addr[6:0]),
        .SPO(palette_t0_mem_reg_0_127_11_11_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_t0_mem_reg_0_127_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_t0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM128X1D #(
    .INIT(128'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE)) 
    palette_t0_mem_reg_0_127_12_12
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[12]),
        .DPO(palette_t0_mem_reg_0_127_12_12_n_0),
        .DPRA(t0_palette_addr[6:0]),
        .SPO(palette_t0_mem_reg_0_127_12_12_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_t0_mem_reg_0_127_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_t0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "13" *) 
  (* ram_slice_end = "13" *) 
  RAM128X1D #(
    .INIT(128'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE)) 
    palette_t0_mem_reg_0_127_13_13
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[13]),
        .DPO(palette_t0_mem_reg_0_127_13_13_n_0),
        .DPRA(t0_palette_addr[6:0]),
        .SPO(palette_t0_mem_reg_0_127_13_13_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_t0_mem_reg_0_127_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_t0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "14" *) 
  RAM128X1D #(
    .INIT(128'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE)) 
    palette_t0_mem_reg_0_127_14_14
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[14]),
        .DPO(palette_t0_mem_reg_0_127_14_14_n_0),
        .DPRA(t0_palette_addr[6:0]),
        .SPO(palette_t0_mem_reg_0_127_14_14_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_t0_mem_reg_0_127_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_t0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAM128X1D #(
    .INIT(128'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE)) 
    palette_t0_mem_reg_0_127_15_15
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[15]),
        .DPO(palette_t0_mem_reg_0_127_15_15_n_0),
        .DPRA(t0_palette_addr[6:0]),
        .SPO(palette_t0_mem_reg_0_127_15_15_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_t0_mem_reg_0_127_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_t0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAM128X1D #(
    .INIT(128'h000000000000000000000000000001A4)) 
    palette_t0_mem_reg_0_127_1_1
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[1]),
        .DPO(palette_t0_mem_reg_0_127_1_1_n_0),
        .DPRA(t0_palette_addr[6:0]),
        .SPO(palette_t0_mem_reg_0_127_1_1_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_t0_mem_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_t0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAM128X1D #(
    .INIT(128'h000000000000000000000000000001A4)) 
    palette_t0_mem_reg_0_127_2_2
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[2]),
        .DPO(palette_t0_mem_reg_0_127_2_2_n_0),
        .DPRA(t0_palette_addr[6:0]),
        .SPO(palette_t0_mem_reg_0_127_2_2_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_t0_mem_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_t0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAM128X1D #(
    .INIT(128'h0000000000000000000000000000E9A4)) 
    palette_t0_mem_reg_0_127_3_3
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[3]),
        .DPO(palette_t0_mem_reg_0_127_3_3_n_0),
        .DPRA(t0_palette_addr[6:0]),
        .SPO(palette_t0_mem_reg_0_127_3_3_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_t0_mem_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_t0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000154)) 
    palette_t0_mem_reg_0_127_4_4
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[4]),
        .DPO(palette_t0_mem_reg_0_127_4_4_n_0),
        .DPRA(t0_palette_addr[6:0]),
        .SPO(palette_t0_mem_reg_0_127_4_4_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_t0_mem_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_t0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000154)) 
    palette_t0_mem_reg_0_127_5_5
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[5]),
        .DPO(palette_t0_mem_reg_0_127_5_5_n_0),
        .DPRA(t0_palette_addr[6:0]),
        .SPO(palette_t0_mem_reg_0_127_5_5_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_t0_mem_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_t0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000154)) 
    palette_t0_mem_reg_0_127_6_6
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[6]),
        .DPO(palette_t0_mem_reg_0_127_6_6_n_0),
        .DPRA(t0_palette_addr[6:0]),
        .SPO(palette_t0_mem_reg_0_127_6_6_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_t0_mem_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_t0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM128X1D #(
    .INIT(128'h0000000000000000000000000000D554)) 
    palette_t0_mem_reg_0_127_7_7
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[7]),
        .DPO(palette_t0_mem_reg_0_127_7_7_n_0),
        .DPRA(t0_palette_addr[6:0]),
        .SPO(palette_t0_mem_reg_0_127_7_7_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_t0_mem_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_t0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "8" *) 
  (* ram_slice_end = "8" *) 
  RAM128X1D #(
    .INIT(128'h000000000000000000000000000000CC)) 
    palette_t0_mem_reg_0_127_8_8
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[8]),
        .DPO(palette_t0_mem_reg_0_127_8_8_n_0),
        .DPRA(t0_palette_addr[6:0]),
        .SPO(palette_t0_mem_reg_0_127_8_8_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_t0_mem_reg_0_127_8_8_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    palette_t0_mem_reg_0_127_8_8_i_1
       (.I0(p_0_in),
        .I1(r0_map_cpu_addr[10]),
        .I2(r0_map_cpu_addr[9]),
        .I3(r0_map_cpu_addr[8]),
        .I4(r0_map_cpu_wen[1]),
        .I5(r0_map_cpu_addr[7]),
        .O(palette_t0_mem_reg_0_127_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_t0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "9" *) 
  RAM128X1D #(
    .INIT(128'h000000000000000000000000000000CC)) 
    palette_t0_mem_reg_0_127_9_9
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[9]),
        .DPO(palette_t0_mem_reg_0_127_9_9_n_0),
        .DPRA(t0_palette_addr[6:0]),
        .SPO(palette_t0_mem_reg_0_127_9_9_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_t0_mem_reg_0_127_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_t0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_t0_mem_reg_128_255_0_0
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[0]),
        .DPO(palette_t0_mem_reg_128_255_0_0_n_0),
        .DPRA(t0_palette_addr[6:0]),
        .SPO(palette_t0_mem_reg_128_255_0_0_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_t0_mem_reg_128_255_0_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    palette_t0_mem_reg_128_255_0_0_i_1
       (.I0(p_0_in),
        .I1(r0_map_cpu_addr[10]),
        .I2(r0_map_cpu_addr[9]),
        .I3(r0_map_cpu_addr[8]),
        .I4(r0_map_cpu_wen[0]),
        .I5(r0_map_cpu_addr[7]),
        .O(palette_t0_mem_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_t0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "10" *) 
  (* ram_slice_end = "10" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_t0_mem_reg_128_255_10_10
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[10]),
        .DPO(palette_t0_mem_reg_128_255_10_10_n_0),
        .DPRA(t0_palette_addr[6:0]),
        .SPO(palette_t0_mem_reg_128_255_10_10_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_t0_mem_reg_128_255_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_t0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "11" *) 
  (* ram_slice_end = "11" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_t0_mem_reg_128_255_11_11
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[11]),
        .DPO(palette_t0_mem_reg_128_255_11_11_n_0),
        .DPRA(t0_palette_addr[6:0]),
        .SPO(palette_t0_mem_reg_128_255_11_11_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_t0_mem_reg_128_255_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_t0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM128X1D #(
    .INIT(128'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF)) 
    palette_t0_mem_reg_128_255_12_12
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[12]),
        .DPO(palette_t0_mem_reg_128_255_12_12_n_0),
        .DPRA(t0_palette_addr[6:0]),
        .SPO(palette_t0_mem_reg_128_255_12_12_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_t0_mem_reg_128_255_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_t0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "13" *) 
  (* ram_slice_end = "13" *) 
  RAM128X1D #(
    .INIT(128'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF)) 
    palette_t0_mem_reg_128_255_13_13
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[13]),
        .DPO(palette_t0_mem_reg_128_255_13_13_n_0),
        .DPRA(t0_palette_addr[6:0]),
        .SPO(palette_t0_mem_reg_128_255_13_13_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_t0_mem_reg_128_255_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_t0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "14" *) 
  RAM128X1D #(
    .INIT(128'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF)) 
    palette_t0_mem_reg_128_255_14_14
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[14]),
        .DPO(palette_t0_mem_reg_128_255_14_14_n_0),
        .DPRA(t0_palette_addr[6:0]),
        .SPO(palette_t0_mem_reg_128_255_14_14_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_t0_mem_reg_128_255_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_t0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAM128X1D #(
    .INIT(128'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF)) 
    palette_t0_mem_reg_128_255_15_15
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[15]),
        .DPO(palette_t0_mem_reg_128_255_15_15_n_0),
        .DPRA(t0_palette_addr[6:0]),
        .SPO(palette_t0_mem_reg_128_255_15_15_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_t0_mem_reg_128_255_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_t0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_t0_mem_reg_128_255_1_1
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[1]),
        .DPO(palette_t0_mem_reg_128_255_1_1_n_0),
        .DPRA(t0_palette_addr[6:0]),
        .SPO(palette_t0_mem_reg_128_255_1_1_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_t0_mem_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_t0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_t0_mem_reg_128_255_2_2
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[2]),
        .DPO(palette_t0_mem_reg_128_255_2_2_n_0),
        .DPRA(t0_palette_addr[6:0]),
        .SPO(palette_t0_mem_reg_128_255_2_2_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_t0_mem_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_t0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_t0_mem_reg_128_255_3_3
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[3]),
        .DPO(palette_t0_mem_reg_128_255_3_3_n_0),
        .DPRA(t0_palette_addr[6:0]),
        .SPO(palette_t0_mem_reg_128_255_3_3_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_t0_mem_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_t0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_t0_mem_reg_128_255_4_4
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[4]),
        .DPO(palette_t0_mem_reg_128_255_4_4_n_0),
        .DPRA(t0_palette_addr[6:0]),
        .SPO(palette_t0_mem_reg_128_255_4_4_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_t0_mem_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_t0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_t0_mem_reg_128_255_5_5
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[5]),
        .DPO(palette_t0_mem_reg_128_255_5_5_n_0),
        .DPRA(t0_palette_addr[6:0]),
        .SPO(palette_t0_mem_reg_128_255_5_5_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_t0_mem_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_t0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_t0_mem_reg_128_255_6_6
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[6]),
        .DPO(palette_t0_mem_reg_128_255_6_6_n_0),
        .DPRA(t0_palette_addr[6:0]),
        .SPO(palette_t0_mem_reg_128_255_6_6_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_t0_mem_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_t0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_t0_mem_reg_128_255_7_7
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[7]),
        .DPO(palette_t0_mem_reg_128_255_7_7_n_0),
        .DPRA(t0_palette_addr[6:0]),
        .SPO(palette_t0_mem_reg_128_255_7_7_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_t0_mem_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_t0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "8" *) 
  (* ram_slice_end = "8" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_t0_mem_reg_128_255_8_8
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[8]),
        .DPO(palette_t0_mem_reg_128_255_8_8_n_0),
        .DPRA(t0_palette_addr[6:0]),
        .SPO(palette_t0_mem_reg_128_255_8_8_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_t0_mem_reg_128_255_8_8_i_1_n_0));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    palette_t0_mem_reg_128_255_8_8_i_1
       (.I0(p_0_in),
        .I1(r0_map_cpu_addr[10]),
        .I2(r0_map_cpu_addr[9]),
        .I3(r0_map_cpu_addr[8]),
        .I4(r0_map_cpu_wen[1]),
        .I5(r0_map_cpu_addr[7]),
        .O(palette_t0_mem_reg_128_255_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_t0_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "9" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_t0_mem_reg_128_255_9_9
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[9]),
        .DPO(palette_t0_mem_reg_128_255_9_9_n_0),
        .DPRA(t0_palette_addr[6:0]),
        .SPO(palette_t0_mem_reg_128_255_9_9_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_t0_mem_reg_128_255_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_t1_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM128X1D #(
    .INIT(128'h000000000000000000000000000001A4)) 
    palette_t1_mem_reg_0_127_0_0
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[0]),
        .DPO(palette_t1_mem_reg_0_127_0_0_n_0),
        .DPRA(t1_palette_addr[6:0]),
        .SPO(palette_t1_mem_reg_0_127_0_0_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_t1_mem_reg_0_127_0_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    palette_t1_mem_reg_0_127_0_0_i_1
       (.I0(p_0_in),
        .I1(r0_map_cpu_addr[9]),
        .I2(r0_map_cpu_addr[8]),
        .I3(r0_map_cpu_addr[10]),
        .I4(r0_map_cpu_wen[0]),
        .I5(r0_map_cpu_addr[7]),
        .O(palette_t1_mem_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_t1_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "10" *) 
  (* ram_slice_end = "10" *) 
  RAM128X1D #(
    .INIT(128'h000000000000000000000000000000CC)) 
    palette_t1_mem_reg_0_127_10_10
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[10]),
        .DPO(palette_t1_mem_reg_0_127_10_10_n_0),
        .DPRA(t1_palette_addr[6:0]),
        .SPO(palette_t1_mem_reg_0_127_10_10_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_t1_mem_reg_0_127_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_t1_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "11" *) 
  (* ram_slice_end = "11" *) 
  RAM128X1D #(
    .INIT(128'h0000000000000000000000000000B2CC)) 
    palette_t1_mem_reg_0_127_11_11
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[11]),
        .DPO(palette_t1_mem_reg_0_127_11_11_n_0),
        .DPRA(t1_palette_addr[6:0]),
        .SPO(palette_t1_mem_reg_0_127_11_11_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_t1_mem_reg_0_127_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_t1_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM128X1D #(
    .INIT(128'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE)) 
    palette_t1_mem_reg_0_127_12_12
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[12]),
        .DPO(palette_t1_mem_reg_0_127_12_12_n_0),
        .DPRA(t1_palette_addr[6:0]),
        .SPO(palette_t1_mem_reg_0_127_12_12_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_t1_mem_reg_0_127_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_t1_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "13" *) 
  (* ram_slice_end = "13" *) 
  RAM128X1D #(
    .INIT(128'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE)) 
    palette_t1_mem_reg_0_127_13_13
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[13]),
        .DPO(palette_t1_mem_reg_0_127_13_13_n_0),
        .DPRA(t1_palette_addr[6:0]),
        .SPO(palette_t1_mem_reg_0_127_13_13_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_t1_mem_reg_0_127_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_t1_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "14" *) 
  RAM128X1D #(
    .INIT(128'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE)) 
    palette_t1_mem_reg_0_127_14_14
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[14]),
        .DPO(palette_t1_mem_reg_0_127_14_14_n_0),
        .DPRA(t1_palette_addr[6:0]),
        .SPO(palette_t1_mem_reg_0_127_14_14_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_t1_mem_reg_0_127_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_t1_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAM128X1D #(
    .INIT(128'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE)) 
    palette_t1_mem_reg_0_127_15_15
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[15]),
        .DPO(palette_t1_mem_reg_0_127_15_15_n_0),
        .DPRA(t1_palette_addr[6:0]),
        .SPO(palette_t1_mem_reg_0_127_15_15_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_t1_mem_reg_0_127_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_t1_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAM128X1D #(
    .INIT(128'h000000000000000000000000000001A4)) 
    palette_t1_mem_reg_0_127_1_1
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[1]),
        .DPO(palette_t1_mem_reg_0_127_1_1_n_0),
        .DPRA(t1_palette_addr[6:0]),
        .SPO(palette_t1_mem_reg_0_127_1_1_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_t1_mem_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_t1_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAM128X1D #(
    .INIT(128'h000000000000000000000000000001A4)) 
    palette_t1_mem_reg_0_127_2_2
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[2]),
        .DPO(palette_t1_mem_reg_0_127_2_2_n_0),
        .DPRA(t1_palette_addr[6:0]),
        .SPO(palette_t1_mem_reg_0_127_2_2_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_t1_mem_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_t1_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAM128X1D #(
    .INIT(128'h0000000000000000000000000000E9A4)) 
    palette_t1_mem_reg_0_127_3_3
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[3]),
        .DPO(palette_t1_mem_reg_0_127_3_3_n_0),
        .DPRA(t1_palette_addr[6:0]),
        .SPO(palette_t1_mem_reg_0_127_3_3_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_t1_mem_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_t1_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000154)) 
    palette_t1_mem_reg_0_127_4_4
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[4]),
        .DPO(palette_t1_mem_reg_0_127_4_4_n_0),
        .DPRA(t1_palette_addr[6:0]),
        .SPO(palette_t1_mem_reg_0_127_4_4_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_t1_mem_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_t1_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000154)) 
    palette_t1_mem_reg_0_127_5_5
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[5]),
        .DPO(palette_t1_mem_reg_0_127_5_5_n_0),
        .DPRA(t1_palette_addr[6:0]),
        .SPO(palette_t1_mem_reg_0_127_5_5_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_t1_mem_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_t1_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000154)) 
    palette_t1_mem_reg_0_127_6_6
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[6]),
        .DPO(palette_t1_mem_reg_0_127_6_6_n_0),
        .DPRA(t1_palette_addr[6:0]),
        .SPO(palette_t1_mem_reg_0_127_6_6_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_t1_mem_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_t1_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM128X1D #(
    .INIT(128'h0000000000000000000000000000D554)) 
    palette_t1_mem_reg_0_127_7_7
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[7]),
        .DPO(palette_t1_mem_reg_0_127_7_7_n_0),
        .DPRA(t1_palette_addr[6:0]),
        .SPO(palette_t1_mem_reg_0_127_7_7_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_t1_mem_reg_0_127_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_t1_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "8" *) 
  (* ram_slice_end = "8" *) 
  RAM128X1D #(
    .INIT(128'h000000000000000000000000000000CC)) 
    palette_t1_mem_reg_0_127_8_8
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[8]),
        .DPO(palette_t1_mem_reg_0_127_8_8_n_0),
        .DPRA(t1_palette_addr[6:0]),
        .SPO(palette_t1_mem_reg_0_127_8_8_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_t1_mem_reg_0_127_8_8_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    palette_t1_mem_reg_0_127_8_8_i_1
       (.I0(p_0_in),
        .I1(r0_map_cpu_addr[9]),
        .I2(r0_map_cpu_addr[8]),
        .I3(r0_map_cpu_addr[10]),
        .I4(r0_map_cpu_wen[1]),
        .I5(r0_map_cpu_addr[7]),
        .O(palette_t1_mem_reg_0_127_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_t1_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "127" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "9" *) 
  RAM128X1D #(
    .INIT(128'h000000000000000000000000000000CC)) 
    palette_t1_mem_reg_0_127_9_9
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[9]),
        .DPO(palette_t1_mem_reg_0_127_9_9_n_0),
        .DPRA(t1_palette_addr[6:0]),
        .SPO(palette_t1_mem_reg_0_127_9_9_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_t1_mem_reg_0_127_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_t1_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_t1_mem_reg_128_255_0_0
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[0]),
        .DPO(palette_t1_mem_reg_128_255_0_0_n_0),
        .DPRA(t1_palette_addr[6:0]),
        .SPO(palette_t1_mem_reg_128_255_0_0_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_t1_mem_reg_128_255_0_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    palette_t1_mem_reg_128_255_0_0_i_1
       (.I0(p_0_in),
        .I1(r0_map_cpu_addr[9]),
        .I2(r0_map_cpu_addr[8]),
        .I3(r0_map_cpu_addr[10]),
        .I4(r0_map_cpu_wen[0]),
        .I5(r0_map_cpu_addr[7]),
        .O(palette_t1_mem_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_t1_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "10" *) 
  (* ram_slice_end = "10" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_t1_mem_reg_128_255_10_10
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[10]),
        .DPO(palette_t1_mem_reg_128_255_10_10_n_0),
        .DPRA(t1_palette_addr[6:0]),
        .SPO(palette_t1_mem_reg_128_255_10_10_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_t1_mem_reg_128_255_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_t1_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "11" *) 
  (* ram_slice_end = "11" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_t1_mem_reg_128_255_11_11
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[11]),
        .DPO(palette_t1_mem_reg_128_255_11_11_n_0),
        .DPRA(t1_palette_addr[6:0]),
        .SPO(palette_t1_mem_reg_128_255_11_11_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_t1_mem_reg_128_255_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_t1_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM128X1D #(
    .INIT(128'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF)) 
    palette_t1_mem_reg_128_255_12_12
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[12]),
        .DPO(palette_t1_mem_reg_128_255_12_12_n_0),
        .DPRA(t1_palette_addr[6:0]),
        .SPO(palette_t1_mem_reg_128_255_12_12_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_t1_mem_reg_128_255_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_t1_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "13" *) 
  (* ram_slice_end = "13" *) 
  RAM128X1D #(
    .INIT(128'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF)) 
    palette_t1_mem_reg_128_255_13_13
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[13]),
        .DPO(palette_t1_mem_reg_128_255_13_13_n_0),
        .DPRA(t1_palette_addr[6:0]),
        .SPO(palette_t1_mem_reg_128_255_13_13_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_t1_mem_reg_128_255_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_t1_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "14" *) 
  RAM128X1D #(
    .INIT(128'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF)) 
    palette_t1_mem_reg_128_255_14_14
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[14]),
        .DPO(palette_t1_mem_reg_128_255_14_14_n_0),
        .DPRA(t1_palette_addr[6:0]),
        .SPO(palette_t1_mem_reg_128_255_14_14_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_t1_mem_reg_128_255_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_t1_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAM128X1D #(
    .INIT(128'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF)) 
    palette_t1_mem_reg_128_255_15_15
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[15]),
        .DPO(palette_t1_mem_reg_128_255_15_15_n_0),
        .DPRA(t1_palette_addr[6:0]),
        .SPO(palette_t1_mem_reg_128_255_15_15_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_t1_mem_reg_128_255_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_t1_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_t1_mem_reg_128_255_1_1
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[1]),
        .DPO(palette_t1_mem_reg_128_255_1_1_n_0),
        .DPRA(t1_palette_addr[6:0]),
        .SPO(palette_t1_mem_reg_128_255_1_1_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_t1_mem_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_t1_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_t1_mem_reg_128_255_2_2
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[2]),
        .DPO(palette_t1_mem_reg_128_255_2_2_n_0),
        .DPRA(t1_palette_addr[6:0]),
        .SPO(palette_t1_mem_reg_128_255_2_2_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_t1_mem_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_t1_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_t1_mem_reg_128_255_3_3
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[3]),
        .DPO(palette_t1_mem_reg_128_255_3_3_n_0),
        .DPRA(t1_palette_addr[6:0]),
        .SPO(palette_t1_mem_reg_128_255_3_3_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_t1_mem_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_t1_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_t1_mem_reg_128_255_4_4
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[4]),
        .DPO(palette_t1_mem_reg_128_255_4_4_n_0),
        .DPRA(t1_palette_addr[6:0]),
        .SPO(palette_t1_mem_reg_128_255_4_4_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_t1_mem_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_t1_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_t1_mem_reg_128_255_5_5
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[5]),
        .DPO(palette_t1_mem_reg_128_255_5_5_n_0),
        .DPRA(t1_palette_addr[6:0]),
        .SPO(palette_t1_mem_reg_128_255_5_5_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_t1_mem_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_t1_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_t1_mem_reg_128_255_6_6
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[6]),
        .DPO(palette_t1_mem_reg_128_255_6_6_n_0),
        .DPRA(t1_palette_addr[6:0]),
        .SPO(palette_t1_mem_reg_128_255_6_6_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_t1_mem_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_t1_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_t1_mem_reg_128_255_7_7
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[7]),
        .DPO(palette_t1_mem_reg_128_255_7_7_n_0),
        .DPRA(t1_palette_addr[6:0]),
        .SPO(palette_t1_mem_reg_128_255_7_7_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_t1_mem_reg_128_255_0_0_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_t1_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "8" *) 
  (* ram_slice_end = "8" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_t1_mem_reg_128_255_8_8
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[8]),
        .DPO(palette_t1_mem_reg_128_255_8_8_n_0),
        .DPRA(t1_palette_addr[6:0]),
        .SPO(palette_t1_mem_reg_128_255_8_8_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_t1_mem_reg_128_255_8_8_i_1_n_0));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    palette_t1_mem_reg_128_255_8_8_i_1
       (.I0(p_0_in),
        .I1(r0_map_cpu_addr[9]),
        .I2(r0_map_cpu_addr[8]),
        .I3(r0_map_cpu_addr[10]),
        .I4(r0_map_cpu_wen[1]),
        .I5(r0_map_cpu_addr[7]),
        .O(palette_t1_mem_reg_128_255_8_8_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-5 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4096" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/palette_t1_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "128" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "9" *) 
  RAM128X1D #(
    .INIT(128'h00000000000000000000000000000000)) 
    palette_t1_mem_reg_128_255_9_9
       (.A(r0_map_cpu_addr[6:0]),
        .D(r0_map_cpu_din[9]),
        .DPO(palette_t1_mem_reg_128_255_9_9_n_0),
        .DPRA(t1_palette_addr[6:0]),
        .SPO(palette_t1_mem_reg_128_255_9_9_n_1),
        .WCLK(r0_map_cpu_clk),
        .WE(palette_t1_mem_reg_128_255_8_8_i_1_n_0));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/reg_space_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    reg_space_mem_reg_0_255_0_0
       (.A(r0_map_cpu_addr[7:0]),
        .D(r0_map_cpu_din[0]),
        .O(data_out0__0[0]),
        .WCLK(r0_map_cpu_clk),
        .WE(p_0_in__0[0]));
  LUT5 #(
    .INIT(32'h00000008)) 
    reg_space_mem_reg_0_255_0_0_i_1
       (.I0(r0_map_cpu_wen[0]),
        .I1(p_0_in),
        .I2(r0_map_cpu_addr[9]),
        .I3(r0_map_cpu_addr[8]),
        .I4(r0_map_cpu_addr[10]),
        .O(p_0_in__0[0]));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/reg_space_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "10" *) 
  (* ram_slice_end = "10" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    reg_space_mem_reg_0_255_10_10
       (.A(r0_map_cpu_addr[7:0]),
        .D(r0_map_cpu_din[10]),
        .O(data_out0__0[10]),
        .WCLK(r0_map_cpu_clk),
        .WE(p_0_in__0[8]));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/reg_space_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "11" *) 
  (* ram_slice_end = "11" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    reg_space_mem_reg_0_255_11_11
       (.A(r0_map_cpu_addr[7:0]),
        .D(r0_map_cpu_din[11]),
        .O(data_out0__0[11]),
        .WCLK(r0_map_cpu_clk),
        .WE(p_0_in__0[8]));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/reg_space_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    reg_space_mem_reg_0_255_12_12
       (.A(r0_map_cpu_addr[7:0]),
        .D(r0_map_cpu_din[12]),
        .O(data_out0__0[12]),
        .WCLK(r0_map_cpu_clk),
        .WE(p_0_in__0[8]));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/reg_space_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "13" *) 
  (* ram_slice_end = "13" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    reg_space_mem_reg_0_255_13_13
       (.A(r0_map_cpu_addr[7:0]),
        .D(r0_map_cpu_din[13]),
        .O(data_out0__0[13]),
        .WCLK(r0_map_cpu_clk),
        .WE(p_0_in__0[8]));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/reg_space_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "14" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    reg_space_mem_reg_0_255_14_14
       (.A(r0_map_cpu_addr[7:0]),
        .D(r0_map_cpu_din[14]),
        .O(data_out0__0[14]),
        .WCLK(r0_map_cpu_clk),
        .WE(p_0_in__0[8]));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/reg_space_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    reg_space_mem_reg_0_255_15_15
       (.A(r0_map_cpu_addr[7:0]),
        .D(r0_map_cpu_din[15]),
        .O(data_out0__0[15]),
        .WCLK(r0_map_cpu_clk),
        .WE(p_0_in__0[8]));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/reg_space_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "16" *) 
  (* ram_slice_end = "16" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    reg_space_mem_reg_0_255_16_16
       (.A(r0_map_cpu_addr[7:0]),
        .D(r0_map_cpu_din[16]),
        .O(data_out0__0[16]),
        .WCLK(r0_map_cpu_clk),
        .WE(p_0_in__0[16]));
  LUT5 #(
    .INIT(32'h00000008)) 
    reg_space_mem_reg_0_255_16_16_i_1
       (.I0(r0_map_cpu_wen[2]),
        .I1(p_0_in),
        .I2(r0_map_cpu_addr[9]),
        .I3(r0_map_cpu_addr[8]),
        .I4(r0_map_cpu_addr[10]),
        .O(p_0_in__0[16]));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/reg_space_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "17" *) 
  (* ram_slice_end = "17" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    reg_space_mem_reg_0_255_17_17
       (.A(r0_map_cpu_addr[7:0]),
        .D(r0_map_cpu_din[17]),
        .O(data_out0__0[17]),
        .WCLK(r0_map_cpu_clk),
        .WE(p_0_in__0[16]));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/reg_space_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "18" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    reg_space_mem_reg_0_255_18_18
       (.A(r0_map_cpu_addr[7:0]),
        .D(r0_map_cpu_din[18]),
        .O(data_out0__0[18]),
        .WCLK(r0_map_cpu_clk),
        .WE(p_0_in__0[16]));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/reg_space_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "19" *) 
  (* ram_slice_end = "19" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    reg_space_mem_reg_0_255_19_19
       (.A(r0_map_cpu_addr[7:0]),
        .D(r0_map_cpu_din[19]),
        .O(data_out0__0[19]),
        .WCLK(r0_map_cpu_clk),
        .WE(p_0_in__0[16]));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/reg_space_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    reg_space_mem_reg_0_255_1_1
       (.A(r0_map_cpu_addr[7:0]),
        .D(r0_map_cpu_din[1]),
        .O(data_out0__0[1]),
        .WCLK(r0_map_cpu_clk),
        .WE(p_0_in__0[0]));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/reg_space_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "20" *) 
  (* ram_slice_end = "20" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    reg_space_mem_reg_0_255_20_20
       (.A(r0_map_cpu_addr[7:0]),
        .D(r0_map_cpu_din[20]),
        .O(data_out0__0[20]),
        .WCLK(r0_map_cpu_clk),
        .WE(p_0_in__0[16]));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/reg_space_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "21" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    reg_space_mem_reg_0_255_21_21
       (.A(r0_map_cpu_addr[7:0]),
        .D(r0_map_cpu_din[21]),
        .O(data_out0__0[21]),
        .WCLK(r0_map_cpu_clk),
        .WE(p_0_in__0[16]));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/reg_space_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "22" *) 
  (* ram_slice_end = "22" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    reg_space_mem_reg_0_255_22_22
       (.A(r0_map_cpu_addr[7:0]),
        .D(r0_map_cpu_din[22]),
        .O(data_out0__0[22]),
        .WCLK(r0_map_cpu_clk),
        .WE(p_0_in__0[16]));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/reg_space_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "23" *) 
  (* ram_slice_end = "23" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    reg_space_mem_reg_0_255_23_23
       (.A(r0_map_cpu_addr[7:0]),
        .D(r0_map_cpu_din[23]),
        .O(data_out0__0[23]),
        .WCLK(r0_map_cpu_clk),
        .WE(p_0_in__0[16]));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/reg_space_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "24" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    reg_space_mem_reg_0_255_24_24
       (.A(r0_map_cpu_addr[7:0]),
        .D(r0_map_cpu_din[24]),
        .O(data_out0__0[24]),
        .WCLK(r0_map_cpu_clk),
        .WE(p_0_in__0[24]));
  LUT5 #(
    .INIT(32'h00000008)) 
    reg_space_mem_reg_0_255_24_24_i_1
       (.I0(r0_map_cpu_wen[3]),
        .I1(p_0_in),
        .I2(r0_map_cpu_addr[9]),
        .I3(r0_map_cpu_addr[8]),
        .I4(r0_map_cpu_addr[10]),
        .O(p_0_in__0[24]));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/reg_space_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "25" *) 
  (* ram_slice_end = "25" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    reg_space_mem_reg_0_255_25_25
       (.A(r0_map_cpu_addr[7:0]),
        .D(r0_map_cpu_din[25]),
        .O(data_out0__0[25]),
        .WCLK(r0_map_cpu_clk),
        .WE(p_0_in__0[24]));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/reg_space_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "26" *) 
  (* ram_slice_end = "26" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    reg_space_mem_reg_0_255_26_26
       (.A(r0_map_cpu_addr[7:0]),
        .D(r0_map_cpu_din[26]),
        .O(data_out0__0[26]),
        .WCLK(r0_map_cpu_clk),
        .WE(p_0_in__0[24]));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/reg_space_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "27" *) 
  (* ram_slice_end = "27" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    reg_space_mem_reg_0_255_27_27
       (.A(r0_map_cpu_addr[7:0]),
        .D(r0_map_cpu_din[27]),
        .O(data_out0__0[27]),
        .WCLK(r0_map_cpu_clk),
        .WE(p_0_in__0[24]));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/reg_space_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "28" *) 
  (* ram_slice_end = "28" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    reg_space_mem_reg_0_255_28_28
       (.A(r0_map_cpu_addr[7:0]),
        .D(r0_map_cpu_din[28]),
        .O(data_out0__0[28]),
        .WCLK(r0_map_cpu_clk),
        .WE(p_0_in__0[24]));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/reg_space_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "29" *) 
  (* ram_slice_end = "29" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    reg_space_mem_reg_0_255_29_29
       (.A(r0_map_cpu_addr[7:0]),
        .D(r0_map_cpu_din[29]),
        .O(data_out0__0[29]),
        .WCLK(r0_map_cpu_clk),
        .WE(p_0_in__0[24]));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/reg_space_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    reg_space_mem_reg_0_255_2_2
       (.A(r0_map_cpu_addr[7:0]),
        .D(r0_map_cpu_din[2]),
        .O(data_out0__0[2]),
        .WCLK(r0_map_cpu_clk),
        .WE(p_0_in__0[0]));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/reg_space_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "30" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    reg_space_mem_reg_0_255_30_30
       (.A(r0_map_cpu_addr[7:0]),
        .D(r0_map_cpu_din[30]),
        .O(data_out0__0[30]),
        .WCLK(r0_map_cpu_clk),
        .WE(p_0_in__0[24]));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/reg_space_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "31" *) 
  (* ram_slice_end = "31" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    reg_space_mem_reg_0_255_31_31
       (.A(r0_map_cpu_addr[7:0]),
        .D(r0_map_cpu_din[31]),
        .O(data_out0__0[31]),
        .WCLK(r0_map_cpu_clk),
        .WE(p_0_in__0[24]));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/reg_space_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    reg_space_mem_reg_0_255_3_3
       (.A(r0_map_cpu_addr[7:0]),
        .D(r0_map_cpu_din[3]),
        .O(data_out0__0[3]),
        .WCLK(r0_map_cpu_clk),
        .WE(p_0_in__0[0]));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/reg_space_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    reg_space_mem_reg_0_255_4_4
       (.A(r0_map_cpu_addr[7:0]),
        .D(r0_map_cpu_din[4]),
        .O(data_out0__0[4]),
        .WCLK(r0_map_cpu_clk),
        .WE(p_0_in__0[0]));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/reg_space_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    reg_space_mem_reg_0_255_5_5
       (.A(r0_map_cpu_addr[7:0]),
        .D(r0_map_cpu_din[5]),
        .O(data_out0__0[5]),
        .WCLK(r0_map_cpu_clk),
        .WE(p_0_in__0[0]));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/reg_space_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    reg_space_mem_reg_0_255_6_6
       (.A(r0_map_cpu_addr[7:0]),
        .D(r0_map_cpu_din[6]),
        .O(data_out0__0[6]),
        .WCLK(r0_map_cpu_clk),
        .WE(p_0_in__0[0]));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/reg_space_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    reg_space_mem_reg_0_255_7_7
       (.A(r0_map_cpu_addr[7:0]),
        .D(r0_map_cpu_din[7]),
        .O(data_out0__0[7]),
        .WCLK(r0_map_cpu_clk),
        .WE(p_0_in__0[0]));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/reg_space_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "8" *) 
  (* ram_slice_end = "8" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    reg_space_mem_reg_0_255_8_8
       (.A(r0_map_cpu_addr[7:0]),
        .D(r0_map_cpu_din[8]),
        .O(data_out0__0[8]),
        .WCLK(r0_map_cpu_clk),
        .WE(p_0_in__0[8]));
  LUT5 #(
    .INIT(32'h00000008)) 
    reg_space_mem_reg_0_255_8_8_i_1
       (.I0(r0_map_cpu_wen[1]),
        .I1(p_0_in),
        .I2(r0_map_cpu_addr[9]),
        .I3(r0_map_cpu_addr[8]),
        .I4(r0_map_cpu_addr[10]),
        .O(p_0_in__0[8]));
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "REG_MEMORY/reg_space_mem_reg" *) 
  (* RTL_RAM_STYLE = "block" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "255" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "9" *) 
  RAM256X1S #(
    .INIT(256'h0000000000000000000000000000000000000000000000000000000000000000)) 
    reg_space_mem_reg_0_255_9_9
       (.A(r0_map_cpu_addr[7:0]),
        .D(r0_map_cpu_din[9]),
        .O(data_out0__0[9]),
        .WCLK(r0_map_cpu_clk),
        .WE(p_0_in__0[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s0_palette_data[0]_i_2 
       (.I0(palette_s0_mem_reg_384_511_0_0_n_0),
        .I1(palette_s0_mem_reg_256_383_0_0_n_0),
        .I2(s0_palette_addr[8]),
        .I3(palette_s0_mem_reg_128_255_0_0_n_0),
        .I4(s0_palette_addr[7]),
        .I5(palette_s0_mem_reg_0_127_0_0_n_0),
        .O(\s0_palette_data[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s0_palette_data[0]_i_3 
       (.I0(palette_s0_mem_reg_896_1023_0_0_n_0),
        .I1(palette_s0_mem_reg_768_895_0_0_n_0),
        .I2(s0_palette_addr[8]),
        .I3(palette_s0_mem_reg_640_767_0_0_n_0),
        .I4(s0_palette_addr[7]),
        .I5(palette_s0_mem_reg_512_639_0_0_n_0),
        .O(\s0_palette_data[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s0_palette_data[10]_i_2 
       (.I0(palette_s0_mem_reg_384_511_10_10_n_0),
        .I1(palette_s0_mem_reg_256_383_10_10_n_0),
        .I2(s0_palette_addr[8]),
        .I3(palette_s0_mem_reg_128_255_10_10_n_0),
        .I4(s0_palette_addr[7]),
        .I5(palette_s0_mem_reg_0_127_10_10_n_0),
        .O(\s0_palette_data[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s0_palette_data[10]_i_3 
       (.I0(palette_s0_mem_reg_896_1023_10_10_n_0),
        .I1(palette_s0_mem_reg_768_895_10_10_n_0),
        .I2(s0_palette_addr[8]),
        .I3(palette_s0_mem_reg_640_767_10_10_n_0),
        .I4(s0_palette_addr[7]),
        .I5(palette_s0_mem_reg_512_639_10_10_n_0),
        .O(\s0_palette_data[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s0_palette_data[11]_i_2 
       (.I0(palette_s0_mem_reg_384_511_11_11_n_0),
        .I1(palette_s0_mem_reg_256_383_11_11_n_0),
        .I2(s0_palette_addr[8]),
        .I3(palette_s0_mem_reg_128_255_11_11_n_0),
        .I4(s0_palette_addr[7]),
        .I5(palette_s0_mem_reg_0_127_11_11_n_0),
        .O(\s0_palette_data[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s0_palette_data[11]_i_3 
       (.I0(palette_s0_mem_reg_896_1023_11_11_n_0),
        .I1(palette_s0_mem_reg_768_895_11_11_n_0),
        .I2(s0_palette_addr[8]),
        .I3(palette_s0_mem_reg_640_767_11_11_n_0),
        .I4(s0_palette_addr[7]),
        .I5(palette_s0_mem_reg_512_639_11_11_n_0),
        .O(\s0_palette_data[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s0_palette_data[12]_i_2 
       (.I0(palette_s0_mem_reg_384_511_12_12_n_0),
        .I1(palette_s0_mem_reg_256_383_12_12_n_0),
        .I2(s0_palette_addr[8]),
        .I3(palette_s0_mem_reg_128_255_12_12_n_0),
        .I4(s0_palette_addr[7]),
        .I5(palette_s0_mem_reg_0_127_12_12_n_0),
        .O(\s0_palette_data[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s0_palette_data[12]_i_3 
       (.I0(palette_s0_mem_reg_896_1023_12_12_n_0),
        .I1(palette_s0_mem_reg_768_895_12_12_n_0),
        .I2(s0_palette_addr[8]),
        .I3(palette_s0_mem_reg_640_767_12_12_n_0),
        .I4(s0_palette_addr[7]),
        .I5(palette_s0_mem_reg_512_639_12_12_n_0),
        .O(\s0_palette_data[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s0_palette_data[13]_i_2 
       (.I0(palette_s0_mem_reg_384_511_13_13_n_0),
        .I1(palette_s0_mem_reg_256_383_13_13_n_0),
        .I2(s0_palette_addr[8]),
        .I3(palette_s0_mem_reg_128_255_13_13_n_0),
        .I4(s0_palette_addr[7]),
        .I5(palette_s0_mem_reg_0_127_13_13_n_0),
        .O(\s0_palette_data[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s0_palette_data[13]_i_3 
       (.I0(palette_s0_mem_reg_896_1023_13_13_n_0),
        .I1(palette_s0_mem_reg_768_895_13_13_n_0),
        .I2(s0_palette_addr[8]),
        .I3(palette_s0_mem_reg_640_767_13_13_n_0),
        .I4(s0_palette_addr[7]),
        .I5(palette_s0_mem_reg_512_639_13_13_n_0),
        .O(\s0_palette_data[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s0_palette_data[14]_i_2 
       (.I0(palette_s0_mem_reg_384_511_14_14_n_0),
        .I1(palette_s0_mem_reg_256_383_14_14_n_0),
        .I2(s0_palette_addr[8]),
        .I3(palette_s0_mem_reg_128_255_14_14_n_0),
        .I4(s0_palette_addr[7]),
        .I5(palette_s0_mem_reg_0_127_14_14_n_0),
        .O(\s0_palette_data[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s0_palette_data[14]_i_3 
       (.I0(palette_s0_mem_reg_896_1023_14_14_n_0),
        .I1(palette_s0_mem_reg_768_895_14_14_n_0),
        .I2(s0_palette_addr[8]),
        .I3(palette_s0_mem_reg_640_767_14_14_n_0),
        .I4(s0_palette_addr[7]),
        .I5(palette_s0_mem_reg_512_639_14_14_n_0),
        .O(\s0_palette_data[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s0_palette_data[15]_i_2 
       (.I0(palette_s0_mem_reg_384_511_15_15_n_0),
        .I1(palette_s0_mem_reg_256_383_15_15_n_0),
        .I2(s0_palette_addr[8]),
        .I3(palette_s0_mem_reg_128_255_15_15_n_0),
        .I4(s0_palette_addr[7]),
        .I5(palette_s0_mem_reg_0_127_15_15_n_0),
        .O(\s0_palette_data[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s0_palette_data[15]_i_3 
       (.I0(palette_s0_mem_reg_896_1023_15_15_n_0),
        .I1(palette_s0_mem_reg_768_895_15_15_n_0),
        .I2(s0_palette_addr[8]),
        .I3(palette_s0_mem_reg_640_767_15_15_n_0),
        .I4(s0_palette_addr[7]),
        .I5(palette_s0_mem_reg_512_639_15_15_n_0),
        .O(\s0_palette_data[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s0_palette_data[1]_i_2 
       (.I0(palette_s0_mem_reg_384_511_1_1_n_0),
        .I1(palette_s0_mem_reg_256_383_1_1_n_0),
        .I2(s0_palette_addr[8]),
        .I3(palette_s0_mem_reg_128_255_1_1_n_0),
        .I4(s0_palette_addr[7]),
        .I5(palette_s0_mem_reg_0_127_1_1_n_0),
        .O(\s0_palette_data[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s0_palette_data[1]_i_3 
       (.I0(palette_s0_mem_reg_896_1023_1_1_n_0),
        .I1(palette_s0_mem_reg_768_895_1_1_n_0),
        .I2(s0_palette_addr[8]),
        .I3(palette_s0_mem_reg_640_767_1_1_n_0),
        .I4(s0_palette_addr[7]),
        .I5(palette_s0_mem_reg_512_639_1_1_n_0),
        .O(\s0_palette_data[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s0_palette_data[2]_i_2 
       (.I0(palette_s0_mem_reg_384_511_2_2_n_0),
        .I1(palette_s0_mem_reg_256_383_2_2_n_0),
        .I2(s0_palette_addr[8]),
        .I3(palette_s0_mem_reg_128_255_2_2_n_0),
        .I4(s0_palette_addr[7]),
        .I5(palette_s0_mem_reg_0_127_2_2_n_0),
        .O(\s0_palette_data[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s0_palette_data[2]_i_3 
       (.I0(palette_s0_mem_reg_896_1023_2_2_n_0),
        .I1(palette_s0_mem_reg_768_895_2_2_n_0),
        .I2(s0_palette_addr[8]),
        .I3(palette_s0_mem_reg_640_767_2_2_n_0),
        .I4(s0_palette_addr[7]),
        .I5(palette_s0_mem_reg_512_639_2_2_n_0),
        .O(\s0_palette_data[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s0_palette_data[3]_i_2 
       (.I0(palette_s0_mem_reg_384_511_3_3_n_0),
        .I1(palette_s0_mem_reg_256_383_3_3_n_0),
        .I2(s0_palette_addr[8]),
        .I3(palette_s0_mem_reg_128_255_3_3_n_0),
        .I4(s0_palette_addr[7]),
        .I5(palette_s0_mem_reg_0_127_3_3_n_0),
        .O(\s0_palette_data[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s0_palette_data[3]_i_3 
       (.I0(palette_s0_mem_reg_896_1023_3_3_n_0),
        .I1(palette_s0_mem_reg_768_895_3_3_n_0),
        .I2(s0_palette_addr[8]),
        .I3(palette_s0_mem_reg_640_767_3_3_n_0),
        .I4(s0_palette_addr[7]),
        .I5(palette_s0_mem_reg_512_639_3_3_n_0),
        .O(\s0_palette_data[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s0_palette_data[4]_i_2 
       (.I0(palette_s0_mem_reg_384_511_4_4_n_0),
        .I1(palette_s0_mem_reg_256_383_4_4_n_0),
        .I2(s0_palette_addr[8]),
        .I3(palette_s0_mem_reg_128_255_4_4_n_0),
        .I4(s0_palette_addr[7]),
        .I5(palette_s0_mem_reg_0_127_4_4_n_0),
        .O(\s0_palette_data[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s0_palette_data[4]_i_3 
       (.I0(palette_s0_mem_reg_896_1023_4_4_n_0),
        .I1(palette_s0_mem_reg_768_895_4_4_n_0),
        .I2(s0_palette_addr[8]),
        .I3(palette_s0_mem_reg_640_767_4_4_n_0),
        .I4(s0_palette_addr[7]),
        .I5(palette_s0_mem_reg_512_639_4_4_n_0),
        .O(\s0_palette_data[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s0_palette_data[5]_i_2 
       (.I0(palette_s0_mem_reg_384_511_5_5_n_0),
        .I1(palette_s0_mem_reg_256_383_5_5_n_0),
        .I2(s0_palette_addr[8]),
        .I3(palette_s0_mem_reg_128_255_5_5_n_0),
        .I4(s0_palette_addr[7]),
        .I5(palette_s0_mem_reg_0_127_5_5_n_0),
        .O(\s0_palette_data[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s0_palette_data[5]_i_3 
       (.I0(palette_s0_mem_reg_896_1023_5_5_n_0),
        .I1(palette_s0_mem_reg_768_895_5_5_n_0),
        .I2(s0_palette_addr[8]),
        .I3(palette_s0_mem_reg_640_767_5_5_n_0),
        .I4(s0_palette_addr[7]),
        .I5(palette_s0_mem_reg_512_639_5_5_n_0),
        .O(\s0_palette_data[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s0_palette_data[6]_i_2 
       (.I0(palette_s0_mem_reg_384_511_6_6_n_0),
        .I1(palette_s0_mem_reg_256_383_6_6_n_0),
        .I2(s0_palette_addr[8]),
        .I3(palette_s0_mem_reg_128_255_6_6_n_0),
        .I4(s0_palette_addr[7]),
        .I5(palette_s0_mem_reg_0_127_6_6_n_0),
        .O(\s0_palette_data[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s0_palette_data[6]_i_3 
       (.I0(palette_s0_mem_reg_896_1023_6_6_n_0),
        .I1(palette_s0_mem_reg_768_895_6_6_n_0),
        .I2(s0_palette_addr[8]),
        .I3(palette_s0_mem_reg_640_767_6_6_n_0),
        .I4(s0_palette_addr[7]),
        .I5(palette_s0_mem_reg_512_639_6_6_n_0),
        .O(\s0_palette_data[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s0_palette_data[7]_i_2 
       (.I0(palette_s0_mem_reg_384_511_7_7_n_0),
        .I1(palette_s0_mem_reg_256_383_7_7_n_0),
        .I2(s0_palette_addr[8]),
        .I3(palette_s0_mem_reg_128_255_7_7_n_0),
        .I4(s0_palette_addr[7]),
        .I5(palette_s0_mem_reg_0_127_7_7_n_0),
        .O(\s0_palette_data[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s0_palette_data[7]_i_3 
       (.I0(palette_s0_mem_reg_896_1023_7_7_n_0),
        .I1(palette_s0_mem_reg_768_895_7_7_n_0),
        .I2(s0_palette_addr[8]),
        .I3(palette_s0_mem_reg_640_767_7_7_n_0),
        .I4(s0_palette_addr[7]),
        .I5(palette_s0_mem_reg_512_639_7_7_n_0),
        .O(\s0_palette_data[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s0_palette_data[8]_i_2 
       (.I0(palette_s0_mem_reg_384_511_8_8_n_0),
        .I1(palette_s0_mem_reg_256_383_8_8_n_0),
        .I2(s0_palette_addr[8]),
        .I3(palette_s0_mem_reg_128_255_8_8_n_0),
        .I4(s0_palette_addr[7]),
        .I5(palette_s0_mem_reg_0_127_8_8_n_0),
        .O(\s0_palette_data[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s0_palette_data[8]_i_3 
       (.I0(palette_s0_mem_reg_896_1023_8_8_n_0),
        .I1(palette_s0_mem_reg_768_895_8_8_n_0),
        .I2(s0_palette_addr[8]),
        .I3(palette_s0_mem_reg_640_767_8_8_n_0),
        .I4(s0_palette_addr[7]),
        .I5(palette_s0_mem_reg_512_639_8_8_n_0),
        .O(\s0_palette_data[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s0_palette_data[9]_i_2 
       (.I0(palette_s0_mem_reg_384_511_9_9_n_0),
        .I1(palette_s0_mem_reg_256_383_9_9_n_0),
        .I2(s0_palette_addr[8]),
        .I3(palette_s0_mem_reg_128_255_9_9_n_0),
        .I4(s0_palette_addr[7]),
        .I5(palette_s0_mem_reg_0_127_9_9_n_0),
        .O(\s0_palette_data[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s0_palette_data[9]_i_3 
       (.I0(palette_s0_mem_reg_896_1023_9_9_n_0),
        .I1(palette_s0_mem_reg_768_895_9_9_n_0),
        .I2(s0_palette_addr[8]),
        .I3(palette_s0_mem_reg_640_767_9_9_n_0),
        .I4(s0_palette_addr[7]),
        .I5(palette_s0_mem_reg_512_639_9_9_n_0),
        .O(\s0_palette_data[9]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s0_palette_data_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s0_palette_data0[0]),
        .Q(s0_palette_data[0]),
        .R(1'b0));
  MUXF7 \s0_palette_data_reg[0]_i_1 
       (.I0(\s0_palette_data[0]_i_2_n_0 ),
        .I1(\s0_palette_data[0]_i_3_n_0 ),
        .O(s0_palette_data0[0]),
        .S(s0_palette_addr[9]));
  FDRE #(
    .INIT(1'b0)) 
    \s0_palette_data_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s0_palette_data0[10]),
        .Q(s0_palette_data[10]),
        .R(1'b0));
  MUXF7 \s0_palette_data_reg[10]_i_1 
       (.I0(\s0_palette_data[10]_i_2_n_0 ),
        .I1(\s0_palette_data[10]_i_3_n_0 ),
        .O(s0_palette_data0[10]),
        .S(s0_palette_addr[9]));
  FDRE #(
    .INIT(1'b0)) 
    \s0_palette_data_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s0_palette_data0[11]),
        .Q(s0_palette_data[11]),
        .R(1'b0));
  MUXF7 \s0_palette_data_reg[11]_i_1 
       (.I0(\s0_palette_data[11]_i_2_n_0 ),
        .I1(\s0_palette_data[11]_i_3_n_0 ),
        .O(s0_palette_data0[11]),
        .S(s0_palette_addr[9]));
  FDRE #(
    .INIT(1'b1)) 
    \s0_palette_data_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s0_palette_data0[12]),
        .Q(s0_palette_data[12]),
        .R(1'b0));
  MUXF7 \s0_palette_data_reg[12]_i_1 
       (.I0(\s0_palette_data[12]_i_2_n_0 ),
        .I1(\s0_palette_data[12]_i_3_n_0 ),
        .O(s0_palette_data0[12]),
        .S(s0_palette_addr[9]));
  FDRE #(
    .INIT(1'b1)) 
    \s0_palette_data_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s0_palette_data0[13]),
        .Q(s0_palette_data[13]),
        .R(1'b0));
  MUXF7 \s0_palette_data_reg[13]_i_1 
       (.I0(\s0_palette_data[13]_i_2_n_0 ),
        .I1(\s0_palette_data[13]_i_3_n_0 ),
        .O(s0_palette_data0[13]),
        .S(s0_palette_addr[9]));
  FDRE #(
    .INIT(1'b1)) 
    \s0_palette_data_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s0_palette_data0[14]),
        .Q(s0_palette_data[14]),
        .R(1'b0));
  MUXF7 \s0_palette_data_reg[14]_i_1 
       (.I0(\s0_palette_data[14]_i_2_n_0 ),
        .I1(\s0_palette_data[14]_i_3_n_0 ),
        .O(s0_palette_data0[14]),
        .S(s0_palette_addr[9]));
  FDRE #(
    .INIT(1'b1)) 
    \s0_palette_data_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s0_palette_data0[15]),
        .Q(s0_palette_data[15]),
        .R(1'b0));
  MUXF7 \s0_palette_data_reg[15]_i_1 
       (.I0(\s0_palette_data[15]_i_2_n_0 ),
        .I1(\s0_palette_data[15]_i_3_n_0 ),
        .O(s0_palette_data0[15]),
        .S(s0_palette_addr[9]));
  FDRE #(
    .INIT(1'b0)) 
    \s0_palette_data_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s0_palette_data0[1]),
        .Q(s0_palette_data[1]),
        .R(1'b0));
  MUXF7 \s0_palette_data_reg[1]_i_1 
       (.I0(\s0_palette_data[1]_i_2_n_0 ),
        .I1(\s0_palette_data[1]_i_3_n_0 ),
        .O(s0_palette_data0[1]),
        .S(s0_palette_addr[9]));
  FDRE #(
    .INIT(1'b0)) 
    \s0_palette_data_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s0_palette_data0[2]),
        .Q(s0_palette_data[2]),
        .R(1'b0));
  MUXF7 \s0_palette_data_reg[2]_i_1 
       (.I0(\s0_palette_data[2]_i_2_n_0 ),
        .I1(\s0_palette_data[2]_i_3_n_0 ),
        .O(s0_palette_data0[2]),
        .S(s0_palette_addr[9]));
  FDRE #(
    .INIT(1'b0)) 
    \s0_palette_data_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s0_palette_data0[3]),
        .Q(s0_palette_data[3]),
        .R(1'b0));
  MUXF7 \s0_palette_data_reg[3]_i_1 
       (.I0(\s0_palette_data[3]_i_2_n_0 ),
        .I1(\s0_palette_data[3]_i_3_n_0 ),
        .O(s0_palette_data0[3]),
        .S(s0_palette_addr[9]));
  FDRE #(
    .INIT(1'b0)) 
    \s0_palette_data_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s0_palette_data0[4]),
        .Q(s0_palette_data[4]),
        .R(1'b0));
  MUXF7 \s0_palette_data_reg[4]_i_1 
       (.I0(\s0_palette_data[4]_i_2_n_0 ),
        .I1(\s0_palette_data[4]_i_3_n_0 ),
        .O(s0_palette_data0[4]),
        .S(s0_palette_addr[9]));
  FDRE #(
    .INIT(1'b0)) 
    \s0_palette_data_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s0_palette_data0[5]),
        .Q(s0_palette_data[5]),
        .R(1'b0));
  MUXF7 \s0_palette_data_reg[5]_i_1 
       (.I0(\s0_palette_data[5]_i_2_n_0 ),
        .I1(\s0_palette_data[5]_i_3_n_0 ),
        .O(s0_palette_data0[5]),
        .S(s0_palette_addr[9]));
  FDRE #(
    .INIT(1'b0)) 
    \s0_palette_data_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s0_palette_data0[6]),
        .Q(s0_palette_data[6]),
        .R(1'b0));
  MUXF7 \s0_palette_data_reg[6]_i_1 
       (.I0(\s0_palette_data[6]_i_2_n_0 ),
        .I1(\s0_palette_data[6]_i_3_n_0 ),
        .O(s0_palette_data0[6]),
        .S(s0_palette_addr[9]));
  FDRE #(
    .INIT(1'b0)) 
    \s0_palette_data_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s0_palette_data0[7]),
        .Q(s0_palette_data[7]),
        .R(1'b0));
  MUXF7 \s0_palette_data_reg[7]_i_1 
       (.I0(\s0_palette_data[7]_i_2_n_0 ),
        .I1(\s0_palette_data[7]_i_3_n_0 ),
        .O(s0_palette_data0[7]),
        .S(s0_palette_addr[9]));
  FDRE #(
    .INIT(1'b0)) 
    \s0_palette_data_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s0_palette_data0[8]),
        .Q(s0_palette_data[8]),
        .R(1'b0));
  MUXF7 \s0_palette_data_reg[8]_i_1 
       (.I0(\s0_palette_data[8]_i_2_n_0 ),
        .I1(\s0_palette_data[8]_i_3_n_0 ),
        .O(s0_palette_data0[8]),
        .S(s0_palette_addr[9]));
  FDRE #(
    .INIT(1'b0)) 
    \s0_palette_data_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s0_palette_data0[9]),
        .Q(s0_palette_data[9]),
        .R(1'b0));
  MUXF7 \s0_palette_data_reg[9]_i_1 
       (.I0(\s0_palette_data[9]_i_2_n_0 ),
        .I1(\s0_palette_data[9]_i_3_n_0 ),
        .O(s0_palette_data0[9]),
        .S(s0_palette_addr[9]));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \t0_palette_data[0]_i_1 
       (.I0(palette_t0_mem_reg_128_255_0_0_n_0),
        .I1(t0_palette_addr[7]),
        .I2(palette_t0_mem_reg_0_127_0_0_n_0),
        .O(t0_palette_data0[0]));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \t0_palette_data[10]_i_1 
       (.I0(palette_t0_mem_reg_128_255_10_10_n_0),
        .I1(t0_palette_addr[7]),
        .I2(palette_t0_mem_reg_0_127_10_10_n_0),
        .O(t0_palette_data0[10]));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \t0_palette_data[11]_i_1 
       (.I0(palette_t0_mem_reg_128_255_11_11_n_0),
        .I1(t0_palette_addr[7]),
        .I2(palette_t0_mem_reg_0_127_11_11_n_0),
        .O(t0_palette_data0[11]));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \t0_palette_data[12]_i_1 
       (.I0(palette_t0_mem_reg_128_255_12_12_n_0),
        .I1(t0_palette_addr[7]),
        .I2(palette_t0_mem_reg_0_127_12_12_n_0),
        .O(t0_palette_data0[12]));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \t0_palette_data[13]_i_1 
       (.I0(palette_t0_mem_reg_128_255_13_13_n_0),
        .I1(t0_palette_addr[7]),
        .I2(palette_t0_mem_reg_0_127_13_13_n_0),
        .O(t0_palette_data0[13]));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \t0_palette_data[14]_i_1 
       (.I0(palette_t0_mem_reg_128_255_14_14_n_0),
        .I1(t0_palette_addr[7]),
        .I2(palette_t0_mem_reg_0_127_14_14_n_0),
        .O(t0_palette_data0[14]));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \t0_palette_data[15]_i_1 
       (.I0(palette_t0_mem_reg_128_255_15_15_n_0),
        .I1(t0_palette_addr[7]),
        .I2(palette_t0_mem_reg_0_127_15_15_n_0),
        .O(t0_palette_data0[15]));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \t0_palette_data[1]_i_1 
       (.I0(palette_t0_mem_reg_128_255_1_1_n_0),
        .I1(t0_palette_addr[7]),
        .I2(palette_t0_mem_reg_0_127_1_1_n_0),
        .O(t0_palette_data0[1]));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \t0_palette_data[2]_i_1 
       (.I0(palette_t0_mem_reg_128_255_2_2_n_0),
        .I1(t0_palette_addr[7]),
        .I2(palette_t0_mem_reg_0_127_2_2_n_0),
        .O(t0_palette_data0[2]));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \t0_palette_data[3]_i_1 
       (.I0(palette_t0_mem_reg_128_255_3_3_n_0),
        .I1(t0_palette_addr[7]),
        .I2(palette_t0_mem_reg_0_127_3_3_n_0),
        .O(t0_palette_data0[3]));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \t0_palette_data[4]_i_1 
       (.I0(palette_t0_mem_reg_128_255_4_4_n_0),
        .I1(t0_palette_addr[7]),
        .I2(palette_t0_mem_reg_0_127_4_4_n_0),
        .O(t0_palette_data0[4]));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \t0_palette_data[5]_i_1 
       (.I0(palette_t0_mem_reg_128_255_5_5_n_0),
        .I1(t0_palette_addr[7]),
        .I2(palette_t0_mem_reg_0_127_5_5_n_0),
        .O(t0_palette_data0[5]));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \t0_palette_data[6]_i_1 
       (.I0(palette_t0_mem_reg_128_255_6_6_n_0),
        .I1(t0_palette_addr[7]),
        .I2(palette_t0_mem_reg_0_127_6_6_n_0),
        .O(t0_palette_data0[6]));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \t0_palette_data[7]_i_1 
       (.I0(palette_t0_mem_reg_128_255_7_7_n_0),
        .I1(t0_palette_addr[7]),
        .I2(palette_t0_mem_reg_0_127_7_7_n_0),
        .O(t0_palette_data0[7]));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \t0_palette_data[8]_i_1 
       (.I0(palette_t0_mem_reg_128_255_8_8_n_0),
        .I1(t0_palette_addr[7]),
        .I2(palette_t0_mem_reg_0_127_8_8_n_0),
        .O(t0_palette_data0[8]));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \t0_palette_data[9]_i_1 
       (.I0(palette_t0_mem_reg_128_255_9_9_n_0),
        .I1(t0_palette_addr[7]),
        .I2(palette_t0_mem_reg_0_127_9_9_n_0),
        .O(t0_palette_data0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \t0_palette_data_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(t0_palette_data0[0]),
        .Q(t0_palette_data[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t0_palette_data_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(t0_palette_data0[10]),
        .Q(t0_palette_data[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t0_palette_data_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(t0_palette_data0[11]),
        .Q(t0_palette_data[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \t0_palette_data_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(t0_palette_data0[12]),
        .Q(t0_palette_data[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \t0_palette_data_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(t0_palette_data0[13]),
        .Q(t0_palette_data[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \t0_palette_data_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(t0_palette_data0[14]),
        .Q(t0_palette_data[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \t0_palette_data_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(t0_palette_data0[15]),
        .Q(t0_palette_data[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t0_palette_data_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(t0_palette_data0[1]),
        .Q(t0_palette_data[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t0_palette_data_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(t0_palette_data0[2]),
        .Q(t0_palette_data[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t0_palette_data_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(t0_palette_data0[3]),
        .Q(t0_palette_data[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t0_palette_data_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(t0_palette_data0[4]),
        .Q(t0_palette_data[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t0_palette_data_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(t0_palette_data0[5]),
        .Q(t0_palette_data[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t0_palette_data_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(t0_palette_data0[6]),
        .Q(t0_palette_data[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t0_palette_data_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(t0_palette_data0[7]),
        .Q(t0_palette_data[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t0_palette_data_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(t0_palette_data0[8]),
        .Q(t0_palette_data[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t0_palette_data_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(t0_palette_data0[9]),
        .Q(t0_palette_data[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \t0_x_off_reg[7]_i_1 
       (.I0(r0_map_cpu_wen[0]),
        .I1(r0_map_cpu_addr[0]),
        .I2(r0_map_cpu_addr[1]),
        .I3(r0_map_cpu_addr[2]),
        .I4(\t0_x_off_reg[7]_i_2_n_0 ),
        .I5(r0_map_cpu_addr[3]),
        .O(\t0_x_off_reg[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \t0_x_off_reg[7]_i_2 
       (.I0(\t0_x_off_reg[7]_i_3_n_0 ),
        .I1(r0_map_cpu_addr[7]),
        .I2(r0_map_cpu_addr[6]),
        .I3(r0_map_cpu_addr[5]),
        .I4(r0_map_cpu_addr[4]),
        .O(\t0_x_off_reg[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \t0_x_off_reg[7]_i_3 
       (.I0(r0_map_cpu_addr[10]),
        .I1(r0_map_cpu_addr[8]),
        .I2(r0_map_cpu_addr[9]),
        .I3(p_0_in),
        .O(\t0_x_off_reg[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \t0_x_off_reg[8]_i_1 
       (.I0(r0_map_cpu_din[8]),
        .I1(r0_map_cpu_wen[1]),
        .I2(r0_map_cpu_addr[0]),
        .I3(r0_map_cpu_addr[1]),
        .I4(\t0_x_off_reg[9]_i_2_n_0 ),
        .I5(t0_x_off_reg[8]),
        .O(\t0_x_off_reg[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    \t0_x_off_reg[9]_i_1 
       (.I0(r0_map_cpu_din[9]),
        .I1(r0_map_cpu_wen[1]),
        .I2(r0_map_cpu_addr[0]),
        .I3(r0_map_cpu_addr[1]),
        .I4(\t0_x_off_reg[9]_i_2_n_0 ),
        .I5(t0_x_off_reg[9]),
        .O(\t0_x_off_reg[9]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \t0_x_off_reg[9]_i_2 
       (.I0(r0_map_cpu_addr[3]),
        .I1(\t0_x_off_reg[7]_i_2_n_0 ),
        .I2(r0_map_cpu_addr[2]),
        .O(\t0_x_off_reg[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \t0_x_off_reg_reg[0] 
       (.C(r0_map_cpu_clk),
        .CE(\t0_x_off_reg[7]_i_1_n_0 ),
        .D(r0_map_cpu_din[0]),
        .Q(t0_x_off_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t0_x_off_reg_reg[1] 
       (.C(r0_map_cpu_clk),
        .CE(\t0_x_off_reg[7]_i_1_n_0 ),
        .D(r0_map_cpu_din[1]),
        .Q(t0_x_off_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t0_x_off_reg_reg[2] 
       (.C(r0_map_cpu_clk),
        .CE(\t0_x_off_reg[7]_i_1_n_0 ),
        .D(r0_map_cpu_din[2]),
        .Q(t0_x_off_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t0_x_off_reg_reg[3] 
       (.C(r0_map_cpu_clk),
        .CE(\t0_x_off_reg[7]_i_1_n_0 ),
        .D(r0_map_cpu_din[3]),
        .Q(t0_x_off_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t0_x_off_reg_reg[4] 
       (.C(r0_map_cpu_clk),
        .CE(\t0_x_off_reg[7]_i_1_n_0 ),
        .D(r0_map_cpu_din[4]),
        .Q(t0_x_off_reg[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t0_x_off_reg_reg[5] 
       (.C(r0_map_cpu_clk),
        .CE(\t0_x_off_reg[7]_i_1_n_0 ),
        .D(r0_map_cpu_din[5]),
        .Q(t0_x_off_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t0_x_off_reg_reg[6] 
       (.C(r0_map_cpu_clk),
        .CE(\t0_x_off_reg[7]_i_1_n_0 ),
        .D(r0_map_cpu_din[6]),
        .Q(t0_x_off_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t0_x_off_reg_reg[7] 
       (.C(r0_map_cpu_clk),
        .CE(\t0_x_off_reg[7]_i_1_n_0 ),
        .D(r0_map_cpu_din[7]),
        .Q(t0_x_off_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t0_x_off_reg_reg[8] 
       (.C(r0_map_cpu_clk),
        .CE(1'b1),
        .D(\t0_x_off_reg[8]_i_1_n_0 ),
        .Q(t0_x_off_reg[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t0_x_off_reg_reg[9] 
       (.C(r0_map_cpu_clk),
        .CE(1'b1),
        .D(\t0_x_off_reg[9]_i_1_n_0 ),
        .Q(t0_x_off_reg[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \t0_y_off_reg[7]_i_1 
       (.I0(r0_map_cpu_wen[0]),
        .I1(r0_map_cpu_addr[0]),
        .I2(r0_map_cpu_addr[1]),
        .I3(r0_map_cpu_addr[2]),
        .I4(\t0_x_off_reg[7]_i_2_n_0 ),
        .I5(r0_map_cpu_addr[3]),
        .O(\t0_y_off_reg[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \t0_y_off_reg[8]_i_1 
       (.I0(r0_map_cpu_din[8]),
        .I1(r0_map_cpu_wen[1]),
        .I2(r0_map_cpu_addr[0]),
        .I3(r0_map_cpu_addr[1]),
        .I4(\t0_x_off_reg[9]_i_2_n_0 ),
        .I5(\t0_y_off_reg_reg[9]_0 [4]),
        .O(\t0_y_off_reg[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \t0_y_off_reg[9]_i_1 
       (.I0(r0_map_cpu_din[9]),
        .I1(r0_map_cpu_wen[1]),
        .I2(r0_map_cpu_addr[0]),
        .I3(r0_map_cpu_addr[1]),
        .I4(\t0_x_off_reg[9]_i_2_n_0 ),
        .I5(\t0_y_off_reg_reg[9]_0 [5]),
        .O(\t0_y_off_reg[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \t0_y_off_reg_reg[0] 
       (.C(r0_map_cpu_clk),
        .CE(\t0_y_off_reg[7]_i_1_n_0 ),
        .D(r0_map_cpu_din[0]),
        .Q(\t0_y_off_reg_reg[9]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t0_y_off_reg_reg[1] 
       (.C(r0_map_cpu_clk),
        .CE(\t0_y_off_reg[7]_i_1_n_0 ),
        .D(r0_map_cpu_din[1]),
        .Q(t0_y_off_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t0_y_off_reg_reg[2] 
       (.C(r0_map_cpu_clk),
        .CE(\t0_y_off_reg[7]_i_1_n_0 ),
        .D(r0_map_cpu_din[2]),
        .Q(\t0_y_off_reg_reg[9]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t0_y_off_reg_reg[3] 
       (.C(r0_map_cpu_clk),
        .CE(\t0_y_off_reg[7]_i_1_n_0 ),
        .D(r0_map_cpu_din[3]),
        .Q(\t0_y_off_reg_reg[9]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t0_y_off_reg_reg[4] 
       (.C(r0_map_cpu_clk),
        .CE(\t0_y_off_reg[7]_i_1_n_0 ),
        .D(r0_map_cpu_din[4]),
        .Q(\t0_y_off_reg_reg[9]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t0_y_off_reg_reg[5] 
       (.C(r0_map_cpu_clk),
        .CE(\t0_y_off_reg[7]_i_1_n_0 ),
        .D(r0_map_cpu_din[5]),
        .Q(t0_y_off_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t0_y_off_reg_reg[6] 
       (.C(r0_map_cpu_clk),
        .CE(\t0_y_off_reg[7]_i_1_n_0 ),
        .D(r0_map_cpu_din[6]),
        .Q(t0_y_off_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t0_y_off_reg_reg[7] 
       (.C(r0_map_cpu_clk),
        .CE(\t0_y_off_reg[7]_i_1_n_0 ),
        .D(r0_map_cpu_din[7]),
        .Q(t0_y_off_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t0_y_off_reg_reg[8] 
       (.C(r0_map_cpu_clk),
        .CE(1'b1),
        .D(\t0_y_off_reg[8]_i_1_n_0 ),
        .Q(\t0_y_off_reg_reg[9]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t0_y_off_reg_reg[9] 
       (.C(r0_map_cpu_clk),
        .CE(1'b1),
        .D(\t0_y_off_reg[9]_i_1_n_0 ),
        .Q(\t0_y_off_reg_reg[9]_0 [5]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \t1_palette_data[0]_i_1 
       (.I0(palette_t1_mem_reg_128_255_0_0_n_0),
        .I1(t1_palette_addr[7]),
        .I2(palette_t1_mem_reg_0_127_0_0_n_0),
        .O(t1_palette_data0[0]));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \t1_palette_data[10]_i_1 
       (.I0(palette_t1_mem_reg_128_255_10_10_n_0),
        .I1(t1_palette_addr[7]),
        .I2(palette_t1_mem_reg_0_127_10_10_n_0),
        .O(t1_palette_data0[10]));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \t1_palette_data[11]_i_1 
       (.I0(palette_t1_mem_reg_128_255_11_11_n_0),
        .I1(t1_palette_addr[7]),
        .I2(palette_t1_mem_reg_0_127_11_11_n_0),
        .O(t1_palette_data0[11]));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \t1_palette_data[12]_i_1 
       (.I0(palette_t1_mem_reg_128_255_12_12_n_0),
        .I1(t1_palette_addr[7]),
        .I2(palette_t1_mem_reg_0_127_12_12_n_0),
        .O(t1_palette_data0[12]));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \t1_palette_data[13]_i_1 
       (.I0(palette_t1_mem_reg_128_255_13_13_n_0),
        .I1(t1_palette_addr[7]),
        .I2(palette_t1_mem_reg_0_127_13_13_n_0),
        .O(t1_palette_data0[13]));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \t1_palette_data[14]_i_1 
       (.I0(palette_t1_mem_reg_128_255_14_14_n_0),
        .I1(t1_palette_addr[7]),
        .I2(palette_t1_mem_reg_0_127_14_14_n_0),
        .O(t1_palette_data0[14]));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \t1_palette_data[15]_i_1 
       (.I0(palette_t1_mem_reg_128_255_15_15_n_0),
        .I1(t1_palette_addr[7]),
        .I2(palette_t1_mem_reg_0_127_15_15_n_0),
        .O(t1_palette_data0[15]));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \t1_palette_data[1]_i_1 
       (.I0(palette_t1_mem_reg_128_255_1_1_n_0),
        .I1(t1_palette_addr[7]),
        .I2(palette_t1_mem_reg_0_127_1_1_n_0),
        .O(t1_palette_data0[1]));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \t1_palette_data[2]_i_1 
       (.I0(palette_t1_mem_reg_128_255_2_2_n_0),
        .I1(t1_palette_addr[7]),
        .I2(palette_t1_mem_reg_0_127_2_2_n_0),
        .O(t1_palette_data0[2]));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \t1_palette_data[3]_i_1 
       (.I0(palette_t1_mem_reg_128_255_3_3_n_0),
        .I1(t1_palette_addr[7]),
        .I2(palette_t1_mem_reg_0_127_3_3_n_0),
        .O(t1_palette_data0[3]));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \t1_palette_data[4]_i_1 
       (.I0(palette_t1_mem_reg_128_255_4_4_n_0),
        .I1(t1_palette_addr[7]),
        .I2(palette_t1_mem_reg_0_127_4_4_n_0),
        .O(t1_palette_data0[4]));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \t1_palette_data[5]_i_1 
       (.I0(palette_t1_mem_reg_128_255_5_5_n_0),
        .I1(t1_palette_addr[7]),
        .I2(palette_t1_mem_reg_0_127_5_5_n_0),
        .O(t1_palette_data0[5]));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \t1_palette_data[6]_i_1 
       (.I0(palette_t1_mem_reg_128_255_6_6_n_0),
        .I1(t1_palette_addr[7]),
        .I2(palette_t1_mem_reg_0_127_6_6_n_0),
        .O(t1_palette_data0[6]));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \t1_palette_data[7]_i_1 
       (.I0(palette_t1_mem_reg_128_255_7_7_n_0),
        .I1(t1_palette_addr[7]),
        .I2(palette_t1_mem_reg_0_127_7_7_n_0),
        .O(t1_palette_data0[7]));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \t1_palette_data[8]_i_1 
       (.I0(palette_t1_mem_reg_128_255_8_8_n_0),
        .I1(t1_palette_addr[7]),
        .I2(palette_t1_mem_reg_0_127_8_8_n_0),
        .O(t1_palette_data0[8]));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \t1_palette_data[9]_i_1 
       (.I0(palette_t1_mem_reg_128_255_9_9_n_0),
        .I1(t1_palette_addr[7]),
        .I2(palette_t1_mem_reg_0_127_9_9_n_0),
        .O(t1_palette_data0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \t1_palette_data_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(t1_palette_data0[0]),
        .Q(t1_palette_data[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t1_palette_data_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(t1_palette_data0[10]),
        .Q(t1_palette_data[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t1_palette_data_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(t1_palette_data0[11]),
        .Q(t1_palette_data[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \t1_palette_data_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(t1_palette_data0[12]),
        .Q(t1_palette_data[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \t1_palette_data_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(t1_palette_data0[13]),
        .Q(t1_palette_data[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \t1_palette_data_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(t1_palette_data0[14]),
        .Q(t1_palette_data[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \t1_palette_data_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(t1_palette_data0[15]),
        .Q(t1_palette_data[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t1_palette_data_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(t1_palette_data0[1]),
        .Q(t1_palette_data[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t1_palette_data_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(t1_palette_data0[2]),
        .Q(t1_palette_data[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t1_palette_data_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(t1_palette_data0[3]),
        .Q(t1_palette_data[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t1_palette_data_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(t1_palette_data0[4]),
        .Q(t1_palette_data[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t1_palette_data_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(t1_palette_data0[5]),
        .Q(t1_palette_data[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t1_palette_data_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(t1_palette_data0[6]),
        .Q(t1_palette_data[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t1_palette_data_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(t1_palette_data0[7]),
        .Q(t1_palette_data[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t1_palette_data_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(t1_palette_data0[8]),
        .Q(t1_palette_data[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t1_palette_data_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(t1_palette_data0[9]),
        .Q(t1_palette_data[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \t1_x_off_reg[7]_i_1 
       (.I0(r0_map_cpu_wen[0]),
        .I1(r0_map_cpu_addr[2]),
        .I2(r0_map_cpu_addr[3]),
        .I3(r0_map_cpu_addr[1]),
        .I4(r0_map_cpu_addr[0]),
        .I5(\t0_x_off_reg[7]_i_2_n_0 ),
        .O(\t1_x_off_reg[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \t1_x_off_reg[8]_i_1 
       (.I0(r0_map_cpu_din[8]),
        .I1(\t1_x_off_reg[9]_i_2_n_0 ),
        .I2(t1_x_off_reg[8]),
        .O(\t1_x_off_reg[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \t1_x_off_reg[9]_i_1 
       (.I0(r0_map_cpu_din[9]),
        .I1(\t1_x_off_reg[9]_i_2_n_0 ),
        .I2(t1_x_off_reg[9]),
        .O(\t1_x_off_reg[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \t1_x_off_reg[9]_i_2 
       (.I0(r0_map_cpu_wen[1]),
        .I1(r0_map_cpu_addr[2]),
        .I2(r0_map_cpu_addr[3]),
        .I3(r0_map_cpu_addr[1]),
        .I4(r0_map_cpu_addr[0]),
        .I5(\t0_x_off_reg[7]_i_2_n_0 ),
        .O(\t1_x_off_reg[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \t1_x_off_reg_reg[0] 
       (.C(r0_map_cpu_clk),
        .CE(\t1_x_off_reg[7]_i_1_n_0 ),
        .D(r0_map_cpu_din[0]),
        .Q(t1_x_off_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t1_x_off_reg_reg[1] 
       (.C(r0_map_cpu_clk),
        .CE(\t1_x_off_reg[7]_i_1_n_0 ),
        .D(r0_map_cpu_din[1]),
        .Q(t1_x_off_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t1_x_off_reg_reg[2] 
       (.C(r0_map_cpu_clk),
        .CE(\t1_x_off_reg[7]_i_1_n_0 ),
        .D(r0_map_cpu_din[2]),
        .Q(t1_x_off_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t1_x_off_reg_reg[3] 
       (.C(r0_map_cpu_clk),
        .CE(\t1_x_off_reg[7]_i_1_n_0 ),
        .D(r0_map_cpu_din[3]),
        .Q(t1_x_off_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t1_x_off_reg_reg[4] 
       (.C(r0_map_cpu_clk),
        .CE(\t1_x_off_reg[7]_i_1_n_0 ),
        .D(r0_map_cpu_din[4]),
        .Q(t1_x_off_reg[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t1_x_off_reg_reg[5] 
       (.C(r0_map_cpu_clk),
        .CE(\t1_x_off_reg[7]_i_1_n_0 ),
        .D(r0_map_cpu_din[5]),
        .Q(t1_x_off_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t1_x_off_reg_reg[6] 
       (.C(r0_map_cpu_clk),
        .CE(\t1_x_off_reg[7]_i_1_n_0 ),
        .D(r0_map_cpu_din[6]),
        .Q(t1_x_off_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t1_x_off_reg_reg[7] 
       (.C(r0_map_cpu_clk),
        .CE(\t1_x_off_reg[7]_i_1_n_0 ),
        .D(r0_map_cpu_din[7]),
        .Q(t1_x_off_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t1_x_off_reg_reg[8] 
       (.C(r0_map_cpu_clk),
        .CE(1'b1),
        .D(\t1_x_off_reg[8]_i_1_n_0 ),
        .Q(t1_x_off_reg[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t1_x_off_reg_reg[9] 
       (.C(r0_map_cpu_clk),
        .CE(1'b1),
        .D(\t1_x_off_reg[9]_i_1_n_0 ),
        .Q(t1_x_off_reg[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    \t1_y_off_reg[7]_i_1 
       (.I0(r0_map_cpu_addr[0]),
        .I1(r0_map_cpu_addr[1]),
        .I2(r0_map_cpu_addr[2]),
        .I3(r0_map_cpu_addr[3]),
        .I4(r0_map_cpu_wen[0]),
        .I5(\t0_x_off_reg[7]_i_2_n_0 ),
        .O(\t1_y_off_reg[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \t1_y_off_reg[8]_i_1 
       (.I0(r0_map_cpu_din[8]),
        .I1(\t1_y_off_reg[9]_i_2_n_0 ),
        .I2(\t1_y_off_reg_reg[9]_0 [4]),
        .O(\t1_y_off_reg[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \t1_y_off_reg[9]_i_1 
       (.I0(r0_map_cpu_din[9]),
        .I1(\t1_y_off_reg[9]_i_2_n_0 ),
        .I2(\t1_y_off_reg_reg[9]_0 [5]),
        .O(\t1_y_off_reg[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    \t1_y_off_reg[9]_i_2 
       (.I0(r0_map_cpu_addr[0]),
        .I1(r0_map_cpu_addr[1]),
        .I2(r0_map_cpu_addr[2]),
        .I3(r0_map_cpu_addr[3]),
        .I4(r0_map_cpu_wen[1]),
        .I5(\t0_x_off_reg[7]_i_2_n_0 ),
        .O(\t1_y_off_reg[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \t1_y_off_reg_reg[0] 
       (.C(r0_map_cpu_clk),
        .CE(\t1_y_off_reg[7]_i_1_n_0 ),
        .D(r0_map_cpu_din[0]),
        .Q(\t1_y_off_reg_reg[9]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t1_y_off_reg_reg[1] 
       (.C(r0_map_cpu_clk),
        .CE(\t1_y_off_reg[7]_i_1_n_0 ),
        .D(r0_map_cpu_din[1]),
        .Q(t1_y_off_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t1_y_off_reg_reg[2] 
       (.C(r0_map_cpu_clk),
        .CE(\t1_y_off_reg[7]_i_1_n_0 ),
        .D(r0_map_cpu_din[2]),
        .Q(\t1_y_off_reg_reg[9]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t1_y_off_reg_reg[3] 
       (.C(r0_map_cpu_clk),
        .CE(\t1_y_off_reg[7]_i_1_n_0 ),
        .D(r0_map_cpu_din[3]),
        .Q(\t1_y_off_reg_reg[9]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t1_y_off_reg_reg[4] 
       (.C(r0_map_cpu_clk),
        .CE(\t1_y_off_reg[7]_i_1_n_0 ),
        .D(r0_map_cpu_din[4]),
        .Q(\t1_y_off_reg_reg[9]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t1_y_off_reg_reg[5] 
       (.C(r0_map_cpu_clk),
        .CE(\t1_y_off_reg[7]_i_1_n_0 ),
        .D(r0_map_cpu_din[5]),
        .Q(t1_y_off_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t1_y_off_reg_reg[6] 
       (.C(r0_map_cpu_clk),
        .CE(\t1_y_off_reg[7]_i_1_n_0 ),
        .D(r0_map_cpu_din[6]),
        .Q(t1_y_off_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t1_y_off_reg_reg[7] 
       (.C(r0_map_cpu_clk),
        .CE(\t1_y_off_reg[7]_i_1_n_0 ),
        .D(r0_map_cpu_din[7]),
        .Q(t1_y_off_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t1_y_off_reg_reg[8] 
       (.C(r0_map_cpu_clk),
        .CE(1'b1),
        .D(\t1_y_off_reg[8]_i_1_n_0 ),
        .Q(\t1_y_off_reg_reg[9]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \t1_y_off_reg_reg[9] 
       (.C(r0_map_cpu_clk),
        .CE(1'b1),
        .D(\t1_y_off_reg[9]_i_1_n_0 ),
        .Q(\t1_y_off_reg_reg[9]_0 [5]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \v_cnt[4]_i_1 
       (.I0(Q[4]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[3]),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \vga_r[3]_INST_0_i_1 
       (.I0(Q[4]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[3]),
        .O(\v_cnt_reg[4] ));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \vga_r[3]_INST_0_i_2 
       (.I0(Q[8]),
        .I1(Q[5]),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\v_cnt_reg[8] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF008C10)) 
    \vga_r[3]_INST_0_i_4 
       (.I0(\vga_b[0] [2]),
        .I1(\vga_b[0] [3]),
        .I2(\vga_r[3]_INST_0_i_5_n_0 ),
        .I3(\vga_b[0] [5]),
        .I4(\vga_b[0] [4]),
        .I5(\vga_b[0] [6]),
        .O(\h_cnt_reg[6] ));
  LUT2 #(
    .INIT(4'h7)) 
    \vga_r[3]_INST_0_i_5 
       (.I0(\vga_b[0] [0]),
        .I1(\vga_b[0] [1]),
        .O(\vga_r[3]_INST_0_i_5_n_0 ));
endmodule

(* ORIG_REF_NAME = "VDP" *) 
module Block_top_VDP_wrapper_0_0_VDP
   (vga_r,
    vga_g,
    vga_b,
    r0_map_cpu_dout,
    t0_map_cpu_dout,
    t0_data_cpu_dout,
    t1_map_cpu_dout,
    t1_data_cpu_dout,
    s0_data_cpu_dout,
    s0_att_cpu_dout,
    h_sync,
    v_sync,
    r0_map_cpu_addr,
    r0_map_cpu_wen,
    s_axi_aresetn,
    r0_map_cpu_en,
    s_axi_aclk,
    r0_map_cpu_clk,
    r0_map_cpu_din,
    t0_map_cpu_clk,
    t0_map_cpu_en,
    t0_map_cpu_wen,
    t0_map_cpu_addr,
    t0_map_cpu_din,
    t0_data_cpu_clk,
    t0_data_cpu_en,
    t0_data_cpu_wen,
    t0_data_cpu_addr,
    t0_data_cpu_din,
    t1_map_cpu_clk,
    t1_map_cpu_en,
    t1_map_cpu_wen,
    t1_map_cpu_addr,
    t1_map_cpu_din,
    t1_data_cpu_clk,
    t1_data_cpu_en,
    t1_data_cpu_wen,
    t1_data_cpu_addr,
    t1_data_cpu_din,
    s0_data_cpu_clk,
    s0_data_cpu_en,
    s0_data_cpu_wen,
    s0_data_cpu_addr,
    s0_data_cpu_din,
    s0_att_cpu_clk,
    s0_att_cpu_en,
    s0_att_cpu_wen,
    s0_att_cpu_addr,
    s0_att_cpu_din);
  output [3:0]vga_r;
  output [3:0]vga_g;
  output [3:0]vga_b;
  output [31:0]r0_map_cpu_dout;
  output [31:0]t0_map_cpu_dout;
  output [31:0]t0_data_cpu_dout;
  output [31:0]t1_map_cpu_dout;
  output [31:0]t1_data_cpu_dout;
  output [31:0]s0_data_cpu_dout;
  output [31:0]s0_att_cpu_dout;
  output h_sync;
  output v_sync;
  input [10:0]r0_map_cpu_addr;
  input [3:0]r0_map_cpu_wen;
  input s_axi_aresetn;
  input r0_map_cpu_en;
  input s_axi_aclk;
  input r0_map_cpu_clk;
  input [31:0]r0_map_cpu_din;
  input t0_map_cpu_clk;
  input t0_map_cpu_en;
  input [3:0]t0_map_cpu_wen;
  input [12:0]t0_map_cpu_addr;
  input [31:0]t0_map_cpu_din;
  input t0_data_cpu_clk;
  input t0_data_cpu_en;
  input [3:0]t0_data_cpu_wen;
  input [13:0]t0_data_cpu_addr;
  input [31:0]t0_data_cpu_din;
  input t1_map_cpu_clk;
  input t1_map_cpu_en;
  input [3:0]t1_map_cpu_wen;
  input [12:0]t1_map_cpu_addr;
  input [31:0]t1_map_cpu_din;
  input t1_data_cpu_clk;
  input t1_data_cpu_en;
  input [3:0]t1_data_cpu_wen;
  input [13:0]t1_data_cpu_addr;
  input [31:0]t1_data_cpu_din;
  input s0_data_cpu_clk;
  input s0_data_cpu_en;
  input [3:0]s0_data_cpu_wen;
  input [12:0]s0_data_cpu_addr;
  input [31:0]s0_data_cpu_din;
  input s0_att_cpu_clk;
  input s0_att_cpu_en;
  input [3:0]s0_att_cpu_wen;
  input [6:0]s0_att_cpu_addr;
  input [31:0]s0_att_cpu_din;

  wire \FSM_onehot_gen_fin_state[0]_i_1_n_0 ;
  wire \FSM_onehot_gen_fin_state[1]_i_1_n_0 ;
  wire \FSM_onehot_gen_fin_state[2]_i_1_n_0 ;
  wire \FSM_onehot_gen_fin_state[2]_i_2_n_0 ;
  wire \FSM_onehot_gen_fin_state[2]_i_3_n_0 ;
  wire \FSM_onehot_gen_fin_state[2]_i_4_n_0 ;
  wire S0_gen_n_100;
  wire S0_gen_n_101;
  wire S0_gen_n_102;
  wire S0_gen_n_103;
  wire S0_gen_n_104;
  wire S0_gen_n_105;
  wire S0_gen_n_106;
  wire S0_gen_n_107;
  wire S0_gen_n_86;
  wire S0_gen_n_87;
  wire S0_gen_n_88;
  wire S0_gen_n_92;
  wire S0_gen_n_93;
  wire S0_gen_n_94;
  wire S0_gen_n_95;
  wire S0_gen_n_96;
  wire S0_gen_n_97;
  wire S0_gen_n_98;
  wire S0_gen_n_99;
  wire T0_gen_n_0;
  wire T1_gen_n_0;
  wire T1_gen_n_10;
  wire T1_gen_n_11;
  wire T1_gen_n_12;
  wire T1_gen_n_13;
  wire T1_gen_n_14;
  wire T1_gen_n_3;
  wire T1_gen_n_4;
  wire T1_gen_n_5;
  wire T1_gen_n_6;
  wire T1_gen_n_7;
  wire T1_gen_n_8;
  wire T1_gen_n_9;
  wire VGA_clk;
  wire \VGA_clk_cnt[0]_i_1_n_0 ;
  wire \VGA_clk_cnt[1]_i_1_n_0 ;
  wire \VGA_clk_cnt_reg_n_0_[0] ;
  wire [2:0]ctrl_reg;
  wire [10:3]draw_pixel_addr;
  wire fin_line_buf_i_1_n_1;
  wire fin_line_buf_i_1_n_2;
  wire fin_line_buf_i_1_n_3;
  wire fin_line_buf_i_2_n_0;
  wire fin_line_buf_i_2_n_1;
  wire fin_line_buf_i_2_n_2;
  wire fin_line_buf_i_2_n_3;
  wire fin_line_buf_i_4_n_0;
  wire fin_line_buf_i_5_n_0;
  wire fin_line_buf_i_6_n_0;
  wire fin_line_buf_i_7_n_0;
  wire fin_line_buf_i_8_n_0;
  wire fin_line_buf_i_9_n_0;
  wire [2:0]gen_done;
  wire gen_done0;
  wire gen_fin_buf_en_i_1_n_0;
  wire gen_fin_buf_en_reg_n_0;
  wire [0:0]gen_fin_data;
  wire gen_fin_data1;
  wire \gen_fin_data_reg_n_0_[0] ;
  wire \gen_fin_data_reg_n_0_[10] ;
  wire \gen_fin_data_reg_n_0_[11] ;
  wire \gen_fin_data_reg_n_0_[1] ;
  wire \gen_fin_data_reg_n_0_[2] ;
  wire \gen_fin_data_reg_n_0_[3] ;
  wire \gen_fin_data_reg_n_0_[4] ;
  wire \gen_fin_data_reg_n_0_[5] ;
  wire \gen_fin_data_reg_n_0_[6] ;
  wire \gen_fin_data_reg_n_0_[7] ;
  wire \gen_fin_data_reg_n_0_[8] ;
  wire \gen_fin_data_reg_n_0_[9] ;
  wire \gen_fin_pixel[9]_i_2_n_0 ;
  wire [9:0]gen_fin_pixel_reg;
  wire [9:0]gen_fin_pixel_reg1__0;
  wire [9:0]gen_fin_pixel_reg__0;
  wire [1:1]gen_fin_state;
  wire [9:5]gen_line;
  wire gen_line_start;
  wire \h_cnt[0]_i_1_n_0 ;
  wire \h_cnt[10]_i_1_n_0 ;
  wire \h_cnt[10]_i_2_n_0 ;
  wire \h_cnt[10]_i_3_n_0 ;
  wire \h_cnt[1]_i_1_n_0 ;
  wire \h_cnt[2]_i_1_n_0 ;
  wire \h_cnt[3]_i_1_n_0 ;
  wire \h_cnt[4]_i_1_n_0 ;
  wire \h_cnt[5]_i_1_n_0 ;
  wire \h_cnt[6]_i_1_n_0 ;
  wire \h_cnt[7]_i_1_n_0 ;
  wire \h_cnt[8]_i_1_n_0 ;
  wire \h_cnt[8]_i_2_n_0 ;
  wire \h_cnt[9]_i_1_n_0 ;
  wire [10:3]h_cnt_reg;
  wire [2:0]h_cnt_reg__0;
  wire h_sync;
  wire [1:0]line_reg;
  wire [9:0]p_0_in;
  wire [10:0]r0_map_cpu_addr;
  wire r0_map_cpu_clk;
  wire [31:0]r0_map_cpu_din;
  wire [31:0]r0_map_cpu_dout;
  wire r0_map_cpu_en;
  wire [3:0]r0_map_cpu_wen;
  wire reg_mem_n_0;
  wire reg_mem_n_1;
  wire reg_mem_n_10;
  wire reg_mem_n_11;
  wire reg_mem_n_18;
  wire reg_mem_n_19;
  wire reg_mem_n_2;
  wire reg_mem_n_20;
  wire reg_mem_n_22;
  wire reg_mem_n_23;
  wire reg_mem_n_9;
  wire [6:0]s0_att_cpu_addr;
  wire s0_att_cpu_clk;
  wire [31:0]s0_att_cpu_din;
  wire [31:0]s0_att_cpu_dout;
  wire s0_att_cpu_en;
  wire [3:0]s0_att_cpu_wen;
  wire [12:0]s0_data_cpu_addr;
  wire s0_data_cpu_clk;
  wire [31:0]s0_data_cpu_din;
  wire [31:0]s0_data_cpu_dout;
  wire s0_data_cpu_en;
  wire [3:0]s0_data_cpu_wen;
  wire [11:0]s0_dout;
  wire [9:0]s0_palette_addr;
  wire [15:0]s0_palette_data;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [10:0]sel0;
  wire [0:0]stat_reg;
  wire [13:0]t0_data_cpu_addr;
  wire t0_data_cpu_clk;
  wire [31:0]t0_data_cpu_din;
  wire [31:0]t0_data_cpu_dout;
  wire t0_data_cpu_en;
  wire [3:0]t0_data_cpu_wen;
  wire [11:0]t0_dout;
  wire [12:0]t0_map_cpu_addr;
  wire t0_map_cpu_clk;
  wire [31:0]t0_map_cpu_din;
  wire [31:0]t0_map_cpu_dout;
  wire t0_map_cpu_en;
  wire [3:0]t0_map_cpu_wen;
  wire [7:0]t0_palette_addr;
  wire [15:0]t0_palette_data;
  wire [9:0]t0_x_off_reg;
  wire [9:0]t0_y_off_reg;
  wire [13:0]t1_data_cpu_addr;
  wire t1_data_cpu_clk;
  wire [31:0]t1_data_cpu_din;
  wire [31:0]t1_data_cpu_dout;
  wire t1_data_cpu_en;
  wire [3:0]t1_data_cpu_wen;
  wire [12:0]t1_map_cpu_addr;
  wire t1_map_cpu_clk;
  wire [31:0]t1_map_cpu_din;
  wire [31:0]t1_map_cpu_dout;
  wire t1_map_cpu_en;
  wire [3:0]t1_map_cpu_wen;
  wire [7:0]t1_palette_addr;
  wire [15:0]t1_palette_data;
  wire [9:0]t1_x_off_reg;
  wire [9:0]t1_y_off_reg;
  wire \v_cnt[10]_i_1_n_0 ;
  wire \v_cnt[10]_i_2_n_0 ;
  wire \v_cnt[10]_i_3_n_0 ;
  wire \v_cnt[10]_i_5_n_0 ;
  wire \v_cnt[10]_i_6_n_0 ;
  wire \v_cnt[10]_i_7_n_0 ;
  wire \v_cnt[10]_i_8_n_0 ;
  wire \v_cnt[2]_i_1_n_0 ;
  wire \v_cnt[3]_i_1_n_0 ;
  wire \v_cnt[5]_i_1_n_0 ;
  wire \v_cnt[6]_i_1_n_0 ;
  wire \v_cnt[7]_i_1_n_0 ;
  wire \v_cnt[8]_i_1_n_0 ;
  wire \v_cnt[9]_i_1_n_0 ;
  wire v_sync;
  wire v_sync_INST_0_i_1_n_0;
  wire [3:0]vga_b;
  wire [3:0]vga_g;
  wire [3:0]vga_r;
  wire \vga_r[3]_INST_0_i_3_n_0 ;
  wire [11:0]vga_rgb;
  wire [11:0]NLW_fin_line_buf_doutb_UNCONNECTED;
  wire [3:3]NLW_fin_line_buf_i_1_CO_UNCONNECTED;

  LUT6 #(
    .INIT(64'hF0F0F0FFF5C0F5CF)) 
    \FSM_onehot_gen_fin_state[0]_i_1 
       (.I0(gen_line_start),
        .I1(\FSM_onehot_gen_fin_state[2]_i_2_n_0 ),
        .I2(gen_fin_data),
        .I3(gen_done0),
        .I4(gen_fin_state),
        .I5(\FSM_onehot_gen_fin_state[2]_i_3_n_0 ),
        .O(\FSM_onehot_gen_fin_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF00FF3FEA00)) 
    \FSM_onehot_gen_fin_state[1]_i_1 
       (.I0(gen_line_start),
        .I1(\FSM_onehot_gen_fin_state[2]_i_2_n_0 ),
        .I2(gen_fin_data),
        .I3(gen_done0),
        .I4(gen_fin_state),
        .I5(\FSM_onehot_gen_fin_state[2]_i_3_n_0 ),
        .O(\FSM_onehot_gen_fin_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FAF01030)) 
    \FSM_onehot_gen_fin_state[2]_i_1 
       (.I0(gen_line_start),
        .I1(\FSM_onehot_gen_fin_state[2]_i_2_n_0 ),
        .I2(gen_fin_data),
        .I3(gen_done0),
        .I4(gen_fin_state),
        .I5(\FSM_onehot_gen_fin_state[2]_i_3_n_0 ),
        .O(\FSM_onehot_gen_fin_state[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000004)) 
    \FSM_onehot_gen_fin_state[2]_i_2 
       (.I0(gen_fin_pixel_reg[3]),
        .I1(gen_fin_pixel_reg[7]),
        .I2(gen_fin_pixel_reg[4]),
        .I3(gen_fin_pixel_reg[5]),
        .I4(\FSM_onehot_gen_fin_state[2]_i_4_n_0 ),
        .O(\FSM_onehot_gen_fin_state[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \FSM_onehot_gen_fin_state[2]_i_3 
       (.I0(gen_done[0]),
        .I1(gen_done[1]),
        .I2(gen_done[2]),
        .I3(gen_fin_state),
        .O(\FSM_onehot_gen_fin_state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \FSM_onehot_gen_fin_state[2]_i_4 
       (.I0(gen_fin_pixel_reg[1]),
        .I1(gen_fin_pixel_reg[0]),
        .I2(gen_fin_pixel_reg[2]),
        .I3(gen_fin_pixel_reg[8]),
        .I4(gen_fin_pixel_reg[6]),
        .I5(gen_fin_pixel_reg[9]),
        .O(\FSM_onehot_gen_fin_state[2]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "STATE_WAIT:000000000001,STATE_START:000000000010,STATE_C0:000000000100," *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_gen_fin_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_fin_state[0]_i_1_n_0 ),
        .Q(gen_done0),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "STATE_WAIT:000000000001,STATE_START:000000000010,STATE_C0:000000000100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_fin_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_fin_state[1]_i_1_n_0 ),
        .Q(gen_fin_state),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "STATE_WAIT:000000000001,STATE_START:000000000010,STATE_C0:000000000100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_fin_state_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_fin_state[2]_i_1_n_0 ),
        .Q(gen_fin_data),
        .R(1'b0));
  Block_top_VDP_wrapper_0_0_VDP_sprite_gen S0_gen
       (.DPRA({S0_gen_n_92,S0_gen_n_93,S0_gen_n_94,S0_gen_n_95,S0_gen_n_96,S0_gen_n_97,S0_gen_n_98}),
        .\FSM_onehot_state[6]_i_3_0 ({h_cnt_reg,h_cnt_reg__0}),
        .Q(gen_fin_pixel_reg),
        .ctrl_reg(ctrl_reg[2]),
        .doutb(s0_dout),
        .gen_done(gen_done[2]),
        .gen_done0(gen_done0),
        .\gen_done_reg[2] (S0_gen_n_106),
        .gen_fin_data1(gen_fin_data1),
        .gen_line_start(gen_line_start),
        .\h_cnt_reg[5] (S0_gen_n_107),
        .\map_r_addr[13]_i_3 (sel0[9:0]),
        .\pal_issue_reg[5]_0 ({S0_gen_n_99,S0_gen_n_100,S0_gen_n_101,S0_gen_n_102,S0_gen_n_103,S0_gen_n_104,S0_gen_n_105}),
        .s0_att_cpu_addr(s0_att_cpu_addr),
        .s0_att_cpu_clk(s0_att_cpu_clk),
        .s0_att_cpu_din(s0_att_cpu_din),
        .s0_att_cpu_dout(s0_att_cpu_dout),
        .s0_att_cpu_en(s0_att_cpu_en),
        .s0_att_cpu_wen(s0_att_cpu_wen),
        .s0_data_cpu_addr(s0_data_cpu_addr),
        .s0_data_cpu_clk(s0_data_cpu_clk),
        .s0_data_cpu_din(s0_data_cpu_din),
        .s0_data_cpu_dout(s0_data_cpu_dout),
        .s0_data_cpu_en(s0_data_cpu_en),
        .s0_data_cpu_wen(s0_data_cpu_wen),
        .s0_palette_addr(s0_palette_addr),
        .s0_palette_data(s0_palette_data),
        .s_axi_aclk(s_axi_aclk),
        .\v_cnt_reg[2] (S0_gen_n_88),
        .\v_cnt_reg[6] (S0_gen_n_86),
        .\v_cnt_reg[7] (S0_gen_n_87),
        .\v_cnt_reg[9] (gen_line[9:8]));
  Block_top_VDP_wrapper_0_0_VDP_tile_gen__xdcDup__1 T0_gen
       (.Q(sel0[4:0]),
        .S(reg_mem_n_20),
        .buf_dout(t0_dout),
        .gen_done(gen_done[0]),
        .gen_done0(gen_done0),
        .\gen_done_reg[0] (T0_gen_n_0),
        .\gen_fin_data_reg[11] (gen_fin_pixel_reg),
        .gen_line({gen_line[9:8],gen_line[6:5]}),
        .gen_line_start(gen_line_start),
        .\map_r_addr_reg[11]_0 (S0_gen_n_87),
        .\map_r_addr_reg[11]_1 ({reg_mem_n_0,reg_mem_n_1,reg_mem_n_2}),
        .s_axi_aclk(s_axi_aclk),
        .t0_data_cpu_addr(t0_data_cpu_addr),
        .t0_data_cpu_clk(t0_data_cpu_clk),
        .t0_data_cpu_din(t0_data_cpu_din),
        .t0_data_cpu_dout(t0_data_cpu_dout),
        .t0_data_cpu_en(t0_data_cpu_en),
        .t0_data_cpu_wen(t0_data_cpu_wen),
        .t0_map_cpu_addr(t0_map_cpu_addr),
        .t0_map_cpu_clk(t0_map_cpu_clk),
        .t0_map_cpu_din(t0_map_cpu_din),
        .t0_map_cpu_dout(t0_map_cpu_dout),
        .t0_map_cpu_en(t0_map_cpu_en),
        .t0_map_cpu_wen(t0_map_cpu_wen),
        .t0_palette_addr(t0_palette_addr),
        .t0_palette_data(t0_palette_data),
        .t0_x_off_reg(t0_x_off_reg),
        .t0_y_off_reg({t0_y_off_reg[9:8],t0_y_off_reg[4:2],t0_y_off_reg[0]}));
  Block_top_VDP_wrapper_0_0_VDP_tile_gen T1_gen
       (.D({T1_gen_n_3,T1_gen_n_4,T1_gen_n_5,T1_gen_n_6,T1_gen_n_7,T1_gen_n_8,T1_gen_n_9,T1_gen_n_10,T1_gen_n_11,T1_gen_n_12,T1_gen_n_13,T1_gen_n_14}),
        .Q(sel0[6:0]),
        .S(reg_mem_n_19),
        .buf_dout(t0_dout),
        .ctrl_reg(ctrl_reg[1:0]),
        .doutb(s0_dout),
        .gen_done(gen_done[1]),
        .gen_done0(gen_done0),
        .\gen_done_reg[1] (T1_gen_n_0),
        .gen_fin_data1(gen_fin_data1),
        .\gen_fin_data_reg[11] (gen_fin_pixel_reg),
        .gen_line_start(gen_line_start),
        .\map_r_addr_reg[11]_0 (S0_gen_n_87),
        .\map_r_addr_reg[11]_1 ({reg_mem_n_9,reg_mem_n_10,reg_mem_n_11}),
        .\map_r_addr_reg[13]_0 (gen_line[9:8]),
        .s_axi_aclk(s_axi_aclk),
        .t1_data_cpu_addr(t1_data_cpu_addr),
        .t1_data_cpu_clk(t1_data_cpu_clk),
        .t1_data_cpu_din(t1_data_cpu_din),
        .t1_data_cpu_dout(t1_data_cpu_dout),
        .t1_data_cpu_en(t1_data_cpu_en),
        .t1_data_cpu_wen(t1_data_cpu_wen),
        .t1_map_cpu_addr(t1_map_cpu_addr),
        .t1_map_cpu_clk(t1_map_cpu_clk),
        .t1_map_cpu_din(t1_map_cpu_din),
        .t1_map_cpu_dout(t1_map_cpu_dout),
        .t1_map_cpu_en(t1_map_cpu_en),
        .t1_map_cpu_wen(t1_map_cpu_wen),
        .t1_palette_addr(t1_palette_addr),
        .t1_palette_data(t1_palette_data),
        .t1_x_off_reg(t1_x_off_reg),
        .t1_y_off_reg({t1_y_off_reg[9:8],t1_y_off_reg[4:2],t1_y_off_reg[0]}),
        .\v_cnt_reg[3] (gen_line[6:5]));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \VGA_clk_cnt[0]_i_1 
       (.I0(\VGA_clk_cnt_reg_n_0_[0] ),
        .O(\VGA_clk_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \VGA_clk_cnt[1]_i_1 
       (.I0(\VGA_clk_cnt_reg_n_0_[0] ),
        .I1(VGA_clk),
        .O(\VGA_clk_cnt[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_clk_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\VGA_clk_cnt[0]_i_1_n_0 ),
        .Q(\VGA_clk_cnt_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_clk_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\VGA_clk_cnt[1]_i_1_n_0 ),
        .Q(VGA_clk),
        .R(1'b0));
  (* CHECK_LICENSE_TYPE = "blk_mem_fin_line,blk_mem_gen_v8_4_12,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
  Block_top_VDP_wrapper_0_0_blk_mem_fin_line fin_line_buf
       (.addra({draw_pixel_addr,h_cnt_reg__0}),
        .addrb({line_reg[0],gen_fin_pixel_reg1__0}),
        .clka(s_axi_aclk),
        .clkb(s_axi_aclk),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({\gen_fin_data_reg_n_0_[11] ,\gen_fin_data_reg_n_0_[10] ,\gen_fin_data_reg_n_0_[9] ,\gen_fin_data_reg_n_0_[8] ,\gen_fin_data_reg_n_0_[7] ,\gen_fin_data_reg_n_0_[6] ,\gen_fin_data_reg_n_0_[5] ,\gen_fin_data_reg_n_0_[4] ,\gen_fin_data_reg_n_0_[3] ,\gen_fin_data_reg_n_0_[2] ,\gen_fin_data_reg_n_0_[1] ,\gen_fin_data_reg_n_0_[0] }),
        .douta(vga_rgb),
        .doutb(NLW_fin_line_buf_doutb_UNCONNECTED[11:0]),
        .enb(gen_fin_buf_en_reg_n_0),
        .wea(1'b0),
        .web(1'b1));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 fin_line_buf_i_1
       (.CI(fin_line_buf_i_2_n_0),
        .CO({NLW_fin_line_buf_i_1_CO_UNCONNECTED[3],fin_line_buf_i_1_n_1,fin_line_buf_i_1_n_2,fin_line_buf_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,h_cnt_reg[9:7]}),
        .O(draw_pixel_addr[10:7]),
        .S({fin_line_buf_i_4_n_0,fin_line_buf_i_5_n_0,fin_line_buf_i_6_n_0,fin_line_buf_i_7_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 fin_line_buf_i_2
       (.CI(1'b0),
        .CO({fin_line_buf_i_2_n_0,fin_line_buf_i_2_n_1,fin_line_buf_i_2_n_2,fin_line_buf_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({h_cnt_reg[6],1'b0,h_cnt_reg[4],1'b0}),
        .O(draw_pixel_addr[6:3]),
        .S({fin_line_buf_i_8_n_0,h_cnt_reg[5],fin_line_buf_i_9_n_0,h_cnt_reg[3]}));
  LUT1 #(
    .INIT(2'h1)) 
    fin_line_buf_i_3
       (.I0(sel0[0]),
        .O(line_reg[0]));
  LUT2 #(
    .INIT(4'h9)) 
    fin_line_buf_i_4
       (.I0(h_cnt_reg[10]),
        .I1(sel0[0]),
        .O(fin_line_buf_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    fin_line_buf_i_5
       (.I0(h_cnt_reg[9]),
        .O(fin_line_buf_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    fin_line_buf_i_6
       (.I0(h_cnt_reg[8]),
        .O(fin_line_buf_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    fin_line_buf_i_7
       (.I0(h_cnt_reg[7]),
        .O(fin_line_buf_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    fin_line_buf_i_8
       (.I0(h_cnt_reg[6]),
        .O(fin_line_buf_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    fin_line_buf_i_9
       (.I0(h_cnt_reg[4]),
        .O(fin_line_buf_i_9_n_0));
  FDRE \gen_done_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(T0_gen_n_0),
        .Q(gen_done[0]),
        .R(1'b0));
  FDRE \gen_done_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(T1_gen_n_0),
        .Q(gen_done[1]),
        .R(1'b0));
  FDRE \gen_done_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(S0_gen_n_106),
        .Q(gen_done[2]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hBA)) 
    gen_fin_buf_en_i_1
       (.I0(gen_fin_data),
        .I1(gen_done0),
        .I2(gen_fin_buf_en_reg_n_0),
        .O(gen_fin_buf_en_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    gen_fin_buf_en_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gen_fin_buf_en_i_1_n_0),
        .Q(gen_fin_buf_en_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fin_data_reg[0] 
       (.C(s_axi_aclk),
        .CE(gen_fin_data),
        .D(T1_gen_n_14),
        .Q(\gen_fin_data_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fin_data_reg[10] 
       (.C(s_axi_aclk),
        .CE(gen_fin_data),
        .D(T1_gen_n_4),
        .Q(\gen_fin_data_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fin_data_reg[11] 
       (.C(s_axi_aclk),
        .CE(gen_fin_data),
        .D(T1_gen_n_3),
        .Q(\gen_fin_data_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fin_data_reg[1] 
       (.C(s_axi_aclk),
        .CE(gen_fin_data),
        .D(T1_gen_n_13),
        .Q(\gen_fin_data_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fin_data_reg[2] 
       (.C(s_axi_aclk),
        .CE(gen_fin_data),
        .D(T1_gen_n_12),
        .Q(\gen_fin_data_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fin_data_reg[3] 
       (.C(s_axi_aclk),
        .CE(gen_fin_data),
        .D(T1_gen_n_11),
        .Q(\gen_fin_data_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fin_data_reg[4] 
       (.C(s_axi_aclk),
        .CE(gen_fin_data),
        .D(T1_gen_n_10),
        .Q(\gen_fin_data_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fin_data_reg[5] 
       (.C(s_axi_aclk),
        .CE(gen_fin_data),
        .D(T1_gen_n_9),
        .Q(\gen_fin_data_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fin_data_reg[6] 
       (.C(s_axi_aclk),
        .CE(gen_fin_data),
        .D(T1_gen_n_8),
        .Q(\gen_fin_data_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fin_data_reg[7] 
       (.C(s_axi_aclk),
        .CE(gen_fin_data),
        .D(T1_gen_n_7),
        .Q(\gen_fin_data_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fin_data_reg[8] 
       (.C(s_axi_aclk),
        .CE(gen_fin_data),
        .D(T1_gen_n_6),
        .Q(\gen_fin_data_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fin_data_reg[9] 
       (.C(s_axi_aclk),
        .CE(gen_fin_data),
        .D(T1_gen_n_5),
        .Q(\gen_fin_data_reg_n_0_[9] ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_fin_pixel[0]_i_1 
       (.I0(gen_fin_pixel_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gen_fin_pixel[1]_i_1 
       (.I0(gen_fin_pixel_reg[0]),
        .I1(gen_fin_pixel_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \gen_fin_pixel[2]_i_1 
       (.I0(gen_fin_pixel_reg[2]),
        .I1(gen_fin_pixel_reg[0]),
        .I2(gen_fin_pixel_reg[1]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \gen_fin_pixel[3]_i_1 
       (.I0(gen_fin_pixel_reg[3]),
        .I1(gen_fin_pixel_reg[1]),
        .I2(gen_fin_pixel_reg[0]),
        .I3(gen_fin_pixel_reg[2]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \gen_fin_pixel[4]_i_1 
       (.I0(gen_fin_pixel_reg[4]),
        .I1(gen_fin_pixel_reg[2]),
        .I2(gen_fin_pixel_reg[0]),
        .I3(gen_fin_pixel_reg[1]),
        .I4(gen_fin_pixel_reg[3]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \gen_fin_pixel[5]_i_1 
       (.I0(gen_fin_pixel_reg[3]),
        .I1(gen_fin_pixel_reg[1]),
        .I2(gen_fin_pixel_reg[0]),
        .I3(gen_fin_pixel_reg[2]),
        .I4(gen_fin_pixel_reg[4]),
        .I5(gen_fin_pixel_reg[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gen_fin_pixel[6]_i_1 
       (.I0(gen_fin_pixel_reg[6]),
        .I1(\gen_fin_pixel[9]_i_2_n_0 ),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \gen_fin_pixel[7]_i_1 
       (.I0(gen_fin_pixel_reg[7]),
        .I1(\gen_fin_pixel[9]_i_2_n_0 ),
        .I2(gen_fin_pixel_reg[6]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \gen_fin_pixel[8]_i_1 
       (.I0(gen_fin_pixel_reg[8]),
        .I1(gen_fin_pixel_reg[6]),
        .I2(\gen_fin_pixel[9]_i_2_n_0 ),
        .I3(gen_fin_pixel_reg[7]),
        .O(p_0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \gen_fin_pixel[9]_i_1 
       (.I0(gen_fin_pixel_reg[9]),
        .I1(gen_fin_pixel_reg[7]),
        .I2(\gen_fin_pixel[9]_i_2_n_0 ),
        .I3(gen_fin_pixel_reg[6]),
        .I4(gen_fin_pixel_reg[8]),
        .O(p_0_in[9]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \gen_fin_pixel[9]_i_2 
       (.I0(gen_fin_pixel_reg[5]),
        .I1(gen_fin_pixel_reg[4]),
        .I2(gen_fin_pixel_reg[2]),
        .I3(gen_fin_pixel_reg[0]),
        .I4(gen_fin_pixel_reg[1]),
        .I5(gen_fin_pixel_reg[3]),
        .O(\gen_fin_pixel[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fin_pixel_reg1_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gen_fin_pixel_reg__0[0]),
        .Q(gen_fin_pixel_reg1__0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fin_pixel_reg1_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gen_fin_pixel_reg__0[1]),
        .Q(gen_fin_pixel_reg1__0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fin_pixel_reg1_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gen_fin_pixel_reg__0[2]),
        .Q(gen_fin_pixel_reg1__0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fin_pixel_reg1_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gen_fin_pixel_reg__0[3]),
        .Q(gen_fin_pixel_reg1__0[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fin_pixel_reg1_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gen_fin_pixel_reg__0[4]),
        .Q(gen_fin_pixel_reg1__0[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fin_pixel_reg1_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gen_fin_pixel_reg__0[5]),
        .Q(gen_fin_pixel_reg1__0[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fin_pixel_reg1_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gen_fin_pixel_reg__0[6]),
        .Q(gen_fin_pixel_reg1__0[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fin_pixel_reg1_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gen_fin_pixel_reg__0[7]),
        .Q(gen_fin_pixel_reg1__0[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fin_pixel_reg1_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gen_fin_pixel_reg__0[8]),
        .Q(gen_fin_pixel_reg1__0[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fin_pixel_reg1_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gen_fin_pixel_reg__0[9]),
        .Q(gen_fin_pixel_reg1__0[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fin_pixel_reg[0] 
       (.C(s_axi_aclk),
        .CE(gen_fin_data),
        .D(p_0_in[0]),
        .Q(gen_fin_pixel_reg[0]),
        .R(gen_done0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fin_pixel_reg[1] 
       (.C(s_axi_aclk),
        .CE(gen_fin_data),
        .D(p_0_in[1]),
        .Q(gen_fin_pixel_reg[1]),
        .R(gen_done0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fin_pixel_reg[2] 
       (.C(s_axi_aclk),
        .CE(gen_fin_data),
        .D(p_0_in[2]),
        .Q(gen_fin_pixel_reg[2]),
        .R(gen_done0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fin_pixel_reg[3] 
       (.C(s_axi_aclk),
        .CE(gen_fin_data),
        .D(p_0_in[3]),
        .Q(gen_fin_pixel_reg[3]),
        .R(gen_done0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fin_pixel_reg[4] 
       (.C(s_axi_aclk),
        .CE(gen_fin_data),
        .D(p_0_in[4]),
        .Q(gen_fin_pixel_reg[4]),
        .R(gen_done0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fin_pixel_reg[5] 
       (.C(s_axi_aclk),
        .CE(gen_fin_data),
        .D(p_0_in[5]),
        .Q(gen_fin_pixel_reg[5]),
        .R(gen_done0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fin_pixel_reg[6] 
       (.C(s_axi_aclk),
        .CE(gen_fin_data),
        .D(p_0_in[6]),
        .Q(gen_fin_pixel_reg[6]),
        .R(gen_done0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fin_pixel_reg[7] 
       (.C(s_axi_aclk),
        .CE(gen_fin_data),
        .D(p_0_in[7]),
        .Q(gen_fin_pixel_reg[7]),
        .R(gen_done0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fin_pixel_reg[8] 
       (.C(s_axi_aclk),
        .CE(gen_fin_data),
        .D(p_0_in[8]),
        .Q(gen_fin_pixel_reg[8]),
        .R(gen_done0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fin_pixel_reg[9] 
       (.C(s_axi_aclk),
        .CE(gen_fin_data),
        .D(p_0_in[9]),
        .Q(gen_fin_pixel_reg[9]),
        .R(gen_done0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fin_pixel_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gen_fin_pixel_reg[0]),
        .Q(gen_fin_pixel_reg__0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fin_pixel_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gen_fin_pixel_reg[1]),
        .Q(gen_fin_pixel_reg__0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fin_pixel_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gen_fin_pixel_reg[2]),
        .Q(gen_fin_pixel_reg__0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fin_pixel_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gen_fin_pixel_reg[3]),
        .Q(gen_fin_pixel_reg__0[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fin_pixel_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gen_fin_pixel_reg[4]),
        .Q(gen_fin_pixel_reg__0[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fin_pixel_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gen_fin_pixel_reg[5]),
        .Q(gen_fin_pixel_reg__0[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fin_pixel_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gen_fin_pixel_reg[6]),
        .Q(gen_fin_pixel_reg__0[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fin_pixel_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gen_fin_pixel_reg[7]),
        .Q(gen_fin_pixel_reg__0[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fin_pixel_reg_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gen_fin_pixel_reg[8]),
        .Q(gen_fin_pixel_reg__0[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fin_pixel_reg_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gen_fin_pixel_reg[9]),
        .Q(gen_fin_pixel_reg__0[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \h_cnt[0]_i_1 
       (.I0(h_cnt_reg__0[0]),
        .O(\h_cnt[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \h_cnt[10]_i_1 
       (.I0(\v_cnt[10]_i_2_n_0 ),
        .I1(s_axi_aresetn),
        .O(\h_cnt[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA6AAAAAAA)) 
    \h_cnt[10]_i_2 
       (.I0(h_cnt_reg[10]),
        .I1(h_cnt_reg[8]),
        .I2(h_cnt_reg[9]),
        .I3(h_cnt_reg[7]),
        .I4(h_cnt_reg[6]),
        .I5(\h_cnt[10]_i_3_n_0 ),
        .O(\h_cnt[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \h_cnt[10]_i_3 
       (.I0(h_cnt_reg[3]),
        .I1(h_cnt_reg__0[1]),
        .I2(h_cnt_reg__0[0]),
        .I3(h_cnt_reg__0[2]),
        .I4(h_cnt_reg[5]),
        .I5(h_cnt_reg[4]),
        .O(\h_cnt[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \h_cnt[1]_i_1 
       (.I0(h_cnt_reg__0[0]),
        .I1(h_cnt_reg__0[1]),
        .O(\h_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \h_cnt[2]_i_1 
       (.I0(h_cnt_reg__0[2]),
        .I1(h_cnt_reg__0[0]),
        .I2(h_cnt_reg__0[1]),
        .O(\h_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \h_cnt[3]_i_1 
       (.I0(h_cnt_reg[3]),
        .I1(h_cnt_reg__0[1]),
        .I2(h_cnt_reg__0[0]),
        .I3(h_cnt_reg__0[2]),
        .O(\h_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \h_cnt[4]_i_1 
       (.I0(h_cnt_reg[4]),
        .I1(h_cnt_reg[3]),
        .I2(h_cnt_reg__0[1]),
        .I3(h_cnt_reg__0[0]),
        .I4(h_cnt_reg__0[2]),
        .O(\h_cnt[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \h_cnt[5]_i_1 
       (.I0(h_cnt_reg[5]),
        .I1(h_cnt_reg__0[2]),
        .I2(h_cnt_reg__0[0]),
        .I3(h_cnt_reg__0[1]),
        .I4(h_cnt_reg[3]),
        .I5(h_cnt_reg[4]),
        .O(\h_cnt[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT4 #(
    .INIT(16'hAA6A)) 
    \h_cnt[6]_i_1 
       (.I0(h_cnt_reg[6]),
        .I1(h_cnt_reg[4]),
        .I2(h_cnt_reg[5]),
        .I3(\h_cnt[8]_i_2_n_0 ),
        .O(\h_cnt[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT5 #(
    .INIT(32'h9AAAAAAA)) 
    \h_cnt[7]_i_1 
       (.I0(h_cnt_reg[7]),
        .I1(\h_cnt[8]_i_2_n_0 ),
        .I2(h_cnt_reg[5]),
        .I3(h_cnt_reg[4]),
        .I4(h_cnt_reg[6]),
        .O(\h_cnt[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9AAAAAAAAAAAAAAA)) 
    \h_cnt[8]_i_1 
       (.I0(h_cnt_reg[8]),
        .I1(\h_cnt[8]_i_2_n_0 ),
        .I2(h_cnt_reg[5]),
        .I3(h_cnt_reg[4]),
        .I4(h_cnt_reg[6]),
        .I5(h_cnt_reg[7]),
        .O(\h_cnt[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \h_cnt[8]_i_2 
       (.I0(h_cnt_reg__0[2]),
        .I1(h_cnt_reg__0[0]),
        .I2(h_cnt_reg__0[1]),
        .I3(h_cnt_reg[3]),
        .O(\h_cnt[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA6AAA)) 
    \h_cnt[9]_i_1 
       (.I0(h_cnt_reg[9]),
        .I1(h_cnt_reg[8]),
        .I2(h_cnt_reg[7]),
        .I3(h_cnt_reg[6]),
        .I4(\h_cnt[10]_i_3_n_0 ),
        .O(\h_cnt[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_cnt_reg[0] 
       (.C(VGA_clk),
        .CE(1'b1),
        .D(\h_cnt[0]_i_1_n_0 ),
        .Q(h_cnt_reg__0[0]),
        .R(\h_cnt[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_cnt_reg[10] 
       (.C(VGA_clk),
        .CE(1'b1),
        .D(\h_cnt[10]_i_2_n_0 ),
        .Q(h_cnt_reg[10]),
        .R(\h_cnt[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_cnt_reg[1] 
       (.C(VGA_clk),
        .CE(1'b1),
        .D(\h_cnt[1]_i_1_n_0 ),
        .Q(h_cnt_reg__0[1]),
        .R(\h_cnt[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_cnt_reg[2] 
       (.C(VGA_clk),
        .CE(1'b1),
        .D(\h_cnt[2]_i_1_n_0 ),
        .Q(h_cnt_reg__0[2]),
        .R(\h_cnt[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_cnt_reg[3] 
       (.C(VGA_clk),
        .CE(1'b1),
        .D(\h_cnt[3]_i_1_n_0 ),
        .Q(h_cnt_reg[3]),
        .R(\h_cnt[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_cnt_reg[4] 
       (.C(VGA_clk),
        .CE(1'b1),
        .D(\h_cnt[4]_i_1_n_0 ),
        .Q(h_cnt_reg[4]),
        .R(\h_cnt[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_cnt_reg[5] 
       (.C(VGA_clk),
        .CE(1'b1),
        .D(\h_cnt[5]_i_1_n_0 ),
        .Q(h_cnt_reg[5]),
        .R(\h_cnt[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_cnt_reg[6] 
       (.C(VGA_clk),
        .CE(1'b1),
        .D(\h_cnt[6]_i_1_n_0 ),
        .Q(h_cnt_reg[6]),
        .R(\h_cnt[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_cnt_reg[7] 
       (.C(VGA_clk),
        .CE(1'b1),
        .D(\h_cnt[7]_i_1_n_0 ),
        .Q(h_cnt_reg[7]),
        .R(\h_cnt[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_cnt_reg[8] 
       (.C(VGA_clk),
        .CE(1'b1),
        .D(\h_cnt[8]_i_1_n_0 ),
        .Q(h_cnt_reg[8]),
        .R(\h_cnt[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_cnt_reg[9] 
       (.C(VGA_clk),
        .CE(1'b1),
        .D(\h_cnt[9]_i_1_n_0 ),
        .Q(h_cnt_reg[9]),
        .R(\h_cnt[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0030000000001000)) 
    h_sync_INST_0
       (.I0(h_cnt_reg[5]),
        .I1(h_cnt_reg[10]),
        .I2(h_cnt_reg[9]),
        .I3(h_cnt_reg[8]),
        .I4(h_cnt_reg[7]),
        .I5(h_cnt_reg[6]),
        .O(h_sync));
  Block_top_VDP_wrapper_0_0_REG_MEMORY reg_mem
       (.D(reg_mem_n_18),
        .DPRA({S0_gen_n_92,S0_gen_n_93,S0_gen_n_94,S0_gen_n_95,S0_gen_n_96,S0_gen_n_97,S0_gen_n_98}),
        .Q(sel0),
        .S(reg_mem_n_19),
        .ctrl_reg(ctrl_reg),
        .\data_out[15]_i_6_0 ({S0_gen_n_99,S0_gen_n_100,S0_gen_n_101,S0_gen_n_102,S0_gen_n_103,S0_gen_n_104,S0_gen_n_105}),
        .\data_out[8]_i_7_0 (S0_gen_n_88),
        .\data_out[9]_i_4_0 (gen_line[9:8]),
        .\h_cnt_reg[6] (stat_reg),
        .\map_r_addr_reg[11] (S0_gen_n_86),
        .\map_r_addr_reg[11]_0 (S0_gen_n_87),
        .r0_map_cpu_addr(r0_map_cpu_addr),
        .r0_map_cpu_clk(r0_map_cpu_clk),
        .r0_map_cpu_din(r0_map_cpu_din),
        .r0_map_cpu_dout(r0_map_cpu_dout),
        .r0_map_cpu_en(r0_map_cpu_en),
        .r0_map_cpu_wen(r0_map_cpu_wen),
        .s0_palette_addr(s0_palette_addr),
        .s0_palette_data(s0_palette_data),
        .s_axi_aclk(s_axi_aclk),
        .t0_palette_addr(t0_palette_addr),
        .t0_palette_data(t0_palette_data),
        .t0_x_off_reg(t0_x_off_reg),
        .\t0_y_off_reg_reg[7]_0 ({reg_mem_n_0,reg_mem_n_1,reg_mem_n_2}),
        .\t0_y_off_reg_reg[9]_0 ({t0_y_off_reg[9:8],t0_y_off_reg[4:2],t0_y_off_reg[0]}),
        .t1_palette_addr(t1_palette_addr),
        .t1_palette_data(t1_palette_data),
        .t1_x_off_reg(t1_x_off_reg),
        .\t1_y_off_reg_reg[7]_0 ({reg_mem_n_9,reg_mem_n_10,reg_mem_n_11}),
        .\t1_y_off_reg_reg[9]_0 ({t1_y_off_reg[9:8],t1_y_off_reg[4:2],t1_y_off_reg[0]}),
        .\v_cnt_reg[1] (reg_mem_n_20),
        .\v_cnt_reg[4] (reg_mem_n_23),
        .\v_cnt_reg[8] (reg_mem_n_22),
        .\vga_b[0] (h_cnt_reg[10:4]));
  LUT1 #(
    .INIT(2'h1)) 
    \v_cnt[10]_i_1 
       (.I0(s_axi_aresetn),
        .O(\v_cnt[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00400000)) 
    \v_cnt[10]_i_2 
       (.I0(S0_gen_n_107),
        .I1(h_cnt_reg[8]),
        .I2(h_cnt_reg[9]),
        .I3(h_cnt_reg[10]),
        .I4(\v_cnt[10]_i_5_n_0 ),
        .I5(\v_cnt[10]_i_6_n_0 ),
        .O(\v_cnt[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA6AAA)) 
    \v_cnt[10]_i_3 
       (.I0(sel0[10]),
        .I1(sel0[9]),
        .I2(sel0[8]),
        .I3(sel0[7]),
        .I4(\v_cnt[10]_i_7_n_0 ),
        .O(\v_cnt[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \v_cnt[10]_i_5 
       (.I0(h_cnt_reg[4]),
        .I1(h_cnt_reg[3]),
        .I2(h_cnt_reg__0[1]),
        .I3(h_cnt_reg__0[0]),
        .I4(h_cnt_reg__0[2]),
        .O(\v_cnt[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \v_cnt[10]_i_6 
       (.I0(reg_mem_n_22),
        .I1(sel0[4]),
        .I2(\v_cnt[10]_i_8_n_0 ),
        .I3(sel0[2]),
        .I4(sel0[10]),
        .I5(sel0[0]),
        .O(\v_cnt[10]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \v_cnt[10]_i_7 
       (.I0(sel0[5]),
        .I1(sel0[6]),
        .I2(reg_mem_n_23),
        .O(\v_cnt[10]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \v_cnt[10]_i_8 
       (.I0(sel0[3]),
        .I1(sel0[1]),
        .I2(sel0[9]),
        .O(\v_cnt[10]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \v_cnt[1]_i_1 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .O(line_reg[1]));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT4 #(
    .INIT(16'h0078)) 
    \v_cnt[2]_i_1 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(\v_cnt[10]_i_6_n_0 ),
        .O(\v_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT5 #(
    .INIT(32'h00007F80)) 
    \v_cnt[3]_i_1 
       (.I0(sel0[0]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[3]),
        .I4(\v_cnt[10]_i_6_n_0 ),
        .O(\v_cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \v_cnt[5]_i_1 
       (.I0(sel0[5]),
        .I1(sel0[3]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(sel0[0]),
        .I5(sel0[4]),
        .O(\v_cnt[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \v_cnt[6]_i_1 
       (.I0(sel0[6]),
        .I1(sel0[5]),
        .I2(reg_mem_n_23),
        .O(\v_cnt[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \v_cnt[7]_i_1 
       (.I0(sel0[7]),
        .I1(reg_mem_n_23),
        .I2(sel0[6]),
        .I3(sel0[5]),
        .O(\v_cnt[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \v_cnt[8]_i_1 
       (.I0(sel0[8]),
        .I1(reg_mem_n_23),
        .I2(sel0[6]),
        .I3(sel0[5]),
        .I4(sel0[7]),
        .O(\v_cnt[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h44441444)) 
    \v_cnt[9]_i_1 
       (.I0(\v_cnt[10]_i_6_n_0 ),
        .I1(sel0[9]),
        .I2(sel0[8]),
        .I3(sel0[7]),
        .I4(\v_cnt[10]_i_7_n_0 ),
        .O(\v_cnt[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_cnt_reg[0] 
       (.C(VGA_clk),
        .CE(\v_cnt[10]_i_2_n_0 ),
        .D(line_reg[0]),
        .Q(sel0[0]),
        .R(\v_cnt[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_cnt_reg[10] 
       (.C(VGA_clk),
        .CE(\v_cnt[10]_i_2_n_0 ),
        .D(\v_cnt[10]_i_3_n_0 ),
        .Q(sel0[10]),
        .R(\v_cnt[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_cnt_reg[1] 
       (.C(VGA_clk),
        .CE(\v_cnt[10]_i_2_n_0 ),
        .D(line_reg[1]),
        .Q(sel0[1]),
        .R(\v_cnt[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_cnt_reg[2] 
       (.C(VGA_clk),
        .CE(\v_cnt[10]_i_2_n_0 ),
        .D(\v_cnt[2]_i_1_n_0 ),
        .Q(sel0[2]),
        .R(\v_cnt[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_cnt_reg[3] 
       (.C(VGA_clk),
        .CE(\v_cnt[10]_i_2_n_0 ),
        .D(\v_cnt[3]_i_1_n_0 ),
        .Q(sel0[3]),
        .R(\v_cnt[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_cnt_reg[4] 
       (.C(VGA_clk),
        .CE(\v_cnt[10]_i_2_n_0 ),
        .D(reg_mem_n_18),
        .Q(sel0[4]),
        .R(\v_cnt[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_cnt_reg[5] 
       (.C(VGA_clk),
        .CE(\v_cnt[10]_i_2_n_0 ),
        .D(\v_cnt[5]_i_1_n_0 ),
        .Q(sel0[5]),
        .R(\v_cnt[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_cnt_reg[6] 
       (.C(VGA_clk),
        .CE(\v_cnt[10]_i_2_n_0 ),
        .D(\v_cnt[6]_i_1_n_0 ),
        .Q(sel0[6]),
        .R(\v_cnt[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_cnt_reg[7] 
       (.C(VGA_clk),
        .CE(\v_cnt[10]_i_2_n_0 ),
        .D(\v_cnt[7]_i_1_n_0 ),
        .Q(sel0[7]),
        .R(\v_cnt[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_cnt_reg[8] 
       (.C(VGA_clk),
        .CE(\v_cnt[10]_i_2_n_0 ),
        .D(\v_cnt[8]_i_1_n_0 ),
        .Q(sel0[8]),
        .R(\v_cnt[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_cnt_reg[9] 
       (.C(VGA_clk),
        .CE(\v_cnt[10]_i_2_n_0 ),
        .D(\v_cnt[9]_i_1_n_0 ),
        .Q(sel0[9]),
        .R(\v_cnt[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    v_sync_INST_0
       (.I0(v_sync_INST_0_i_1_n_0),
        .I1(sel0[3]),
        .I2(sel0[1]),
        .I3(sel0[9]),
        .I4(sel0[10]),
        .I5(sel0[2]),
        .O(v_sync));
  LUT5 #(
    .INIT(32'h00000001)) 
    v_sync_INST_0_i_1
       (.I0(sel0[4]),
        .I1(sel0[7]),
        .I2(sel0[6]),
        .I3(sel0[5]),
        .I4(sel0[8]),
        .O(v_sync_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000005400000000)) 
    \vga_b[0]_INST_0 
       (.I0(sel0[10]),
        .I1(reg_mem_n_23),
        .I2(reg_mem_n_22),
        .I3(\vga_r[3]_INST_0_i_3_n_0 ),
        .I4(stat_reg),
        .I5(vga_rgb[0]),
        .O(vga_b[0]));
  LUT6 #(
    .INIT(64'h0000005400000000)) 
    \vga_b[1]_INST_0 
       (.I0(sel0[10]),
        .I1(reg_mem_n_23),
        .I2(reg_mem_n_22),
        .I3(\vga_r[3]_INST_0_i_3_n_0 ),
        .I4(stat_reg),
        .I5(vga_rgb[1]),
        .O(vga_b[1]));
  LUT6 #(
    .INIT(64'h0000005400000000)) 
    \vga_b[2]_INST_0 
       (.I0(sel0[10]),
        .I1(reg_mem_n_23),
        .I2(reg_mem_n_22),
        .I3(\vga_r[3]_INST_0_i_3_n_0 ),
        .I4(stat_reg),
        .I5(vga_rgb[2]),
        .O(vga_b[2]));
  LUT6 #(
    .INIT(64'h0000005400000000)) 
    \vga_b[3]_INST_0 
       (.I0(sel0[10]),
        .I1(reg_mem_n_23),
        .I2(reg_mem_n_22),
        .I3(\vga_r[3]_INST_0_i_3_n_0 ),
        .I4(stat_reg),
        .I5(vga_rgb[3]),
        .O(vga_b[3]));
  LUT6 #(
    .INIT(64'h0000005400000000)) 
    \vga_g[0]_INST_0 
       (.I0(sel0[10]),
        .I1(reg_mem_n_23),
        .I2(reg_mem_n_22),
        .I3(\vga_r[3]_INST_0_i_3_n_0 ),
        .I4(stat_reg),
        .I5(vga_rgb[4]),
        .O(vga_g[0]));
  LUT6 #(
    .INIT(64'h0000005400000000)) 
    \vga_g[1]_INST_0 
       (.I0(sel0[10]),
        .I1(reg_mem_n_23),
        .I2(reg_mem_n_22),
        .I3(\vga_r[3]_INST_0_i_3_n_0 ),
        .I4(stat_reg),
        .I5(vga_rgb[5]),
        .O(vga_g[1]));
  LUT6 #(
    .INIT(64'h0000005400000000)) 
    \vga_g[2]_INST_0 
       (.I0(sel0[10]),
        .I1(reg_mem_n_23),
        .I2(reg_mem_n_22),
        .I3(\vga_r[3]_INST_0_i_3_n_0 ),
        .I4(stat_reg),
        .I5(vga_rgb[6]),
        .O(vga_g[2]));
  LUT6 #(
    .INIT(64'h0000005400000000)) 
    \vga_g[3]_INST_0 
       (.I0(sel0[10]),
        .I1(reg_mem_n_23),
        .I2(reg_mem_n_22),
        .I3(\vga_r[3]_INST_0_i_3_n_0 ),
        .I4(stat_reg),
        .I5(vga_rgb[7]),
        .O(vga_g[3]));
  LUT6 #(
    .INIT(64'h0000005400000000)) 
    \vga_r[0]_INST_0 
       (.I0(sel0[10]),
        .I1(reg_mem_n_23),
        .I2(reg_mem_n_22),
        .I3(\vga_r[3]_INST_0_i_3_n_0 ),
        .I4(stat_reg),
        .I5(vga_rgb[8]),
        .O(vga_r[0]));
  LUT6 #(
    .INIT(64'h0000005400000000)) 
    \vga_r[1]_INST_0 
       (.I0(sel0[10]),
        .I1(reg_mem_n_23),
        .I2(reg_mem_n_22),
        .I3(\vga_r[3]_INST_0_i_3_n_0 ),
        .I4(stat_reg),
        .I5(vga_rgb[9]),
        .O(vga_r[1]));
  LUT6 #(
    .INIT(64'h0000005400000000)) 
    \vga_r[2]_INST_0 
       (.I0(sel0[10]),
        .I1(reg_mem_n_23),
        .I2(reg_mem_n_22),
        .I3(\vga_r[3]_INST_0_i_3_n_0 ),
        .I4(stat_reg),
        .I5(vga_rgb[10]),
        .O(vga_r[2]));
  LUT6 #(
    .INIT(64'h0000005400000000)) 
    \vga_r[3]_INST_0 
       (.I0(sel0[10]),
        .I1(reg_mem_n_23),
        .I2(reg_mem_n_22),
        .I3(\vga_r[3]_INST_0_i_3_n_0 ),
        .I4(stat_reg),
        .I5(vga_rgb[11]),
        .O(vga_r[3]));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \vga_r[3]_INST_0_i_3 
       (.I0(sel0[9]),
        .I1(sel0[5]),
        .I2(sel0[6]),
        .I3(reg_mem_n_23),
        .I4(sel0[7]),
        .I5(sel0[8]),
        .O(\vga_r[3]_INST_0_i_3_n_0 ));
endmodule

(* ORIG_REF_NAME = "VDP_sprite_gen" *) 
module Block_top_VDP_wrapper_0_0_VDP_sprite_gen
   (doutb,
    s0_data_cpu_dout,
    s0_palette_addr,
    s0_att_cpu_dout,
    \v_cnt_reg[6] ,
    \v_cnt_reg[7] ,
    \v_cnt_reg[2] ,
    gen_line_start,
    \v_cnt_reg[9] ,
    DPRA,
    \pal_issue_reg[5]_0 ,
    \gen_done_reg[2] ,
    \h_cnt_reg[5] ,
    gen_fin_data1,
    s_axi_aclk,
    Q,
    s0_data_cpu_clk,
    s0_data_cpu_en,
    s0_data_cpu_wen,
    s0_data_cpu_addr,
    s0_data_cpu_din,
    s0_att_cpu_clk,
    s0_att_cpu_en,
    s0_att_cpu_wen,
    s0_att_cpu_addr,
    s0_att_cpu_din,
    \map_r_addr[13]_i_3 ,
    gen_done,
    gen_done0,
    \FSM_onehot_state[6]_i_3_0 ,
    ctrl_reg,
    s0_palette_data);
  output [11:0]doutb;
  output [31:0]s0_data_cpu_dout;
  output [9:0]s0_palette_addr;
  output [31:0]s0_att_cpu_dout;
  output \v_cnt_reg[6] ;
  output \v_cnt_reg[7] ;
  output \v_cnt_reg[2] ;
  output gen_line_start;
  output [1:0]\v_cnt_reg[9] ;
  output [6:0]DPRA;
  output [6:0]\pal_issue_reg[5]_0 ;
  output \gen_done_reg[2] ;
  output \h_cnt_reg[5] ;
  output gen_fin_data1;
  input s_axi_aclk;
  input [9:0]Q;
  input s0_data_cpu_clk;
  input s0_data_cpu_en;
  input [3:0]s0_data_cpu_wen;
  input [12:0]s0_data_cpu_addr;
  input [31:0]s0_data_cpu_din;
  input s0_att_cpu_clk;
  input s0_att_cpu_en;
  input [3:0]s0_att_cpu_wen;
  input [6:0]s0_att_cpu_addr;
  input [31:0]s0_att_cpu_din;
  input [9:0]\map_r_addr[13]_i_3 ;
  input [0:0]gen_done;
  input gen_done0;
  input [10:0]\FSM_onehot_state[6]_i_3_0 ;
  input [0:0]ctrl_reg;
  input [15:0]s0_palette_data;

  wire [6:0]DPRA;
  wire \FSM_onehot_state[0]_i_2__1_n_0 ;
  wire \FSM_onehot_state[0]_i_3_n_0 ;
  wire \FSM_onehot_state[0]_i_4_n_0 ;
  wire \FSM_onehot_state[10]_i_1_n_0 ;
  wire \FSM_onehot_state[10]_i_2_n_0 ;
  wire \FSM_onehot_state[10]_i_3_n_0 ;
  wire \FSM_onehot_state[10]_i_4_n_0 ;
  wire \FSM_onehot_state[10]_i_6_n_0 ;
  wire \FSM_onehot_state[1]_i_2_n_0 ;
  wire \FSM_onehot_state[1]_i_3_n_0 ;
  wire \FSM_onehot_state[1]_i_4_n_0 ;
  wire [10:0]\FSM_onehot_state[6]_i_3_0 ;
  wire \FSM_onehot_state[6]_i_5_n_0 ;
  wire \FSM_onehot_state[6]_i_7_n_0 ;
  wire \FSM_onehot_state[6]_i_9_n_0 ;
  wire \FSM_onehot_state[9]_i_10_n_0 ;
  wire \FSM_onehot_state[9]_i_11_n_0 ;
  wire \FSM_onehot_state[9]_i_12_n_0 ;
  wire \FSM_onehot_state[9]_i_13_n_0 ;
  wire \FSM_onehot_state[9]_i_14_n_0 ;
  wire \FSM_onehot_state[9]_i_15_n_0 ;
  wire \FSM_onehot_state[9]_i_16_n_0 ;
  wire \FSM_onehot_state[9]_i_17_n_0 ;
  wire \FSM_onehot_state[9]_i_18_n_0 ;
  wire \FSM_onehot_state[9]_i_19_n_0 ;
  wire \FSM_onehot_state[9]_i_20_n_0 ;
  wire \FSM_onehot_state[9]_i_21_n_0 ;
  wire \FSM_onehot_state[9]_i_22_n_0 ;
  wire \FSM_onehot_state[9]_i_23_n_0 ;
  wire \FSM_onehot_state[9]_i_24_n_0 ;
  wire \FSM_onehot_state[9]_i_25_n_0 ;
  wire \FSM_onehot_state[9]_i_26_n_0 ;
  wire \FSM_onehot_state[9]_i_27_n_0 ;
  wire \FSM_onehot_state[9]_i_28_n_0 ;
  wire \FSM_onehot_state[9]_i_29_n_0 ;
  wire \FSM_onehot_state[9]_i_30_n_0 ;
  wire \FSM_onehot_state[9]_i_32_n_0 ;
  wire \FSM_onehot_state[9]_i_5_n_0 ;
  wire \FSM_onehot_state[9]_i_6_n_0 ;
  wire \FSM_onehot_state[9]_i_8_n_0 ;
  wire \FSM_onehot_state[9]_i_9_n_0 ;
  wire \FSM_onehot_state_reg[3]_rep_n_0 ;
  wire \FSM_onehot_state_reg[9]_i_3_n_3 ;
  wire \FSM_onehot_state_reg[9]_i_4_n_0 ;
  wire \FSM_onehot_state_reg[9]_i_4_n_1 ;
  wire \FSM_onehot_state_reg[9]_i_4_n_2 ;
  wire \FSM_onehot_state_reg[9]_i_4_n_3 ;
  wire \FSM_onehot_state_reg[9]_i_7_n_0 ;
  wire \FSM_onehot_state_reg[9]_i_7_n_1 ;
  wire \FSM_onehot_state_reg[9]_i_7_n_2 ;
  wire \FSM_onehot_state_reg[9]_i_7_n_3 ;
  wire [9:0]Q;
  wire att_pos0;
  wire att_pos3;
  wire att_pos312_in;
  wire [5:0]att_pos_reg;
  wire [0:0]clear_pos;
  wire \clear_pos[2]_i_1_n_0 ;
  wire \clear_pos[6]_i_2_n_0 ;
  wire \clear_pos[7]_i_1_n_0 ;
  wire \clear_pos[7]_i_4_n_0 ;
  wire \clear_pos[7]_i_5_n_0 ;
  wire \clear_pos[7]_i_6_n_0 ;
  wire \clear_pos_reg_n_0_[0] ;
  wire \clear_pos_reg_n_0_[1] ;
  wire \clear_pos_reg_n_0_[2] ;
  wire \clear_pos_reg_n_0_[3] ;
  wire \clear_pos_reg_n_0_[4] ;
  wire \clear_pos_reg_n_0_[5] ;
  wire \clear_pos_reg_n_0_[6] ;
  wire \clear_pos_reg_n_0_[7] ;
  wire [0:0]ctrl_reg;
  wire [0:0]data_pos;
  wire [10:0]data_pos0_in;
  wire \data_pos[10]_i_5_n_0 ;
  wire \data_pos[10]_i_6_n_0 ;
  wire \data_pos[10]_i_7_n_0 ;
  wire \data_pos[10]_i_8_n_0 ;
  wire \data_pos[3]_i_10_n_0 ;
  wire \data_pos[3]_i_11_n_0 ;
  wire \data_pos[3]_i_12_n_0 ;
  wire \data_pos[3]_i_6_n_0 ;
  wire \data_pos[3]_i_7_n_0 ;
  wire \data_pos[3]_i_8_n_0 ;
  wire \data_pos[3]_i_9_n_0 ;
  wire \data_pos[7]_i_11_n_0 ;
  wire \data_pos[7]_i_12_n_0 ;
  wire \data_pos[7]_i_14_n_0 ;
  wire \data_pos[7]_i_15_n_0 ;
  wire \data_pos[7]_i_16_n_0 ;
  wire \data_pos[7]_i_17_n_0 ;
  wire \data_pos[7]_i_18_n_0 ;
  wire \data_pos[7]_i_19_n_0 ;
  wire \data_pos[7]_i_21_n_0 ;
  wire \data_pos[7]_i_22_n_0 ;
  wire \data_pos[7]_i_23_n_0 ;
  wire \data_pos[7]_i_24_n_0 ;
  wire \data_pos[7]_i_6_n_0 ;
  wire \data_pos[7]_i_7_n_0 ;
  wire \data_pos[7]_i_8_n_0 ;
  wire \data_pos[7]_i_9_n_0 ;
  wire \data_pos_reg[10]_i_2_n_2 ;
  wire \data_pos_reg[10]_i_2_n_3 ;
  wire \data_pos_reg[3]_i_1_n_0 ;
  wire \data_pos_reg[3]_i_1_n_1 ;
  wire \data_pos_reg[3]_i_1_n_2 ;
  wire \data_pos_reg[3]_i_1_n_3 ;
  wire \data_pos_reg[7]_i_10_n_3 ;
  wire \data_pos_reg[7]_i_10_n_6 ;
  wire \data_pos_reg[7]_i_10_n_7 ;
  wire \data_pos_reg[7]_i_13_n_0 ;
  wire \data_pos_reg[7]_i_13_n_1 ;
  wire \data_pos_reg[7]_i_13_n_2 ;
  wire \data_pos_reg[7]_i_13_n_3 ;
  wire \data_pos_reg[7]_i_13_n_4 ;
  wire \data_pos_reg[7]_i_13_n_5 ;
  wire \data_pos_reg[7]_i_13_n_6 ;
  wire \data_pos_reg[7]_i_13_n_7 ;
  wire \data_pos_reg[7]_i_1_n_0 ;
  wire \data_pos_reg[7]_i_1_n_1 ;
  wire \data_pos_reg[7]_i_1_n_2 ;
  wire \data_pos_reg[7]_i_1_n_3 ;
  wire \data_pos_reg_n_0_[0] ;
  wire \data_pos_reg_n_0_[10] ;
  wire \data_pos_reg_n_0_[1] ;
  wire \data_pos_reg_n_0_[2] ;
  wire \data_pos_reg_n_0_[3] ;
  wire \data_pos_reg_n_0_[4] ;
  wire \data_pos_reg_n_0_[5] ;
  wire \data_pos_reg_n_0_[6] ;
  wire \data_pos_reg_n_0_[7] ;
  wire \data_pos_reg_n_0_[8] ;
  wire \data_pos_reg_n_0_[9] ;
  wire [11:0]doutb;
  wire [0:0]gen_done;
  wire gen_done0;
  wire \gen_done_reg[2] ;
  wire gen_fin_data1;
  wire [2:1]gen_line;
  wire gen_line_start;
  wire \h_cnt_reg[5] ;
  wire in12;
  wire [7:0]in17;
  wire [0:0]line_data;
  wire line_data0;
  wire \line_data[15]_i_10_n_0 ;
  wire \line_data[15]_i_12_n_0 ;
  wire \line_data[15]_i_13_n_0 ;
  wire \line_data[15]_i_14_n_0 ;
  wire \line_data[15]_i_15_n_0 ;
  wire \line_data[15]_i_17_n_0 ;
  wire \line_data[15]_i_18_n_0 ;
  wire \line_data[15]_i_19_n_0 ;
  wire \line_data[15]_i_20_n_0 ;
  wire \line_data[15]_i_22_n_0 ;
  wire \line_data[15]_i_23_n_0 ;
  wire \line_data[15]_i_24_n_0 ;
  wire \line_data[15]_i_25_n_0 ;
  wire \line_data[15]_i_27_n_0 ;
  wire \line_data[15]_i_28_n_0 ;
  wire \line_data[15]_i_29_n_0 ;
  wire \line_data[15]_i_30_n_0 ;
  wire \line_data[15]_i_32_n_0 ;
  wire \line_data[15]_i_33_n_0 ;
  wire \line_data[15]_i_34_n_0 ;
  wire \line_data[15]_i_35_n_0 ;
  wire \line_data[15]_i_36_n_0 ;
  wire \line_data[15]_i_37_n_0 ;
  wire \line_data[15]_i_38_n_0 ;
  wire \line_data[15]_i_39_n_0 ;
  wire \line_data[15]_i_40_n_0 ;
  wire \line_data[15]_i_42_n_0 ;
  wire \line_data[15]_i_43_n_0 ;
  wire \line_data[15]_i_44_n_0 ;
  wire \line_data[15]_i_45_n_0 ;
  wire \line_data[15]_i_47_n_0 ;
  wire \line_data[15]_i_48_n_0 ;
  wire \line_data[15]_i_49_n_0 ;
  wire \line_data[15]_i_50_n_0 ;
  wire \line_data[15]_i_51_n_0 ;
  wire \line_data[15]_i_52_n_0 ;
  wire \line_data[15]_i_53_n_0 ;
  wire \line_data[15]_i_54_n_0 ;
  wire \line_data[15]_i_5_n_0 ;
  wire \line_data[15]_i_6_n_0 ;
  wire \line_data[15]_i_7_n_0 ;
  wire \line_data[15]_i_9_n_0 ;
  wire \line_data[31]_i_10_n_0 ;
  wire \line_data[31]_i_12_n_0 ;
  wire \line_data[31]_i_13_n_0 ;
  wire \line_data[31]_i_14_n_0 ;
  wire \line_data[31]_i_15_n_0 ;
  wire \line_data[31]_i_17_n_0 ;
  wire \line_data[31]_i_18_n_0 ;
  wire \line_data[31]_i_19_n_0 ;
  wire \line_data[31]_i_20_n_0 ;
  wire \line_data[31]_i_22_n_0 ;
  wire \line_data[31]_i_23_n_0 ;
  wire \line_data[31]_i_24_n_0 ;
  wire \line_data[31]_i_25_n_0 ;
  wire \line_data[31]_i_27_n_0 ;
  wire \line_data[31]_i_28_n_0 ;
  wire \line_data[31]_i_29_n_0 ;
  wire \line_data[31]_i_30_n_0 ;
  wire \line_data[31]_i_32_n_0 ;
  wire \line_data[31]_i_33_n_0 ;
  wire \line_data[31]_i_34_n_0 ;
  wire \line_data[31]_i_35_n_0 ;
  wire \line_data[31]_i_36_n_0 ;
  wire \line_data[31]_i_37_n_0 ;
  wire \line_data[31]_i_38_n_0 ;
  wire \line_data[31]_i_39_n_0 ;
  wire \line_data[31]_i_40_n_0 ;
  wire \line_data[31]_i_42_n_0 ;
  wire \line_data[31]_i_43_n_0 ;
  wire \line_data[31]_i_44_n_0 ;
  wire \line_data[31]_i_45_n_0 ;
  wire \line_data[31]_i_47_n_0 ;
  wire \line_data[31]_i_48_n_0 ;
  wire \line_data[31]_i_49_n_0 ;
  wire \line_data[31]_i_50_n_0 ;
  wire \line_data[31]_i_51_n_0 ;
  wire \line_data[31]_i_52_n_0 ;
  wire \line_data[31]_i_53_n_0 ;
  wire \line_data[31]_i_54_n_0 ;
  wire \line_data[31]_i_5_n_0 ;
  wire \line_data[31]_i_6_n_0 ;
  wire \line_data[31]_i_7_n_0 ;
  wire \line_data[31]_i_9_n_0 ;
  wire \line_data[47]_i_10_n_0 ;
  wire \line_data[47]_i_11_n_0 ;
  wire \line_data[47]_i_13_n_0 ;
  wire \line_data[47]_i_14_n_0 ;
  wire \line_data[47]_i_15_n_0 ;
  wire \line_data[47]_i_16_n_0 ;
  wire \line_data[47]_i_18_n_0 ;
  wire \line_data[47]_i_19_n_0 ;
  wire \line_data[47]_i_20_n_0 ;
  wire \line_data[47]_i_21_n_0 ;
  wire \line_data[47]_i_23_n_0 ;
  wire \line_data[47]_i_24_n_0 ;
  wire \line_data[47]_i_25_n_0 ;
  wire \line_data[47]_i_26_n_0 ;
  wire \line_data[47]_i_28_n_0 ;
  wire \line_data[47]_i_29_n_0 ;
  wire \line_data[47]_i_30_n_0 ;
  wire \line_data[47]_i_31_n_0 ;
  wire \line_data[47]_i_33_n_0 ;
  wire \line_data[47]_i_34_n_0 ;
  wire \line_data[47]_i_35_n_0 ;
  wire \line_data[47]_i_36_n_0 ;
  wire \line_data[47]_i_37_n_0 ;
  wire \line_data[47]_i_38_n_0 ;
  wire \line_data[47]_i_39_n_0 ;
  wire \line_data[47]_i_40_n_0 ;
  wire \line_data[47]_i_41_n_0 ;
  wire \line_data[47]_i_43_n_0 ;
  wire \line_data[47]_i_44_n_0 ;
  wire \line_data[47]_i_45_n_0 ;
  wire \line_data[47]_i_46_n_0 ;
  wire \line_data[47]_i_47_n_0 ;
  wire \line_data[47]_i_48_n_0 ;
  wire \line_data[47]_i_49_n_0 ;
  wire \line_data[47]_i_50_n_0 ;
  wire \line_data[47]_i_5_n_0 ;
  wire \line_data[47]_i_6_n_0 ;
  wire \line_data[47]_i_7_n_0 ;
  wire \line_data[47]_i_8_n_0 ;
  wire \line_data_reg[15]_i_11_n_0 ;
  wire \line_data_reg[15]_i_11_n_1 ;
  wire \line_data_reg[15]_i_11_n_2 ;
  wire \line_data_reg[15]_i_11_n_3 ;
  wire \line_data_reg[15]_i_11_n_4 ;
  wire \line_data_reg[15]_i_11_n_5 ;
  wire \line_data_reg[15]_i_11_n_6 ;
  wire \line_data_reg[15]_i_11_n_7 ;
  wire \line_data_reg[15]_i_16_n_0 ;
  wire \line_data_reg[15]_i_16_n_1 ;
  wire \line_data_reg[15]_i_16_n_2 ;
  wire \line_data_reg[15]_i_16_n_3 ;
  wire \line_data_reg[15]_i_21_n_0 ;
  wire \line_data_reg[15]_i_21_n_1 ;
  wire \line_data_reg[15]_i_21_n_2 ;
  wire \line_data_reg[15]_i_21_n_3 ;
  wire \line_data_reg[15]_i_21_n_4 ;
  wire \line_data_reg[15]_i_21_n_5 ;
  wire \line_data_reg[15]_i_21_n_6 ;
  wire \line_data_reg[15]_i_21_n_7 ;
  wire \line_data_reg[15]_i_26_n_0 ;
  wire \line_data_reg[15]_i_26_n_1 ;
  wire \line_data_reg[15]_i_26_n_2 ;
  wire \line_data_reg[15]_i_26_n_3 ;
  wire \line_data_reg[15]_i_2_n_2 ;
  wire \line_data_reg[15]_i_2_n_3 ;
  wire \line_data_reg[15]_i_2_n_5 ;
  wire \line_data_reg[15]_i_2_n_6 ;
  wire \line_data_reg[15]_i_2_n_7 ;
  wire \line_data_reg[15]_i_31_n_0 ;
  wire \line_data_reg[15]_i_31_n_1 ;
  wire \line_data_reg[15]_i_31_n_2 ;
  wire \line_data_reg[15]_i_31_n_3 ;
  wire \line_data_reg[15]_i_31_n_4 ;
  wire \line_data_reg[15]_i_31_n_5 ;
  wire \line_data_reg[15]_i_31_n_6 ;
  wire \line_data_reg[15]_i_31_n_7 ;
  wire \line_data_reg[15]_i_3_n_3 ;
  wire \line_data_reg[15]_i_41_n_0 ;
  wire \line_data_reg[15]_i_41_n_1 ;
  wire \line_data_reg[15]_i_41_n_2 ;
  wire \line_data_reg[15]_i_41_n_3 ;
  wire \line_data_reg[15]_i_41_n_4 ;
  wire \line_data_reg[15]_i_41_n_5 ;
  wire \line_data_reg[15]_i_41_n_6 ;
  wire \line_data_reg[15]_i_41_n_7 ;
  wire \line_data_reg[15]_i_46_n_0 ;
  wire \line_data_reg[15]_i_46_n_1 ;
  wire \line_data_reg[15]_i_46_n_2 ;
  wire \line_data_reg[15]_i_46_n_3 ;
  wire \line_data_reg[15]_i_46_n_4 ;
  wire \line_data_reg[15]_i_46_n_5 ;
  wire \line_data_reg[15]_i_46_n_6 ;
  wire \line_data_reg[15]_i_46_n_7 ;
  wire \line_data_reg[15]_i_4_n_0 ;
  wire \line_data_reg[15]_i_4_n_1 ;
  wire \line_data_reg[15]_i_4_n_2 ;
  wire \line_data_reg[15]_i_4_n_3 ;
  wire \line_data_reg[15]_i_4_n_4 ;
  wire \line_data_reg[15]_i_4_n_5 ;
  wire \line_data_reg[15]_i_4_n_6 ;
  wire \line_data_reg[15]_i_4_n_7 ;
  wire \line_data_reg[15]_i_8_n_0 ;
  wire \line_data_reg[15]_i_8_n_1 ;
  wire \line_data_reg[15]_i_8_n_2 ;
  wire \line_data_reg[15]_i_8_n_3 ;
  wire \line_data_reg[31]_i_11_n_0 ;
  wire \line_data_reg[31]_i_11_n_1 ;
  wire \line_data_reg[31]_i_11_n_2 ;
  wire \line_data_reg[31]_i_11_n_3 ;
  wire \line_data_reg[31]_i_11_n_4 ;
  wire \line_data_reg[31]_i_11_n_5 ;
  wire \line_data_reg[31]_i_11_n_6 ;
  wire \line_data_reg[31]_i_11_n_7 ;
  wire \line_data_reg[31]_i_16_n_0 ;
  wire \line_data_reg[31]_i_16_n_1 ;
  wire \line_data_reg[31]_i_16_n_2 ;
  wire \line_data_reg[31]_i_16_n_3 ;
  wire \line_data_reg[31]_i_21_n_0 ;
  wire \line_data_reg[31]_i_21_n_1 ;
  wire \line_data_reg[31]_i_21_n_2 ;
  wire \line_data_reg[31]_i_21_n_3 ;
  wire \line_data_reg[31]_i_21_n_4 ;
  wire \line_data_reg[31]_i_21_n_5 ;
  wire \line_data_reg[31]_i_21_n_6 ;
  wire \line_data_reg[31]_i_21_n_7 ;
  wire \line_data_reg[31]_i_26_n_0 ;
  wire \line_data_reg[31]_i_26_n_1 ;
  wire \line_data_reg[31]_i_26_n_2 ;
  wire \line_data_reg[31]_i_26_n_3 ;
  wire \line_data_reg[31]_i_2_n_2 ;
  wire \line_data_reg[31]_i_2_n_3 ;
  wire \line_data_reg[31]_i_2_n_5 ;
  wire \line_data_reg[31]_i_2_n_6 ;
  wire \line_data_reg[31]_i_2_n_7 ;
  wire \line_data_reg[31]_i_31_n_0 ;
  wire \line_data_reg[31]_i_31_n_1 ;
  wire \line_data_reg[31]_i_31_n_2 ;
  wire \line_data_reg[31]_i_31_n_3 ;
  wire \line_data_reg[31]_i_31_n_4 ;
  wire \line_data_reg[31]_i_31_n_5 ;
  wire \line_data_reg[31]_i_31_n_6 ;
  wire \line_data_reg[31]_i_31_n_7 ;
  wire \line_data_reg[31]_i_3_n_3 ;
  wire \line_data_reg[31]_i_41_n_0 ;
  wire \line_data_reg[31]_i_41_n_1 ;
  wire \line_data_reg[31]_i_41_n_2 ;
  wire \line_data_reg[31]_i_41_n_3 ;
  wire \line_data_reg[31]_i_41_n_4 ;
  wire \line_data_reg[31]_i_41_n_5 ;
  wire \line_data_reg[31]_i_41_n_6 ;
  wire \line_data_reg[31]_i_41_n_7 ;
  wire \line_data_reg[31]_i_46_n_0 ;
  wire \line_data_reg[31]_i_46_n_1 ;
  wire \line_data_reg[31]_i_46_n_2 ;
  wire \line_data_reg[31]_i_46_n_3 ;
  wire \line_data_reg[31]_i_46_n_4 ;
  wire \line_data_reg[31]_i_46_n_5 ;
  wire \line_data_reg[31]_i_46_n_6 ;
  wire \line_data_reg[31]_i_46_n_7 ;
  wire \line_data_reg[31]_i_4_n_0 ;
  wire \line_data_reg[31]_i_4_n_1 ;
  wire \line_data_reg[31]_i_4_n_2 ;
  wire \line_data_reg[31]_i_4_n_3 ;
  wire \line_data_reg[31]_i_4_n_4 ;
  wire \line_data_reg[31]_i_4_n_5 ;
  wire \line_data_reg[31]_i_4_n_6 ;
  wire \line_data_reg[31]_i_4_n_7 ;
  wire \line_data_reg[31]_i_8_n_0 ;
  wire \line_data_reg[31]_i_8_n_1 ;
  wire \line_data_reg[31]_i_8_n_2 ;
  wire \line_data_reg[31]_i_8_n_3 ;
  wire \line_data_reg[47]_i_12_n_0 ;
  wire \line_data_reg[47]_i_12_n_1 ;
  wire \line_data_reg[47]_i_12_n_2 ;
  wire \line_data_reg[47]_i_12_n_3 ;
  wire \line_data_reg[47]_i_12_n_4 ;
  wire \line_data_reg[47]_i_12_n_5 ;
  wire \line_data_reg[47]_i_12_n_6 ;
  wire \line_data_reg[47]_i_12_n_7 ;
  wire \line_data_reg[47]_i_17_n_0 ;
  wire \line_data_reg[47]_i_17_n_1 ;
  wire \line_data_reg[47]_i_17_n_2 ;
  wire \line_data_reg[47]_i_17_n_3 ;
  wire \line_data_reg[47]_i_22_n_0 ;
  wire \line_data_reg[47]_i_22_n_1 ;
  wire \line_data_reg[47]_i_22_n_2 ;
  wire \line_data_reg[47]_i_22_n_3 ;
  wire \line_data_reg[47]_i_22_n_4 ;
  wire \line_data_reg[47]_i_22_n_5 ;
  wire \line_data_reg[47]_i_22_n_6 ;
  wire \line_data_reg[47]_i_22_n_7 ;
  wire \line_data_reg[47]_i_27_n_0 ;
  wire \line_data_reg[47]_i_27_n_1 ;
  wire \line_data_reg[47]_i_27_n_2 ;
  wire \line_data_reg[47]_i_27_n_3 ;
  wire \line_data_reg[47]_i_2_n_1 ;
  wire \line_data_reg[47]_i_2_n_2 ;
  wire \line_data_reg[47]_i_2_n_3 ;
  wire \line_data_reg[47]_i_2_n_4 ;
  wire \line_data_reg[47]_i_2_n_5 ;
  wire \line_data_reg[47]_i_2_n_6 ;
  wire \line_data_reg[47]_i_2_n_7 ;
  wire \line_data_reg[47]_i_32_n_0 ;
  wire \line_data_reg[47]_i_32_n_1 ;
  wire \line_data_reg[47]_i_32_n_2 ;
  wire \line_data_reg[47]_i_32_n_3 ;
  wire \line_data_reg[47]_i_32_n_4 ;
  wire \line_data_reg[47]_i_32_n_5 ;
  wire \line_data_reg[47]_i_32_n_6 ;
  wire \line_data_reg[47]_i_32_n_7 ;
  wire \line_data_reg[47]_i_3_n_3 ;
  wire \line_data_reg[47]_i_42_n_0 ;
  wire \line_data_reg[47]_i_42_n_1 ;
  wire \line_data_reg[47]_i_42_n_2 ;
  wire \line_data_reg[47]_i_42_n_3 ;
  wire \line_data_reg[47]_i_42_n_4 ;
  wire \line_data_reg[47]_i_42_n_5 ;
  wire \line_data_reg[47]_i_42_n_6 ;
  wire \line_data_reg[47]_i_42_n_7 ;
  wire \line_data_reg[47]_i_4_n_0 ;
  wire \line_data_reg[47]_i_4_n_1 ;
  wire \line_data_reg[47]_i_4_n_2 ;
  wire \line_data_reg[47]_i_4_n_3 ;
  wire \line_data_reg[47]_i_4_n_4 ;
  wire \line_data_reg[47]_i_4_n_5 ;
  wire \line_data_reg[47]_i_4_n_6 ;
  wire \line_data_reg[47]_i_4_n_7 ;
  wire \line_data_reg[47]_i_9_n_0 ;
  wire \line_data_reg[47]_i_9_n_1 ;
  wire \line_data_reg[47]_i_9_n_2 ;
  wire \line_data_reg[47]_i_9_n_3 ;
  wire \line_data_reg_n_0_[0] ;
  wire \line_data_reg_n_0_[10] ;
  wire \line_data_reg_n_0_[11] ;
  wire \line_data_reg_n_0_[12] ;
  wire \line_data_reg_n_0_[13] ;
  wire \line_data_reg_n_0_[14] ;
  wire \line_data_reg_n_0_[15] ;
  wire \line_data_reg_n_0_[16] ;
  wire \line_data_reg_n_0_[17] ;
  wire \line_data_reg_n_0_[18] ;
  wire \line_data_reg_n_0_[19] ;
  wire \line_data_reg_n_0_[1] ;
  wire \line_data_reg_n_0_[20] ;
  wire \line_data_reg_n_0_[21] ;
  wire \line_data_reg_n_0_[22] ;
  wire \line_data_reg_n_0_[23] ;
  wire \line_data_reg_n_0_[24] ;
  wire \line_data_reg_n_0_[25] ;
  wire \line_data_reg_n_0_[26] ;
  wire \line_data_reg_n_0_[27] ;
  wire \line_data_reg_n_0_[28] ;
  wire \line_data_reg_n_0_[29] ;
  wire \line_data_reg_n_0_[2] ;
  wire \line_data_reg_n_0_[30] ;
  wire \line_data_reg_n_0_[31] ;
  wire \line_data_reg_n_0_[32] ;
  wire \line_data_reg_n_0_[33] ;
  wire \line_data_reg_n_0_[34] ;
  wire \line_data_reg_n_0_[35] ;
  wire \line_data_reg_n_0_[36] ;
  wire \line_data_reg_n_0_[37] ;
  wire \line_data_reg_n_0_[38] ;
  wire \line_data_reg_n_0_[39] ;
  wire \line_data_reg_n_0_[3] ;
  wire \line_data_reg_n_0_[40] ;
  wire \line_data_reg_n_0_[41] ;
  wire \line_data_reg_n_0_[42] ;
  wire \line_data_reg_n_0_[43] ;
  wire \line_data_reg_n_0_[44] ;
  wire \line_data_reg_n_0_[45] ;
  wire \line_data_reg_n_0_[46] ;
  wire \line_data_reg_n_0_[47] ;
  wire \line_data_reg_n_0_[48] ;
  wire \line_data_reg_n_0_[49] ;
  wire \line_data_reg_n_0_[4] ;
  wire \line_data_reg_n_0_[50] ;
  wire \line_data_reg_n_0_[51] ;
  wire \line_data_reg_n_0_[52] ;
  wire \line_data_reg_n_0_[53] ;
  wire \line_data_reg_n_0_[54] ;
  wire \line_data_reg_n_0_[55] ;
  wire \line_data_reg_n_0_[56] ;
  wire \line_data_reg_n_0_[57] ;
  wire \line_data_reg_n_0_[58] ;
  wire \line_data_reg_n_0_[59] ;
  wire \line_data_reg_n_0_[5] ;
  wire \line_data_reg_n_0_[60] ;
  wire \line_data_reg_n_0_[61] ;
  wire \line_data_reg_n_0_[62] ;
  wire \line_data_reg_n_0_[63] ;
  wire \line_data_reg_n_0_[6] ;
  wire \line_data_reg_n_0_[7] ;
  wire \line_data_reg_n_0_[8] ;
  wire \line_data_reg_n_0_[9] ;
  wire line_done_i_1__1_n_0;
  wire line_done_i_2_n_0;
  wire line_done_i_3_n_0;
  wire [0:0]line_off;
  wire \line_off[0]_i_1_n_0 ;
  wire \line_off[1]_i_1_n_0 ;
  wire [1:0]line_off__0;
  wire [0:0]line_pos;
  wire \line_pos[0]_i_1_n_0 ;
  wire \line_pos[1]_i_1_n_0 ;
  wire \line_pos[2]_i_1_n_0 ;
  wire \line_pos[3]_i_1_n_0 ;
  wire \line_pos[3]_i_2_n_0 ;
  wire \line_pos[4]_i_1_n_0 ;
  wire \line_pos[4]_i_2_n_0 ;
  wire \line_pos[5]_i_1_n_0 ;
  wire \line_pos[5]_i_2_n_0 ;
  wire \line_pos[6]_i_1_n_0 ;
  wire \line_pos[7]_i_2_n_0 ;
  wire \line_pos[7]_i_3_n_0 ;
  wire [0:0]line_pos_reg;
  wire \line_pos_reg[0]_i_1_n_0 ;
  wire \line_pos_reg[1]_i_1_n_0 ;
  wire \line_pos_reg[2]_i_1_n_0 ;
  wire \line_pos_reg[3]_i_1_n_0 ;
  wire \line_pos_reg[4]_i_1_n_0 ;
  wire \line_pos_reg[5]_i_1_n_0 ;
  wire \line_pos_reg[6]_i_1_n_0 ;
  wire \line_pos_reg[7]_i_2_n_0 ;
  wire \line_pos_reg_n_0_[0] ;
  wire \line_pos_reg_n_0_[1] ;
  wire \line_pos_reg_n_0_[2] ;
  wire \line_pos_reg_n_0_[3] ;
  wire \line_pos_reg_n_0_[4] ;
  wire \line_pos_reg_n_0_[5] ;
  wire \line_pos_reg_n_0_[6] ;
  wire \line_pos_reg_n_0_[7] ;
  wire \line_pos_reg_reg_n_0_[0] ;
  wire \line_pos_reg_reg_n_0_[1] ;
  wire \line_pos_reg_reg_n_0_[2] ;
  wire \line_pos_reg_reg_n_0_[3] ;
  wire \line_pos_reg_reg_n_0_[4] ;
  wire \line_pos_reg_reg_n_0_[5] ;
  wire \line_pos_reg_reg_n_0_[6] ;
  wire \line_pos_reg_reg_n_0_[7] ;
  wire [0:0]line_we;
  wire line_we0;
  wire line_we1;
  wire line_we18_out;
  wire [15:0]line_we2;
  wire line_we210_in;
  wire line_we22_in;
  wire line_we3;
  wire [11:0]line_we30_out;
  wire [15:12]line_we33_out;
  wire [11:0]line_we33_out__0;
  wire line_we35_in;
  wire [15:12]line_we36_out;
  wire [11:0]line_we36_out__0;
  wire \line_we[1]_i_1_n_0 ;
  wire \line_we[3]_i_1_n_0 ;
  wire \line_we[5]_i_1_n_0 ;
  wire \line_we[7]_i_10_n_0 ;
  wire \line_we[7]_i_11_n_0 ;
  wire \line_we[7]_i_12_n_0 ;
  wire \line_we[7]_i_16_n_0 ;
  wire \line_we[7]_i_17_n_0 ;
  wire \line_we[7]_i_18_n_0 ;
  wire \line_we[7]_i_19_n_0 ;
  wire \line_we[7]_i_22_n_0 ;
  wire \line_we[7]_i_23_n_0 ;
  wire \line_we[7]_i_24_n_0 ;
  wire \line_we[7]_i_25_n_0 ;
  wire \line_we[7]_i_26_n_0 ;
  wire \line_we[7]_i_27_n_0 ;
  wire \line_we[7]_i_28_n_0 ;
  wire \line_we[7]_i_29_n_0 ;
  wire \line_we[7]_i_2_n_0 ;
  wire \line_we[7]_i_30_n_0 ;
  wire \line_we[7]_i_31_n_0 ;
  wire \line_we[7]_i_32_n_0 ;
  wire \line_we[7]_i_33_n_0 ;
  wire \line_we[7]_i_36_n_0 ;
  wire \line_we[7]_i_37_n_0 ;
  wire \line_we[7]_i_38_n_0 ;
  wire \line_we[7]_i_39_n_0 ;
  wire \line_we[7]_i_3_n_0 ;
  wire \line_we[7]_i_40_n_0 ;
  wire \line_we[7]_i_41_n_0 ;
  wire \line_we[7]_i_42_n_0 ;
  wire \line_we[7]_i_43_n_0 ;
  wire \line_we[7]_i_45_n_0 ;
  wire \line_we[7]_i_46_n_0 ;
  wire \line_we[7]_i_47_n_0 ;
  wire \line_we[7]_i_48_n_0 ;
  wire \line_we[7]_i_49_n_0 ;
  wire \line_we[7]_i_50_n_0 ;
  wire \line_we[7]_i_51_n_0 ;
  wire \line_we[7]_i_52_n_0 ;
  wire \line_we[7]_i_53_n_0 ;
  wire \line_we[7]_i_54_n_0 ;
  wire \line_we[7]_i_55_n_0 ;
  wire \line_we[7]_i_56_n_0 ;
  wire \line_we[7]_i_6_n_0 ;
  wire \line_we[7]_i_7_n_0 ;
  wire \line_we[7]_i_9_n_0 ;
  wire \line_we_reg[7]_i_13_n_2 ;
  wire \line_we_reg[7]_i_13_n_3 ;
  wire \line_we_reg[7]_i_13_n_5 ;
  wire \line_we_reg[7]_i_13_n_6 ;
  wire \line_we_reg[7]_i_13_n_7 ;
  wire \line_we_reg[7]_i_14_n_0 ;
  wire \line_we_reg[7]_i_14_n_1 ;
  wire \line_we_reg[7]_i_14_n_2 ;
  wire \line_we_reg[7]_i_14_n_3 ;
  wire \line_we_reg[7]_i_14_n_4 ;
  wire \line_we_reg[7]_i_14_n_5 ;
  wire \line_we_reg[7]_i_14_n_6 ;
  wire \line_we_reg[7]_i_14_n_7 ;
  wire \line_we_reg[7]_i_15_n_0 ;
  wire \line_we_reg[7]_i_15_n_1 ;
  wire \line_we_reg[7]_i_15_n_2 ;
  wire \line_we_reg[7]_i_15_n_3 ;
  wire \line_we_reg[7]_i_20_n_0 ;
  wire \line_we_reg[7]_i_20_n_1 ;
  wire \line_we_reg[7]_i_20_n_2 ;
  wire \line_we_reg[7]_i_20_n_3 ;
  wire \line_we_reg[7]_i_20_n_4 ;
  wire \line_we_reg[7]_i_20_n_5 ;
  wire \line_we_reg[7]_i_20_n_6 ;
  wire \line_we_reg[7]_i_20_n_7 ;
  wire \line_we_reg[7]_i_21_n_0 ;
  wire \line_we_reg[7]_i_21_n_1 ;
  wire \line_we_reg[7]_i_21_n_2 ;
  wire \line_we_reg[7]_i_21_n_3 ;
  wire \line_we_reg[7]_i_21_n_4 ;
  wire \line_we_reg[7]_i_21_n_5 ;
  wire \line_we_reg[7]_i_21_n_6 ;
  wire \line_we_reg[7]_i_21_n_7 ;
  wire \line_we_reg[7]_i_34_n_0 ;
  wire \line_we_reg[7]_i_34_n_1 ;
  wire \line_we_reg[7]_i_34_n_2 ;
  wire \line_we_reg[7]_i_34_n_3 ;
  wire \line_we_reg[7]_i_34_n_4 ;
  wire \line_we_reg[7]_i_34_n_5 ;
  wire \line_we_reg[7]_i_34_n_6 ;
  wire \line_we_reg[7]_i_34_n_7 ;
  wire \line_we_reg[7]_i_35_n_0 ;
  wire \line_we_reg[7]_i_35_n_1 ;
  wire \line_we_reg[7]_i_35_n_2 ;
  wire \line_we_reg[7]_i_35_n_3 ;
  wire \line_we_reg[7]_i_35_n_4 ;
  wire \line_we_reg[7]_i_35_n_5 ;
  wire \line_we_reg[7]_i_35_n_6 ;
  wire \line_we_reg[7]_i_35_n_7 ;
  wire \line_we_reg[7]_i_44_n_0 ;
  wire \line_we_reg[7]_i_44_n_1 ;
  wire \line_we_reg[7]_i_44_n_2 ;
  wire \line_we_reg[7]_i_44_n_3 ;
  wire \line_we_reg[7]_i_44_n_4 ;
  wire \line_we_reg[7]_i_44_n_5 ;
  wire \line_we_reg[7]_i_44_n_6 ;
  wire \line_we_reg[7]_i_44_n_7 ;
  wire \line_we_reg[7]_i_4_n_3 ;
  wire \line_we_reg[7]_i_5_n_0 ;
  wire \line_we_reg[7]_i_5_n_1 ;
  wire \line_we_reg[7]_i_5_n_2 ;
  wire \line_we_reg[7]_i_5_n_3 ;
  wire \line_we_reg[7]_i_8_n_0 ;
  wire \line_we_reg[7]_i_8_n_1 ;
  wire \line_we_reg[7]_i_8_n_2 ;
  wire \line_we_reg[7]_i_8_n_3 ;
  wire \line_we_reg_n_0_[1] ;
  wire \line_we_reg_n_0_[3] ;
  wire \line_we_reg_n_0_[5] ;
  wire \line_we_reg_n_0_[7] ;
  wire [0:0]line_word;
  wire \line_word[0]_i_1_n_0 ;
  wire \line_word[1]_i_1_n_0 ;
  wire \line_word[2]_i_1_n_0 ;
  wire \line_word[3]_i_2_n_0 ;
  wire \line_word[3]_i_4_n_0 ;
  wire \line_word[3]_i_5_n_0 ;
  wire \line_word_reg_n_0_[0] ;
  wire \line_word_reg_n_0_[1] ;
  wire \line_word_reg_n_0_[2] ;
  wire \line_word_reg_n_0_[3] ;
  wire [9:0]\map_r_addr[13]_i_3 ;
  wire p_0_in;
  wire [7:0]p_0_in__0;
  wire [5:0]p_0_in__1;
  wire [9:0]p_0_out;
  wire [15:0]p_2_out;
  wire [63:16]p_2_out__0;
  wire [4:0]pal_capture;
  wire \pal_capture[4]_i_1_n_0 ;
  wire [4:0]pal_capture__0;
  wire pal_data_valid0;
  wire pal_data_valid_i_1_n_0;
  wire pal_data_valid_i_2_n_0;
  wire pal_data_valid_i_3_n_0;
  wire pal_data_valid_i_4_n_0;
  wire pal_data_valid_reg_n_0;
  wire [5:1]pal_issue;
  wire pal_issue0;
  wire \pal_issue[0]_i_1_n_0 ;
  wire \pal_issue[5]_i_2_n_0 ;
  wire [6:0]\pal_issue_reg[5]_0 ;
  wire \pal_issue_reg_n_0_[0] ;
  wire \pal_issue_reg_n_0_[1] ;
  wire \pal_issue_reg_n_0_[2] ;
  wire \pal_issue_reg_n_0_[3] ;
  wire \pal_issue_reg_n_0_[4] ;
  wire \pal_issue_reg_n_0_[5] ;
  wire palette_s0_mem_reg_0_127_0_0_i_100_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_101_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_102_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_103_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_104_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_105_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_106_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_10_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_11_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_12_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_13_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_14_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_15_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_16_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_17_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_18_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_19_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_20_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_21_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_22_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_23_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_24_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_25_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_26_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_27_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_28_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_29_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_30_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_31_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_32_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_33_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_34_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_35_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_36_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_37_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_38_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_39_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_40_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_41_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_42_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_43_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_44_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_45_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_46_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_47_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_48_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_49_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_50_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_51_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_52_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_53_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_54_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_55_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_56_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_57_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_58_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_59_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_60_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_61_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_62_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_63_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_64_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_65_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_66_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_67_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_68_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_69_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_70_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_71_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_72_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_73_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_74_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_75_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_76_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_77_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_78_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_79_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_80_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_81_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_82_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_83_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_84_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_85_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_86_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_87_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_88_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_89_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_90_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_91_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_92_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_93_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_94_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_95_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_96_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_97_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_98_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_99_n_0;
  wire palette_s0_mem_reg_0_127_0_0_i_9_n_0;
  wire [0:0]row_buf;
  wire row_buf_reg_r1_0_31_0_5_i_2_n_0;
  wire row_buf_reg_r1_0_31_0_5_i_2_n_1;
  wire row_buf_reg_r1_0_31_0_5_i_2_n_2;
  wire row_buf_reg_r1_0_31_0_5_i_2_n_3;
  wire row_buf_reg_r1_0_31_0_5_i_2_n_4;
  wire row_buf_reg_r1_0_31_0_5_i_2_n_5;
  wire row_buf_reg_r1_0_31_0_5_i_2_n_6;
  wire row_buf_reg_r1_0_31_0_5_i_2_n_7;
  wire row_buf_reg_r1_0_31_0_5_i_3_n_0;
  wire row_buf_reg_r1_0_31_0_5_i_4_n_0;
  wire row_buf_reg_r1_0_31_0_5_i_5_n_0;
  wire row_buf_reg_r1_0_31_0_5_i_6_n_0;
  wire row_buf_reg_r2_0_31_0_5_i_1_n_0;
  wire row_buf_reg_r2_0_31_0_5_i_1_n_1;
  wire row_buf_reg_r2_0_31_0_5_i_1_n_2;
  wire row_buf_reg_r2_0_31_0_5_i_1_n_3;
  wire row_buf_reg_r2_0_31_0_5_i_1_n_4;
  wire row_buf_reg_r2_0_31_0_5_i_1_n_5;
  wire row_buf_reg_r2_0_31_0_5_i_1_n_6;
  wire row_buf_reg_r2_0_31_0_5_i_1_n_7;
  wire row_buf_reg_r2_0_31_0_5_i_2_n_0;
  wire row_buf_reg_r2_0_31_0_5_i_3_n_0;
  wire row_buf_reg_r2_0_31_0_5_i_4_n_0;
  wire row_buf_reg_r2_0_31_0_5_i_5_n_0;
  wire row_buf_reg_r2_0_31_0_5_i_6_n_0;
  wire row_buf_reg_r3_0_31_0_5_i_1_n_0;
  wire row_buf_reg_r3_0_31_0_5_i_1_n_1;
  wire row_buf_reg_r3_0_31_0_5_i_1_n_2;
  wire row_buf_reg_r3_0_31_0_5_i_1_n_3;
  wire row_buf_reg_r3_0_31_0_5_i_1_n_4;
  wire row_buf_reg_r3_0_31_0_5_i_1_n_5;
  wire row_buf_reg_r3_0_31_0_5_i_1_n_6;
  wire row_buf_reg_r3_0_31_0_5_i_1_n_7;
  wire row_buf_reg_r3_0_31_0_5_i_2_n_0;
  wire row_buf_reg_r3_0_31_0_5_i_3_n_0;
  wire row_buf_reg_r3_0_31_0_5_i_4_n_0;
  wire row_buf_reg_r3_0_31_0_5_i_5_n_0;
  wire row_buf_reg_r3_0_31_12_15_n_0;
  wire row_buf_reg_r3_0_31_12_15_n_1;
  wire row_buf_reg_r3_0_31_12_15_n_2;
  wire row_buf_reg_r3_0_31_12_15_n_3;
  wire row_buf_reg_r4_0_31_0_5_i_1_n_0;
  wire row_buf_reg_r4_0_31_0_5_i_1_n_1;
  wire row_buf_reg_r4_0_31_0_5_i_1_n_2;
  wire row_buf_reg_r4_0_31_0_5_i_1_n_3;
  wire row_buf_reg_r4_0_31_0_5_i_1_n_4;
  wire row_buf_reg_r4_0_31_0_5_i_1_n_5;
  wire row_buf_reg_r4_0_31_0_5_i_1_n_6;
  wire row_buf_reg_r4_0_31_0_5_i_1_n_7;
  wire row_buf_reg_r4_0_31_0_5_i_2_n_0;
  wire row_buf_reg_r4_0_31_0_5_i_2_n_1;
  wire row_buf_reg_r4_0_31_0_5_i_2_n_2;
  wire row_buf_reg_r4_0_31_0_5_i_2_n_3;
  wire row_buf_reg_r4_0_31_0_5_i_2_n_4;
  wire row_buf_reg_r4_0_31_0_5_i_2_n_5;
  wire row_buf_reg_r4_0_31_0_5_i_2_n_6;
  wire row_buf_reg_r4_0_31_0_5_i_2_n_7;
  wire row_buf_reg_r4_0_31_0_5_i_3_n_0;
  wire row_buf_reg_r4_0_31_0_5_i_4_n_0;
  wire row_buf_reg_r4_0_31_0_5_i_5_n_0;
  wire row_buf_reg_r4_0_31_0_5_i_6_n_0;
  wire row_buf_reg_r4_0_31_0_5_i_7_n_0;
  wire row_buf_reg_r4_0_31_0_5_i_8_n_0;
  wire row_buf_reg_r4_0_31_0_5_i_9_n_0;
  wire \row_index[0][0]_i_1_n_0 ;
  wire \row_index[0][1]_i_1_n_0 ;
  wire \row_index[0][2]_i_1_n_0 ;
  wire \row_index[0][3]_i_1_n_0 ;
  wire \row_index[0][4]_i_1_n_0 ;
  wire \row_index[0][5]_i_1_n_0 ;
  wire \row_index[0][6]_i_1_n_0 ;
  wire \row_index[0][7]_i_1_n_0 ;
  wire \row_index[0][7]_i_2_n_0 ;
  wire \row_index[10][0]_i_1_n_0 ;
  wire \row_index[10][1]_i_1_n_0 ;
  wire \row_index[10][2]_i_1_n_0 ;
  wire \row_index[10][3]_i_1_n_0 ;
  wire \row_index[10][4]_i_1_n_0 ;
  wire \row_index[10][5]_i_1_n_0 ;
  wire \row_index[10][6]_i_1_n_0 ;
  wire \row_index[10][7]_i_1_n_0 ;
  wire \row_index[11][0]_i_1_n_0 ;
  wire \row_index[11][1]_i_1_n_0 ;
  wire \row_index[11][2]_i_1_n_0 ;
  wire \row_index[11][3]_i_1_n_0 ;
  wire \row_index[11][4]_i_1_n_0 ;
  wire \row_index[11][5]_i_1_n_0 ;
  wire \row_index[11][6]_i_1_n_0 ;
  wire \row_index[11][7]_i_1_n_0 ;
  wire \row_index[12][0]_i_1_n_0 ;
  wire \row_index[12][1]_i_1_n_0 ;
  wire \row_index[12][2]_i_1_n_0 ;
  wire \row_index[12][3]_i_1_n_0 ;
  wire \row_index[12][4]_i_1_n_0 ;
  wire \row_index[12][5]_i_1_n_0 ;
  wire \row_index[12][6]_i_1_n_0 ;
  wire \row_index[12][7]_i_1_n_0 ;
  wire \row_index[13][0]_i_1_n_0 ;
  wire \row_index[13][1]_i_1_n_0 ;
  wire \row_index[13][2]_i_1_n_0 ;
  wire \row_index[13][3]_i_1_n_0 ;
  wire \row_index[13][4]_i_1_n_0 ;
  wire \row_index[13][5]_i_1_n_0 ;
  wire \row_index[13][6]_i_1_n_0 ;
  wire \row_index[13][7]_i_1_n_0 ;
  wire \row_index[14][0]_i_1_n_0 ;
  wire \row_index[14][1]_i_1_n_0 ;
  wire \row_index[14][2]_i_1_n_0 ;
  wire \row_index[14][3]_i_1_n_0 ;
  wire \row_index[14][4]_i_1_n_0 ;
  wire \row_index[14][5]_i_1_n_0 ;
  wire \row_index[14][6]_i_1_n_0 ;
  wire \row_index[14][7]_i_1_n_0 ;
  wire \row_index[15][0]_i_1_n_0 ;
  wire \row_index[15][1]_i_1_n_0 ;
  wire \row_index[15][2]_i_1_n_0 ;
  wire \row_index[15][3]_i_1_n_0 ;
  wire \row_index[15][4]_i_1_n_0 ;
  wire \row_index[15][5]_i_1_n_0 ;
  wire \row_index[15][6]_i_1_n_0 ;
  wire \row_index[15][7]_i_1_n_0 ;
  wire \row_index[16][0]_i_1_n_0 ;
  wire \row_index[16][1]_i_1_n_0 ;
  wire \row_index[16][2]_i_1_n_0 ;
  wire \row_index[16][3]_i_1_n_0 ;
  wire \row_index[16][4]_i_1_n_0 ;
  wire \row_index[16][5]_i_1_n_0 ;
  wire \row_index[16][6]_i_1_n_0 ;
  wire \row_index[16][7]_i_1_n_0 ;
  wire \row_index[16][7]_i_2_n_0 ;
  wire \row_index[17][0]_i_1_n_0 ;
  wire \row_index[17][1]_i_1_n_0 ;
  wire \row_index[17][2]_i_1_n_0 ;
  wire \row_index[17][3]_i_1_n_0 ;
  wire \row_index[17][4]_i_1_n_0 ;
  wire \row_index[17][5]_i_1_n_0 ;
  wire \row_index[17][6]_i_1_n_0 ;
  wire \row_index[17][7]_i_1_n_0 ;
  wire \row_index[18][0]_i_1_n_0 ;
  wire \row_index[18][1]_i_1_n_0 ;
  wire \row_index[18][2]_i_1_n_0 ;
  wire \row_index[18][3]_i_1_n_0 ;
  wire \row_index[18][4]_i_1_n_0 ;
  wire \row_index[18][5]_i_1_n_0 ;
  wire \row_index[18][6]_i_1_n_0 ;
  wire \row_index[18][7]_i_1_n_0 ;
  wire \row_index[19][0]_i_1_n_0 ;
  wire \row_index[19][1]_i_1_n_0 ;
  wire \row_index[19][2]_i_1_n_0 ;
  wire \row_index[19][3]_i_1_n_0 ;
  wire \row_index[19][4]_i_1_n_0 ;
  wire \row_index[19][5]_i_1_n_0 ;
  wire \row_index[19][6]_i_1_n_0 ;
  wire \row_index[19][7]_i_1_n_0 ;
  wire \row_index[1][0]_i_1_n_0 ;
  wire \row_index[1][1]_i_1_n_0 ;
  wire \row_index[1][2]_i_1_n_0 ;
  wire \row_index[1][3]_i_1_n_0 ;
  wire \row_index[1][4]_i_1_n_0 ;
  wire \row_index[1][5]_i_1_n_0 ;
  wire \row_index[1][6]_i_1_n_0 ;
  wire \row_index[1][7]_i_1_n_0 ;
  wire \row_index[20][0]_i_1_n_0 ;
  wire \row_index[20][1]_i_1_n_0 ;
  wire \row_index[20][2]_i_1_n_0 ;
  wire \row_index[20][3]_i_1_n_0 ;
  wire \row_index[20][4]_i_1_n_0 ;
  wire \row_index[20][5]_i_1_n_0 ;
  wire \row_index[20][6]_i_1_n_0 ;
  wire \row_index[20][7]_i_1_n_0 ;
  wire \row_index[21][0]_i_1_n_0 ;
  wire \row_index[21][1]_i_1_n_0 ;
  wire \row_index[21][2]_i_1_n_0 ;
  wire \row_index[21][3]_i_1_n_0 ;
  wire \row_index[21][4]_i_1_n_0 ;
  wire \row_index[21][5]_i_1_n_0 ;
  wire \row_index[21][6]_i_1_n_0 ;
  wire \row_index[21][7]_i_1_n_0 ;
  wire \row_index[22][0]_i_1_n_0 ;
  wire \row_index[22][1]_i_1_n_0 ;
  wire \row_index[22][2]_i_1_n_0 ;
  wire \row_index[22][3]_i_1_n_0 ;
  wire \row_index[22][4]_i_1_n_0 ;
  wire \row_index[22][5]_i_1_n_0 ;
  wire \row_index[22][6]_i_1_n_0 ;
  wire \row_index[22][7]_i_1_n_0 ;
  wire \row_index[23][0]_i_1_n_0 ;
  wire \row_index[23][1]_i_1_n_0 ;
  wire \row_index[23][2]_i_1_n_0 ;
  wire \row_index[23][3]_i_1_n_0 ;
  wire \row_index[23][4]_i_1_n_0 ;
  wire \row_index[23][5]_i_1_n_0 ;
  wire \row_index[23][6]_i_1_n_0 ;
  wire \row_index[23][7]_i_1_n_0 ;
  wire \row_index[24][0]_i_1_n_0 ;
  wire \row_index[24][1]_i_1_n_0 ;
  wire \row_index[24][2]_i_1_n_0 ;
  wire \row_index[24][3]_i_1_n_0 ;
  wire \row_index[24][4]_i_1_n_0 ;
  wire \row_index[24][5]_i_1_n_0 ;
  wire \row_index[24][6]_i_1_n_0 ;
  wire \row_index[24][7]_i_1_n_0 ;
  wire \row_index[25][0]_i_1_n_0 ;
  wire \row_index[25][1]_i_1_n_0 ;
  wire \row_index[25][2]_i_1_n_0 ;
  wire \row_index[25][3]_i_1_n_0 ;
  wire \row_index[25][4]_i_1_n_0 ;
  wire \row_index[25][5]_i_1_n_0 ;
  wire \row_index[25][6]_i_1_n_0 ;
  wire \row_index[25][7]_i_1_n_0 ;
  wire \row_index[26][0]_i_1_n_0 ;
  wire \row_index[26][1]_i_1_n_0 ;
  wire \row_index[26][2]_i_1_n_0 ;
  wire \row_index[26][3]_i_1_n_0 ;
  wire \row_index[26][4]_i_1_n_0 ;
  wire \row_index[26][5]_i_1_n_0 ;
  wire \row_index[26][6]_i_1_n_0 ;
  wire \row_index[26][7]_i_1_n_0 ;
  wire \row_index[27][0]_i_1_n_0 ;
  wire \row_index[27][1]_i_1_n_0 ;
  wire \row_index[27][2]_i_1_n_0 ;
  wire \row_index[27][3]_i_1_n_0 ;
  wire \row_index[27][4]_i_1_n_0 ;
  wire \row_index[27][5]_i_1_n_0 ;
  wire \row_index[27][6]_i_1_n_0 ;
  wire \row_index[27][7]_i_1_n_0 ;
  wire \row_index[28][0]_i_1_n_0 ;
  wire \row_index[28][1]_i_1_n_0 ;
  wire \row_index[28][2]_i_1_n_0 ;
  wire \row_index[28][3]_i_1_n_0 ;
  wire \row_index[28][4]_i_1_n_0 ;
  wire \row_index[28][5]_i_1_n_0 ;
  wire \row_index[28][6]_i_1_n_0 ;
  wire \row_index[28][7]_i_1_n_0 ;
  wire \row_index[29][0]_i_1_n_0 ;
  wire \row_index[29][1]_i_1_n_0 ;
  wire \row_index[29][2]_i_1_n_0 ;
  wire \row_index[29][3]_i_1_n_0 ;
  wire \row_index[29][4]_i_1_n_0 ;
  wire \row_index[29][5]_i_1_n_0 ;
  wire \row_index[29][6]_i_1_n_0 ;
  wire \row_index[29][7]_i_1_n_0 ;
  wire \row_index[2][0]_i_1_n_0 ;
  wire \row_index[2][1]_i_1_n_0 ;
  wire \row_index[2][2]_i_1_n_0 ;
  wire \row_index[2][3]_i_1_n_0 ;
  wire \row_index[2][4]_i_1_n_0 ;
  wire \row_index[2][5]_i_1_n_0 ;
  wire \row_index[2][6]_i_1_n_0 ;
  wire \row_index[2][7]_i_1_n_0 ;
  wire \row_index[30][0]_i_1_n_0 ;
  wire \row_index[30][1]_i_1_n_0 ;
  wire \row_index[30][2]_i_1_n_0 ;
  wire \row_index[30][3]_i_1_n_0 ;
  wire \row_index[30][4]_i_1_n_0 ;
  wire \row_index[30][5]_i_1_n_0 ;
  wire \row_index[30][6]_i_1_n_0 ;
  wire \row_index[30][7]_i_1_n_0 ;
  wire \row_index[31][0]_i_1_n_0 ;
  wire \row_index[31][1]_i_1_n_0 ;
  wire \row_index[31][2]_i_1_n_0 ;
  wire \row_index[31][3]_i_1_n_0 ;
  wire \row_index[31][4]_i_1_n_0 ;
  wire \row_index[31][5]_i_1_n_0 ;
  wire \row_index[31][6]_i_1_n_0 ;
  wire \row_index[31][7]_i_1_n_0 ;
  wire \row_index[3][0]_i_1_n_0 ;
  wire \row_index[3][1]_i_1_n_0 ;
  wire \row_index[3][2]_i_1_n_0 ;
  wire \row_index[3][3]_i_1_n_0 ;
  wire \row_index[3][4]_i_1_n_0 ;
  wire \row_index[3][5]_i_1_n_0 ;
  wire \row_index[3][6]_i_1_n_0 ;
  wire \row_index[3][7]_i_1_n_0 ;
  wire \row_index[4][0]_i_1_n_0 ;
  wire \row_index[4][1]_i_1_n_0 ;
  wire \row_index[4][2]_i_1_n_0 ;
  wire \row_index[4][3]_i_1_n_0 ;
  wire \row_index[4][4]_i_1_n_0 ;
  wire \row_index[4][5]_i_1_n_0 ;
  wire \row_index[4][6]_i_1_n_0 ;
  wire \row_index[4][7]_i_1_n_0 ;
  wire \row_index[5][0]_i_1_n_0 ;
  wire \row_index[5][1]_i_1_n_0 ;
  wire \row_index[5][2]_i_1_n_0 ;
  wire \row_index[5][3]_i_1_n_0 ;
  wire \row_index[5][4]_i_1_n_0 ;
  wire \row_index[5][5]_i_1_n_0 ;
  wire \row_index[5][6]_i_1_n_0 ;
  wire \row_index[5][7]_i_1_n_0 ;
  wire \row_index[6][0]_i_1_n_0 ;
  wire \row_index[6][1]_i_1_n_0 ;
  wire \row_index[6][2]_i_1_n_0 ;
  wire \row_index[6][3]_i_1_n_0 ;
  wire \row_index[6][4]_i_1_n_0 ;
  wire \row_index[6][5]_i_1_n_0 ;
  wire \row_index[6][6]_i_1_n_0 ;
  wire \row_index[6][7]_i_1_n_0 ;
  wire \row_index[7][0]_i_1_n_0 ;
  wire \row_index[7][1]_i_1_n_0 ;
  wire \row_index[7][2]_i_1_n_0 ;
  wire \row_index[7][3]_i_1_n_0 ;
  wire \row_index[7][4]_i_1_n_0 ;
  wire \row_index[7][5]_i_1_n_0 ;
  wire \row_index[7][6]_i_1_n_0 ;
  wire \row_index[7][7]_i_1_n_0 ;
  wire \row_index[8][0]_i_1_n_0 ;
  wire \row_index[8][1]_i_1_n_0 ;
  wire \row_index[8][2]_i_1_n_0 ;
  wire \row_index[8][3]_i_1_n_0 ;
  wire \row_index[8][4]_i_1_n_0 ;
  wire \row_index[8][5]_i_1_n_0 ;
  wire \row_index[8][6]_i_1_n_0 ;
  wire \row_index[8][7]_i_1_n_0 ;
  wire \row_index[9][0]_i_1_n_0 ;
  wire \row_index[9][1]_i_1_n_0 ;
  wire \row_index[9][2]_i_1_n_0 ;
  wire \row_index[9][3]_i_1_n_0 ;
  wire \row_index[9][4]_i_1_n_0 ;
  wire \row_index[9][5]_i_1_n_0 ;
  wire \row_index[9][6]_i_1_n_0 ;
  wire \row_index[9][7]_i_1_n_0 ;
  wire [7:0]\row_index_reg[10]_2 ;
  wire [7:0]\row_index_reg[11]_3 ;
  wire [7:0]\row_index_reg[12]_4 ;
  wire [7:0]\row_index_reg[13]_5 ;
  wire [7:0]\row_index_reg[14]_6 ;
  wire [7:0]\row_index_reg[15]_7 ;
  wire [7:0]\row_index_reg[17]_8 ;
  wire [7:0]\row_index_reg[18]_9 ;
  wire [7:0]\row_index_reg[19]_10 ;
  wire [7:0]\row_index_reg[20]_11 ;
  wire [7:0]\row_index_reg[21]_12 ;
  wire [7:0]\row_index_reg[22]_13 ;
  wire [7:0]\row_index_reg[23]_14 ;
  wire [7:0]\row_index_reg[24]_15 ;
  wire [7:0]\row_index_reg[25]_16 ;
  wire [7:0]\row_index_reg[26]_17 ;
  wire [7:0]\row_index_reg[27]_18 ;
  wire [7:0]\row_index_reg[28]_19 ;
  wire [7:0]\row_index_reg[29]_20 ;
  wire [7:0]\row_index_reg[30]_21 ;
  wire [7:0]\row_index_reg[8]_0 ;
  wire [7:0]\row_index_reg[9]_1 ;
  wire \row_index_reg_n_0_[0][0] ;
  wire \row_index_reg_n_0_[0][1] ;
  wire \row_index_reg_n_0_[0][2] ;
  wire \row_index_reg_n_0_[0][3] ;
  wire \row_index_reg_n_0_[0][4] ;
  wire \row_index_reg_n_0_[0][5] ;
  wire \row_index_reg_n_0_[0][6] ;
  wire \row_index_reg_n_0_[0][7] ;
  wire \row_index_reg_n_0_[16][0] ;
  wire \row_index_reg_n_0_[16][1] ;
  wire \row_index_reg_n_0_[16][2] ;
  wire \row_index_reg_n_0_[16][3] ;
  wire \row_index_reg_n_0_[16][4] ;
  wire \row_index_reg_n_0_[16][5] ;
  wire \row_index_reg_n_0_[16][6] ;
  wire \row_index_reg_n_0_[16][7] ;
  wire \row_index_reg_n_0_[1][0] ;
  wire \row_index_reg_n_0_[1][1] ;
  wire \row_index_reg_n_0_[1][2] ;
  wire \row_index_reg_n_0_[1][3] ;
  wire \row_index_reg_n_0_[1][4] ;
  wire \row_index_reg_n_0_[1][5] ;
  wire \row_index_reg_n_0_[1][6] ;
  wire \row_index_reg_n_0_[1][7] ;
  wire \row_index_reg_n_0_[2][0] ;
  wire \row_index_reg_n_0_[2][1] ;
  wire \row_index_reg_n_0_[2][2] ;
  wire \row_index_reg_n_0_[2][3] ;
  wire \row_index_reg_n_0_[2][4] ;
  wire \row_index_reg_n_0_[2][5] ;
  wire \row_index_reg_n_0_[2][6] ;
  wire \row_index_reg_n_0_[2][7] ;
  wire \row_index_reg_n_0_[31][0] ;
  wire \row_index_reg_n_0_[31][1] ;
  wire \row_index_reg_n_0_[31][2] ;
  wire \row_index_reg_n_0_[31][3] ;
  wire \row_index_reg_n_0_[31][4] ;
  wire \row_index_reg_n_0_[31][5] ;
  wire \row_index_reg_n_0_[31][6] ;
  wire \row_index_reg_n_0_[31][7] ;
  wire \row_index_reg_n_0_[3][0] ;
  wire \row_index_reg_n_0_[3][1] ;
  wire \row_index_reg_n_0_[3][2] ;
  wire \row_index_reg_n_0_[3][3] ;
  wire \row_index_reg_n_0_[3][4] ;
  wire \row_index_reg_n_0_[3][5] ;
  wire \row_index_reg_n_0_[3][6] ;
  wire \row_index_reg_n_0_[3][7] ;
  wire \row_index_reg_n_0_[4][0] ;
  wire \row_index_reg_n_0_[4][1] ;
  wire \row_index_reg_n_0_[4][2] ;
  wire \row_index_reg_n_0_[4][3] ;
  wire \row_index_reg_n_0_[4][4] ;
  wire \row_index_reg_n_0_[4][5] ;
  wire \row_index_reg_n_0_[4][6] ;
  wire \row_index_reg_n_0_[4][7] ;
  wire \row_index_reg_n_0_[5][0] ;
  wire \row_index_reg_n_0_[5][1] ;
  wire \row_index_reg_n_0_[5][2] ;
  wire \row_index_reg_n_0_[5][3] ;
  wire \row_index_reg_n_0_[5][4] ;
  wire \row_index_reg_n_0_[5][5] ;
  wire \row_index_reg_n_0_[5][6] ;
  wire \row_index_reg_n_0_[5][7] ;
  wire \row_index_reg_n_0_[6][0] ;
  wire \row_index_reg_n_0_[6][1] ;
  wire \row_index_reg_n_0_[6][2] ;
  wire \row_index_reg_n_0_[6][3] ;
  wire \row_index_reg_n_0_[6][4] ;
  wire \row_index_reg_n_0_[6][5] ;
  wire \row_index_reg_n_0_[6][6] ;
  wire \row_index_reg_n_0_[6][7] ;
  wire \row_index_reg_n_0_[7][0] ;
  wire \row_index_reg_n_0_[7][1] ;
  wire \row_index_reg_n_0_[7][2] ;
  wire \row_index_reg_n_0_[7][3] ;
  wire \row_index_reg_n_0_[7][4] ;
  wire \row_index_reg_n_0_[7][5] ;
  wire \row_index_reg_n_0_[7][6] ;
  wire \row_index_reg_n_0_[7][7] ;
  wire [6:0]s0_att_cpu_addr;
  wire s0_att_cpu_clk;
  wire [31:0]s0_att_cpu_din;
  wire [31:0]s0_att_cpu_dout;
  wire s0_att_cpu_en;
  wire [3:0]s0_att_cpu_wen;
  wire [12:0]s0_data_cpu_addr;
  wire s0_data_cpu_clk;
  wire [31:0]s0_data_cpu_din;
  wire [31:0]s0_data_cpu_dout;
  wire s0_data_cpu_en;
  wire [3:0]s0_data_cpu_wen;
  wire s0_done;
  wire [15:12]s0_dout;
  wire [9:0]s0_palette_addr;
  wire [15:0]s0_palette_data;
  wire \s0_palette_data[15]_i_11_n_0 ;
  wire \s0_palette_data[15]_i_12_n_0 ;
  wire \s0_palette_data[15]_i_13_n_0 ;
  wire \s0_palette_data[15]_i_14_n_0 ;
  wire \s0_palette_data[15]_i_15_n_0 ;
  wire \s0_palette_data[15]_i_16_n_0 ;
  wire \s0_palette_data[15]_i_17_n_0 ;
  wire \s0_palette_data[15]_i_18_n_0 ;
  wire \s0_palette_data_reg[15]_i_10_n_0 ;
  wire \s0_palette_data_reg[15]_i_5_n_0 ;
  wire \s0_palette_data_reg[15]_i_6_n_0 ;
  wire \s0_palette_data_reg[15]_i_7_n_0 ;
  wire \s0_palette_data_reg[15]_i_8_n_0 ;
  wire \s0_palette_data_reg[15]_i_9_n_0 ;
  wire s_axi_aclk;
  wire [63:0]spr_att_vdp_dout;
  wire [0:0]spr_cnt;
  wire \spr_cnt[7]_i_2_n_0 ;
  wire [7:0]spr_cnt_reg;
  wire [127:0]spr_data_vdp_dout;
  wire [9:1]state;
  wire [9:0]state__0;
  wire [0:0]state__1;
  wire \v_cnt_reg[2] ;
  wire \v_cnt_reg[6] ;
  wire \v_cnt_reg[7] ;
  wire [1:0]\v_cnt_reg[9] ;
  wire [3:1]\NLW_FSM_onehot_state_reg[9]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_FSM_onehot_state_reg[9]_i_2_O_UNCONNECTED ;
  wire [3:2]\NLW_FSM_onehot_state_reg[9]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_FSM_onehot_state_reg[9]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_FSM_onehot_state_reg[9]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_FSM_onehot_state_reg[9]_i_7_O_UNCONNECTED ;
  wire [3:2]\NLW_data_pos_reg[10]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_data_pos_reg[10]_i_2_O_UNCONNECTED ;
  wire [3:1]\NLW_data_pos_reg[7]_i_10_CO_UNCONNECTED ;
  wire [3:2]\NLW_data_pos_reg[7]_i_10_O_UNCONNECTED ;
  wire [3:0]\NLW_line_data_reg[15]_i_16_O_UNCONNECTED ;
  wire [3:2]\NLW_line_data_reg[15]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_line_data_reg[15]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_line_data_reg[15]_i_26_O_UNCONNECTED ;
  wire [3:2]\NLW_line_data_reg[15]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_line_data_reg[15]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_line_data_reg[15]_i_8_O_UNCONNECTED ;
  wire [3:0]\NLW_line_data_reg[31]_i_16_O_UNCONNECTED ;
  wire [3:2]\NLW_line_data_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_line_data_reg[31]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_line_data_reg[31]_i_26_O_UNCONNECTED ;
  wire [3:2]\NLW_line_data_reg[31]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_line_data_reg[31]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_line_data_reg[31]_i_8_O_UNCONNECTED ;
  wire [3:0]\NLW_line_data_reg[47]_i_17_O_UNCONNECTED ;
  wire [3:3]\NLW_line_data_reg[47]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_line_data_reg[47]_i_27_O_UNCONNECTED ;
  wire [3:2]\NLW_line_data_reg[47]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_line_data_reg[47]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_line_data_reg[47]_i_9_O_UNCONNECTED ;
  wire [3:2]\NLW_line_we_reg[7]_i_13_CO_UNCONNECTED ;
  wire [3:3]\NLW_line_we_reg[7]_i_13_O_UNCONNECTED ;
  wire [3:0]\NLW_line_we_reg[7]_i_15_O_UNCONNECTED ;
  wire [3:2]\NLW_line_we_reg[7]_i_4_CO_UNCONNECTED ;
  wire [3:0]\NLW_line_we_reg[7]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_line_we_reg[7]_i_5_O_UNCONNECTED ;
  wire [3:0]\NLW_line_we_reg[7]_i_8_O_UNCONNECTED ;
  wire [1:0]NLW_row_buf_reg_r1_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_row_buf_reg_r1_0_31_12_15_DOC_UNCONNECTED;
  wire [1:0]NLW_row_buf_reg_r1_0_31_12_15_DOD_UNCONNECTED;
  wire [1:0]NLW_row_buf_reg_r1_0_31_6_11_DOD_UNCONNECTED;
  wire [1:0]NLW_row_buf_reg_r2_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_row_buf_reg_r2_0_31_12_15_DOC_UNCONNECTED;
  wire [1:0]NLW_row_buf_reg_r2_0_31_12_15_DOD_UNCONNECTED;
  wire [1:0]NLW_row_buf_reg_r2_0_31_6_11_DOD_UNCONNECTED;
  wire [1:0]NLW_row_buf_reg_r3_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_row_buf_reg_r3_0_31_12_15_DOC_UNCONNECTED;
  wire [1:0]NLW_row_buf_reg_r3_0_31_12_15_DOD_UNCONNECTED;
  wire [1:0]NLW_row_buf_reg_r3_0_31_6_11_DOD_UNCONNECTED;
  wire [1:0]NLW_row_buf_reg_r4_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_row_buf_reg_r4_0_31_12_15_DOC_UNCONNECTED;
  wire [1:0]NLW_row_buf_reg_r4_0_31_12_15_DOD_UNCONNECTED;
  wire [1:0]NLW_row_buf_reg_r4_0_31_6_11_DOD_UNCONNECTED;
  wire [62:10]NLW_spr_att_douta_UNCONNECTED;
  wire [63:0]NLW_spr_line_douta_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h8888888B)) 
    \FSM_onehot_state[0]_i_1__1 
       (.I0(\FSM_onehot_state[1]_i_2_n_0 ),
        .I1(state[9]),
        .I2(line_data0),
        .I3(row_buf),
        .I4(\FSM_onehot_state[0]_i_2__1_n_0 ),
        .O(state__0[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_state[0]_i_2__1 
       (.I0(\FSM_onehot_state[0]_i_3_n_0 ),
        .I1(spr_cnt),
        .I2(line_data),
        .I3(\FSM_onehot_state[0]_i_4_n_0 ),
        .I4(state[3]),
        .I5(line_off),
        .O(\FSM_onehot_state[0]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state[0]_i_3 
       (.I0(pal_issue0),
        .I1(state[4]),
        .O(\FSM_onehot_state[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state[0]_i_4 
       (.I0(state[1]),
        .I1(att_pos0),
        .O(\FSM_onehot_state[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_state[10]_i_1 
       (.I0(\FSM_onehot_state[10]_i_2_n_0 ),
        .I1(\FSM_onehot_state[10]_i_3_n_0 ),
        .I2(line_off),
        .I3(spr_cnt),
        .I4(\FSM_onehot_state[10]_i_4_n_0 ),
        .O(\FSM_onehot_state[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_state[10]_i_2 
       (.I0(state[9]),
        .I1(state[1]),
        .I2(state[4]),
        .I3(pal_issue0),
        .O(\FSM_onehot_state[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8F8F8)) 
    \FSM_onehot_state[10]_i_3 
       (.I0(att_pos0),
        .I1(gen_line_start),
        .I2(state[3]),
        .I3(line_data0),
        .I4(state__1),
        .I5(\line_word[3]_i_4_n_0 ),
        .O(\FSM_onehot_state[10]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h8888888B)) 
    \FSM_onehot_state[10]_i_4 
       (.I0(in12),
        .I1(line_data),
        .I2(row_buf),
        .I3(att_pos0),
        .I4(line_data0),
        .O(\FSM_onehot_state[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \FSM_onehot_state[10]_i_5 
       (.I0(\clear_pos_reg_n_0_[7] ),
        .I1(\clear_pos_reg_n_0_[4] ),
        .I2(\clear_pos_reg_n_0_[6] ),
        .I3(\clear_pos_reg_n_0_[5] ),
        .I4(\clear_pos[6]_i_2_n_0 ),
        .I5(\FSM_onehot_state[10]_i_6_n_0 ),
        .O(state__1));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_onehot_state[10]_i_6 
       (.I0(\clear_pos_reg_n_0_[3] ),
        .I1(\clear_pos_reg_n_0_[2] ),
        .O(\FSM_onehot_state[10]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_state[1]_i_1__1 
       (.I0(line_data0),
        .I1(\FSM_onehot_state[1]_i_2_n_0 ),
        .I2(state[9]),
        .O(state__0[1]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAAB)) 
    \FSM_onehot_state[1]_i_2 
       (.I0(\FSM_onehot_state[1]_i_3_n_0 ),
        .I1(\FSM_onehot_state[1]_i_4_n_0 ),
        .I2(spr_cnt_reg[7]),
        .I3(spr_cnt_reg[6]),
        .I4(spr_cnt_reg[4]),
        .I5(spr_cnt_reg[0]),
        .O(\FSM_onehot_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \FSM_onehot_state[1]_i_3 
       (.I0(att_pos_reg[5]),
        .I1(att_pos_reg[4]),
        .I2(att_pos_reg[1]),
        .I3(att_pos_reg[0]),
        .I4(att_pos_reg[3]),
        .I5(att_pos_reg[2]),
        .O(\FSM_onehot_state[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \FSM_onehot_state[1]_i_4 
       (.I0(spr_cnt_reg[2]),
        .I1(spr_cnt_reg[3]),
        .I2(spr_cnt_reg[5]),
        .I3(spr_cnt_reg[1]),
        .O(\FSM_onehot_state[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(state[1]),
        .I1(spr_att_vdp_dout[63]),
        .I2(att_pos3),
        .I3(att_pos312_in),
        .O(state__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(state[3]),
        .I1(spr_att_vdp_dout[52]),
        .O(state__0[4]));
  LUT6 #(
    .INIT(64'h000000000000FFFD)) 
    \FSM_onehot_state[6]_i_3 
       (.I0(\v_cnt_reg[9] [0]),
        .I1(\v_cnt_reg[7] ),
        .I2(\FSM_onehot_state[6]_i_5_n_0 ),
        .I3(\v_cnt_reg[6] ),
        .I4(\FSM_onehot_state[6]_i_7_n_0 ),
        .I5(\v_cnt_reg[9] [1]),
        .O(gen_line_start));
  LUT4 #(
    .INIT(16'h5565)) 
    \FSM_onehot_state[6]_i_4 
       (.I0(\map_r_addr[13]_i_3 [7]),
        .I1(\map_r_addr[13]_i_3 [6]),
        .I2(\v_cnt_reg[2] ),
        .I3(\map_r_addr[13]_i_3 [5]),
        .O(\v_cnt_reg[7] ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \FSM_onehot_state[6]_i_5 
       (.I0(\map_r_addr[13]_i_3 [5]),
        .I1(\map_r_addr[13]_i_3 [3]),
        .I2(\map_r_addr[13]_i_3 [4]),
        .I3(\map_r_addr[13]_i_3 [1]),
        .I4(\map_r_addr[13]_i_3 [2]),
        .O(\FSM_onehot_state[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5666666666666666)) 
    \FSM_onehot_state[6]_i_6 
       (.I0(\map_r_addr[13]_i_3 [6]),
        .I1(\map_r_addr[13]_i_3 [5]),
        .I2(\map_r_addr[13]_i_3 [2]),
        .I3(\map_r_addr[13]_i_3 [1]),
        .I4(\map_r_addr[13]_i_3 [4]),
        .I5(\map_r_addr[13]_i_3 [3]),
        .O(\v_cnt_reg[6] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_state[6]_i_7 
       (.I0(\h_cnt_reg[5] ),
        .I1(\FSM_onehot_state[6]_i_9_n_0 ),
        .I2(\FSM_onehot_state[6]_i_3_0 [4]),
        .I3(\FSM_onehot_state[6]_i_3_0 [3]),
        .I4(\FSM_onehot_state[6]_i_3_0 [10]),
        .I5(\FSM_onehot_state[6]_i_3_0 [2]),
        .O(\FSM_onehot_state[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA9AAAAAAAA)) 
    \FSM_onehot_state[6]_i_8 
       (.I0(\map_r_addr[13]_i_3 [9]),
        .I1(\map_r_addr[13]_i_3 [8]),
        .I2(\map_r_addr[13]_i_3 [5]),
        .I3(\map_r_addr[13]_i_3 [6]),
        .I4(\map_r_addr[13]_i_3 [7]),
        .I5(\v_cnt_reg[2] ),
        .O(\v_cnt_reg[9] [1]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_state[6]_i_9 
       (.I0(\FSM_onehot_state[6]_i_3_0 [1]),
        .I1(\FSM_onehot_state[6]_i_3_0 [0]),
        .I2(\FSM_onehot_state[6]_i_3_0 [9]),
        .I3(\FSM_onehot_state[6]_i_3_0 [8]),
        .O(\FSM_onehot_state[6]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_state[8]_i_1 
       (.I0(pal_issue0),
        .I1(spr_att_vdp_dout[52]),
        .I2(state[3]),
        .O(state__0[8]));
  LUT5 #(
    .INIT(32'hBFFFAAAA)) 
    \FSM_onehot_state[9]_i_1 
       (.I0(spr_cnt),
        .I1(att_pos312_in),
        .I2(att_pos3),
        .I3(spr_att_vdp_dout[63]),
        .I4(state[1]),
        .O(state__0[9]));
  LUT5 #(
    .INIT(32'h29404029)) 
    \FSM_onehot_state[9]_i_10 
       (.I0(\v_cnt_reg[9] [0]),
        .I1(\FSM_onehot_state[9]_i_27_n_0 ),
        .I2(spr_att_vdp_dout[24]),
        .I3(spr_att_vdp_dout[25]),
        .I4(\v_cnt_reg[9] [1]),
        .O(\FSM_onehot_state[9]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h011F)) 
    \FSM_onehot_state[9]_i_11 
       (.I0(spr_att_vdp_dout[22]),
        .I1(\v_cnt_reg[6] ),
        .I2(\v_cnt_reg[7] ),
        .I3(spr_att_vdp_dout[23]),
        .O(\FSM_onehot_state[9]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h022F)) 
    \FSM_onehot_state[9]_i_12 
       (.I0(\FSM_onehot_state[9]_i_29_n_0 ),
        .I1(spr_att_vdp_dout[20]),
        .I2(\FSM_onehot_state[6]_i_5_n_0 ),
        .I3(spr_att_vdp_dout[21]),
        .O(\FSM_onehot_state[9]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h03717130)) 
    \FSM_onehot_state[9]_i_13 
       (.I0(spr_att_vdp_dout[18]),
        .I1(spr_att_vdp_dout[19]),
        .I2(\map_r_addr[13]_i_3 [3]),
        .I3(\map_r_addr[13]_i_3 [2]),
        .I4(\map_r_addr[13]_i_3 [1]),
        .O(\FSM_onehot_state[9]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h022F)) 
    \FSM_onehot_state[9]_i_14 
       (.I0(\map_r_addr[13]_i_3 [0]),
        .I1(spr_att_vdp_dout[16]),
        .I2(\map_r_addr[13]_i_3 [1]),
        .I3(spr_att_vdp_dout[17]),
        .O(\FSM_onehot_state[9]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h0660)) 
    \FSM_onehot_state[9]_i_15 
       (.I0(\v_cnt_reg[6] ),
        .I1(spr_att_vdp_dout[22]),
        .I2(\v_cnt_reg[7] ),
        .I3(spr_att_vdp_dout[23]),
        .O(\FSM_onehot_state[9]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h0990)) 
    \FSM_onehot_state[9]_i_16 
       (.I0(\FSM_onehot_state[9]_i_29_n_0 ),
        .I1(spr_att_vdp_dout[20]),
        .I2(\FSM_onehot_state[6]_i_5_n_0 ),
        .I3(spr_att_vdp_dout[21]),
        .O(\FSM_onehot_state[9]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h18844221)) 
    \FSM_onehot_state[9]_i_17 
       (.I0(spr_att_vdp_dout[18]),
        .I1(\map_r_addr[13]_i_3 [3]),
        .I2(\map_r_addr[13]_i_3 [2]),
        .I3(\map_r_addr[13]_i_3 [1]),
        .I4(spr_att_vdp_dout[19]),
        .O(\FSM_onehot_state[9]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h0990)) 
    \FSM_onehot_state[9]_i_18 
       (.I0(\map_r_addr[13]_i_3 [0]),
        .I1(spr_att_vdp_dout[16]),
        .I2(\map_r_addr[13]_i_3 [1]),
        .I3(spr_att_vdp_dout[17]),
        .O(\FSM_onehot_state[9]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h3FFFEA802A800000)) 
    \FSM_onehot_state[9]_i_19 
       (.I0(\v_cnt_reg[6] ),
        .I1(spr_att_vdp_dout[21]),
        .I2(\FSM_onehot_state[9]_i_28_n_0 ),
        .I3(spr_att_vdp_dout[22]),
        .I4(spr_att_vdp_dout[23]),
        .I5(\v_cnt_reg[7] ),
        .O(\FSM_onehot_state[9]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h433FFDD401144000)) 
    \FSM_onehot_state[9]_i_20 
       (.I0(\FSM_onehot_state[9]_i_29_n_0 ),
        .I1(\FSM_onehot_state[9]_i_30_n_0 ),
        .I2(spr_att_vdp_dout[20]),
        .I3(spr_att_vdp_dout[52]),
        .I4(spr_att_vdp_dout[21]),
        .I5(\FSM_onehot_state[6]_i_5_n_0 ),
        .O(\FSM_onehot_state[9]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h44400001FFFD4443)) 
    \FSM_onehot_state[9]_i_21 
       (.I0(gen_line[2]),
        .I1(spr_att_vdp_dout[18]),
        .I2(spr_att_vdp_dout[16]),
        .I3(spr_att_vdp_dout[17]),
        .I4(spr_att_vdp_dout[19]),
        .I5(\FSM_onehot_state[9]_i_32_n_0 ),
        .O(\FSM_onehot_state[9]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'hD301)) 
    \FSM_onehot_state[9]_i_22 
       (.I0(\map_r_addr[13]_i_3 [0]),
        .I1(spr_att_vdp_dout[16]),
        .I2(spr_att_vdp_dout[17]),
        .I3(\map_r_addr[13]_i_3 [1]),
        .O(\FSM_onehot_state[9]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h8000156A156A8000)) 
    \FSM_onehot_state[9]_i_23 
       (.I0(\v_cnt_reg[6] ),
        .I1(spr_att_vdp_dout[21]),
        .I2(\FSM_onehot_state[9]_i_28_n_0 ),
        .I3(spr_att_vdp_dout[22]),
        .I4(spr_att_vdp_dout[23]),
        .I5(\v_cnt_reg[7] ),
        .O(\FSM_onehot_state[9]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h9440022902299440)) 
    \FSM_onehot_state[9]_i_24 
       (.I0(\FSM_onehot_state[9]_i_29_n_0 ),
        .I1(\FSM_onehot_state[9]_i_30_n_0 ),
        .I2(spr_att_vdp_dout[20]),
        .I3(spr_att_vdp_dout[52]),
        .I4(spr_att_vdp_dout[21]),
        .I5(\FSM_onehot_state[6]_i_5_n_0 ),
        .O(\FSM_onehot_state[9]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h9994000200029994)) 
    \FSM_onehot_state[9]_i_25 
       (.I0(gen_line[2]),
        .I1(spr_att_vdp_dout[18]),
        .I2(spr_att_vdp_dout[16]),
        .I3(spr_att_vdp_dout[17]),
        .I4(spr_att_vdp_dout[19]),
        .I5(\FSM_onehot_state[9]_i_32_n_0 ),
        .O(\FSM_onehot_state[9]_i_25_n_0 ));
  LUT4 #(
    .INIT(16'h2442)) 
    \FSM_onehot_state[9]_i_26 
       (.I0(\map_r_addr[13]_i_3 [0]),
        .I1(spr_att_vdp_dout[16]),
        .I2(spr_att_vdp_dout[17]),
        .I3(\map_r_addr[13]_i_3 [1]),
        .O(\FSM_onehot_state[9]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h8880800000000000)) 
    \FSM_onehot_state[9]_i_27 
       (.I0(spr_att_vdp_dout[23]),
        .I1(spr_att_vdp_dout[21]),
        .I2(\FSM_onehot_state[9]_i_30_n_0 ),
        .I3(spr_att_vdp_dout[20]),
        .I4(spr_att_vdp_dout[52]),
        .I5(spr_att_vdp_dout[22]),
        .O(\FSM_onehot_state[9]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEEEEEE8)) 
    \FSM_onehot_state[9]_i_28 
       (.I0(spr_att_vdp_dout[52]),
        .I1(spr_att_vdp_dout[20]),
        .I2(spr_att_vdp_dout[19]),
        .I3(spr_att_vdp_dout[17]),
        .I4(spr_att_vdp_dout[16]),
        .I5(spr_att_vdp_dout[18]),
        .O(\FSM_onehot_state[9]_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \FSM_onehot_state[9]_i_29 
       (.I0(\map_r_addr[13]_i_3 [4]),
        .I1(\map_r_addr[13]_i_3 [3]),
        .I2(\map_r_addr[13]_i_3 [1]),
        .I3(\map_r_addr[13]_i_3 [2]),
        .O(\FSM_onehot_state[9]_i_29_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_state[9]_i_30 
       (.I0(spr_att_vdp_dout[18]),
        .I1(spr_att_vdp_dout[16]),
        .I2(spr_att_vdp_dout[17]),
        .I3(spr_att_vdp_dout[19]),
        .O(\FSM_onehot_state[9]_i_30_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \FSM_onehot_state[9]_i_31 
       (.I0(\map_r_addr[13]_i_3 [1]),
        .I1(\map_r_addr[13]_i_3 [2]),
        .O(gen_line[2]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \FSM_onehot_state[9]_i_32 
       (.I0(\map_r_addr[13]_i_3 [3]),
        .I1(\map_r_addr[13]_i_3 [2]),
        .I2(\map_r_addr[13]_i_3 [1]),
        .O(\FSM_onehot_state[9]_i_32_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \FSM_onehot_state[9]_i_5 
       (.I0(\v_cnt_reg[9] [0]),
        .I1(spr_att_vdp_dout[24]),
        .I2(spr_att_vdp_dout[25]),
        .I3(\v_cnt_reg[9] [1]),
        .O(\FSM_onehot_state[9]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_onehot_state[9]_i_6 
       (.I0(\v_cnt_reg[9] [0]),
        .I1(spr_att_vdp_dout[24]),
        .I2(\v_cnt_reg[9] [1]),
        .I3(spr_att_vdp_dout[25]),
        .O(\FSM_onehot_state[9]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h07733110)) 
    \FSM_onehot_state[9]_i_8 
       (.I0(\v_cnt_reg[9] [0]),
        .I1(\v_cnt_reg[9] [1]),
        .I2(\FSM_onehot_state[9]_i_27_n_0 ),
        .I3(spr_att_vdp_dout[24]),
        .I4(spr_att_vdp_dout[25]),
        .O(\FSM_onehot_state[9]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \FSM_onehot_state[9]_i_9 
       (.I0(spr_att_vdp_dout[25]),
        .I1(spr_att_vdp_dout[23]),
        .I2(spr_att_vdp_dout[21]),
        .I3(\FSM_onehot_state[9]_i_28_n_0 ),
        .I4(spr_att_vdp_dout[22]),
        .I5(spr_att_vdp_dout[24]),
        .O(\FSM_onehot_state[9]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "STATE_PAL_PIPE:000100000000,STATE_C1:000000001000,STATE_C5:000010000000,STATE_C0:000000000100,STATE_C4:000001000000,STATE_START:000000000010,STATE_NEXT:001000000000,STATE_C2:000000010000,STATE_WAIT:000000000001,STATE_CLEAR:010000000000,STATE_C3:000000100000" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(\FSM_onehot_state[10]_i_1_n_0 ),
        .D(state__0[0]),
        .Q(att_pos0),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "STATE_PAL_PIPE:000100000000,STATE_C1:000000001000,STATE_C5:000010000000,STATE_C0:000000000100,STATE_C4:000001000000,STATE_START:000000000010,STATE_NEXT:001000000000,STATE_C2:000000010000,STATE_WAIT:000000000001,STATE_CLEAR:010000000000,STATE_C3:000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[10] 
       (.C(s_axi_aclk),
        .CE(\FSM_onehot_state[10]_i_1_n_0 ),
        .D(att_pos0),
        .Q(line_data0),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "STATE_PAL_PIPE:000100000000,STATE_C1:000000001000,STATE_C5:000010000000,STATE_C0:000000000100,STATE_C4:000001000000,STATE_START:000000000010,STATE_NEXT:001000000000,STATE_C2:000000010000,STATE_WAIT:000000000001,STATE_CLEAR:010000000000,STATE_C3:000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(\FSM_onehot_state[10]_i_1_n_0 ),
        .D(state__0[1]),
        .Q(state[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "STATE_PAL_PIPE:000100000000,STATE_C1:000000001000,STATE_C5:000010000000,STATE_C0:000000000100,STATE_C4:000001000000,STATE_START:000000000010,STATE_NEXT:001000000000,STATE_C2:000000010000,STATE_WAIT:000000000001,STATE_CLEAR:010000000000,STATE_C3:000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(s_axi_aclk),
        .CE(\FSM_onehot_state[10]_i_1_n_0 ),
        .D(state__0[2]),
        .Q(line_off),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "STATE_PAL_PIPE:000100000000,STATE_C1:000000001000,STATE_C5:000010000000,STATE_C0:000000000100,STATE_C4:000001000000,STATE_START:000000000010,STATE_NEXT:001000000000,STATE_C2:000000010000,STATE_WAIT:000000000001,STATE_CLEAR:010000000000,STATE_C3:000000100000" *) 
  (* ORIG_CELL_NAME = "FSM_onehot_state_reg[3]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(s_axi_aclk),
        .CE(\FSM_onehot_state[10]_i_1_n_0 ),
        .D(line_off),
        .Q(state[3]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "STATE_PAL_PIPE:000100000000,STATE_C1:000000001000,STATE_C5:000010000000,STATE_C0:000000000100,STATE_C4:000001000000,STATE_START:000000000010,STATE_NEXT:001000000000,STATE_C2:000000010000,STATE_WAIT:000000000001,STATE_CLEAR:010000000000,STATE_C3:000000100000" *) 
  (* ORIG_CELL_NAME = "FSM_onehot_state_reg[3]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3]_rep 
       (.C(s_axi_aclk),
        .CE(\FSM_onehot_state[10]_i_1_n_0 ),
        .D(line_off),
        .Q(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "STATE_PAL_PIPE:000100000000,STATE_C1:000000001000,STATE_C5:000010000000,STATE_C0:000000000100,STATE_C4:000001000000,STATE_START:000000000010,STATE_NEXT:001000000000,STATE_C2:000000010000,STATE_WAIT:000000000001,STATE_CLEAR:010000000000,STATE_C3:000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(s_axi_aclk),
        .CE(\FSM_onehot_state[10]_i_1_n_0 ),
        .D(state__0[4]),
        .Q(state[4]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "STATE_PAL_PIPE:000100000000,STATE_C1:000000001000,STATE_C5:000010000000,STATE_C0:000000000100,STATE_C4:000001000000,STATE_START:000000000010,STATE_NEXT:001000000000,STATE_C2:000000010000,STATE_WAIT:000000000001,STATE_CLEAR:010000000000,STATE_C3:000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(s_axi_aclk),
        .CE(\FSM_onehot_state[10]_i_1_n_0 ),
        .D(state[4]),
        .Q(pal_issue0),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "STATE_PAL_PIPE:000100000000,STATE_C1:000000001000,STATE_C5:000010000000,STATE_C0:000000000100,STATE_C4:000001000000,STATE_START:000000000010,STATE_NEXT:001000000000,STATE_C2:000000010000,STATE_WAIT:000000000001,STATE_CLEAR:010000000000,STATE_C3:000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[6] 
       (.C(s_axi_aclk),
        .CE(\FSM_onehot_state[10]_i_1_n_0 ),
        .D(row_buf),
        .Q(line_data),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "STATE_PAL_PIPE:000100000000,STATE_C1:000000001000,STATE_C5:000010000000,STATE_C0:000000000100,STATE_C4:000001000000,STATE_START:000000000010,STATE_NEXT:001000000000,STATE_C2:000000010000,STATE_WAIT:000000000001,STATE_CLEAR:010000000000,STATE_C3:000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[7] 
       (.C(s_axi_aclk),
        .CE(\FSM_onehot_state[10]_i_1_n_0 ),
        .D(line_data),
        .Q(spr_cnt),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "STATE_PAL_PIPE:000100000000,STATE_C1:000000001000,STATE_C5:000010000000,STATE_C0:000000000100,STATE_C4:000001000000,STATE_START:000000000010,STATE_NEXT:001000000000,STATE_C2:000000010000,STATE_WAIT:000000000001,STATE_CLEAR:010000000000,STATE_C3:000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[8] 
       (.C(s_axi_aclk),
        .CE(\FSM_onehot_state[10]_i_1_n_0 ),
        .D(state__0[8]),
        .Q(row_buf),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "STATE_PAL_PIPE:000100000000,STATE_C1:000000001000,STATE_C5:000010000000,STATE_C0:000000000100,STATE_C4:000001000000,STATE_START:000000000010,STATE_NEXT:001000000000,STATE_C2:000000010000,STATE_WAIT:000000000001,STATE_CLEAR:010000000000,STATE_C3:000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[9] 
       (.C(s_axi_aclk),
        .CE(\FSM_onehot_state[10]_i_1_n_0 ),
        .D(state__0[9]),
        .Q(state[9]),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \FSM_onehot_state_reg[9]_i_2 
       (.CI(\FSM_onehot_state_reg[9]_i_4_n_0 ),
        .CO({\NLW_FSM_onehot_state_reg[9]_i_2_CO_UNCONNECTED [3:1],att_pos312_in}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\FSM_onehot_state[9]_i_5_n_0 }),
        .O(\NLW_FSM_onehot_state_reg[9]_i_2_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\FSM_onehot_state[9]_i_6_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \FSM_onehot_state_reg[9]_i_3 
       (.CI(\FSM_onehot_state_reg[9]_i_7_n_0 ),
        .CO({\NLW_FSM_onehot_state_reg[9]_i_3_CO_UNCONNECTED [3:2],att_pos3,\FSM_onehot_state_reg[9]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b1,\FSM_onehot_state[9]_i_8_n_0 }),
        .O(\NLW_FSM_onehot_state_reg[9]_i_3_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\FSM_onehot_state[9]_i_9_n_0 ,\FSM_onehot_state[9]_i_10_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \FSM_onehot_state_reg[9]_i_4 
       (.CI(1'b0),
        .CO({\FSM_onehot_state_reg[9]_i_4_n_0 ,\FSM_onehot_state_reg[9]_i_4_n_1 ,\FSM_onehot_state_reg[9]_i_4_n_2 ,\FSM_onehot_state_reg[9]_i_4_n_3 }),
        .CYINIT(1'b1),
        .DI({\FSM_onehot_state[9]_i_11_n_0 ,\FSM_onehot_state[9]_i_12_n_0 ,\FSM_onehot_state[9]_i_13_n_0 ,\FSM_onehot_state[9]_i_14_n_0 }),
        .O(\NLW_FSM_onehot_state_reg[9]_i_4_O_UNCONNECTED [3:0]),
        .S({\FSM_onehot_state[9]_i_15_n_0 ,\FSM_onehot_state[9]_i_16_n_0 ,\FSM_onehot_state[9]_i_17_n_0 ,\FSM_onehot_state[9]_i_18_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \FSM_onehot_state_reg[9]_i_7 
       (.CI(1'b0),
        .CO({\FSM_onehot_state_reg[9]_i_7_n_0 ,\FSM_onehot_state_reg[9]_i_7_n_1 ,\FSM_onehot_state_reg[9]_i_7_n_2 ,\FSM_onehot_state_reg[9]_i_7_n_3 }),
        .CYINIT(1'b1),
        .DI({\FSM_onehot_state[9]_i_19_n_0 ,\FSM_onehot_state[9]_i_20_n_0 ,\FSM_onehot_state[9]_i_21_n_0 ,\FSM_onehot_state[9]_i_22_n_0 }),
        .O(\NLW_FSM_onehot_state_reg[9]_i_7_O_UNCONNECTED [3:0]),
        .S({\FSM_onehot_state[9]_i_23_n_0 ,\FSM_onehot_state[9]_i_24_n_0 ,\FSM_onehot_state[9]_i_25_n_0 ,\FSM_onehot_state[9]_i_26_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \att_pos[0]_i_1 
       (.I0(att_pos_reg[0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \att_pos[1]_i_1 
       (.I0(att_pos_reg[0]),
        .I1(att_pos_reg[1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \att_pos[2]_i_1 
       (.I0(att_pos_reg[0]),
        .I1(att_pos_reg[1]),
        .I2(att_pos_reg[2]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \att_pos[3]_i_1 
       (.I0(att_pos_reg[1]),
        .I1(att_pos_reg[0]),
        .I2(att_pos_reg[2]),
        .I3(att_pos_reg[3]),
        .O(p_0_in__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \att_pos[4]_i_1 
       (.I0(att_pos_reg[2]),
        .I1(att_pos_reg[0]),
        .I2(att_pos_reg[1]),
        .I3(att_pos_reg[3]),
        .I4(att_pos_reg[4]),
        .O(p_0_in__1[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \att_pos[5]_i_1 
       (.I0(att_pos_reg[3]),
        .I1(att_pos_reg[1]),
        .I2(att_pos_reg[0]),
        .I3(att_pos_reg[2]),
        .I4(att_pos_reg[4]),
        .I5(att_pos_reg[5]),
        .O(p_0_in__1[5]));
  FDRE #(
    .INIT(1'b0)) 
    \att_pos_reg[0] 
       (.C(s_axi_aclk),
        .CE(state__0[9]),
        .D(p_0_in__1[0]),
        .Q(att_pos_reg[0]),
        .R(att_pos0));
  FDRE #(
    .INIT(1'b0)) 
    \att_pos_reg[1] 
       (.C(s_axi_aclk),
        .CE(state__0[9]),
        .D(p_0_in__1[1]),
        .Q(att_pos_reg[1]),
        .R(att_pos0));
  FDRE #(
    .INIT(1'b0)) 
    \att_pos_reg[2] 
       (.C(s_axi_aclk),
        .CE(state__0[9]),
        .D(p_0_in__1[2]),
        .Q(att_pos_reg[2]),
        .R(att_pos0));
  FDRE #(
    .INIT(1'b0)) 
    \att_pos_reg[3] 
       (.C(s_axi_aclk),
        .CE(state__0[9]),
        .D(p_0_in__1[3]),
        .Q(att_pos_reg[3]),
        .R(att_pos0));
  FDRE #(
    .INIT(1'b0)) 
    \att_pos_reg[4] 
       (.C(s_axi_aclk),
        .CE(state__0[9]),
        .D(p_0_in__1[4]),
        .Q(att_pos_reg[4]),
        .R(att_pos0));
  FDRE #(
    .INIT(1'b0)) 
    \att_pos_reg[5] 
       (.C(s_axi_aclk),
        .CE(state__0[9]),
        .D(p_0_in__1[5]),
        .Q(att_pos_reg[5]),
        .R(att_pos0));
  LUT1 #(
    .INIT(2'h1)) 
    \clear_pos[0]_i_1 
       (.I0(\clear_pos_reg_n_0_[0] ),
        .O(in17[0]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \clear_pos[1]_i_1 
       (.I0(\clear_pos_reg_n_0_[0] ),
        .I1(\clear_pos_reg_n_0_[1] ),
        .O(in17[1]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \clear_pos[2]_i_1 
       (.I0(\clear_pos_reg_n_0_[0] ),
        .I1(\clear_pos_reg_n_0_[1] ),
        .I2(\clear_pos_reg_n_0_[2] ),
        .O(\clear_pos[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \clear_pos[3]_i_1 
       (.I0(\clear_pos_reg_n_0_[1] ),
        .I1(\clear_pos_reg_n_0_[0] ),
        .I2(\clear_pos_reg_n_0_[2] ),
        .I3(\clear_pos_reg_n_0_[3] ),
        .O(in17[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \clear_pos[4]_i_1 
       (.I0(\clear_pos_reg_n_0_[2] ),
        .I1(\clear_pos_reg_n_0_[0] ),
        .I2(\clear_pos_reg_n_0_[1] ),
        .I3(\clear_pos_reg_n_0_[3] ),
        .I4(\clear_pos_reg_n_0_[4] ),
        .O(in17[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \clear_pos[5]_i_1 
       (.I0(\clear_pos_reg_n_0_[3] ),
        .I1(\clear_pos_reg_n_0_[1] ),
        .I2(\clear_pos_reg_n_0_[0] ),
        .I3(\clear_pos_reg_n_0_[2] ),
        .I4(\clear_pos_reg_n_0_[4] ),
        .I5(\clear_pos_reg_n_0_[5] ),
        .O(in17[5]));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    \clear_pos[6]_i_1 
       (.I0(\clear_pos_reg_n_0_[4] ),
        .I1(\clear_pos_reg_n_0_[2] ),
        .I2(\clear_pos[6]_i_2_n_0 ),
        .I3(\clear_pos_reg_n_0_[3] ),
        .I4(\clear_pos_reg_n_0_[5] ),
        .I5(\clear_pos_reg_n_0_[6] ),
        .O(in17[6]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \clear_pos[6]_i_2 
       (.I0(\clear_pos_reg_n_0_[1] ),
        .I1(\clear_pos_reg_n_0_[0] ),
        .O(\clear_pos[6]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clear_pos[7]_i_1 
       (.I0(att_pos0),
        .I1(line_data0),
        .O(\clear_pos[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFFAAAAAAAA)) 
    \clear_pos[7]_i_2 
       (.I0(att_pos0),
        .I1(\clear_pos[7]_i_4_n_0 ),
        .I2(\clear_pos[7]_i_5_n_0 ),
        .I3(\clear_pos_reg_n_0_[3] ),
        .I4(\clear_pos_reg_n_0_[2] ),
        .I5(line_data0),
        .O(clear_pos));
  LUT3 #(
    .INIT(8'h78)) 
    \clear_pos[7]_i_3 
       (.I0(\clear_pos[7]_i_6_n_0 ),
        .I1(\clear_pos_reg_n_0_[6] ),
        .I2(\clear_pos_reg_n_0_[7] ),
        .O(in17[7]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \clear_pos[7]_i_4 
       (.I0(\clear_pos_reg_n_0_[7] ),
        .I1(\clear_pos_reg_n_0_[1] ),
        .I2(\clear_pos_reg_n_0_[4] ),
        .I3(\clear_pos_reg_n_0_[0] ),
        .O(\clear_pos[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \clear_pos[7]_i_5 
       (.I0(\clear_pos_reg_n_0_[6] ),
        .I1(\clear_pos_reg_n_0_[5] ),
        .O(\clear_pos[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \clear_pos[7]_i_6 
       (.I0(\clear_pos_reg_n_0_[5] ),
        .I1(\clear_pos_reg_n_0_[3] ),
        .I2(\clear_pos_reg_n_0_[1] ),
        .I3(\clear_pos_reg_n_0_[0] ),
        .I4(\clear_pos_reg_n_0_[2] ),
        .I5(\clear_pos_reg_n_0_[4] ),
        .O(\clear_pos[7]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clear_pos_reg[0] 
       (.C(s_axi_aclk),
        .CE(clear_pos),
        .D(in17[0]),
        .Q(\clear_pos_reg_n_0_[0] ),
        .R(\clear_pos[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clear_pos_reg[1] 
       (.C(s_axi_aclk),
        .CE(clear_pos),
        .D(in17[1]),
        .Q(\clear_pos_reg_n_0_[1] ),
        .R(\clear_pos[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clear_pos_reg[2] 
       (.C(s_axi_aclk),
        .CE(clear_pos),
        .D(\clear_pos[2]_i_1_n_0 ),
        .Q(\clear_pos_reg_n_0_[2] ),
        .R(\clear_pos[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clear_pos_reg[3] 
       (.C(s_axi_aclk),
        .CE(clear_pos),
        .D(in17[3]),
        .Q(\clear_pos_reg_n_0_[3] ),
        .R(\clear_pos[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clear_pos_reg[4] 
       (.C(s_axi_aclk),
        .CE(clear_pos),
        .D(in17[4]),
        .Q(\clear_pos_reg_n_0_[4] ),
        .R(\clear_pos[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clear_pos_reg[5] 
       (.C(s_axi_aclk),
        .CE(clear_pos),
        .D(in17[5]),
        .Q(\clear_pos_reg_n_0_[5] ),
        .R(\clear_pos[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clear_pos_reg[6] 
       (.C(s_axi_aclk),
        .CE(clear_pos),
        .D(in17[6]),
        .Q(\clear_pos_reg_n_0_[6] ),
        .R(\clear_pos[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clear_pos_reg[7] 
       (.C(s_axi_aclk),
        .CE(clear_pos),
        .D(in17[7]),
        .Q(\clear_pos_reg_n_0_[7] ),
        .R(\clear_pos[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF800080008000)) 
    \data_pos[10]_i_1 
       (.I0(att_pos312_in),
        .I1(att_pos3),
        .I2(spr_att_vdp_dout[63]),
        .I3(state[1]),
        .I4(spr_att_vdp_dout[52]),
        .I5(state[3]),
        .O(data_pos));
  LUT3 #(
    .INIT(8'hEA)) 
    \data_pos[10]_i_3 
       (.I0(\data_pos[10]_i_8_n_0 ),
        .I1(\data_pos_reg_n_0_[9] ),
        .I2(state[3]),
        .O(p_0_out[9]));
  LUT3 #(
    .INIT(8'hEA)) 
    \data_pos[10]_i_4 
       (.I0(\data_pos[10]_i_8_n_0 ),
        .I1(\data_pos_reg_n_0_[8] ),
        .I2(state[3]),
        .O(p_0_out[8]));
  LUT5 #(
    .INIT(32'h07F8F8F8)) 
    \data_pos[10]_i_5 
       (.I0(state[3]),
        .I1(\data_pos_reg_n_0_[10] ),
        .I2(\data_pos[10]_i_8_n_0 ),
        .I3(spr_att_vdp_dout[46]),
        .I4(state[1]),
        .O(\data_pos[10]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h07F8F8F8)) 
    \data_pos[10]_i_6 
       (.I0(state[3]),
        .I1(\data_pos_reg_n_0_[9] ),
        .I2(\data_pos[10]_i_8_n_0 ),
        .I3(spr_att_vdp_dout[45]),
        .I4(state[1]),
        .O(\data_pos[10]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h07F8F8F8)) 
    \data_pos[10]_i_7 
       (.I0(state[3]),
        .I1(\data_pos_reg_n_0_[8] ),
        .I2(\data_pos[10]_i_8_n_0 ),
        .I3(spr_att_vdp_dout[44]),
        .I4(state[1]),
        .O(\data_pos[10]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h8800A800)) 
    \data_pos[10]_i_8 
       (.I0(state[1]),
        .I1(\data_pos_reg[7]_i_10_n_6 ),
        .I2(\data_pos_reg[7]_i_10_n_7 ),
        .I3(spr_att_vdp_dout[51]),
        .I4(spr_att_vdp_dout[52]),
        .O(\data_pos[10]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_pos[3]_i_10 
       (.I0(state[3]),
        .I1(\data_pos_reg_n_0_[3] ),
        .O(\data_pos[3]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_pos[3]_i_11 
       (.I0(state[3]),
        .I1(\data_pos_reg_n_0_[2] ),
        .O(\data_pos[3]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_pos[3]_i_12 
       (.I0(state[3]),
        .I1(\data_pos_reg_n_0_[1] ),
        .O(\data_pos[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF4B780000)) 
    \data_pos[3]_i_2 
       (.I0(\data_pos_reg[7]_i_13_n_5 ),
        .I1(spr_att_vdp_dout[52]),
        .I2(spr_att_vdp_dout[51]),
        .I3(\data_pos_reg[7]_i_13_n_4 ),
        .I4(state[1]),
        .I5(\data_pos[3]_i_10_n_0 ),
        .O(p_0_out[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFF4B780000)) 
    \data_pos[3]_i_3 
       (.I0(\data_pos_reg[7]_i_13_n_6 ),
        .I1(spr_att_vdp_dout[52]),
        .I2(spr_att_vdp_dout[51]),
        .I3(\data_pos_reg[7]_i_13_n_5 ),
        .I4(state[1]),
        .I5(\data_pos[3]_i_11_n_0 ),
        .O(p_0_out[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFF4B780000)) 
    \data_pos[3]_i_4 
       (.I0(\data_pos_reg[7]_i_13_n_7 ),
        .I1(spr_att_vdp_dout[52]),
        .I2(spr_att_vdp_dout[51]),
        .I3(\data_pos_reg[7]_i_13_n_6 ),
        .I4(state[1]),
        .I5(\data_pos[3]_i_12_n_0 ),
        .O(p_0_out[1]));
  LUT6 #(
    .INIT(64'hFFFF060006000600)) 
    \data_pos[3]_i_5 
       (.I0(\data_pos_reg[7]_i_13_n_7 ),
        .I1(spr_att_vdp_dout[51]),
        .I2(spr_att_vdp_dout[52]),
        .I3(state[1]),
        .I4(\data_pos_reg_n_0_[0] ),
        .I5(state[3]),
        .O(p_0_out[0]));
  LUT3 #(
    .INIT(8'h6A)) 
    \data_pos[3]_i_6 
       (.I0(p_0_out[3]),
        .I1(spr_att_vdp_dout[39]),
        .I2(state[1]),
        .O(\data_pos[3]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \data_pos[3]_i_7 
       (.I0(p_0_out[2]),
        .I1(spr_att_vdp_dout[38]),
        .I2(state[1]),
        .O(\data_pos[3]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \data_pos[3]_i_8 
       (.I0(p_0_out[1]),
        .I1(spr_att_vdp_dout[37]),
        .I2(state[1]),
        .O(\data_pos[3]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h56)) 
    \data_pos[3]_i_9 
       (.I0(p_0_out[0]),
        .I1(spr_att_vdp_dout[36]),
        .I2(state[3]),
        .O(\data_pos[3]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \data_pos[7]_i_11 
       (.I0(state[3]),
        .I1(\data_pos_reg_n_0_[6] ),
        .O(\data_pos[7]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_pos[7]_i_12 
       (.I0(state[3]),
        .I1(\data_pos_reg_n_0_[5] ),
        .O(\data_pos[7]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_pos[7]_i_14 
       (.I0(state[3]),
        .I1(\data_pos_reg_n_0_[4] ),
        .O(\data_pos[7]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \data_pos[7]_i_15 
       (.I0(\map_r_addr[13]_i_3 [4]),
        .I1(\map_r_addr[13]_i_3 [3]),
        .I2(\map_r_addr[13]_i_3 [1]),
        .I3(\map_r_addr[13]_i_3 [2]),
        .O(\data_pos[7]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h80007FFF7FFF8000)) 
    \data_pos[7]_i_16 
       (.I0(\map_r_addr[13]_i_3 [2]),
        .I1(\map_r_addr[13]_i_3 [1]),
        .I2(\map_r_addr[13]_i_3 [4]),
        .I3(\map_r_addr[13]_i_3 [3]),
        .I4(\map_r_addr[13]_i_3 [5]),
        .I5(spr_att_vdp_dout[21]),
        .O(\data_pos[7]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h7F80807F)) 
    \data_pos[7]_i_17 
       (.I0(\map_r_addr[13]_i_3 [2]),
        .I1(\map_r_addr[13]_i_3 [1]),
        .I2(\map_r_addr[13]_i_3 [3]),
        .I3(\map_r_addr[13]_i_3 [4]),
        .I4(spr_att_vdp_dout[20]),
        .O(\data_pos[7]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \data_pos[7]_i_18 
       (.I0(\map_r_addr[13]_i_3 [3]),
        .I1(\map_r_addr[13]_i_3 [2]),
        .I2(\map_r_addr[13]_i_3 [1]),
        .O(\data_pos[7]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \data_pos[7]_i_19 
       (.I0(\map_r_addr[13]_i_3 [1]),
        .I1(\map_r_addr[13]_i_3 [2]),
        .O(\data_pos[7]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \data_pos[7]_i_2 
       (.I0(\data_pos[10]_i_8_n_0 ),
        .I1(\data_pos_reg_n_0_[7] ),
        .I2(state[3]),
        .O(p_0_out[7]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_pos[7]_i_20 
       (.I0(\map_r_addr[13]_i_3 [1]),
        .O(gen_line[1]));
  LUT4 #(
    .INIT(16'h7887)) 
    \data_pos[7]_i_21 
       (.I0(\map_r_addr[13]_i_3 [1]),
        .I1(\map_r_addr[13]_i_3 [2]),
        .I2(\map_r_addr[13]_i_3 [3]),
        .I3(spr_att_vdp_dout[19]),
        .O(\data_pos[7]_i_21_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \data_pos[7]_i_22 
       (.I0(\map_r_addr[13]_i_3 [2]),
        .I1(\map_r_addr[13]_i_3 [1]),
        .I2(spr_att_vdp_dout[18]),
        .O(\data_pos[7]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \data_pos[7]_i_23 
       (.I0(\map_r_addr[13]_i_3 [1]),
        .I1(spr_att_vdp_dout[17]),
        .O(\data_pos[7]_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \data_pos[7]_i_24 
       (.I0(spr_att_vdp_dout[16]),
        .I1(\map_r_addr[13]_i_3 [0]),
        .O(\data_pos[7]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEE400000)) 
    \data_pos[7]_i_3 
       (.I0(spr_att_vdp_dout[52]),
        .I1(spr_att_vdp_dout[51]),
        .I2(\data_pos_reg[7]_i_10_n_7 ),
        .I3(\data_pos_reg[7]_i_10_n_6 ),
        .I4(state[1]),
        .I5(\data_pos[7]_i_11_n_0 ),
        .O(p_0_out[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFF3D680000)) 
    \data_pos[7]_i_4 
       (.I0(spr_att_vdp_dout[52]),
        .I1(\data_pos_reg[7]_i_10_n_7 ),
        .I2(spr_att_vdp_dout[51]),
        .I3(\data_pos_reg[7]_i_10_n_6 ),
        .I4(state[1]),
        .I5(\data_pos[7]_i_12_n_0 ),
        .O(p_0_out[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFF6F600000)) 
    \data_pos[7]_i_5 
       (.I0(\data_pos_reg[7]_i_13_n_4 ),
        .I1(spr_att_vdp_dout[51]),
        .I2(spr_att_vdp_dout[52]),
        .I3(\data_pos_reg[7]_i_10_n_7 ),
        .I4(state[1]),
        .I5(\data_pos[7]_i_14_n_0 ),
        .O(p_0_out[4]));
  LUT5 #(
    .INIT(32'h07F8F8F8)) 
    \data_pos[7]_i_6 
       (.I0(state[3]),
        .I1(\data_pos_reg_n_0_[7] ),
        .I2(\data_pos[10]_i_8_n_0 ),
        .I3(spr_att_vdp_dout[43]),
        .I4(state[1]),
        .O(\data_pos[7]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \data_pos[7]_i_7 
       (.I0(p_0_out[6]),
        .I1(spr_att_vdp_dout[42]),
        .I2(state[1]),
        .O(\data_pos[7]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \data_pos[7]_i_8 
       (.I0(p_0_out[5]),
        .I1(spr_att_vdp_dout[41]),
        .I2(state[1]),
        .O(\data_pos[7]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \data_pos[7]_i_9 
       (.I0(p_0_out[4]),
        .I1(spr_att_vdp_dout[40]),
        .I2(state[1]),
        .O(\data_pos[7]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pos_reg[0] 
       (.C(s_axi_aclk),
        .CE(data_pos),
        .D(data_pos0_in[0]),
        .Q(\data_pos_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_pos_reg[10] 
       (.C(s_axi_aclk),
        .CE(data_pos),
        .D(data_pos0_in[10]),
        .Q(\data_pos_reg_n_0_[10] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \data_pos_reg[10]_i_2 
       (.CI(\data_pos_reg[7]_i_1_n_0 ),
        .CO({\NLW_data_pos_reg[10]_i_2_CO_UNCONNECTED [3:2],\data_pos_reg[10]_i_2_n_2 ,\data_pos_reg[10]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,p_0_out[9:8]}),
        .O({\NLW_data_pos_reg[10]_i_2_O_UNCONNECTED [3],data_pos0_in[10:8]}),
        .S({1'b0,\data_pos[10]_i_5_n_0 ,\data_pos[10]_i_6_n_0 ,\data_pos[10]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \data_pos_reg[1] 
       (.C(s_axi_aclk),
        .CE(data_pos),
        .D(data_pos0_in[1]),
        .Q(\data_pos_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_pos_reg[2] 
       (.C(s_axi_aclk),
        .CE(data_pos),
        .D(data_pos0_in[2]),
        .Q(\data_pos_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_pos_reg[3] 
       (.C(s_axi_aclk),
        .CE(data_pos),
        .D(data_pos0_in[3]),
        .Q(\data_pos_reg_n_0_[3] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \data_pos_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\data_pos_reg[3]_i_1_n_0 ,\data_pos_reg[3]_i_1_n_1 ,\data_pos_reg[3]_i_1_n_2 ,\data_pos_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(p_0_out[3:0]),
        .O(data_pos0_in[3:0]),
        .S({\data_pos[3]_i_6_n_0 ,\data_pos[3]_i_7_n_0 ,\data_pos[3]_i_8_n_0 ,\data_pos[3]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \data_pos_reg[4] 
       (.C(s_axi_aclk),
        .CE(data_pos),
        .D(data_pos0_in[4]),
        .Q(\data_pos_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_pos_reg[5] 
       (.C(s_axi_aclk),
        .CE(data_pos),
        .D(data_pos0_in[5]),
        .Q(\data_pos_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_pos_reg[6] 
       (.C(s_axi_aclk),
        .CE(data_pos),
        .D(data_pos0_in[6]),
        .Q(\data_pos_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_pos_reg[7] 
       (.C(s_axi_aclk),
        .CE(data_pos),
        .D(data_pos0_in[7]),
        .Q(\data_pos_reg_n_0_[7] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \data_pos_reg[7]_i_1 
       (.CI(\data_pos_reg[3]_i_1_n_0 ),
        .CO({\data_pos_reg[7]_i_1_n_0 ,\data_pos_reg[7]_i_1_n_1 ,\data_pos_reg[7]_i_1_n_2 ,\data_pos_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(p_0_out[7:4]),
        .O(data_pos0_in[7:4]),
        .S({\data_pos[7]_i_6_n_0 ,\data_pos[7]_i_7_n_0 ,\data_pos[7]_i_8_n_0 ,\data_pos[7]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \data_pos_reg[7]_i_10 
       (.CI(\data_pos_reg[7]_i_13_n_0 ),
        .CO({\NLW_data_pos_reg[7]_i_10_CO_UNCONNECTED [3:1],\data_pos_reg[7]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\data_pos[7]_i_15_n_0 }),
        .O({\NLW_data_pos_reg[7]_i_10_O_UNCONNECTED [3:2],\data_pos_reg[7]_i_10_n_6 ,\data_pos_reg[7]_i_10_n_7 }),
        .S({1'b0,1'b0,\data_pos[7]_i_16_n_0 ,\data_pos[7]_i_17_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \data_pos_reg[7]_i_13 
       (.CI(1'b0),
        .CO({\data_pos_reg[7]_i_13_n_0 ,\data_pos_reg[7]_i_13_n_1 ,\data_pos_reg[7]_i_13_n_2 ,\data_pos_reg[7]_i_13_n_3 }),
        .CYINIT(1'b1),
        .DI({\data_pos[7]_i_18_n_0 ,\data_pos[7]_i_19_n_0 ,gen_line[1],\map_r_addr[13]_i_3 [0]}),
        .O({\data_pos_reg[7]_i_13_n_4 ,\data_pos_reg[7]_i_13_n_5 ,\data_pos_reg[7]_i_13_n_6 ,\data_pos_reg[7]_i_13_n_7 }),
        .S({\data_pos[7]_i_21_n_0 ,\data_pos[7]_i_22_n_0 ,\data_pos[7]_i_23_n_0 ,\data_pos[7]_i_24_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \data_pos_reg[8] 
       (.C(s_axi_aclk),
        .CE(data_pos),
        .D(data_pos0_in[8]),
        .Q(\data_pos_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_pos_reg[9] 
       (.C(s_axi_aclk),
        .CE(data_pos),
        .D(data_pos0_in[9]),
        .Q(\data_pos_reg_n_0_[9] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h0E)) 
    \gen_done[2]_i_1 
       (.I0(gen_done),
        .I1(s0_done),
        .I2(gen_done0),
        .O(\gen_done_reg[2] ));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \gen_fin_data[11]_i_3 
       (.I0(ctrl_reg),
        .I1(s0_dout[13]),
        .I2(s0_dout[12]),
        .I3(s0_dout[14]),
        .I4(s0_dout[15]),
        .O(gen_fin_data1));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \line_data[0]_i_1 
       (.I0(line_we0),
        .I1(line_we2[0]),
        .O(p_2_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \line_data[10]_i_1 
       (.I0(line_we0),
        .I1(line_we2[10]),
        .O(p_2_out[10]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \line_data[11]_i_1 
       (.I0(line_we0),
        .I1(line_we2[11]),
        .O(p_2_out[11]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \line_data[12]_i_1 
       (.I0(\line_data_reg[15]_i_2_n_5 ),
        .I1(line_we22_in),
        .I2(line_we2[12]),
        .O(p_2_out[12]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \line_data[13]_i_1 
       (.I0(\line_data_reg[15]_i_2_n_5 ),
        .I1(line_we22_in),
        .I2(line_we2[13]),
        .O(p_2_out[13]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \line_data[14]_i_1 
       (.I0(\line_data_reg[15]_i_2_n_5 ),
        .I1(line_we22_in),
        .I2(line_we2[14]),
        .O(p_2_out[14]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \line_data[15]_i_1 
       (.I0(\line_data_reg[15]_i_2_n_5 ),
        .I1(line_we22_in),
        .I2(line_we2[15]),
        .O(p_2_out[15]));
  LUT2 #(
    .INIT(4'h1)) 
    \line_data[15]_i_10 
       (.I0(\line_data_reg[15]_i_4_n_4 ),
        .I1(\line_data_reg[15]_i_2_n_7 ),
        .O(\line_data[15]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[15]_i_12 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_data[15]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[15]_i_13 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_data[15]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[15]_i_14 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_data[15]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[15]_i_15 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_data[15]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \line_data[15]_i_17 
       (.I0(\line_data_reg[15]_i_4_n_6 ),
        .I1(\line_data_reg[15]_i_4_n_5 ),
        .O(\line_data[15]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \line_data[15]_i_18 
       (.I0(\line_data_reg[15]_i_11_n_4 ),
        .I1(\line_data_reg[15]_i_4_n_7 ),
        .O(\line_data[15]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \line_data[15]_i_19 
       (.I0(\line_data_reg[15]_i_11_n_6 ),
        .I1(\line_data_reg[15]_i_11_n_5 ),
        .O(\line_data[15]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \line_data[15]_i_20 
       (.I0(\line_data_reg[15]_i_21_n_4 ),
        .I1(\line_data_reg[15]_i_11_n_7 ),
        .O(\line_data[15]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[15]_i_22 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_data[15]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[15]_i_23 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_data[15]_i_23_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[15]_i_24 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_data[15]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[15]_i_25 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_data[15]_i_25_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \line_data[15]_i_27 
       (.I0(\line_data_reg[15]_i_21_n_6 ),
        .I1(\line_data_reg[15]_i_21_n_5 ),
        .O(\line_data[15]_i_27_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \line_data[15]_i_28 
       (.I0(\line_data_reg[15]_i_31_n_4 ),
        .I1(\line_data_reg[15]_i_21_n_7 ),
        .O(\line_data[15]_i_28_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \line_data[15]_i_29 
       (.I0(\line_data_reg[15]_i_31_n_6 ),
        .I1(\line_data_reg[15]_i_31_n_5 ),
        .O(\line_data[15]_i_29_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \line_data[15]_i_30 
       (.I0(\line_data_reg[15]_i_41_n_4 ),
        .I1(\line_data_reg[15]_i_31_n_7 ),
        .O(\line_data[15]_i_30_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[15]_i_32 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_data[15]_i_32_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[15]_i_33 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_data[15]_i_33_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[15]_i_34 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_data[15]_i_34_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[15]_i_35 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_data[15]_i_35_n_0 ));
  LUT3 #(
    .INIT(8'h31)) 
    \line_data[15]_i_36 
       (.I0(row_buf_reg_r1_0_31_0_5_i_2_n_4),
        .I1(\line_data_reg[15]_i_46_n_7 ),
        .I2(spr_att_vdp_dout[52]),
        .O(\line_data[15]_i_36_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \line_data[15]_i_37 
       (.I0(\line_data_reg[15]_i_41_n_6 ),
        .I1(\line_data_reg[15]_i_41_n_5 ),
        .O(\line_data[15]_i_37_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \line_data[15]_i_38 
       (.I0(\line_data_reg[15]_i_46_n_4 ),
        .I1(\line_data_reg[15]_i_41_n_7 ),
        .O(\line_data[15]_i_38_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \line_data[15]_i_39 
       (.I0(\line_data_reg[15]_i_46_n_6 ),
        .I1(\line_data_reg[15]_i_46_n_5 ),
        .O(\line_data[15]_i_39_n_0 ));
  LUT3 #(
    .INIT(8'h42)) 
    \line_data[15]_i_40 
       (.I0(row_buf_reg_r1_0_31_0_5_i_2_n_4),
        .I1(spr_att_vdp_dout[52]),
        .I2(\line_data_reg[15]_i_46_n_7 ),
        .O(\line_data[15]_i_40_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[15]_i_42 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_data[15]_i_42_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[15]_i_43 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_data[15]_i_43_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[15]_i_44 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_data[15]_i_44_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[15]_i_45 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_data[15]_i_45_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[15]_i_47 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_data[15]_i_47_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[15]_i_48 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_data[15]_i_48_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[15]_i_49 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_data[15]_i_49_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[15]_i_5 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_data[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[15]_i_50 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_data[15]_i_50_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[15]_i_51 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_data[15]_i_51_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[15]_i_52 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_data[15]_i_52_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[15]_i_53 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_data[15]_i_53_n_0 ));
  LUT3 #(
    .INIT(8'h56)) 
    \line_data[15]_i_54 
       (.I0(\line_word_reg_n_0_[3] ),
        .I1(line_off__0[0]),
        .I2(line_off__0[1]),
        .O(\line_data[15]_i_54_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[15]_i_6 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_data[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[15]_i_7 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_data[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \line_data[15]_i_9 
       (.I0(\line_data_reg[15]_i_2_n_6 ),
        .I1(\line_data_reg[15]_i_2_n_5 ),
        .O(\line_data[15]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \line_data[16]_i_1 
       (.I0(line_we18_out),
        .I1(line_we33_out__0[0]),
        .O(p_2_out__0[16]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \line_data[17]_i_1 
       (.I0(line_we18_out),
        .I1(line_we33_out__0[1]),
        .O(p_2_out__0[17]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \line_data[18]_i_1 
       (.I0(line_we18_out),
        .I1(line_we33_out__0[2]),
        .O(p_2_out__0[18]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \line_data[19]_i_1 
       (.I0(line_we18_out),
        .I1(line_we33_out__0[3]),
        .O(p_2_out__0[19]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \line_data[1]_i_1 
       (.I0(line_we0),
        .I1(line_we2[1]),
        .O(p_2_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \line_data[20]_i_1 
       (.I0(line_we18_out),
        .I1(line_we33_out__0[4]),
        .O(p_2_out__0[20]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \line_data[21]_i_1 
       (.I0(line_we18_out),
        .I1(line_we33_out__0[5]),
        .O(p_2_out__0[21]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \line_data[22]_i_1 
       (.I0(line_we18_out),
        .I1(line_we33_out__0[6]),
        .O(p_2_out__0[22]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \line_data[23]_i_1 
       (.I0(line_we18_out),
        .I1(line_we33_out__0[7]),
        .O(p_2_out__0[23]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \line_data[24]_i_1 
       (.I0(line_we18_out),
        .I1(line_we33_out__0[8]),
        .O(p_2_out__0[24]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \line_data[25]_i_1 
       (.I0(line_we18_out),
        .I1(line_we33_out__0[9]),
        .O(p_2_out__0[25]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \line_data[26]_i_1 
       (.I0(line_we18_out),
        .I1(line_we33_out__0[10]),
        .O(p_2_out__0[26]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \line_data[27]_i_1 
       (.I0(line_we18_out),
        .I1(line_we33_out__0[11]),
        .O(p_2_out__0[27]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \line_data[28]_i_1 
       (.I0(\line_data_reg[31]_i_2_n_5 ),
        .I1(line_we35_in),
        .I2(line_we33_out[12]),
        .O(p_2_out__0[28]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \line_data[29]_i_1 
       (.I0(\line_data_reg[31]_i_2_n_5 ),
        .I1(line_we35_in),
        .I2(line_we33_out[13]),
        .O(p_2_out__0[29]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \line_data[2]_i_1 
       (.I0(line_we0),
        .I1(line_we2[2]),
        .O(p_2_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \line_data[30]_i_1 
       (.I0(\line_data_reg[31]_i_2_n_5 ),
        .I1(line_we35_in),
        .I2(line_we33_out[14]),
        .O(p_2_out__0[30]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \line_data[31]_i_1 
       (.I0(\line_data_reg[31]_i_2_n_5 ),
        .I1(line_we35_in),
        .I2(line_we33_out[15]),
        .O(p_2_out__0[31]));
  LUT2 #(
    .INIT(4'h1)) 
    \line_data[31]_i_10 
       (.I0(\line_data_reg[31]_i_4_n_4 ),
        .I1(\line_data_reg[31]_i_2_n_7 ),
        .O(\line_data[31]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[31]_i_12 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_data[31]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[31]_i_13 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_data[31]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[31]_i_14 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_data[31]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[31]_i_15 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_data[31]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \line_data[31]_i_17 
       (.I0(\line_data_reg[31]_i_4_n_6 ),
        .I1(\line_data_reg[31]_i_4_n_5 ),
        .O(\line_data[31]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \line_data[31]_i_18 
       (.I0(\line_data_reg[31]_i_11_n_4 ),
        .I1(\line_data_reg[31]_i_4_n_7 ),
        .O(\line_data[31]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \line_data[31]_i_19 
       (.I0(\line_data_reg[31]_i_11_n_6 ),
        .I1(\line_data_reg[31]_i_11_n_5 ),
        .O(\line_data[31]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \line_data[31]_i_20 
       (.I0(\line_data_reg[31]_i_21_n_4 ),
        .I1(\line_data_reg[31]_i_11_n_7 ),
        .O(\line_data[31]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[31]_i_22 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_data[31]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[31]_i_23 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_data[31]_i_23_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[31]_i_24 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_data[31]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[31]_i_25 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_data[31]_i_25_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \line_data[31]_i_27 
       (.I0(\line_data_reg[31]_i_21_n_6 ),
        .I1(\line_data_reg[31]_i_21_n_5 ),
        .O(\line_data[31]_i_27_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \line_data[31]_i_28 
       (.I0(\line_data_reg[31]_i_31_n_4 ),
        .I1(\line_data_reg[31]_i_21_n_7 ),
        .O(\line_data[31]_i_28_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \line_data[31]_i_29 
       (.I0(\line_data_reg[31]_i_31_n_6 ),
        .I1(\line_data_reg[31]_i_31_n_5 ),
        .O(\line_data[31]_i_29_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \line_data[31]_i_30 
       (.I0(\line_data_reg[31]_i_41_n_4 ),
        .I1(\line_data_reg[31]_i_31_n_7 ),
        .O(\line_data[31]_i_30_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[31]_i_32 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_data[31]_i_32_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[31]_i_33 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_data[31]_i_33_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[31]_i_34 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_data[31]_i_34_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[31]_i_35 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_data[31]_i_35_n_0 ));
  LUT3 #(
    .INIT(8'h31)) 
    \line_data[31]_i_36 
       (.I0(row_buf_reg_r2_0_31_0_5_i_1_n_4),
        .I1(\line_data_reg[31]_i_46_n_7 ),
        .I2(spr_att_vdp_dout[52]),
        .O(\line_data[31]_i_36_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \line_data[31]_i_37 
       (.I0(\line_data_reg[31]_i_41_n_6 ),
        .I1(\line_data_reg[31]_i_41_n_5 ),
        .O(\line_data[31]_i_37_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \line_data[31]_i_38 
       (.I0(\line_data_reg[31]_i_46_n_4 ),
        .I1(\line_data_reg[31]_i_41_n_7 ),
        .O(\line_data[31]_i_38_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \line_data[31]_i_39 
       (.I0(\line_data_reg[31]_i_46_n_6 ),
        .I1(\line_data_reg[31]_i_46_n_5 ),
        .O(\line_data[31]_i_39_n_0 ));
  LUT3 #(
    .INIT(8'h42)) 
    \line_data[31]_i_40 
       (.I0(row_buf_reg_r2_0_31_0_5_i_1_n_4),
        .I1(spr_att_vdp_dout[52]),
        .I2(\line_data_reg[31]_i_46_n_7 ),
        .O(\line_data[31]_i_40_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[31]_i_42 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_data[31]_i_42_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[31]_i_43 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_data[31]_i_43_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[31]_i_44 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_data[31]_i_44_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[31]_i_45 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_data[31]_i_45_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[31]_i_47 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_data[31]_i_47_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[31]_i_48 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_data[31]_i_48_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[31]_i_49 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_data[31]_i_49_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[31]_i_5 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_data[31]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[31]_i_50 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_data[31]_i_50_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[31]_i_51 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_data[31]_i_51_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[31]_i_52 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_data[31]_i_52_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[31]_i_53 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_data[31]_i_53_n_0 ));
  LUT3 #(
    .INIT(8'h56)) 
    \line_data[31]_i_54 
       (.I0(\line_word_reg_n_0_[3] ),
        .I1(line_off__0[0]),
        .I2(line_off__0[1]),
        .O(\line_data[31]_i_54_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[31]_i_6 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_data[31]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[31]_i_7 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_data[31]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \line_data[31]_i_9 
       (.I0(\line_data_reg[31]_i_2_n_6 ),
        .I1(\line_data_reg[31]_i_2_n_5 ),
        .O(\line_data[31]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \line_data[32]_i_1 
       (.I0(line_we1),
        .I1(line_we36_out__0[0]),
        .O(p_2_out__0[32]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \line_data[33]_i_1 
       (.I0(line_we1),
        .I1(line_we36_out__0[1]),
        .O(p_2_out__0[33]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \line_data[34]_i_1 
       (.I0(line_we1),
        .I1(line_we36_out__0[2]),
        .O(p_2_out__0[34]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \line_data[35]_i_1 
       (.I0(line_we1),
        .I1(line_we36_out__0[3]),
        .O(p_2_out__0[35]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \line_data[36]_i_1 
       (.I0(line_we1),
        .I1(line_we36_out__0[4]),
        .O(p_2_out__0[36]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \line_data[37]_i_1 
       (.I0(line_we1),
        .I1(line_we36_out__0[5]),
        .O(p_2_out__0[37]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \line_data[38]_i_1 
       (.I0(line_we1),
        .I1(line_we36_out__0[6]),
        .O(p_2_out__0[38]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \line_data[39]_i_1 
       (.I0(line_we1),
        .I1(line_we36_out__0[7]),
        .O(p_2_out__0[39]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \line_data[3]_i_1 
       (.I0(line_we0),
        .I1(line_we2[3]),
        .O(p_2_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \line_data[40]_i_1 
       (.I0(line_we1),
        .I1(line_we36_out__0[8]),
        .O(p_2_out__0[40]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \line_data[41]_i_1 
       (.I0(line_we1),
        .I1(line_we36_out__0[9]),
        .O(p_2_out__0[41]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \line_data[42]_i_1 
       (.I0(line_we1),
        .I1(line_we36_out__0[10]),
        .O(p_2_out__0[42]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \line_data[43]_i_1 
       (.I0(line_we1),
        .I1(line_we36_out__0[11]),
        .O(p_2_out__0[43]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \line_data[44]_i_1 
       (.I0(\line_data_reg[47]_i_2_n_4 ),
        .I1(line_we3),
        .I2(line_we36_out[12]),
        .O(p_2_out__0[44]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \line_data[45]_i_1 
       (.I0(\line_data_reg[47]_i_2_n_4 ),
        .I1(line_we3),
        .I2(line_we36_out[13]),
        .O(p_2_out__0[45]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \line_data[46]_i_1 
       (.I0(\line_data_reg[47]_i_2_n_4 ),
        .I1(line_we3),
        .I2(line_we36_out[14]),
        .O(p_2_out__0[46]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \line_data[47]_i_1 
       (.I0(\line_data_reg[47]_i_2_n_4 ),
        .I1(line_we3),
        .I2(line_we36_out[15]),
        .O(p_2_out__0[47]));
  LUT2 #(
    .INIT(4'h1)) 
    \line_data[47]_i_10 
       (.I0(\line_data_reg[47]_i_2_n_5 ),
        .I1(\line_data_reg[47]_i_2_n_4 ),
        .O(\line_data[47]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \line_data[47]_i_11 
       (.I0(\line_data_reg[47]_i_2_n_7 ),
        .I1(\line_data_reg[47]_i_2_n_6 ),
        .O(\line_data[47]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[47]_i_13 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_data[47]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[47]_i_14 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_data[47]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[47]_i_15 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_data[47]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[47]_i_16 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_data[47]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \line_data[47]_i_18 
       (.I0(\line_data_reg[47]_i_4_n_5 ),
        .I1(\line_data_reg[47]_i_4_n_4 ),
        .O(\line_data[47]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \line_data[47]_i_19 
       (.I0(\line_data_reg[47]_i_4_n_7 ),
        .I1(\line_data_reg[47]_i_4_n_6 ),
        .O(\line_data[47]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \line_data[47]_i_20 
       (.I0(\line_data_reg[47]_i_12_n_5 ),
        .I1(\line_data_reg[47]_i_12_n_4 ),
        .O(\line_data[47]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \line_data[47]_i_21 
       (.I0(\line_data_reg[47]_i_12_n_7 ),
        .I1(\line_data_reg[47]_i_12_n_6 ),
        .O(\line_data[47]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[47]_i_23 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_data[47]_i_23_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[47]_i_24 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_data[47]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[47]_i_25 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_data[47]_i_25_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[47]_i_26 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_data[47]_i_26_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \line_data[47]_i_28 
       (.I0(\line_data_reg[47]_i_22_n_5 ),
        .I1(\line_data_reg[47]_i_22_n_4 ),
        .O(\line_data[47]_i_28_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \line_data[47]_i_29 
       (.I0(\line_data_reg[47]_i_22_n_7 ),
        .I1(\line_data_reg[47]_i_22_n_6 ),
        .O(\line_data[47]_i_29_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \line_data[47]_i_30 
       (.I0(\line_data_reg[47]_i_32_n_5 ),
        .I1(\line_data_reg[47]_i_32_n_4 ),
        .O(\line_data[47]_i_30_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \line_data[47]_i_31 
       (.I0(\line_data_reg[47]_i_32_n_7 ),
        .I1(\line_data_reg[47]_i_32_n_6 ),
        .O(\line_data[47]_i_31_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[47]_i_33 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_data[47]_i_33_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[47]_i_34 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_data[47]_i_34_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[47]_i_35 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_data[47]_i_35_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[47]_i_36 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_data[47]_i_36_n_0 ));
  LUT3 #(
    .INIT(8'h31)) 
    \line_data[47]_i_37 
       (.I0(row_buf_reg_r4_0_31_0_5_i_1_n_7),
        .I1(row_buf_reg_r4_0_31_0_5_i_1_n_6),
        .I2(spr_att_vdp_dout[52]),
        .O(\line_data[47]_i_37_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \line_data[47]_i_38 
       (.I0(\line_data_reg[47]_i_42_n_5 ),
        .I1(\line_data_reg[47]_i_42_n_4 ),
        .O(\line_data[47]_i_38_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \line_data[47]_i_39 
       (.I0(\line_data_reg[47]_i_42_n_7 ),
        .I1(\line_data_reg[47]_i_42_n_6 ),
        .O(\line_data[47]_i_39_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \line_data[47]_i_40 
       (.I0(row_buf_reg_r4_0_31_0_5_i_1_n_5),
        .I1(row_buf_reg_r4_0_31_0_5_i_1_n_4),
        .O(\line_data[47]_i_40_n_0 ));
  LUT3 #(
    .INIT(8'h42)) 
    \line_data[47]_i_41 
       (.I0(row_buf_reg_r4_0_31_0_5_i_1_n_7),
        .I1(spr_att_vdp_dout[52]),
        .I2(row_buf_reg_r4_0_31_0_5_i_1_n_6),
        .O(\line_data[47]_i_41_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[47]_i_43 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_data[47]_i_43_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[47]_i_44 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_data[47]_i_44_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[47]_i_45 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_data[47]_i_45_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[47]_i_46 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_data[47]_i_46_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[47]_i_47 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_data[47]_i_47_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[47]_i_48 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_data[47]_i_48_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[47]_i_49 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_data[47]_i_49_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[47]_i_5 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_data[47]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[47]_i_50 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_data[47]_i_50_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[47]_i_6 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_data[47]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[47]_i_7 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_data[47]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[47]_i_8 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_data[47]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \line_data[48]_i_1 
       (.I0(row_buf_reg_r3_0_31_12_15_n_2),
        .I1(row_buf_reg_r3_0_31_12_15_n_3),
        .I2(row_buf_reg_r3_0_31_12_15_n_1),
        .I3(row_buf_reg_r3_0_31_12_15_n_0),
        .I4(line_we210_in),
        .I5(line_we30_out[0]),
        .O(p_2_out__0[48]));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \line_data[49]_i_1 
       (.I0(row_buf_reg_r3_0_31_12_15_n_2),
        .I1(row_buf_reg_r3_0_31_12_15_n_3),
        .I2(row_buf_reg_r3_0_31_12_15_n_1),
        .I3(row_buf_reg_r3_0_31_12_15_n_0),
        .I4(line_we210_in),
        .I5(line_we30_out[1]),
        .O(p_2_out__0[49]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \line_data[4]_i_1 
       (.I0(line_we0),
        .I1(line_we2[4]),
        .O(p_2_out[4]));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \line_data[50]_i_1 
       (.I0(row_buf_reg_r3_0_31_12_15_n_2),
        .I1(row_buf_reg_r3_0_31_12_15_n_3),
        .I2(row_buf_reg_r3_0_31_12_15_n_1),
        .I3(row_buf_reg_r3_0_31_12_15_n_0),
        .I4(line_we210_in),
        .I5(line_we30_out[2]),
        .O(p_2_out__0[50]));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \line_data[51]_i_1 
       (.I0(row_buf_reg_r3_0_31_12_15_n_2),
        .I1(row_buf_reg_r3_0_31_12_15_n_3),
        .I2(row_buf_reg_r3_0_31_12_15_n_1),
        .I3(row_buf_reg_r3_0_31_12_15_n_0),
        .I4(line_we210_in),
        .I5(line_we30_out[3]),
        .O(p_2_out__0[51]));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \line_data[52]_i_1 
       (.I0(row_buf_reg_r3_0_31_12_15_n_2),
        .I1(row_buf_reg_r3_0_31_12_15_n_3),
        .I2(row_buf_reg_r3_0_31_12_15_n_1),
        .I3(row_buf_reg_r3_0_31_12_15_n_0),
        .I4(line_we210_in),
        .I5(line_we30_out[4]),
        .O(p_2_out__0[52]));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \line_data[53]_i_1 
       (.I0(row_buf_reg_r3_0_31_12_15_n_2),
        .I1(row_buf_reg_r3_0_31_12_15_n_3),
        .I2(row_buf_reg_r3_0_31_12_15_n_1),
        .I3(row_buf_reg_r3_0_31_12_15_n_0),
        .I4(line_we210_in),
        .I5(line_we30_out[5]),
        .O(p_2_out__0[53]));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \line_data[54]_i_1 
       (.I0(row_buf_reg_r3_0_31_12_15_n_2),
        .I1(row_buf_reg_r3_0_31_12_15_n_3),
        .I2(row_buf_reg_r3_0_31_12_15_n_1),
        .I3(row_buf_reg_r3_0_31_12_15_n_0),
        .I4(line_we210_in),
        .I5(line_we30_out[6]),
        .O(p_2_out__0[54]));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \line_data[55]_i_1 
       (.I0(row_buf_reg_r3_0_31_12_15_n_2),
        .I1(row_buf_reg_r3_0_31_12_15_n_3),
        .I2(row_buf_reg_r3_0_31_12_15_n_1),
        .I3(row_buf_reg_r3_0_31_12_15_n_0),
        .I4(line_we210_in),
        .I5(line_we30_out[7]),
        .O(p_2_out__0[55]));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \line_data[56]_i_1 
       (.I0(row_buf_reg_r3_0_31_12_15_n_2),
        .I1(row_buf_reg_r3_0_31_12_15_n_3),
        .I2(row_buf_reg_r3_0_31_12_15_n_1),
        .I3(row_buf_reg_r3_0_31_12_15_n_0),
        .I4(line_we210_in),
        .I5(line_we30_out[8]),
        .O(p_2_out__0[56]));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \line_data[57]_i_1 
       (.I0(row_buf_reg_r3_0_31_12_15_n_2),
        .I1(row_buf_reg_r3_0_31_12_15_n_3),
        .I2(row_buf_reg_r3_0_31_12_15_n_1),
        .I3(row_buf_reg_r3_0_31_12_15_n_0),
        .I4(line_we210_in),
        .I5(line_we30_out[9]),
        .O(p_2_out__0[57]));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \line_data[58]_i_1 
       (.I0(row_buf_reg_r3_0_31_12_15_n_2),
        .I1(row_buf_reg_r3_0_31_12_15_n_3),
        .I2(row_buf_reg_r3_0_31_12_15_n_1),
        .I3(row_buf_reg_r3_0_31_12_15_n_0),
        .I4(line_we210_in),
        .I5(line_we30_out[10]),
        .O(p_2_out__0[58]));
  LUT6 #(
    .INIT(64'hFFFE000000000000)) 
    \line_data[59]_i_1 
       (.I0(row_buf_reg_r3_0_31_12_15_n_2),
        .I1(row_buf_reg_r3_0_31_12_15_n_3),
        .I2(row_buf_reg_r3_0_31_12_15_n_1),
        .I3(row_buf_reg_r3_0_31_12_15_n_0),
        .I4(line_we210_in),
        .I5(line_we30_out[11]),
        .O(p_2_out__0[59]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \line_data[5]_i_1 
       (.I0(line_we0),
        .I1(line_we2[5]),
        .O(p_2_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \line_data[60]_i_1 
       (.I0(line_we210_in),
        .I1(row_buf_reg_r3_0_31_12_15_n_1),
        .O(p_2_out__0[60]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \line_data[61]_i_1 
       (.I0(line_we210_in),
        .I1(row_buf_reg_r3_0_31_12_15_n_0),
        .O(p_2_out__0[61]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \line_data[62]_i_1 
       (.I0(line_we210_in),
        .I1(row_buf_reg_r3_0_31_12_15_n_3),
        .O(p_2_out__0[62]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \line_data[63]_i_1 
       (.I0(line_we210_in),
        .I1(row_buf_reg_r3_0_31_12_15_n_2),
        .O(p_2_out__0[63]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \line_data[6]_i_1 
       (.I0(line_we0),
        .I1(line_we2[6]),
        .O(p_2_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \line_data[7]_i_1 
       (.I0(line_we0),
        .I1(line_we2[7]),
        .O(p_2_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \line_data[8]_i_1 
       (.I0(line_we0),
        .I1(line_we2[8]),
        .O(p_2_out[8]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \line_data[9]_i_1 
       (.I0(line_we0),
        .I1(line_we2[9]),
        .O(p_2_out[9]));
  FDRE \line_data_reg[0] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_2_out[0]),
        .Q(\line_data_reg_n_0_[0] ),
        .R(line_data0));
  FDRE \line_data_reg[10] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_2_out[10]),
        .Q(\line_data_reg_n_0_[10] ),
        .R(line_data0));
  FDRE \line_data_reg[11] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_2_out[11]),
        .Q(\line_data_reg_n_0_[11] ),
        .R(line_data0));
  FDRE \line_data_reg[12] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_2_out[12]),
        .Q(\line_data_reg_n_0_[12] ),
        .R(line_data0));
  FDRE \line_data_reg[13] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_2_out[13]),
        .Q(\line_data_reg_n_0_[13] ),
        .R(line_data0));
  FDRE \line_data_reg[14] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_2_out[14]),
        .Q(\line_data_reg_n_0_[14] ),
        .R(line_data0));
  FDRE \line_data_reg[15] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_2_out[15]),
        .Q(\line_data_reg_n_0_[15] ),
        .R(line_data0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \line_data_reg[15]_i_11 
       (.CI(\line_data_reg[15]_i_21_n_0 ),
        .CO({\line_data_reg[15]_i_11_n_0 ,\line_data_reg[15]_i_11_n_1 ,\line_data_reg[15]_i_11_n_2 ,\line_data_reg[15]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\line_data_reg[15]_i_11_n_4 ,\line_data_reg[15]_i_11_n_5 ,\line_data_reg[15]_i_11_n_6 ,\line_data_reg[15]_i_11_n_7 }),
        .S({\line_data[15]_i_22_n_0 ,\line_data[15]_i_23_n_0 ,\line_data[15]_i_24_n_0 ,\line_data[15]_i_25_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \line_data_reg[15]_i_16 
       (.CI(\line_data_reg[15]_i_26_n_0 ),
        .CO({\line_data_reg[15]_i_16_n_0 ,\line_data_reg[15]_i_16_n_1 ,\line_data_reg[15]_i_16_n_2 ,\line_data_reg[15]_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_line_data_reg[15]_i_16_O_UNCONNECTED [3:0]),
        .S({\line_data[15]_i_27_n_0 ,\line_data[15]_i_28_n_0 ,\line_data[15]_i_29_n_0 ,\line_data[15]_i_30_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \line_data_reg[15]_i_2 
       (.CI(\line_data_reg[15]_i_4_n_0 ),
        .CO({\NLW_line_data_reg[15]_i_2_CO_UNCONNECTED [3:2],\line_data_reg[15]_i_2_n_2 ,\line_data_reg[15]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_line_data_reg[15]_i_2_O_UNCONNECTED [3],\line_data_reg[15]_i_2_n_5 ,\line_data_reg[15]_i_2_n_6 ,\line_data_reg[15]_i_2_n_7 }),
        .S({1'b0,\line_data[15]_i_5_n_0 ,\line_data[15]_i_6_n_0 ,\line_data[15]_i_7_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \line_data_reg[15]_i_21 
       (.CI(\line_data_reg[15]_i_31_n_0 ),
        .CO({\line_data_reg[15]_i_21_n_0 ,\line_data_reg[15]_i_21_n_1 ,\line_data_reg[15]_i_21_n_2 ,\line_data_reg[15]_i_21_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\line_data_reg[15]_i_21_n_4 ,\line_data_reg[15]_i_21_n_5 ,\line_data_reg[15]_i_21_n_6 ,\line_data_reg[15]_i_21_n_7 }),
        .S({\line_data[15]_i_32_n_0 ,\line_data[15]_i_33_n_0 ,\line_data[15]_i_34_n_0 ,\line_data[15]_i_35_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \line_data_reg[15]_i_26 
       (.CI(1'b0),
        .CO({\line_data_reg[15]_i_26_n_0 ,\line_data_reg[15]_i_26_n_1 ,\line_data_reg[15]_i_26_n_2 ,\line_data_reg[15]_i_26_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\line_data[15]_i_36_n_0 }),
        .O(\NLW_line_data_reg[15]_i_26_O_UNCONNECTED [3:0]),
        .S({\line_data[15]_i_37_n_0 ,\line_data[15]_i_38_n_0 ,\line_data[15]_i_39_n_0 ,\line_data[15]_i_40_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \line_data_reg[15]_i_3 
       (.CI(\line_data_reg[15]_i_8_n_0 ),
        .CO({\NLW_line_data_reg[15]_i_3_CO_UNCONNECTED [3:2],line_we22_in,\line_data_reg[15]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_line_data_reg[15]_i_3_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\line_data[15]_i_9_n_0 ,\line_data[15]_i_10_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \line_data_reg[15]_i_31 
       (.CI(\line_data_reg[15]_i_41_n_0 ),
        .CO({\line_data_reg[15]_i_31_n_0 ,\line_data_reg[15]_i_31_n_1 ,\line_data_reg[15]_i_31_n_2 ,\line_data_reg[15]_i_31_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\line_data_reg[15]_i_31_n_4 ,\line_data_reg[15]_i_31_n_5 ,\line_data_reg[15]_i_31_n_6 ,\line_data_reg[15]_i_31_n_7 }),
        .S({\line_data[15]_i_42_n_0 ,\line_data[15]_i_43_n_0 ,\line_data[15]_i_44_n_0 ,\line_data[15]_i_45_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \line_data_reg[15]_i_4 
       (.CI(\line_data_reg[15]_i_11_n_0 ),
        .CO({\line_data_reg[15]_i_4_n_0 ,\line_data_reg[15]_i_4_n_1 ,\line_data_reg[15]_i_4_n_2 ,\line_data_reg[15]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\line_data_reg[15]_i_4_n_4 ,\line_data_reg[15]_i_4_n_5 ,\line_data_reg[15]_i_4_n_6 ,\line_data_reg[15]_i_4_n_7 }),
        .S({\line_data[15]_i_12_n_0 ,\line_data[15]_i_13_n_0 ,\line_data[15]_i_14_n_0 ,\line_data[15]_i_15_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \line_data_reg[15]_i_41 
       (.CI(\line_data_reg[15]_i_46_n_0 ),
        .CO({\line_data_reg[15]_i_41_n_0 ,\line_data_reg[15]_i_41_n_1 ,\line_data_reg[15]_i_41_n_2 ,\line_data_reg[15]_i_41_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\line_data_reg[15]_i_41_n_4 ,\line_data_reg[15]_i_41_n_5 ,\line_data_reg[15]_i_41_n_6 ,\line_data_reg[15]_i_41_n_7 }),
        .S({\line_data[15]_i_47_n_0 ,\line_data[15]_i_48_n_0 ,\line_data[15]_i_49_n_0 ,\line_data[15]_i_50_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \line_data_reg[15]_i_46 
       (.CI(row_buf_reg_r1_0_31_0_5_i_2_n_0),
        .CO({\line_data_reg[15]_i_46_n_0 ,\line_data_reg[15]_i_46_n_1 ,\line_data_reg[15]_i_46_n_2 ,\line_data_reg[15]_i_46_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\line_word_reg_n_0_[3] }),
        .O({\line_data_reg[15]_i_46_n_4 ,\line_data_reg[15]_i_46_n_5 ,\line_data_reg[15]_i_46_n_6 ,\line_data_reg[15]_i_46_n_7 }),
        .S({\line_data[15]_i_51_n_0 ,\line_data[15]_i_52_n_0 ,\line_data[15]_i_53_n_0 ,\line_data[15]_i_54_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \line_data_reg[15]_i_8 
       (.CI(\line_data_reg[15]_i_16_n_0 ),
        .CO({\line_data_reg[15]_i_8_n_0 ,\line_data_reg[15]_i_8_n_1 ,\line_data_reg[15]_i_8_n_2 ,\line_data_reg[15]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_line_data_reg[15]_i_8_O_UNCONNECTED [3:0]),
        .S({\line_data[15]_i_17_n_0 ,\line_data[15]_i_18_n_0 ,\line_data[15]_i_19_n_0 ,\line_data[15]_i_20_n_0 }));
  FDRE \line_data_reg[16] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_2_out__0[16]),
        .Q(\line_data_reg_n_0_[16] ),
        .R(line_data0));
  FDRE \line_data_reg[17] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_2_out__0[17]),
        .Q(\line_data_reg_n_0_[17] ),
        .R(line_data0));
  FDRE \line_data_reg[18] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_2_out__0[18]),
        .Q(\line_data_reg_n_0_[18] ),
        .R(line_data0));
  FDRE \line_data_reg[19] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_2_out__0[19]),
        .Q(\line_data_reg_n_0_[19] ),
        .R(line_data0));
  FDRE \line_data_reg[1] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_2_out[1]),
        .Q(\line_data_reg_n_0_[1] ),
        .R(line_data0));
  FDRE \line_data_reg[20] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_2_out__0[20]),
        .Q(\line_data_reg_n_0_[20] ),
        .R(line_data0));
  FDRE \line_data_reg[21] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_2_out__0[21]),
        .Q(\line_data_reg_n_0_[21] ),
        .R(line_data0));
  FDRE \line_data_reg[22] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_2_out__0[22]),
        .Q(\line_data_reg_n_0_[22] ),
        .R(line_data0));
  FDRE \line_data_reg[23] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_2_out__0[23]),
        .Q(\line_data_reg_n_0_[23] ),
        .R(line_data0));
  FDRE \line_data_reg[24] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_2_out__0[24]),
        .Q(\line_data_reg_n_0_[24] ),
        .R(line_data0));
  FDRE \line_data_reg[25] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_2_out__0[25]),
        .Q(\line_data_reg_n_0_[25] ),
        .R(line_data0));
  FDRE \line_data_reg[26] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_2_out__0[26]),
        .Q(\line_data_reg_n_0_[26] ),
        .R(line_data0));
  FDRE \line_data_reg[27] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_2_out__0[27]),
        .Q(\line_data_reg_n_0_[27] ),
        .R(line_data0));
  FDRE \line_data_reg[28] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_2_out__0[28]),
        .Q(\line_data_reg_n_0_[28] ),
        .R(line_data0));
  FDRE \line_data_reg[29] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_2_out__0[29]),
        .Q(\line_data_reg_n_0_[29] ),
        .R(line_data0));
  FDRE \line_data_reg[2] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_2_out[2]),
        .Q(\line_data_reg_n_0_[2] ),
        .R(line_data0));
  FDRE \line_data_reg[30] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_2_out__0[30]),
        .Q(\line_data_reg_n_0_[30] ),
        .R(line_data0));
  FDRE \line_data_reg[31] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_2_out__0[31]),
        .Q(\line_data_reg_n_0_[31] ),
        .R(line_data0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \line_data_reg[31]_i_11 
       (.CI(\line_data_reg[31]_i_21_n_0 ),
        .CO({\line_data_reg[31]_i_11_n_0 ,\line_data_reg[31]_i_11_n_1 ,\line_data_reg[31]_i_11_n_2 ,\line_data_reg[31]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\line_data_reg[31]_i_11_n_4 ,\line_data_reg[31]_i_11_n_5 ,\line_data_reg[31]_i_11_n_6 ,\line_data_reg[31]_i_11_n_7 }),
        .S({\line_data[31]_i_22_n_0 ,\line_data[31]_i_23_n_0 ,\line_data[31]_i_24_n_0 ,\line_data[31]_i_25_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \line_data_reg[31]_i_16 
       (.CI(\line_data_reg[31]_i_26_n_0 ),
        .CO({\line_data_reg[31]_i_16_n_0 ,\line_data_reg[31]_i_16_n_1 ,\line_data_reg[31]_i_16_n_2 ,\line_data_reg[31]_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_line_data_reg[31]_i_16_O_UNCONNECTED [3:0]),
        .S({\line_data[31]_i_27_n_0 ,\line_data[31]_i_28_n_0 ,\line_data[31]_i_29_n_0 ,\line_data[31]_i_30_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \line_data_reg[31]_i_2 
       (.CI(\line_data_reg[31]_i_4_n_0 ),
        .CO({\NLW_line_data_reg[31]_i_2_CO_UNCONNECTED [3:2],\line_data_reg[31]_i_2_n_2 ,\line_data_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_line_data_reg[31]_i_2_O_UNCONNECTED [3],\line_data_reg[31]_i_2_n_5 ,\line_data_reg[31]_i_2_n_6 ,\line_data_reg[31]_i_2_n_7 }),
        .S({1'b0,\line_data[31]_i_5_n_0 ,\line_data[31]_i_6_n_0 ,\line_data[31]_i_7_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \line_data_reg[31]_i_21 
       (.CI(\line_data_reg[31]_i_31_n_0 ),
        .CO({\line_data_reg[31]_i_21_n_0 ,\line_data_reg[31]_i_21_n_1 ,\line_data_reg[31]_i_21_n_2 ,\line_data_reg[31]_i_21_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\line_data_reg[31]_i_21_n_4 ,\line_data_reg[31]_i_21_n_5 ,\line_data_reg[31]_i_21_n_6 ,\line_data_reg[31]_i_21_n_7 }),
        .S({\line_data[31]_i_32_n_0 ,\line_data[31]_i_33_n_0 ,\line_data[31]_i_34_n_0 ,\line_data[31]_i_35_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \line_data_reg[31]_i_26 
       (.CI(1'b0),
        .CO({\line_data_reg[31]_i_26_n_0 ,\line_data_reg[31]_i_26_n_1 ,\line_data_reg[31]_i_26_n_2 ,\line_data_reg[31]_i_26_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\line_data[31]_i_36_n_0 }),
        .O(\NLW_line_data_reg[31]_i_26_O_UNCONNECTED [3:0]),
        .S({\line_data[31]_i_37_n_0 ,\line_data[31]_i_38_n_0 ,\line_data[31]_i_39_n_0 ,\line_data[31]_i_40_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \line_data_reg[31]_i_3 
       (.CI(\line_data_reg[31]_i_8_n_0 ),
        .CO({\NLW_line_data_reg[31]_i_3_CO_UNCONNECTED [3:2],line_we35_in,\line_data_reg[31]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_line_data_reg[31]_i_3_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\line_data[31]_i_9_n_0 ,\line_data[31]_i_10_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \line_data_reg[31]_i_31 
       (.CI(\line_data_reg[31]_i_41_n_0 ),
        .CO({\line_data_reg[31]_i_31_n_0 ,\line_data_reg[31]_i_31_n_1 ,\line_data_reg[31]_i_31_n_2 ,\line_data_reg[31]_i_31_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\line_data_reg[31]_i_31_n_4 ,\line_data_reg[31]_i_31_n_5 ,\line_data_reg[31]_i_31_n_6 ,\line_data_reg[31]_i_31_n_7 }),
        .S({\line_data[31]_i_42_n_0 ,\line_data[31]_i_43_n_0 ,\line_data[31]_i_44_n_0 ,\line_data[31]_i_45_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \line_data_reg[31]_i_4 
       (.CI(\line_data_reg[31]_i_11_n_0 ),
        .CO({\line_data_reg[31]_i_4_n_0 ,\line_data_reg[31]_i_4_n_1 ,\line_data_reg[31]_i_4_n_2 ,\line_data_reg[31]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\line_data_reg[31]_i_4_n_4 ,\line_data_reg[31]_i_4_n_5 ,\line_data_reg[31]_i_4_n_6 ,\line_data_reg[31]_i_4_n_7 }),
        .S({\line_data[31]_i_12_n_0 ,\line_data[31]_i_13_n_0 ,\line_data[31]_i_14_n_0 ,\line_data[31]_i_15_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \line_data_reg[31]_i_41 
       (.CI(\line_data_reg[31]_i_46_n_0 ),
        .CO({\line_data_reg[31]_i_41_n_0 ,\line_data_reg[31]_i_41_n_1 ,\line_data_reg[31]_i_41_n_2 ,\line_data_reg[31]_i_41_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\line_data_reg[31]_i_41_n_4 ,\line_data_reg[31]_i_41_n_5 ,\line_data_reg[31]_i_41_n_6 ,\line_data_reg[31]_i_41_n_7 }),
        .S({\line_data[31]_i_47_n_0 ,\line_data[31]_i_48_n_0 ,\line_data[31]_i_49_n_0 ,\line_data[31]_i_50_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \line_data_reg[31]_i_46 
       (.CI(row_buf_reg_r2_0_31_0_5_i_1_n_0),
        .CO({\line_data_reg[31]_i_46_n_0 ,\line_data_reg[31]_i_46_n_1 ,\line_data_reg[31]_i_46_n_2 ,\line_data_reg[31]_i_46_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\line_word_reg_n_0_[3] }),
        .O({\line_data_reg[31]_i_46_n_4 ,\line_data_reg[31]_i_46_n_5 ,\line_data_reg[31]_i_46_n_6 ,\line_data_reg[31]_i_46_n_7 }),
        .S({\line_data[31]_i_51_n_0 ,\line_data[31]_i_52_n_0 ,\line_data[31]_i_53_n_0 ,\line_data[31]_i_54_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \line_data_reg[31]_i_8 
       (.CI(\line_data_reg[31]_i_16_n_0 ),
        .CO({\line_data_reg[31]_i_8_n_0 ,\line_data_reg[31]_i_8_n_1 ,\line_data_reg[31]_i_8_n_2 ,\line_data_reg[31]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_line_data_reg[31]_i_8_O_UNCONNECTED [3:0]),
        .S({\line_data[31]_i_17_n_0 ,\line_data[31]_i_18_n_0 ,\line_data[31]_i_19_n_0 ,\line_data[31]_i_20_n_0 }));
  FDRE \line_data_reg[32] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_2_out__0[32]),
        .Q(\line_data_reg_n_0_[32] ),
        .R(line_data0));
  FDRE \line_data_reg[33] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_2_out__0[33]),
        .Q(\line_data_reg_n_0_[33] ),
        .R(line_data0));
  FDRE \line_data_reg[34] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_2_out__0[34]),
        .Q(\line_data_reg_n_0_[34] ),
        .R(line_data0));
  FDRE \line_data_reg[35] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_2_out__0[35]),
        .Q(\line_data_reg_n_0_[35] ),
        .R(line_data0));
  FDRE \line_data_reg[36] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_2_out__0[36]),
        .Q(\line_data_reg_n_0_[36] ),
        .R(line_data0));
  FDRE \line_data_reg[37] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_2_out__0[37]),
        .Q(\line_data_reg_n_0_[37] ),
        .R(line_data0));
  FDRE \line_data_reg[38] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_2_out__0[38]),
        .Q(\line_data_reg_n_0_[38] ),
        .R(line_data0));
  FDRE \line_data_reg[39] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_2_out__0[39]),
        .Q(\line_data_reg_n_0_[39] ),
        .R(line_data0));
  FDRE \line_data_reg[3] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_2_out[3]),
        .Q(\line_data_reg_n_0_[3] ),
        .R(line_data0));
  FDRE \line_data_reg[40] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_2_out__0[40]),
        .Q(\line_data_reg_n_0_[40] ),
        .R(line_data0));
  FDRE \line_data_reg[41] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_2_out__0[41]),
        .Q(\line_data_reg_n_0_[41] ),
        .R(line_data0));
  FDRE \line_data_reg[42] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_2_out__0[42]),
        .Q(\line_data_reg_n_0_[42] ),
        .R(line_data0));
  FDRE \line_data_reg[43] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_2_out__0[43]),
        .Q(\line_data_reg_n_0_[43] ),
        .R(line_data0));
  FDRE \line_data_reg[44] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_2_out__0[44]),
        .Q(\line_data_reg_n_0_[44] ),
        .R(line_data0));
  FDRE \line_data_reg[45] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_2_out__0[45]),
        .Q(\line_data_reg_n_0_[45] ),
        .R(line_data0));
  FDRE \line_data_reg[46] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_2_out__0[46]),
        .Q(\line_data_reg_n_0_[46] ),
        .R(line_data0));
  FDRE \line_data_reg[47] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_2_out__0[47]),
        .Q(\line_data_reg_n_0_[47] ),
        .R(line_data0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \line_data_reg[47]_i_12 
       (.CI(\line_data_reg[47]_i_22_n_0 ),
        .CO({\line_data_reg[47]_i_12_n_0 ,\line_data_reg[47]_i_12_n_1 ,\line_data_reg[47]_i_12_n_2 ,\line_data_reg[47]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\line_data_reg[47]_i_12_n_4 ,\line_data_reg[47]_i_12_n_5 ,\line_data_reg[47]_i_12_n_6 ,\line_data_reg[47]_i_12_n_7 }),
        .S({\line_data[47]_i_23_n_0 ,\line_data[47]_i_24_n_0 ,\line_data[47]_i_25_n_0 ,\line_data[47]_i_26_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \line_data_reg[47]_i_17 
       (.CI(\line_data_reg[47]_i_27_n_0 ),
        .CO({\line_data_reg[47]_i_17_n_0 ,\line_data_reg[47]_i_17_n_1 ,\line_data_reg[47]_i_17_n_2 ,\line_data_reg[47]_i_17_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_line_data_reg[47]_i_17_O_UNCONNECTED [3:0]),
        .S({\line_data[47]_i_28_n_0 ,\line_data[47]_i_29_n_0 ,\line_data[47]_i_30_n_0 ,\line_data[47]_i_31_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \line_data_reg[47]_i_2 
       (.CI(\line_data_reg[47]_i_4_n_0 ),
        .CO({\NLW_line_data_reg[47]_i_2_CO_UNCONNECTED [3],\line_data_reg[47]_i_2_n_1 ,\line_data_reg[47]_i_2_n_2 ,\line_data_reg[47]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\line_data_reg[47]_i_2_n_4 ,\line_data_reg[47]_i_2_n_5 ,\line_data_reg[47]_i_2_n_6 ,\line_data_reg[47]_i_2_n_7 }),
        .S({\line_data[47]_i_5_n_0 ,\line_data[47]_i_6_n_0 ,\line_data[47]_i_7_n_0 ,\line_data[47]_i_8_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \line_data_reg[47]_i_22 
       (.CI(\line_data_reg[47]_i_32_n_0 ),
        .CO({\line_data_reg[47]_i_22_n_0 ,\line_data_reg[47]_i_22_n_1 ,\line_data_reg[47]_i_22_n_2 ,\line_data_reg[47]_i_22_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\line_data_reg[47]_i_22_n_4 ,\line_data_reg[47]_i_22_n_5 ,\line_data_reg[47]_i_22_n_6 ,\line_data_reg[47]_i_22_n_7 }),
        .S({\line_data[47]_i_33_n_0 ,\line_data[47]_i_34_n_0 ,\line_data[47]_i_35_n_0 ,\line_data[47]_i_36_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \line_data_reg[47]_i_27 
       (.CI(1'b0),
        .CO({\line_data_reg[47]_i_27_n_0 ,\line_data_reg[47]_i_27_n_1 ,\line_data_reg[47]_i_27_n_2 ,\line_data_reg[47]_i_27_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\line_data[47]_i_37_n_0 }),
        .O(\NLW_line_data_reg[47]_i_27_O_UNCONNECTED [3:0]),
        .S({\line_data[47]_i_38_n_0 ,\line_data[47]_i_39_n_0 ,\line_data[47]_i_40_n_0 ,\line_data[47]_i_41_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \line_data_reg[47]_i_3 
       (.CI(\line_data_reg[47]_i_9_n_0 ),
        .CO({\NLW_line_data_reg[47]_i_3_CO_UNCONNECTED [3:2],line_we3,\line_data_reg[47]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_line_data_reg[47]_i_3_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\line_data[47]_i_10_n_0 ,\line_data[47]_i_11_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \line_data_reg[47]_i_32 
       (.CI(\line_data_reg[47]_i_42_n_0 ),
        .CO({\line_data_reg[47]_i_32_n_0 ,\line_data_reg[47]_i_32_n_1 ,\line_data_reg[47]_i_32_n_2 ,\line_data_reg[47]_i_32_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\line_data_reg[47]_i_32_n_4 ,\line_data_reg[47]_i_32_n_5 ,\line_data_reg[47]_i_32_n_6 ,\line_data_reg[47]_i_32_n_7 }),
        .S({\line_data[47]_i_43_n_0 ,\line_data[47]_i_44_n_0 ,\line_data[47]_i_45_n_0 ,\line_data[47]_i_46_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \line_data_reg[47]_i_4 
       (.CI(\line_data_reg[47]_i_12_n_0 ),
        .CO({\line_data_reg[47]_i_4_n_0 ,\line_data_reg[47]_i_4_n_1 ,\line_data_reg[47]_i_4_n_2 ,\line_data_reg[47]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\line_data_reg[47]_i_4_n_4 ,\line_data_reg[47]_i_4_n_5 ,\line_data_reg[47]_i_4_n_6 ,\line_data_reg[47]_i_4_n_7 }),
        .S({\line_data[47]_i_13_n_0 ,\line_data[47]_i_14_n_0 ,\line_data[47]_i_15_n_0 ,\line_data[47]_i_16_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \line_data_reg[47]_i_42 
       (.CI(row_buf_reg_r4_0_31_0_5_i_1_n_0),
        .CO({\line_data_reg[47]_i_42_n_0 ,\line_data_reg[47]_i_42_n_1 ,\line_data_reg[47]_i_42_n_2 ,\line_data_reg[47]_i_42_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\line_data_reg[47]_i_42_n_4 ,\line_data_reg[47]_i_42_n_5 ,\line_data_reg[47]_i_42_n_6 ,\line_data_reg[47]_i_42_n_7 }),
        .S({\line_data[47]_i_47_n_0 ,\line_data[47]_i_48_n_0 ,\line_data[47]_i_49_n_0 ,\line_data[47]_i_50_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \line_data_reg[47]_i_9 
       (.CI(\line_data_reg[47]_i_17_n_0 ),
        .CO({\line_data_reg[47]_i_9_n_0 ,\line_data_reg[47]_i_9_n_1 ,\line_data_reg[47]_i_9_n_2 ,\line_data_reg[47]_i_9_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_line_data_reg[47]_i_9_O_UNCONNECTED [3:0]),
        .S({\line_data[47]_i_18_n_0 ,\line_data[47]_i_19_n_0 ,\line_data[47]_i_20_n_0 ,\line_data[47]_i_21_n_0 }));
  FDRE \line_data_reg[48] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_2_out__0[48]),
        .Q(\line_data_reg_n_0_[48] ),
        .R(line_data0));
  FDRE \line_data_reg[49] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_2_out__0[49]),
        .Q(\line_data_reg_n_0_[49] ),
        .R(line_data0));
  FDRE \line_data_reg[4] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_2_out[4]),
        .Q(\line_data_reg_n_0_[4] ),
        .R(line_data0));
  FDRE \line_data_reg[50] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_2_out__0[50]),
        .Q(\line_data_reg_n_0_[50] ),
        .R(line_data0));
  FDRE \line_data_reg[51] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_2_out__0[51]),
        .Q(\line_data_reg_n_0_[51] ),
        .R(line_data0));
  FDRE \line_data_reg[52] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_2_out__0[52]),
        .Q(\line_data_reg_n_0_[52] ),
        .R(line_data0));
  FDRE \line_data_reg[53] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_2_out__0[53]),
        .Q(\line_data_reg_n_0_[53] ),
        .R(line_data0));
  FDRE \line_data_reg[54] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_2_out__0[54]),
        .Q(\line_data_reg_n_0_[54] ),
        .R(line_data0));
  FDRE \line_data_reg[55] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_2_out__0[55]),
        .Q(\line_data_reg_n_0_[55] ),
        .R(line_data0));
  FDRE \line_data_reg[56] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_2_out__0[56]),
        .Q(\line_data_reg_n_0_[56] ),
        .R(line_data0));
  FDRE \line_data_reg[57] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_2_out__0[57]),
        .Q(\line_data_reg_n_0_[57] ),
        .R(line_data0));
  FDRE \line_data_reg[58] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_2_out__0[58]),
        .Q(\line_data_reg_n_0_[58] ),
        .R(line_data0));
  FDRE \line_data_reg[59] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_2_out__0[59]),
        .Q(\line_data_reg_n_0_[59] ),
        .R(line_data0));
  FDRE \line_data_reg[5] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_2_out[5]),
        .Q(\line_data_reg_n_0_[5] ),
        .R(line_data0));
  FDRE \line_data_reg[60] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_2_out__0[60]),
        .Q(\line_data_reg_n_0_[60] ),
        .R(line_data0));
  FDRE \line_data_reg[61] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_2_out__0[61]),
        .Q(\line_data_reg_n_0_[61] ),
        .R(line_data0));
  FDRE \line_data_reg[62] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_2_out__0[62]),
        .Q(\line_data_reg_n_0_[62] ),
        .R(line_data0));
  FDRE \line_data_reg[63] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_2_out__0[63]),
        .Q(\line_data_reg_n_0_[63] ),
        .R(line_data0));
  FDRE \line_data_reg[6] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_2_out[6]),
        .Q(\line_data_reg_n_0_[6] ),
        .R(line_data0));
  FDRE \line_data_reg[7] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_2_out[7]),
        .Q(\line_data_reg_n_0_[7] ),
        .R(line_data0));
  FDRE \line_data_reg[8] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_2_out[8]),
        .Q(\line_data_reg_n_0_[8] ),
        .R(line_data0));
  FDRE \line_data_reg[9] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_2_out[9]),
        .Q(\line_data_reg_n_0_[9] ),
        .R(line_data0));
  LUT5 #(
    .INIT(32'hF151F000)) 
    line_done_i_1__1
       (.I0(att_pos0),
        .I1(line_done_i_2_n_0),
        .I2(state[9]),
        .I3(\FSM_onehot_state[1]_i_2_n_0 ),
        .I4(s0_done),
        .O(line_done_i_1__1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    line_done_i_2
       (.I0(row_buf),
        .I1(line_done_i_3_n_0),
        .I2(spr_cnt),
        .I3(line_data0),
        .I4(pal_issue0),
        .I5(line_data),
        .O(line_done_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    line_done_i_3
       (.I0(state[3]),
        .I1(state[4]),
        .I2(state[1]),
        .I3(line_off),
        .O(line_done_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    line_done_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(line_done_i_1__1_n_0),
        .Q(s0_done),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \line_off[0]_i_1 
       (.I0(spr_att_vdp_dout[0]),
        .I1(line_off),
        .I2(line_off__0[0]),
        .O(\line_off[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \line_off[1]_i_1 
       (.I0(spr_att_vdp_dout[1]),
        .I1(line_off),
        .I2(line_off__0[1]),
        .O(\line_off[1]_i_1_n_0 ));
  FDRE \line_off_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\line_off[0]_i_1_n_0 ),
        .Q(line_off__0[0]),
        .R(1'b0));
  FDRE \line_off_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\line_off[1]_i_1_n_0 ),
        .Q(line_off__0[1]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h8F88)) 
    \line_pos[0]_i_1 
       (.I0(spr_att_vdp_dout[2]),
        .I1(line_off),
        .I2(\line_pos_reg_n_0_[0] ),
        .I3(line_data),
        .O(\line_pos[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8FF88888)) 
    \line_pos[1]_i_1 
       (.I0(spr_att_vdp_dout[3]),
        .I1(line_off),
        .I2(\line_pos_reg_n_0_[0] ),
        .I3(\line_pos_reg_n_0_[1] ),
        .I4(line_data),
        .O(\line_pos[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8FFFF88888888888)) 
    \line_pos[2]_i_1 
       (.I0(spr_att_vdp_dout[4]),
        .I1(line_off),
        .I2(\line_pos_reg_n_0_[0] ),
        .I3(\line_pos_reg_n_0_[1] ),
        .I4(\line_pos_reg_n_0_[2] ),
        .I5(line_data),
        .O(\line_pos[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h8FF88888)) 
    \line_pos[3]_i_1 
       (.I0(spr_att_vdp_dout[5]),
        .I1(line_off),
        .I2(\line_pos[3]_i_2_n_0 ),
        .I3(\line_pos_reg_n_0_[3] ),
        .I4(line_data),
        .O(\line_pos[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \line_pos[3]_i_2 
       (.I0(\line_pos_reg_n_0_[2] ),
        .I1(\line_pos_reg_n_0_[0] ),
        .I2(\line_pos_reg_n_0_[1] ),
        .O(\line_pos[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8FF88888)) 
    \line_pos[4]_i_1 
       (.I0(spr_att_vdp_dout[6]),
        .I1(line_off),
        .I2(\line_pos[4]_i_2_n_0 ),
        .I3(\line_pos_reg_n_0_[4] ),
        .I4(line_data),
        .O(\line_pos[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \line_pos[4]_i_2 
       (.I0(\line_pos_reg_n_0_[3] ),
        .I1(\line_pos_reg_n_0_[1] ),
        .I2(\line_pos_reg_n_0_[0] ),
        .I3(\line_pos_reg_n_0_[2] ),
        .O(\line_pos[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8FF88888)) 
    \line_pos[5]_i_1 
       (.I0(spr_att_vdp_dout[7]),
        .I1(line_off),
        .I2(\line_pos[5]_i_2_n_0 ),
        .I3(\line_pos_reg_n_0_[5] ),
        .I4(line_data),
        .O(\line_pos[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \line_pos[5]_i_2 
       (.I0(\line_pos_reg_n_0_[4] ),
        .I1(\line_pos_reg_n_0_[2] ),
        .I2(\line_pos_reg_n_0_[0] ),
        .I3(\line_pos_reg_n_0_[1] ),
        .I4(\line_pos_reg_n_0_[3] ),
        .O(\line_pos[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8FF88888)) 
    \line_pos[6]_i_1 
       (.I0(spr_att_vdp_dout[8]),
        .I1(line_off),
        .I2(\line_pos[7]_i_3_n_0 ),
        .I3(\line_pos_reg_n_0_[6] ),
        .I4(line_data),
        .O(\line_pos[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \line_pos[7]_i_1 
       (.I0(line_off),
        .I1(in12),
        .I2(line_data),
        .O(line_pos));
  LUT6 #(
    .INIT(64'h8FFFF88888888888)) 
    \line_pos[7]_i_2 
       (.I0(spr_att_vdp_dout[9]),
        .I1(line_off),
        .I2(\line_pos[7]_i_3_n_0 ),
        .I3(\line_pos_reg_n_0_[6] ),
        .I4(\line_pos_reg_n_0_[7] ),
        .I5(line_data),
        .O(\line_pos[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \line_pos[7]_i_3 
       (.I0(\line_pos_reg_n_0_[5] ),
        .I1(\line_pos_reg_n_0_[3] ),
        .I2(\line_pos_reg_n_0_[1] ),
        .I3(\line_pos_reg_n_0_[0] ),
        .I4(\line_pos_reg_n_0_[2] ),
        .I5(\line_pos_reg_n_0_[4] ),
        .O(\line_pos[7]_i_3_n_0 ));
  FDRE \line_pos_reg[0] 
       (.C(s_axi_aclk),
        .CE(line_pos),
        .D(\line_pos[0]_i_1_n_0 ),
        .Q(\line_pos_reg_n_0_[0] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hF888)) 
    \line_pos_reg[0]_i_1 
       (.I0(\line_pos_reg_n_0_[0] ),
        .I1(line_data),
        .I2(\clear_pos_reg_n_0_[0] ),
        .I3(line_data0),
        .O(\line_pos_reg[0]_i_1_n_0 ));
  FDRE \line_pos_reg[1] 
       (.C(s_axi_aclk),
        .CE(line_pos),
        .D(\line_pos[1]_i_1_n_0 ),
        .Q(\line_pos_reg_n_0_[1] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hF888)) 
    \line_pos_reg[1]_i_1 
       (.I0(\line_pos_reg_n_0_[1] ),
        .I1(line_data),
        .I2(\clear_pos_reg_n_0_[1] ),
        .I3(line_data0),
        .O(\line_pos_reg[1]_i_1_n_0 ));
  FDRE \line_pos_reg[2] 
       (.C(s_axi_aclk),
        .CE(line_pos),
        .D(\line_pos[2]_i_1_n_0 ),
        .Q(\line_pos_reg_n_0_[2] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \line_pos_reg[2]_i_1 
       (.I0(\line_pos_reg_n_0_[2] ),
        .I1(line_data),
        .I2(\clear_pos_reg_n_0_[2] ),
        .I3(line_data0),
        .O(\line_pos_reg[2]_i_1_n_0 ));
  FDRE \line_pos_reg[3] 
       (.C(s_axi_aclk),
        .CE(line_pos),
        .D(\line_pos[3]_i_1_n_0 ),
        .Q(\line_pos_reg_n_0_[3] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hF888)) 
    \line_pos_reg[3]_i_1 
       (.I0(\line_pos_reg_n_0_[3] ),
        .I1(line_data),
        .I2(\clear_pos_reg_n_0_[3] ),
        .I3(line_data0),
        .O(\line_pos_reg[3]_i_1_n_0 ));
  FDRE \line_pos_reg[4] 
       (.C(s_axi_aclk),
        .CE(line_pos),
        .D(\line_pos[4]_i_1_n_0 ),
        .Q(\line_pos_reg_n_0_[4] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hF888)) 
    \line_pos_reg[4]_i_1 
       (.I0(\line_pos_reg_n_0_[4] ),
        .I1(line_data),
        .I2(\clear_pos_reg_n_0_[4] ),
        .I3(line_data0),
        .O(\line_pos_reg[4]_i_1_n_0 ));
  FDRE \line_pos_reg[5] 
       (.C(s_axi_aclk),
        .CE(line_pos),
        .D(\line_pos[5]_i_1_n_0 ),
        .Q(\line_pos_reg_n_0_[5] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \line_pos_reg[5]_i_1 
       (.I0(\line_pos_reg_n_0_[5] ),
        .I1(line_data),
        .I2(\clear_pos_reg_n_0_[5] ),
        .I3(line_data0),
        .O(\line_pos_reg[5]_i_1_n_0 ));
  FDRE \line_pos_reg[6] 
       (.C(s_axi_aclk),
        .CE(line_pos),
        .D(\line_pos[6]_i_1_n_0 ),
        .Q(\line_pos_reg_n_0_[6] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hF888)) 
    \line_pos_reg[6]_i_1 
       (.I0(\line_pos_reg_n_0_[6] ),
        .I1(line_data),
        .I2(\clear_pos_reg_n_0_[6] ),
        .I3(line_data0),
        .O(\line_pos_reg[6]_i_1_n_0 ));
  FDRE \line_pos_reg[7] 
       (.C(s_axi_aclk),
        .CE(line_pos),
        .D(\line_pos[7]_i_2_n_0 ),
        .Q(\line_pos_reg_n_0_[7] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    \line_pos_reg[7]_i_1 
       (.I0(line_data),
        .I1(line_data0),
        .O(line_pos_reg));
  LUT4 #(
    .INIT(16'hF888)) 
    \line_pos_reg[7]_i_2 
       (.I0(\line_pos_reg_n_0_[7] ),
        .I1(line_data),
        .I2(\clear_pos_reg_n_0_[7] ),
        .I3(line_data0),
        .O(\line_pos_reg[7]_i_2_n_0 ));
  FDRE \line_pos_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(line_pos_reg),
        .D(\line_pos_reg[0]_i_1_n_0 ),
        .Q(\line_pos_reg_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \line_pos_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(line_pos_reg),
        .D(\line_pos_reg[1]_i_1_n_0 ),
        .Q(\line_pos_reg_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \line_pos_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(line_pos_reg),
        .D(\line_pos_reg[2]_i_1_n_0 ),
        .Q(\line_pos_reg_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \line_pos_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(line_pos_reg),
        .D(\line_pos_reg[3]_i_1_n_0 ),
        .Q(\line_pos_reg_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \line_pos_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(line_pos_reg),
        .D(\line_pos_reg[4]_i_1_n_0 ),
        .Q(\line_pos_reg_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \line_pos_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(line_pos_reg),
        .D(\line_pos_reg[5]_i_1_n_0 ),
        .Q(\line_pos_reg_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \line_pos_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(line_pos_reg),
        .D(\line_pos_reg[6]_i_1_n_0 ),
        .Q(\line_pos_reg_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \line_pos_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(line_pos_reg),
        .D(\line_pos_reg[7]_i_2_n_0 ),
        .Q(\line_pos_reg_reg_n_0_[7] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \line_we[1]_i_1 
       (.I0(line_data),
        .I1(line_we0),
        .O(\line_we[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAAAAA8)) 
    \line_we[1]_i_2 
       (.I0(line_we22_in),
        .I1(line_we2[15]),
        .I2(line_we2[14]),
        .I3(line_we2[12]),
        .I4(line_we2[13]),
        .I5(\line_data_reg[15]_i_2_n_5 ),
        .O(line_we0));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \line_we[3]_i_1 
       (.I0(line_data),
        .I1(line_we18_out),
        .O(\line_we[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAAAAA8)) 
    \line_we[3]_i_2 
       (.I0(line_we35_in),
        .I1(line_we33_out[15]),
        .I2(line_we33_out[14]),
        .I3(line_we33_out[12]),
        .I4(line_we33_out[13]),
        .I5(\line_data_reg[31]_i_2_n_5 ),
        .O(line_we18_out));
  LUT2 #(
    .INIT(4'h8)) 
    \line_we[5]_i_1 
       (.I0(line_data),
        .I1(line_we1),
        .O(\line_we[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAAAAA8)) 
    \line_we[5]_i_2 
       (.I0(line_we3),
        .I1(line_we36_out[15]),
        .I2(line_we36_out[14]),
        .I3(line_we36_out[12]),
        .I4(line_we36_out[13]),
        .I5(\line_data_reg[47]_i_2_n_4 ),
        .O(line_we1));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \line_we[7]_i_1 
       (.I0(line_data),
        .I1(line_data0),
        .I2(att_pos0),
        .I3(state[1]),
        .I4(spr_cnt),
        .I5(\line_we[7]_i_3_n_0 ),
        .O(line_we));
  LUT2 #(
    .INIT(4'h1)) 
    \line_we[7]_i_10 
       (.I0(\line_we_reg[7]_i_20_n_4 ),
        .I1(\line_we_reg[7]_i_14_n_7 ),
        .O(\line_we[7]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \line_we[7]_i_11 
       (.I0(\line_we_reg[7]_i_20_n_6 ),
        .I1(\line_we_reg[7]_i_20_n_5 ),
        .O(\line_we[7]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \line_we[7]_i_12 
       (.I0(\line_we_reg[7]_i_21_n_4 ),
        .I1(\line_we_reg[7]_i_20_n_7 ),
        .O(\line_we[7]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \line_we[7]_i_16 
       (.I0(\line_we_reg[7]_i_21_n_6 ),
        .I1(\line_we_reg[7]_i_21_n_5 ),
        .O(\line_we[7]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \line_we[7]_i_17 
       (.I0(\line_we_reg[7]_i_34_n_4 ),
        .I1(\line_we_reg[7]_i_21_n_7 ),
        .O(\line_we[7]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \line_we[7]_i_18 
       (.I0(\line_we_reg[7]_i_34_n_6 ),
        .I1(\line_we_reg[7]_i_34_n_5 ),
        .O(\line_we[7]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \line_we[7]_i_19 
       (.I0(\line_we_reg[7]_i_35_n_4 ),
        .I1(\line_we_reg[7]_i_34_n_7 ),
        .O(\line_we[7]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA800000000)) 
    \line_we[7]_i_2 
       (.I0(line_data),
        .I1(row_buf_reg_r3_0_31_12_15_n_2),
        .I2(row_buf_reg_r3_0_31_12_15_n_3),
        .I3(row_buf_reg_r3_0_31_12_15_n_1),
        .I4(row_buf_reg_r3_0_31_12_15_n_0),
        .I5(line_we210_in),
        .O(\line_we[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_we[7]_i_22 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_we[7]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_we[7]_i_23 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_we[7]_i_23_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_we[7]_i_24 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_we[7]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_we[7]_i_25 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_we[7]_i_25_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_we[7]_i_26 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_we[7]_i_26_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_we[7]_i_27 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_we[7]_i_27_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_we[7]_i_28 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_we[7]_i_28_n_0 ));
  LUT3 #(
    .INIT(8'h31)) 
    \line_we[7]_i_29 
       (.I0(row_buf_reg_r3_0_31_0_5_i_1_n_4),
        .I1(\line_we_reg[7]_i_44_n_7 ),
        .I2(spr_att_vdp_dout[52]),
        .O(\line_we[7]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \line_we[7]_i_3 
       (.I0(state[9]),
        .I1(row_buf),
        .I2(state[3]),
        .I3(line_off),
        .I4(pal_issue0),
        .I5(state[4]),
        .O(\line_we[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \line_we[7]_i_30 
       (.I0(\line_we_reg[7]_i_35_n_6 ),
        .I1(\line_we_reg[7]_i_35_n_5 ),
        .O(\line_we[7]_i_30_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \line_we[7]_i_31 
       (.I0(\line_we_reg[7]_i_44_n_4 ),
        .I1(\line_we_reg[7]_i_35_n_7 ),
        .O(\line_we[7]_i_31_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \line_we[7]_i_32 
       (.I0(\line_we_reg[7]_i_44_n_6 ),
        .I1(\line_we_reg[7]_i_44_n_5 ),
        .O(\line_we[7]_i_32_n_0 ));
  LUT3 #(
    .INIT(8'h42)) 
    \line_we[7]_i_33 
       (.I0(row_buf_reg_r3_0_31_0_5_i_1_n_4),
        .I1(spr_att_vdp_dout[52]),
        .I2(\line_we_reg[7]_i_44_n_7 ),
        .O(\line_we[7]_i_33_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_we[7]_i_36 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_we[7]_i_36_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_we[7]_i_37 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_we[7]_i_37_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_we[7]_i_38 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_we[7]_i_38_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_we[7]_i_39 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_we[7]_i_39_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_we[7]_i_40 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_we[7]_i_40_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_we[7]_i_41 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_we[7]_i_41_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_we[7]_i_42 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_we[7]_i_42_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_we[7]_i_43 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_we[7]_i_43_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_we[7]_i_45 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_we[7]_i_45_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_we[7]_i_46 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_we[7]_i_46_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_we[7]_i_47 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_we[7]_i_47_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_we[7]_i_48 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_we[7]_i_48_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_we[7]_i_49 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_we[7]_i_49_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_we[7]_i_50 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_we[7]_i_50_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_we[7]_i_51 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_we[7]_i_51_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_we[7]_i_52 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_we[7]_i_52_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_we[7]_i_53 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_we[7]_i_53_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_we[7]_i_54 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_we[7]_i_54_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_we[7]_i_55 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(\line_we[7]_i_55_n_0 ));
  LUT3 #(
    .INIT(8'h56)) 
    \line_we[7]_i_56 
       (.I0(\line_word_reg_n_0_[3] ),
        .I1(line_off__0[0]),
        .I2(line_off__0[1]),
        .O(\line_we[7]_i_56_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \line_we[7]_i_6 
       (.I0(\line_we_reg[7]_i_13_n_6 ),
        .I1(\line_we_reg[7]_i_13_n_5 ),
        .O(\line_we[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \line_we[7]_i_7 
       (.I0(\line_we_reg[7]_i_14_n_4 ),
        .I1(\line_we_reg[7]_i_13_n_7 ),
        .O(\line_we[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \line_we[7]_i_9 
       (.I0(\line_we_reg[7]_i_14_n_6 ),
        .I1(\line_we_reg[7]_i_14_n_5 ),
        .O(\line_we[7]_i_9_n_0 ));
  FDSE \line_we_reg[1] 
       (.C(s_axi_aclk),
        .CE(line_we),
        .D(\line_we[1]_i_1_n_0 ),
        .Q(\line_we_reg_n_0_[1] ),
        .S(line_data0));
  FDSE \line_we_reg[3] 
       (.C(s_axi_aclk),
        .CE(line_we),
        .D(\line_we[3]_i_1_n_0 ),
        .Q(\line_we_reg_n_0_[3] ),
        .S(line_data0));
  FDSE \line_we_reg[5] 
       (.C(s_axi_aclk),
        .CE(line_we),
        .D(\line_we[5]_i_1_n_0 ),
        .Q(\line_we_reg_n_0_[5] ),
        .S(line_data0));
  FDSE \line_we_reg[7] 
       (.C(s_axi_aclk),
        .CE(line_we),
        .D(\line_we[7]_i_2_n_0 ),
        .Q(\line_we_reg_n_0_[7] ),
        .S(line_data0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \line_we_reg[7]_i_13 
       (.CI(\line_we_reg[7]_i_14_n_0 ),
        .CO({\NLW_line_we_reg[7]_i_13_CO_UNCONNECTED [3:2],\line_we_reg[7]_i_13_n_2 ,\line_we_reg[7]_i_13_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_line_we_reg[7]_i_13_O_UNCONNECTED [3],\line_we_reg[7]_i_13_n_5 ,\line_we_reg[7]_i_13_n_6 ,\line_we_reg[7]_i_13_n_7 }),
        .S({1'b0,\line_we[7]_i_22_n_0 ,\line_we[7]_i_23_n_0 ,\line_we[7]_i_24_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \line_we_reg[7]_i_14 
       (.CI(\line_we_reg[7]_i_20_n_0 ),
        .CO({\line_we_reg[7]_i_14_n_0 ,\line_we_reg[7]_i_14_n_1 ,\line_we_reg[7]_i_14_n_2 ,\line_we_reg[7]_i_14_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\line_we_reg[7]_i_14_n_4 ,\line_we_reg[7]_i_14_n_5 ,\line_we_reg[7]_i_14_n_6 ,\line_we_reg[7]_i_14_n_7 }),
        .S({\line_we[7]_i_25_n_0 ,\line_we[7]_i_26_n_0 ,\line_we[7]_i_27_n_0 ,\line_we[7]_i_28_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \line_we_reg[7]_i_15 
       (.CI(1'b0),
        .CO({\line_we_reg[7]_i_15_n_0 ,\line_we_reg[7]_i_15_n_1 ,\line_we_reg[7]_i_15_n_2 ,\line_we_reg[7]_i_15_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\line_we[7]_i_29_n_0 }),
        .O(\NLW_line_we_reg[7]_i_15_O_UNCONNECTED [3:0]),
        .S({\line_we[7]_i_30_n_0 ,\line_we[7]_i_31_n_0 ,\line_we[7]_i_32_n_0 ,\line_we[7]_i_33_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \line_we_reg[7]_i_20 
       (.CI(\line_we_reg[7]_i_21_n_0 ),
        .CO({\line_we_reg[7]_i_20_n_0 ,\line_we_reg[7]_i_20_n_1 ,\line_we_reg[7]_i_20_n_2 ,\line_we_reg[7]_i_20_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\line_we_reg[7]_i_20_n_4 ,\line_we_reg[7]_i_20_n_5 ,\line_we_reg[7]_i_20_n_6 ,\line_we_reg[7]_i_20_n_7 }),
        .S({\line_we[7]_i_36_n_0 ,\line_we[7]_i_37_n_0 ,\line_we[7]_i_38_n_0 ,\line_we[7]_i_39_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \line_we_reg[7]_i_21 
       (.CI(\line_we_reg[7]_i_34_n_0 ),
        .CO({\line_we_reg[7]_i_21_n_0 ,\line_we_reg[7]_i_21_n_1 ,\line_we_reg[7]_i_21_n_2 ,\line_we_reg[7]_i_21_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\line_we_reg[7]_i_21_n_4 ,\line_we_reg[7]_i_21_n_5 ,\line_we_reg[7]_i_21_n_6 ,\line_we_reg[7]_i_21_n_7 }),
        .S({\line_we[7]_i_40_n_0 ,\line_we[7]_i_41_n_0 ,\line_we[7]_i_42_n_0 ,\line_we[7]_i_43_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \line_we_reg[7]_i_34 
       (.CI(\line_we_reg[7]_i_35_n_0 ),
        .CO({\line_we_reg[7]_i_34_n_0 ,\line_we_reg[7]_i_34_n_1 ,\line_we_reg[7]_i_34_n_2 ,\line_we_reg[7]_i_34_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\line_we_reg[7]_i_34_n_4 ,\line_we_reg[7]_i_34_n_5 ,\line_we_reg[7]_i_34_n_6 ,\line_we_reg[7]_i_34_n_7 }),
        .S({\line_we[7]_i_45_n_0 ,\line_we[7]_i_46_n_0 ,\line_we[7]_i_47_n_0 ,\line_we[7]_i_48_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \line_we_reg[7]_i_35 
       (.CI(\line_we_reg[7]_i_44_n_0 ),
        .CO({\line_we_reg[7]_i_35_n_0 ,\line_we_reg[7]_i_35_n_1 ,\line_we_reg[7]_i_35_n_2 ,\line_we_reg[7]_i_35_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\line_we_reg[7]_i_35_n_4 ,\line_we_reg[7]_i_35_n_5 ,\line_we_reg[7]_i_35_n_6 ,\line_we_reg[7]_i_35_n_7 }),
        .S({\line_we[7]_i_49_n_0 ,\line_we[7]_i_50_n_0 ,\line_we[7]_i_51_n_0 ,\line_we[7]_i_52_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \line_we_reg[7]_i_4 
       (.CI(\line_we_reg[7]_i_5_n_0 ),
        .CO({\NLW_line_we_reg[7]_i_4_CO_UNCONNECTED [3:2],line_we210_in,\line_we_reg[7]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_line_we_reg[7]_i_4_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\line_we[7]_i_6_n_0 ,\line_we[7]_i_7_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \line_we_reg[7]_i_44 
       (.CI(row_buf_reg_r3_0_31_0_5_i_1_n_0),
        .CO({\line_we_reg[7]_i_44_n_0 ,\line_we_reg[7]_i_44_n_1 ,\line_we_reg[7]_i_44_n_2 ,\line_we_reg[7]_i_44_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\line_word_reg_n_0_[3] }),
        .O({\line_we_reg[7]_i_44_n_4 ,\line_we_reg[7]_i_44_n_5 ,\line_we_reg[7]_i_44_n_6 ,\line_we_reg[7]_i_44_n_7 }),
        .S({\line_we[7]_i_53_n_0 ,\line_we[7]_i_54_n_0 ,\line_we[7]_i_55_n_0 ,\line_we[7]_i_56_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \line_we_reg[7]_i_5 
       (.CI(\line_we_reg[7]_i_8_n_0 ),
        .CO({\line_we_reg[7]_i_5_n_0 ,\line_we_reg[7]_i_5_n_1 ,\line_we_reg[7]_i_5_n_2 ,\line_we_reg[7]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_line_we_reg[7]_i_5_O_UNCONNECTED [3:0]),
        .S({\line_we[7]_i_9_n_0 ,\line_we[7]_i_10_n_0 ,\line_we[7]_i_11_n_0 ,\line_we[7]_i_12_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \line_we_reg[7]_i_8 
       (.CI(\line_we_reg[7]_i_15_n_0 ),
        .CO({\line_we_reg[7]_i_8_n_0 ,\line_we_reg[7]_i_8_n_1 ,\line_we_reg[7]_i_8_n_2 ,\line_we_reg[7]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_line_we_reg[7]_i_8_O_UNCONNECTED [3:0]),
        .S({\line_we[7]_i_16_n_0 ,\line_we[7]_i_17_n_0 ,\line_we[7]_i_18_n_0 ,\line_we[7]_i_19_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \line_word[0]_i_1 
       (.I0(line_data),
        .I1(\line_word_reg_n_0_[0] ),
        .O(\line_word[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \line_word[1]_i_1 
       (.I0(line_data),
        .I1(\line_word_reg_n_0_[1] ),
        .I2(\line_word_reg_n_0_[0] ),
        .O(\line_word[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \line_word[2]_i_1 
       (.I0(line_data),
        .I1(\line_word_reg_n_0_[2] ),
        .I2(\line_word_reg_n_0_[1] ),
        .I3(\line_word_reg_n_0_[0] ),
        .O(\line_word[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \line_word[3]_i_1 
       (.I0(in12),
        .I1(line_data),
        .I2(\line_word[3]_i_4_n_0 ),
        .O(line_word));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \line_word[3]_i_2 
       (.I0(line_data),
        .I1(\line_word_reg_n_0_[3] ),
        .I2(\line_word_reg_n_0_[2] ),
        .I3(\line_word_reg_n_0_[0] ),
        .I4(\line_word_reg_n_0_[1] ),
        .O(\line_word[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFBBBBBBBB2222222)) 
    \line_word[3]_i_3 
       (.I0(\line_word[3]_i_5_n_0 ),
        .I1(spr_att_vdp_dout[52]),
        .I2(\line_word_reg_n_0_[2] ),
        .I3(\line_word_reg_n_0_[0] ),
        .I4(\line_word_reg_n_0_[1] ),
        .I5(\line_word_reg_n_0_[3] ),
        .O(in12));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \line_word[3]_i_4 
       (.I0(row_buf),
        .I1(pal_data_valid0),
        .I2(pal_data_valid_reg_n_0),
        .O(\line_word[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h1FFFFFFF0FFF1000)) 
    \line_word[3]_i_5 
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .I2(\line_word_reg_n_0_[0] ),
        .I3(\line_word_reg_n_0_[1] ),
        .I4(\line_word_reg_n_0_[2] ),
        .I5(spr_att_vdp_dout[52]),
        .O(\line_word[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8000008000000000)) 
    \line_word[3]_i_6 
       (.I0(pal_capture[1]),
        .I1(pal_capture[2]),
        .I2(pal_capture[0]),
        .I3(spr_att_vdp_dout[52]),
        .I4(pal_capture[4]),
        .I5(pal_capture[3]),
        .O(pal_data_valid0));
  FDRE \line_word_reg[0] 
       (.C(s_axi_aclk),
        .CE(line_word),
        .D(\line_word[0]_i_1_n_0 ),
        .Q(\line_word_reg_n_0_[0] ),
        .R(line_off));
  FDRE \line_word_reg[1] 
       (.C(s_axi_aclk),
        .CE(line_word),
        .D(\line_word[1]_i_1_n_0 ),
        .Q(\line_word_reg_n_0_[1] ),
        .R(line_off));
  FDRE \line_word_reg[2] 
       (.C(s_axi_aclk),
        .CE(line_word),
        .D(\line_word[2]_i_1_n_0 ),
        .Q(\line_word_reg_n_0_[2] ),
        .R(line_off));
  FDRE \line_word_reg[3] 
       (.C(s_axi_aclk),
        .CE(line_word),
        .D(\line_word[3]_i_2_n_0 ),
        .Q(\line_word_reg_n_0_[3] ),
        .R(line_off));
  LUT5 #(
    .INIT(32'hAAAAAAA6)) 
    \map_r_addr[13]_i_2 
       (.I0(\map_r_addr[13]_i_3 [8]),
        .I1(\v_cnt_reg[2] ),
        .I2(\map_r_addr[13]_i_3 [5]),
        .I3(\map_r_addr[13]_i_3 [7]),
        .I4(\map_r_addr[13]_i_3 [6]),
        .O(\v_cnt_reg[9] [0]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \map_r_addr[13]_i_5 
       (.I0(\map_r_addr[13]_i_3 [2]),
        .I1(\map_r_addr[13]_i_3 [1]),
        .I2(\map_r_addr[13]_i_3 [4]),
        .I3(\map_r_addr[13]_i_3 [3]),
        .O(\v_cnt_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pal_capture[0]_i_1 
       (.I0(row_buf),
        .I1(\pal_issue_reg_n_0_[0] ),
        .O(pal_capture__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pal_capture[1]_i_1 
       (.I0(row_buf),
        .I1(\pal_issue_reg_n_0_[1] ),
        .O(pal_capture__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pal_capture[2]_i_1 
       (.I0(row_buf),
        .I1(\pal_issue_reg_n_0_[2] ),
        .O(pal_capture__0[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \pal_capture[3]_i_1 
       (.I0(row_buf),
        .I1(\pal_issue_reg_n_0_[3] ),
        .O(pal_capture__0[3]));
  LUT5 #(
    .INIT(32'h0FAB00AA)) 
    \pal_capture[4]_i_1 
       (.I0(state[3]),
        .I1(\pal_issue_reg_n_0_[4] ),
        .I2(\pal_issue_reg_n_0_[5] ),
        .I3(spr_att_vdp_dout[52]),
        .I4(row_buf),
        .O(\pal_capture[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \pal_capture[4]_i_2 
       (.I0(row_buf),
        .I1(\pal_issue_reg_n_0_[4] ),
        .O(pal_capture__0[4]));
  FDRE #(
    .INIT(1'b0)) 
    \pal_capture_reg[0] 
       (.C(s_axi_aclk),
        .CE(\pal_capture[4]_i_1_n_0 ),
        .D(pal_capture__0[0]),
        .Q(pal_capture[0]),
        .R(pal_issue0));
  FDRE #(
    .INIT(1'b0)) 
    \pal_capture_reg[1] 
       (.C(s_axi_aclk),
        .CE(\pal_capture[4]_i_1_n_0 ),
        .D(pal_capture__0[1]),
        .Q(pal_capture[1]),
        .R(pal_issue0));
  FDRE #(
    .INIT(1'b0)) 
    \pal_capture_reg[2] 
       (.C(s_axi_aclk),
        .CE(\pal_capture[4]_i_1_n_0 ),
        .D(pal_capture__0[2]),
        .Q(pal_capture[2]),
        .R(pal_issue0));
  FDRE #(
    .INIT(1'b0)) 
    \pal_capture_reg[3] 
       (.C(s_axi_aclk),
        .CE(\pal_capture[4]_i_1_n_0 ),
        .D(pal_capture__0[3]),
        .Q(pal_capture[3]),
        .R(pal_issue0));
  FDRE #(
    .INIT(1'b0)) 
    \pal_capture_reg[4] 
       (.C(s_axi_aclk),
        .CE(\pal_capture[4]_i_1_n_0 ),
        .D(pal_capture__0[4]),
        .Q(pal_capture[4]),
        .R(pal_issue0));
  LUT6 #(
    .INIT(64'h8888888F88888880)) 
    pal_data_valid_i_1
       (.I0(row_buf),
        .I1(pal_data_valid_i_2_n_0),
        .I2(att_pos0),
        .I3(pal_issue0),
        .I4(pal_data_valid_i_3_n_0),
        .I5(pal_data_valid_reg_n_0),
        .O(pal_data_valid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h31)) 
    pal_data_valid_i_2
       (.I0(\pal_issue_reg_n_0_[4] ),
        .I1(\pal_issue_reg_n_0_[5] ),
        .I2(spr_att_vdp_dout[52]),
        .O(pal_data_valid_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFF2E2F22222222)) 
    pal_data_valid_i_3
       (.I0(state[3]),
        .I1(spr_att_vdp_dout[52]),
        .I2(\pal_issue_reg_n_0_[5] ),
        .I3(\pal_issue_reg_n_0_[4] ),
        .I4(pal_data_valid_i_4_n_0),
        .I5(row_buf),
        .O(pal_data_valid_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'h8)) 
    pal_data_valid_i_4
       (.I0(pal_data_valid_reg_n_0),
        .I1(pal_data_valid0),
        .O(pal_data_valid_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    pal_data_valid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(pal_data_valid_i_1_n_0),
        .Q(pal_data_valid_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \pal_issue[0]_i_1 
       (.I0(row_buf),
        .I1(\pal_issue_reg_n_0_[0] ),
        .O(\pal_issue[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \pal_issue[1]_i_1 
       (.I0(row_buf),
        .I1(\pal_issue_reg_n_0_[1] ),
        .I2(\pal_issue_reg_n_0_[0] ),
        .O(pal_issue[1]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \pal_issue[2]_i_1 
       (.I0(row_buf),
        .I1(\pal_issue_reg_n_0_[2] ),
        .I2(\pal_issue_reg_n_0_[1] ),
        .I3(\pal_issue_reg_n_0_[0] ),
        .O(pal_issue[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \pal_issue[3]_i_1 
       (.I0(row_buf),
        .I1(\pal_issue_reg_n_0_[3] ),
        .I2(\pal_issue_reg_n_0_[2] ),
        .I3(\pal_issue_reg_n_0_[0] ),
        .I4(\pal_issue_reg_n_0_[1] ),
        .O(pal_issue[3]));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \pal_issue[4]_i_1 
       (.I0(row_buf),
        .I1(\pal_issue_reg_n_0_[4] ),
        .I2(\pal_issue_reg_n_0_[3] ),
        .I3(\pal_issue_reg_n_0_[1] ),
        .I4(\pal_issue_reg_n_0_[0] ),
        .I5(\pal_issue_reg_n_0_[2] ),
        .O(pal_issue[4]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \pal_issue[5]_i_1 
       (.I0(row_buf),
        .I1(\pal_issue_reg_n_0_[5] ),
        .I2(\pal_issue_reg_n_0_[4] ),
        .I3(\pal_issue[5]_i_2_n_0 ),
        .O(pal_issue[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \pal_issue[5]_i_2 
       (.I0(\pal_issue_reg_n_0_[3] ),
        .I1(\pal_issue_reg_n_0_[1] ),
        .I2(\pal_issue_reg_n_0_[0] ),
        .I3(\pal_issue_reg_n_0_[2] ),
        .O(\pal_issue[5]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pal_issue_reg[0] 
       (.C(s_axi_aclk),
        .CE(\pal_capture[4]_i_1_n_0 ),
        .D(\pal_issue[0]_i_1_n_0 ),
        .Q(\pal_issue_reg_n_0_[0] ),
        .R(pal_issue0));
  FDRE #(
    .INIT(1'b0)) 
    \pal_issue_reg[1] 
       (.C(s_axi_aclk),
        .CE(\pal_capture[4]_i_1_n_0 ),
        .D(pal_issue[1]),
        .Q(\pal_issue_reg_n_0_[1] ),
        .R(pal_issue0));
  FDRE #(
    .INIT(1'b0)) 
    \pal_issue_reg[2] 
       (.C(s_axi_aclk),
        .CE(\pal_capture[4]_i_1_n_0 ),
        .D(pal_issue[2]),
        .Q(\pal_issue_reg_n_0_[2] ),
        .R(pal_issue0));
  FDRE #(
    .INIT(1'b0)) 
    \pal_issue_reg[3] 
       (.C(s_axi_aclk),
        .CE(\pal_capture[4]_i_1_n_0 ),
        .D(pal_issue[3]),
        .Q(\pal_issue_reg_n_0_[3] ),
        .R(pal_issue0));
  FDRE #(
    .INIT(1'b0)) 
    \pal_issue_reg[4] 
       (.C(s_axi_aclk),
        .CE(\pal_capture[4]_i_1_n_0 ),
        .D(pal_issue[4]),
        .Q(\pal_issue_reg_n_0_[4] ),
        .R(pal_issue0));
  FDRE #(
    .INIT(1'b0)) 
    \pal_issue_reg[5] 
       (.C(s_axi_aclk),
        .CE(\pal_capture[4]_i_1_n_0 ),
        .D(pal_issue[5]),
        .Q(\pal_issue_reg_n_0_[5] ),
        .R(pal_issue0));
  MUXF8 palette_s0_mem_reg_0_127_0_0_i_10
       (.I0(palette_s0_mem_reg_0_127_0_0_i_25_n_0),
        .I1(palette_s0_mem_reg_0_127_0_0_i_26_n_0),
        .O(palette_s0_mem_reg_0_127_0_0_i_10_n_0),
        .S(\pal_issue_reg_n_0_[3] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_s0_mem_reg_0_127_0_0_i_100
       (.I0(\row_index_reg_n_0_[7][0] ),
        .I1(\row_index_reg_n_0_[6][0] ),
        .I2(\pal_issue_reg_n_0_[1] ),
        .I3(\row_index_reg_n_0_[5][0] ),
        .I4(\pal_issue_reg_n_0_[0] ),
        .I5(\row_index_reg_n_0_[4][0] ),
        .O(palette_s0_mem_reg_0_127_0_0_i_100_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_s0_mem_reg_0_127_0_0_i_101
       (.I0(\row_index_reg[11]_3 [0]),
        .I1(\row_index_reg[10]_2 [0]),
        .I2(\pal_issue_reg_n_0_[1] ),
        .I3(\row_index_reg[9]_1 [0]),
        .I4(\pal_issue_reg_n_0_[0] ),
        .I5(\row_index_reg[8]_0 [0]),
        .O(palette_s0_mem_reg_0_127_0_0_i_101_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_s0_mem_reg_0_127_0_0_i_102
       (.I0(\row_index_reg[15]_7 [0]),
        .I1(\row_index_reg[14]_6 [0]),
        .I2(\pal_issue_reg_n_0_[1] ),
        .I3(\row_index_reg[13]_5 [0]),
        .I4(\pal_issue_reg_n_0_[0] ),
        .I5(\row_index_reg[12]_4 [0]),
        .O(palette_s0_mem_reg_0_127_0_0_i_102_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_s0_mem_reg_0_127_0_0_i_103
       (.I0(\row_index_reg[19]_10 [0]),
        .I1(\row_index_reg[18]_9 [0]),
        .I2(\pal_issue_reg_n_0_[1] ),
        .I3(\row_index_reg[17]_8 [0]),
        .I4(\pal_issue_reg_n_0_[0] ),
        .I5(\row_index_reg_n_0_[16][0] ),
        .O(palette_s0_mem_reg_0_127_0_0_i_103_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_s0_mem_reg_0_127_0_0_i_104
       (.I0(\row_index_reg[23]_14 [0]),
        .I1(\row_index_reg[22]_13 [0]),
        .I2(\pal_issue_reg_n_0_[1] ),
        .I3(\row_index_reg[21]_12 [0]),
        .I4(\pal_issue_reg_n_0_[0] ),
        .I5(\row_index_reg[20]_11 [0]),
        .O(palette_s0_mem_reg_0_127_0_0_i_104_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_s0_mem_reg_0_127_0_0_i_105
       (.I0(\row_index_reg[27]_18 [0]),
        .I1(\row_index_reg[26]_17 [0]),
        .I2(\pal_issue_reg_n_0_[1] ),
        .I3(\row_index_reg[25]_16 [0]),
        .I4(\pal_issue_reg_n_0_[0] ),
        .I5(\row_index_reg[24]_15 [0]),
        .O(palette_s0_mem_reg_0_127_0_0_i_105_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_s0_mem_reg_0_127_0_0_i_106
       (.I0(\row_index_reg_n_0_[31][0] ),
        .I1(\row_index_reg[30]_21 [0]),
        .I2(\pal_issue_reg_n_0_[1] ),
        .I3(\row_index_reg[29]_20 [0]),
        .I4(\pal_issue_reg_n_0_[0] ),
        .I5(\row_index_reg[28]_19 [0]),
        .O(palette_s0_mem_reg_0_127_0_0_i_106_n_0));
  MUXF8 palette_s0_mem_reg_0_127_0_0_i_11
       (.I0(palette_s0_mem_reg_0_127_0_0_i_27_n_0),
        .I1(palette_s0_mem_reg_0_127_0_0_i_28_n_0),
        .O(palette_s0_mem_reg_0_127_0_0_i_11_n_0),
        .S(\pal_issue_reg_n_0_[3] ));
  MUXF8 palette_s0_mem_reg_0_127_0_0_i_12
       (.I0(palette_s0_mem_reg_0_127_0_0_i_29_n_0),
        .I1(palette_s0_mem_reg_0_127_0_0_i_30_n_0),
        .O(palette_s0_mem_reg_0_127_0_0_i_12_n_0),
        .S(\pal_issue_reg_n_0_[3] ));
  MUXF8 palette_s0_mem_reg_0_127_0_0_i_13
       (.I0(palette_s0_mem_reg_0_127_0_0_i_31_n_0),
        .I1(palette_s0_mem_reg_0_127_0_0_i_32_n_0),
        .O(palette_s0_mem_reg_0_127_0_0_i_13_n_0),
        .S(\pal_issue_reg_n_0_[3] ));
  MUXF8 palette_s0_mem_reg_0_127_0_0_i_14
       (.I0(palette_s0_mem_reg_0_127_0_0_i_33_n_0),
        .I1(palette_s0_mem_reg_0_127_0_0_i_34_n_0),
        .O(palette_s0_mem_reg_0_127_0_0_i_14_n_0),
        .S(\pal_issue_reg_n_0_[3] ));
  MUXF8 palette_s0_mem_reg_0_127_0_0_i_15
       (.I0(palette_s0_mem_reg_0_127_0_0_i_35_n_0),
        .I1(palette_s0_mem_reg_0_127_0_0_i_36_n_0),
        .O(palette_s0_mem_reg_0_127_0_0_i_15_n_0),
        .S(\pal_issue_reg_n_0_[3] ));
  MUXF8 palette_s0_mem_reg_0_127_0_0_i_16
       (.I0(palette_s0_mem_reg_0_127_0_0_i_37_n_0),
        .I1(palette_s0_mem_reg_0_127_0_0_i_38_n_0),
        .O(palette_s0_mem_reg_0_127_0_0_i_16_n_0),
        .S(\pal_issue_reg_n_0_[3] ));
  MUXF8 palette_s0_mem_reg_0_127_0_0_i_17
       (.I0(palette_s0_mem_reg_0_127_0_0_i_39_n_0),
        .I1(palette_s0_mem_reg_0_127_0_0_i_40_n_0),
        .O(palette_s0_mem_reg_0_127_0_0_i_17_n_0),
        .S(\pal_issue_reg_n_0_[3] ));
  MUXF8 palette_s0_mem_reg_0_127_0_0_i_18
       (.I0(palette_s0_mem_reg_0_127_0_0_i_41_n_0),
        .I1(palette_s0_mem_reg_0_127_0_0_i_42_n_0),
        .O(palette_s0_mem_reg_0_127_0_0_i_18_n_0),
        .S(\pal_issue_reg_n_0_[3] ));
  MUXF8 palette_s0_mem_reg_0_127_0_0_i_19
       (.I0(palette_s0_mem_reg_0_127_0_0_i_43_n_0),
        .I1(palette_s0_mem_reg_0_127_0_0_i_44_n_0),
        .O(palette_s0_mem_reg_0_127_0_0_i_19_n_0),
        .S(\pal_issue_reg_n_0_[3] ));
  LUT5 #(
    .INIT(32'h22300030)) 
    palette_s0_mem_reg_0_127_0_0_i_2
       (.I0(spr_att_vdp_dout[52]),
        .I1(\pal_issue_reg_n_0_[5] ),
        .I2(palette_s0_mem_reg_0_127_0_0_i_9_n_0),
        .I3(\pal_issue_reg_n_0_[4] ),
        .I4(palette_s0_mem_reg_0_127_0_0_i_10_n_0),
        .O(s0_palette_addr[6]));
  MUXF8 palette_s0_mem_reg_0_127_0_0_i_20
       (.I0(palette_s0_mem_reg_0_127_0_0_i_45_n_0),
        .I1(palette_s0_mem_reg_0_127_0_0_i_46_n_0),
        .O(palette_s0_mem_reg_0_127_0_0_i_20_n_0),
        .S(\pal_issue_reg_n_0_[3] ));
  MUXF8 palette_s0_mem_reg_0_127_0_0_i_21
       (.I0(palette_s0_mem_reg_0_127_0_0_i_47_n_0),
        .I1(palette_s0_mem_reg_0_127_0_0_i_48_n_0),
        .O(palette_s0_mem_reg_0_127_0_0_i_21_n_0),
        .S(\pal_issue_reg_n_0_[3] ));
  MUXF8 palette_s0_mem_reg_0_127_0_0_i_22
       (.I0(palette_s0_mem_reg_0_127_0_0_i_49_n_0),
        .I1(palette_s0_mem_reg_0_127_0_0_i_50_n_0),
        .O(palette_s0_mem_reg_0_127_0_0_i_22_n_0),
        .S(\pal_issue_reg_n_0_[3] ));
  MUXF7 palette_s0_mem_reg_0_127_0_0_i_23
       (.I0(palette_s0_mem_reg_0_127_0_0_i_51_n_0),
        .I1(palette_s0_mem_reg_0_127_0_0_i_52_n_0),
        .O(palette_s0_mem_reg_0_127_0_0_i_23_n_0),
        .S(\pal_issue_reg_n_0_[2] ));
  MUXF7 palette_s0_mem_reg_0_127_0_0_i_24
       (.I0(palette_s0_mem_reg_0_127_0_0_i_53_n_0),
        .I1(palette_s0_mem_reg_0_127_0_0_i_54_n_0),
        .O(palette_s0_mem_reg_0_127_0_0_i_24_n_0),
        .S(\pal_issue_reg_n_0_[2] ));
  MUXF7 palette_s0_mem_reg_0_127_0_0_i_25
       (.I0(palette_s0_mem_reg_0_127_0_0_i_55_n_0),
        .I1(palette_s0_mem_reg_0_127_0_0_i_56_n_0),
        .O(palette_s0_mem_reg_0_127_0_0_i_25_n_0),
        .S(\pal_issue_reg_n_0_[2] ));
  MUXF7 palette_s0_mem_reg_0_127_0_0_i_26
       (.I0(palette_s0_mem_reg_0_127_0_0_i_57_n_0),
        .I1(palette_s0_mem_reg_0_127_0_0_i_58_n_0),
        .O(palette_s0_mem_reg_0_127_0_0_i_26_n_0),
        .S(\pal_issue_reg_n_0_[2] ));
  MUXF7 palette_s0_mem_reg_0_127_0_0_i_27
       (.I0(palette_s0_mem_reg_0_127_0_0_i_59_n_0),
        .I1(palette_s0_mem_reg_0_127_0_0_i_60_n_0),
        .O(palette_s0_mem_reg_0_127_0_0_i_27_n_0),
        .S(\pal_issue_reg_n_0_[2] ));
  MUXF7 palette_s0_mem_reg_0_127_0_0_i_28
       (.I0(palette_s0_mem_reg_0_127_0_0_i_61_n_0),
        .I1(palette_s0_mem_reg_0_127_0_0_i_62_n_0),
        .O(palette_s0_mem_reg_0_127_0_0_i_28_n_0),
        .S(\pal_issue_reg_n_0_[2] ));
  MUXF7 palette_s0_mem_reg_0_127_0_0_i_29
       (.I0(palette_s0_mem_reg_0_127_0_0_i_63_n_0),
        .I1(palette_s0_mem_reg_0_127_0_0_i_64_n_0),
        .O(palette_s0_mem_reg_0_127_0_0_i_29_n_0),
        .S(\pal_issue_reg_n_0_[2] ));
  LUT5 #(
    .INIT(32'h22300030)) 
    palette_s0_mem_reg_0_127_0_0_i_3
       (.I0(spr_att_vdp_dout[52]),
        .I1(\pal_issue_reg_n_0_[5] ),
        .I2(palette_s0_mem_reg_0_127_0_0_i_11_n_0),
        .I3(\pal_issue_reg_n_0_[4] ),
        .I4(palette_s0_mem_reg_0_127_0_0_i_12_n_0),
        .O(s0_palette_addr[5]));
  MUXF7 palette_s0_mem_reg_0_127_0_0_i_30
       (.I0(palette_s0_mem_reg_0_127_0_0_i_65_n_0),
        .I1(palette_s0_mem_reg_0_127_0_0_i_66_n_0),
        .O(palette_s0_mem_reg_0_127_0_0_i_30_n_0),
        .S(\pal_issue_reg_n_0_[2] ));
  MUXF7 palette_s0_mem_reg_0_127_0_0_i_31
       (.I0(palette_s0_mem_reg_0_127_0_0_i_67_n_0),
        .I1(palette_s0_mem_reg_0_127_0_0_i_68_n_0),
        .O(palette_s0_mem_reg_0_127_0_0_i_31_n_0),
        .S(\pal_issue_reg_n_0_[2] ));
  MUXF7 palette_s0_mem_reg_0_127_0_0_i_32
       (.I0(palette_s0_mem_reg_0_127_0_0_i_69_n_0),
        .I1(palette_s0_mem_reg_0_127_0_0_i_70_n_0),
        .O(palette_s0_mem_reg_0_127_0_0_i_32_n_0),
        .S(\pal_issue_reg_n_0_[2] ));
  MUXF7 palette_s0_mem_reg_0_127_0_0_i_33
       (.I0(palette_s0_mem_reg_0_127_0_0_i_71_n_0),
        .I1(palette_s0_mem_reg_0_127_0_0_i_72_n_0),
        .O(palette_s0_mem_reg_0_127_0_0_i_33_n_0),
        .S(\pal_issue_reg_n_0_[2] ));
  MUXF7 palette_s0_mem_reg_0_127_0_0_i_34
       (.I0(palette_s0_mem_reg_0_127_0_0_i_73_n_0),
        .I1(palette_s0_mem_reg_0_127_0_0_i_74_n_0),
        .O(palette_s0_mem_reg_0_127_0_0_i_34_n_0),
        .S(\pal_issue_reg_n_0_[2] ));
  MUXF7 palette_s0_mem_reg_0_127_0_0_i_35
       (.I0(palette_s0_mem_reg_0_127_0_0_i_75_n_0),
        .I1(palette_s0_mem_reg_0_127_0_0_i_76_n_0),
        .O(palette_s0_mem_reg_0_127_0_0_i_35_n_0),
        .S(\pal_issue_reg_n_0_[2] ));
  MUXF7 palette_s0_mem_reg_0_127_0_0_i_36
       (.I0(palette_s0_mem_reg_0_127_0_0_i_77_n_0),
        .I1(palette_s0_mem_reg_0_127_0_0_i_78_n_0),
        .O(palette_s0_mem_reg_0_127_0_0_i_36_n_0),
        .S(\pal_issue_reg_n_0_[2] ));
  MUXF7 palette_s0_mem_reg_0_127_0_0_i_37
       (.I0(palette_s0_mem_reg_0_127_0_0_i_79_n_0),
        .I1(palette_s0_mem_reg_0_127_0_0_i_80_n_0),
        .O(palette_s0_mem_reg_0_127_0_0_i_37_n_0),
        .S(\pal_issue_reg_n_0_[2] ));
  MUXF7 palette_s0_mem_reg_0_127_0_0_i_38
       (.I0(palette_s0_mem_reg_0_127_0_0_i_81_n_0),
        .I1(palette_s0_mem_reg_0_127_0_0_i_82_n_0),
        .O(palette_s0_mem_reg_0_127_0_0_i_38_n_0),
        .S(\pal_issue_reg_n_0_[2] ));
  MUXF7 palette_s0_mem_reg_0_127_0_0_i_39
       (.I0(palette_s0_mem_reg_0_127_0_0_i_83_n_0),
        .I1(palette_s0_mem_reg_0_127_0_0_i_84_n_0),
        .O(palette_s0_mem_reg_0_127_0_0_i_39_n_0),
        .S(\pal_issue_reg_n_0_[2] ));
  LUT5 #(
    .INIT(32'h22300030)) 
    palette_s0_mem_reg_0_127_0_0_i_4
       (.I0(spr_att_vdp_dout[52]),
        .I1(\pal_issue_reg_n_0_[5] ),
        .I2(palette_s0_mem_reg_0_127_0_0_i_13_n_0),
        .I3(\pal_issue_reg_n_0_[4] ),
        .I4(palette_s0_mem_reg_0_127_0_0_i_14_n_0),
        .O(s0_palette_addr[4]));
  MUXF7 palette_s0_mem_reg_0_127_0_0_i_40
       (.I0(palette_s0_mem_reg_0_127_0_0_i_85_n_0),
        .I1(palette_s0_mem_reg_0_127_0_0_i_86_n_0),
        .O(palette_s0_mem_reg_0_127_0_0_i_40_n_0),
        .S(\pal_issue_reg_n_0_[2] ));
  MUXF7 palette_s0_mem_reg_0_127_0_0_i_41
       (.I0(palette_s0_mem_reg_0_127_0_0_i_87_n_0),
        .I1(palette_s0_mem_reg_0_127_0_0_i_88_n_0),
        .O(palette_s0_mem_reg_0_127_0_0_i_41_n_0),
        .S(\pal_issue_reg_n_0_[2] ));
  MUXF7 palette_s0_mem_reg_0_127_0_0_i_42
       (.I0(palette_s0_mem_reg_0_127_0_0_i_89_n_0),
        .I1(palette_s0_mem_reg_0_127_0_0_i_90_n_0),
        .O(palette_s0_mem_reg_0_127_0_0_i_42_n_0),
        .S(\pal_issue_reg_n_0_[2] ));
  MUXF7 palette_s0_mem_reg_0_127_0_0_i_43
       (.I0(palette_s0_mem_reg_0_127_0_0_i_91_n_0),
        .I1(palette_s0_mem_reg_0_127_0_0_i_92_n_0),
        .O(palette_s0_mem_reg_0_127_0_0_i_43_n_0),
        .S(\pal_issue_reg_n_0_[2] ));
  MUXF7 palette_s0_mem_reg_0_127_0_0_i_44
       (.I0(palette_s0_mem_reg_0_127_0_0_i_93_n_0),
        .I1(palette_s0_mem_reg_0_127_0_0_i_94_n_0),
        .O(palette_s0_mem_reg_0_127_0_0_i_44_n_0),
        .S(\pal_issue_reg_n_0_[2] ));
  MUXF7 palette_s0_mem_reg_0_127_0_0_i_45
       (.I0(palette_s0_mem_reg_0_127_0_0_i_95_n_0),
        .I1(palette_s0_mem_reg_0_127_0_0_i_96_n_0),
        .O(palette_s0_mem_reg_0_127_0_0_i_45_n_0),
        .S(\pal_issue_reg_n_0_[2] ));
  MUXF7 palette_s0_mem_reg_0_127_0_0_i_46
       (.I0(palette_s0_mem_reg_0_127_0_0_i_97_n_0),
        .I1(palette_s0_mem_reg_0_127_0_0_i_98_n_0),
        .O(palette_s0_mem_reg_0_127_0_0_i_46_n_0),
        .S(\pal_issue_reg_n_0_[2] ));
  MUXF7 palette_s0_mem_reg_0_127_0_0_i_47
       (.I0(palette_s0_mem_reg_0_127_0_0_i_99_n_0),
        .I1(palette_s0_mem_reg_0_127_0_0_i_100_n_0),
        .O(palette_s0_mem_reg_0_127_0_0_i_47_n_0),
        .S(\pal_issue_reg_n_0_[2] ));
  MUXF7 palette_s0_mem_reg_0_127_0_0_i_48
       (.I0(palette_s0_mem_reg_0_127_0_0_i_101_n_0),
        .I1(palette_s0_mem_reg_0_127_0_0_i_102_n_0),
        .O(palette_s0_mem_reg_0_127_0_0_i_48_n_0),
        .S(\pal_issue_reg_n_0_[2] ));
  MUXF7 palette_s0_mem_reg_0_127_0_0_i_49
       (.I0(palette_s0_mem_reg_0_127_0_0_i_103_n_0),
        .I1(palette_s0_mem_reg_0_127_0_0_i_104_n_0),
        .O(palette_s0_mem_reg_0_127_0_0_i_49_n_0),
        .S(\pal_issue_reg_n_0_[2] ));
  LUT5 #(
    .INIT(32'h22300030)) 
    palette_s0_mem_reg_0_127_0_0_i_5
       (.I0(spr_att_vdp_dout[52]),
        .I1(\pal_issue_reg_n_0_[5] ),
        .I2(palette_s0_mem_reg_0_127_0_0_i_15_n_0),
        .I3(\pal_issue_reg_n_0_[4] ),
        .I4(palette_s0_mem_reg_0_127_0_0_i_16_n_0),
        .O(s0_palette_addr[3]));
  MUXF7 palette_s0_mem_reg_0_127_0_0_i_50
       (.I0(palette_s0_mem_reg_0_127_0_0_i_105_n_0),
        .I1(palette_s0_mem_reg_0_127_0_0_i_106_n_0),
        .O(palette_s0_mem_reg_0_127_0_0_i_50_n_0),
        .S(\pal_issue_reg_n_0_[2] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_s0_mem_reg_0_127_0_0_i_51
       (.I0(\row_index_reg_n_0_[3][6] ),
        .I1(\row_index_reg_n_0_[2][6] ),
        .I2(\pal_issue_reg_n_0_[1] ),
        .I3(\row_index_reg_n_0_[1][6] ),
        .I4(\pal_issue_reg_n_0_[0] ),
        .I5(\row_index_reg_n_0_[0][6] ),
        .O(palette_s0_mem_reg_0_127_0_0_i_51_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_s0_mem_reg_0_127_0_0_i_52
       (.I0(\row_index_reg_n_0_[7][6] ),
        .I1(\row_index_reg_n_0_[6][6] ),
        .I2(\pal_issue_reg_n_0_[1] ),
        .I3(\row_index_reg_n_0_[5][6] ),
        .I4(\pal_issue_reg_n_0_[0] ),
        .I5(\row_index_reg_n_0_[4][6] ),
        .O(palette_s0_mem_reg_0_127_0_0_i_52_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_s0_mem_reg_0_127_0_0_i_53
       (.I0(\row_index_reg[11]_3 [6]),
        .I1(\row_index_reg[10]_2 [6]),
        .I2(\pal_issue_reg_n_0_[1] ),
        .I3(\row_index_reg[9]_1 [6]),
        .I4(\pal_issue_reg_n_0_[0] ),
        .I5(\row_index_reg[8]_0 [6]),
        .O(palette_s0_mem_reg_0_127_0_0_i_53_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_s0_mem_reg_0_127_0_0_i_54
       (.I0(\row_index_reg[15]_7 [6]),
        .I1(\row_index_reg[14]_6 [6]),
        .I2(\pal_issue_reg_n_0_[1] ),
        .I3(\row_index_reg[13]_5 [6]),
        .I4(\pal_issue_reg_n_0_[0] ),
        .I5(\row_index_reg[12]_4 [6]),
        .O(palette_s0_mem_reg_0_127_0_0_i_54_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_s0_mem_reg_0_127_0_0_i_55
       (.I0(\row_index_reg[19]_10 [6]),
        .I1(\row_index_reg[18]_9 [6]),
        .I2(\pal_issue_reg_n_0_[1] ),
        .I3(\row_index_reg[17]_8 [6]),
        .I4(\pal_issue_reg_n_0_[0] ),
        .I5(\row_index_reg_n_0_[16][6] ),
        .O(palette_s0_mem_reg_0_127_0_0_i_55_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_s0_mem_reg_0_127_0_0_i_56
       (.I0(\row_index_reg[23]_14 [6]),
        .I1(\row_index_reg[22]_13 [6]),
        .I2(\pal_issue_reg_n_0_[1] ),
        .I3(\row_index_reg[21]_12 [6]),
        .I4(\pal_issue_reg_n_0_[0] ),
        .I5(\row_index_reg[20]_11 [6]),
        .O(palette_s0_mem_reg_0_127_0_0_i_56_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_s0_mem_reg_0_127_0_0_i_57
       (.I0(\row_index_reg[27]_18 [6]),
        .I1(\row_index_reg[26]_17 [6]),
        .I2(\pal_issue_reg_n_0_[1] ),
        .I3(\row_index_reg[25]_16 [6]),
        .I4(\pal_issue_reg_n_0_[0] ),
        .I5(\row_index_reg[24]_15 [6]),
        .O(palette_s0_mem_reg_0_127_0_0_i_57_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_s0_mem_reg_0_127_0_0_i_58
       (.I0(\row_index_reg_n_0_[31][6] ),
        .I1(\row_index_reg[30]_21 [6]),
        .I2(\pal_issue_reg_n_0_[1] ),
        .I3(\row_index_reg[29]_20 [6]),
        .I4(\pal_issue_reg_n_0_[0] ),
        .I5(\row_index_reg[28]_19 [6]),
        .O(palette_s0_mem_reg_0_127_0_0_i_58_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_s0_mem_reg_0_127_0_0_i_59
       (.I0(\row_index_reg_n_0_[3][5] ),
        .I1(\row_index_reg_n_0_[2][5] ),
        .I2(\pal_issue_reg_n_0_[1] ),
        .I3(\row_index_reg_n_0_[1][5] ),
        .I4(\pal_issue_reg_n_0_[0] ),
        .I5(\row_index_reg_n_0_[0][5] ),
        .O(palette_s0_mem_reg_0_127_0_0_i_59_n_0));
  LUT5 #(
    .INIT(32'h22300030)) 
    palette_s0_mem_reg_0_127_0_0_i_6
       (.I0(spr_att_vdp_dout[52]),
        .I1(\pal_issue_reg_n_0_[5] ),
        .I2(palette_s0_mem_reg_0_127_0_0_i_17_n_0),
        .I3(\pal_issue_reg_n_0_[4] ),
        .I4(palette_s0_mem_reg_0_127_0_0_i_18_n_0),
        .O(s0_palette_addr[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_s0_mem_reg_0_127_0_0_i_60
       (.I0(\row_index_reg_n_0_[7][5] ),
        .I1(\row_index_reg_n_0_[6][5] ),
        .I2(\pal_issue_reg_n_0_[1] ),
        .I3(\row_index_reg_n_0_[5][5] ),
        .I4(\pal_issue_reg_n_0_[0] ),
        .I5(\row_index_reg_n_0_[4][5] ),
        .O(palette_s0_mem_reg_0_127_0_0_i_60_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_s0_mem_reg_0_127_0_0_i_61
       (.I0(\row_index_reg[11]_3 [5]),
        .I1(\row_index_reg[10]_2 [5]),
        .I2(\pal_issue_reg_n_0_[1] ),
        .I3(\row_index_reg[9]_1 [5]),
        .I4(\pal_issue_reg_n_0_[0] ),
        .I5(\row_index_reg[8]_0 [5]),
        .O(palette_s0_mem_reg_0_127_0_0_i_61_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_s0_mem_reg_0_127_0_0_i_62
       (.I0(\row_index_reg[15]_7 [5]),
        .I1(\row_index_reg[14]_6 [5]),
        .I2(\pal_issue_reg_n_0_[1] ),
        .I3(\row_index_reg[13]_5 [5]),
        .I4(\pal_issue_reg_n_0_[0] ),
        .I5(\row_index_reg[12]_4 [5]),
        .O(palette_s0_mem_reg_0_127_0_0_i_62_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_s0_mem_reg_0_127_0_0_i_63
       (.I0(\row_index_reg[19]_10 [5]),
        .I1(\row_index_reg[18]_9 [5]),
        .I2(\pal_issue_reg_n_0_[1] ),
        .I3(\row_index_reg[17]_8 [5]),
        .I4(\pal_issue_reg_n_0_[0] ),
        .I5(\row_index_reg_n_0_[16][5] ),
        .O(palette_s0_mem_reg_0_127_0_0_i_63_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_s0_mem_reg_0_127_0_0_i_64
       (.I0(\row_index_reg[23]_14 [5]),
        .I1(\row_index_reg[22]_13 [5]),
        .I2(\pal_issue_reg_n_0_[1] ),
        .I3(\row_index_reg[21]_12 [5]),
        .I4(\pal_issue_reg_n_0_[0] ),
        .I5(\row_index_reg[20]_11 [5]),
        .O(palette_s0_mem_reg_0_127_0_0_i_64_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_s0_mem_reg_0_127_0_0_i_65
       (.I0(\row_index_reg[27]_18 [5]),
        .I1(\row_index_reg[26]_17 [5]),
        .I2(\pal_issue_reg_n_0_[1] ),
        .I3(\row_index_reg[25]_16 [5]),
        .I4(\pal_issue_reg_n_0_[0] ),
        .I5(\row_index_reg[24]_15 [5]),
        .O(palette_s0_mem_reg_0_127_0_0_i_65_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_s0_mem_reg_0_127_0_0_i_66
       (.I0(\row_index_reg_n_0_[31][5] ),
        .I1(\row_index_reg[30]_21 [5]),
        .I2(\pal_issue_reg_n_0_[1] ),
        .I3(\row_index_reg[29]_20 [5]),
        .I4(\pal_issue_reg_n_0_[0] ),
        .I5(\row_index_reg[28]_19 [5]),
        .O(palette_s0_mem_reg_0_127_0_0_i_66_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_s0_mem_reg_0_127_0_0_i_67
       (.I0(\row_index_reg_n_0_[3][4] ),
        .I1(\row_index_reg_n_0_[2][4] ),
        .I2(\pal_issue_reg_n_0_[1] ),
        .I3(\row_index_reg_n_0_[1][4] ),
        .I4(\pal_issue_reg_n_0_[0] ),
        .I5(\row_index_reg_n_0_[0][4] ),
        .O(palette_s0_mem_reg_0_127_0_0_i_67_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_s0_mem_reg_0_127_0_0_i_68
       (.I0(\row_index_reg_n_0_[7][4] ),
        .I1(\row_index_reg_n_0_[6][4] ),
        .I2(\pal_issue_reg_n_0_[1] ),
        .I3(\row_index_reg_n_0_[5][4] ),
        .I4(\pal_issue_reg_n_0_[0] ),
        .I5(\row_index_reg_n_0_[4][4] ),
        .O(palette_s0_mem_reg_0_127_0_0_i_68_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_s0_mem_reg_0_127_0_0_i_69
       (.I0(\row_index_reg[11]_3 [4]),
        .I1(\row_index_reg[10]_2 [4]),
        .I2(\pal_issue_reg_n_0_[1] ),
        .I3(\row_index_reg[9]_1 [4]),
        .I4(\pal_issue_reg_n_0_[0] ),
        .I5(\row_index_reg[8]_0 [4]),
        .O(palette_s0_mem_reg_0_127_0_0_i_69_n_0));
  LUT5 #(
    .INIT(32'h22300030)) 
    palette_s0_mem_reg_0_127_0_0_i_7
       (.I0(spr_att_vdp_dout[52]),
        .I1(\pal_issue_reg_n_0_[5] ),
        .I2(palette_s0_mem_reg_0_127_0_0_i_19_n_0),
        .I3(\pal_issue_reg_n_0_[4] ),
        .I4(palette_s0_mem_reg_0_127_0_0_i_20_n_0),
        .O(s0_palette_addr[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_s0_mem_reg_0_127_0_0_i_70
       (.I0(\row_index_reg[15]_7 [4]),
        .I1(\row_index_reg[14]_6 [4]),
        .I2(\pal_issue_reg_n_0_[1] ),
        .I3(\row_index_reg[13]_5 [4]),
        .I4(\pal_issue_reg_n_0_[0] ),
        .I5(\row_index_reg[12]_4 [4]),
        .O(palette_s0_mem_reg_0_127_0_0_i_70_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_s0_mem_reg_0_127_0_0_i_71
       (.I0(\row_index_reg[19]_10 [4]),
        .I1(\row_index_reg[18]_9 [4]),
        .I2(\pal_issue_reg_n_0_[1] ),
        .I3(\row_index_reg[17]_8 [4]),
        .I4(\pal_issue_reg_n_0_[0] ),
        .I5(\row_index_reg_n_0_[16][4] ),
        .O(palette_s0_mem_reg_0_127_0_0_i_71_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_s0_mem_reg_0_127_0_0_i_72
       (.I0(\row_index_reg[23]_14 [4]),
        .I1(\row_index_reg[22]_13 [4]),
        .I2(\pal_issue_reg_n_0_[1] ),
        .I3(\row_index_reg[21]_12 [4]),
        .I4(\pal_issue_reg_n_0_[0] ),
        .I5(\row_index_reg[20]_11 [4]),
        .O(palette_s0_mem_reg_0_127_0_0_i_72_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_s0_mem_reg_0_127_0_0_i_73
       (.I0(\row_index_reg[27]_18 [4]),
        .I1(\row_index_reg[26]_17 [4]),
        .I2(\pal_issue_reg_n_0_[1] ),
        .I3(\row_index_reg[25]_16 [4]),
        .I4(\pal_issue_reg_n_0_[0] ),
        .I5(\row_index_reg[24]_15 [4]),
        .O(palette_s0_mem_reg_0_127_0_0_i_73_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_s0_mem_reg_0_127_0_0_i_74
       (.I0(\row_index_reg_n_0_[31][4] ),
        .I1(\row_index_reg[30]_21 [4]),
        .I2(\pal_issue_reg_n_0_[1] ),
        .I3(\row_index_reg[29]_20 [4]),
        .I4(\pal_issue_reg_n_0_[0] ),
        .I5(\row_index_reg[28]_19 [4]),
        .O(palette_s0_mem_reg_0_127_0_0_i_74_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_s0_mem_reg_0_127_0_0_i_75
       (.I0(\row_index_reg_n_0_[3][3] ),
        .I1(\row_index_reg_n_0_[2][3] ),
        .I2(\pal_issue_reg_n_0_[1] ),
        .I3(\row_index_reg_n_0_[1][3] ),
        .I4(\pal_issue_reg_n_0_[0] ),
        .I5(\row_index_reg_n_0_[0][3] ),
        .O(palette_s0_mem_reg_0_127_0_0_i_75_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_s0_mem_reg_0_127_0_0_i_76
       (.I0(\row_index_reg_n_0_[7][3] ),
        .I1(\row_index_reg_n_0_[6][3] ),
        .I2(\pal_issue_reg_n_0_[1] ),
        .I3(\row_index_reg_n_0_[5][3] ),
        .I4(\pal_issue_reg_n_0_[0] ),
        .I5(\row_index_reg_n_0_[4][3] ),
        .O(palette_s0_mem_reg_0_127_0_0_i_76_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_s0_mem_reg_0_127_0_0_i_77
       (.I0(\row_index_reg[11]_3 [3]),
        .I1(\row_index_reg[10]_2 [3]),
        .I2(\pal_issue_reg_n_0_[1] ),
        .I3(\row_index_reg[9]_1 [3]),
        .I4(\pal_issue_reg_n_0_[0] ),
        .I5(\row_index_reg[8]_0 [3]),
        .O(palette_s0_mem_reg_0_127_0_0_i_77_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_s0_mem_reg_0_127_0_0_i_78
       (.I0(\row_index_reg[15]_7 [3]),
        .I1(\row_index_reg[14]_6 [3]),
        .I2(\pal_issue_reg_n_0_[1] ),
        .I3(\row_index_reg[13]_5 [3]),
        .I4(\pal_issue_reg_n_0_[0] ),
        .I5(\row_index_reg[12]_4 [3]),
        .O(palette_s0_mem_reg_0_127_0_0_i_78_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_s0_mem_reg_0_127_0_0_i_79
       (.I0(\row_index_reg[19]_10 [3]),
        .I1(\row_index_reg[18]_9 [3]),
        .I2(\pal_issue_reg_n_0_[1] ),
        .I3(\row_index_reg[17]_8 [3]),
        .I4(\pal_issue_reg_n_0_[0] ),
        .I5(\row_index_reg_n_0_[16][3] ),
        .O(palette_s0_mem_reg_0_127_0_0_i_79_n_0));
  LUT5 #(
    .INIT(32'h22300030)) 
    palette_s0_mem_reg_0_127_0_0_i_8
       (.I0(spr_att_vdp_dout[52]),
        .I1(\pal_issue_reg_n_0_[5] ),
        .I2(palette_s0_mem_reg_0_127_0_0_i_21_n_0),
        .I3(\pal_issue_reg_n_0_[4] ),
        .I4(palette_s0_mem_reg_0_127_0_0_i_22_n_0),
        .O(s0_palette_addr[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_s0_mem_reg_0_127_0_0_i_80
       (.I0(\row_index_reg[23]_14 [3]),
        .I1(\row_index_reg[22]_13 [3]),
        .I2(\pal_issue_reg_n_0_[1] ),
        .I3(\row_index_reg[21]_12 [3]),
        .I4(\pal_issue_reg_n_0_[0] ),
        .I5(\row_index_reg[20]_11 [3]),
        .O(palette_s0_mem_reg_0_127_0_0_i_80_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_s0_mem_reg_0_127_0_0_i_81
       (.I0(\row_index_reg[27]_18 [3]),
        .I1(\row_index_reg[26]_17 [3]),
        .I2(\pal_issue_reg_n_0_[1] ),
        .I3(\row_index_reg[25]_16 [3]),
        .I4(\pal_issue_reg_n_0_[0] ),
        .I5(\row_index_reg[24]_15 [3]),
        .O(palette_s0_mem_reg_0_127_0_0_i_81_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_s0_mem_reg_0_127_0_0_i_82
       (.I0(\row_index_reg_n_0_[31][3] ),
        .I1(\row_index_reg[30]_21 [3]),
        .I2(\pal_issue_reg_n_0_[1] ),
        .I3(\row_index_reg[29]_20 [3]),
        .I4(\pal_issue_reg_n_0_[0] ),
        .I5(\row_index_reg[28]_19 [3]),
        .O(palette_s0_mem_reg_0_127_0_0_i_82_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_s0_mem_reg_0_127_0_0_i_83
       (.I0(\row_index_reg_n_0_[3][2] ),
        .I1(\row_index_reg_n_0_[2][2] ),
        .I2(\pal_issue_reg_n_0_[1] ),
        .I3(\row_index_reg_n_0_[1][2] ),
        .I4(\pal_issue_reg_n_0_[0] ),
        .I5(\row_index_reg_n_0_[0][2] ),
        .O(palette_s0_mem_reg_0_127_0_0_i_83_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_s0_mem_reg_0_127_0_0_i_84
       (.I0(\row_index_reg_n_0_[7][2] ),
        .I1(\row_index_reg_n_0_[6][2] ),
        .I2(\pal_issue_reg_n_0_[1] ),
        .I3(\row_index_reg_n_0_[5][2] ),
        .I4(\pal_issue_reg_n_0_[0] ),
        .I5(\row_index_reg_n_0_[4][2] ),
        .O(palette_s0_mem_reg_0_127_0_0_i_84_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_s0_mem_reg_0_127_0_0_i_85
       (.I0(\row_index_reg[11]_3 [2]),
        .I1(\row_index_reg[10]_2 [2]),
        .I2(\pal_issue_reg_n_0_[1] ),
        .I3(\row_index_reg[9]_1 [2]),
        .I4(\pal_issue_reg_n_0_[0] ),
        .I5(\row_index_reg[8]_0 [2]),
        .O(palette_s0_mem_reg_0_127_0_0_i_85_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_s0_mem_reg_0_127_0_0_i_86
       (.I0(\row_index_reg[15]_7 [2]),
        .I1(\row_index_reg[14]_6 [2]),
        .I2(\pal_issue_reg_n_0_[1] ),
        .I3(\row_index_reg[13]_5 [2]),
        .I4(\pal_issue_reg_n_0_[0] ),
        .I5(\row_index_reg[12]_4 [2]),
        .O(palette_s0_mem_reg_0_127_0_0_i_86_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_s0_mem_reg_0_127_0_0_i_87
       (.I0(\row_index_reg[19]_10 [2]),
        .I1(\row_index_reg[18]_9 [2]),
        .I2(\pal_issue_reg_n_0_[1] ),
        .I3(\row_index_reg[17]_8 [2]),
        .I4(\pal_issue_reg_n_0_[0] ),
        .I5(\row_index_reg_n_0_[16][2] ),
        .O(palette_s0_mem_reg_0_127_0_0_i_87_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_s0_mem_reg_0_127_0_0_i_88
       (.I0(\row_index_reg[23]_14 [2]),
        .I1(\row_index_reg[22]_13 [2]),
        .I2(\pal_issue_reg_n_0_[1] ),
        .I3(\row_index_reg[21]_12 [2]),
        .I4(\pal_issue_reg_n_0_[0] ),
        .I5(\row_index_reg[20]_11 [2]),
        .O(palette_s0_mem_reg_0_127_0_0_i_88_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_s0_mem_reg_0_127_0_0_i_89
       (.I0(\row_index_reg[27]_18 [2]),
        .I1(\row_index_reg[26]_17 [2]),
        .I2(\pal_issue_reg_n_0_[1] ),
        .I3(\row_index_reg[25]_16 [2]),
        .I4(\pal_issue_reg_n_0_[0] ),
        .I5(\row_index_reg[24]_15 [2]),
        .O(palette_s0_mem_reg_0_127_0_0_i_89_n_0));
  MUXF8 palette_s0_mem_reg_0_127_0_0_i_9
       (.I0(palette_s0_mem_reg_0_127_0_0_i_23_n_0),
        .I1(palette_s0_mem_reg_0_127_0_0_i_24_n_0),
        .O(palette_s0_mem_reg_0_127_0_0_i_9_n_0),
        .S(\pal_issue_reg_n_0_[3] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_s0_mem_reg_0_127_0_0_i_90
       (.I0(\row_index_reg_n_0_[31][2] ),
        .I1(\row_index_reg[30]_21 [2]),
        .I2(\pal_issue_reg_n_0_[1] ),
        .I3(\row_index_reg[29]_20 [2]),
        .I4(\pal_issue_reg_n_0_[0] ),
        .I5(\row_index_reg[28]_19 [2]),
        .O(palette_s0_mem_reg_0_127_0_0_i_90_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_s0_mem_reg_0_127_0_0_i_91
       (.I0(\row_index_reg_n_0_[3][1] ),
        .I1(\row_index_reg_n_0_[2][1] ),
        .I2(\pal_issue_reg_n_0_[1] ),
        .I3(\row_index_reg_n_0_[1][1] ),
        .I4(\pal_issue_reg_n_0_[0] ),
        .I5(\row_index_reg_n_0_[0][1] ),
        .O(palette_s0_mem_reg_0_127_0_0_i_91_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_s0_mem_reg_0_127_0_0_i_92
       (.I0(\row_index_reg_n_0_[7][1] ),
        .I1(\row_index_reg_n_0_[6][1] ),
        .I2(\pal_issue_reg_n_0_[1] ),
        .I3(\row_index_reg_n_0_[5][1] ),
        .I4(\pal_issue_reg_n_0_[0] ),
        .I5(\row_index_reg_n_0_[4][1] ),
        .O(palette_s0_mem_reg_0_127_0_0_i_92_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_s0_mem_reg_0_127_0_0_i_93
       (.I0(\row_index_reg[11]_3 [1]),
        .I1(\row_index_reg[10]_2 [1]),
        .I2(\pal_issue_reg_n_0_[1] ),
        .I3(\row_index_reg[9]_1 [1]),
        .I4(\pal_issue_reg_n_0_[0] ),
        .I5(\row_index_reg[8]_0 [1]),
        .O(palette_s0_mem_reg_0_127_0_0_i_93_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_s0_mem_reg_0_127_0_0_i_94
       (.I0(\row_index_reg[15]_7 [1]),
        .I1(\row_index_reg[14]_6 [1]),
        .I2(\pal_issue_reg_n_0_[1] ),
        .I3(\row_index_reg[13]_5 [1]),
        .I4(\pal_issue_reg_n_0_[0] ),
        .I5(\row_index_reg[12]_4 [1]),
        .O(palette_s0_mem_reg_0_127_0_0_i_94_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_s0_mem_reg_0_127_0_0_i_95
       (.I0(\row_index_reg[19]_10 [1]),
        .I1(\row_index_reg[18]_9 [1]),
        .I2(\pal_issue_reg_n_0_[1] ),
        .I3(\row_index_reg[17]_8 [1]),
        .I4(\pal_issue_reg_n_0_[0] ),
        .I5(\row_index_reg_n_0_[16][1] ),
        .O(palette_s0_mem_reg_0_127_0_0_i_95_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_s0_mem_reg_0_127_0_0_i_96
       (.I0(\row_index_reg[23]_14 [1]),
        .I1(\row_index_reg[22]_13 [1]),
        .I2(\pal_issue_reg_n_0_[1] ),
        .I3(\row_index_reg[21]_12 [1]),
        .I4(\pal_issue_reg_n_0_[0] ),
        .I5(\row_index_reg[20]_11 [1]),
        .O(palette_s0_mem_reg_0_127_0_0_i_96_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_s0_mem_reg_0_127_0_0_i_97
       (.I0(\row_index_reg[27]_18 [1]),
        .I1(\row_index_reg[26]_17 [1]),
        .I2(\pal_issue_reg_n_0_[1] ),
        .I3(\row_index_reg[25]_16 [1]),
        .I4(\pal_issue_reg_n_0_[0] ),
        .I5(\row_index_reg[24]_15 [1]),
        .O(palette_s0_mem_reg_0_127_0_0_i_97_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_s0_mem_reg_0_127_0_0_i_98
       (.I0(\row_index_reg_n_0_[31][1] ),
        .I1(\row_index_reg[30]_21 [1]),
        .I2(\pal_issue_reg_n_0_[1] ),
        .I3(\row_index_reg[29]_20 [1]),
        .I4(\pal_issue_reg_n_0_[0] ),
        .I5(\row_index_reg[28]_19 [1]),
        .O(palette_s0_mem_reg_0_127_0_0_i_98_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_s0_mem_reg_0_127_0_0_i_99
       (.I0(\row_index_reg_n_0_[3][0] ),
        .I1(\row_index_reg_n_0_[2][0] ),
        .I2(\pal_issue_reg_n_0_[1] ),
        .I3(\row_index_reg_n_0_[1][0] ),
        .I4(\pal_issue_reg_n_0_[0] ),
        .I5(\row_index_reg_n_0_[0][0] ),
        .O(palette_s0_mem_reg_0_127_0_0_i_99_n_0));
  LUT5 #(
    .INIT(32'h22300030)) 
    palette_s0_mem_reg_0_127_12_12_i_1
       (.I0(spr_att_vdp_dout[52]),
        .I1(\pal_issue_reg_n_0_[5] ),
        .I2(palette_s0_mem_reg_0_127_0_0_i_9_n_0),
        .I3(\pal_issue_reg_n_0_[4] ),
        .I4(palette_s0_mem_reg_0_127_0_0_i_10_n_0),
        .O(\pal_issue_reg[5]_0 [6]));
  LUT5 #(
    .INIT(32'h22300030)) 
    palette_s0_mem_reg_0_127_12_12_i_2
       (.I0(spr_att_vdp_dout[52]),
        .I1(\pal_issue_reg_n_0_[5] ),
        .I2(palette_s0_mem_reg_0_127_0_0_i_11_n_0),
        .I3(\pal_issue_reg_n_0_[4] ),
        .I4(palette_s0_mem_reg_0_127_0_0_i_12_n_0),
        .O(\pal_issue_reg[5]_0 [5]));
  LUT5 #(
    .INIT(32'h22300030)) 
    palette_s0_mem_reg_0_127_12_12_i_3
       (.I0(spr_att_vdp_dout[52]),
        .I1(\pal_issue_reg_n_0_[5] ),
        .I2(palette_s0_mem_reg_0_127_0_0_i_13_n_0),
        .I3(\pal_issue_reg_n_0_[4] ),
        .I4(palette_s0_mem_reg_0_127_0_0_i_14_n_0),
        .O(\pal_issue_reg[5]_0 [4]));
  LUT5 #(
    .INIT(32'h22300030)) 
    palette_s0_mem_reg_0_127_12_12_i_4
       (.I0(spr_att_vdp_dout[52]),
        .I1(\pal_issue_reg_n_0_[5] ),
        .I2(palette_s0_mem_reg_0_127_0_0_i_15_n_0),
        .I3(\pal_issue_reg_n_0_[4] ),
        .I4(palette_s0_mem_reg_0_127_0_0_i_16_n_0),
        .O(\pal_issue_reg[5]_0 [3]));
  LUT5 #(
    .INIT(32'h22300030)) 
    palette_s0_mem_reg_0_127_12_12_i_5
       (.I0(spr_att_vdp_dout[52]),
        .I1(\pal_issue_reg_n_0_[5] ),
        .I2(palette_s0_mem_reg_0_127_0_0_i_17_n_0),
        .I3(\pal_issue_reg_n_0_[4] ),
        .I4(palette_s0_mem_reg_0_127_0_0_i_18_n_0),
        .O(\pal_issue_reg[5]_0 [2]));
  LUT5 #(
    .INIT(32'h22300030)) 
    palette_s0_mem_reg_0_127_12_12_i_6
       (.I0(spr_att_vdp_dout[52]),
        .I1(\pal_issue_reg_n_0_[5] ),
        .I2(palette_s0_mem_reg_0_127_0_0_i_19_n_0),
        .I3(\pal_issue_reg_n_0_[4] ),
        .I4(palette_s0_mem_reg_0_127_0_0_i_20_n_0),
        .O(\pal_issue_reg[5]_0 [1]));
  LUT5 #(
    .INIT(32'h22300030)) 
    palette_s0_mem_reg_0_127_12_12_i_7
       (.I0(spr_att_vdp_dout[52]),
        .I1(\pal_issue_reg_n_0_[5] ),
        .I2(palette_s0_mem_reg_0_127_0_0_i_21_n_0),
        .I3(\pal_issue_reg_n_0_[4] ),
        .I4(palette_s0_mem_reg_0_127_0_0_i_22_n_0),
        .O(\pal_issue_reg[5]_0 [0]));
  LUT5 #(
    .INIT(32'h22300030)) 
    palette_s0_mem_reg_0_127_6_6_i_1
       (.I0(spr_att_vdp_dout[52]),
        .I1(\pal_issue_reg_n_0_[5] ),
        .I2(palette_s0_mem_reg_0_127_0_0_i_9_n_0),
        .I3(\pal_issue_reg_n_0_[4] ),
        .I4(palette_s0_mem_reg_0_127_0_0_i_10_n_0),
        .O(DPRA[6]));
  LUT5 #(
    .INIT(32'h22300030)) 
    palette_s0_mem_reg_0_127_6_6_i_2
       (.I0(spr_att_vdp_dout[52]),
        .I1(\pal_issue_reg_n_0_[5] ),
        .I2(palette_s0_mem_reg_0_127_0_0_i_11_n_0),
        .I3(\pal_issue_reg_n_0_[4] ),
        .I4(palette_s0_mem_reg_0_127_0_0_i_12_n_0),
        .O(DPRA[5]));
  LUT5 #(
    .INIT(32'h22300030)) 
    palette_s0_mem_reg_0_127_6_6_i_3
       (.I0(spr_att_vdp_dout[52]),
        .I1(\pal_issue_reg_n_0_[5] ),
        .I2(palette_s0_mem_reg_0_127_0_0_i_13_n_0),
        .I3(\pal_issue_reg_n_0_[4] ),
        .I4(palette_s0_mem_reg_0_127_0_0_i_14_n_0),
        .O(DPRA[4]));
  LUT5 #(
    .INIT(32'h22300030)) 
    palette_s0_mem_reg_0_127_6_6_i_4
       (.I0(spr_att_vdp_dout[52]),
        .I1(\pal_issue_reg_n_0_[5] ),
        .I2(palette_s0_mem_reg_0_127_0_0_i_15_n_0),
        .I3(\pal_issue_reg_n_0_[4] ),
        .I4(palette_s0_mem_reg_0_127_0_0_i_16_n_0),
        .O(DPRA[3]));
  LUT5 #(
    .INIT(32'h22300030)) 
    palette_s0_mem_reg_0_127_6_6_i_5
       (.I0(spr_att_vdp_dout[52]),
        .I1(\pal_issue_reg_n_0_[5] ),
        .I2(palette_s0_mem_reg_0_127_0_0_i_17_n_0),
        .I3(\pal_issue_reg_n_0_[4] ),
        .I4(palette_s0_mem_reg_0_127_0_0_i_18_n_0),
        .O(DPRA[2]));
  LUT5 #(
    .INIT(32'h22300030)) 
    palette_s0_mem_reg_0_127_6_6_i_6
       (.I0(spr_att_vdp_dout[52]),
        .I1(\pal_issue_reg_n_0_[5] ),
        .I2(palette_s0_mem_reg_0_127_0_0_i_19_n_0),
        .I3(\pal_issue_reg_n_0_[4] ),
        .I4(palette_s0_mem_reg_0_127_0_0_i_20_n_0),
        .O(DPRA[1]));
  LUT5 #(
    .INIT(32'h22300030)) 
    palette_s0_mem_reg_0_127_6_6_i_7
       (.I0(spr_att_vdp_dout[52]),
        .I1(\pal_issue_reg_n_0_[5] ),
        .I2(palette_s0_mem_reg_0_127_0_0_i_21_n_0),
        .I3(\pal_issue_reg_n_0_[4] ),
        .I4(palette_s0_mem_reg_0_127_0_0_i_22_n_0),
        .O(DPRA[0]));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "VDP_sprite_gen/row_buf_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M row_buf_reg_r1_0_31_0_5
       (.ADDRA({row_buf_reg_r1_0_31_0_5_i_2_n_4,row_buf_reg_r1_0_31_0_5_i_2_n_5,row_buf_reg_r1_0_31_0_5_i_2_n_6,row_buf_reg_r1_0_31_0_5_i_2_n_7,line_off__0[0]}),
        .ADDRB({row_buf_reg_r1_0_31_0_5_i_2_n_4,row_buf_reg_r1_0_31_0_5_i_2_n_5,row_buf_reg_r1_0_31_0_5_i_2_n_6,row_buf_reg_r1_0_31_0_5_i_2_n_7,line_off__0[0]}),
        .ADDRC({row_buf_reg_r1_0_31_0_5_i_2_n_4,row_buf_reg_r1_0_31_0_5_i_2_n_5,row_buf_reg_r1_0_31_0_5_i_2_n_6,row_buf_reg_r1_0_31_0_5_i_2_n_7,line_off__0[0]}),
        .ADDRD(pal_capture),
        .DIA(s0_palette_data[1:0]),
        .DIB(s0_palette_data[3:2]),
        .DIC(s0_palette_data[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(line_we2[1:0]),
        .DOB(line_we2[3:2]),
        .DOC(line_we2[5:4]),
        .DOD(NLW_row_buf_reg_r1_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(s_axi_aclk),
        .WE(p_0_in));
  LUT2 #(
    .INIT(4'h8)) 
    row_buf_reg_r1_0_31_0_5_i_1
       (.I0(pal_data_valid_reg_n_0),
        .I1(row_buf),
        .O(p_0_in));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 row_buf_reg_r1_0_31_0_5_i_2
       (.CI(1'b0),
        .CO({row_buf_reg_r1_0_31_0_5_i_2_n_0,row_buf_reg_r1_0_31_0_5_i_2_n_1,row_buf_reg_r1_0_31_0_5_i_2_n_2,row_buf_reg_r1_0_31_0_5_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({\line_word_reg_n_0_[2] ,\line_word_reg_n_0_[1] ,\line_word_reg_n_0_[0] ,1'b0}),
        .O({row_buf_reg_r1_0_31_0_5_i_2_n_4,row_buf_reg_r1_0_31_0_5_i_2_n_5,row_buf_reg_r1_0_31_0_5_i_2_n_6,row_buf_reg_r1_0_31_0_5_i_2_n_7}),
        .S({row_buf_reg_r1_0_31_0_5_i_3_n_0,row_buf_reg_r1_0_31_0_5_i_4_n_0,row_buf_reg_r1_0_31_0_5_i_5_n_0,row_buf_reg_r1_0_31_0_5_i_6_n_0}));
  LUT3 #(
    .INIT(8'h56)) 
    row_buf_reg_r1_0_31_0_5_i_3
       (.I0(\line_word_reg_n_0_[2] ),
        .I1(line_off__0[0]),
        .I2(line_off__0[1]),
        .O(row_buf_reg_r1_0_31_0_5_i_3_n_0));
  LUT3 #(
    .INIT(8'h56)) 
    row_buf_reg_r1_0_31_0_5_i_4
       (.I0(\line_word_reg_n_0_[1] ),
        .I1(line_off__0[0]),
        .I2(line_off__0[1]),
        .O(row_buf_reg_r1_0_31_0_5_i_4_n_0));
  LUT3 #(
    .INIT(8'h56)) 
    row_buf_reg_r1_0_31_0_5_i_5
       (.I0(\line_word_reg_n_0_[0] ),
        .I1(line_off__0[0]),
        .I2(line_off__0[1]),
        .O(row_buf_reg_r1_0_31_0_5_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    row_buf_reg_r1_0_31_0_5_i_6
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(row_buf_reg_r1_0_31_0_5_i_6_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "VDP_sprite_gen/row_buf_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "15" *) 
  RAM32M row_buf_reg_r1_0_31_12_15
       (.ADDRA({row_buf_reg_r1_0_31_0_5_i_2_n_4,row_buf_reg_r1_0_31_0_5_i_2_n_5,row_buf_reg_r1_0_31_0_5_i_2_n_6,row_buf_reg_r1_0_31_0_5_i_2_n_7,line_off__0[0]}),
        .ADDRB({row_buf_reg_r1_0_31_0_5_i_2_n_4,row_buf_reg_r1_0_31_0_5_i_2_n_5,row_buf_reg_r1_0_31_0_5_i_2_n_6,row_buf_reg_r1_0_31_0_5_i_2_n_7,line_off__0[0]}),
        .ADDRC({row_buf_reg_r1_0_31_0_5_i_2_n_4,row_buf_reg_r1_0_31_0_5_i_2_n_5,row_buf_reg_r1_0_31_0_5_i_2_n_6,row_buf_reg_r1_0_31_0_5_i_2_n_7,line_off__0[0]}),
        .ADDRD(pal_capture),
        .DIA(s0_palette_data[13:12]),
        .DIB(s0_palette_data[15:14]),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(line_we2[13:12]),
        .DOB(line_we2[15:14]),
        .DOC(NLW_row_buf_reg_r1_0_31_12_15_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_row_buf_reg_r1_0_31_12_15_DOD_UNCONNECTED[1:0]),
        .WCLK(s_axi_aclk),
        .WE(p_0_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "VDP_sprite_gen/row_buf_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M row_buf_reg_r1_0_31_6_11
       (.ADDRA({row_buf_reg_r1_0_31_0_5_i_2_n_4,row_buf_reg_r1_0_31_0_5_i_2_n_5,row_buf_reg_r1_0_31_0_5_i_2_n_6,row_buf_reg_r1_0_31_0_5_i_2_n_7,line_off__0[0]}),
        .ADDRB({row_buf_reg_r1_0_31_0_5_i_2_n_4,row_buf_reg_r1_0_31_0_5_i_2_n_5,row_buf_reg_r1_0_31_0_5_i_2_n_6,row_buf_reg_r1_0_31_0_5_i_2_n_7,line_off__0[0]}),
        .ADDRC({row_buf_reg_r1_0_31_0_5_i_2_n_4,row_buf_reg_r1_0_31_0_5_i_2_n_5,row_buf_reg_r1_0_31_0_5_i_2_n_6,row_buf_reg_r1_0_31_0_5_i_2_n_7,line_off__0[0]}),
        .ADDRD(pal_capture),
        .DIA(s0_palette_data[7:6]),
        .DIB(s0_palette_data[9:8]),
        .DIC(s0_palette_data[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(line_we2[7:6]),
        .DOB(line_we2[9:8]),
        .DOC(line_we2[11:10]),
        .DOD(NLW_row_buf_reg_r1_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(s_axi_aclk),
        .WE(p_0_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "VDP_sprite_gen/row_buf_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M row_buf_reg_r2_0_31_0_5
       (.ADDRA({row_buf_reg_r2_0_31_0_5_i_1_n_4,row_buf_reg_r2_0_31_0_5_i_1_n_5,row_buf_reg_r2_0_31_0_5_i_1_n_6,row_buf_reg_r2_0_31_0_5_i_1_n_7,row_buf_reg_r2_0_31_0_5_i_2_n_0}),
        .ADDRB({row_buf_reg_r2_0_31_0_5_i_1_n_4,row_buf_reg_r2_0_31_0_5_i_1_n_5,row_buf_reg_r2_0_31_0_5_i_1_n_6,row_buf_reg_r2_0_31_0_5_i_1_n_7,row_buf_reg_r2_0_31_0_5_i_2_n_0}),
        .ADDRC({row_buf_reg_r2_0_31_0_5_i_1_n_4,row_buf_reg_r2_0_31_0_5_i_1_n_5,row_buf_reg_r2_0_31_0_5_i_1_n_6,row_buf_reg_r2_0_31_0_5_i_1_n_7,row_buf_reg_r2_0_31_0_5_i_2_n_0}),
        .ADDRD(pal_capture),
        .DIA(s0_palette_data[1:0]),
        .DIB(s0_palette_data[3:2]),
        .DIC(s0_palette_data[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(line_we33_out__0[1:0]),
        .DOB(line_we33_out__0[3:2]),
        .DOC(line_we33_out__0[5:4]),
        .DOD(NLW_row_buf_reg_r2_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(s_axi_aclk),
        .WE(p_0_in));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 row_buf_reg_r2_0_31_0_5_i_1
       (.CI(1'b0),
        .CO({row_buf_reg_r2_0_31_0_5_i_1_n_0,row_buf_reg_r2_0_31_0_5_i_1_n_1,row_buf_reg_r2_0_31_0_5_i_1_n_2,row_buf_reg_r2_0_31_0_5_i_1_n_3}),
        .CYINIT(line_off__0[0]),
        .DI({\line_word_reg_n_0_[2] ,\line_word_reg_n_0_[1] ,\line_word_reg_n_0_[0] ,1'b0}),
        .O({row_buf_reg_r2_0_31_0_5_i_1_n_4,row_buf_reg_r2_0_31_0_5_i_1_n_5,row_buf_reg_r2_0_31_0_5_i_1_n_6,row_buf_reg_r2_0_31_0_5_i_1_n_7}),
        .S({row_buf_reg_r2_0_31_0_5_i_3_n_0,row_buf_reg_r2_0_31_0_5_i_4_n_0,row_buf_reg_r2_0_31_0_5_i_5_n_0,row_buf_reg_r2_0_31_0_5_i_6_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    row_buf_reg_r2_0_31_0_5_i_2
       (.I0(line_off__0[0]),
        .O(row_buf_reg_r2_0_31_0_5_i_2_n_0));
  LUT3 #(
    .INIT(8'h56)) 
    row_buf_reg_r2_0_31_0_5_i_3
       (.I0(\line_word_reg_n_0_[2] ),
        .I1(line_off__0[0]),
        .I2(line_off__0[1]),
        .O(row_buf_reg_r2_0_31_0_5_i_3_n_0));
  LUT3 #(
    .INIT(8'h56)) 
    row_buf_reg_r2_0_31_0_5_i_4
       (.I0(\line_word_reg_n_0_[1] ),
        .I1(line_off__0[0]),
        .I2(line_off__0[1]),
        .O(row_buf_reg_r2_0_31_0_5_i_4_n_0));
  LUT3 #(
    .INIT(8'h56)) 
    row_buf_reg_r2_0_31_0_5_i_5
       (.I0(\line_word_reg_n_0_[0] ),
        .I1(line_off__0[0]),
        .I2(line_off__0[1]),
        .O(row_buf_reg_r2_0_31_0_5_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    row_buf_reg_r2_0_31_0_5_i_6
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(row_buf_reg_r2_0_31_0_5_i_6_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "VDP_sprite_gen/row_buf_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "15" *) 
  RAM32M row_buf_reg_r2_0_31_12_15
       (.ADDRA({row_buf_reg_r2_0_31_0_5_i_1_n_4,row_buf_reg_r2_0_31_0_5_i_1_n_5,row_buf_reg_r2_0_31_0_5_i_1_n_6,row_buf_reg_r2_0_31_0_5_i_1_n_7,row_buf_reg_r2_0_31_0_5_i_2_n_0}),
        .ADDRB({row_buf_reg_r2_0_31_0_5_i_1_n_4,row_buf_reg_r2_0_31_0_5_i_1_n_5,row_buf_reg_r2_0_31_0_5_i_1_n_6,row_buf_reg_r2_0_31_0_5_i_1_n_7,row_buf_reg_r2_0_31_0_5_i_2_n_0}),
        .ADDRC({row_buf_reg_r2_0_31_0_5_i_1_n_4,row_buf_reg_r2_0_31_0_5_i_1_n_5,row_buf_reg_r2_0_31_0_5_i_1_n_6,row_buf_reg_r2_0_31_0_5_i_1_n_7,row_buf_reg_r2_0_31_0_5_i_2_n_0}),
        .ADDRD(pal_capture),
        .DIA(s0_palette_data[13:12]),
        .DIB(s0_palette_data[15:14]),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(line_we33_out[13:12]),
        .DOB(line_we33_out[15:14]),
        .DOC(NLW_row_buf_reg_r2_0_31_12_15_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_row_buf_reg_r2_0_31_12_15_DOD_UNCONNECTED[1:0]),
        .WCLK(s_axi_aclk),
        .WE(p_0_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "VDP_sprite_gen/row_buf_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M row_buf_reg_r2_0_31_6_11
       (.ADDRA({row_buf_reg_r2_0_31_0_5_i_1_n_4,row_buf_reg_r2_0_31_0_5_i_1_n_5,row_buf_reg_r2_0_31_0_5_i_1_n_6,row_buf_reg_r2_0_31_0_5_i_1_n_7,row_buf_reg_r2_0_31_0_5_i_2_n_0}),
        .ADDRB({row_buf_reg_r2_0_31_0_5_i_1_n_4,row_buf_reg_r2_0_31_0_5_i_1_n_5,row_buf_reg_r2_0_31_0_5_i_1_n_6,row_buf_reg_r2_0_31_0_5_i_1_n_7,row_buf_reg_r2_0_31_0_5_i_2_n_0}),
        .ADDRC({row_buf_reg_r2_0_31_0_5_i_1_n_4,row_buf_reg_r2_0_31_0_5_i_1_n_5,row_buf_reg_r2_0_31_0_5_i_1_n_6,row_buf_reg_r2_0_31_0_5_i_1_n_7,row_buf_reg_r2_0_31_0_5_i_2_n_0}),
        .ADDRD(pal_capture),
        .DIA(s0_palette_data[7:6]),
        .DIB(s0_palette_data[9:8]),
        .DIC(s0_palette_data[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(line_we33_out__0[7:6]),
        .DOB(line_we33_out__0[9:8]),
        .DOC(line_we33_out__0[11:10]),
        .DOD(NLW_row_buf_reg_r2_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(s_axi_aclk),
        .WE(p_0_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "VDP_sprite_gen/row_buf_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M row_buf_reg_r3_0_31_0_5
       (.ADDRA({row_buf_reg_r3_0_31_0_5_i_1_n_4,row_buf_reg_r3_0_31_0_5_i_1_n_5,row_buf_reg_r3_0_31_0_5_i_1_n_6,row_buf_reg_r3_0_31_0_5_i_1_n_7,row_buf_reg_r2_0_31_0_5_i_2_n_0}),
        .ADDRB({row_buf_reg_r3_0_31_0_5_i_1_n_4,row_buf_reg_r3_0_31_0_5_i_1_n_5,row_buf_reg_r3_0_31_0_5_i_1_n_6,row_buf_reg_r3_0_31_0_5_i_1_n_7,row_buf_reg_r2_0_31_0_5_i_2_n_0}),
        .ADDRC({row_buf_reg_r3_0_31_0_5_i_1_n_4,row_buf_reg_r3_0_31_0_5_i_1_n_5,row_buf_reg_r3_0_31_0_5_i_1_n_6,row_buf_reg_r3_0_31_0_5_i_1_n_7,row_buf_reg_r2_0_31_0_5_i_2_n_0}),
        .ADDRD(pal_capture),
        .DIA(s0_palette_data[1:0]),
        .DIB(s0_palette_data[3:2]),
        .DIC(s0_palette_data[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(line_we30_out[1:0]),
        .DOB(line_we30_out[3:2]),
        .DOC(line_we30_out[5:4]),
        .DOD(NLW_row_buf_reg_r3_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(s_axi_aclk),
        .WE(p_0_in));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 row_buf_reg_r3_0_31_0_5_i_1
       (.CI(1'b0),
        .CO({row_buf_reg_r3_0_31_0_5_i_1_n_0,row_buf_reg_r3_0_31_0_5_i_1_n_1,row_buf_reg_r3_0_31_0_5_i_1_n_2,row_buf_reg_r3_0_31_0_5_i_1_n_3}),
        .CYINIT(line_off__0[0]),
        .DI({\line_word_reg_n_0_[2] ,\line_word_reg_n_0_[1] ,\line_word_reg_n_0_[0] ,1'b1}),
        .O({row_buf_reg_r3_0_31_0_5_i_1_n_4,row_buf_reg_r3_0_31_0_5_i_1_n_5,row_buf_reg_r3_0_31_0_5_i_1_n_6,row_buf_reg_r3_0_31_0_5_i_1_n_7}),
        .S({row_buf_reg_r3_0_31_0_5_i_2_n_0,row_buf_reg_r3_0_31_0_5_i_3_n_0,row_buf_reg_r3_0_31_0_5_i_4_n_0,row_buf_reg_r3_0_31_0_5_i_5_n_0}));
  LUT3 #(
    .INIT(8'h56)) 
    row_buf_reg_r3_0_31_0_5_i_2
       (.I0(\line_word_reg_n_0_[2] ),
        .I1(line_off__0[0]),
        .I2(line_off__0[1]),
        .O(row_buf_reg_r3_0_31_0_5_i_2_n_0));
  LUT3 #(
    .INIT(8'h56)) 
    row_buf_reg_r3_0_31_0_5_i_3
       (.I0(\line_word_reg_n_0_[1] ),
        .I1(line_off__0[0]),
        .I2(line_off__0[1]),
        .O(row_buf_reg_r3_0_31_0_5_i_3_n_0));
  LUT3 #(
    .INIT(8'h56)) 
    row_buf_reg_r3_0_31_0_5_i_4
       (.I0(\line_word_reg_n_0_[0] ),
        .I1(line_off__0[0]),
        .I2(line_off__0[1]),
        .O(row_buf_reg_r3_0_31_0_5_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    row_buf_reg_r3_0_31_0_5_i_5
       (.I0(line_off__0[1]),
        .I1(line_off__0[0]),
        .O(row_buf_reg_r3_0_31_0_5_i_5_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "VDP_sprite_gen/row_buf_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "15" *) 
  RAM32M row_buf_reg_r3_0_31_12_15
       (.ADDRA({row_buf_reg_r3_0_31_0_5_i_1_n_4,row_buf_reg_r3_0_31_0_5_i_1_n_5,row_buf_reg_r3_0_31_0_5_i_1_n_6,row_buf_reg_r3_0_31_0_5_i_1_n_7,row_buf_reg_r2_0_31_0_5_i_2_n_0}),
        .ADDRB({row_buf_reg_r3_0_31_0_5_i_1_n_4,row_buf_reg_r3_0_31_0_5_i_1_n_5,row_buf_reg_r3_0_31_0_5_i_1_n_6,row_buf_reg_r3_0_31_0_5_i_1_n_7,row_buf_reg_r2_0_31_0_5_i_2_n_0}),
        .ADDRC({row_buf_reg_r3_0_31_0_5_i_1_n_4,row_buf_reg_r3_0_31_0_5_i_1_n_5,row_buf_reg_r3_0_31_0_5_i_1_n_6,row_buf_reg_r3_0_31_0_5_i_1_n_7,row_buf_reg_r2_0_31_0_5_i_2_n_0}),
        .ADDRD(pal_capture),
        .DIA(s0_palette_data[13:12]),
        .DIB(s0_palette_data[15:14]),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA({row_buf_reg_r3_0_31_12_15_n_0,row_buf_reg_r3_0_31_12_15_n_1}),
        .DOB({row_buf_reg_r3_0_31_12_15_n_2,row_buf_reg_r3_0_31_12_15_n_3}),
        .DOC(NLW_row_buf_reg_r3_0_31_12_15_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_row_buf_reg_r3_0_31_12_15_DOD_UNCONNECTED[1:0]),
        .WCLK(s_axi_aclk),
        .WE(p_0_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "VDP_sprite_gen/row_buf_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M row_buf_reg_r3_0_31_6_11
       (.ADDRA({row_buf_reg_r3_0_31_0_5_i_1_n_4,row_buf_reg_r3_0_31_0_5_i_1_n_5,row_buf_reg_r3_0_31_0_5_i_1_n_6,row_buf_reg_r3_0_31_0_5_i_1_n_7,row_buf_reg_r2_0_31_0_5_i_2_n_0}),
        .ADDRB({row_buf_reg_r3_0_31_0_5_i_1_n_4,row_buf_reg_r3_0_31_0_5_i_1_n_5,row_buf_reg_r3_0_31_0_5_i_1_n_6,row_buf_reg_r3_0_31_0_5_i_1_n_7,row_buf_reg_r2_0_31_0_5_i_2_n_0}),
        .ADDRC({row_buf_reg_r3_0_31_0_5_i_1_n_4,row_buf_reg_r3_0_31_0_5_i_1_n_5,row_buf_reg_r3_0_31_0_5_i_1_n_6,row_buf_reg_r3_0_31_0_5_i_1_n_7,row_buf_reg_r2_0_31_0_5_i_2_n_0}),
        .ADDRD(pal_capture),
        .DIA(s0_palette_data[7:6]),
        .DIB(s0_palette_data[9:8]),
        .DIC(s0_palette_data[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(line_we30_out[7:6]),
        .DOB(line_we30_out[9:8]),
        .DOC(line_we30_out[11:10]),
        .DOD(NLW_row_buf_reg_r3_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(s_axi_aclk),
        .WE(p_0_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "VDP_sprite_gen/row_buf_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M row_buf_reg_r4_0_31_0_5
       (.ADDRA({row_buf_reg_r4_0_31_0_5_i_1_n_7,row_buf_reg_r4_0_31_0_5_i_2_n_4,row_buf_reg_r4_0_31_0_5_i_2_n_5,row_buf_reg_r4_0_31_0_5_i_2_n_6,row_buf_reg_r4_0_31_0_5_i_2_n_7}),
        .ADDRB({row_buf_reg_r4_0_31_0_5_i_1_n_7,row_buf_reg_r4_0_31_0_5_i_2_n_4,row_buf_reg_r4_0_31_0_5_i_2_n_5,row_buf_reg_r4_0_31_0_5_i_2_n_6,row_buf_reg_r4_0_31_0_5_i_2_n_7}),
        .ADDRC({row_buf_reg_r4_0_31_0_5_i_1_n_7,row_buf_reg_r4_0_31_0_5_i_2_n_4,row_buf_reg_r4_0_31_0_5_i_2_n_5,row_buf_reg_r4_0_31_0_5_i_2_n_6,row_buf_reg_r4_0_31_0_5_i_2_n_7}),
        .ADDRD(pal_capture),
        .DIA(s0_palette_data[1:0]),
        .DIB(s0_palette_data[3:2]),
        .DIC(s0_palette_data[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(line_we36_out__0[1:0]),
        .DOB(line_we36_out__0[3:2]),
        .DOC(line_we36_out__0[5:4]),
        .DOD(NLW_row_buf_reg_r4_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(s_axi_aclk),
        .WE(p_0_in));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 row_buf_reg_r4_0_31_0_5_i_1
       (.CI(row_buf_reg_r4_0_31_0_5_i_2_n_0),
        .CO({row_buf_reg_r4_0_31_0_5_i_1_n_0,row_buf_reg_r4_0_31_0_5_i_1_n_1,row_buf_reg_r4_0_31_0_5_i_1_n_2,row_buf_reg_r4_0_31_0_5_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\line_word_reg_n_0_[3] ,\line_word_reg_n_0_[2] }),
        .O({row_buf_reg_r4_0_31_0_5_i_1_n_4,row_buf_reg_r4_0_31_0_5_i_1_n_5,row_buf_reg_r4_0_31_0_5_i_1_n_6,row_buf_reg_r4_0_31_0_5_i_1_n_7}),
        .S({row_buf_reg_r4_0_31_0_5_i_3_n_0,row_buf_reg_r4_0_31_0_5_i_4_n_0,row_buf_reg_r4_0_31_0_5_i_5_n_0,row_buf_reg_r4_0_31_0_5_i_6_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 row_buf_reg_r4_0_31_0_5_i_2
       (.CI(1'b0),
        .CO({row_buf_reg_r4_0_31_0_5_i_2_n_0,row_buf_reg_r4_0_31_0_5_i_2_n_1,row_buf_reg_r4_0_31_0_5_i_2_n_2,row_buf_reg_r4_0_31_0_5_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({\line_word_reg_n_0_[1] ,\line_word_reg_n_0_[0] ,1'b1,1'b0}),
        .O({row_buf_reg_r4_0_31_0_5_i_2_n_4,row_buf_reg_r4_0_31_0_5_i_2_n_5,row_buf_reg_r4_0_31_0_5_i_2_n_6,row_buf_reg_r4_0_31_0_5_i_2_n_7}),
        .S({row_buf_reg_r4_0_31_0_5_i_7_n_0,row_buf_reg_r4_0_31_0_5_i_8_n_0,row_buf_reg_r4_0_31_0_5_i_9_n_0,line_off__0[0]}));
  LUT2 #(
    .INIT(4'hE)) 
    row_buf_reg_r4_0_31_0_5_i_3
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(row_buf_reg_r4_0_31_0_5_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    row_buf_reg_r4_0_31_0_5_i_4
       (.I0(line_off__0[0]),
        .I1(line_off__0[1]),
        .O(row_buf_reg_r4_0_31_0_5_i_4_n_0));
  LUT3 #(
    .INIT(8'h56)) 
    row_buf_reg_r4_0_31_0_5_i_5
       (.I0(\line_word_reg_n_0_[3] ),
        .I1(line_off__0[0]),
        .I2(line_off__0[1]),
        .O(row_buf_reg_r4_0_31_0_5_i_5_n_0));
  LUT3 #(
    .INIT(8'h56)) 
    row_buf_reg_r4_0_31_0_5_i_6
       (.I0(\line_word_reg_n_0_[2] ),
        .I1(line_off__0[0]),
        .I2(line_off__0[1]),
        .O(row_buf_reg_r4_0_31_0_5_i_6_n_0));
  LUT3 #(
    .INIT(8'h56)) 
    row_buf_reg_r4_0_31_0_5_i_7
       (.I0(\line_word_reg_n_0_[1] ),
        .I1(line_off__0[0]),
        .I2(line_off__0[1]),
        .O(row_buf_reg_r4_0_31_0_5_i_7_n_0));
  LUT3 #(
    .INIT(8'h56)) 
    row_buf_reg_r4_0_31_0_5_i_8
       (.I0(\line_word_reg_n_0_[0] ),
        .I1(line_off__0[0]),
        .I2(line_off__0[1]),
        .O(row_buf_reg_r4_0_31_0_5_i_8_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    row_buf_reg_r4_0_31_0_5_i_9
       (.I0(line_off__0[1]),
        .I1(line_off__0[0]),
        .O(row_buf_reg_r4_0_31_0_5_i_9_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "VDP_sprite_gen/row_buf_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "15" *) 
  RAM32M row_buf_reg_r4_0_31_12_15
       (.ADDRA({row_buf_reg_r4_0_31_0_5_i_1_n_7,row_buf_reg_r4_0_31_0_5_i_2_n_4,row_buf_reg_r4_0_31_0_5_i_2_n_5,row_buf_reg_r4_0_31_0_5_i_2_n_6,row_buf_reg_r4_0_31_0_5_i_2_n_7}),
        .ADDRB({row_buf_reg_r4_0_31_0_5_i_1_n_7,row_buf_reg_r4_0_31_0_5_i_2_n_4,row_buf_reg_r4_0_31_0_5_i_2_n_5,row_buf_reg_r4_0_31_0_5_i_2_n_6,row_buf_reg_r4_0_31_0_5_i_2_n_7}),
        .ADDRC({row_buf_reg_r4_0_31_0_5_i_1_n_7,row_buf_reg_r4_0_31_0_5_i_2_n_4,row_buf_reg_r4_0_31_0_5_i_2_n_5,row_buf_reg_r4_0_31_0_5_i_2_n_6,row_buf_reg_r4_0_31_0_5_i_2_n_7}),
        .ADDRD(pal_capture),
        .DIA(s0_palette_data[13:12]),
        .DIB(s0_palette_data[15:14]),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(line_we36_out[13:12]),
        .DOB(line_we36_out[15:14]),
        .DOC(NLW_row_buf_reg_r4_0_31_12_15_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_row_buf_reg_r4_0_31_12_15_DOD_UNCONNECTED[1:0]),
        .WCLK(s_axi_aclk),
        .WE(p_0_in));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "512" *) 
  (* RTL_RAM_NAME = "VDP_sprite_gen/row_buf_reg" *) 
  (* RTL_RAM_STYLE = "auto" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M row_buf_reg_r4_0_31_6_11
       (.ADDRA({row_buf_reg_r4_0_31_0_5_i_1_n_7,row_buf_reg_r4_0_31_0_5_i_2_n_4,row_buf_reg_r4_0_31_0_5_i_2_n_5,row_buf_reg_r4_0_31_0_5_i_2_n_6,row_buf_reg_r4_0_31_0_5_i_2_n_7}),
        .ADDRB({row_buf_reg_r4_0_31_0_5_i_1_n_7,row_buf_reg_r4_0_31_0_5_i_2_n_4,row_buf_reg_r4_0_31_0_5_i_2_n_5,row_buf_reg_r4_0_31_0_5_i_2_n_6,row_buf_reg_r4_0_31_0_5_i_2_n_7}),
        .ADDRC({row_buf_reg_r4_0_31_0_5_i_1_n_7,row_buf_reg_r4_0_31_0_5_i_2_n_4,row_buf_reg_r4_0_31_0_5_i_2_n_5,row_buf_reg_r4_0_31_0_5_i_2_n_6,row_buf_reg_r4_0_31_0_5_i_2_n_7}),
        .ADDRD(pal_capture),
        .DIA(s0_palette_data[7:6]),
        .DIB(s0_palette_data[9:8]),
        .DIC(s0_palette_data[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(line_we36_out__0[7:6]),
        .DOB(line_we36_out__0[9:8]),
        .DOC(line_we36_out__0[11:10]),
        .DOD(NLW_row_buf_reg_r4_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(s_axi_aclk),
        .WE(p_0_in));
  LUT6 #(
    .INIT(64'hFFFF8C00DC008C00)) 
    \row_index[0][0]_i_1 
       (.I0(spr_att_vdp_dout[52]),
        .I1(spr_data_vdp_dout[0]),
        .I2(spr_att_vdp_dout[50]),
        .I3(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I4(spr_data_vdp_dout[120]),
        .I5(pal_issue0),
        .O(\row_index[0][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8C00DC008C00)) 
    \row_index[0][1]_i_1 
       (.I0(spr_att_vdp_dout[52]),
        .I1(spr_data_vdp_dout[1]),
        .I2(spr_att_vdp_dout[50]),
        .I3(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I4(spr_data_vdp_dout[121]),
        .I5(pal_issue0),
        .O(\row_index[0][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8C00DC008C00)) 
    \row_index[0][2]_i_1 
       (.I0(spr_att_vdp_dout[52]),
        .I1(spr_data_vdp_dout[2]),
        .I2(spr_att_vdp_dout[50]),
        .I3(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I4(spr_data_vdp_dout[122]),
        .I5(pal_issue0),
        .O(\row_index[0][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8C00DC008C00)) 
    \row_index[0][3]_i_1 
       (.I0(spr_att_vdp_dout[52]),
        .I1(spr_data_vdp_dout[3]),
        .I2(spr_att_vdp_dout[50]),
        .I3(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I4(spr_data_vdp_dout[123]),
        .I5(pal_issue0),
        .O(\row_index[0][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8C00DC008C00)) 
    \row_index[0][4]_i_1 
       (.I0(spr_att_vdp_dout[52]),
        .I1(spr_data_vdp_dout[4]),
        .I2(spr_att_vdp_dout[50]),
        .I3(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I4(spr_data_vdp_dout[124]),
        .I5(pal_issue0),
        .O(\row_index[0][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8C00DC008C00)) 
    \row_index[0][5]_i_1 
       (.I0(spr_att_vdp_dout[52]),
        .I1(spr_data_vdp_dout[5]),
        .I2(spr_att_vdp_dout[50]),
        .I3(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I4(spr_data_vdp_dout[125]),
        .I5(pal_issue0),
        .O(\row_index[0][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8C00DC008C00)) 
    \row_index[0][6]_i_1 
       (.I0(spr_att_vdp_dout[52]),
        .I1(spr_data_vdp_dout[6]),
        .I2(spr_att_vdp_dout[50]),
        .I3(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I4(spr_data_vdp_dout[126]),
        .I5(pal_issue0),
        .O(\row_index[0][6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFC4C)) 
    \row_index[0][7]_i_1 
       (.I0(spr_att_vdp_dout[52]),
        .I1(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I2(spr_att_vdp_dout[50]),
        .I3(pal_issue0),
        .O(\row_index[0][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8C00DC008C00)) 
    \row_index[0][7]_i_2 
       (.I0(spr_att_vdp_dout[52]),
        .I1(spr_data_vdp_dout[7]),
        .I2(spr_att_vdp_dout[50]),
        .I3(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I4(spr_data_vdp_dout[127]),
        .I5(pal_issue0),
        .O(\row_index[0][7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF20E020)) 
    \row_index[10][0]_i_1 
       (.I0(spr_data_vdp_dout[80]),
        .I1(spr_att_vdp_dout[50]),
        .I2(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I3(spr_data_vdp_dout[40]),
        .I4(pal_issue0),
        .O(\row_index[10][0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF20E020)) 
    \row_index[10][1]_i_1 
       (.I0(spr_data_vdp_dout[81]),
        .I1(spr_att_vdp_dout[50]),
        .I2(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I3(spr_data_vdp_dout[41]),
        .I4(pal_issue0),
        .O(\row_index[10][1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF20E020)) 
    \row_index[10][2]_i_1 
       (.I0(spr_data_vdp_dout[82]),
        .I1(spr_att_vdp_dout[50]),
        .I2(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I3(spr_data_vdp_dout[42]),
        .I4(pal_issue0),
        .O(\row_index[10][2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF20E020)) 
    \row_index[10][3]_i_1 
       (.I0(spr_data_vdp_dout[83]),
        .I1(spr_att_vdp_dout[50]),
        .I2(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I3(spr_data_vdp_dout[43]),
        .I4(pal_issue0),
        .O(\row_index[10][3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF20E020)) 
    \row_index[10][4]_i_1 
       (.I0(spr_data_vdp_dout[84]),
        .I1(spr_att_vdp_dout[50]),
        .I2(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I3(spr_data_vdp_dout[44]),
        .I4(pal_issue0),
        .O(\row_index[10][4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF20E020)) 
    \row_index[10][5]_i_1 
       (.I0(spr_data_vdp_dout[85]),
        .I1(spr_att_vdp_dout[50]),
        .I2(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I3(spr_data_vdp_dout[45]),
        .I4(pal_issue0),
        .O(\row_index[10][5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF20E020)) 
    \row_index[10][6]_i_1 
       (.I0(spr_data_vdp_dout[86]),
        .I1(spr_att_vdp_dout[50]),
        .I2(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I3(spr_data_vdp_dout[46]),
        .I4(pal_issue0),
        .O(\row_index[10][6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF20E020)) 
    \row_index[10][7]_i_1 
       (.I0(spr_data_vdp_dout[87]),
        .I1(spr_att_vdp_dout[50]),
        .I2(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I3(spr_data_vdp_dout[47]),
        .I4(pal_issue0),
        .O(\row_index[10][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF20E020)) 
    \row_index[11][0]_i_1 
       (.I0(spr_data_vdp_dout[88]),
        .I1(spr_att_vdp_dout[50]),
        .I2(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I3(spr_data_vdp_dout[32]),
        .I4(pal_issue0),
        .O(\row_index[11][0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF20E020)) 
    \row_index[11][1]_i_1 
       (.I0(spr_data_vdp_dout[89]),
        .I1(spr_att_vdp_dout[50]),
        .I2(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I3(spr_data_vdp_dout[33]),
        .I4(pal_issue0),
        .O(\row_index[11][1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF20E020)) 
    \row_index[11][2]_i_1 
       (.I0(spr_data_vdp_dout[90]),
        .I1(spr_att_vdp_dout[50]),
        .I2(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I3(spr_data_vdp_dout[34]),
        .I4(pal_issue0),
        .O(\row_index[11][2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF20E020)) 
    \row_index[11][3]_i_1 
       (.I0(spr_data_vdp_dout[91]),
        .I1(spr_att_vdp_dout[50]),
        .I2(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I3(spr_data_vdp_dout[35]),
        .I4(pal_issue0),
        .O(\row_index[11][3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF20E020)) 
    \row_index[11][4]_i_1 
       (.I0(spr_data_vdp_dout[92]),
        .I1(spr_att_vdp_dout[50]),
        .I2(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I3(spr_data_vdp_dout[36]),
        .I4(pal_issue0),
        .O(\row_index[11][4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF20E020)) 
    \row_index[11][5]_i_1 
       (.I0(spr_data_vdp_dout[93]),
        .I1(spr_att_vdp_dout[50]),
        .I2(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I3(spr_data_vdp_dout[37]),
        .I4(pal_issue0),
        .O(\row_index[11][5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF20E020)) 
    \row_index[11][6]_i_1 
       (.I0(spr_data_vdp_dout[94]),
        .I1(spr_att_vdp_dout[50]),
        .I2(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I3(spr_data_vdp_dout[38]),
        .I4(pal_issue0),
        .O(\row_index[11][6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF20E020)) 
    \row_index[11][7]_i_1 
       (.I0(spr_data_vdp_dout[95]),
        .I1(spr_att_vdp_dout[50]),
        .I2(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I3(spr_data_vdp_dout[39]),
        .I4(pal_issue0),
        .O(\row_index[11][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF20E020)) 
    \row_index[12][0]_i_1 
       (.I0(spr_data_vdp_dout[96]),
        .I1(spr_att_vdp_dout[50]),
        .I2(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I3(spr_data_vdp_dout[24]),
        .I4(pal_issue0),
        .O(\row_index[12][0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF20E020)) 
    \row_index[12][1]_i_1 
       (.I0(spr_data_vdp_dout[97]),
        .I1(spr_att_vdp_dout[50]),
        .I2(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I3(spr_data_vdp_dout[25]),
        .I4(pal_issue0),
        .O(\row_index[12][1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF20E020)) 
    \row_index[12][2]_i_1 
       (.I0(spr_data_vdp_dout[98]),
        .I1(spr_att_vdp_dout[50]),
        .I2(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I3(spr_data_vdp_dout[26]),
        .I4(pal_issue0),
        .O(\row_index[12][2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF20E020)) 
    \row_index[12][3]_i_1 
       (.I0(spr_data_vdp_dout[99]),
        .I1(spr_att_vdp_dout[50]),
        .I2(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I3(spr_data_vdp_dout[27]),
        .I4(pal_issue0),
        .O(\row_index[12][3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF20E020)) 
    \row_index[12][4]_i_1 
       (.I0(spr_data_vdp_dout[100]),
        .I1(spr_att_vdp_dout[50]),
        .I2(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I3(spr_data_vdp_dout[28]),
        .I4(pal_issue0),
        .O(\row_index[12][4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF20E020)) 
    \row_index[12][5]_i_1 
       (.I0(spr_data_vdp_dout[101]),
        .I1(spr_att_vdp_dout[50]),
        .I2(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I3(spr_data_vdp_dout[29]),
        .I4(pal_issue0),
        .O(\row_index[12][5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF20E020)) 
    \row_index[12][6]_i_1 
       (.I0(spr_data_vdp_dout[102]),
        .I1(spr_att_vdp_dout[50]),
        .I2(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I3(spr_data_vdp_dout[30]),
        .I4(pal_issue0),
        .O(\row_index[12][6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF20E020)) 
    \row_index[12][7]_i_1 
       (.I0(spr_data_vdp_dout[103]),
        .I1(spr_att_vdp_dout[50]),
        .I2(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I3(spr_data_vdp_dout[31]),
        .I4(pal_issue0),
        .O(\row_index[12][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF20E020)) 
    \row_index[13][0]_i_1 
       (.I0(spr_data_vdp_dout[104]),
        .I1(spr_att_vdp_dout[50]),
        .I2(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I3(spr_data_vdp_dout[16]),
        .I4(pal_issue0),
        .O(\row_index[13][0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF20E020)) 
    \row_index[13][1]_i_1 
       (.I0(spr_data_vdp_dout[105]),
        .I1(spr_att_vdp_dout[50]),
        .I2(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I3(spr_data_vdp_dout[17]),
        .I4(pal_issue0),
        .O(\row_index[13][1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF20E020)) 
    \row_index[13][2]_i_1 
       (.I0(spr_data_vdp_dout[106]),
        .I1(spr_att_vdp_dout[50]),
        .I2(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I3(spr_data_vdp_dout[18]),
        .I4(pal_issue0),
        .O(\row_index[13][2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF20E020)) 
    \row_index[13][3]_i_1 
       (.I0(spr_data_vdp_dout[107]),
        .I1(spr_att_vdp_dout[50]),
        .I2(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I3(spr_data_vdp_dout[19]),
        .I4(pal_issue0),
        .O(\row_index[13][3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF20E020)) 
    \row_index[13][4]_i_1 
       (.I0(spr_data_vdp_dout[108]),
        .I1(spr_att_vdp_dout[50]),
        .I2(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I3(spr_data_vdp_dout[20]),
        .I4(pal_issue0),
        .O(\row_index[13][4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF20E020)) 
    \row_index[13][5]_i_1 
       (.I0(spr_data_vdp_dout[109]),
        .I1(spr_att_vdp_dout[50]),
        .I2(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I3(spr_data_vdp_dout[21]),
        .I4(pal_issue0),
        .O(\row_index[13][5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF20E020)) 
    \row_index[13][6]_i_1 
       (.I0(spr_data_vdp_dout[110]),
        .I1(spr_att_vdp_dout[50]),
        .I2(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I3(spr_data_vdp_dout[22]),
        .I4(pal_issue0),
        .O(\row_index[13][6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF20E020)) 
    \row_index[13][7]_i_1 
       (.I0(spr_data_vdp_dout[111]),
        .I1(spr_att_vdp_dout[50]),
        .I2(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I3(spr_data_vdp_dout[23]),
        .I4(pal_issue0),
        .O(\row_index[13][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF20E020)) 
    \row_index[14][0]_i_1 
       (.I0(spr_data_vdp_dout[112]),
        .I1(spr_att_vdp_dout[50]),
        .I2(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I3(spr_data_vdp_dout[8]),
        .I4(pal_issue0),
        .O(\row_index[14][0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF20E020)) 
    \row_index[14][1]_i_1 
       (.I0(spr_data_vdp_dout[113]),
        .I1(spr_att_vdp_dout[50]),
        .I2(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I3(spr_data_vdp_dout[9]),
        .I4(pal_issue0),
        .O(\row_index[14][1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF20E020)) 
    \row_index[14][2]_i_1 
       (.I0(spr_data_vdp_dout[114]),
        .I1(spr_att_vdp_dout[50]),
        .I2(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I3(spr_data_vdp_dout[10]),
        .I4(pal_issue0),
        .O(\row_index[14][2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF20E020)) 
    \row_index[14][3]_i_1 
       (.I0(spr_data_vdp_dout[115]),
        .I1(spr_att_vdp_dout[50]),
        .I2(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I3(spr_data_vdp_dout[11]),
        .I4(pal_issue0),
        .O(\row_index[14][3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF20E020)) 
    \row_index[14][4]_i_1 
       (.I0(spr_data_vdp_dout[116]),
        .I1(spr_att_vdp_dout[50]),
        .I2(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I3(spr_data_vdp_dout[12]),
        .I4(pal_issue0),
        .O(\row_index[14][4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF20E020)) 
    \row_index[14][5]_i_1 
       (.I0(spr_data_vdp_dout[117]),
        .I1(spr_att_vdp_dout[50]),
        .I2(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I3(spr_data_vdp_dout[13]),
        .I4(pal_issue0),
        .O(\row_index[14][5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF20E020)) 
    \row_index[14][6]_i_1 
       (.I0(spr_data_vdp_dout[118]),
        .I1(spr_att_vdp_dout[50]),
        .I2(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I3(spr_data_vdp_dout[14]),
        .I4(pal_issue0),
        .O(\row_index[14][6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF20E020)) 
    \row_index[14][7]_i_1 
       (.I0(spr_data_vdp_dout[119]),
        .I1(spr_att_vdp_dout[50]),
        .I2(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I3(spr_data_vdp_dout[15]),
        .I4(pal_issue0),
        .O(\row_index[14][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF20E020)) 
    \row_index[15][0]_i_1 
       (.I0(spr_data_vdp_dout[120]),
        .I1(spr_att_vdp_dout[50]),
        .I2(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I3(spr_data_vdp_dout[0]),
        .I4(pal_issue0),
        .O(\row_index[15][0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF20E020)) 
    \row_index[15][1]_i_1 
       (.I0(spr_data_vdp_dout[121]),
        .I1(spr_att_vdp_dout[50]),
        .I2(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I3(spr_data_vdp_dout[1]),
        .I4(pal_issue0),
        .O(\row_index[15][1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF20E020)) 
    \row_index[15][2]_i_1 
       (.I0(spr_data_vdp_dout[122]),
        .I1(spr_att_vdp_dout[50]),
        .I2(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I3(spr_data_vdp_dout[2]),
        .I4(pal_issue0),
        .O(\row_index[15][2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF20E020)) 
    \row_index[15][3]_i_1 
       (.I0(spr_data_vdp_dout[123]),
        .I1(spr_att_vdp_dout[50]),
        .I2(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I3(spr_data_vdp_dout[3]),
        .I4(pal_issue0),
        .O(\row_index[15][3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF20E020)) 
    \row_index[15][4]_i_1 
       (.I0(spr_data_vdp_dout[124]),
        .I1(spr_att_vdp_dout[50]),
        .I2(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I3(spr_data_vdp_dout[4]),
        .I4(pal_issue0),
        .O(\row_index[15][4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF20E020)) 
    \row_index[15][5]_i_1 
       (.I0(spr_data_vdp_dout[125]),
        .I1(spr_att_vdp_dout[50]),
        .I2(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I3(spr_data_vdp_dout[5]),
        .I4(pal_issue0),
        .O(\row_index[15][5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF20E020)) 
    \row_index[15][6]_i_1 
       (.I0(spr_data_vdp_dout[126]),
        .I1(spr_att_vdp_dout[50]),
        .I2(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I3(spr_data_vdp_dout[6]),
        .I4(pal_issue0),
        .O(\row_index[15][6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF20E020)) 
    \row_index[15][7]_i_1 
       (.I0(spr_data_vdp_dout[127]),
        .I1(spr_att_vdp_dout[50]),
        .I2(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I3(spr_data_vdp_dout[7]),
        .I4(pal_issue0),
        .O(\row_index[15][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[16][0]_i_1 
       (.I0(spr_data_vdp_dout[120]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[0]),
        .I3(pal_issue0),
        .O(\row_index[16][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[16][1]_i_1 
       (.I0(spr_data_vdp_dout[121]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[1]),
        .I3(pal_issue0),
        .O(\row_index[16][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[16][2]_i_1 
       (.I0(spr_data_vdp_dout[122]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[2]),
        .I3(pal_issue0),
        .O(\row_index[16][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[16][3]_i_1 
       (.I0(spr_data_vdp_dout[123]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[3]),
        .I3(pal_issue0),
        .O(\row_index[16][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[16][4]_i_1 
       (.I0(spr_data_vdp_dout[124]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[4]),
        .I3(pal_issue0),
        .O(\row_index[16][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[16][5]_i_1 
       (.I0(spr_data_vdp_dout[125]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[5]),
        .I3(pal_issue0),
        .O(\row_index[16][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[16][6]_i_1 
       (.I0(spr_data_vdp_dout[126]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[6]),
        .I3(pal_issue0),
        .O(\row_index[16][6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \row_index[16][7]_i_1 
       (.I0(spr_att_vdp_dout[52]),
        .I1(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I2(spr_att_vdp_dout[50]),
        .I3(pal_issue0),
        .O(\row_index[16][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[16][7]_i_2 
       (.I0(spr_data_vdp_dout[127]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[7]),
        .I3(pal_issue0),
        .O(\row_index[16][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[17][0]_i_1 
       (.I0(spr_data_vdp_dout[112]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[8]),
        .I3(pal_issue0),
        .O(\row_index[17][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[17][1]_i_1 
       (.I0(spr_data_vdp_dout[113]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[9]),
        .I3(pal_issue0),
        .O(\row_index[17][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[17][2]_i_1 
       (.I0(spr_data_vdp_dout[114]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[10]),
        .I3(pal_issue0),
        .O(\row_index[17][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[17][3]_i_1 
       (.I0(spr_data_vdp_dout[115]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[11]),
        .I3(pal_issue0),
        .O(\row_index[17][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[17][4]_i_1 
       (.I0(spr_data_vdp_dout[116]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[12]),
        .I3(pal_issue0),
        .O(\row_index[17][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[17][5]_i_1 
       (.I0(spr_data_vdp_dout[117]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[13]),
        .I3(pal_issue0),
        .O(\row_index[17][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[17][6]_i_1 
       (.I0(spr_data_vdp_dout[118]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[14]),
        .I3(pal_issue0),
        .O(\row_index[17][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[17][7]_i_1 
       (.I0(spr_data_vdp_dout[119]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[15]),
        .I3(pal_issue0),
        .O(\row_index[17][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[18][0]_i_1 
       (.I0(spr_data_vdp_dout[104]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[16]),
        .I3(pal_issue0),
        .O(\row_index[18][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[18][1]_i_1 
       (.I0(spr_data_vdp_dout[105]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[17]),
        .I3(pal_issue0),
        .O(\row_index[18][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[18][2]_i_1 
       (.I0(spr_data_vdp_dout[106]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[18]),
        .I3(pal_issue0),
        .O(\row_index[18][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[18][3]_i_1 
       (.I0(spr_data_vdp_dout[107]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[19]),
        .I3(pal_issue0),
        .O(\row_index[18][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[18][4]_i_1 
       (.I0(spr_data_vdp_dout[108]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[20]),
        .I3(pal_issue0),
        .O(\row_index[18][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[18][5]_i_1 
       (.I0(spr_data_vdp_dout[109]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[21]),
        .I3(pal_issue0),
        .O(\row_index[18][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[18][6]_i_1 
       (.I0(spr_data_vdp_dout[110]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[22]),
        .I3(pal_issue0),
        .O(\row_index[18][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[18][7]_i_1 
       (.I0(spr_data_vdp_dout[111]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[23]),
        .I3(pal_issue0),
        .O(\row_index[18][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[19][0]_i_1 
       (.I0(spr_data_vdp_dout[96]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[24]),
        .I3(pal_issue0),
        .O(\row_index[19][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[19][1]_i_1 
       (.I0(spr_data_vdp_dout[97]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[25]),
        .I3(pal_issue0),
        .O(\row_index[19][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[19][2]_i_1 
       (.I0(spr_data_vdp_dout[98]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[26]),
        .I3(pal_issue0),
        .O(\row_index[19][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[19][3]_i_1 
       (.I0(spr_data_vdp_dout[99]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[27]),
        .I3(pal_issue0),
        .O(\row_index[19][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[19][4]_i_1 
       (.I0(spr_data_vdp_dout[100]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[28]),
        .I3(pal_issue0),
        .O(\row_index[19][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[19][5]_i_1 
       (.I0(spr_data_vdp_dout[101]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[29]),
        .I3(pal_issue0),
        .O(\row_index[19][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[19][6]_i_1 
       (.I0(spr_data_vdp_dout[102]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[30]),
        .I3(pal_issue0),
        .O(\row_index[19][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[19][7]_i_1 
       (.I0(spr_data_vdp_dout[103]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[31]),
        .I3(pal_issue0),
        .O(\row_index[19][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8C00DC008C00)) 
    \row_index[1][0]_i_1 
       (.I0(spr_att_vdp_dout[52]),
        .I1(spr_data_vdp_dout[8]),
        .I2(spr_att_vdp_dout[50]),
        .I3(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I4(spr_data_vdp_dout[112]),
        .I5(pal_issue0),
        .O(\row_index[1][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8C00DC008C00)) 
    \row_index[1][1]_i_1 
       (.I0(spr_att_vdp_dout[52]),
        .I1(spr_data_vdp_dout[9]),
        .I2(spr_att_vdp_dout[50]),
        .I3(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I4(spr_data_vdp_dout[113]),
        .I5(pal_issue0),
        .O(\row_index[1][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8C00DC008C00)) 
    \row_index[1][2]_i_1 
       (.I0(spr_att_vdp_dout[52]),
        .I1(spr_data_vdp_dout[10]),
        .I2(spr_att_vdp_dout[50]),
        .I3(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I4(spr_data_vdp_dout[114]),
        .I5(pal_issue0),
        .O(\row_index[1][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8C00DC008C00)) 
    \row_index[1][3]_i_1 
       (.I0(spr_att_vdp_dout[52]),
        .I1(spr_data_vdp_dout[11]),
        .I2(spr_att_vdp_dout[50]),
        .I3(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I4(spr_data_vdp_dout[115]),
        .I5(pal_issue0),
        .O(\row_index[1][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8C00DC008C00)) 
    \row_index[1][4]_i_1 
       (.I0(spr_att_vdp_dout[52]),
        .I1(spr_data_vdp_dout[12]),
        .I2(spr_att_vdp_dout[50]),
        .I3(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I4(spr_data_vdp_dout[116]),
        .I5(pal_issue0),
        .O(\row_index[1][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8C00DC008C00)) 
    \row_index[1][5]_i_1 
       (.I0(spr_att_vdp_dout[52]),
        .I1(spr_data_vdp_dout[13]),
        .I2(spr_att_vdp_dout[50]),
        .I3(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I4(spr_data_vdp_dout[117]),
        .I5(pal_issue0),
        .O(\row_index[1][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8C00DC008C00)) 
    \row_index[1][6]_i_1 
       (.I0(spr_att_vdp_dout[52]),
        .I1(spr_data_vdp_dout[14]),
        .I2(spr_att_vdp_dout[50]),
        .I3(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I4(spr_data_vdp_dout[118]),
        .I5(pal_issue0),
        .O(\row_index[1][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8C00DC008C00)) 
    \row_index[1][7]_i_1 
       (.I0(spr_att_vdp_dout[52]),
        .I1(spr_data_vdp_dout[15]),
        .I2(spr_att_vdp_dout[50]),
        .I3(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I4(spr_data_vdp_dout[119]),
        .I5(pal_issue0),
        .O(\row_index[1][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[20][0]_i_1 
       (.I0(spr_data_vdp_dout[88]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[32]),
        .I3(pal_issue0),
        .O(\row_index[20][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[20][1]_i_1 
       (.I0(spr_data_vdp_dout[89]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[33]),
        .I3(pal_issue0),
        .O(\row_index[20][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[20][2]_i_1 
       (.I0(spr_data_vdp_dout[90]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[34]),
        .I3(pal_issue0),
        .O(\row_index[20][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[20][3]_i_1 
       (.I0(spr_data_vdp_dout[91]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[35]),
        .I3(pal_issue0),
        .O(\row_index[20][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[20][4]_i_1 
       (.I0(spr_data_vdp_dout[92]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[36]),
        .I3(pal_issue0),
        .O(\row_index[20][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[20][5]_i_1 
       (.I0(spr_data_vdp_dout[93]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[37]),
        .I3(pal_issue0),
        .O(\row_index[20][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[20][6]_i_1 
       (.I0(spr_data_vdp_dout[94]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[38]),
        .I3(pal_issue0),
        .O(\row_index[20][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[20][7]_i_1 
       (.I0(spr_data_vdp_dout[95]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[39]),
        .I3(pal_issue0),
        .O(\row_index[20][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[21][0]_i_1 
       (.I0(spr_data_vdp_dout[80]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[40]),
        .I3(pal_issue0),
        .O(\row_index[21][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[21][1]_i_1 
       (.I0(spr_data_vdp_dout[81]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[41]),
        .I3(pal_issue0),
        .O(\row_index[21][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[21][2]_i_1 
       (.I0(spr_data_vdp_dout[82]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[42]),
        .I3(pal_issue0),
        .O(\row_index[21][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[21][3]_i_1 
       (.I0(spr_data_vdp_dout[83]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[43]),
        .I3(pal_issue0),
        .O(\row_index[21][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[21][4]_i_1 
       (.I0(spr_data_vdp_dout[84]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[44]),
        .I3(pal_issue0),
        .O(\row_index[21][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[21][5]_i_1 
       (.I0(spr_data_vdp_dout[85]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[45]),
        .I3(pal_issue0),
        .O(\row_index[21][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[21][6]_i_1 
       (.I0(spr_data_vdp_dout[86]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[46]),
        .I3(pal_issue0),
        .O(\row_index[21][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[21][7]_i_1 
       (.I0(spr_data_vdp_dout[87]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[47]),
        .I3(pal_issue0),
        .O(\row_index[21][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[22][0]_i_1 
       (.I0(spr_data_vdp_dout[72]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[48]),
        .I3(pal_issue0),
        .O(\row_index[22][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[22][1]_i_1 
       (.I0(spr_data_vdp_dout[73]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[49]),
        .I3(pal_issue0),
        .O(\row_index[22][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[22][2]_i_1 
       (.I0(spr_data_vdp_dout[74]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[50]),
        .I3(pal_issue0),
        .O(\row_index[22][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[22][3]_i_1 
       (.I0(spr_data_vdp_dout[75]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[51]),
        .I3(pal_issue0),
        .O(\row_index[22][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[22][4]_i_1 
       (.I0(spr_data_vdp_dout[76]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[52]),
        .I3(pal_issue0),
        .O(\row_index[22][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[22][5]_i_1 
       (.I0(spr_data_vdp_dout[77]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[53]),
        .I3(pal_issue0),
        .O(\row_index[22][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[22][6]_i_1 
       (.I0(spr_data_vdp_dout[78]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[54]),
        .I3(pal_issue0),
        .O(\row_index[22][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[22][7]_i_1 
       (.I0(spr_data_vdp_dout[79]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[55]),
        .I3(pal_issue0),
        .O(\row_index[22][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[23][0]_i_1 
       (.I0(spr_data_vdp_dout[64]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[56]),
        .I3(pal_issue0),
        .O(\row_index[23][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[23][1]_i_1 
       (.I0(spr_data_vdp_dout[65]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[57]),
        .I3(pal_issue0),
        .O(\row_index[23][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[23][2]_i_1 
       (.I0(spr_data_vdp_dout[66]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[58]),
        .I3(pal_issue0),
        .O(\row_index[23][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[23][3]_i_1 
       (.I0(spr_data_vdp_dout[67]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[59]),
        .I3(pal_issue0),
        .O(\row_index[23][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[23][4]_i_1 
       (.I0(spr_data_vdp_dout[68]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[60]),
        .I3(pal_issue0),
        .O(\row_index[23][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[23][5]_i_1 
       (.I0(spr_data_vdp_dout[69]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[61]),
        .I3(pal_issue0),
        .O(\row_index[23][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[23][6]_i_1 
       (.I0(spr_data_vdp_dout[70]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[62]),
        .I3(pal_issue0),
        .O(\row_index[23][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[23][7]_i_1 
       (.I0(spr_data_vdp_dout[71]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[63]),
        .I3(pal_issue0),
        .O(\row_index[23][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[24][0]_i_1 
       (.I0(spr_data_vdp_dout[56]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[64]),
        .I3(pal_issue0),
        .O(\row_index[24][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[24][1]_i_1 
       (.I0(spr_data_vdp_dout[57]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[65]),
        .I3(pal_issue0),
        .O(\row_index[24][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[24][2]_i_1 
       (.I0(spr_data_vdp_dout[58]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[66]),
        .I3(pal_issue0),
        .O(\row_index[24][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[24][3]_i_1 
       (.I0(spr_data_vdp_dout[59]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[67]),
        .I3(pal_issue0),
        .O(\row_index[24][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[24][4]_i_1 
       (.I0(spr_data_vdp_dout[60]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[68]),
        .I3(pal_issue0),
        .O(\row_index[24][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[24][5]_i_1 
       (.I0(spr_data_vdp_dout[61]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[69]),
        .I3(pal_issue0),
        .O(\row_index[24][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[24][6]_i_1 
       (.I0(spr_data_vdp_dout[62]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[70]),
        .I3(pal_issue0),
        .O(\row_index[24][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[24][7]_i_1 
       (.I0(spr_data_vdp_dout[63]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[71]),
        .I3(pal_issue0),
        .O(\row_index[24][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[25][0]_i_1 
       (.I0(spr_data_vdp_dout[48]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[72]),
        .I3(pal_issue0),
        .O(\row_index[25][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[25][1]_i_1 
       (.I0(spr_data_vdp_dout[49]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[73]),
        .I3(pal_issue0),
        .O(\row_index[25][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[25][2]_i_1 
       (.I0(spr_data_vdp_dout[50]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[74]),
        .I3(pal_issue0),
        .O(\row_index[25][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[25][3]_i_1 
       (.I0(spr_data_vdp_dout[51]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[75]),
        .I3(pal_issue0),
        .O(\row_index[25][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[25][4]_i_1 
       (.I0(spr_data_vdp_dout[52]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[76]),
        .I3(pal_issue0),
        .O(\row_index[25][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[25][5]_i_1 
       (.I0(spr_data_vdp_dout[53]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[77]),
        .I3(pal_issue0),
        .O(\row_index[25][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[25][6]_i_1 
       (.I0(spr_data_vdp_dout[54]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[78]),
        .I3(pal_issue0),
        .O(\row_index[25][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[25][7]_i_1 
       (.I0(spr_data_vdp_dout[55]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[79]),
        .I3(pal_issue0),
        .O(\row_index[25][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[26][0]_i_1 
       (.I0(spr_data_vdp_dout[40]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[80]),
        .I3(pal_issue0),
        .O(\row_index[26][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[26][1]_i_1 
       (.I0(spr_data_vdp_dout[41]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[81]),
        .I3(pal_issue0),
        .O(\row_index[26][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[26][2]_i_1 
       (.I0(spr_data_vdp_dout[42]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[82]),
        .I3(pal_issue0),
        .O(\row_index[26][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[26][3]_i_1 
       (.I0(spr_data_vdp_dout[43]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[83]),
        .I3(pal_issue0),
        .O(\row_index[26][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[26][4]_i_1 
       (.I0(spr_data_vdp_dout[44]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[84]),
        .I3(pal_issue0),
        .O(\row_index[26][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[26][5]_i_1 
       (.I0(spr_data_vdp_dout[45]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[85]),
        .I3(pal_issue0),
        .O(\row_index[26][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[26][6]_i_1 
       (.I0(spr_data_vdp_dout[46]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[86]),
        .I3(pal_issue0),
        .O(\row_index[26][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[26][7]_i_1 
       (.I0(spr_data_vdp_dout[47]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[87]),
        .I3(pal_issue0),
        .O(\row_index[26][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[27][0]_i_1 
       (.I0(spr_data_vdp_dout[32]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[88]),
        .I3(pal_issue0),
        .O(\row_index[27][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[27][1]_i_1 
       (.I0(spr_data_vdp_dout[33]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[89]),
        .I3(pal_issue0),
        .O(\row_index[27][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[27][2]_i_1 
       (.I0(spr_data_vdp_dout[34]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[90]),
        .I3(pal_issue0),
        .O(\row_index[27][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[27][3]_i_1 
       (.I0(spr_data_vdp_dout[35]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[91]),
        .I3(pal_issue0),
        .O(\row_index[27][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[27][4]_i_1 
       (.I0(spr_data_vdp_dout[36]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[92]),
        .I3(pal_issue0),
        .O(\row_index[27][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[27][5]_i_1 
       (.I0(spr_data_vdp_dout[37]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[93]),
        .I3(pal_issue0),
        .O(\row_index[27][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[27][6]_i_1 
       (.I0(spr_data_vdp_dout[38]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[94]),
        .I3(pal_issue0),
        .O(\row_index[27][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[27][7]_i_1 
       (.I0(spr_data_vdp_dout[39]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[95]),
        .I3(pal_issue0),
        .O(\row_index[27][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[28][0]_i_1 
       (.I0(spr_data_vdp_dout[24]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[96]),
        .I3(pal_issue0),
        .O(\row_index[28][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[28][1]_i_1 
       (.I0(spr_data_vdp_dout[25]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[97]),
        .I3(pal_issue0),
        .O(\row_index[28][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[28][2]_i_1 
       (.I0(spr_data_vdp_dout[26]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[98]),
        .I3(pal_issue0),
        .O(\row_index[28][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[28][3]_i_1 
       (.I0(spr_data_vdp_dout[27]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[99]),
        .I3(pal_issue0),
        .O(\row_index[28][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[28][4]_i_1 
       (.I0(spr_data_vdp_dout[28]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[100]),
        .I3(pal_issue0),
        .O(\row_index[28][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[28][5]_i_1 
       (.I0(spr_data_vdp_dout[29]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[101]),
        .I3(pal_issue0),
        .O(\row_index[28][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[28][6]_i_1 
       (.I0(spr_data_vdp_dout[30]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[102]),
        .I3(pal_issue0),
        .O(\row_index[28][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[28][7]_i_1 
       (.I0(spr_data_vdp_dout[31]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[103]),
        .I3(pal_issue0),
        .O(\row_index[28][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[29][0]_i_1 
       (.I0(spr_data_vdp_dout[16]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[104]),
        .I3(pal_issue0),
        .O(\row_index[29][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[29][1]_i_1 
       (.I0(spr_data_vdp_dout[17]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[105]),
        .I3(pal_issue0),
        .O(\row_index[29][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[29][2]_i_1 
       (.I0(spr_data_vdp_dout[18]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[106]),
        .I3(pal_issue0),
        .O(\row_index[29][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[29][3]_i_1 
       (.I0(spr_data_vdp_dout[19]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[107]),
        .I3(pal_issue0),
        .O(\row_index[29][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[29][4]_i_1 
       (.I0(spr_data_vdp_dout[20]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[108]),
        .I3(pal_issue0),
        .O(\row_index[29][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[29][5]_i_1 
       (.I0(spr_data_vdp_dout[21]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[109]),
        .I3(pal_issue0),
        .O(\row_index[29][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[29][6]_i_1 
       (.I0(spr_data_vdp_dout[22]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[110]),
        .I3(pal_issue0),
        .O(\row_index[29][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[29][7]_i_1 
       (.I0(spr_data_vdp_dout[23]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[111]),
        .I3(pal_issue0),
        .O(\row_index[29][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8C00DC008C00)) 
    \row_index[2][0]_i_1 
       (.I0(spr_att_vdp_dout[52]),
        .I1(spr_data_vdp_dout[16]),
        .I2(spr_att_vdp_dout[50]),
        .I3(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I4(spr_data_vdp_dout[104]),
        .I5(pal_issue0),
        .O(\row_index[2][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8C00DC008C00)) 
    \row_index[2][1]_i_1 
       (.I0(spr_att_vdp_dout[52]),
        .I1(spr_data_vdp_dout[17]),
        .I2(spr_att_vdp_dout[50]),
        .I3(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I4(spr_data_vdp_dout[105]),
        .I5(pal_issue0),
        .O(\row_index[2][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8C00DC008C00)) 
    \row_index[2][2]_i_1 
       (.I0(spr_att_vdp_dout[52]),
        .I1(spr_data_vdp_dout[18]),
        .I2(spr_att_vdp_dout[50]),
        .I3(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I4(spr_data_vdp_dout[106]),
        .I5(pal_issue0),
        .O(\row_index[2][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8C00DC008C00)) 
    \row_index[2][3]_i_1 
       (.I0(spr_att_vdp_dout[52]),
        .I1(spr_data_vdp_dout[19]),
        .I2(spr_att_vdp_dout[50]),
        .I3(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I4(spr_data_vdp_dout[107]),
        .I5(pal_issue0),
        .O(\row_index[2][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8C00DC008C00)) 
    \row_index[2][4]_i_1 
       (.I0(spr_att_vdp_dout[52]),
        .I1(spr_data_vdp_dout[20]),
        .I2(spr_att_vdp_dout[50]),
        .I3(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I4(spr_data_vdp_dout[108]),
        .I5(pal_issue0),
        .O(\row_index[2][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8C00DC008C00)) 
    \row_index[2][5]_i_1 
       (.I0(spr_att_vdp_dout[52]),
        .I1(spr_data_vdp_dout[21]),
        .I2(spr_att_vdp_dout[50]),
        .I3(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I4(spr_data_vdp_dout[109]),
        .I5(pal_issue0),
        .O(\row_index[2][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8C00DC008C00)) 
    \row_index[2][6]_i_1 
       (.I0(spr_att_vdp_dout[52]),
        .I1(spr_data_vdp_dout[22]),
        .I2(spr_att_vdp_dout[50]),
        .I3(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I4(spr_data_vdp_dout[110]),
        .I5(pal_issue0),
        .O(\row_index[2][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8C00DC008C00)) 
    \row_index[2][7]_i_1 
       (.I0(spr_att_vdp_dout[52]),
        .I1(spr_data_vdp_dout[23]),
        .I2(spr_att_vdp_dout[50]),
        .I3(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I4(spr_data_vdp_dout[111]),
        .I5(pal_issue0),
        .O(\row_index[2][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[30][0]_i_1 
       (.I0(spr_data_vdp_dout[8]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[112]),
        .I3(pal_issue0),
        .O(\row_index[30][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[30][1]_i_1 
       (.I0(spr_data_vdp_dout[9]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[113]),
        .I3(pal_issue0),
        .O(\row_index[30][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[30][2]_i_1 
       (.I0(spr_data_vdp_dout[10]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[114]),
        .I3(pal_issue0),
        .O(\row_index[30][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[30][3]_i_1 
       (.I0(spr_data_vdp_dout[11]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[115]),
        .I3(pal_issue0),
        .O(\row_index[30][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[30][4]_i_1 
       (.I0(spr_data_vdp_dout[12]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[116]),
        .I3(pal_issue0),
        .O(\row_index[30][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[30][5]_i_1 
       (.I0(spr_data_vdp_dout[13]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[117]),
        .I3(pal_issue0),
        .O(\row_index[30][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[30][6]_i_1 
       (.I0(spr_data_vdp_dout[14]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[118]),
        .I3(pal_issue0),
        .O(\row_index[30][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[30][7]_i_1 
       (.I0(spr_data_vdp_dout[15]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[119]),
        .I3(pal_issue0),
        .O(\row_index[30][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[31][0]_i_1 
       (.I0(spr_data_vdp_dout[0]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[120]),
        .I3(pal_issue0),
        .O(\row_index[31][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[31][1]_i_1 
       (.I0(spr_data_vdp_dout[1]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[121]),
        .I3(pal_issue0),
        .O(\row_index[31][1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[31][2]_i_1 
       (.I0(spr_data_vdp_dout[2]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[122]),
        .I3(pal_issue0),
        .O(\row_index[31][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[31][3]_i_1 
       (.I0(spr_data_vdp_dout[3]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[123]),
        .I3(pal_issue0),
        .O(\row_index[31][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[31][4]_i_1 
       (.I0(spr_data_vdp_dout[4]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[124]),
        .I3(pal_issue0),
        .O(\row_index[31][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[31][5]_i_1 
       (.I0(spr_data_vdp_dout[5]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[125]),
        .I3(pal_issue0),
        .O(\row_index[31][5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[31][6]_i_1 
       (.I0(spr_data_vdp_dout[6]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[126]),
        .I3(pal_issue0),
        .O(\row_index[31][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_index[31][7]_i_1 
       (.I0(spr_data_vdp_dout[7]),
        .I1(state[3]),
        .I2(spr_data_vdp_dout[127]),
        .I3(pal_issue0),
        .O(\row_index[31][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8C00DC008C00)) 
    \row_index[3][0]_i_1 
       (.I0(spr_att_vdp_dout[52]),
        .I1(spr_data_vdp_dout[24]),
        .I2(spr_att_vdp_dout[50]),
        .I3(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I4(spr_data_vdp_dout[96]),
        .I5(pal_issue0),
        .O(\row_index[3][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8C00DC008C00)) 
    \row_index[3][1]_i_1 
       (.I0(spr_att_vdp_dout[52]),
        .I1(spr_data_vdp_dout[25]),
        .I2(spr_att_vdp_dout[50]),
        .I3(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I4(spr_data_vdp_dout[97]),
        .I5(pal_issue0),
        .O(\row_index[3][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8C00DC008C00)) 
    \row_index[3][2]_i_1 
       (.I0(spr_att_vdp_dout[52]),
        .I1(spr_data_vdp_dout[26]),
        .I2(spr_att_vdp_dout[50]),
        .I3(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I4(spr_data_vdp_dout[98]),
        .I5(pal_issue0),
        .O(\row_index[3][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8C00DC008C00)) 
    \row_index[3][3]_i_1 
       (.I0(spr_att_vdp_dout[52]),
        .I1(spr_data_vdp_dout[27]),
        .I2(spr_att_vdp_dout[50]),
        .I3(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I4(spr_data_vdp_dout[99]),
        .I5(pal_issue0),
        .O(\row_index[3][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8C00DC008C00)) 
    \row_index[3][4]_i_1 
       (.I0(spr_att_vdp_dout[52]),
        .I1(spr_data_vdp_dout[28]),
        .I2(spr_att_vdp_dout[50]),
        .I3(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I4(spr_data_vdp_dout[100]),
        .I5(pal_issue0),
        .O(\row_index[3][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8C00DC008C00)) 
    \row_index[3][5]_i_1 
       (.I0(spr_att_vdp_dout[52]),
        .I1(spr_data_vdp_dout[29]),
        .I2(spr_att_vdp_dout[50]),
        .I3(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I4(spr_data_vdp_dout[101]),
        .I5(pal_issue0),
        .O(\row_index[3][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8C00DC008C00)) 
    \row_index[3][6]_i_1 
       (.I0(spr_att_vdp_dout[52]),
        .I1(spr_data_vdp_dout[30]),
        .I2(spr_att_vdp_dout[50]),
        .I3(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I4(spr_data_vdp_dout[102]),
        .I5(pal_issue0),
        .O(\row_index[3][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8C00DC008C00)) 
    \row_index[3][7]_i_1 
       (.I0(spr_att_vdp_dout[52]),
        .I1(spr_data_vdp_dout[31]),
        .I2(spr_att_vdp_dout[50]),
        .I3(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I4(spr_data_vdp_dout[103]),
        .I5(pal_issue0),
        .O(\row_index[3][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8C00DC008C00)) 
    \row_index[4][0]_i_1 
       (.I0(spr_att_vdp_dout[52]),
        .I1(spr_data_vdp_dout[32]),
        .I2(spr_att_vdp_dout[50]),
        .I3(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I4(spr_data_vdp_dout[88]),
        .I5(pal_issue0),
        .O(\row_index[4][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8C00DC008C00)) 
    \row_index[4][1]_i_1 
       (.I0(spr_att_vdp_dout[52]),
        .I1(spr_data_vdp_dout[33]),
        .I2(spr_att_vdp_dout[50]),
        .I3(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I4(spr_data_vdp_dout[89]),
        .I5(pal_issue0),
        .O(\row_index[4][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8C00DC008C00)) 
    \row_index[4][2]_i_1 
       (.I0(spr_att_vdp_dout[52]),
        .I1(spr_data_vdp_dout[34]),
        .I2(spr_att_vdp_dout[50]),
        .I3(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I4(spr_data_vdp_dout[90]),
        .I5(pal_issue0),
        .O(\row_index[4][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8C00DC008C00)) 
    \row_index[4][3]_i_1 
       (.I0(spr_att_vdp_dout[52]),
        .I1(spr_data_vdp_dout[35]),
        .I2(spr_att_vdp_dout[50]),
        .I3(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I4(spr_data_vdp_dout[91]),
        .I5(pal_issue0),
        .O(\row_index[4][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8C00DC008C00)) 
    \row_index[4][4]_i_1 
       (.I0(spr_att_vdp_dout[52]),
        .I1(spr_data_vdp_dout[36]),
        .I2(spr_att_vdp_dout[50]),
        .I3(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I4(spr_data_vdp_dout[92]),
        .I5(pal_issue0),
        .O(\row_index[4][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8C00DC008C00)) 
    \row_index[4][5]_i_1 
       (.I0(spr_att_vdp_dout[52]),
        .I1(spr_data_vdp_dout[37]),
        .I2(spr_att_vdp_dout[50]),
        .I3(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I4(spr_data_vdp_dout[93]),
        .I5(pal_issue0),
        .O(\row_index[4][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8C00DC008C00)) 
    \row_index[4][6]_i_1 
       (.I0(spr_att_vdp_dout[52]),
        .I1(spr_data_vdp_dout[38]),
        .I2(spr_att_vdp_dout[50]),
        .I3(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I4(spr_data_vdp_dout[94]),
        .I5(pal_issue0),
        .O(\row_index[4][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8C00DC008C00)) 
    \row_index[4][7]_i_1 
       (.I0(spr_att_vdp_dout[52]),
        .I1(spr_data_vdp_dout[39]),
        .I2(spr_att_vdp_dout[50]),
        .I3(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I4(spr_data_vdp_dout[95]),
        .I5(pal_issue0),
        .O(\row_index[4][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8C00DC008C00)) 
    \row_index[5][0]_i_1 
       (.I0(spr_att_vdp_dout[52]),
        .I1(spr_data_vdp_dout[40]),
        .I2(spr_att_vdp_dout[50]),
        .I3(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I4(spr_data_vdp_dout[80]),
        .I5(pal_issue0),
        .O(\row_index[5][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8C00DC008C00)) 
    \row_index[5][1]_i_1 
       (.I0(spr_att_vdp_dout[52]),
        .I1(spr_data_vdp_dout[41]),
        .I2(spr_att_vdp_dout[50]),
        .I3(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I4(spr_data_vdp_dout[81]),
        .I5(pal_issue0),
        .O(\row_index[5][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8C00DC008C00)) 
    \row_index[5][2]_i_1 
       (.I0(spr_att_vdp_dout[52]),
        .I1(spr_data_vdp_dout[42]),
        .I2(spr_att_vdp_dout[50]),
        .I3(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I4(spr_data_vdp_dout[82]),
        .I5(pal_issue0),
        .O(\row_index[5][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8C00DC008C00)) 
    \row_index[5][3]_i_1 
       (.I0(spr_att_vdp_dout[52]),
        .I1(spr_data_vdp_dout[43]),
        .I2(spr_att_vdp_dout[50]),
        .I3(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I4(spr_data_vdp_dout[83]),
        .I5(pal_issue0),
        .O(\row_index[5][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8C00DC008C00)) 
    \row_index[5][4]_i_1 
       (.I0(spr_att_vdp_dout[52]),
        .I1(spr_data_vdp_dout[44]),
        .I2(spr_att_vdp_dout[50]),
        .I3(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I4(spr_data_vdp_dout[84]),
        .I5(pal_issue0),
        .O(\row_index[5][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8C00DC008C00)) 
    \row_index[5][5]_i_1 
       (.I0(spr_att_vdp_dout[52]),
        .I1(spr_data_vdp_dout[45]),
        .I2(spr_att_vdp_dout[50]),
        .I3(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I4(spr_data_vdp_dout[85]),
        .I5(pal_issue0),
        .O(\row_index[5][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8C00DC008C00)) 
    \row_index[5][6]_i_1 
       (.I0(spr_att_vdp_dout[52]),
        .I1(spr_data_vdp_dout[46]),
        .I2(spr_att_vdp_dout[50]),
        .I3(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I4(spr_data_vdp_dout[86]),
        .I5(pal_issue0),
        .O(\row_index[5][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8C00DC008C00)) 
    \row_index[5][7]_i_1 
       (.I0(spr_att_vdp_dout[52]),
        .I1(spr_data_vdp_dout[47]),
        .I2(spr_att_vdp_dout[50]),
        .I3(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I4(spr_data_vdp_dout[87]),
        .I5(pal_issue0),
        .O(\row_index[5][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8C00DC008C00)) 
    \row_index[6][0]_i_1 
       (.I0(spr_att_vdp_dout[52]),
        .I1(spr_data_vdp_dout[48]),
        .I2(spr_att_vdp_dout[50]),
        .I3(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I4(spr_data_vdp_dout[72]),
        .I5(pal_issue0),
        .O(\row_index[6][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8C00DC008C00)) 
    \row_index[6][1]_i_1 
       (.I0(spr_att_vdp_dout[52]),
        .I1(spr_data_vdp_dout[49]),
        .I2(spr_att_vdp_dout[50]),
        .I3(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I4(spr_data_vdp_dout[73]),
        .I5(pal_issue0),
        .O(\row_index[6][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8C00DC008C00)) 
    \row_index[6][2]_i_1 
       (.I0(spr_att_vdp_dout[52]),
        .I1(spr_data_vdp_dout[50]),
        .I2(spr_att_vdp_dout[50]),
        .I3(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I4(spr_data_vdp_dout[74]),
        .I5(pal_issue0),
        .O(\row_index[6][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8C00DC008C00)) 
    \row_index[6][3]_i_1 
       (.I0(spr_att_vdp_dout[52]),
        .I1(spr_data_vdp_dout[51]),
        .I2(spr_att_vdp_dout[50]),
        .I3(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I4(spr_data_vdp_dout[75]),
        .I5(pal_issue0),
        .O(\row_index[6][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8C00DC008C00)) 
    \row_index[6][4]_i_1 
       (.I0(spr_att_vdp_dout[52]),
        .I1(spr_data_vdp_dout[52]),
        .I2(spr_att_vdp_dout[50]),
        .I3(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I4(spr_data_vdp_dout[76]),
        .I5(pal_issue0),
        .O(\row_index[6][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8C00DC008C00)) 
    \row_index[6][5]_i_1 
       (.I0(spr_att_vdp_dout[52]),
        .I1(spr_data_vdp_dout[53]),
        .I2(spr_att_vdp_dout[50]),
        .I3(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I4(spr_data_vdp_dout[77]),
        .I5(pal_issue0),
        .O(\row_index[6][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8C00DC008C00)) 
    \row_index[6][6]_i_1 
       (.I0(spr_att_vdp_dout[52]),
        .I1(spr_data_vdp_dout[54]),
        .I2(spr_att_vdp_dout[50]),
        .I3(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I4(spr_data_vdp_dout[78]),
        .I5(pal_issue0),
        .O(\row_index[6][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8C00DC008C00)) 
    \row_index[6][7]_i_1 
       (.I0(spr_att_vdp_dout[52]),
        .I1(spr_data_vdp_dout[55]),
        .I2(spr_att_vdp_dout[50]),
        .I3(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I4(spr_data_vdp_dout[79]),
        .I5(pal_issue0),
        .O(\row_index[6][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8C00DC008C00)) 
    \row_index[7][0]_i_1 
       (.I0(spr_att_vdp_dout[52]),
        .I1(spr_data_vdp_dout[56]),
        .I2(spr_att_vdp_dout[50]),
        .I3(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I4(spr_data_vdp_dout[64]),
        .I5(pal_issue0),
        .O(\row_index[7][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8C00DC008C00)) 
    \row_index[7][1]_i_1 
       (.I0(spr_att_vdp_dout[52]),
        .I1(spr_data_vdp_dout[57]),
        .I2(spr_att_vdp_dout[50]),
        .I3(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I4(spr_data_vdp_dout[65]),
        .I5(pal_issue0),
        .O(\row_index[7][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8C00DC008C00)) 
    \row_index[7][2]_i_1 
       (.I0(spr_att_vdp_dout[52]),
        .I1(spr_data_vdp_dout[58]),
        .I2(spr_att_vdp_dout[50]),
        .I3(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I4(spr_data_vdp_dout[66]),
        .I5(pal_issue0),
        .O(\row_index[7][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8C00DC008C00)) 
    \row_index[7][3]_i_1 
       (.I0(spr_att_vdp_dout[52]),
        .I1(spr_data_vdp_dout[59]),
        .I2(spr_att_vdp_dout[50]),
        .I3(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I4(spr_data_vdp_dout[67]),
        .I5(pal_issue0),
        .O(\row_index[7][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8C00DC008C00)) 
    \row_index[7][4]_i_1 
       (.I0(spr_att_vdp_dout[52]),
        .I1(spr_data_vdp_dout[60]),
        .I2(spr_att_vdp_dout[50]),
        .I3(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I4(spr_data_vdp_dout[68]),
        .I5(pal_issue0),
        .O(\row_index[7][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8C00DC008C00)) 
    \row_index[7][5]_i_1 
       (.I0(spr_att_vdp_dout[52]),
        .I1(spr_data_vdp_dout[61]),
        .I2(spr_att_vdp_dout[50]),
        .I3(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I4(spr_data_vdp_dout[69]),
        .I5(pal_issue0),
        .O(\row_index[7][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8C00DC008C00)) 
    \row_index[7][6]_i_1 
       (.I0(spr_att_vdp_dout[52]),
        .I1(spr_data_vdp_dout[62]),
        .I2(spr_att_vdp_dout[50]),
        .I3(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I4(spr_data_vdp_dout[70]),
        .I5(pal_issue0),
        .O(\row_index[7][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8C00DC008C00)) 
    \row_index[7][7]_i_1 
       (.I0(spr_att_vdp_dout[52]),
        .I1(spr_data_vdp_dout[63]),
        .I2(spr_att_vdp_dout[50]),
        .I3(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I4(spr_data_vdp_dout[71]),
        .I5(pal_issue0),
        .O(\row_index[7][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF20E020)) 
    \row_index[8][0]_i_1 
       (.I0(spr_data_vdp_dout[64]),
        .I1(spr_att_vdp_dout[50]),
        .I2(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I3(spr_data_vdp_dout[56]),
        .I4(pal_issue0),
        .O(\row_index[8][0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF20E020)) 
    \row_index[8][1]_i_1 
       (.I0(spr_data_vdp_dout[65]),
        .I1(spr_att_vdp_dout[50]),
        .I2(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I3(spr_data_vdp_dout[57]),
        .I4(pal_issue0),
        .O(\row_index[8][1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF20E020)) 
    \row_index[8][2]_i_1 
       (.I0(spr_data_vdp_dout[66]),
        .I1(spr_att_vdp_dout[50]),
        .I2(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I3(spr_data_vdp_dout[58]),
        .I4(pal_issue0),
        .O(\row_index[8][2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF20E020)) 
    \row_index[8][3]_i_1 
       (.I0(spr_data_vdp_dout[67]),
        .I1(spr_att_vdp_dout[50]),
        .I2(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I3(spr_data_vdp_dout[59]),
        .I4(pal_issue0),
        .O(\row_index[8][3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF20E020)) 
    \row_index[8][4]_i_1 
       (.I0(spr_data_vdp_dout[68]),
        .I1(spr_att_vdp_dout[50]),
        .I2(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I3(spr_data_vdp_dout[60]),
        .I4(pal_issue0),
        .O(\row_index[8][4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF20E020)) 
    \row_index[8][5]_i_1 
       (.I0(spr_data_vdp_dout[69]),
        .I1(spr_att_vdp_dout[50]),
        .I2(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I3(spr_data_vdp_dout[61]),
        .I4(pal_issue0),
        .O(\row_index[8][5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF20E020)) 
    \row_index[8][6]_i_1 
       (.I0(spr_data_vdp_dout[70]),
        .I1(spr_att_vdp_dout[50]),
        .I2(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I3(spr_data_vdp_dout[62]),
        .I4(pal_issue0),
        .O(\row_index[8][6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF20E020)) 
    \row_index[8][7]_i_1 
       (.I0(spr_data_vdp_dout[71]),
        .I1(spr_att_vdp_dout[50]),
        .I2(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I3(spr_data_vdp_dout[63]),
        .I4(pal_issue0),
        .O(\row_index[8][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF20E020)) 
    \row_index[9][0]_i_1 
       (.I0(spr_data_vdp_dout[72]),
        .I1(spr_att_vdp_dout[50]),
        .I2(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I3(spr_data_vdp_dout[48]),
        .I4(pal_issue0),
        .O(\row_index[9][0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF20E020)) 
    \row_index[9][1]_i_1 
       (.I0(spr_data_vdp_dout[73]),
        .I1(spr_att_vdp_dout[50]),
        .I2(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I3(spr_data_vdp_dout[49]),
        .I4(pal_issue0),
        .O(\row_index[9][1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF20E020)) 
    \row_index[9][2]_i_1 
       (.I0(spr_data_vdp_dout[74]),
        .I1(spr_att_vdp_dout[50]),
        .I2(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I3(spr_data_vdp_dout[50]),
        .I4(pal_issue0),
        .O(\row_index[9][2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF20E020)) 
    \row_index[9][3]_i_1 
       (.I0(spr_data_vdp_dout[75]),
        .I1(spr_att_vdp_dout[50]),
        .I2(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I3(spr_data_vdp_dout[51]),
        .I4(pal_issue0),
        .O(\row_index[9][3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF20E020)) 
    \row_index[9][4]_i_1 
       (.I0(spr_data_vdp_dout[76]),
        .I1(spr_att_vdp_dout[50]),
        .I2(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I3(spr_data_vdp_dout[52]),
        .I4(pal_issue0),
        .O(\row_index[9][4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF20E020)) 
    \row_index[9][5]_i_1 
       (.I0(spr_data_vdp_dout[77]),
        .I1(spr_att_vdp_dout[50]),
        .I2(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I3(spr_data_vdp_dout[53]),
        .I4(pal_issue0),
        .O(\row_index[9][5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF20E020)) 
    \row_index[9][6]_i_1 
       (.I0(spr_data_vdp_dout[78]),
        .I1(spr_att_vdp_dout[50]),
        .I2(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I3(spr_data_vdp_dout[54]),
        .I4(pal_issue0),
        .O(\row_index[9][6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF20E020)) 
    \row_index[9][7]_i_1 
       (.I0(spr_data_vdp_dout[79]),
        .I1(spr_att_vdp_dout[50]),
        .I2(\FSM_onehot_state_reg[3]_rep_n_0 ),
        .I3(spr_data_vdp_dout[55]),
        .I4(pal_issue0),
        .O(\row_index[9][7]_i_1_n_0 ));
  FDRE \row_index_reg[0][0] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[0][0]_i_1_n_0 ),
        .Q(\row_index_reg_n_0_[0][0] ),
        .R(1'b0));
  FDRE \row_index_reg[0][1] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[0][1]_i_1_n_0 ),
        .Q(\row_index_reg_n_0_[0][1] ),
        .R(1'b0));
  FDRE \row_index_reg[0][2] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[0][2]_i_1_n_0 ),
        .Q(\row_index_reg_n_0_[0][2] ),
        .R(1'b0));
  FDRE \row_index_reg[0][3] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[0][3]_i_1_n_0 ),
        .Q(\row_index_reg_n_0_[0][3] ),
        .R(1'b0));
  FDRE \row_index_reg[0][4] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[0][4]_i_1_n_0 ),
        .Q(\row_index_reg_n_0_[0][4] ),
        .R(1'b0));
  FDRE \row_index_reg[0][5] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[0][5]_i_1_n_0 ),
        .Q(\row_index_reg_n_0_[0][5] ),
        .R(1'b0));
  FDRE \row_index_reg[0][6] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[0][6]_i_1_n_0 ),
        .Q(\row_index_reg_n_0_[0][6] ),
        .R(1'b0));
  FDRE \row_index_reg[0][7] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[0][7]_i_2_n_0 ),
        .Q(\row_index_reg_n_0_[0][7] ),
        .R(1'b0));
  FDRE \row_index_reg[10][0] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[10][0]_i_1_n_0 ),
        .Q(\row_index_reg[10]_2 [0]),
        .R(1'b0));
  FDRE \row_index_reg[10][1] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[10][1]_i_1_n_0 ),
        .Q(\row_index_reg[10]_2 [1]),
        .R(1'b0));
  FDRE \row_index_reg[10][2] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[10][2]_i_1_n_0 ),
        .Q(\row_index_reg[10]_2 [2]),
        .R(1'b0));
  FDRE \row_index_reg[10][3] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[10][3]_i_1_n_0 ),
        .Q(\row_index_reg[10]_2 [3]),
        .R(1'b0));
  FDRE \row_index_reg[10][4] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[10][4]_i_1_n_0 ),
        .Q(\row_index_reg[10]_2 [4]),
        .R(1'b0));
  FDRE \row_index_reg[10][5] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[10][5]_i_1_n_0 ),
        .Q(\row_index_reg[10]_2 [5]),
        .R(1'b0));
  FDRE \row_index_reg[10][6] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[10][6]_i_1_n_0 ),
        .Q(\row_index_reg[10]_2 [6]),
        .R(1'b0));
  FDRE \row_index_reg[10][7] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[10][7]_i_1_n_0 ),
        .Q(\row_index_reg[10]_2 [7]),
        .R(1'b0));
  FDRE \row_index_reg[11][0] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[11][0]_i_1_n_0 ),
        .Q(\row_index_reg[11]_3 [0]),
        .R(1'b0));
  FDRE \row_index_reg[11][1] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[11][1]_i_1_n_0 ),
        .Q(\row_index_reg[11]_3 [1]),
        .R(1'b0));
  FDRE \row_index_reg[11][2] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[11][2]_i_1_n_0 ),
        .Q(\row_index_reg[11]_3 [2]),
        .R(1'b0));
  FDRE \row_index_reg[11][3] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[11][3]_i_1_n_0 ),
        .Q(\row_index_reg[11]_3 [3]),
        .R(1'b0));
  FDRE \row_index_reg[11][4] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[11][4]_i_1_n_0 ),
        .Q(\row_index_reg[11]_3 [4]),
        .R(1'b0));
  FDRE \row_index_reg[11][5] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[11][5]_i_1_n_0 ),
        .Q(\row_index_reg[11]_3 [5]),
        .R(1'b0));
  FDRE \row_index_reg[11][6] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[11][6]_i_1_n_0 ),
        .Q(\row_index_reg[11]_3 [6]),
        .R(1'b0));
  FDRE \row_index_reg[11][7] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[11][7]_i_1_n_0 ),
        .Q(\row_index_reg[11]_3 [7]),
        .R(1'b0));
  FDRE \row_index_reg[12][0] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[12][0]_i_1_n_0 ),
        .Q(\row_index_reg[12]_4 [0]),
        .R(1'b0));
  FDRE \row_index_reg[12][1] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[12][1]_i_1_n_0 ),
        .Q(\row_index_reg[12]_4 [1]),
        .R(1'b0));
  FDRE \row_index_reg[12][2] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[12][2]_i_1_n_0 ),
        .Q(\row_index_reg[12]_4 [2]),
        .R(1'b0));
  FDRE \row_index_reg[12][3] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[12][3]_i_1_n_0 ),
        .Q(\row_index_reg[12]_4 [3]),
        .R(1'b0));
  FDRE \row_index_reg[12][4] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[12][4]_i_1_n_0 ),
        .Q(\row_index_reg[12]_4 [4]),
        .R(1'b0));
  FDRE \row_index_reg[12][5] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[12][5]_i_1_n_0 ),
        .Q(\row_index_reg[12]_4 [5]),
        .R(1'b0));
  FDRE \row_index_reg[12][6] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[12][6]_i_1_n_0 ),
        .Q(\row_index_reg[12]_4 [6]),
        .R(1'b0));
  FDRE \row_index_reg[12][7] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[12][7]_i_1_n_0 ),
        .Q(\row_index_reg[12]_4 [7]),
        .R(1'b0));
  FDRE \row_index_reg[13][0] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[13][0]_i_1_n_0 ),
        .Q(\row_index_reg[13]_5 [0]),
        .R(1'b0));
  FDRE \row_index_reg[13][1] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[13][1]_i_1_n_0 ),
        .Q(\row_index_reg[13]_5 [1]),
        .R(1'b0));
  FDRE \row_index_reg[13][2] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[13][2]_i_1_n_0 ),
        .Q(\row_index_reg[13]_5 [2]),
        .R(1'b0));
  FDRE \row_index_reg[13][3] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[13][3]_i_1_n_0 ),
        .Q(\row_index_reg[13]_5 [3]),
        .R(1'b0));
  FDRE \row_index_reg[13][4] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[13][4]_i_1_n_0 ),
        .Q(\row_index_reg[13]_5 [4]),
        .R(1'b0));
  FDRE \row_index_reg[13][5] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[13][5]_i_1_n_0 ),
        .Q(\row_index_reg[13]_5 [5]),
        .R(1'b0));
  FDRE \row_index_reg[13][6] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[13][6]_i_1_n_0 ),
        .Q(\row_index_reg[13]_5 [6]),
        .R(1'b0));
  FDRE \row_index_reg[13][7] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[13][7]_i_1_n_0 ),
        .Q(\row_index_reg[13]_5 [7]),
        .R(1'b0));
  FDRE \row_index_reg[14][0] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[14][0]_i_1_n_0 ),
        .Q(\row_index_reg[14]_6 [0]),
        .R(1'b0));
  FDRE \row_index_reg[14][1] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[14][1]_i_1_n_0 ),
        .Q(\row_index_reg[14]_6 [1]),
        .R(1'b0));
  FDRE \row_index_reg[14][2] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[14][2]_i_1_n_0 ),
        .Q(\row_index_reg[14]_6 [2]),
        .R(1'b0));
  FDRE \row_index_reg[14][3] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[14][3]_i_1_n_0 ),
        .Q(\row_index_reg[14]_6 [3]),
        .R(1'b0));
  FDRE \row_index_reg[14][4] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[14][4]_i_1_n_0 ),
        .Q(\row_index_reg[14]_6 [4]),
        .R(1'b0));
  FDRE \row_index_reg[14][5] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[14][5]_i_1_n_0 ),
        .Q(\row_index_reg[14]_6 [5]),
        .R(1'b0));
  FDRE \row_index_reg[14][6] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[14][6]_i_1_n_0 ),
        .Q(\row_index_reg[14]_6 [6]),
        .R(1'b0));
  FDRE \row_index_reg[14][7] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[14][7]_i_1_n_0 ),
        .Q(\row_index_reg[14]_6 [7]),
        .R(1'b0));
  FDRE \row_index_reg[15][0] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[15][0]_i_1_n_0 ),
        .Q(\row_index_reg[15]_7 [0]),
        .R(1'b0));
  FDRE \row_index_reg[15][1] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[15][1]_i_1_n_0 ),
        .Q(\row_index_reg[15]_7 [1]),
        .R(1'b0));
  FDRE \row_index_reg[15][2] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[15][2]_i_1_n_0 ),
        .Q(\row_index_reg[15]_7 [2]),
        .R(1'b0));
  FDRE \row_index_reg[15][3] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[15][3]_i_1_n_0 ),
        .Q(\row_index_reg[15]_7 [3]),
        .R(1'b0));
  FDRE \row_index_reg[15][4] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[15][4]_i_1_n_0 ),
        .Q(\row_index_reg[15]_7 [4]),
        .R(1'b0));
  FDRE \row_index_reg[15][5] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[15][5]_i_1_n_0 ),
        .Q(\row_index_reg[15]_7 [5]),
        .R(1'b0));
  FDRE \row_index_reg[15][6] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[15][6]_i_1_n_0 ),
        .Q(\row_index_reg[15]_7 [6]),
        .R(1'b0));
  FDRE \row_index_reg[15][7] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[15][7]_i_1_n_0 ),
        .Q(\row_index_reg[15]_7 [7]),
        .R(1'b0));
  FDRE \row_index_reg[16][0] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[16][0]_i_1_n_0 ),
        .Q(\row_index_reg_n_0_[16][0] ),
        .R(1'b0));
  FDRE \row_index_reg[16][1] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[16][1]_i_1_n_0 ),
        .Q(\row_index_reg_n_0_[16][1] ),
        .R(1'b0));
  FDRE \row_index_reg[16][2] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[16][2]_i_1_n_0 ),
        .Q(\row_index_reg_n_0_[16][2] ),
        .R(1'b0));
  FDRE \row_index_reg[16][3] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[16][3]_i_1_n_0 ),
        .Q(\row_index_reg_n_0_[16][3] ),
        .R(1'b0));
  FDRE \row_index_reg[16][4] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[16][4]_i_1_n_0 ),
        .Q(\row_index_reg_n_0_[16][4] ),
        .R(1'b0));
  FDRE \row_index_reg[16][5] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[16][5]_i_1_n_0 ),
        .Q(\row_index_reg_n_0_[16][5] ),
        .R(1'b0));
  FDRE \row_index_reg[16][6] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[16][6]_i_1_n_0 ),
        .Q(\row_index_reg_n_0_[16][6] ),
        .R(1'b0));
  FDRE \row_index_reg[16][7] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[16][7]_i_2_n_0 ),
        .Q(\row_index_reg_n_0_[16][7] ),
        .R(1'b0));
  FDRE \row_index_reg[17][0] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[17][0]_i_1_n_0 ),
        .Q(\row_index_reg[17]_8 [0]),
        .R(1'b0));
  FDRE \row_index_reg[17][1] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[17][1]_i_1_n_0 ),
        .Q(\row_index_reg[17]_8 [1]),
        .R(1'b0));
  FDRE \row_index_reg[17][2] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[17][2]_i_1_n_0 ),
        .Q(\row_index_reg[17]_8 [2]),
        .R(1'b0));
  FDRE \row_index_reg[17][3] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[17][3]_i_1_n_0 ),
        .Q(\row_index_reg[17]_8 [3]),
        .R(1'b0));
  FDRE \row_index_reg[17][4] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[17][4]_i_1_n_0 ),
        .Q(\row_index_reg[17]_8 [4]),
        .R(1'b0));
  FDRE \row_index_reg[17][5] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[17][5]_i_1_n_0 ),
        .Q(\row_index_reg[17]_8 [5]),
        .R(1'b0));
  FDRE \row_index_reg[17][6] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[17][6]_i_1_n_0 ),
        .Q(\row_index_reg[17]_8 [6]),
        .R(1'b0));
  FDRE \row_index_reg[17][7] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[17][7]_i_1_n_0 ),
        .Q(\row_index_reg[17]_8 [7]),
        .R(1'b0));
  FDRE \row_index_reg[18][0] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[18][0]_i_1_n_0 ),
        .Q(\row_index_reg[18]_9 [0]),
        .R(1'b0));
  FDRE \row_index_reg[18][1] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[18][1]_i_1_n_0 ),
        .Q(\row_index_reg[18]_9 [1]),
        .R(1'b0));
  FDRE \row_index_reg[18][2] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[18][2]_i_1_n_0 ),
        .Q(\row_index_reg[18]_9 [2]),
        .R(1'b0));
  FDRE \row_index_reg[18][3] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[18][3]_i_1_n_0 ),
        .Q(\row_index_reg[18]_9 [3]),
        .R(1'b0));
  FDRE \row_index_reg[18][4] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[18][4]_i_1_n_0 ),
        .Q(\row_index_reg[18]_9 [4]),
        .R(1'b0));
  FDRE \row_index_reg[18][5] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[18][5]_i_1_n_0 ),
        .Q(\row_index_reg[18]_9 [5]),
        .R(1'b0));
  FDRE \row_index_reg[18][6] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[18][6]_i_1_n_0 ),
        .Q(\row_index_reg[18]_9 [6]),
        .R(1'b0));
  FDRE \row_index_reg[18][7] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[18][7]_i_1_n_0 ),
        .Q(\row_index_reg[18]_9 [7]),
        .R(1'b0));
  FDRE \row_index_reg[19][0] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[19][0]_i_1_n_0 ),
        .Q(\row_index_reg[19]_10 [0]),
        .R(1'b0));
  FDRE \row_index_reg[19][1] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[19][1]_i_1_n_0 ),
        .Q(\row_index_reg[19]_10 [1]),
        .R(1'b0));
  FDRE \row_index_reg[19][2] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[19][2]_i_1_n_0 ),
        .Q(\row_index_reg[19]_10 [2]),
        .R(1'b0));
  FDRE \row_index_reg[19][3] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[19][3]_i_1_n_0 ),
        .Q(\row_index_reg[19]_10 [3]),
        .R(1'b0));
  FDRE \row_index_reg[19][4] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[19][4]_i_1_n_0 ),
        .Q(\row_index_reg[19]_10 [4]),
        .R(1'b0));
  FDRE \row_index_reg[19][5] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[19][5]_i_1_n_0 ),
        .Q(\row_index_reg[19]_10 [5]),
        .R(1'b0));
  FDRE \row_index_reg[19][6] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[19][6]_i_1_n_0 ),
        .Q(\row_index_reg[19]_10 [6]),
        .R(1'b0));
  FDRE \row_index_reg[19][7] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[19][7]_i_1_n_0 ),
        .Q(\row_index_reg[19]_10 [7]),
        .R(1'b0));
  FDRE \row_index_reg[1][0] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[1][0]_i_1_n_0 ),
        .Q(\row_index_reg_n_0_[1][0] ),
        .R(1'b0));
  FDRE \row_index_reg[1][1] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[1][1]_i_1_n_0 ),
        .Q(\row_index_reg_n_0_[1][1] ),
        .R(1'b0));
  FDRE \row_index_reg[1][2] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[1][2]_i_1_n_0 ),
        .Q(\row_index_reg_n_0_[1][2] ),
        .R(1'b0));
  FDRE \row_index_reg[1][3] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[1][3]_i_1_n_0 ),
        .Q(\row_index_reg_n_0_[1][3] ),
        .R(1'b0));
  FDRE \row_index_reg[1][4] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[1][4]_i_1_n_0 ),
        .Q(\row_index_reg_n_0_[1][4] ),
        .R(1'b0));
  FDRE \row_index_reg[1][5] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[1][5]_i_1_n_0 ),
        .Q(\row_index_reg_n_0_[1][5] ),
        .R(1'b0));
  FDRE \row_index_reg[1][6] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[1][6]_i_1_n_0 ),
        .Q(\row_index_reg_n_0_[1][6] ),
        .R(1'b0));
  FDRE \row_index_reg[1][7] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[1][7]_i_1_n_0 ),
        .Q(\row_index_reg_n_0_[1][7] ),
        .R(1'b0));
  FDRE \row_index_reg[20][0] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[20][0]_i_1_n_0 ),
        .Q(\row_index_reg[20]_11 [0]),
        .R(1'b0));
  FDRE \row_index_reg[20][1] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[20][1]_i_1_n_0 ),
        .Q(\row_index_reg[20]_11 [1]),
        .R(1'b0));
  FDRE \row_index_reg[20][2] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[20][2]_i_1_n_0 ),
        .Q(\row_index_reg[20]_11 [2]),
        .R(1'b0));
  FDRE \row_index_reg[20][3] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[20][3]_i_1_n_0 ),
        .Q(\row_index_reg[20]_11 [3]),
        .R(1'b0));
  FDRE \row_index_reg[20][4] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[20][4]_i_1_n_0 ),
        .Q(\row_index_reg[20]_11 [4]),
        .R(1'b0));
  FDRE \row_index_reg[20][5] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[20][5]_i_1_n_0 ),
        .Q(\row_index_reg[20]_11 [5]),
        .R(1'b0));
  FDRE \row_index_reg[20][6] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[20][6]_i_1_n_0 ),
        .Q(\row_index_reg[20]_11 [6]),
        .R(1'b0));
  FDRE \row_index_reg[20][7] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[20][7]_i_1_n_0 ),
        .Q(\row_index_reg[20]_11 [7]),
        .R(1'b0));
  FDRE \row_index_reg[21][0] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[21][0]_i_1_n_0 ),
        .Q(\row_index_reg[21]_12 [0]),
        .R(1'b0));
  FDRE \row_index_reg[21][1] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[21][1]_i_1_n_0 ),
        .Q(\row_index_reg[21]_12 [1]),
        .R(1'b0));
  FDRE \row_index_reg[21][2] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[21][2]_i_1_n_0 ),
        .Q(\row_index_reg[21]_12 [2]),
        .R(1'b0));
  FDRE \row_index_reg[21][3] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[21][3]_i_1_n_0 ),
        .Q(\row_index_reg[21]_12 [3]),
        .R(1'b0));
  FDRE \row_index_reg[21][4] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[21][4]_i_1_n_0 ),
        .Q(\row_index_reg[21]_12 [4]),
        .R(1'b0));
  FDRE \row_index_reg[21][5] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[21][5]_i_1_n_0 ),
        .Q(\row_index_reg[21]_12 [5]),
        .R(1'b0));
  FDRE \row_index_reg[21][6] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[21][6]_i_1_n_0 ),
        .Q(\row_index_reg[21]_12 [6]),
        .R(1'b0));
  FDRE \row_index_reg[21][7] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[21][7]_i_1_n_0 ),
        .Q(\row_index_reg[21]_12 [7]),
        .R(1'b0));
  FDRE \row_index_reg[22][0] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[22][0]_i_1_n_0 ),
        .Q(\row_index_reg[22]_13 [0]),
        .R(1'b0));
  FDRE \row_index_reg[22][1] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[22][1]_i_1_n_0 ),
        .Q(\row_index_reg[22]_13 [1]),
        .R(1'b0));
  FDRE \row_index_reg[22][2] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[22][2]_i_1_n_0 ),
        .Q(\row_index_reg[22]_13 [2]),
        .R(1'b0));
  FDRE \row_index_reg[22][3] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[22][3]_i_1_n_0 ),
        .Q(\row_index_reg[22]_13 [3]),
        .R(1'b0));
  FDRE \row_index_reg[22][4] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[22][4]_i_1_n_0 ),
        .Q(\row_index_reg[22]_13 [4]),
        .R(1'b0));
  FDRE \row_index_reg[22][5] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[22][5]_i_1_n_0 ),
        .Q(\row_index_reg[22]_13 [5]),
        .R(1'b0));
  FDRE \row_index_reg[22][6] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[22][6]_i_1_n_0 ),
        .Q(\row_index_reg[22]_13 [6]),
        .R(1'b0));
  FDRE \row_index_reg[22][7] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[22][7]_i_1_n_0 ),
        .Q(\row_index_reg[22]_13 [7]),
        .R(1'b0));
  FDRE \row_index_reg[23][0] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[23][0]_i_1_n_0 ),
        .Q(\row_index_reg[23]_14 [0]),
        .R(1'b0));
  FDRE \row_index_reg[23][1] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[23][1]_i_1_n_0 ),
        .Q(\row_index_reg[23]_14 [1]),
        .R(1'b0));
  FDRE \row_index_reg[23][2] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[23][2]_i_1_n_0 ),
        .Q(\row_index_reg[23]_14 [2]),
        .R(1'b0));
  FDRE \row_index_reg[23][3] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[23][3]_i_1_n_0 ),
        .Q(\row_index_reg[23]_14 [3]),
        .R(1'b0));
  FDRE \row_index_reg[23][4] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[23][4]_i_1_n_0 ),
        .Q(\row_index_reg[23]_14 [4]),
        .R(1'b0));
  FDRE \row_index_reg[23][5] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[23][5]_i_1_n_0 ),
        .Q(\row_index_reg[23]_14 [5]),
        .R(1'b0));
  FDRE \row_index_reg[23][6] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[23][6]_i_1_n_0 ),
        .Q(\row_index_reg[23]_14 [6]),
        .R(1'b0));
  FDRE \row_index_reg[23][7] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[23][7]_i_1_n_0 ),
        .Q(\row_index_reg[23]_14 [7]),
        .R(1'b0));
  FDRE \row_index_reg[24][0] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[24][0]_i_1_n_0 ),
        .Q(\row_index_reg[24]_15 [0]),
        .R(1'b0));
  FDRE \row_index_reg[24][1] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[24][1]_i_1_n_0 ),
        .Q(\row_index_reg[24]_15 [1]),
        .R(1'b0));
  FDRE \row_index_reg[24][2] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[24][2]_i_1_n_0 ),
        .Q(\row_index_reg[24]_15 [2]),
        .R(1'b0));
  FDRE \row_index_reg[24][3] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[24][3]_i_1_n_0 ),
        .Q(\row_index_reg[24]_15 [3]),
        .R(1'b0));
  FDRE \row_index_reg[24][4] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[24][4]_i_1_n_0 ),
        .Q(\row_index_reg[24]_15 [4]),
        .R(1'b0));
  FDRE \row_index_reg[24][5] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[24][5]_i_1_n_0 ),
        .Q(\row_index_reg[24]_15 [5]),
        .R(1'b0));
  FDRE \row_index_reg[24][6] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[24][6]_i_1_n_0 ),
        .Q(\row_index_reg[24]_15 [6]),
        .R(1'b0));
  FDRE \row_index_reg[24][7] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[24][7]_i_1_n_0 ),
        .Q(\row_index_reg[24]_15 [7]),
        .R(1'b0));
  FDRE \row_index_reg[25][0] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[25][0]_i_1_n_0 ),
        .Q(\row_index_reg[25]_16 [0]),
        .R(1'b0));
  FDRE \row_index_reg[25][1] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[25][1]_i_1_n_0 ),
        .Q(\row_index_reg[25]_16 [1]),
        .R(1'b0));
  FDRE \row_index_reg[25][2] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[25][2]_i_1_n_0 ),
        .Q(\row_index_reg[25]_16 [2]),
        .R(1'b0));
  FDRE \row_index_reg[25][3] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[25][3]_i_1_n_0 ),
        .Q(\row_index_reg[25]_16 [3]),
        .R(1'b0));
  FDRE \row_index_reg[25][4] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[25][4]_i_1_n_0 ),
        .Q(\row_index_reg[25]_16 [4]),
        .R(1'b0));
  FDRE \row_index_reg[25][5] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[25][5]_i_1_n_0 ),
        .Q(\row_index_reg[25]_16 [5]),
        .R(1'b0));
  FDRE \row_index_reg[25][6] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[25][6]_i_1_n_0 ),
        .Q(\row_index_reg[25]_16 [6]),
        .R(1'b0));
  FDRE \row_index_reg[25][7] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[25][7]_i_1_n_0 ),
        .Q(\row_index_reg[25]_16 [7]),
        .R(1'b0));
  FDRE \row_index_reg[26][0] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[26][0]_i_1_n_0 ),
        .Q(\row_index_reg[26]_17 [0]),
        .R(1'b0));
  FDRE \row_index_reg[26][1] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[26][1]_i_1_n_0 ),
        .Q(\row_index_reg[26]_17 [1]),
        .R(1'b0));
  FDRE \row_index_reg[26][2] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[26][2]_i_1_n_0 ),
        .Q(\row_index_reg[26]_17 [2]),
        .R(1'b0));
  FDRE \row_index_reg[26][3] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[26][3]_i_1_n_0 ),
        .Q(\row_index_reg[26]_17 [3]),
        .R(1'b0));
  FDRE \row_index_reg[26][4] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[26][4]_i_1_n_0 ),
        .Q(\row_index_reg[26]_17 [4]),
        .R(1'b0));
  FDRE \row_index_reg[26][5] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[26][5]_i_1_n_0 ),
        .Q(\row_index_reg[26]_17 [5]),
        .R(1'b0));
  FDRE \row_index_reg[26][6] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[26][6]_i_1_n_0 ),
        .Q(\row_index_reg[26]_17 [6]),
        .R(1'b0));
  FDRE \row_index_reg[26][7] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[26][7]_i_1_n_0 ),
        .Q(\row_index_reg[26]_17 [7]),
        .R(1'b0));
  FDRE \row_index_reg[27][0] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[27][0]_i_1_n_0 ),
        .Q(\row_index_reg[27]_18 [0]),
        .R(1'b0));
  FDRE \row_index_reg[27][1] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[27][1]_i_1_n_0 ),
        .Q(\row_index_reg[27]_18 [1]),
        .R(1'b0));
  FDRE \row_index_reg[27][2] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[27][2]_i_1_n_0 ),
        .Q(\row_index_reg[27]_18 [2]),
        .R(1'b0));
  FDRE \row_index_reg[27][3] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[27][3]_i_1_n_0 ),
        .Q(\row_index_reg[27]_18 [3]),
        .R(1'b0));
  FDRE \row_index_reg[27][4] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[27][4]_i_1_n_0 ),
        .Q(\row_index_reg[27]_18 [4]),
        .R(1'b0));
  FDRE \row_index_reg[27][5] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[27][5]_i_1_n_0 ),
        .Q(\row_index_reg[27]_18 [5]),
        .R(1'b0));
  FDRE \row_index_reg[27][6] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[27][6]_i_1_n_0 ),
        .Q(\row_index_reg[27]_18 [6]),
        .R(1'b0));
  FDRE \row_index_reg[27][7] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[27][7]_i_1_n_0 ),
        .Q(\row_index_reg[27]_18 [7]),
        .R(1'b0));
  FDRE \row_index_reg[28][0] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[28][0]_i_1_n_0 ),
        .Q(\row_index_reg[28]_19 [0]),
        .R(1'b0));
  FDRE \row_index_reg[28][1] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[28][1]_i_1_n_0 ),
        .Q(\row_index_reg[28]_19 [1]),
        .R(1'b0));
  FDRE \row_index_reg[28][2] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[28][2]_i_1_n_0 ),
        .Q(\row_index_reg[28]_19 [2]),
        .R(1'b0));
  FDRE \row_index_reg[28][3] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[28][3]_i_1_n_0 ),
        .Q(\row_index_reg[28]_19 [3]),
        .R(1'b0));
  FDRE \row_index_reg[28][4] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[28][4]_i_1_n_0 ),
        .Q(\row_index_reg[28]_19 [4]),
        .R(1'b0));
  FDRE \row_index_reg[28][5] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[28][5]_i_1_n_0 ),
        .Q(\row_index_reg[28]_19 [5]),
        .R(1'b0));
  FDRE \row_index_reg[28][6] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[28][6]_i_1_n_0 ),
        .Q(\row_index_reg[28]_19 [6]),
        .R(1'b0));
  FDRE \row_index_reg[28][7] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[28][7]_i_1_n_0 ),
        .Q(\row_index_reg[28]_19 [7]),
        .R(1'b0));
  FDRE \row_index_reg[29][0] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[29][0]_i_1_n_0 ),
        .Q(\row_index_reg[29]_20 [0]),
        .R(1'b0));
  FDRE \row_index_reg[29][1] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[29][1]_i_1_n_0 ),
        .Q(\row_index_reg[29]_20 [1]),
        .R(1'b0));
  FDRE \row_index_reg[29][2] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[29][2]_i_1_n_0 ),
        .Q(\row_index_reg[29]_20 [2]),
        .R(1'b0));
  FDRE \row_index_reg[29][3] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[29][3]_i_1_n_0 ),
        .Q(\row_index_reg[29]_20 [3]),
        .R(1'b0));
  FDRE \row_index_reg[29][4] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[29][4]_i_1_n_0 ),
        .Q(\row_index_reg[29]_20 [4]),
        .R(1'b0));
  FDRE \row_index_reg[29][5] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[29][5]_i_1_n_0 ),
        .Q(\row_index_reg[29]_20 [5]),
        .R(1'b0));
  FDRE \row_index_reg[29][6] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[29][6]_i_1_n_0 ),
        .Q(\row_index_reg[29]_20 [6]),
        .R(1'b0));
  FDRE \row_index_reg[29][7] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[29][7]_i_1_n_0 ),
        .Q(\row_index_reg[29]_20 [7]),
        .R(1'b0));
  FDRE \row_index_reg[2][0] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[2][0]_i_1_n_0 ),
        .Q(\row_index_reg_n_0_[2][0] ),
        .R(1'b0));
  FDRE \row_index_reg[2][1] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[2][1]_i_1_n_0 ),
        .Q(\row_index_reg_n_0_[2][1] ),
        .R(1'b0));
  FDRE \row_index_reg[2][2] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[2][2]_i_1_n_0 ),
        .Q(\row_index_reg_n_0_[2][2] ),
        .R(1'b0));
  FDRE \row_index_reg[2][3] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[2][3]_i_1_n_0 ),
        .Q(\row_index_reg_n_0_[2][3] ),
        .R(1'b0));
  FDRE \row_index_reg[2][4] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[2][4]_i_1_n_0 ),
        .Q(\row_index_reg_n_0_[2][4] ),
        .R(1'b0));
  FDRE \row_index_reg[2][5] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[2][5]_i_1_n_0 ),
        .Q(\row_index_reg_n_0_[2][5] ),
        .R(1'b0));
  FDRE \row_index_reg[2][6] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[2][6]_i_1_n_0 ),
        .Q(\row_index_reg_n_0_[2][6] ),
        .R(1'b0));
  FDRE \row_index_reg[2][7] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[2][7]_i_1_n_0 ),
        .Q(\row_index_reg_n_0_[2][7] ),
        .R(1'b0));
  FDRE \row_index_reg[30][0] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[30][0]_i_1_n_0 ),
        .Q(\row_index_reg[30]_21 [0]),
        .R(1'b0));
  FDRE \row_index_reg[30][1] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[30][1]_i_1_n_0 ),
        .Q(\row_index_reg[30]_21 [1]),
        .R(1'b0));
  FDRE \row_index_reg[30][2] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[30][2]_i_1_n_0 ),
        .Q(\row_index_reg[30]_21 [2]),
        .R(1'b0));
  FDRE \row_index_reg[30][3] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[30][3]_i_1_n_0 ),
        .Q(\row_index_reg[30]_21 [3]),
        .R(1'b0));
  FDRE \row_index_reg[30][4] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[30][4]_i_1_n_0 ),
        .Q(\row_index_reg[30]_21 [4]),
        .R(1'b0));
  FDRE \row_index_reg[30][5] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[30][5]_i_1_n_0 ),
        .Q(\row_index_reg[30]_21 [5]),
        .R(1'b0));
  FDRE \row_index_reg[30][6] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[30][6]_i_1_n_0 ),
        .Q(\row_index_reg[30]_21 [6]),
        .R(1'b0));
  FDRE \row_index_reg[30][7] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[30][7]_i_1_n_0 ),
        .Q(\row_index_reg[30]_21 [7]),
        .R(1'b0));
  FDRE \row_index_reg[31][0] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[31][0]_i_1_n_0 ),
        .Q(\row_index_reg_n_0_[31][0] ),
        .R(1'b0));
  FDRE \row_index_reg[31][1] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[31][1]_i_1_n_0 ),
        .Q(\row_index_reg_n_0_[31][1] ),
        .R(1'b0));
  FDRE \row_index_reg[31][2] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[31][2]_i_1_n_0 ),
        .Q(\row_index_reg_n_0_[31][2] ),
        .R(1'b0));
  FDRE \row_index_reg[31][3] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[31][3]_i_1_n_0 ),
        .Q(\row_index_reg_n_0_[31][3] ),
        .R(1'b0));
  FDRE \row_index_reg[31][4] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[31][4]_i_1_n_0 ),
        .Q(\row_index_reg_n_0_[31][4] ),
        .R(1'b0));
  FDRE \row_index_reg[31][5] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[31][5]_i_1_n_0 ),
        .Q(\row_index_reg_n_0_[31][5] ),
        .R(1'b0));
  FDRE \row_index_reg[31][6] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[31][6]_i_1_n_0 ),
        .Q(\row_index_reg_n_0_[31][6] ),
        .R(1'b0));
  FDRE \row_index_reg[31][7] 
       (.C(s_axi_aclk),
        .CE(\row_index[16][7]_i_1_n_0 ),
        .D(\row_index[31][7]_i_1_n_0 ),
        .Q(\row_index_reg_n_0_[31][7] ),
        .R(1'b0));
  FDRE \row_index_reg[3][0] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[3][0]_i_1_n_0 ),
        .Q(\row_index_reg_n_0_[3][0] ),
        .R(1'b0));
  FDRE \row_index_reg[3][1] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[3][1]_i_1_n_0 ),
        .Q(\row_index_reg_n_0_[3][1] ),
        .R(1'b0));
  FDRE \row_index_reg[3][2] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[3][2]_i_1_n_0 ),
        .Q(\row_index_reg_n_0_[3][2] ),
        .R(1'b0));
  FDRE \row_index_reg[3][3] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[3][3]_i_1_n_0 ),
        .Q(\row_index_reg_n_0_[3][3] ),
        .R(1'b0));
  FDRE \row_index_reg[3][4] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[3][4]_i_1_n_0 ),
        .Q(\row_index_reg_n_0_[3][4] ),
        .R(1'b0));
  FDRE \row_index_reg[3][5] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[3][5]_i_1_n_0 ),
        .Q(\row_index_reg_n_0_[3][5] ),
        .R(1'b0));
  FDRE \row_index_reg[3][6] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[3][6]_i_1_n_0 ),
        .Q(\row_index_reg_n_0_[3][6] ),
        .R(1'b0));
  FDRE \row_index_reg[3][7] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[3][7]_i_1_n_0 ),
        .Q(\row_index_reg_n_0_[3][7] ),
        .R(1'b0));
  FDRE \row_index_reg[4][0] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[4][0]_i_1_n_0 ),
        .Q(\row_index_reg_n_0_[4][0] ),
        .R(1'b0));
  FDRE \row_index_reg[4][1] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[4][1]_i_1_n_0 ),
        .Q(\row_index_reg_n_0_[4][1] ),
        .R(1'b0));
  FDRE \row_index_reg[4][2] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[4][2]_i_1_n_0 ),
        .Q(\row_index_reg_n_0_[4][2] ),
        .R(1'b0));
  FDRE \row_index_reg[4][3] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[4][3]_i_1_n_0 ),
        .Q(\row_index_reg_n_0_[4][3] ),
        .R(1'b0));
  FDRE \row_index_reg[4][4] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[4][4]_i_1_n_0 ),
        .Q(\row_index_reg_n_0_[4][4] ),
        .R(1'b0));
  FDRE \row_index_reg[4][5] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[4][5]_i_1_n_0 ),
        .Q(\row_index_reg_n_0_[4][5] ),
        .R(1'b0));
  FDRE \row_index_reg[4][6] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[4][6]_i_1_n_0 ),
        .Q(\row_index_reg_n_0_[4][6] ),
        .R(1'b0));
  FDRE \row_index_reg[4][7] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[4][7]_i_1_n_0 ),
        .Q(\row_index_reg_n_0_[4][7] ),
        .R(1'b0));
  FDRE \row_index_reg[5][0] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[5][0]_i_1_n_0 ),
        .Q(\row_index_reg_n_0_[5][0] ),
        .R(1'b0));
  FDRE \row_index_reg[5][1] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[5][1]_i_1_n_0 ),
        .Q(\row_index_reg_n_0_[5][1] ),
        .R(1'b0));
  FDRE \row_index_reg[5][2] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[5][2]_i_1_n_0 ),
        .Q(\row_index_reg_n_0_[5][2] ),
        .R(1'b0));
  FDRE \row_index_reg[5][3] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[5][3]_i_1_n_0 ),
        .Q(\row_index_reg_n_0_[5][3] ),
        .R(1'b0));
  FDRE \row_index_reg[5][4] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[5][4]_i_1_n_0 ),
        .Q(\row_index_reg_n_0_[5][4] ),
        .R(1'b0));
  FDRE \row_index_reg[5][5] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[5][5]_i_1_n_0 ),
        .Q(\row_index_reg_n_0_[5][5] ),
        .R(1'b0));
  FDRE \row_index_reg[5][6] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[5][6]_i_1_n_0 ),
        .Q(\row_index_reg_n_0_[5][6] ),
        .R(1'b0));
  FDRE \row_index_reg[5][7] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[5][7]_i_1_n_0 ),
        .Q(\row_index_reg_n_0_[5][7] ),
        .R(1'b0));
  FDRE \row_index_reg[6][0] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[6][0]_i_1_n_0 ),
        .Q(\row_index_reg_n_0_[6][0] ),
        .R(1'b0));
  FDRE \row_index_reg[6][1] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[6][1]_i_1_n_0 ),
        .Q(\row_index_reg_n_0_[6][1] ),
        .R(1'b0));
  FDRE \row_index_reg[6][2] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[6][2]_i_1_n_0 ),
        .Q(\row_index_reg_n_0_[6][2] ),
        .R(1'b0));
  FDRE \row_index_reg[6][3] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[6][3]_i_1_n_0 ),
        .Q(\row_index_reg_n_0_[6][3] ),
        .R(1'b0));
  FDRE \row_index_reg[6][4] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[6][4]_i_1_n_0 ),
        .Q(\row_index_reg_n_0_[6][4] ),
        .R(1'b0));
  FDRE \row_index_reg[6][5] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[6][5]_i_1_n_0 ),
        .Q(\row_index_reg_n_0_[6][5] ),
        .R(1'b0));
  FDRE \row_index_reg[6][6] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[6][6]_i_1_n_0 ),
        .Q(\row_index_reg_n_0_[6][6] ),
        .R(1'b0));
  FDRE \row_index_reg[6][7] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[6][7]_i_1_n_0 ),
        .Q(\row_index_reg_n_0_[6][7] ),
        .R(1'b0));
  FDRE \row_index_reg[7][0] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[7][0]_i_1_n_0 ),
        .Q(\row_index_reg_n_0_[7][0] ),
        .R(1'b0));
  FDRE \row_index_reg[7][1] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[7][1]_i_1_n_0 ),
        .Q(\row_index_reg_n_0_[7][1] ),
        .R(1'b0));
  FDRE \row_index_reg[7][2] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[7][2]_i_1_n_0 ),
        .Q(\row_index_reg_n_0_[7][2] ),
        .R(1'b0));
  FDRE \row_index_reg[7][3] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[7][3]_i_1_n_0 ),
        .Q(\row_index_reg_n_0_[7][3] ),
        .R(1'b0));
  FDRE \row_index_reg[7][4] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[7][4]_i_1_n_0 ),
        .Q(\row_index_reg_n_0_[7][4] ),
        .R(1'b0));
  FDRE \row_index_reg[7][5] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[7][5]_i_1_n_0 ),
        .Q(\row_index_reg_n_0_[7][5] ),
        .R(1'b0));
  FDRE \row_index_reg[7][6] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[7][6]_i_1_n_0 ),
        .Q(\row_index_reg_n_0_[7][6] ),
        .R(1'b0));
  FDRE \row_index_reg[7][7] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[7][7]_i_1_n_0 ),
        .Q(\row_index_reg_n_0_[7][7] ),
        .R(1'b0));
  FDRE \row_index_reg[8][0] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[8][0]_i_1_n_0 ),
        .Q(\row_index_reg[8]_0 [0]),
        .R(1'b0));
  FDRE \row_index_reg[8][1] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[8][1]_i_1_n_0 ),
        .Q(\row_index_reg[8]_0 [1]),
        .R(1'b0));
  FDRE \row_index_reg[8][2] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[8][2]_i_1_n_0 ),
        .Q(\row_index_reg[8]_0 [2]),
        .R(1'b0));
  FDRE \row_index_reg[8][3] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[8][3]_i_1_n_0 ),
        .Q(\row_index_reg[8]_0 [3]),
        .R(1'b0));
  FDRE \row_index_reg[8][4] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[8][4]_i_1_n_0 ),
        .Q(\row_index_reg[8]_0 [4]),
        .R(1'b0));
  FDRE \row_index_reg[8][5] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[8][5]_i_1_n_0 ),
        .Q(\row_index_reg[8]_0 [5]),
        .R(1'b0));
  FDRE \row_index_reg[8][6] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[8][6]_i_1_n_0 ),
        .Q(\row_index_reg[8]_0 [6]),
        .R(1'b0));
  FDRE \row_index_reg[8][7] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[8][7]_i_1_n_0 ),
        .Q(\row_index_reg[8]_0 [7]),
        .R(1'b0));
  FDRE \row_index_reg[9][0] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[9][0]_i_1_n_0 ),
        .Q(\row_index_reg[9]_1 [0]),
        .R(1'b0));
  FDRE \row_index_reg[9][1] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[9][1]_i_1_n_0 ),
        .Q(\row_index_reg[9]_1 [1]),
        .R(1'b0));
  FDRE \row_index_reg[9][2] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[9][2]_i_1_n_0 ),
        .Q(\row_index_reg[9]_1 [2]),
        .R(1'b0));
  FDRE \row_index_reg[9][3] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[9][3]_i_1_n_0 ),
        .Q(\row_index_reg[9]_1 [3]),
        .R(1'b0));
  FDRE \row_index_reg[9][4] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[9][4]_i_1_n_0 ),
        .Q(\row_index_reg[9]_1 [4]),
        .R(1'b0));
  FDRE \row_index_reg[9][5] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[9][5]_i_1_n_0 ),
        .Q(\row_index_reg[9]_1 [5]),
        .R(1'b0));
  FDRE \row_index_reg[9][6] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[9][6]_i_1_n_0 ),
        .Q(\row_index_reg[9]_1 [6]),
        .R(1'b0));
  FDRE \row_index_reg[9][7] 
       (.C(s_axi_aclk),
        .CE(\row_index[0][7]_i_1_n_0 ),
        .D(\row_index[9][7]_i_1_n_0 ),
        .Q(\row_index_reg[9]_1 [7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s0_palette_data[15]_i_11 
       (.I0(\row_index_reg_n_0_[3][7] ),
        .I1(\row_index_reg_n_0_[2][7] ),
        .I2(\pal_issue_reg_n_0_[1] ),
        .I3(\row_index_reg_n_0_[1][7] ),
        .I4(\pal_issue_reg_n_0_[0] ),
        .I5(\row_index_reg_n_0_[0][7] ),
        .O(\s0_palette_data[15]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s0_palette_data[15]_i_12 
       (.I0(\row_index_reg_n_0_[7][7] ),
        .I1(\row_index_reg_n_0_[6][7] ),
        .I2(\pal_issue_reg_n_0_[1] ),
        .I3(\row_index_reg_n_0_[5][7] ),
        .I4(\pal_issue_reg_n_0_[0] ),
        .I5(\row_index_reg_n_0_[4][7] ),
        .O(\s0_palette_data[15]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s0_palette_data[15]_i_13 
       (.I0(\row_index_reg[11]_3 [7]),
        .I1(\row_index_reg[10]_2 [7]),
        .I2(\pal_issue_reg_n_0_[1] ),
        .I3(\row_index_reg[9]_1 [7]),
        .I4(\pal_issue_reg_n_0_[0] ),
        .I5(\row_index_reg[8]_0 [7]),
        .O(\s0_palette_data[15]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s0_palette_data[15]_i_14 
       (.I0(\row_index_reg[15]_7 [7]),
        .I1(\row_index_reg[14]_6 [7]),
        .I2(\pal_issue_reg_n_0_[1] ),
        .I3(\row_index_reg[13]_5 [7]),
        .I4(\pal_issue_reg_n_0_[0] ),
        .I5(\row_index_reg[12]_4 [7]),
        .O(\s0_palette_data[15]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s0_palette_data[15]_i_15 
       (.I0(\row_index_reg[19]_10 [7]),
        .I1(\row_index_reg[18]_9 [7]),
        .I2(\pal_issue_reg_n_0_[1] ),
        .I3(\row_index_reg[17]_8 [7]),
        .I4(\pal_issue_reg_n_0_[0] ),
        .I5(\row_index_reg_n_0_[16][7] ),
        .O(\s0_palette_data[15]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s0_palette_data[15]_i_16 
       (.I0(\row_index_reg[23]_14 [7]),
        .I1(\row_index_reg[22]_13 [7]),
        .I2(\pal_issue_reg_n_0_[1] ),
        .I3(\row_index_reg[21]_12 [7]),
        .I4(\pal_issue_reg_n_0_[0] ),
        .I5(\row_index_reg[20]_11 [7]),
        .O(\s0_palette_data[15]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s0_palette_data[15]_i_17 
       (.I0(\row_index_reg[27]_18 [7]),
        .I1(\row_index_reg[26]_17 [7]),
        .I2(\pal_issue_reg_n_0_[1] ),
        .I3(\row_index_reg[25]_16 [7]),
        .I4(\pal_issue_reg_n_0_[0] ),
        .I5(\row_index_reg[24]_15 [7]),
        .O(\s0_palette_data[15]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s0_palette_data[15]_i_18 
       (.I0(\row_index_reg_n_0_[31][7] ),
        .I1(\row_index_reg[30]_21 [7]),
        .I2(\pal_issue_reg_n_0_[1] ),
        .I3(\row_index_reg[29]_20 [7]),
        .I4(\pal_issue_reg_n_0_[0] ),
        .I5(\row_index_reg[28]_19 [7]),
        .O(\s0_palette_data[15]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h22300030)) 
    \s0_palette_data[15]_i_4 
       (.I0(spr_att_vdp_dout[52]),
        .I1(\pal_issue_reg_n_0_[5] ),
        .I2(\s0_palette_data_reg[15]_i_5_n_0 ),
        .I3(\pal_issue_reg_n_0_[4] ),
        .I4(\s0_palette_data_reg[15]_i_6_n_0 ),
        .O(s0_palette_addr[7]));
  MUXF7 \s0_palette_data_reg[15]_i_10 
       (.I0(\s0_palette_data[15]_i_17_n_0 ),
        .I1(\s0_palette_data[15]_i_18_n_0 ),
        .O(\s0_palette_data_reg[15]_i_10_n_0 ),
        .S(\pal_issue_reg_n_0_[2] ));
  MUXF8 \s0_palette_data_reg[15]_i_5 
       (.I0(\s0_palette_data_reg[15]_i_7_n_0 ),
        .I1(\s0_palette_data_reg[15]_i_8_n_0 ),
        .O(\s0_palette_data_reg[15]_i_5_n_0 ),
        .S(\pal_issue_reg_n_0_[3] ));
  MUXF8 \s0_palette_data_reg[15]_i_6 
       (.I0(\s0_palette_data_reg[15]_i_9_n_0 ),
        .I1(\s0_palette_data_reg[15]_i_10_n_0 ),
        .O(\s0_palette_data_reg[15]_i_6_n_0 ),
        .S(\pal_issue_reg_n_0_[3] ));
  MUXF7 \s0_palette_data_reg[15]_i_7 
       (.I0(\s0_palette_data[15]_i_11_n_0 ),
        .I1(\s0_palette_data[15]_i_12_n_0 ),
        .O(\s0_palette_data_reg[15]_i_7_n_0 ),
        .S(\pal_issue_reg_n_0_[2] ));
  MUXF7 \s0_palette_data_reg[15]_i_8 
       (.I0(\s0_palette_data[15]_i_13_n_0 ),
        .I1(\s0_palette_data[15]_i_14_n_0 ),
        .O(\s0_palette_data_reg[15]_i_8_n_0 ),
        .S(\pal_issue_reg_n_0_[2] ));
  MUXF7 \s0_palette_data_reg[15]_i_9 
       (.I0(\s0_palette_data[15]_i_15_n_0 ),
        .I1(\s0_palette_data[15]_i_16_n_0 ),
        .O(\s0_palette_data_reg[15]_i_9_n_0 ),
        .S(\pal_issue_reg_n_0_[2] ));
  (* CHECK_LICENSE_TYPE = "blk_mem_gen_spr_att,blk_mem_gen_v8_4_12,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
  Block_top_VDP_wrapper_0_0_blk_mem_gen_spr_att spr_att
       (.addra(att_pos_reg),
        .addrb(s0_att_cpu_addr),
        .clka(s_axi_aclk),
        .clkb(s0_att_cpu_clk),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb(s0_att_cpu_din),
        .douta({spr_att_vdp_dout[63:50],s0_palette_addr[9:8],NLW_spr_att_douta_UNCONNECTED[47],spr_att_vdp_dout[46:0]}),
        .doutb(s0_att_cpu_dout),
        .enb(s0_att_cpu_en),
        .wea({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .web(s0_att_cpu_wen));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \spr_cnt[0]_i_1 
       (.I0(spr_cnt_reg[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \spr_cnt[1]_i_1 
       (.I0(spr_cnt_reg[0]),
        .I1(spr_cnt_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \spr_cnt[2]_i_1 
       (.I0(spr_cnt_reg[0]),
        .I1(spr_cnt_reg[1]),
        .I2(spr_cnt_reg[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \spr_cnt[3]_i_1 
       (.I0(spr_cnt_reg[1]),
        .I1(spr_cnt_reg[0]),
        .I2(spr_cnt_reg[2]),
        .I3(spr_cnt_reg[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \spr_cnt[4]_i_1 
       (.I0(spr_cnt_reg[2]),
        .I1(spr_cnt_reg[0]),
        .I2(spr_cnt_reg[1]),
        .I3(spr_cnt_reg[3]),
        .I4(spr_cnt_reg[4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \spr_cnt[5]_i_1 
       (.I0(spr_cnt_reg[3]),
        .I1(spr_cnt_reg[1]),
        .I2(spr_cnt_reg[0]),
        .I3(spr_cnt_reg[2]),
        .I4(spr_cnt_reg[4]),
        .I5(spr_cnt_reg[5]),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \spr_cnt[6]_i_1 
       (.I0(\spr_cnt[7]_i_2_n_0 ),
        .I1(spr_cnt_reg[6]),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \spr_cnt[7]_i_1 
       (.I0(\spr_cnt[7]_i_2_n_0 ),
        .I1(spr_cnt_reg[6]),
        .I2(spr_cnt_reg[7]),
        .O(p_0_in__0[7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \spr_cnt[7]_i_2 
       (.I0(spr_cnt_reg[5]),
        .I1(spr_cnt_reg[3]),
        .I2(spr_cnt_reg[1]),
        .I3(spr_cnt_reg[0]),
        .I4(spr_cnt_reg[2]),
        .I5(spr_cnt_reg[4]),
        .O(\spr_cnt[7]_i_2_n_0 ));
  FDRE \spr_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(spr_cnt),
        .D(p_0_in__0[0]),
        .Q(spr_cnt_reg[0]),
        .R(att_pos0));
  FDRE \spr_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(spr_cnt),
        .D(p_0_in__0[1]),
        .Q(spr_cnt_reg[1]),
        .R(att_pos0));
  FDRE \spr_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(spr_cnt),
        .D(p_0_in__0[2]),
        .Q(spr_cnt_reg[2]),
        .R(att_pos0));
  FDRE \spr_cnt_reg[3] 
       (.C(s_axi_aclk),
        .CE(spr_cnt),
        .D(p_0_in__0[3]),
        .Q(spr_cnt_reg[3]),
        .R(att_pos0));
  FDRE \spr_cnt_reg[4] 
       (.C(s_axi_aclk),
        .CE(spr_cnt),
        .D(p_0_in__0[4]),
        .Q(spr_cnt_reg[4]),
        .R(att_pos0));
  FDRE \spr_cnt_reg[5] 
       (.C(s_axi_aclk),
        .CE(spr_cnt),
        .D(p_0_in__0[5]),
        .Q(spr_cnt_reg[5]),
        .R(att_pos0));
  FDRE \spr_cnt_reg[6] 
       (.C(s_axi_aclk),
        .CE(spr_cnt),
        .D(p_0_in__0[6]),
        .Q(spr_cnt_reg[6]),
        .R(att_pos0));
  FDRE \spr_cnt_reg[7] 
       (.C(s_axi_aclk),
        .CE(spr_cnt),
        .D(p_0_in__0[7]),
        .Q(spr_cnt_reg[7]),
        .R(att_pos0));
  (* CHECK_LICENSE_TYPE = "blk_mem_gen_spr_data,blk_mem_gen_v8_4_12,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
  Block_top_VDP_wrapper_0_0_blk_mem_gen_spr_data spr_data
       (.addra({\data_pos_reg_n_0_[10] ,\data_pos_reg_n_0_[9] ,\data_pos_reg_n_0_[8] ,\data_pos_reg_n_0_[7] ,\data_pos_reg_n_0_[6] ,\data_pos_reg_n_0_[5] ,\data_pos_reg_n_0_[4] ,\data_pos_reg_n_0_[3] ,\data_pos_reg_n_0_[2] ,\data_pos_reg_n_0_[1] ,\data_pos_reg_n_0_[0] }),
        .addrb(s0_data_cpu_addr),
        .clka(s_axi_aclk),
        .clkb(s0_data_cpu_clk),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb(s0_data_cpu_din),
        .douta(spr_data_vdp_dout),
        .doutb(s0_data_cpu_dout),
        .enb(s0_data_cpu_en),
        .wea({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .web(s0_data_cpu_wen));
  (* CHECK_LICENSE_TYPE = "blk_mem_gen_spr_line,blk_mem_gen_v8_4_12,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
  Block_top_VDP_wrapper_0_0_blk_mem_gen_spr_line spr_line
       (.addra({\line_pos_reg_reg_n_0_[7] ,\line_pos_reg_reg_n_0_[6] ,\line_pos_reg_reg_n_0_[5] ,\line_pos_reg_reg_n_0_[4] ,\line_pos_reg_reg_n_0_[3] ,\line_pos_reg_reg_n_0_[2] ,\line_pos_reg_reg_n_0_[1] ,\line_pos_reg_reg_n_0_[0] }),
        .addrb(Q),
        .clka(s_axi_aclk),
        .clkb(s_axi_aclk),
        .dina({\line_data_reg_n_0_[63] ,\line_data_reg_n_0_[62] ,\line_data_reg_n_0_[61] ,\line_data_reg_n_0_[60] ,\line_data_reg_n_0_[59] ,\line_data_reg_n_0_[58] ,\line_data_reg_n_0_[57] ,\line_data_reg_n_0_[56] ,\line_data_reg_n_0_[55] ,\line_data_reg_n_0_[54] ,\line_data_reg_n_0_[53] ,\line_data_reg_n_0_[52] ,\line_data_reg_n_0_[51] ,\line_data_reg_n_0_[50] ,\line_data_reg_n_0_[49] ,\line_data_reg_n_0_[48] ,\line_data_reg_n_0_[47] ,\line_data_reg_n_0_[46] ,\line_data_reg_n_0_[45] ,\line_data_reg_n_0_[44] ,\line_data_reg_n_0_[43] ,\line_data_reg_n_0_[42] ,\line_data_reg_n_0_[41] ,\line_data_reg_n_0_[40] ,\line_data_reg_n_0_[39] ,\line_data_reg_n_0_[38] ,\line_data_reg_n_0_[37] ,\line_data_reg_n_0_[36] ,\line_data_reg_n_0_[35] ,\line_data_reg_n_0_[34] ,\line_data_reg_n_0_[33] ,\line_data_reg_n_0_[32] ,\line_data_reg_n_0_[31] ,\line_data_reg_n_0_[30] ,\line_data_reg_n_0_[29] ,\line_data_reg_n_0_[28] ,\line_data_reg_n_0_[27] ,\line_data_reg_n_0_[26] ,\line_data_reg_n_0_[25] ,\line_data_reg_n_0_[24] ,\line_data_reg_n_0_[23] ,\line_data_reg_n_0_[22] ,\line_data_reg_n_0_[21] ,\line_data_reg_n_0_[20] ,\line_data_reg_n_0_[19] ,\line_data_reg_n_0_[18] ,\line_data_reg_n_0_[17] ,\line_data_reg_n_0_[16] ,\line_data_reg_n_0_[15] ,\line_data_reg_n_0_[14] ,\line_data_reg_n_0_[13] ,\line_data_reg_n_0_[12] ,\line_data_reg_n_0_[11] ,\line_data_reg_n_0_[10] ,\line_data_reg_n_0_[9] ,\line_data_reg_n_0_[8] ,\line_data_reg_n_0_[7] ,\line_data_reg_n_0_[6] ,\line_data_reg_n_0_[5] ,\line_data_reg_n_0_[4] ,\line_data_reg_n_0_[3] ,\line_data_reg_n_0_[2] ,\line_data_reg_n_0_[1] ,\line_data_reg_n_0_[0] }),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_spr_line_douta_UNCONNECTED[63:0]),
        .doutb({s0_dout,doutb}),
        .wea({\line_we_reg_n_0_[7] ,\line_we_reg_n_0_[7] ,\line_we_reg_n_0_[5] ,\line_we_reg_n_0_[5] ,\line_we_reg_n_0_[3] ,\line_we_reg_n_0_[3] ,\line_we_reg_n_0_[1] ,\line_we_reg_n_0_[1] }),
        .web({1'b0,1'b0}));
  LUT3 #(
    .INIT(8'hFE)) 
    \v_cnt[10]_i_4 
       (.I0(\FSM_onehot_state[6]_i_3_0 [5]),
        .I1(\FSM_onehot_state[6]_i_3_0 [7]),
        .I2(\FSM_onehot_state[6]_i_3_0 [6]),
        .O(\h_cnt_reg[5] ));
endmodule

(* ORIG_REF_NAME = "VDP_tile_gen" *) 
module Block_top_VDP_wrapper_0_0_VDP_tile_gen
   (\gen_done_reg[1] ,
    \v_cnt_reg[3] ,
    D,
    t1_map_cpu_dout,
    t1_data_cpu_dout,
    t1_palette_addr,
    Q,
    gen_done,
    gen_done0,
    \map_r_addr_reg[13]_0 ,
    \map_r_addr_reg[11]_0 ,
    doutb,
    gen_fin_data1,
    ctrl_reg,
    buf_dout,
    s_axi_aclk,
    t1_palette_data,
    \gen_fin_data_reg[11] ,
    t1_map_cpu_clk,
    t1_map_cpu_en,
    t1_map_cpu_wen,
    t1_map_cpu_addr,
    t1_map_cpu_din,
    t1_data_cpu_clk,
    t1_data_cpu_en,
    t1_data_cpu_wen,
    t1_data_cpu_addr,
    t1_data_cpu_din,
    S,
    \map_r_addr_reg[11]_1 ,
    t1_y_off_reg,
    t1_x_off_reg,
    gen_line_start);
  output \gen_done_reg[1] ;
  output [1:0]\v_cnt_reg[3] ;
  output [11:0]D;
  output [31:0]t1_map_cpu_dout;
  output [31:0]t1_data_cpu_dout;
  output [7:0]t1_palette_addr;
  input [6:0]Q;
  input [0:0]gen_done;
  input gen_done0;
  input [1:0]\map_r_addr_reg[13]_0 ;
  input \map_r_addr_reg[11]_0 ;
  input [11:0]doutb;
  input gen_fin_data1;
  input [1:0]ctrl_reg;
  input [11:0]buf_dout;
  input s_axi_aclk;
  input [15:0]t1_palette_data;
  input [9:0]\gen_fin_data_reg[11] ;
  input t1_map_cpu_clk;
  input t1_map_cpu_en;
  input [3:0]t1_map_cpu_wen;
  input [12:0]t1_map_cpu_addr;
  input [31:0]t1_map_cpu_din;
  input t1_data_cpu_clk;
  input t1_data_cpu_en;
  input [3:0]t1_data_cpu_wen;
  input [13:0]t1_data_cpu_addr;
  input [31:0]t1_data_cpu_din;
  input [0:0]S;
  input [2:0]\map_r_addr_reg[11]_1 ;
  input [5:0]t1_y_off_reg;
  input [9:0]t1_x_off_reg;
  input gen_line_start;

  wire [11:0]D;
  wire \FSM_onehot_state[0]_i_2__0_n_0 ;
  wire \FSM_onehot_state[5]_i_2__0_n_0 ;
  wire \FSM_onehot_state[6]_i_1__0_n_0 ;
  wire \FSM_onehot_state[6]_i_2__0_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[6] ;
  wire [6:0]Q;
  wire [0:0]S;
  wire [11:0]buf_dout;
  wire [1:0]ctrl_reg;
  wire [0:0]data_r_addr;
  wire \data_r_addr_reg_n_0_[0] ;
  wire \data_r_addr_reg_n_0_[10] ;
  wire \data_r_addr_reg_n_0_[11] ;
  wire \data_r_addr_reg_n_0_[12] ;
  wire \data_r_addr_reg_n_0_[1] ;
  wire \data_r_addr_reg_n_0_[2] ;
  wire \data_r_addr_reg_n_0_[3] ;
  wire \data_r_addr_reg_n_0_[4] ;
  wire \data_r_addr_reg_n_0_[5] ;
  wire \data_r_addr_reg_n_0_[6] ;
  wire \data_r_addr_reg_n_0_[7] ;
  wire \data_r_addr_reg_n_0_[8] ;
  wire \data_r_addr_reg_n_0_[9] ;
  wire [63:0]data_r_data;
  wire [11:0]doutb;
  wire [0:0]gen_done;
  wire gen_done0;
  wire \gen_done_reg[1] ;
  wire gen_fin_data1;
  wire gen_fin_data11_out;
  wire [9:0]\gen_fin_data_reg[11] ;
  wire [7:7]gen_line;
  wire gen_line_start;
  wire line_done0;
  wire line_done_i_1__0_n_0;
  wire [9:0]map_a_dout;
  wire [13:7]map_line_addr_start;
  wire [0:0]map_r_addr;
  wire \map_r_addr[11]_i_3__0_n_0 ;
  wire \map_r_addr[11]_i_7_n_0 ;
  wire \map_r_addr[13]_i_2_n_0 ;
  wire \map_r_addr[13]_i_3_n_0 ;
  wire \map_r_addr[7]_i_2__0_n_0 ;
  wire \map_r_addr[7]_i_3__0_n_0 ;
  wire \map_r_addr[7]_i_4__0_n_0 ;
  wire \map_r_addr[7]_i_5_n_0 ;
  wire \map_r_addr[7]_i_6_n_0 ;
  wire \map_r_addr[7]_i_8_n_0 ;
  wire \map_r_addr_reg[11]_0 ;
  wire [2:0]\map_r_addr_reg[11]_1 ;
  wire \map_r_addr_reg[11]_i_1_n_0 ;
  wire \map_r_addr_reg[11]_i_1_n_1 ;
  wire \map_r_addr_reg[11]_i_1_n_2 ;
  wire \map_r_addr_reg[11]_i_1_n_3 ;
  wire [1:0]\map_r_addr_reg[13]_0 ;
  wire \map_r_addr_reg[13]_i_1_n_3 ;
  wire \map_r_addr_reg[7]_i_1_n_0 ;
  wire \map_r_addr_reg[7]_i_1_n_1 ;
  wire \map_r_addr_reg[7]_i_1_n_2 ;
  wire \map_r_addr_reg[7]_i_1_n_3 ;
  wire \map_r_addr_reg[7]_i_1_n_5 ;
  wire \map_r_addr_reg[7]_i_1_n_6 ;
  wire \map_r_addr_reg[7]_i_1_n_7 ;
  wire \map_r_addr_reg_n_0_[0] ;
  wire \map_r_addr_reg_n_0_[10] ;
  wire \map_r_addr_reg_n_0_[11] ;
  wire \map_r_addr_reg_n_0_[12] ;
  wire \map_r_addr_reg_n_0_[13] ;
  wire \map_r_addr_reg_n_0_[1] ;
  wire \map_r_addr_reg_n_0_[2] ;
  wire \map_r_addr_reg_n_0_[3] ;
  wire \map_r_addr_reg_n_0_[4] ;
  wire \map_r_addr_reg_n_0_[5] ;
  wire \map_r_addr_reg_n_0_[6] ;
  wire \map_r_addr_reg_n_0_[7] ;
  wire \map_r_addr_reg_n_0_[8] ;
  wire \map_r_addr_reg_n_0_[9] ;
  wire [6:0]map_x;
  wire \map_x[3]_i_2__0_n_0 ;
  wire \map_x[4]_i_2__0_n_0 ;
  wire \map_x[6]_i_2__0_n_0 ;
  wire \map_x_reg_n_0_[0] ;
  wire \map_x_reg_n_0_[1] ;
  wire \map_x_reg_n_0_[2] ;
  wire \map_x_reg_n_0_[3] ;
  wire \map_x_reg_n_0_[4] ;
  wire \map_x_reg_n_0_[5] ;
  wire \map_x_reg_n_0_[6] ;
  wire palette_t1_mem_reg_0_127_0_0_i_10_n_0;
  wire palette_t1_mem_reg_0_127_0_0_i_11_n_0;
  wire palette_t1_mem_reg_0_127_0_0_i_12_n_0;
  wire palette_t1_mem_reg_0_127_0_0_i_13_n_0;
  wire palette_t1_mem_reg_0_127_0_0_i_14_n_0;
  wire palette_t1_mem_reg_0_127_0_0_i_15_n_0;
  wire palette_t1_mem_reg_0_127_0_0_i_16_n_0;
  wire palette_t1_mem_reg_0_127_0_0_i_17_n_0;
  wire palette_t1_mem_reg_0_127_0_0_i_18_n_0;
  wire palette_t1_mem_reg_0_127_0_0_i_19_n_0;
  wire palette_t1_mem_reg_0_127_0_0_i_20_n_0;
  wire palette_t1_mem_reg_0_127_0_0_i_21_n_0;
  wire palette_t1_mem_reg_0_127_0_0_i_22_n_0;
  wire palette_t1_mem_reg_0_127_0_0_i_9_n_0;
  wire \pixel_addr[0]_i_1__0_n_0 ;
  wire \pixel_addr[1]_i_1__0_n_0 ;
  wire \pixel_addr[2]_i_1__0_n_0 ;
  wire \pixel_addr[3]_i_1__0_n_0 ;
  wire \pixel_addr[4]_i_1__0_n_0 ;
  wire \pixel_addr[5]_i_1__0_n_0 ;
  wire \pixel_addr[5]_i_2__0_n_0 ;
  wire \pixel_addr[6]_i_1__0_n_0 ;
  wire \pixel_addr[7]_i_1__0_n_0 ;
  wire \pixel_addr[7]_i_2__0_n_0 ;
  wire \pixel_addr[8]_i_1__0_n_0 ;
  wire \pixel_addr[8]_i_2__0_n_0 ;
  wire \pixel_addr[8]_i_3__0_n_0 ;
  wire \pixel_addr[9]_i_1__0_n_0 ;
  wire \pixel_addr_reg_n_0_[0] ;
  wire \pixel_addr_reg_n_0_[1] ;
  wire \pixel_addr_reg_n_0_[2] ;
  wire \pixel_addr_reg_n_0_[3] ;
  wire \pixel_addr_reg_n_0_[4] ;
  wire \pixel_addr_reg_n_0_[5] ;
  wire \pixel_addr_reg_n_0_[6] ;
  wire \pixel_addr_reg_n_0_[7] ;
  wire \pixel_addr_reg_n_0_[8] ;
  wire \pixel_addr_reg_n_0_[9] ;
  wire s_axi_aclk;
  wire [5:2]state;
  wire [5:0]state__0;
  wire [13:0]t1_data_cpu_addr;
  wire t1_data_cpu_clk;
  wire [31:0]t1_data_cpu_din;
  wire [31:0]t1_data_cpu_dout;
  wire t1_data_cpu_en;
  wire [3:0]t1_data_cpu_wen;
  wire t1_done;
  wire [15:0]t1_dout;
  wire [12:0]t1_map_cpu_addr;
  wire t1_map_cpu_clk;
  wire [31:0]t1_map_cpu_din;
  wire [31:0]t1_map_cpu_dout;
  wire t1_map_cpu_en;
  wire [3:0]t1_map_cpu_wen;
  wire [7:0]t1_palette_addr;
  wire [15:0]t1_palette_data;
  wire \t1_palette_data[15]_i_3_n_0 ;
  wire \t1_palette_data[15]_i_4_n_0 ;
  wire [9:0]t1_x_off_reg;
  wire [5:0]t1_y_off_reg;
  wire [2:0]tile_pixel;
  wire \tile_pixel_reg_n_0_[0] ;
  wire \tile_pixel_reg_n_0_[1] ;
  wire \tile_pixel_reg_n_0_[2] ;
  wire [1:0]\v_cnt_reg[3] ;
  wire [63:0]NLW_Tile_DATA_mem_dina_UNCONNECTED;
  wire [15:0]NLW_Tile_MAP_mem_dina_UNCONNECTED;
  wire [15:10]NLW_Tile_MAP_mem_douta_UNCONNECTED;
  wire [15:0]NLW_line_buf_dinb_UNCONNECTED;
  wire [15:0]NLW_line_buf_douta_UNCONNECTED;
  wire [3:1]\NLW_map_r_addr_reg[13]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_map_r_addr_reg[13]_i_1_O_UNCONNECTED ;

  LUT4 #(
    .INIT(16'hAAAB)) 
    \FSM_onehot_state[0]_i_1__0 
       (.I0(\FSM_onehot_state[0]_i_2__0_n_0 ),
        .I1(\FSM_onehot_state[6]_i_2__0_n_0 ),
        .I2(line_done0),
        .I3(map_r_addr),
        .O(state__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \FSM_onehot_state[0]_i_2__0 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\pixel_addr_reg_n_0_[7] ),
        .I2(\pixel_addr_reg_n_0_[9] ),
        .I3(\pixel_addr_reg_n_0_[8] ),
        .I4(\pixel_addr[8]_i_3__0_n_0 ),
        .O(\FSM_onehot_state[0]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA8000)) 
    \FSM_onehot_state[1]_i_1__0 
       (.I0(\pixel_addr[8]_i_1__0_n_0 ),
        .I1(\tile_pixel_reg_n_0_[0] ),
        .I2(\tile_pixel_reg_n_0_[1] ),
        .I3(\tile_pixel_reg_n_0_[2] ),
        .I4(line_done0),
        .O(state__0[1]));
  LUT5 #(
    .INIT(32'hBFFFAAAA)) 
    \FSM_onehot_state[5]_i_1__0 
       (.I0(state[4]),
        .I1(\tile_pixel_reg_n_0_[0] ),
        .I2(\tile_pixel_reg_n_0_[1] ),
        .I3(\tile_pixel_reg_n_0_[2] ),
        .I4(\FSM_onehot_state[5]_i_2__0_n_0 ),
        .O(state__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT5 #(
    .INIT(32'hFFFB0000)) 
    \FSM_onehot_state[5]_i_2__0 
       (.I0(\pixel_addr_reg_n_0_[7] ),
        .I1(\pixel_addr_reg_n_0_[9] ),
        .I2(\pixel_addr_reg_n_0_[8] ),
        .I3(\pixel_addr[8]_i_3__0_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[6] ),
        .O(\FSM_onehot_state[5]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFB)) 
    \FSM_onehot_state[6]_i_1__0 
       (.I0(\FSM_onehot_state[6]_i_2__0_n_0 ),
        .I1(line_done0),
        .I2(gen_line_start),
        .I3(map_r_addr),
        .O(\FSM_onehot_state[6]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_state[6]_i_2__0 
       (.I0(state[4]),
        .I1(data_r_addr),
        .I2(\FSM_onehot_state_reg_n_0_[6] ),
        .I3(state[5]),
        .I4(state[2]),
        .O(\FSM_onehot_state[6]_i_2__0_n_0 ));
  (* FSM_ENCODED_STATES = "STATE_C0:000000000100,STATE_C1:000000001000,STATE_C2:000000010000,STATE_C4:000001000000,STATE_WAIT:000000000001,STATE_C3:000000100000,STATE_START:000000000010" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(\FSM_onehot_state[6]_i_1__0_n_0 ),
        .D(state__0[0]),
        .Q(line_done0),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "STATE_C0:000000000100,STATE_C1:000000001000,STATE_C2:000000010000,STATE_C4:000001000000,STATE_WAIT:000000000001,STATE_C3:000000100000,STATE_START:000000000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(\FSM_onehot_state[6]_i_1__0_n_0 ),
        .D(state__0[1]),
        .Q(map_r_addr),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "STATE_C0:000000000100,STATE_C1:000000001000,STATE_C2:000000010000,STATE_C4:000001000000,STATE_WAIT:000000000001,STATE_C3:000000100000,STATE_START:000000000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(s_axi_aclk),
        .CE(\FSM_onehot_state[6]_i_1__0_n_0 ),
        .D(map_r_addr),
        .Q(state[2]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "STATE_C0:000000000100,STATE_C1:000000001000,STATE_C2:000000010000,STATE_C4:000001000000,STATE_WAIT:000000000001,STATE_C3:000000100000,STATE_START:000000000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(s_axi_aclk),
        .CE(\FSM_onehot_state[6]_i_1__0_n_0 ),
        .D(state[2]),
        .Q(data_r_addr),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "STATE_C0:000000000100,STATE_C1:000000001000,STATE_C2:000000010000,STATE_C4:000001000000,STATE_WAIT:000000000001,STATE_C3:000000100000,STATE_START:000000000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(s_axi_aclk),
        .CE(\FSM_onehot_state[6]_i_1__0_n_0 ),
        .D(data_r_addr),
        .Q(state[4]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "STATE_C0:000000000100,STATE_C1:000000001000,STATE_C2:000000010000,STATE_C4:000001000000,STATE_WAIT:000000000001,STATE_C3:000000100000,STATE_START:000000000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(s_axi_aclk),
        .CE(\FSM_onehot_state[6]_i_1__0_n_0 ),
        .D(state__0[5]),
        .Q(state[5]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "STATE_C0:000000000100,STATE_C1:000000001000,STATE_C2:000000010000,STATE_C4:000001000000,STATE_WAIT:000000000001,STATE_C3:000000100000,STATE_START:000000000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[6] 
       (.C(s_axi_aclk),
        .CE(\FSM_onehot_state[6]_i_1__0_n_0 ),
        .D(state[5]),
        .Q(\FSM_onehot_state_reg_n_0_[6] ),
        .R(1'b0));
  (* CHECK_LICENSE_TYPE = "blk_mem_tile_data,blk_mem_gen_v8_4_12,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
  blk_mem_tile_data_HD235 Tile_DATA_mem
       (.addra({\data_r_addr_reg_n_0_[12] ,\data_r_addr_reg_n_0_[11] ,\data_r_addr_reg_n_0_[10] ,\data_r_addr_reg_n_0_[9] ,\data_r_addr_reg_n_0_[8] ,\data_r_addr_reg_n_0_[7] ,\data_r_addr_reg_n_0_[6] ,\data_r_addr_reg_n_0_[5] ,\data_r_addr_reg_n_0_[4] ,\data_r_addr_reg_n_0_[3] ,\data_r_addr_reg_n_0_[2] ,\data_r_addr_reg_n_0_[1] ,\data_r_addr_reg_n_0_[0] }),
        .addrb(t1_data_cpu_addr),
        .clka(s_axi_aclk),
        .clkb(t1_data_cpu_clk),
        .dina(NLW_Tile_DATA_mem_dina_UNCONNECTED[63:0]),
        .dinb(t1_data_cpu_din),
        .douta(data_r_data),
        .doutb(t1_data_cpu_dout),
        .enb(t1_data_cpu_en),
        .wea({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .web(t1_data_cpu_wen));
  (* CHECK_LICENSE_TYPE = "blk_mem_tile_map,blk_mem_gen_v8_4_12,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
  blk_mem_tile_map_HD236 Tile_MAP_mem
       (.addra({\map_r_addr_reg_n_0_[13] ,\map_r_addr_reg_n_0_[12] ,\map_r_addr_reg_n_0_[11] ,\map_r_addr_reg_n_0_[10] ,\map_r_addr_reg_n_0_[9] ,\map_r_addr_reg_n_0_[8] ,\map_r_addr_reg_n_0_[7] ,\map_r_addr_reg_n_0_[6] ,\map_r_addr_reg_n_0_[5] ,\map_r_addr_reg_n_0_[4] ,\map_r_addr_reg_n_0_[3] ,\map_r_addr_reg_n_0_[2] ,\map_r_addr_reg_n_0_[1] ,\map_r_addr_reg_n_0_[0] }),
        .addrb(t1_map_cpu_addr),
        .clka(s_axi_aclk),
        .clkb(t1_map_cpu_clk),
        .dina(NLW_Tile_MAP_mem_dina_UNCONNECTED[15:0]),
        .dinb(t1_map_cpu_din),
        .douta({NLW_Tile_MAP_mem_douta_UNCONNECTED[15:10],map_a_dout}),
        .doutb(t1_map_cpu_dout),
        .enb(t1_map_cpu_en),
        .wea({1'b0,1'b0}),
        .web(t1_map_cpu_wen));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_addr_reg[0] 
       (.C(s_axi_aclk),
        .CE(data_r_addr),
        .D(\map_r_addr_reg[7]_i_1_n_7 ),
        .Q(\data_r_addr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_addr_reg[10] 
       (.C(s_axi_aclk),
        .CE(data_r_addr),
        .D(map_a_dout[7]),
        .Q(\data_r_addr_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_addr_reg[11] 
       (.C(s_axi_aclk),
        .CE(data_r_addr),
        .D(map_a_dout[8]),
        .Q(\data_r_addr_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_addr_reg[12] 
       (.C(s_axi_aclk),
        .CE(data_r_addr),
        .D(map_a_dout[9]),
        .Q(\data_r_addr_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_addr_reg[1] 
       (.C(s_axi_aclk),
        .CE(data_r_addr),
        .D(\map_r_addr_reg[7]_i_1_n_6 ),
        .Q(\data_r_addr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_addr_reg[2] 
       (.C(s_axi_aclk),
        .CE(data_r_addr),
        .D(\map_r_addr_reg[7]_i_1_n_5 ),
        .Q(\data_r_addr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_addr_reg[3] 
       (.C(s_axi_aclk),
        .CE(data_r_addr),
        .D(map_a_dout[0]),
        .Q(\data_r_addr_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_addr_reg[4] 
       (.C(s_axi_aclk),
        .CE(data_r_addr),
        .D(map_a_dout[1]),
        .Q(\data_r_addr_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_addr_reg[5] 
       (.C(s_axi_aclk),
        .CE(data_r_addr),
        .D(map_a_dout[2]),
        .Q(\data_r_addr_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_addr_reg[6] 
       (.C(s_axi_aclk),
        .CE(data_r_addr),
        .D(map_a_dout[3]),
        .Q(\data_r_addr_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_addr_reg[7] 
       (.C(s_axi_aclk),
        .CE(data_r_addr),
        .D(map_a_dout[4]),
        .Q(\data_r_addr_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_addr_reg[8] 
       (.C(s_axi_aclk),
        .CE(data_r_addr),
        .D(map_a_dout[5]),
        .Q(\data_r_addr_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_addr_reg[9] 
       (.C(s_axi_aclk),
        .CE(data_r_addr),
        .D(map_a_dout[6]),
        .Q(\data_r_addr_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \gen_done[1]_i_1 
       (.I0(gen_done),
        .I1(t1_done),
        .I2(gen_done0),
        .O(\gen_done_reg[1] ));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \gen_fin_data[0]_i_1 
       (.I0(t1_dout[0]),
        .I1(gen_fin_data11_out),
        .I2(doutb[0]),
        .I3(gen_fin_data1),
        .I4(ctrl_reg[0]),
        .I5(buf_dout[0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \gen_fin_data[10]_i_1 
       (.I0(t1_dout[10]),
        .I1(gen_fin_data11_out),
        .I2(doutb[10]),
        .I3(gen_fin_data1),
        .I4(ctrl_reg[0]),
        .I5(buf_dout[10]),
        .O(D[10]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \gen_fin_data[11]_i_1 
       (.I0(t1_dout[11]),
        .I1(gen_fin_data11_out),
        .I2(doutb[11]),
        .I3(gen_fin_data1),
        .I4(ctrl_reg[0]),
        .I5(buf_dout[11]),
        .O(D[11]));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \gen_fin_data[11]_i_2 
       (.I0(ctrl_reg[1]),
        .I1(t1_dout[13]),
        .I2(t1_dout[12]),
        .I3(t1_dout[14]),
        .I4(t1_dout[15]),
        .O(gen_fin_data11_out));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \gen_fin_data[1]_i_1 
       (.I0(t1_dout[1]),
        .I1(gen_fin_data11_out),
        .I2(doutb[1]),
        .I3(gen_fin_data1),
        .I4(ctrl_reg[0]),
        .I5(buf_dout[1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \gen_fin_data[2]_i_1 
       (.I0(t1_dout[2]),
        .I1(gen_fin_data11_out),
        .I2(doutb[2]),
        .I3(gen_fin_data1),
        .I4(ctrl_reg[0]),
        .I5(buf_dout[2]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \gen_fin_data[3]_i_1 
       (.I0(t1_dout[3]),
        .I1(gen_fin_data11_out),
        .I2(doutb[3]),
        .I3(gen_fin_data1),
        .I4(ctrl_reg[0]),
        .I5(buf_dout[3]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \gen_fin_data[4]_i_1 
       (.I0(t1_dout[4]),
        .I1(gen_fin_data11_out),
        .I2(doutb[4]),
        .I3(gen_fin_data1),
        .I4(ctrl_reg[0]),
        .I5(buf_dout[4]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \gen_fin_data[5]_i_1 
       (.I0(t1_dout[5]),
        .I1(gen_fin_data11_out),
        .I2(doutb[5]),
        .I3(gen_fin_data1),
        .I4(ctrl_reg[0]),
        .I5(buf_dout[5]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \gen_fin_data[6]_i_1 
       (.I0(t1_dout[6]),
        .I1(gen_fin_data11_out),
        .I2(doutb[6]),
        .I3(gen_fin_data1),
        .I4(ctrl_reg[0]),
        .I5(buf_dout[6]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \gen_fin_data[7]_i_1 
       (.I0(t1_dout[7]),
        .I1(gen_fin_data11_out),
        .I2(doutb[7]),
        .I3(gen_fin_data1),
        .I4(ctrl_reg[0]),
        .I5(buf_dout[7]),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \gen_fin_data[8]_i_1 
       (.I0(t1_dout[8]),
        .I1(gen_fin_data11_out),
        .I2(doutb[8]),
        .I3(gen_fin_data1),
        .I4(ctrl_reg[0]),
        .I5(buf_dout[8]),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \gen_fin_data[9]_i_1 
       (.I0(t1_dout[9]),
        .I1(gen_fin_data11_out),
        .I2(doutb[9]),
        .I3(gen_fin_data1),
        .I4(ctrl_reg[0]),
        .I5(buf_dout[9]),
        .O(D[9]));
  (* CHECK_LICENSE_TYPE = "blk_mem_buf_line,blk_mem_gen_v8_4_12,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
  blk_mem_buf_line_HD237 line_buf
       (.addra({\pixel_addr_reg_n_0_[9] ,\pixel_addr_reg_n_0_[8] ,\pixel_addr_reg_n_0_[7] ,\pixel_addr_reg_n_0_[6] ,\pixel_addr_reg_n_0_[5] ,\pixel_addr_reg_n_0_[4] ,\pixel_addr_reg_n_0_[3] ,\pixel_addr_reg_n_0_[2] ,\pixel_addr_reg_n_0_[1] ,\pixel_addr_reg_n_0_[0] }),
        .addrb(\gen_fin_data_reg[11] ),
        .clka(s_axi_aclk),
        .clkb(s_axi_aclk),
        .dina(t1_palette_data),
        .dinb(NLW_line_buf_dinb_UNCONNECTED[15:0]),
        .douta(NLW_line_buf_douta_UNCONNECTED[15:0]),
        .doutb(t1_dout),
        .ena(\FSM_onehot_state_reg_n_0_[6] ),
        .wea(1'b1),
        .web(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    line_done_i_1__0
       (.I0(t1_done),
        .I1(\FSM_onehot_state[0]_i_2__0_n_0 ),
        .I2(line_done0),
        .O(line_done_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    line_done_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(line_done_i_1__0_n_0),
        .Q(t1_done),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \map_r_addr[11]_i_2 
       (.I0(\map_r_addr_reg[11]_0 ),
        .O(gen_line));
  LUT6 #(
    .INIT(64'hFFFF800000007FFF)) 
    \map_r_addr[11]_i_3 
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\v_cnt_reg[3] [1]));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \map_r_addr[11]_i_3__0 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(\map_r_addr[11]_i_3__0_n_0 ));
  LUT5 #(
    .INIT(32'h80007FFF)) 
    \map_r_addr[11]_i_4 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[4]),
        .I3(Q[3]),
        .I4(Q[5]),
        .O(\v_cnt_reg[3] [0]));
  LUT5 #(
    .INIT(32'h807F7F80)) 
    \map_r_addr[11]_i_7 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[4]),
        .I4(t1_y_off_reg[3]),
        .O(\map_r_addr[11]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \map_r_addr[13]_i_2 
       (.I0(\map_r_addr_reg[13]_0 [1]),
        .I1(t1_y_off_reg[5]),
        .O(\map_r_addr[13]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \map_r_addr[13]_i_3 
       (.I0(\map_r_addr_reg[13]_0 [0]),
        .I1(t1_y_off_reg[4]),
        .O(\map_r_addr[13]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \map_r_addr[7]_i_2__0 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .O(\map_r_addr[7]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \map_r_addr[7]_i_3__0 
       (.I0(Q[1]),
        .I1(Q[2]),
        .O(\map_r_addr[7]_i_3__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \map_r_addr[7]_i_4__0 
       (.I0(Q[1]),
        .O(\map_r_addr[7]_i_4__0_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \map_r_addr[7]_i_5 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(t1_y_off_reg[2]),
        .O(\map_r_addr[7]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \map_r_addr[7]_i_6 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(t1_y_off_reg[1]),
        .O(\map_r_addr[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \map_r_addr[7]_i_8 
       (.I0(Q[0]),
        .I1(t1_y_off_reg[0]),
        .O(\map_r_addr[7]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \map_r_addr_reg[0] 
       (.C(s_axi_aclk),
        .CE(map_r_addr),
        .D(\map_x_reg_n_0_[0] ),
        .Q(\map_r_addr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \map_r_addr_reg[10] 
       (.C(s_axi_aclk),
        .CE(map_r_addr),
        .D(map_line_addr_start[10]),
        .Q(\map_r_addr_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \map_r_addr_reg[11] 
       (.C(s_axi_aclk),
        .CE(map_r_addr),
        .D(map_line_addr_start[11]),
        .Q(\map_r_addr_reg_n_0_[11] ),
        .R(1'b0));
  CARRY4 \map_r_addr_reg[11]_i_1 
       (.CI(\map_r_addr_reg[7]_i_1_n_0 ),
        .CO({\map_r_addr_reg[11]_i_1_n_0 ,\map_r_addr_reg[11]_i_1_n_1 ,\map_r_addr_reg[11]_i_1_n_2 ,\map_r_addr_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({gen_line,\v_cnt_reg[3] ,\map_r_addr[11]_i_3__0_n_0 }),
        .O(map_line_addr_start[11:8]),
        .S({\map_r_addr_reg[11]_1 ,\map_r_addr[11]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \map_r_addr_reg[12] 
       (.C(s_axi_aclk),
        .CE(map_r_addr),
        .D(map_line_addr_start[12]),
        .Q(\map_r_addr_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \map_r_addr_reg[13] 
       (.C(s_axi_aclk),
        .CE(map_r_addr),
        .D(map_line_addr_start[13]),
        .Q(\map_r_addr_reg_n_0_[13] ),
        .R(1'b0));
  CARRY4 \map_r_addr_reg[13]_i_1 
       (.CI(\map_r_addr_reg[11]_i_1_n_0 ),
        .CO({\NLW_map_r_addr_reg[13]_i_1_CO_UNCONNECTED [3:1],\map_r_addr_reg[13]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\map_r_addr_reg[13]_0 [0]}),
        .O({\NLW_map_r_addr_reg[13]_i_1_O_UNCONNECTED [3:2],map_line_addr_start[13:12]}),
        .S({1'b0,1'b0,\map_r_addr[13]_i_2_n_0 ,\map_r_addr[13]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \map_r_addr_reg[1] 
       (.C(s_axi_aclk),
        .CE(map_r_addr),
        .D(\map_x_reg_n_0_[1] ),
        .Q(\map_r_addr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \map_r_addr_reg[2] 
       (.C(s_axi_aclk),
        .CE(map_r_addr),
        .D(\map_x_reg_n_0_[2] ),
        .Q(\map_r_addr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \map_r_addr_reg[3] 
       (.C(s_axi_aclk),
        .CE(map_r_addr),
        .D(\map_x_reg_n_0_[3] ),
        .Q(\map_r_addr_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \map_r_addr_reg[4] 
       (.C(s_axi_aclk),
        .CE(map_r_addr),
        .D(\map_x_reg_n_0_[4] ),
        .Q(\map_r_addr_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \map_r_addr_reg[5] 
       (.C(s_axi_aclk),
        .CE(map_r_addr),
        .D(\map_x_reg_n_0_[5] ),
        .Q(\map_r_addr_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \map_r_addr_reg[6] 
       (.C(s_axi_aclk),
        .CE(map_r_addr),
        .D(\map_x_reg_n_0_[6] ),
        .Q(\map_r_addr_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \map_r_addr_reg[7] 
       (.C(s_axi_aclk),
        .CE(map_r_addr),
        .D(map_line_addr_start[7]),
        .Q(\map_r_addr_reg_n_0_[7] ),
        .R(1'b0));
  CARRY4 \map_r_addr_reg[7]_i_1 
       (.CI(1'b0),
        .CO({\map_r_addr_reg[7]_i_1_n_0 ,\map_r_addr_reg[7]_i_1_n_1 ,\map_r_addr_reg[7]_i_1_n_2 ,\map_r_addr_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\map_r_addr[7]_i_2__0_n_0 ,\map_r_addr[7]_i_3__0_n_0 ,\map_r_addr[7]_i_4__0_n_0 ,Q[0]}),
        .O({map_line_addr_start[7],\map_r_addr_reg[7]_i_1_n_5 ,\map_r_addr_reg[7]_i_1_n_6 ,\map_r_addr_reg[7]_i_1_n_7 }),
        .S({\map_r_addr[7]_i_5_n_0 ,\map_r_addr[7]_i_6_n_0 ,S,\map_r_addr[7]_i_8_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \map_r_addr_reg[8] 
       (.C(s_axi_aclk),
        .CE(map_r_addr),
        .D(map_line_addr_start[8]),
        .Q(\map_r_addr_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \map_r_addr_reg[9] 
       (.C(s_axi_aclk),
        .CE(map_r_addr),
        .D(map_line_addr_start[9]),
        .Q(\map_r_addr_reg_n_0_[9] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hF444)) 
    \map_x[0]_i_1__0 
       (.I0(\map_x_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[6] ),
        .I2(t1_x_off_reg[3]),
        .I3(line_done0),
        .O(map_x[0]));
  LUT5 #(
    .INIT(32'h88F8F888)) 
    \map_x[1]_i_1__0 
       (.I0(t1_x_off_reg[4]),
        .I1(line_done0),
        .I2(\FSM_onehot_state_reg_n_0_[6] ),
        .I3(\map_x_reg_n_0_[0] ),
        .I4(\map_x_reg_n_0_[1] ),
        .O(map_x[1]));
  LUT6 #(
    .INIT(64'h8FF8F8F888888888)) 
    \map_x[2]_i_1__0 
       (.I0(t1_x_off_reg[5]),
        .I1(line_done0),
        .I2(\map_x_reg_n_0_[2] ),
        .I3(\map_x_reg_n_0_[1] ),
        .I4(\map_x_reg_n_0_[0] ),
        .I5(\FSM_onehot_state_reg_n_0_[6] ),
        .O(map_x[2]));
  LUT5 #(
    .INIT(32'hF88F8888)) 
    \map_x[3]_i_1__0 
       (.I0(t1_x_off_reg[6]),
        .I1(line_done0),
        .I2(\map_x_reg_n_0_[3] ),
        .I3(\map_x[3]_i_2__0_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[6] ),
        .O(map_x[3]));
  LUT3 #(
    .INIT(8'h7F)) 
    \map_x[3]_i_2__0 
       (.I0(\map_x_reg_n_0_[1] ),
        .I1(\map_x_reg_n_0_[0] ),
        .I2(\map_x_reg_n_0_[2] ),
        .O(\map_x[3]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hF88F8888)) 
    \map_x[4]_i_1__0 
       (.I0(t1_x_off_reg[7]),
        .I1(line_done0),
        .I2(\map_x_reg_n_0_[4] ),
        .I3(\map_x[4]_i_2__0_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[6] ),
        .O(map_x[4]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \map_x[4]_i_2__0 
       (.I0(\map_x_reg_n_0_[2] ),
        .I1(\map_x_reg_n_0_[0] ),
        .I2(\map_x_reg_n_0_[1] ),
        .I3(\map_x_reg_n_0_[3] ),
        .O(\map_x[4]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'h8FF88888)) 
    \map_x[5]_i_1__0 
       (.I0(t1_x_off_reg[8]),
        .I1(line_done0),
        .I2(\map_x_reg_n_0_[5] ),
        .I3(\map_x[6]_i_2__0_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[6] ),
        .O(map_x[5]));
  LUT6 #(
    .INIT(64'h88F8F888F888F888)) 
    \map_x[6]_i_1__0 
       (.I0(t1_x_off_reg[9]),
        .I1(line_done0),
        .I2(\FSM_onehot_state_reg_n_0_[6] ),
        .I3(\map_x_reg_n_0_[6] ),
        .I4(\map_x_reg_n_0_[5] ),
        .I5(\map_x[6]_i_2__0_n_0 ),
        .O(map_x[6]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \map_x[6]_i_2__0 
       (.I0(\map_x_reg_n_0_[4] ),
        .I1(\map_x_reg_n_0_[3] ),
        .I2(\map_x_reg_n_0_[1] ),
        .I3(\map_x_reg_n_0_[0] ),
        .I4(\map_x_reg_n_0_[2] ),
        .O(\map_x[6]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \map_x_reg[0] 
       (.C(s_axi_aclk),
        .CE(state__0[1]),
        .D(map_x[0]),
        .Q(\map_x_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \map_x_reg[1] 
       (.C(s_axi_aclk),
        .CE(state__0[1]),
        .D(map_x[1]),
        .Q(\map_x_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \map_x_reg[2] 
       (.C(s_axi_aclk),
        .CE(state__0[1]),
        .D(map_x[2]),
        .Q(\map_x_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \map_x_reg[3] 
       (.C(s_axi_aclk),
        .CE(state__0[1]),
        .D(map_x[3]),
        .Q(\map_x_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \map_x_reg[4] 
       (.C(s_axi_aclk),
        .CE(state__0[1]),
        .D(map_x[4]),
        .Q(\map_x_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \map_x_reg[5] 
       (.C(s_axi_aclk),
        .CE(state__0[1]),
        .D(map_x[5]),
        .Q(\map_x_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \map_x_reg[6] 
       (.C(s_axi_aclk),
        .CE(state__0[1]),
        .D(map_x[6]),
        .Q(\map_x_reg_n_0_[6] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_t1_mem_reg_0_127_0_0_i_10
       (.I0(data_r_data[62]),
        .I1(data_r_data[54]),
        .I2(\tile_pixel_reg_n_0_[1] ),
        .I3(data_r_data[46]),
        .I4(\tile_pixel_reg_n_0_[0] ),
        .I5(data_r_data[38]),
        .O(palette_t1_mem_reg_0_127_0_0_i_10_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_t1_mem_reg_0_127_0_0_i_11
       (.I0(data_r_data[29]),
        .I1(data_r_data[21]),
        .I2(\tile_pixel_reg_n_0_[1] ),
        .I3(data_r_data[13]),
        .I4(\tile_pixel_reg_n_0_[0] ),
        .I5(data_r_data[5]),
        .O(palette_t1_mem_reg_0_127_0_0_i_11_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_t1_mem_reg_0_127_0_0_i_12
       (.I0(data_r_data[61]),
        .I1(data_r_data[53]),
        .I2(\tile_pixel_reg_n_0_[1] ),
        .I3(data_r_data[45]),
        .I4(\tile_pixel_reg_n_0_[0] ),
        .I5(data_r_data[37]),
        .O(palette_t1_mem_reg_0_127_0_0_i_12_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_t1_mem_reg_0_127_0_0_i_13
       (.I0(data_r_data[28]),
        .I1(data_r_data[20]),
        .I2(\tile_pixel_reg_n_0_[1] ),
        .I3(data_r_data[12]),
        .I4(\tile_pixel_reg_n_0_[0] ),
        .I5(data_r_data[4]),
        .O(palette_t1_mem_reg_0_127_0_0_i_13_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_t1_mem_reg_0_127_0_0_i_14
       (.I0(data_r_data[60]),
        .I1(data_r_data[52]),
        .I2(\tile_pixel_reg_n_0_[1] ),
        .I3(data_r_data[44]),
        .I4(\tile_pixel_reg_n_0_[0] ),
        .I5(data_r_data[36]),
        .O(palette_t1_mem_reg_0_127_0_0_i_14_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_t1_mem_reg_0_127_0_0_i_15
       (.I0(data_r_data[27]),
        .I1(data_r_data[19]),
        .I2(\tile_pixel_reg_n_0_[1] ),
        .I3(data_r_data[11]),
        .I4(\tile_pixel_reg_n_0_[0] ),
        .I5(data_r_data[3]),
        .O(palette_t1_mem_reg_0_127_0_0_i_15_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_t1_mem_reg_0_127_0_0_i_16
       (.I0(data_r_data[59]),
        .I1(data_r_data[51]),
        .I2(\tile_pixel_reg_n_0_[1] ),
        .I3(data_r_data[43]),
        .I4(\tile_pixel_reg_n_0_[0] ),
        .I5(data_r_data[35]),
        .O(palette_t1_mem_reg_0_127_0_0_i_16_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_t1_mem_reg_0_127_0_0_i_17
       (.I0(data_r_data[26]),
        .I1(data_r_data[18]),
        .I2(\tile_pixel_reg_n_0_[1] ),
        .I3(data_r_data[10]),
        .I4(\tile_pixel_reg_n_0_[0] ),
        .I5(data_r_data[2]),
        .O(palette_t1_mem_reg_0_127_0_0_i_17_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_t1_mem_reg_0_127_0_0_i_18
       (.I0(data_r_data[58]),
        .I1(data_r_data[50]),
        .I2(\tile_pixel_reg_n_0_[1] ),
        .I3(data_r_data[42]),
        .I4(\tile_pixel_reg_n_0_[0] ),
        .I5(data_r_data[34]),
        .O(palette_t1_mem_reg_0_127_0_0_i_18_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_t1_mem_reg_0_127_0_0_i_19
       (.I0(data_r_data[25]),
        .I1(data_r_data[17]),
        .I2(\tile_pixel_reg_n_0_[1] ),
        .I3(data_r_data[9]),
        .I4(\tile_pixel_reg_n_0_[0] ),
        .I5(data_r_data[1]),
        .O(palette_t1_mem_reg_0_127_0_0_i_19_n_0));
  MUXF7 palette_t1_mem_reg_0_127_0_0_i_2
       (.I0(palette_t1_mem_reg_0_127_0_0_i_9_n_0),
        .I1(palette_t1_mem_reg_0_127_0_0_i_10_n_0),
        .O(t1_palette_addr[6]),
        .S(\tile_pixel_reg_n_0_[2] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_t1_mem_reg_0_127_0_0_i_20
       (.I0(data_r_data[57]),
        .I1(data_r_data[49]),
        .I2(\tile_pixel_reg_n_0_[1] ),
        .I3(data_r_data[41]),
        .I4(\tile_pixel_reg_n_0_[0] ),
        .I5(data_r_data[33]),
        .O(palette_t1_mem_reg_0_127_0_0_i_20_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_t1_mem_reg_0_127_0_0_i_21
       (.I0(data_r_data[24]),
        .I1(data_r_data[16]),
        .I2(\tile_pixel_reg_n_0_[1] ),
        .I3(data_r_data[8]),
        .I4(\tile_pixel_reg_n_0_[0] ),
        .I5(data_r_data[0]),
        .O(palette_t1_mem_reg_0_127_0_0_i_21_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_t1_mem_reg_0_127_0_0_i_22
       (.I0(data_r_data[56]),
        .I1(data_r_data[48]),
        .I2(\tile_pixel_reg_n_0_[1] ),
        .I3(data_r_data[40]),
        .I4(\tile_pixel_reg_n_0_[0] ),
        .I5(data_r_data[32]),
        .O(palette_t1_mem_reg_0_127_0_0_i_22_n_0));
  MUXF7 palette_t1_mem_reg_0_127_0_0_i_3
       (.I0(palette_t1_mem_reg_0_127_0_0_i_11_n_0),
        .I1(palette_t1_mem_reg_0_127_0_0_i_12_n_0),
        .O(t1_palette_addr[5]),
        .S(\tile_pixel_reg_n_0_[2] ));
  MUXF7 palette_t1_mem_reg_0_127_0_0_i_4
       (.I0(palette_t1_mem_reg_0_127_0_0_i_13_n_0),
        .I1(palette_t1_mem_reg_0_127_0_0_i_14_n_0),
        .O(t1_palette_addr[4]),
        .S(\tile_pixel_reg_n_0_[2] ));
  MUXF7 palette_t1_mem_reg_0_127_0_0_i_5
       (.I0(palette_t1_mem_reg_0_127_0_0_i_15_n_0),
        .I1(palette_t1_mem_reg_0_127_0_0_i_16_n_0),
        .O(t1_palette_addr[3]),
        .S(\tile_pixel_reg_n_0_[2] ));
  MUXF7 palette_t1_mem_reg_0_127_0_0_i_6
       (.I0(palette_t1_mem_reg_0_127_0_0_i_17_n_0),
        .I1(palette_t1_mem_reg_0_127_0_0_i_18_n_0),
        .O(t1_palette_addr[2]),
        .S(\tile_pixel_reg_n_0_[2] ));
  MUXF7 palette_t1_mem_reg_0_127_0_0_i_7
       (.I0(palette_t1_mem_reg_0_127_0_0_i_19_n_0),
        .I1(palette_t1_mem_reg_0_127_0_0_i_20_n_0),
        .O(t1_palette_addr[1]),
        .S(\tile_pixel_reg_n_0_[2] ));
  MUXF7 palette_t1_mem_reg_0_127_0_0_i_8
       (.I0(palette_t1_mem_reg_0_127_0_0_i_21_n_0),
        .I1(palette_t1_mem_reg_0_127_0_0_i_22_n_0),
        .O(t1_palette_addr[0]),
        .S(\tile_pixel_reg_n_0_[2] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_t1_mem_reg_0_127_0_0_i_9
       (.I0(data_r_data[30]),
        .I1(data_r_data[22]),
        .I2(\tile_pixel_reg_n_0_[1] ),
        .I3(data_r_data[14]),
        .I4(\tile_pixel_reg_n_0_[0] ),
        .I5(data_r_data[6]),
        .O(palette_t1_mem_reg_0_127_0_0_i_9_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    \pixel_addr[0]_i_1__0 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\pixel_addr_reg_n_0_[0] ),
        .O(\pixel_addr[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \pixel_addr[1]_i_1__0 
       (.I0(\pixel_addr_reg_n_0_[1] ),
        .I1(\pixel_addr_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_reg_n_0_[6] ),
        .O(\pixel_addr[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \pixel_addr[2]_i_1__0 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\pixel_addr_reg_n_0_[2] ),
        .I2(\pixel_addr_reg_n_0_[1] ),
        .I3(\pixel_addr_reg_n_0_[0] ),
        .O(\pixel_addr[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \pixel_addr[3]_i_1__0 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\pixel_addr_reg_n_0_[3] ),
        .I2(\pixel_addr_reg_n_0_[2] ),
        .I3(\pixel_addr_reg_n_0_[0] ),
        .I4(\pixel_addr_reg_n_0_[1] ),
        .O(\pixel_addr[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \pixel_addr[4]_i_1__0 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\pixel_addr_reg_n_0_[4] ),
        .I2(\pixel_addr_reg_n_0_[3] ),
        .I3(\pixel_addr_reg_n_0_[1] ),
        .I4(\pixel_addr_reg_n_0_[0] ),
        .I5(\pixel_addr_reg_n_0_[2] ),
        .O(\pixel_addr[4]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hBF400000)) 
    \pixel_addr[5]_i_1__0 
       (.I0(\pixel_addr[5]_i_2__0_n_0 ),
        .I1(\pixel_addr_reg_n_0_[4] ),
        .I2(\pixel_addr_reg_n_0_[3] ),
        .I3(\pixel_addr_reg_n_0_[5] ),
        .I4(\FSM_onehot_state_reg_n_0_[6] ),
        .O(\pixel_addr[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \pixel_addr[5]_i_2__0 
       (.I0(\pixel_addr_reg_n_0_[1] ),
        .I1(\pixel_addr_reg_n_0_[0] ),
        .I2(\pixel_addr_reg_n_0_[2] ),
        .O(\pixel_addr[5]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h8288888888888888)) 
    \pixel_addr[6]_i_1__0 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\pixel_addr_reg_n_0_[6] ),
        .I2(\pixel_addr[5]_i_2__0_n_0 ),
        .I3(\pixel_addr_reg_n_0_[4] ),
        .I4(\pixel_addr_reg_n_0_[3] ),
        .I5(\pixel_addr_reg_n_0_[5] ),
        .O(\pixel_addr[6]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \pixel_addr[7]_i_1__0 
       (.I0(\pixel_addr[8]_i_1__0_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[6] ),
        .O(\pixel_addr[7]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA6AAAAAAA)) 
    \pixel_addr[7]_i_2__0 
       (.I0(\pixel_addr_reg_n_0_[7] ),
        .I1(\pixel_addr_reg_n_0_[6] ),
        .I2(\pixel_addr_reg_n_0_[5] ),
        .I3(\pixel_addr_reg_n_0_[3] ),
        .I4(\pixel_addr_reg_n_0_[4] ),
        .I5(\pixel_addr[5]_i_2__0_n_0 ),
        .O(\pixel_addr[7]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEEAEEEE)) 
    \pixel_addr[8]_i_1__0 
       (.I0(line_done0),
        .I1(\FSM_onehot_state_reg_n_0_[6] ),
        .I2(\pixel_addr[8]_i_3__0_n_0 ),
        .I3(\pixel_addr_reg_n_0_[8] ),
        .I4(\pixel_addr_reg_n_0_[9] ),
        .I5(\pixel_addr_reg_n_0_[7] ),
        .O(\pixel_addr[8]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hD200)) 
    \pixel_addr[8]_i_2__0 
       (.I0(\pixel_addr_reg_n_0_[7] ),
        .I1(\pixel_addr[8]_i_3__0_n_0 ),
        .I2(\pixel_addr_reg_n_0_[8] ),
        .I3(\FSM_onehot_state_reg_n_0_[6] ),
        .O(\pixel_addr[8]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hBFFFFFFF)) 
    \pixel_addr[8]_i_3__0 
       (.I0(\pixel_addr[5]_i_2__0_n_0 ),
        .I1(\pixel_addr_reg_n_0_[4] ),
        .I2(\pixel_addr_reg_n_0_[3] ),
        .I3(\pixel_addr_reg_n_0_[5] ),
        .I4(\pixel_addr_reg_n_0_[6] ),
        .O(\pixel_addr[8]_i_3__0_n_0 ));
  LUT5 #(
    .INIT(32'h88288888)) 
    \pixel_addr[9]_i_1__0 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\pixel_addr_reg_n_0_[9] ),
        .I2(\pixel_addr_reg_n_0_[7] ),
        .I3(\pixel_addr[8]_i_3__0_n_0 ),
        .I4(\pixel_addr_reg_n_0_[8] ),
        .O(\pixel_addr[9]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_addr_reg[0] 
       (.C(s_axi_aclk),
        .CE(\pixel_addr[8]_i_1__0_n_0 ),
        .D(\pixel_addr[0]_i_1__0_n_0 ),
        .Q(\pixel_addr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_addr_reg[1] 
       (.C(s_axi_aclk),
        .CE(\pixel_addr[8]_i_1__0_n_0 ),
        .D(\pixel_addr[1]_i_1__0_n_0 ),
        .Q(\pixel_addr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_addr_reg[2] 
       (.C(s_axi_aclk),
        .CE(\pixel_addr[8]_i_1__0_n_0 ),
        .D(\pixel_addr[2]_i_1__0_n_0 ),
        .Q(\pixel_addr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_addr_reg[3] 
       (.C(s_axi_aclk),
        .CE(\pixel_addr[8]_i_1__0_n_0 ),
        .D(\pixel_addr[3]_i_1__0_n_0 ),
        .Q(\pixel_addr_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_addr_reg[4] 
       (.C(s_axi_aclk),
        .CE(\pixel_addr[8]_i_1__0_n_0 ),
        .D(\pixel_addr[4]_i_1__0_n_0 ),
        .Q(\pixel_addr_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_addr_reg[5] 
       (.C(s_axi_aclk),
        .CE(\pixel_addr[8]_i_1__0_n_0 ),
        .D(\pixel_addr[5]_i_1__0_n_0 ),
        .Q(\pixel_addr_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_addr_reg[6] 
       (.C(s_axi_aclk),
        .CE(\pixel_addr[8]_i_1__0_n_0 ),
        .D(\pixel_addr[6]_i_1__0_n_0 ),
        .Q(\pixel_addr_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_addr_reg[7] 
       (.C(s_axi_aclk),
        .CE(\pixel_addr[8]_i_1__0_n_0 ),
        .D(\pixel_addr[7]_i_2__0_n_0 ),
        .Q(\pixel_addr_reg_n_0_[7] ),
        .R(\pixel_addr[7]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_addr_reg[8] 
       (.C(s_axi_aclk),
        .CE(\pixel_addr[8]_i_1__0_n_0 ),
        .D(\pixel_addr[8]_i_2__0_n_0 ),
        .Q(\pixel_addr_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_addr_reg[9] 
       (.C(s_axi_aclk),
        .CE(\pixel_addr[8]_i_1__0_n_0 ),
        .D(\pixel_addr[9]_i_1__0_n_0 ),
        .Q(\pixel_addr_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \t1_palette_data[15]_i_3 
       (.I0(data_r_data[31]),
        .I1(data_r_data[23]),
        .I2(\tile_pixel_reg_n_0_[1] ),
        .I3(data_r_data[15]),
        .I4(\tile_pixel_reg_n_0_[0] ),
        .I5(data_r_data[7]),
        .O(\t1_palette_data[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \t1_palette_data[15]_i_4 
       (.I0(data_r_data[63]),
        .I1(data_r_data[55]),
        .I2(\tile_pixel_reg_n_0_[1] ),
        .I3(data_r_data[47]),
        .I4(\tile_pixel_reg_n_0_[0] ),
        .I5(data_r_data[39]),
        .O(\t1_palette_data[15]_i_4_n_0 ));
  MUXF7 \t1_palette_data_reg[15]_i_2 
       (.I0(\t1_palette_data[15]_i_3_n_0 ),
        .I1(\t1_palette_data[15]_i_4_n_0 ),
        .O(t1_palette_addr[7]),
        .S(\tile_pixel_reg_n_0_[2] ));
  LUT4 #(
    .INIT(16'hF444)) 
    \tile_pixel[0]_i_1__0 
       (.I0(\tile_pixel_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[6] ),
        .I2(t1_x_off_reg[0]),
        .I3(line_done0),
        .O(tile_pixel[0]));
  LUT5 #(
    .INIT(32'h88F8F888)) 
    \tile_pixel[1]_i_1__0 
       (.I0(t1_x_off_reg[1]),
        .I1(line_done0),
        .I2(\FSM_onehot_state_reg_n_0_[6] ),
        .I3(\tile_pixel_reg_n_0_[1] ),
        .I4(\tile_pixel_reg_n_0_[0] ),
        .O(tile_pixel[1]));
  LUT6 #(
    .INIT(64'h8FF8F8F888888888)) 
    \tile_pixel[2]_i_1__0 
       (.I0(t1_x_off_reg[2]),
        .I1(line_done0),
        .I2(\tile_pixel_reg_n_0_[2] ),
        .I3(\tile_pixel_reg_n_0_[0] ),
        .I4(\tile_pixel_reg_n_0_[1] ),
        .I5(\FSM_onehot_state_reg_n_0_[6] ),
        .O(tile_pixel[2]));
  FDRE #(
    .INIT(1'b0)) 
    \tile_pixel_reg[0] 
       (.C(s_axi_aclk),
        .CE(\pixel_addr[8]_i_1__0_n_0 ),
        .D(tile_pixel[0]),
        .Q(\tile_pixel_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tile_pixel_reg[1] 
       (.C(s_axi_aclk),
        .CE(\pixel_addr[8]_i_1__0_n_0 ),
        .D(tile_pixel[1]),
        .Q(\tile_pixel_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tile_pixel_reg[2] 
       (.C(s_axi_aclk),
        .CE(\pixel_addr[8]_i_1__0_n_0 ),
        .D(tile_pixel[2]),
        .Q(\tile_pixel_reg_n_0_[2] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "VDP_tile_gen" *) 
module Block_top_VDP_wrapper_0_0_VDP_tile_gen__xdcDup__1
   (\gen_done_reg[0] ,
    buf_dout,
    t0_map_cpu_dout,
    t0_data_cpu_dout,
    t0_palette_addr,
    Q,
    gen_done,
    gen_done0,
    \map_r_addr_reg[11]_0 ,
    s_axi_aclk,
    t0_palette_data,
    \gen_fin_data_reg[11] ,
    t0_map_cpu_clk,
    t0_map_cpu_en,
    t0_map_cpu_wen,
    t0_map_cpu_addr,
    t0_map_cpu_din,
    t0_data_cpu_clk,
    t0_data_cpu_en,
    t0_data_cpu_wen,
    t0_data_cpu_addr,
    t0_data_cpu_din,
    S,
    gen_line,
    \map_r_addr_reg[11]_1 ,
    t0_y_off_reg,
    t0_x_off_reg,
    gen_line_start);
  output \gen_done_reg[0] ;
  output [11:0]buf_dout;
  output [31:0]t0_map_cpu_dout;
  output [31:0]t0_data_cpu_dout;
  output [7:0]t0_palette_addr;
  input [4:0]Q;
  input [0:0]gen_done;
  input gen_done0;
  input \map_r_addr_reg[11]_0 ;
  input s_axi_aclk;
  input [15:0]t0_palette_data;
  input [9:0]\gen_fin_data_reg[11] ;
  input t0_map_cpu_clk;
  input t0_map_cpu_en;
  input [3:0]t0_map_cpu_wen;
  input [12:0]t0_map_cpu_addr;
  input [31:0]t0_map_cpu_din;
  input t0_data_cpu_clk;
  input t0_data_cpu_en;
  input [3:0]t0_data_cpu_wen;
  input [13:0]t0_data_cpu_addr;
  input [31:0]t0_data_cpu_din;
  input [0:0]S;
  input [3:0]gen_line;
  input [2:0]\map_r_addr_reg[11]_1 ;
  input [5:0]t0_y_off_reg;
  input [9:0]t0_x_off_reg;
  input gen_line_start;

  wire \FSM_onehot_state[0]_i_2_n_0 ;
  wire \FSM_onehot_state[5]_i_2_n_0 ;
  wire \FSM_onehot_state[6]_i_1_n_0 ;
  wire \FSM_onehot_state[6]_i_2_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[6] ;
  wire [4:0]Q;
  wire [0:0]S;
  wire [11:0]buf_dout;
  wire [0:0]data_r_addr;
  wire \data_r_addr_reg_n_0_[0] ;
  wire \data_r_addr_reg_n_0_[10] ;
  wire \data_r_addr_reg_n_0_[11] ;
  wire \data_r_addr_reg_n_0_[12] ;
  wire \data_r_addr_reg_n_0_[1] ;
  wire \data_r_addr_reg_n_0_[2] ;
  wire \data_r_addr_reg_n_0_[3] ;
  wire \data_r_addr_reg_n_0_[4] ;
  wire \data_r_addr_reg_n_0_[5] ;
  wire \data_r_addr_reg_n_0_[6] ;
  wire \data_r_addr_reg_n_0_[7] ;
  wire \data_r_addr_reg_n_0_[8] ;
  wire \data_r_addr_reg_n_0_[9] ;
  wire [63:0]data_r_data;
  wire [0:0]gen_done;
  wire gen_done0;
  wire \gen_done_reg[0] ;
  wire [9:0]\gen_fin_data_reg[11] ;
  wire [3:0]gen_line;
  wire gen_line_start;
  wire line_buf_n_16;
  wire line_buf_n_17;
  wire line_buf_n_18;
  wire line_buf_n_19;
  wire line_done0;
  wire line_done_i_1_n_0;
  wire [9:0]map_a_dout;
  wire [13:7]map_line_addr_start;
  wire [0:0]map_r_addr;
  wire \map_r_addr[11]_i_2__0_n_0 ;
  wire \map_r_addr[11]_i_5__0_n_0 ;
  wire \map_r_addr[11]_i_9_n_0 ;
  wire \map_r_addr[13]_i_3_n_0 ;
  wire \map_r_addr[13]_i_4_n_0 ;
  wire \map_r_addr[7]_i_2_n_0 ;
  wire \map_r_addr[7]_i_3_n_0 ;
  wire \map_r_addr[7]_i_4_n_0 ;
  wire \map_r_addr[7]_i_5_n_0 ;
  wire \map_r_addr[7]_i_6_n_0 ;
  wire \map_r_addr[7]_i_8_n_0 ;
  wire \map_r_addr_reg[11]_0 ;
  wire [2:0]\map_r_addr_reg[11]_1 ;
  wire \map_r_addr_reg[11]_i_1_n_0 ;
  wire \map_r_addr_reg[11]_i_1_n_1 ;
  wire \map_r_addr_reg[11]_i_1_n_2 ;
  wire \map_r_addr_reg[11]_i_1_n_3 ;
  wire \map_r_addr_reg[13]_i_1_n_3 ;
  wire \map_r_addr_reg[7]_i_1_n_0 ;
  wire \map_r_addr_reg[7]_i_1_n_1 ;
  wire \map_r_addr_reg[7]_i_1_n_2 ;
  wire \map_r_addr_reg[7]_i_1_n_3 ;
  wire \map_r_addr_reg[7]_i_1_n_5 ;
  wire \map_r_addr_reg[7]_i_1_n_6 ;
  wire \map_r_addr_reg[7]_i_1_n_7 ;
  wire \map_r_addr_reg_n_0_[0] ;
  wire \map_r_addr_reg_n_0_[10] ;
  wire \map_r_addr_reg_n_0_[11] ;
  wire \map_r_addr_reg_n_0_[12] ;
  wire \map_r_addr_reg_n_0_[13] ;
  wire \map_r_addr_reg_n_0_[1] ;
  wire \map_r_addr_reg_n_0_[2] ;
  wire \map_r_addr_reg_n_0_[3] ;
  wire \map_r_addr_reg_n_0_[4] ;
  wire \map_r_addr_reg_n_0_[5] ;
  wire \map_r_addr_reg_n_0_[6] ;
  wire \map_r_addr_reg_n_0_[7] ;
  wire \map_r_addr_reg_n_0_[8] ;
  wire \map_r_addr_reg_n_0_[9] ;
  wire [6:0]map_x;
  wire \map_x[3]_i_2_n_0 ;
  wire \map_x[4]_i_2_n_0 ;
  wire \map_x[6]_i_2_n_0 ;
  wire \map_x_reg_n_0_[0] ;
  wire \map_x_reg_n_0_[1] ;
  wire \map_x_reg_n_0_[2] ;
  wire \map_x_reg_n_0_[3] ;
  wire \map_x_reg_n_0_[4] ;
  wire \map_x_reg_n_0_[5] ;
  wire \map_x_reg_n_0_[6] ;
  wire palette_t0_mem_reg_0_127_0_0_i_10_n_0;
  wire palette_t0_mem_reg_0_127_0_0_i_11_n_0;
  wire palette_t0_mem_reg_0_127_0_0_i_12_n_0;
  wire palette_t0_mem_reg_0_127_0_0_i_13_n_0;
  wire palette_t0_mem_reg_0_127_0_0_i_14_n_0;
  wire palette_t0_mem_reg_0_127_0_0_i_15_n_0;
  wire palette_t0_mem_reg_0_127_0_0_i_16_n_0;
  wire palette_t0_mem_reg_0_127_0_0_i_17_n_0;
  wire palette_t0_mem_reg_0_127_0_0_i_18_n_0;
  wire palette_t0_mem_reg_0_127_0_0_i_19_n_0;
  wire palette_t0_mem_reg_0_127_0_0_i_20_n_0;
  wire palette_t0_mem_reg_0_127_0_0_i_21_n_0;
  wire palette_t0_mem_reg_0_127_0_0_i_22_n_0;
  wire palette_t0_mem_reg_0_127_0_0_i_9_n_0;
  wire \pixel_addr[0]_i_1_n_0 ;
  wire \pixel_addr[1]_i_1_n_0 ;
  wire \pixel_addr[2]_i_1_n_0 ;
  wire \pixel_addr[3]_i_1_n_0 ;
  wire \pixel_addr[4]_i_1_n_0 ;
  wire \pixel_addr[5]_i_1_n_0 ;
  wire \pixel_addr[5]_i_2_n_0 ;
  wire \pixel_addr[6]_i_1_n_0 ;
  wire \pixel_addr[7]_i_1_n_0 ;
  wire \pixel_addr[7]_i_2_n_0 ;
  wire \pixel_addr[8]_i_1_n_0 ;
  wire \pixel_addr[8]_i_2_n_0 ;
  wire \pixel_addr[8]_i_3_n_0 ;
  wire \pixel_addr[9]_i_1_n_0 ;
  wire \pixel_addr_reg_n_0_[0] ;
  wire \pixel_addr_reg_n_0_[1] ;
  wire \pixel_addr_reg_n_0_[2] ;
  wire \pixel_addr_reg_n_0_[3] ;
  wire \pixel_addr_reg_n_0_[4] ;
  wire \pixel_addr_reg_n_0_[5] ;
  wire \pixel_addr_reg_n_0_[6] ;
  wire \pixel_addr_reg_n_0_[7] ;
  wire \pixel_addr_reg_n_0_[8] ;
  wire \pixel_addr_reg_n_0_[9] ;
  wire s_axi_aclk;
  wire [5:2]state;
  wire [5:0]state__0;
  wire [13:0]t0_data_cpu_addr;
  wire t0_data_cpu_clk;
  wire [31:0]t0_data_cpu_din;
  wire [31:0]t0_data_cpu_dout;
  wire t0_data_cpu_en;
  wire [3:0]t0_data_cpu_wen;
  wire t0_done;
  wire [12:0]t0_map_cpu_addr;
  wire t0_map_cpu_clk;
  wire [31:0]t0_map_cpu_din;
  wire [31:0]t0_map_cpu_dout;
  wire t0_map_cpu_en;
  wire [3:0]t0_map_cpu_wen;
  wire [7:0]t0_palette_addr;
  wire [15:0]t0_palette_data;
  wire \t0_palette_data[15]_i_3_n_0 ;
  wire \t0_palette_data[15]_i_4_n_0 ;
  wire [9:0]t0_x_off_reg;
  wire [5:0]t0_y_off_reg;
  wire [2:0]tile_pixel;
  wire \tile_pixel_reg_n_0_[0] ;
  wire \tile_pixel_reg_n_0_[1] ;
  wire \tile_pixel_reg_n_0_[2] ;
  wire [63:0]NLW_Tile_DATA_mem_dina_UNCONNECTED;
  wire [15:0]NLW_Tile_MAP_mem_dina_UNCONNECTED;
  wire [15:10]NLW_Tile_MAP_mem_douta_UNCONNECTED;
  wire [15:0]NLW_line_buf_dinb_UNCONNECTED;
  wire [15:0]NLW_line_buf_douta_UNCONNECTED;
  wire [3:1]\NLW_map_r_addr_reg[13]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_map_r_addr_reg[13]_i_1_O_UNCONNECTED ;

  LUT4 #(
    .INIT(16'hAAAB)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state[0]_i_2_n_0 ),
        .I1(\FSM_onehot_state[6]_i_2_n_0 ),
        .I2(line_done0),
        .I3(map_r_addr),
        .O(state__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \FSM_onehot_state[0]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\pixel_addr_reg_n_0_[7] ),
        .I2(\pixel_addr_reg_n_0_[9] ),
        .I3(\pixel_addr_reg_n_0_[8] ),
        .I4(\pixel_addr[8]_i_3_n_0 ),
        .O(\FSM_onehot_state[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA8000)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\pixel_addr[8]_i_1_n_0 ),
        .I1(\tile_pixel_reg_n_0_[0] ),
        .I2(\tile_pixel_reg_n_0_[1] ),
        .I3(\tile_pixel_reg_n_0_[2] ),
        .I4(line_done0),
        .O(state__0[1]));
  LUT5 #(
    .INIT(32'hBFFFAAAA)) 
    \FSM_onehot_state[5]_i_1 
       (.I0(state[4]),
        .I1(\tile_pixel_reg_n_0_[0] ),
        .I2(\tile_pixel_reg_n_0_[1] ),
        .I3(\tile_pixel_reg_n_0_[2] ),
        .I4(\FSM_onehot_state[5]_i_2_n_0 ),
        .O(state__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT5 #(
    .INIT(32'hFFFB0000)) 
    \FSM_onehot_state[5]_i_2 
       (.I0(\pixel_addr_reg_n_0_[7] ),
        .I1(\pixel_addr_reg_n_0_[9] ),
        .I2(\pixel_addr_reg_n_0_[8] ),
        .I3(\pixel_addr[8]_i_3_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[6] ),
        .O(\FSM_onehot_state[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFB)) 
    \FSM_onehot_state[6]_i_1 
       (.I0(\FSM_onehot_state[6]_i_2_n_0 ),
        .I1(line_done0),
        .I2(gen_line_start),
        .I3(map_r_addr),
        .O(\FSM_onehot_state[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_state[6]_i_2 
       (.I0(state[4]),
        .I1(data_r_addr),
        .I2(\FSM_onehot_state_reg_n_0_[6] ),
        .I3(state[5]),
        .I4(state[2]),
        .O(\FSM_onehot_state[6]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "STATE_C0:000000000100,STATE_C1:000000001000,STATE_C2:000000010000,STATE_C4:000001000000,STATE_WAIT:000000000001,STATE_C3:000000100000,STATE_START:000000000010" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(\FSM_onehot_state[6]_i_1_n_0 ),
        .D(state__0[0]),
        .Q(line_done0),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "STATE_C0:000000000100,STATE_C1:000000001000,STATE_C2:000000010000,STATE_C4:000001000000,STATE_WAIT:000000000001,STATE_C3:000000100000,STATE_START:000000000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(\FSM_onehot_state[6]_i_1_n_0 ),
        .D(state__0[1]),
        .Q(map_r_addr),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "STATE_C0:000000000100,STATE_C1:000000001000,STATE_C2:000000010000,STATE_C4:000001000000,STATE_WAIT:000000000001,STATE_C3:000000100000,STATE_START:000000000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(s_axi_aclk),
        .CE(\FSM_onehot_state[6]_i_1_n_0 ),
        .D(map_r_addr),
        .Q(state[2]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "STATE_C0:000000000100,STATE_C1:000000001000,STATE_C2:000000010000,STATE_C4:000001000000,STATE_WAIT:000000000001,STATE_C3:000000100000,STATE_START:000000000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(s_axi_aclk),
        .CE(\FSM_onehot_state[6]_i_1_n_0 ),
        .D(state[2]),
        .Q(data_r_addr),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "STATE_C0:000000000100,STATE_C1:000000001000,STATE_C2:000000010000,STATE_C4:000001000000,STATE_WAIT:000000000001,STATE_C3:000000100000,STATE_START:000000000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(s_axi_aclk),
        .CE(\FSM_onehot_state[6]_i_1_n_0 ),
        .D(data_r_addr),
        .Q(state[4]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "STATE_C0:000000000100,STATE_C1:000000001000,STATE_C2:000000010000,STATE_C4:000001000000,STATE_WAIT:000000000001,STATE_C3:000000100000,STATE_START:000000000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(s_axi_aclk),
        .CE(\FSM_onehot_state[6]_i_1_n_0 ),
        .D(state__0[5]),
        .Q(state[5]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "STATE_C0:000000000100,STATE_C1:000000001000,STATE_C2:000000010000,STATE_C4:000001000000,STATE_WAIT:000000000001,STATE_C3:000000100000,STATE_START:000000000010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[6] 
       (.C(s_axi_aclk),
        .CE(\FSM_onehot_state[6]_i_1_n_0 ),
        .D(state[5]),
        .Q(\FSM_onehot_state_reg_n_0_[6] ),
        .R(1'b0));
  (* CHECK_LICENSE_TYPE = "blk_mem_tile_data,blk_mem_gen_v8_4_12,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
  Block_top_VDP_wrapper_0_0_blk_mem_tile_data Tile_DATA_mem
       (.addra({\data_r_addr_reg_n_0_[12] ,\data_r_addr_reg_n_0_[11] ,\data_r_addr_reg_n_0_[10] ,\data_r_addr_reg_n_0_[9] ,\data_r_addr_reg_n_0_[8] ,\data_r_addr_reg_n_0_[7] ,\data_r_addr_reg_n_0_[6] ,\data_r_addr_reg_n_0_[5] ,\data_r_addr_reg_n_0_[4] ,\data_r_addr_reg_n_0_[3] ,\data_r_addr_reg_n_0_[2] ,\data_r_addr_reg_n_0_[1] ,\data_r_addr_reg_n_0_[0] }),
        .addrb(t0_data_cpu_addr),
        .clka(s_axi_aclk),
        .clkb(t0_data_cpu_clk),
        .dina(NLW_Tile_DATA_mem_dina_UNCONNECTED[63:0]),
        .dinb(t0_data_cpu_din),
        .douta(data_r_data),
        .doutb(t0_data_cpu_dout),
        .enb(t0_data_cpu_en),
        .wea({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .web(t0_data_cpu_wen));
  (* CHECK_LICENSE_TYPE = "blk_mem_tile_map,blk_mem_gen_v8_4_12,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
  Block_top_VDP_wrapper_0_0_blk_mem_tile_map Tile_MAP_mem
       (.addra({\map_r_addr_reg_n_0_[13] ,\map_r_addr_reg_n_0_[12] ,\map_r_addr_reg_n_0_[11] ,\map_r_addr_reg_n_0_[10] ,\map_r_addr_reg_n_0_[9] ,\map_r_addr_reg_n_0_[8] ,\map_r_addr_reg_n_0_[7] ,\map_r_addr_reg_n_0_[6] ,\map_r_addr_reg_n_0_[5] ,\map_r_addr_reg_n_0_[4] ,\map_r_addr_reg_n_0_[3] ,\map_r_addr_reg_n_0_[2] ,\map_r_addr_reg_n_0_[1] ,\map_r_addr_reg_n_0_[0] }),
        .addrb(t0_map_cpu_addr),
        .clka(s_axi_aclk),
        .clkb(t0_map_cpu_clk),
        .dina(NLW_Tile_MAP_mem_dina_UNCONNECTED[15:0]),
        .dinb(t0_map_cpu_din),
        .douta({NLW_Tile_MAP_mem_douta_UNCONNECTED[15:10],map_a_dout}),
        .doutb(t0_map_cpu_dout),
        .enb(t0_map_cpu_en),
        .wea({1'b0,1'b0}),
        .web(t0_map_cpu_wen));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_addr_reg[0] 
       (.C(s_axi_aclk),
        .CE(data_r_addr),
        .D(\map_r_addr_reg[7]_i_1_n_7 ),
        .Q(\data_r_addr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_addr_reg[10] 
       (.C(s_axi_aclk),
        .CE(data_r_addr),
        .D(map_a_dout[7]),
        .Q(\data_r_addr_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_addr_reg[11] 
       (.C(s_axi_aclk),
        .CE(data_r_addr),
        .D(map_a_dout[8]),
        .Q(\data_r_addr_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_addr_reg[12] 
       (.C(s_axi_aclk),
        .CE(data_r_addr),
        .D(map_a_dout[9]),
        .Q(\data_r_addr_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_addr_reg[1] 
       (.C(s_axi_aclk),
        .CE(data_r_addr),
        .D(\map_r_addr_reg[7]_i_1_n_6 ),
        .Q(\data_r_addr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_addr_reg[2] 
       (.C(s_axi_aclk),
        .CE(data_r_addr),
        .D(\map_r_addr_reg[7]_i_1_n_5 ),
        .Q(\data_r_addr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_addr_reg[3] 
       (.C(s_axi_aclk),
        .CE(data_r_addr),
        .D(map_a_dout[0]),
        .Q(\data_r_addr_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_addr_reg[4] 
       (.C(s_axi_aclk),
        .CE(data_r_addr),
        .D(map_a_dout[1]),
        .Q(\data_r_addr_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_addr_reg[5] 
       (.C(s_axi_aclk),
        .CE(data_r_addr),
        .D(map_a_dout[2]),
        .Q(\data_r_addr_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_addr_reg[6] 
       (.C(s_axi_aclk),
        .CE(data_r_addr),
        .D(map_a_dout[3]),
        .Q(\data_r_addr_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_addr_reg[7] 
       (.C(s_axi_aclk),
        .CE(data_r_addr),
        .D(map_a_dout[4]),
        .Q(\data_r_addr_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_addr_reg[8] 
       (.C(s_axi_aclk),
        .CE(data_r_addr),
        .D(map_a_dout[5]),
        .Q(\data_r_addr_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_addr_reg[9] 
       (.C(s_axi_aclk),
        .CE(data_r_addr),
        .D(map_a_dout[6]),
        .Q(\data_r_addr_reg_n_0_[9] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \gen_done[0]_i_1 
       (.I0(gen_done),
        .I1(t0_done),
        .I2(gen_done0),
        .O(\gen_done_reg[0] ));
  (* CHECK_LICENSE_TYPE = "blk_mem_buf_line,blk_mem_gen_v8_4_12,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
  Block_top_VDP_wrapper_0_0_blk_mem_buf_line line_buf
       (.addra({\pixel_addr_reg_n_0_[9] ,\pixel_addr_reg_n_0_[8] ,\pixel_addr_reg_n_0_[7] ,\pixel_addr_reg_n_0_[6] ,\pixel_addr_reg_n_0_[5] ,\pixel_addr_reg_n_0_[4] ,\pixel_addr_reg_n_0_[3] ,\pixel_addr_reg_n_0_[2] ,\pixel_addr_reg_n_0_[1] ,\pixel_addr_reg_n_0_[0] }),
        .addrb(\gen_fin_data_reg[11] ),
        .clka(s_axi_aclk),
        .clkb(s_axi_aclk),
        .dina(t0_palette_data),
        .dinb(NLW_line_buf_dinb_UNCONNECTED[15:0]),
        .douta(NLW_line_buf_douta_UNCONNECTED[15:0]),
        .doutb({line_buf_n_16,line_buf_n_17,line_buf_n_18,line_buf_n_19,buf_dout}),
        .ena(\FSM_onehot_state_reg_n_0_[6] ),
        .wea(1'b1),
        .web(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    line_done_i_1
       (.I0(t0_done),
        .I1(\FSM_onehot_state[0]_i_2_n_0 ),
        .I2(line_done0),
        .O(line_done_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    line_done_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(line_done_i_1_n_0),
        .Q(t0_done),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \map_r_addr[11]_i_2__0 
       (.I0(\map_r_addr_reg[11]_0 ),
        .O(\map_r_addr[11]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \map_r_addr[11]_i_5__0 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(\map_r_addr[11]_i_5__0_n_0 ));
  LUT5 #(
    .INIT(32'h807F7F80)) 
    \map_r_addr[11]_i_9 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[4]),
        .I4(t0_y_off_reg[3]),
        .O(\map_r_addr[11]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \map_r_addr[13]_i_3 
       (.I0(gen_line[3]),
        .I1(t0_y_off_reg[5]),
        .O(\map_r_addr[13]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \map_r_addr[13]_i_4 
       (.I0(gen_line[2]),
        .I1(t0_y_off_reg[4]),
        .O(\map_r_addr[13]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \map_r_addr[7]_i_2 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .O(\map_r_addr[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \map_r_addr[7]_i_3 
       (.I0(Q[1]),
        .I1(Q[2]),
        .O(\map_r_addr[7]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \map_r_addr[7]_i_4 
       (.I0(Q[1]),
        .O(\map_r_addr[7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \map_r_addr[7]_i_5 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(t0_y_off_reg[2]),
        .O(\map_r_addr[7]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \map_r_addr[7]_i_6 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(t0_y_off_reg[1]),
        .O(\map_r_addr[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \map_r_addr[7]_i_8 
       (.I0(Q[0]),
        .I1(t0_y_off_reg[0]),
        .O(\map_r_addr[7]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \map_r_addr_reg[0] 
       (.C(s_axi_aclk),
        .CE(map_r_addr),
        .D(\map_x_reg_n_0_[0] ),
        .Q(\map_r_addr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \map_r_addr_reg[10] 
       (.C(s_axi_aclk),
        .CE(map_r_addr),
        .D(map_line_addr_start[10]),
        .Q(\map_r_addr_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \map_r_addr_reg[11] 
       (.C(s_axi_aclk),
        .CE(map_r_addr),
        .D(map_line_addr_start[11]),
        .Q(\map_r_addr_reg_n_0_[11] ),
        .R(1'b0));
  CARRY4 \map_r_addr_reg[11]_i_1 
       (.CI(\map_r_addr_reg[7]_i_1_n_0 ),
        .CO({\map_r_addr_reg[11]_i_1_n_0 ,\map_r_addr_reg[11]_i_1_n_1 ,\map_r_addr_reg[11]_i_1_n_2 ,\map_r_addr_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\map_r_addr[11]_i_2__0_n_0 ,gen_line[1:0],\map_r_addr[11]_i_5__0_n_0 }),
        .O(map_line_addr_start[11:8]),
        .S({\map_r_addr_reg[11]_1 ,\map_r_addr[11]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \map_r_addr_reg[12] 
       (.C(s_axi_aclk),
        .CE(map_r_addr),
        .D(map_line_addr_start[12]),
        .Q(\map_r_addr_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \map_r_addr_reg[13] 
       (.C(s_axi_aclk),
        .CE(map_r_addr),
        .D(map_line_addr_start[13]),
        .Q(\map_r_addr_reg_n_0_[13] ),
        .R(1'b0));
  CARRY4 \map_r_addr_reg[13]_i_1 
       (.CI(\map_r_addr_reg[11]_i_1_n_0 ),
        .CO({\NLW_map_r_addr_reg[13]_i_1_CO_UNCONNECTED [3:1],\map_r_addr_reg[13]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,gen_line[2]}),
        .O({\NLW_map_r_addr_reg[13]_i_1_O_UNCONNECTED [3:2],map_line_addr_start[13:12]}),
        .S({1'b0,1'b0,\map_r_addr[13]_i_3_n_0 ,\map_r_addr[13]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \map_r_addr_reg[1] 
       (.C(s_axi_aclk),
        .CE(map_r_addr),
        .D(\map_x_reg_n_0_[1] ),
        .Q(\map_r_addr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \map_r_addr_reg[2] 
       (.C(s_axi_aclk),
        .CE(map_r_addr),
        .D(\map_x_reg_n_0_[2] ),
        .Q(\map_r_addr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \map_r_addr_reg[3] 
       (.C(s_axi_aclk),
        .CE(map_r_addr),
        .D(\map_x_reg_n_0_[3] ),
        .Q(\map_r_addr_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \map_r_addr_reg[4] 
       (.C(s_axi_aclk),
        .CE(map_r_addr),
        .D(\map_x_reg_n_0_[4] ),
        .Q(\map_r_addr_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \map_r_addr_reg[5] 
       (.C(s_axi_aclk),
        .CE(map_r_addr),
        .D(\map_x_reg_n_0_[5] ),
        .Q(\map_r_addr_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \map_r_addr_reg[6] 
       (.C(s_axi_aclk),
        .CE(map_r_addr),
        .D(\map_x_reg_n_0_[6] ),
        .Q(\map_r_addr_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \map_r_addr_reg[7] 
       (.C(s_axi_aclk),
        .CE(map_r_addr),
        .D(map_line_addr_start[7]),
        .Q(\map_r_addr_reg_n_0_[7] ),
        .R(1'b0));
  CARRY4 \map_r_addr_reg[7]_i_1 
       (.CI(1'b0),
        .CO({\map_r_addr_reg[7]_i_1_n_0 ,\map_r_addr_reg[7]_i_1_n_1 ,\map_r_addr_reg[7]_i_1_n_2 ,\map_r_addr_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\map_r_addr[7]_i_2_n_0 ,\map_r_addr[7]_i_3_n_0 ,\map_r_addr[7]_i_4_n_0 ,Q[0]}),
        .O({map_line_addr_start[7],\map_r_addr_reg[7]_i_1_n_5 ,\map_r_addr_reg[7]_i_1_n_6 ,\map_r_addr_reg[7]_i_1_n_7 }),
        .S({\map_r_addr[7]_i_5_n_0 ,\map_r_addr[7]_i_6_n_0 ,S,\map_r_addr[7]_i_8_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \map_r_addr_reg[8] 
       (.C(s_axi_aclk),
        .CE(map_r_addr),
        .D(map_line_addr_start[8]),
        .Q(\map_r_addr_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \map_r_addr_reg[9] 
       (.C(s_axi_aclk),
        .CE(map_r_addr),
        .D(map_line_addr_start[9]),
        .Q(\map_r_addr_reg_n_0_[9] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hF444)) 
    \map_x[0]_i_1 
       (.I0(\map_x_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[6] ),
        .I2(t0_x_off_reg[3]),
        .I3(line_done0),
        .O(map_x[0]));
  LUT5 #(
    .INIT(32'h88F8F888)) 
    \map_x[1]_i_1 
       (.I0(t0_x_off_reg[4]),
        .I1(line_done0),
        .I2(\FSM_onehot_state_reg_n_0_[6] ),
        .I3(\map_x_reg_n_0_[0] ),
        .I4(\map_x_reg_n_0_[1] ),
        .O(map_x[1]));
  LUT6 #(
    .INIT(64'h8FF8F8F888888888)) 
    \map_x[2]_i_1 
       (.I0(t0_x_off_reg[5]),
        .I1(line_done0),
        .I2(\map_x_reg_n_0_[2] ),
        .I3(\map_x_reg_n_0_[1] ),
        .I4(\map_x_reg_n_0_[0] ),
        .I5(\FSM_onehot_state_reg_n_0_[6] ),
        .O(map_x[2]));
  LUT5 #(
    .INIT(32'hF88F8888)) 
    \map_x[3]_i_1 
       (.I0(t0_x_off_reg[6]),
        .I1(line_done0),
        .I2(\map_x_reg_n_0_[3] ),
        .I3(\map_x[3]_i_2_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[6] ),
        .O(map_x[3]));
  LUT3 #(
    .INIT(8'h7F)) 
    \map_x[3]_i_2 
       (.I0(\map_x_reg_n_0_[1] ),
        .I1(\map_x_reg_n_0_[0] ),
        .I2(\map_x_reg_n_0_[2] ),
        .O(\map_x[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF88F8888)) 
    \map_x[4]_i_1 
       (.I0(t0_x_off_reg[7]),
        .I1(line_done0),
        .I2(\map_x_reg_n_0_[4] ),
        .I3(\map_x[4]_i_2_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[6] ),
        .O(map_x[4]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \map_x[4]_i_2 
       (.I0(\map_x_reg_n_0_[2] ),
        .I1(\map_x_reg_n_0_[0] ),
        .I2(\map_x_reg_n_0_[1] ),
        .I3(\map_x_reg_n_0_[3] ),
        .O(\map_x[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h8FF88888)) 
    \map_x[5]_i_1 
       (.I0(t0_x_off_reg[8]),
        .I1(line_done0),
        .I2(\map_x_reg_n_0_[5] ),
        .I3(\map_x[6]_i_2_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[6] ),
        .O(map_x[5]));
  LUT6 #(
    .INIT(64'h88F8F888F888F888)) 
    \map_x[6]_i_1 
       (.I0(t0_x_off_reg[9]),
        .I1(line_done0),
        .I2(\FSM_onehot_state_reg_n_0_[6] ),
        .I3(\map_x_reg_n_0_[6] ),
        .I4(\map_x_reg_n_0_[5] ),
        .I5(\map_x[6]_i_2_n_0 ),
        .O(map_x[6]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \map_x[6]_i_2 
       (.I0(\map_x_reg_n_0_[4] ),
        .I1(\map_x_reg_n_0_[3] ),
        .I2(\map_x_reg_n_0_[1] ),
        .I3(\map_x_reg_n_0_[0] ),
        .I4(\map_x_reg_n_0_[2] ),
        .O(\map_x[6]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \map_x_reg[0] 
       (.C(s_axi_aclk),
        .CE(state__0[1]),
        .D(map_x[0]),
        .Q(\map_x_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \map_x_reg[1] 
       (.C(s_axi_aclk),
        .CE(state__0[1]),
        .D(map_x[1]),
        .Q(\map_x_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \map_x_reg[2] 
       (.C(s_axi_aclk),
        .CE(state__0[1]),
        .D(map_x[2]),
        .Q(\map_x_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \map_x_reg[3] 
       (.C(s_axi_aclk),
        .CE(state__0[1]),
        .D(map_x[3]),
        .Q(\map_x_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \map_x_reg[4] 
       (.C(s_axi_aclk),
        .CE(state__0[1]),
        .D(map_x[4]),
        .Q(\map_x_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \map_x_reg[5] 
       (.C(s_axi_aclk),
        .CE(state__0[1]),
        .D(map_x[5]),
        .Q(\map_x_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \map_x_reg[6] 
       (.C(s_axi_aclk),
        .CE(state__0[1]),
        .D(map_x[6]),
        .Q(\map_x_reg_n_0_[6] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_t0_mem_reg_0_127_0_0_i_10
       (.I0(data_r_data[62]),
        .I1(data_r_data[54]),
        .I2(\tile_pixel_reg_n_0_[1] ),
        .I3(data_r_data[46]),
        .I4(\tile_pixel_reg_n_0_[0] ),
        .I5(data_r_data[38]),
        .O(palette_t0_mem_reg_0_127_0_0_i_10_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_t0_mem_reg_0_127_0_0_i_11
       (.I0(data_r_data[29]),
        .I1(data_r_data[21]),
        .I2(\tile_pixel_reg_n_0_[1] ),
        .I3(data_r_data[13]),
        .I4(\tile_pixel_reg_n_0_[0] ),
        .I5(data_r_data[5]),
        .O(palette_t0_mem_reg_0_127_0_0_i_11_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_t0_mem_reg_0_127_0_0_i_12
       (.I0(data_r_data[61]),
        .I1(data_r_data[53]),
        .I2(\tile_pixel_reg_n_0_[1] ),
        .I3(data_r_data[45]),
        .I4(\tile_pixel_reg_n_0_[0] ),
        .I5(data_r_data[37]),
        .O(palette_t0_mem_reg_0_127_0_0_i_12_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_t0_mem_reg_0_127_0_0_i_13
       (.I0(data_r_data[28]),
        .I1(data_r_data[20]),
        .I2(\tile_pixel_reg_n_0_[1] ),
        .I3(data_r_data[12]),
        .I4(\tile_pixel_reg_n_0_[0] ),
        .I5(data_r_data[4]),
        .O(palette_t0_mem_reg_0_127_0_0_i_13_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_t0_mem_reg_0_127_0_0_i_14
       (.I0(data_r_data[60]),
        .I1(data_r_data[52]),
        .I2(\tile_pixel_reg_n_0_[1] ),
        .I3(data_r_data[44]),
        .I4(\tile_pixel_reg_n_0_[0] ),
        .I5(data_r_data[36]),
        .O(palette_t0_mem_reg_0_127_0_0_i_14_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_t0_mem_reg_0_127_0_0_i_15
       (.I0(data_r_data[27]),
        .I1(data_r_data[19]),
        .I2(\tile_pixel_reg_n_0_[1] ),
        .I3(data_r_data[11]),
        .I4(\tile_pixel_reg_n_0_[0] ),
        .I5(data_r_data[3]),
        .O(palette_t0_mem_reg_0_127_0_0_i_15_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_t0_mem_reg_0_127_0_0_i_16
       (.I0(data_r_data[59]),
        .I1(data_r_data[51]),
        .I2(\tile_pixel_reg_n_0_[1] ),
        .I3(data_r_data[43]),
        .I4(\tile_pixel_reg_n_0_[0] ),
        .I5(data_r_data[35]),
        .O(palette_t0_mem_reg_0_127_0_0_i_16_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_t0_mem_reg_0_127_0_0_i_17
       (.I0(data_r_data[26]),
        .I1(data_r_data[18]),
        .I2(\tile_pixel_reg_n_0_[1] ),
        .I3(data_r_data[10]),
        .I4(\tile_pixel_reg_n_0_[0] ),
        .I5(data_r_data[2]),
        .O(palette_t0_mem_reg_0_127_0_0_i_17_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_t0_mem_reg_0_127_0_0_i_18
       (.I0(data_r_data[58]),
        .I1(data_r_data[50]),
        .I2(\tile_pixel_reg_n_0_[1] ),
        .I3(data_r_data[42]),
        .I4(\tile_pixel_reg_n_0_[0] ),
        .I5(data_r_data[34]),
        .O(palette_t0_mem_reg_0_127_0_0_i_18_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_t0_mem_reg_0_127_0_0_i_19
       (.I0(data_r_data[25]),
        .I1(data_r_data[17]),
        .I2(\tile_pixel_reg_n_0_[1] ),
        .I3(data_r_data[9]),
        .I4(\tile_pixel_reg_n_0_[0] ),
        .I5(data_r_data[1]),
        .O(palette_t0_mem_reg_0_127_0_0_i_19_n_0));
  MUXF7 palette_t0_mem_reg_0_127_0_0_i_2
       (.I0(palette_t0_mem_reg_0_127_0_0_i_9_n_0),
        .I1(palette_t0_mem_reg_0_127_0_0_i_10_n_0),
        .O(t0_palette_addr[6]),
        .S(\tile_pixel_reg_n_0_[2] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_t0_mem_reg_0_127_0_0_i_20
       (.I0(data_r_data[57]),
        .I1(data_r_data[49]),
        .I2(\tile_pixel_reg_n_0_[1] ),
        .I3(data_r_data[41]),
        .I4(\tile_pixel_reg_n_0_[0] ),
        .I5(data_r_data[33]),
        .O(palette_t0_mem_reg_0_127_0_0_i_20_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_t0_mem_reg_0_127_0_0_i_21
       (.I0(data_r_data[24]),
        .I1(data_r_data[16]),
        .I2(\tile_pixel_reg_n_0_[1] ),
        .I3(data_r_data[8]),
        .I4(\tile_pixel_reg_n_0_[0] ),
        .I5(data_r_data[0]),
        .O(palette_t0_mem_reg_0_127_0_0_i_21_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_t0_mem_reg_0_127_0_0_i_22
       (.I0(data_r_data[56]),
        .I1(data_r_data[48]),
        .I2(\tile_pixel_reg_n_0_[1] ),
        .I3(data_r_data[40]),
        .I4(\tile_pixel_reg_n_0_[0] ),
        .I5(data_r_data[32]),
        .O(palette_t0_mem_reg_0_127_0_0_i_22_n_0));
  MUXF7 palette_t0_mem_reg_0_127_0_0_i_3
       (.I0(palette_t0_mem_reg_0_127_0_0_i_11_n_0),
        .I1(palette_t0_mem_reg_0_127_0_0_i_12_n_0),
        .O(t0_palette_addr[5]),
        .S(\tile_pixel_reg_n_0_[2] ));
  MUXF7 palette_t0_mem_reg_0_127_0_0_i_4
       (.I0(palette_t0_mem_reg_0_127_0_0_i_13_n_0),
        .I1(palette_t0_mem_reg_0_127_0_0_i_14_n_0),
        .O(t0_palette_addr[4]),
        .S(\tile_pixel_reg_n_0_[2] ));
  MUXF7 palette_t0_mem_reg_0_127_0_0_i_5
       (.I0(palette_t0_mem_reg_0_127_0_0_i_15_n_0),
        .I1(palette_t0_mem_reg_0_127_0_0_i_16_n_0),
        .O(t0_palette_addr[3]),
        .S(\tile_pixel_reg_n_0_[2] ));
  MUXF7 palette_t0_mem_reg_0_127_0_0_i_6
       (.I0(palette_t0_mem_reg_0_127_0_0_i_17_n_0),
        .I1(palette_t0_mem_reg_0_127_0_0_i_18_n_0),
        .O(t0_palette_addr[2]),
        .S(\tile_pixel_reg_n_0_[2] ));
  MUXF7 palette_t0_mem_reg_0_127_0_0_i_7
       (.I0(palette_t0_mem_reg_0_127_0_0_i_19_n_0),
        .I1(palette_t0_mem_reg_0_127_0_0_i_20_n_0),
        .O(t0_palette_addr[1]),
        .S(\tile_pixel_reg_n_0_[2] ));
  MUXF7 palette_t0_mem_reg_0_127_0_0_i_8
       (.I0(palette_t0_mem_reg_0_127_0_0_i_21_n_0),
        .I1(palette_t0_mem_reg_0_127_0_0_i_22_n_0),
        .O(t0_palette_addr[0]),
        .S(\tile_pixel_reg_n_0_[2] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    palette_t0_mem_reg_0_127_0_0_i_9
       (.I0(data_r_data[30]),
        .I1(data_r_data[22]),
        .I2(\tile_pixel_reg_n_0_[1] ),
        .I3(data_r_data[14]),
        .I4(\tile_pixel_reg_n_0_[0] ),
        .I5(data_r_data[6]),
        .O(palette_t0_mem_reg_0_127_0_0_i_9_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    \pixel_addr[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\pixel_addr_reg_n_0_[0] ),
        .O(\pixel_addr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \pixel_addr[1]_i_1 
       (.I0(\pixel_addr_reg_n_0_[1] ),
        .I1(\pixel_addr_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_reg_n_0_[6] ),
        .O(\pixel_addr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \pixel_addr[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\pixel_addr_reg_n_0_[2] ),
        .I2(\pixel_addr_reg_n_0_[1] ),
        .I3(\pixel_addr_reg_n_0_[0] ),
        .O(\pixel_addr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \pixel_addr[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\pixel_addr_reg_n_0_[3] ),
        .I2(\pixel_addr_reg_n_0_[2] ),
        .I3(\pixel_addr_reg_n_0_[0] ),
        .I4(\pixel_addr_reg_n_0_[1] ),
        .O(\pixel_addr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \pixel_addr[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\pixel_addr_reg_n_0_[4] ),
        .I2(\pixel_addr_reg_n_0_[3] ),
        .I3(\pixel_addr_reg_n_0_[1] ),
        .I4(\pixel_addr_reg_n_0_[0] ),
        .I5(\pixel_addr_reg_n_0_[2] ),
        .O(\pixel_addr[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBF400000)) 
    \pixel_addr[5]_i_1 
       (.I0(\pixel_addr[5]_i_2_n_0 ),
        .I1(\pixel_addr_reg_n_0_[4] ),
        .I2(\pixel_addr_reg_n_0_[3] ),
        .I3(\pixel_addr_reg_n_0_[5] ),
        .I4(\FSM_onehot_state_reg_n_0_[6] ),
        .O(\pixel_addr[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \pixel_addr[5]_i_2 
       (.I0(\pixel_addr_reg_n_0_[1] ),
        .I1(\pixel_addr_reg_n_0_[0] ),
        .I2(\pixel_addr_reg_n_0_[2] ),
        .O(\pixel_addr[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8288888888888888)) 
    \pixel_addr[6]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\pixel_addr_reg_n_0_[6] ),
        .I2(\pixel_addr[5]_i_2_n_0 ),
        .I3(\pixel_addr_reg_n_0_[4] ),
        .I4(\pixel_addr_reg_n_0_[3] ),
        .I5(\pixel_addr_reg_n_0_[5] ),
        .O(\pixel_addr[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \pixel_addr[7]_i_1 
       (.I0(\pixel_addr[8]_i_1_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[6] ),
        .O(\pixel_addr[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA6AAAAAAA)) 
    \pixel_addr[7]_i_2 
       (.I0(\pixel_addr_reg_n_0_[7] ),
        .I1(\pixel_addr_reg_n_0_[6] ),
        .I2(\pixel_addr_reg_n_0_[5] ),
        .I3(\pixel_addr_reg_n_0_[3] ),
        .I4(\pixel_addr_reg_n_0_[4] ),
        .I5(\pixel_addr[5]_i_2_n_0 ),
        .O(\pixel_addr[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEEAEEEE)) 
    \pixel_addr[8]_i_1 
       (.I0(line_done0),
        .I1(\FSM_onehot_state_reg_n_0_[6] ),
        .I2(\pixel_addr[8]_i_3_n_0 ),
        .I3(\pixel_addr_reg_n_0_[8] ),
        .I4(\pixel_addr_reg_n_0_[9] ),
        .I5(\pixel_addr_reg_n_0_[7] ),
        .O(\pixel_addr[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hD200)) 
    \pixel_addr[8]_i_2 
       (.I0(\pixel_addr_reg_n_0_[7] ),
        .I1(\pixel_addr[8]_i_3_n_0 ),
        .I2(\pixel_addr_reg_n_0_[8] ),
        .I3(\FSM_onehot_state_reg_n_0_[6] ),
        .O(\pixel_addr[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBFFFFFFF)) 
    \pixel_addr[8]_i_3 
       (.I0(\pixel_addr[5]_i_2_n_0 ),
        .I1(\pixel_addr_reg_n_0_[4] ),
        .I2(\pixel_addr_reg_n_0_[3] ),
        .I3(\pixel_addr_reg_n_0_[5] ),
        .I4(\pixel_addr_reg_n_0_[6] ),
        .O(\pixel_addr[8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h88288888)) 
    \pixel_addr[9]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\pixel_addr_reg_n_0_[9] ),
        .I2(\pixel_addr_reg_n_0_[7] ),
        .I3(\pixel_addr[8]_i_3_n_0 ),
        .I4(\pixel_addr_reg_n_0_[8] ),
        .O(\pixel_addr[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_addr_reg[0] 
       (.C(s_axi_aclk),
        .CE(\pixel_addr[8]_i_1_n_0 ),
        .D(\pixel_addr[0]_i_1_n_0 ),
        .Q(\pixel_addr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_addr_reg[1] 
       (.C(s_axi_aclk),
        .CE(\pixel_addr[8]_i_1_n_0 ),
        .D(\pixel_addr[1]_i_1_n_0 ),
        .Q(\pixel_addr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_addr_reg[2] 
       (.C(s_axi_aclk),
        .CE(\pixel_addr[8]_i_1_n_0 ),
        .D(\pixel_addr[2]_i_1_n_0 ),
        .Q(\pixel_addr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_addr_reg[3] 
       (.C(s_axi_aclk),
        .CE(\pixel_addr[8]_i_1_n_0 ),
        .D(\pixel_addr[3]_i_1_n_0 ),
        .Q(\pixel_addr_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_addr_reg[4] 
       (.C(s_axi_aclk),
        .CE(\pixel_addr[8]_i_1_n_0 ),
        .D(\pixel_addr[4]_i_1_n_0 ),
        .Q(\pixel_addr_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_addr_reg[5] 
       (.C(s_axi_aclk),
        .CE(\pixel_addr[8]_i_1_n_0 ),
        .D(\pixel_addr[5]_i_1_n_0 ),
        .Q(\pixel_addr_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_addr_reg[6] 
       (.C(s_axi_aclk),
        .CE(\pixel_addr[8]_i_1_n_0 ),
        .D(\pixel_addr[6]_i_1_n_0 ),
        .Q(\pixel_addr_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_addr_reg[7] 
       (.C(s_axi_aclk),
        .CE(\pixel_addr[8]_i_1_n_0 ),
        .D(\pixel_addr[7]_i_2_n_0 ),
        .Q(\pixel_addr_reg_n_0_[7] ),
        .R(\pixel_addr[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_addr_reg[8] 
       (.C(s_axi_aclk),
        .CE(\pixel_addr[8]_i_1_n_0 ),
        .D(\pixel_addr[8]_i_2_n_0 ),
        .Q(\pixel_addr_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_addr_reg[9] 
       (.C(s_axi_aclk),
        .CE(\pixel_addr[8]_i_1_n_0 ),
        .D(\pixel_addr[9]_i_1_n_0 ),
        .Q(\pixel_addr_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \t0_palette_data[15]_i_3 
       (.I0(data_r_data[31]),
        .I1(data_r_data[23]),
        .I2(\tile_pixel_reg_n_0_[1] ),
        .I3(data_r_data[15]),
        .I4(\tile_pixel_reg_n_0_[0] ),
        .I5(data_r_data[7]),
        .O(\t0_palette_data[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \t0_palette_data[15]_i_4 
       (.I0(data_r_data[63]),
        .I1(data_r_data[55]),
        .I2(\tile_pixel_reg_n_0_[1] ),
        .I3(data_r_data[47]),
        .I4(\tile_pixel_reg_n_0_[0] ),
        .I5(data_r_data[39]),
        .O(\t0_palette_data[15]_i_4_n_0 ));
  MUXF7 \t0_palette_data_reg[15]_i_2 
       (.I0(\t0_palette_data[15]_i_3_n_0 ),
        .I1(\t0_palette_data[15]_i_4_n_0 ),
        .O(t0_palette_addr[7]),
        .S(\tile_pixel_reg_n_0_[2] ));
  LUT4 #(
    .INIT(16'hF444)) 
    \tile_pixel[0]_i_1 
       (.I0(\tile_pixel_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[6] ),
        .I2(t0_x_off_reg[0]),
        .I3(line_done0),
        .O(tile_pixel[0]));
  LUT5 #(
    .INIT(32'h88F8F888)) 
    \tile_pixel[1]_i_1 
       (.I0(t0_x_off_reg[1]),
        .I1(line_done0),
        .I2(\FSM_onehot_state_reg_n_0_[6] ),
        .I3(\tile_pixel_reg_n_0_[1] ),
        .I4(\tile_pixel_reg_n_0_[0] ),
        .O(tile_pixel[1]));
  LUT6 #(
    .INIT(64'h8FF8F8F888888888)) 
    \tile_pixel[2]_i_1 
       (.I0(t0_x_off_reg[2]),
        .I1(line_done0),
        .I2(\tile_pixel_reg_n_0_[2] ),
        .I3(\tile_pixel_reg_n_0_[0] ),
        .I4(\tile_pixel_reg_n_0_[1] ),
        .I5(\FSM_onehot_state_reg_n_0_[6] ),
        .O(tile_pixel[2]));
  FDRE #(
    .INIT(1'b0)) 
    \tile_pixel_reg[0] 
       (.C(s_axi_aclk),
        .CE(\pixel_addr[8]_i_1_n_0 ),
        .D(tile_pixel[0]),
        .Q(\tile_pixel_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tile_pixel_reg[1] 
       (.C(s_axi_aclk),
        .CE(\pixel_addr[8]_i_1_n_0 ),
        .D(tile_pixel[1]),
        .Q(\tile_pixel_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tile_pixel_reg[2] 
       (.C(s_axi_aclk),
        .CE(\pixel_addr[8]_i_1_n_0 ),
        .D(tile_pixel[2]),
        .Q(\tile_pixel_reg_n_0_[2] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "VDP_wrapper" *) 
module Block_top_VDP_wrapper_0_0_VDP_wrapper
   (t0_map_cpu_addr,
    t0_map_cpu_din,
    t0_map_cpu_dout,
    t0_map_cpu_en,
    t0_map_cpu_wen,
    t0_map_cpu_clk,
    t0_data_cpu_addr,
    t0_data_cpu_din,
    t0_data_cpu_dout,
    t0_data_cpu_en,
    t0_data_cpu_wen,
    t0_data_cpu_clk,
    t1_map_cpu_addr,
    t1_map_cpu_din,
    t1_map_cpu_dout,
    t1_map_cpu_en,
    t1_map_cpu_wen,
    t1_map_cpu_clk,
    t1_data_cpu_addr,
    t1_data_cpu_din,
    t1_data_cpu_dout,
    t1_data_cpu_en,
    t1_data_cpu_wen,
    t1_data_cpu_clk,
    s0_att_cpu_addr,
    s0_att_cpu_din,
    s0_att_cpu_dout,
    s0_att_cpu_en,
    s0_att_cpu_wen,
    s0_att_cpu_clk,
    s0_data_cpu_addr,
    s0_data_cpu_din,
    s0_data_cpu_dout,
    s0_data_cpu_en,
    s0_data_cpu_wen,
    s0_data_cpu_clk,
    r0_map_cpu_addr,
    r0_map_cpu_din,
    r0_map_cpu_dout,
    r0_map_cpu_en,
    r0_map_cpu_wen,
    r0_map_cpu_clk,
    s_axi_aclk,
    s_axi_aresetn,
    h_sync,
    v_sync,
    vga_r,
    vga_g,
    vga_b);
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0_MAP_CPU_BRAM ADDR" *) input [14:0]t0_map_cpu_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0_MAP_CPU_BRAM DIN" *) input [31:0]t0_map_cpu_din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0_MAP_CPU_BRAM DOUT" *) output [31:0]t0_map_cpu_dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0_MAP_CPU_BRAM EN" *) input t0_map_cpu_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0_MAP_CPU_BRAM WE" *) input [3:0]t0_map_cpu_wen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0_MAP_CPU_BRAM CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME T0_MAP_CPU_BRAM, MASTER_TYPE BRAM_CTRL, MEM_SIZE 32768, READ_WRITE_MODE READ_WRITE" *) input t0_map_cpu_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0_DATA_CPU_BRAM ADDR" *) input [15:0]t0_data_cpu_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0_DATA_CPU_BRAM DIN" *) input [31:0]t0_data_cpu_din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0_DATA_CPU_BRAM DOUT" *) output [31:0]t0_data_cpu_dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0_DATA_CPU_BRAM EN" *) input t0_data_cpu_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0_DATA_CPU_BRAM WE" *) input [3:0]t0_data_cpu_wen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0_DATA_CPU_BRAM CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME T0_DATA_CPU_BRAM, MASTER_TYPE BRAM_CTRL, MEM_SIZE 65536, READ_WRITE_MODE READ_WRITE" *) input t0_data_cpu_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1_MAP_CPU_BRAM ADDR" *) input [14:0]t1_map_cpu_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1_MAP_CPU_BRAM DIN" *) input [31:0]t1_map_cpu_din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1_MAP_CPU_BRAM DOUT" *) output [31:0]t1_map_cpu_dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1_MAP_CPU_BRAM EN" *) input t1_map_cpu_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1_MAP_CPU_BRAM WE" *) input [3:0]t1_map_cpu_wen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1_MAP_CPU_BRAM CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME T1_MAP_CPU_BRAM, MASTER_TYPE BRAM_CTRL, MEM_SIZE 32768, READ_WRITE_MODE READ_WRITE" *) input t1_map_cpu_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1_DATA_CPU_BRAM ADDR" *) input [15:0]t1_data_cpu_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1_DATA_CPU_BRAM DIN" *) input [31:0]t1_data_cpu_din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1_DATA_CPU_BRAM DOUT" *) output [31:0]t1_data_cpu_dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1_DATA_CPU_BRAM EN" *) input t1_data_cpu_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1_DATA_CPU_BRAM WE" *) input [3:0]t1_data_cpu_wen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1_DATA_CPU_BRAM CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME T1_DATA_CPU_BRAM, MASTER_TYPE BRAM_CTRL, MEM_SIZE 65536, READ_WRITE_MODE READ_WRITE" *) input t1_data_cpu_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 S0_ATT_CPU_BRAM ADDR" *) input [8:0]s0_att_cpu_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 S0_ATT_CPU_BRAM DIN" *) input [31:0]s0_att_cpu_din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 S0_ATT_CPU_BRAM DOUT" *) output [31:0]s0_att_cpu_dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 S0_ATT_CPU_BRAM EN" *) input s0_att_cpu_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 S0_ATT_CPU_BRAM WE" *) input [3:0]s0_att_cpu_wen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 S0_ATT_CPU_BRAM CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S0_ATT_CPU_BRAM, MASTER_TYPE BRAM_CTRL, MEM_SIZE 512, READ_WRITE_MODE READ_WRITE" *) input s0_att_cpu_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 S0_DATA_CPU_BRAM ADDR" *) input [14:0]s0_data_cpu_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 S0_DATA_CPU_BRAM DIN" *) input [31:0]s0_data_cpu_din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 S0_DATA_CPU_BRAM DOUT" *) output [31:0]s0_data_cpu_dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 S0_DATA_CPU_BRAM EN" *) input s0_data_cpu_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 S0_DATA_CPU_BRAM WE" *) input [3:0]s0_data_cpu_wen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 S0_DATA_CPU_BRAM CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S0_DATA_CPU_BRAM, MASTER_TYPE BRAM_CTRL, MEM_SIZE 32768, READ_WRITE_MODE READ_WRITE" *) input s0_data_cpu_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 R0_MAP_CPU_BRAM ADDR" *) input [12:0]r0_map_cpu_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 R0_MAP_CPU_BRAM DIN" *) input [31:0]r0_map_cpu_din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 R0_MAP_CPU_BRAM DOUT" *) output [31:0]r0_map_cpu_dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 R0_MAP_CPU_BRAM EN" *) input r0_map_cpu_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 R0_MAP_CPU_BRAM WE" *) input [3:0]r0_map_cpu_wen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 R0_MAP_CPU_BRAM CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME R0_MAP_CPU_BRAM, MASTER_TYPE BRAM_CTRL, MEM_SIZE 8192, READ_WRITE_MODE READ_WRITE" *) input r0_map_cpu_clk;
  input s_axi_aclk;
  input s_axi_aresetn;
  output h_sync;
  output v_sync;
  output [3:0]vga_r;
  output [3:0]vga_g;
  output [3:0]vga_b;

  wire h_sync;
  wire [12:0]r0_map_cpu_addr;
  wire r0_map_cpu_clk;
  wire [31:0]r0_map_cpu_din;
  wire [31:0]r0_map_cpu_dout;
  wire r0_map_cpu_en;
  wire [3:0]r0_map_cpu_wen;
  wire [8:0]s0_att_cpu_addr;
  wire s0_att_cpu_clk;
  wire [31:0]s0_att_cpu_din;
  wire [31:0]s0_att_cpu_dout;
  wire s0_att_cpu_en;
  wire [3:0]s0_att_cpu_wen;
  wire [14:0]s0_data_cpu_addr;
  wire s0_data_cpu_clk;
  wire [31:0]s0_data_cpu_din;
  wire [31:0]s0_data_cpu_dout;
  wire s0_data_cpu_en;
  wire [3:0]s0_data_cpu_wen;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [15:0]t0_data_cpu_addr;
  wire t0_data_cpu_clk;
  wire [31:0]t0_data_cpu_din;
  wire [31:0]t0_data_cpu_dout;
  wire t0_data_cpu_en;
  wire [3:0]t0_data_cpu_wen;
  wire [14:0]t0_map_cpu_addr;
  wire t0_map_cpu_clk;
  wire [31:0]t0_map_cpu_din;
  wire [31:0]t0_map_cpu_dout;
  wire t0_map_cpu_en;
  wire [3:0]t0_map_cpu_wen;
  wire [15:0]t1_data_cpu_addr;
  wire t1_data_cpu_clk;
  wire [31:0]t1_data_cpu_din;
  wire [31:0]t1_data_cpu_dout;
  wire t1_data_cpu_en;
  wire [3:0]t1_data_cpu_wen;
  wire [14:0]t1_map_cpu_addr;
  wire t1_map_cpu_clk;
  wire [31:0]t1_map_cpu_din;
  wire [31:0]t1_map_cpu_dout;
  wire t1_map_cpu_en;
  wire [3:0]t1_map_cpu_wen;
  wire v_sync;
  wire [3:0]vga_b;
  wire [3:0]vga_g;
  wire [3:0]vga_r;

  Block_top_VDP_wrapper_0_0_VDP dut
       (.h_sync(h_sync),
        .r0_map_cpu_addr(r0_map_cpu_addr[12:2]),
        .r0_map_cpu_clk(r0_map_cpu_clk),
        .r0_map_cpu_din(r0_map_cpu_din),
        .r0_map_cpu_dout(r0_map_cpu_dout),
        .r0_map_cpu_en(r0_map_cpu_en),
        .r0_map_cpu_wen(r0_map_cpu_wen),
        .s0_att_cpu_addr(s0_att_cpu_addr[8:2]),
        .s0_att_cpu_clk(s0_att_cpu_clk),
        .s0_att_cpu_din(s0_att_cpu_din),
        .s0_att_cpu_dout(s0_att_cpu_dout),
        .s0_att_cpu_en(s0_att_cpu_en),
        .s0_att_cpu_wen(s0_att_cpu_wen),
        .s0_data_cpu_addr(s0_data_cpu_addr[14:2]),
        .s0_data_cpu_clk(s0_data_cpu_clk),
        .s0_data_cpu_din(s0_data_cpu_din),
        .s0_data_cpu_dout(s0_data_cpu_dout),
        .s0_data_cpu_en(s0_data_cpu_en),
        .s0_data_cpu_wen(s0_data_cpu_wen),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .t0_data_cpu_addr(t0_data_cpu_addr[15:2]),
        .t0_data_cpu_clk(t0_data_cpu_clk),
        .t0_data_cpu_din(t0_data_cpu_din),
        .t0_data_cpu_dout(t0_data_cpu_dout),
        .t0_data_cpu_en(t0_data_cpu_en),
        .t0_data_cpu_wen(t0_data_cpu_wen),
        .t0_map_cpu_addr(t0_map_cpu_addr[14:2]),
        .t0_map_cpu_clk(t0_map_cpu_clk),
        .t0_map_cpu_din(t0_map_cpu_din),
        .t0_map_cpu_dout(t0_map_cpu_dout),
        .t0_map_cpu_en(t0_map_cpu_en),
        .t0_map_cpu_wen(t0_map_cpu_wen),
        .t1_data_cpu_addr(t1_data_cpu_addr[15:2]),
        .t1_data_cpu_clk(t1_data_cpu_clk),
        .t1_data_cpu_din(t1_data_cpu_din),
        .t1_data_cpu_dout(t1_data_cpu_dout),
        .t1_data_cpu_en(t1_data_cpu_en),
        .t1_data_cpu_wen(t1_data_cpu_wen),
        .t1_map_cpu_addr(t1_map_cpu_addr[14:2]),
        .t1_map_cpu_clk(t1_map_cpu_clk),
        .t1_map_cpu_din(t1_map_cpu_din),
        .t1_map_cpu_dout(t1_map_cpu_dout),
        .t1_map_cpu_en(t1_map_cpu_en),
        .t1_map_cpu_wen(t1_map_cpu_wen),
        .v_sync(v_sync),
        .vga_b(vga_b),
        .vga_g(vga_g),
        .vga_r(vga_r));
endmodule

(* CHECK_LICENSE_TYPE = "blk_mem_buf_line,blk_mem_gen_v8_4_12,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "blk_mem_buf_line" *) 
(* X_CORE_INFO = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
module Block_top_VDP_wrapper_0_0_blk_mem_buf_line
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    web,
    addrb,
    dinb,
    doutb);
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* X_INTERFACE_MODE = "slave BRAM_PORTA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) 
  (* syn_isclock = "1" *) input clka;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* X_INTERFACE_MODE = "slave BRAM_PORTB" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) 
  (* syn_isclock = "1" *) input clkb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [9:0]addrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [15:0]dinb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [15:0]doutb;


endmodule

(* CHECK_LICENSE_TYPE = "blk_mem_fin_line,blk_mem_gen_v8_4_12,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "blk_mem_fin_line" *) 
(* X_CORE_INFO = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
module Block_top_VDP_wrapper_0_0_blk_mem_fin_line
   (clka,
    wea,
    addra,
    dina,
    douta,
    clkb,
    enb,
    web,
    addrb,
    dinb,
    doutb);
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* X_INTERFACE_MODE = "slave BRAM_PORTA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) 
  (* syn_isclock = "1" *) input clka;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [10:0]addra;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [11:0]dina;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [11:0]douta;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* X_INTERFACE_MODE = "slave BRAM_PORTB" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) 
  (* syn_isclock = "1" *) input clkb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [10:0]addrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [11:0]dinb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [11:0]doutb;


endmodule

(* CHECK_LICENSE_TYPE = "blk_mem_gen_spr_att,blk_mem_gen_v8_4_12,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "blk_mem_gen_spr_att" *) 
(* X_CORE_INFO = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
module Block_top_VDP_wrapper_0_0_blk_mem_gen_spr_att
   (clka,
    wea,
    addra,
    dina,
    douta,
    clkb,
    enb,
    web,
    addrb,
    dinb,
    doutb);
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* X_INTERFACE_MODE = "slave BRAM_PORTA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) 
  (* syn_isclock = "1" *) input clka;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [7:0]wea;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [5:0]addra;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [63:0]dina;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [63:0]douta;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* X_INTERFACE_MODE = "slave BRAM_PORTB" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) 
  (* syn_isclock = "1" *) input clkb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [3:0]web;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [6:0]addrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [31:0]dinb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;


endmodule

(* CHECK_LICENSE_TYPE = "blk_mem_gen_spr_data,blk_mem_gen_v8_4_12,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "blk_mem_gen_spr_data" *) 
(* X_CORE_INFO = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
module Block_top_VDP_wrapper_0_0_blk_mem_gen_spr_data
   (clka,
    wea,
    addra,
    dina,
    douta,
    clkb,
    enb,
    web,
    addrb,
    dinb,
    doutb);
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* X_INTERFACE_MODE = "slave BRAM_PORTA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) 
  (* syn_isclock = "1" *) input clka;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [15:0]wea;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [10:0]addra;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [127:0]dina;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [127:0]douta;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* X_INTERFACE_MODE = "slave BRAM_PORTB" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) 
  (* syn_isclock = "1" *) input clkb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [3:0]web;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [12:0]addrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [31:0]dinb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;


endmodule

(* CHECK_LICENSE_TYPE = "blk_mem_gen_spr_line,blk_mem_gen_v8_4_12,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "blk_mem_gen_spr_line" *) 
(* X_CORE_INFO = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
module Block_top_VDP_wrapper_0_0_blk_mem_gen_spr_line
   (clka,
    wea,
    addra,
    dina,
    douta,
    clkb,
    web,
    addrb,
    dinb,
    doutb);
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* X_INTERFACE_MODE = "slave BRAM_PORTA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) 
  (* syn_isclock = "1" *) input clka;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [7:0]wea;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [7:0]addra;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [63:0]dina;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [63:0]douta;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* X_INTERFACE_MODE = "slave BRAM_PORTB" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [1:0]web;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [9:0]addrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [15:0]dinb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [15:0]doutb;


endmodule

(* CHECK_LICENSE_TYPE = "blk_mem_tile_data,blk_mem_gen_v8_4_12,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "blk_mem_tile_data" *) 
(* X_CORE_INFO = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
module Block_top_VDP_wrapper_0_0_blk_mem_tile_data
   (clka,
    wea,
    addra,
    dina,
    douta,
    clkb,
    enb,
    web,
    addrb,
    dinb,
    doutb);
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* X_INTERFACE_MODE = "slave BRAM_PORTA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) 
  (* syn_isclock = "1" *) input clka;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [7:0]wea;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [12:0]addra;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [63:0]dina;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [63:0]douta;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* X_INTERFACE_MODE = "slave BRAM_PORTB" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) 
  (* syn_isclock = "1" *) input clkb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [3:0]web;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [13:0]addrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [31:0]dinb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;


endmodule

(* CHECK_LICENSE_TYPE = "blk_mem_tile_map,blk_mem_gen_v8_4_12,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "blk_mem_tile_map" *) 
(* X_CORE_INFO = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
module Block_top_VDP_wrapper_0_0_blk_mem_tile_map
   (clka,
    wea,
    addra,
    dina,
    douta,
    clkb,
    enb,
    web,
    addrb,
    dinb,
    doutb);
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* X_INTERFACE_MODE = "slave BRAM_PORTA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) 
  (* syn_isclock = "1" *) input clka;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [1:0]wea;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [13:0]addra;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* X_INTERFACE_MODE = "slave BRAM_PORTB" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) 
  (* syn_isclock = "1" *) input clkb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [3:0]web;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [12:0]addrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [31:0]dinb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;


endmodule

(* CHECK_LICENSE_TYPE = "blk_mem_buf_line,blk_mem_gen_v8_4_12,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "blk_mem_buf_line" *) 
(* X_CORE_INFO = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
module blk_mem_buf_line_HD237
   (clka,
    clkb,
    ena,
    addra,
    addrb,
    dina,
    dinb,
    douta,
    doutb,
    wea,
    web);
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* X_INTERFACE_MODE = "slave BRAM_PORTA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) 
  (* syn_isclock = "1" *) input clka;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* X_INTERFACE_MODE = "slave BRAM_PORTB" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) 
  (* syn_isclock = "1" *) input clkb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [9:0]addrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [15:0]dinb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [15:0]doutb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;


endmodule

(* CHECK_LICENSE_TYPE = "blk_mem_tile_data,blk_mem_gen_v8_4_12,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "blk_mem_tile_data" *) 
(* X_CORE_INFO = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
module blk_mem_tile_data_HD235
   (clka,
    clkb,
    enb,
    addra,
    addrb,
    dina,
    dinb,
    douta,
    doutb,
    wea,
    web);
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* X_INTERFACE_MODE = "slave BRAM_PORTA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) 
  (* syn_isclock = "1" *) input clka;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* X_INTERFACE_MODE = "slave BRAM_PORTB" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) 
  (* syn_isclock = "1" *) input clkb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [12:0]addra;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [13:0]addrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [63:0]dina;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [31:0]dinb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [63:0]douta;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [7:0]wea;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [3:0]web;


endmodule

(* CHECK_LICENSE_TYPE = "blk_mem_tile_map,blk_mem_gen_v8_4_12,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "blk_mem_tile_map" *) 
(* X_CORE_INFO = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
module blk_mem_tile_map_HD236
   (clka,
    clkb,
    enb,
    addra,
    addrb,
    dina,
    dinb,
    douta,
    doutb,
    wea,
    web);
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* X_INTERFACE_MODE = "slave BRAM_PORTA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) 
  (* syn_isclock = "1" *) input clka;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* X_INTERFACE_MODE = "slave BRAM_PORTB" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) 
  (* syn_isclock = "1" *) input clkb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [13:0]addra;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [12:0]addrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [15:0]dina;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [31:0]dinb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [15:0]douta;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [1:0]wea;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [3:0]web;


endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif

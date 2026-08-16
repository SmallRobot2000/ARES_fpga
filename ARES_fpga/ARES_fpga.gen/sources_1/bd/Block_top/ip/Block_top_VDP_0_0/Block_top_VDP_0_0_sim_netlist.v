// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Fri Aug 14 21:38:18 2026
// Host        : lovroLinuxM running 64-bit Ubuntu 24.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/lovro/ARES/ARES_fpga/ARES_fpga/ARES_fpga.gen/sources_1/bd/Block_top/ip/Block_top_VDP_0_0/Block_top_VDP_0_0_sim_netlist.v
// Design      : Block_top_VDP_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Block_top_VDP_0_0,VDP,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "VDP,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module Block_top_VDP_0_0
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s_axi_aclk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_aclk, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Block_top_mig_axi_wrapper_0_0_ui_clk, INSERT_VIP 0" *) input s_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s_axi_aresetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;
  output h_sync;
  output v_sync;
  output [3:0]vga_r;
  output [3:0]vga_g;
  output [3:0]vga_b;

  wire h_sync;
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
  wire v_sync;
  wire [3:0]vga_b;
  wire [3:0]vga_g;
  wire [3:0]vga_r;

  (* NUM_GEN = "2" *) 
  (* S0_GEN_NUM = "1" *) 
  (* STATE_C0 = "12'b000000000100" *) 
  (* STATE_C1 = "12'b000000001000" *) 
  (* STATE_C2 = "12'b000000010000" *) 
  (* STATE_START = "12'b000000000010" *) 
  (* STATE_WAIT = "12'b000000000001" *) 
  (* T0_GEN_NUM = "0" *) 
  (* VGA_H_ACTIVE = "640" *) 
  (* VGA_H_BACK_PORCH = "48" *) 
  (* VGA_H_FRONT_PORCH = "16" *) 
  (* VGA_H_SYNC = "96" *) 
  (* VGA_H_TOTAL = "800" *) 
  (* VGA_V_ACTIVE = "480" *) 
  (* VGA_V_BACK_PORCH = "31" *) 
  (* VGA_V_FRONT_PORCH = "11" *) 
  (* VGA_V_SYNC = "2" *) 
  (* VGA_V_TOTAL = "524" *) 
  Block_top_VDP_0_0_VDP inst
       (.h_sync(h_sync),
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
        .v_sync(v_sync),
        .vga_b(vga_b),
        .vga_g(vga_g),
        .vga_r(vga_r));
endmodule

(* NUM_GEN = "2" *) (* ORIG_REF_NAME = "VDP" *) (* S0_GEN_NUM = "1" *) 
(* STATE_C0 = "12'b000000000100" *) (* STATE_C1 = "12'b000000001000" *) (* STATE_C2 = "12'b000000010000" *) 
(* STATE_START = "12'b000000000010" *) (* STATE_WAIT = "12'b000000000001" *) (* T0_GEN_NUM = "0" *) 
(* VGA_H_ACTIVE = "640" *) (* VGA_H_BACK_PORCH = "48" *) (* VGA_H_FRONT_PORCH = "16" *) 
(* VGA_H_SYNC = "96" *) (* VGA_H_TOTAL = "800" *) (* VGA_V_ACTIVE = "480" *) 
(* VGA_V_BACK_PORCH = "31" *) (* VGA_V_FRONT_PORCH = "11" *) (* VGA_V_SYNC = "2" *) 
(* VGA_V_TOTAL = "524" *) 
module Block_top_VDP_0_0_VDP
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
  input s_axi_aclk;
  input s_axi_aresetn;
  output h_sync;
  output v_sync;
  output [3:0]vga_r;
  output [3:0]vga_g;
  output [3:0]vga_b;

  wire \FSM_onehot_gen_fin_state[0]_i_1_n_0 ;
  wire \FSM_onehot_gen_fin_state[1]_i_1_n_0 ;
  wire \FSM_onehot_gen_fin_state[2]_i_1_n_0 ;
  wire \FSM_onehot_gen_fin_state[2]_i_2_n_0 ;
  wire \FSM_onehot_gen_fin_state[2]_i_3_n_0 ;
  wire \FSM_onehot_gen_fin_state[2]_i_4_n_0 ;
  wire \FSM_onehot_gen_fin_state[2]_i_5_n_0 ;
  wire S0_gen_n_64;
  wire S0_gen_n_65;
  wire S0_gen_n_66;
  wire S0_gen_n_67;
  wire S0_gen_n_70;
  wire S0_gen_n_71;
  wire S0_gen_n_72;
  wire S0_gen_n_73;
  wire S0_gen_n_74;
  wire S0_gen_n_75;
  wire S0_gen_n_76;
  wire S0_gen_n_77;
  wire S0_gen_n_78;
  wire S0_gen_n_79;
  wire S0_gen_n_80;
  wire S0_gen_n_81;
  wire S0_gen_n_82;
  wire S0_gen_n_83;
  wire S0_gen_n_84;
  wire T0_gen_n_76;
  wire T0_gen_n_78;
  wire VGA_clk;
  wire \VGA_clk_cnt[0]_i_1_n_0 ;
  wire \VGA_clk_cnt[1]_i_1_n_0 ;
  wire \VGA_clk_cnt_reg_n_0_[0] ;
  wire [10:3]draw_pixel_addr;
  wire fin_line_buf_i_1_n_1;
  wire fin_line_buf_i_1_n_2;
  wire fin_line_buf_i_1_n_3;
  wire fin_line_buf_i_2_n_0;
  wire fin_line_buf_i_2_n_1;
  wire fin_line_buf_i_2_n_2;
  wire fin_line_buf_i_2_n_3;
  wire fin_line_buf_i_3_n_0;
  wire fin_line_buf_i_4_n_0;
  wire fin_line_buf_i_5_n_0;
  wire fin_line_buf_i_6_n_0;
  wire fin_line_buf_i_7_n_0;
  wire fin_line_buf_i_8_n_0;
  wire fin_line_buf_i_9_n_0;
  wire [1:0]gen_done;
  wire gen_done0;
  wire gen_fin_buf_en_i_1_n_0;
  wire gen_fin_buf_en_reg_n_0;
  wire [0:0]gen_fin_data;
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
  wire \gen_fin_pixel[2]_i_1_n_0 ;
  wire \gen_fin_pixel[9]_i_2_n_0 ;
  wire [9:0]gen_fin_pixel_reg;
  wire [9:0]gen_fin_pixel_reg1;
  wire [9:0]gen_fin_pixel_reg__0;
  wire [1:1]gen_fin_state;
  wire [9:0]gen_line;
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
  wire [2:0]h_cnt_reg;
  wire [10:3]h_cnt_reg__0;
  wire h_sync;
  wire [9:0]p_0_in;
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
  wire [11:0]t0_dout;
  wire [14:0]t0_map_cpu_addr;
  wire t0_map_cpu_clk;
  wire [31:0]t0_map_cpu_din;
  wire [31:0]t0_map_cpu_dout;
  wire t0_map_cpu_en;
  wire [3:0]t0_map_cpu_wen;
  wire \v_cnt[10]_i_1_n_0 ;
  wire \v_cnt[10]_i_2_n_0 ;
  wire \v_cnt[10]_i_3_n_0 ;
  wire \v_cnt[10]_i_4_n_0 ;
  wire \v_cnt[10]_i_5_n_0 ;
  wire \v_cnt[10]_i_6_n_0 ;
  wire \v_cnt[1]_i_1_n_0 ;
  wire \v_cnt[2]_i_1_n_0 ;
  wire \v_cnt[3]_i_1_n_0 ;
  wire \v_cnt[4]_i_1_n_0 ;
  wire \v_cnt[5]_i_1_n_0 ;
  wire \v_cnt[6]_i_1_n_0 ;
  wire \v_cnt[7]_i_1_n_0 ;
  wire \v_cnt[8]_i_1_n_0 ;
  wire \v_cnt[9]_i_1_n_0 ;
  wire \v_cnt[9]_i_2_n_0 ;
  wire \v_cnt[9]_i_3_n_0 ;
  wire \v_cnt_reg_n_0_[10] ;
  wire \v_cnt_reg_n_0_[1] ;
  wire \v_cnt_reg_n_0_[2] ;
  wire \v_cnt_reg_n_0_[3] ;
  wire \v_cnt_reg_n_0_[4] ;
  wire \v_cnt_reg_n_0_[5] ;
  wire \v_cnt_reg_n_0_[6] ;
  wire \v_cnt_reg_n_0_[7] ;
  wire \v_cnt_reg_n_0_[8] ;
  wire \v_cnt_reg_n_0_[9] ;
  wire v_sync;
  wire v_sync_INST_0_i_1_n_0;
  wire v_sync_INST_0_i_2_n_0;
  wire [3:0]vga_b;
  wire [3:0]vga_g;
  wire [3:0]vga_r;
  wire \vga_r[3]_INST_0_i_1_n_0 ;
  wire \vga_r[3]_INST_0_i_2_n_0 ;
  wire \vga_r[3]_INST_0_i_3_n_0 ;
  wire \vga_r[3]_INST_0_i_4_n_0 ;
  wire \vga_r[3]_INST_0_i_5_n_0 ;
  wire \vga_r[3]_INST_0_i_6_n_0 ;
  wire [11:0]vga_rgb;
  wire [11:0]NLW_fin_line_buf_doutb_UNCONNECTED;
  wire [3:3]NLW_fin_line_buf_i_1_CO_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT5 #(
    .INIT(32'hAABBFA00)) 
    \FSM_onehot_gen_fin_state[0]_i_1 
       (.I0(gen_fin_data),
        .I1(gen_fin_state),
        .I2(T0_gen_n_78),
        .I3(gen_done0),
        .I4(\FSM_onehot_gen_fin_state[2]_i_2_n_0 ),
        .O(\FSM_onehot_gen_fin_state[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hCFC4)) 
    \FSM_onehot_gen_fin_state[1]_i_1 
       (.I0(T0_gen_n_78),
        .I1(gen_done0),
        .I2(\FSM_onehot_gen_fin_state[2]_i_2_n_0 ),
        .I3(gen_fin_state),
        .O(\FSM_onehot_gen_fin_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT5 #(
    .INIT(32'hAAEFAA20)) 
    \FSM_onehot_gen_fin_state[2]_i_1 
       (.I0(gen_fin_state),
        .I1(T0_gen_n_78),
        .I2(gen_done0),
        .I3(\FSM_onehot_gen_fin_state[2]_i_2_n_0 ),
        .I4(gen_fin_data),
        .O(\FSM_onehot_gen_fin_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5555555555555557)) 
    \FSM_onehot_gen_fin_state[2]_i_2 
       (.I0(\FSM_onehot_gen_fin_state[2]_i_3_n_0 ),
        .I1(gen_fin_pixel_reg[2]),
        .I2(gen_fin_pixel_reg[5]),
        .I3(gen_fin_pixel_reg[1]),
        .I4(\FSM_onehot_gen_fin_state[2]_i_4_n_0 ),
        .I5(\FSM_onehot_gen_fin_state[2]_i_5_n_0 ),
        .O(\FSM_onehot_gen_fin_state[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h7F7F7F70)) 
    \FSM_onehot_gen_fin_state[2]_i_3 
       (.I0(gen_done[1]),
        .I1(gen_done[0]),
        .I2(gen_fin_state),
        .I3(gen_fin_data),
        .I4(gen_done0),
        .O(\FSM_onehot_gen_fin_state[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \FSM_onehot_gen_fin_state[2]_i_4 
       (.I0(gen_fin_pixel_reg[9]),
        .I1(gen_fin_pixel_reg[8]),
        .I2(gen_fin_pixel_reg[6]),
        .I3(gen_fin_pixel_reg[0]),
        .O(\FSM_onehot_gen_fin_state[2]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \FSM_onehot_gen_fin_state[2]_i_5 
       (.I0(gen_fin_pixel_reg[7]),
        .I1(gen_fin_pixel_reg[4]),
        .I2(gen_fin_data),
        .I3(gen_fin_pixel_reg[3]),
        .O(\FSM_onehot_gen_fin_state[2]_i_5_n_0 ));
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
  Block_top_VDP_0_0_VDP_sprite_gen S0_gen
       (.D(S0_gen_n_71),
        .\FSM_onehot_state_reg[10]_0 (T0_gen_n_78),
        .\FSM_onehot_state_reg[9]_i_7_0 (gen_line[7]),
        .Q(gen_fin_pixel_reg),
        .\bbstub_doutb[11] ({S0_gen_n_73,S0_gen_n_74,S0_gen_n_75,S0_gen_n_76,S0_gen_n_77,S0_gen_n_78,S0_gen_n_79,S0_gen_n_80,S0_gen_n_81,S0_gen_n_82,S0_gen_n_83,S0_gen_n_84}),
        .doutb(t0_dout),
        .gen_done(gen_done[1]),
        .gen_done0(gen_done0),
        .\gen_done_reg[1] (S0_gen_n_72),
        .gen_line({gen_line[9],gen_line[2]}),
        .\map_r_addr_reg[13] ({\v_cnt_reg_n_0_[9] ,\v_cnt_reg_n_0_[8] ,\v_cnt_reg_n_0_[7] ,\v_cnt_reg_n_0_[6] ,\v_cnt_reg_n_0_[5] ,\v_cnt_reg_n_0_[4] ,\v_cnt_reg_n_0_[3] ,\v_cnt_reg_n_0_[2] ,\v_cnt_reg_n_0_[1] ,gen_line[0]}),
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
        .\v_cnt_reg[2] (S0_gen_n_66),
        .\v_cnt_reg[4] (S0_gen_n_64),
        .\v_cnt_reg[5] (S0_gen_n_65),
        .\v_cnt_reg[6] (S0_gen_n_70),
        .\v_cnt_reg[8] (S0_gen_n_67));
  Block_top_VDP_0_0_VDP_tile_gen T0_gen
       (.D({gen_line[9],S0_gen_n_64,S0_gen_n_71}),
        .\FSM_onehot_state[10]_i_7_0 ({h_cnt_reg__0,h_cnt_reg}),
        .\FSM_onehot_state_reg[5]_0 (S0_gen_n_65),
        .\FSM_onehot_state_reg[5]_1 (S0_gen_n_70),
        .Q(gen_fin_pixel_reg),
        .\data_r_addr_reg[2]_0 ({gen_line[2],gen_line[0]}),
        .doutb(t0_dout),
        .gen_done(gen_done[0]),
        .gen_done0(gen_done0),
        .\gen_done_reg[0] (T0_gen_n_76),
        .\h_cnt_reg[4] (T0_gen_n_78),
        .\map_r_addr_reg[11]_0 ({\v_cnt_reg_n_0_[7] ,\v_cnt_reg_n_0_[6] ,\v_cnt_reg_n_0_[5] ,\v_cnt_reg_n_0_[4] ,\v_cnt_reg_n_0_[3] ,\v_cnt_reg_n_0_[2] ,\v_cnt_reg_n_0_[1] }),
        .\map_r_addr_reg[11]_1 (S0_gen_n_66),
        .\map_r_addr_reg[12]_0 (S0_gen_n_67),
        .s_axi_aclk(s_axi_aclk),
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
        .\v_cnt_reg[7] (gen_line[7]));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \VGA_clk_cnt[0]_i_1 
       (.I0(\VGA_clk_cnt_reg_n_0_[0] ),
        .O(\VGA_clk_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
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
  Block_top_VDP_0_0_blk_mem_fin_line fin_line_buf
       (.addra({draw_pixel_addr,h_cnt_reg}),
        .addrb({fin_line_buf_i_3_n_0,gen_fin_pixel_reg1}),
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
        .DI({1'b0,h_cnt_reg__0[9:7]}),
        .O(draw_pixel_addr[10:7]),
        .S({fin_line_buf_i_4_n_0,fin_line_buf_i_5_n_0,fin_line_buf_i_6_n_0,fin_line_buf_i_7_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 fin_line_buf_i_2
       (.CI(1'b0),
        .CO({fin_line_buf_i_2_n_0,fin_line_buf_i_2_n_1,fin_line_buf_i_2_n_2,fin_line_buf_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({h_cnt_reg__0[6],1'b0,h_cnt_reg__0[4],1'b0}),
        .O(draw_pixel_addr[6:3]),
        .S({fin_line_buf_i_8_n_0,h_cnt_reg__0[5],fin_line_buf_i_9_n_0,h_cnt_reg__0[3]}));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT1 #(
    .INIT(2'h1)) 
    fin_line_buf_i_3
       (.I0(gen_line[0]),
        .O(fin_line_buf_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    fin_line_buf_i_4
       (.I0(h_cnt_reg__0[10]),
        .I1(gen_line[0]),
        .O(fin_line_buf_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    fin_line_buf_i_5
       (.I0(h_cnt_reg__0[9]),
        .O(fin_line_buf_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    fin_line_buf_i_6
       (.I0(h_cnt_reg__0[8]),
        .O(fin_line_buf_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    fin_line_buf_i_7
       (.I0(h_cnt_reg__0[7]),
        .O(fin_line_buf_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    fin_line_buf_i_8
       (.I0(h_cnt_reg__0[6]),
        .O(fin_line_buf_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    fin_line_buf_i_9
       (.I0(h_cnt_reg__0[4]),
        .O(fin_line_buf_i_9_n_0));
  FDRE \gen_done_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(T0_gen_n_76),
        .Q(gen_done[0]),
        .R(1'b0));
  FDRE \gen_done_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(S0_gen_n_72),
        .Q(gen_done[1]),
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
        .D(S0_gen_n_84),
        .Q(\gen_fin_data_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fin_data_reg[10] 
       (.C(s_axi_aclk),
        .CE(gen_fin_data),
        .D(S0_gen_n_74),
        .Q(\gen_fin_data_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fin_data_reg[11] 
       (.C(s_axi_aclk),
        .CE(gen_fin_data),
        .D(S0_gen_n_73),
        .Q(\gen_fin_data_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fin_data_reg[1] 
       (.C(s_axi_aclk),
        .CE(gen_fin_data),
        .D(S0_gen_n_83),
        .Q(\gen_fin_data_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fin_data_reg[2] 
       (.C(s_axi_aclk),
        .CE(gen_fin_data),
        .D(S0_gen_n_82),
        .Q(\gen_fin_data_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fin_data_reg[3] 
       (.C(s_axi_aclk),
        .CE(gen_fin_data),
        .D(S0_gen_n_81),
        .Q(\gen_fin_data_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fin_data_reg[4] 
       (.C(s_axi_aclk),
        .CE(gen_fin_data),
        .D(S0_gen_n_80),
        .Q(\gen_fin_data_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fin_data_reg[5] 
       (.C(s_axi_aclk),
        .CE(gen_fin_data),
        .D(S0_gen_n_79),
        .Q(\gen_fin_data_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fin_data_reg[6] 
       (.C(s_axi_aclk),
        .CE(gen_fin_data),
        .D(S0_gen_n_78),
        .Q(\gen_fin_data_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fin_data_reg[7] 
       (.C(s_axi_aclk),
        .CE(gen_fin_data),
        .D(S0_gen_n_77),
        .Q(\gen_fin_data_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fin_data_reg[8] 
       (.C(s_axi_aclk),
        .CE(gen_fin_data),
        .D(S0_gen_n_76),
        .Q(\gen_fin_data_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fin_data_reg[9] 
       (.C(s_axi_aclk),
        .CE(gen_fin_data),
        .D(S0_gen_n_75),
        .Q(\gen_fin_data_reg_n_0_[9] ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_fin_pixel[0]_i_1 
       (.I0(gen_fin_pixel_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gen_fin_pixel[1]_i_1 
       (.I0(gen_fin_pixel_reg[0]),
        .I1(gen_fin_pixel_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \gen_fin_pixel[2]_i_1 
       (.I0(gen_fin_pixel_reg[2]),
        .I1(gen_fin_pixel_reg[1]),
        .I2(gen_fin_pixel_reg[0]),
        .O(\gen_fin_pixel[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \gen_fin_pixel[3]_i_1 
       (.I0(gen_fin_pixel_reg[3]),
        .I1(gen_fin_pixel_reg[1]),
        .I2(gen_fin_pixel_reg[0]),
        .I3(gen_fin_pixel_reg[2]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gen_fin_pixel[6]_i_1 
       (.I0(gen_fin_pixel_reg[6]),
        .I1(\gen_fin_pixel[9]_i_2_n_0 ),
        .O(p_0_in[6]));
  LUT3 #(
    .INIT(8'h6A)) 
    \gen_fin_pixel[7]_i_1 
       (.I0(gen_fin_pixel_reg[7]),
        .I1(\gen_fin_pixel[9]_i_2_n_0 ),
        .I2(gen_fin_pixel_reg[6]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \gen_fin_pixel[8]_i_1 
       (.I0(gen_fin_pixel_reg[8]),
        .I1(gen_fin_pixel_reg[6]),
        .I2(\gen_fin_pixel[9]_i_2_n_0 ),
        .I3(gen_fin_pixel_reg[7]),
        .O(p_0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
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
        .Q(gen_fin_pixel_reg1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fin_pixel_reg1_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gen_fin_pixel_reg__0[1]),
        .Q(gen_fin_pixel_reg1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fin_pixel_reg1_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gen_fin_pixel_reg__0[2]),
        .Q(gen_fin_pixel_reg1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fin_pixel_reg1_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gen_fin_pixel_reg__0[3]),
        .Q(gen_fin_pixel_reg1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fin_pixel_reg1_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gen_fin_pixel_reg__0[4]),
        .Q(gen_fin_pixel_reg1[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fin_pixel_reg1_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gen_fin_pixel_reg__0[5]),
        .Q(gen_fin_pixel_reg1[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fin_pixel_reg1_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gen_fin_pixel_reg__0[6]),
        .Q(gen_fin_pixel_reg1[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fin_pixel_reg1_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gen_fin_pixel_reg__0[7]),
        .Q(gen_fin_pixel_reg1[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fin_pixel_reg1_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gen_fin_pixel_reg__0[8]),
        .Q(gen_fin_pixel_reg1[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fin_pixel_reg1_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(gen_fin_pixel_reg__0[9]),
        .Q(gen_fin_pixel_reg1[9]),
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
        .D(\gen_fin_pixel[2]_i_1_n_0 ),
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
       (.I0(h_cnt_reg[0]),
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
       (.I0(h_cnt_reg__0[10]),
        .I1(h_cnt_reg__0[8]),
        .I2(h_cnt_reg__0[9]),
        .I3(h_cnt_reg__0[7]),
        .I4(h_cnt_reg__0[6]),
        .I5(\h_cnt[10]_i_3_n_0 ),
        .O(\h_cnt[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \h_cnt[10]_i_3 
       (.I0(h_cnt_reg__0[3]),
        .I1(h_cnt_reg[1]),
        .I2(h_cnt_reg[0]),
        .I3(h_cnt_reg[2]),
        .I4(h_cnt_reg__0[5]),
        .I5(h_cnt_reg__0[4]),
        .O(\h_cnt[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \h_cnt[1]_i_1 
       (.I0(h_cnt_reg[0]),
        .I1(h_cnt_reg[1]),
        .O(\h_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \h_cnt[2]_i_1 
       (.I0(h_cnt_reg[2]),
        .I1(h_cnt_reg[0]),
        .I2(h_cnt_reg[1]),
        .O(\h_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \h_cnt[3]_i_1 
       (.I0(h_cnt_reg__0[3]),
        .I1(h_cnt_reg[1]),
        .I2(h_cnt_reg[0]),
        .I3(h_cnt_reg[2]),
        .O(\h_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \h_cnt[4]_i_1 
       (.I0(h_cnt_reg__0[4]),
        .I1(h_cnt_reg__0[3]),
        .I2(h_cnt_reg[1]),
        .I3(h_cnt_reg[0]),
        .I4(h_cnt_reg[2]),
        .O(\h_cnt[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \h_cnt[5]_i_1 
       (.I0(h_cnt_reg__0[5]),
        .I1(h_cnt_reg[2]),
        .I2(h_cnt_reg[0]),
        .I3(h_cnt_reg[1]),
        .I4(h_cnt_reg__0[3]),
        .I5(h_cnt_reg__0[4]),
        .O(\h_cnt[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT4 #(
    .INIT(16'hAA6A)) 
    \h_cnt[6]_i_1 
       (.I0(h_cnt_reg__0[6]),
        .I1(h_cnt_reg__0[4]),
        .I2(h_cnt_reg__0[5]),
        .I3(\h_cnt[8]_i_2_n_0 ),
        .O(\h_cnt[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT5 #(
    .INIT(32'h9AAAAAAA)) 
    \h_cnt[7]_i_1 
       (.I0(h_cnt_reg__0[7]),
        .I1(\h_cnt[8]_i_2_n_0 ),
        .I2(h_cnt_reg__0[5]),
        .I3(h_cnt_reg__0[4]),
        .I4(h_cnt_reg__0[6]),
        .O(\h_cnt[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9AAAAAAAAAAAAAAA)) 
    \h_cnt[8]_i_1 
       (.I0(h_cnt_reg__0[8]),
        .I1(\h_cnt[8]_i_2_n_0 ),
        .I2(h_cnt_reg__0[5]),
        .I3(h_cnt_reg__0[4]),
        .I4(h_cnt_reg__0[6]),
        .I5(h_cnt_reg__0[7]),
        .O(\h_cnt[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \h_cnt[8]_i_2 
       (.I0(h_cnt_reg[2]),
        .I1(h_cnt_reg[0]),
        .I2(h_cnt_reg[1]),
        .I3(h_cnt_reg__0[3]),
        .O(\h_cnt[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA6AAA)) 
    \h_cnt[9]_i_1 
       (.I0(h_cnt_reg__0[9]),
        .I1(h_cnt_reg__0[8]),
        .I2(h_cnt_reg__0[7]),
        .I3(h_cnt_reg__0[6]),
        .I4(\h_cnt[10]_i_3_n_0 ),
        .O(\h_cnt[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_cnt_reg[0] 
       (.C(VGA_clk),
        .CE(1'b1),
        .D(\h_cnt[0]_i_1_n_0 ),
        .Q(h_cnt_reg[0]),
        .R(\h_cnt[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_cnt_reg[10] 
       (.C(VGA_clk),
        .CE(1'b1),
        .D(\h_cnt[10]_i_2_n_0 ),
        .Q(h_cnt_reg__0[10]),
        .R(\h_cnt[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_cnt_reg[1] 
       (.C(VGA_clk),
        .CE(1'b1),
        .D(\h_cnt[1]_i_1_n_0 ),
        .Q(h_cnt_reg[1]),
        .R(\h_cnt[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_cnt_reg[2] 
       (.C(VGA_clk),
        .CE(1'b1),
        .D(\h_cnt[2]_i_1_n_0 ),
        .Q(h_cnt_reg[2]),
        .R(\h_cnt[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_cnt_reg[3] 
       (.C(VGA_clk),
        .CE(1'b1),
        .D(\h_cnt[3]_i_1_n_0 ),
        .Q(h_cnt_reg__0[3]),
        .R(\h_cnt[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_cnt_reg[4] 
       (.C(VGA_clk),
        .CE(1'b1),
        .D(\h_cnt[4]_i_1_n_0 ),
        .Q(h_cnt_reg__0[4]),
        .R(\h_cnt[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_cnt_reg[5] 
       (.C(VGA_clk),
        .CE(1'b1),
        .D(\h_cnt[5]_i_1_n_0 ),
        .Q(h_cnt_reg__0[5]),
        .R(\h_cnt[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_cnt_reg[6] 
       (.C(VGA_clk),
        .CE(1'b1),
        .D(\h_cnt[6]_i_1_n_0 ),
        .Q(h_cnt_reg__0[6]),
        .R(\h_cnt[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_cnt_reg[7] 
       (.C(VGA_clk),
        .CE(1'b1),
        .D(\h_cnt[7]_i_1_n_0 ),
        .Q(h_cnt_reg__0[7]),
        .R(\h_cnt[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_cnt_reg[8] 
       (.C(VGA_clk),
        .CE(1'b1),
        .D(\h_cnt[8]_i_1_n_0 ),
        .Q(h_cnt_reg__0[8]),
        .R(\h_cnt[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \h_cnt_reg[9] 
       (.C(VGA_clk),
        .CE(1'b1),
        .D(\h_cnt[9]_i_1_n_0 ),
        .Q(h_cnt_reg__0[9]),
        .R(\h_cnt[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0030000000001000)) 
    h_sync_INST_0
       (.I0(h_cnt_reg__0[5]),
        .I1(h_cnt_reg__0[10]),
        .I2(h_cnt_reg__0[9]),
        .I3(h_cnt_reg__0[8]),
        .I4(h_cnt_reg__0[7]),
        .I5(h_cnt_reg__0[6]),
        .O(h_sync));
  LUT1 #(
    .INIT(2'h1)) 
    \v_cnt[10]_i_1 
       (.I0(s_axi_aresetn),
        .O(\v_cnt[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00400000)) 
    \v_cnt[10]_i_2 
       (.I0(\v_cnt[10]_i_4_n_0 ),
        .I1(h_cnt_reg__0[8]),
        .I2(h_cnt_reg__0[9]),
        .I3(h_cnt_reg__0[10]),
        .I4(\v_cnt[10]_i_5_n_0 ),
        .I5(\v_cnt[10]_i_6_n_0 ),
        .O(\v_cnt[10]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \v_cnt[10]_i_3 
       (.I0(\v_cnt_reg_n_0_[10] ),
        .I1(\v_cnt_reg_n_0_[9] ),
        .I2(\vga_r[3]_INST_0_i_3_n_0 ),
        .O(\v_cnt[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \v_cnt[10]_i_4 
       (.I0(h_cnt_reg__0[5]),
        .I1(h_cnt_reg__0[7]),
        .I2(h_cnt_reg__0[6]),
        .O(\v_cnt[10]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \v_cnt[10]_i_5 
       (.I0(h_cnt_reg__0[4]),
        .I1(h_cnt_reg__0[3]),
        .I2(h_cnt_reg[1]),
        .I3(h_cnt_reg[0]),
        .I4(h_cnt_reg[2]),
        .O(\v_cnt[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    \v_cnt[10]_i_6 
       (.I0(v_sync_INST_0_i_1_n_0),
        .I1(\v_cnt_reg_n_0_[4] ),
        .I2(gen_line[0]),
        .I3(\v_cnt_reg_n_0_[1] ),
        .I4(\v_cnt_reg_n_0_[9] ),
        .I5(v_sync_INST_0_i_2_n_0),
        .O(\v_cnt[10]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \v_cnt[1]_i_1 
       (.I0(\v_cnt_reg_n_0_[1] ),
        .I1(gen_line[0]),
        .O(\v_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT4 #(
    .INIT(16'h0078)) 
    \v_cnt[2]_i_1 
       (.I0(\v_cnt_reg_n_0_[1] ),
        .I1(gen_line[0]),
        .I2(\v_cnt_reg_n_0_[2] ),
        .I3(\v_cnt[10]_i_6_n_0 ),
        .O(\v_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT5 #(
    .INIT(32'h00007F80)) 
    \v_cnt[3]_i_1 
       (.I0(gen_line[0]),
        .I1(\v_cnt_reg_n_0_[1] ),
        .I2(\v_cnt_reg_n_0_[2] ),
        .I3(\v_cnt_reg_n_0_[3] ),
        .I4(\v_cnt[10]_i_6_n_0 ),
        .O(\v_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \v_cnt[4]_i_1 
       (.I0(\v_cnt_reg_n_0_[4] ),
        .I1(\v_cnt_reg_n_0_[3] ),
        .I2(gen_line[0]),
        .I3(\v_cnt_reg_n_0_[1] ),
        .I4(\v_cnt_reg_n_0_[2] ),
        .O(\v_cnt[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \v_cnt[5]_i_1 
       (.I0(\v_cnt_reg_n_0_[5] ),
        .I1(\v_cnt_reg_n_0_[4] ),
        .I2(\v_cnt_reg_n_0_[2] ),
        .I3(\v_cnt_reg_n_0_[1] ),
        .I4(gen_line[0]),
        .I5(\v_cnt_reg_n_0_[3] ),
        .O(\v_cnt[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hA6)) 
    \v_cnt[6]_i_1 
       (.I0(\v_cnt_reg_n_0_[6] ),
        .I1(\v_cnt_reg_n_0_[5] ),
        .I2(\vga_r[3]_INST_0_i_1_n_0 ),
        .O(\v_cnt[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT4 #(
    .INIT(16'h9AAA)) 
    \v_cnt[7]_i_1 
       (.I0(\v_cnt_reg_n_0_[7] ),
        .I1(\vga_r[3]_INST_0_i_1_n_0 ),
        .I2(\v_cnt_reg_n_0_[5] ),
        .I3(\v_cnt_reg_n_0_[6] ),
        .O(\v_cnt[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT5 #(
    .INIT(32'hAA6AAAAA)) 
    \v_cnt[8]_i_1 
       (.I0(\v_cnt_reg_n_0_[8] ),
        .I1(\v_cnt_reg_n_0_[6] ),
        .I2(\v_cnt_reg_n_0_[5] ),
        .I3(\vga_r[3]_INST_0_i_1_n_0 ),
        .I4(\v_cnt_reg_n_0_[7] ),
        .O(\v_cnt[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT5 #(
    .INIT(32'h00F7FF00)) 
    \v_cnt[9]_i_1 
       (.I0(gen_line[0]),
        .I1(\v_cnt_reg_n_0_[3] ),
        .I2(\v_cnt[9]_i_2_n_0 ),
        .I3(\vga_r[3]_INST_0_i_3_n_0 ),
        .I4(\v_cnt_reg_n_0_[9] ),
        .O(\v_cnt[9]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \v_cnt[9]_i_2 
       (.I0(\v_cnt_reg_n_0_[6] ),
        .I1(\v_cnt_reg_n_0_[2] ),
        .I2(\v_cnt_reg_n_0_[7] ),
        .I3(\v_cnt_reg_n_0_[8] ),
        .I4(\v_cnt[9]_i_3_n_0 ),
        .O(\v_cnt[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \v_cnt[9]_i_3 
       (.I0(\v_cnt_reg_n_0_[5] ),
        .I1(\v_cnt_reg_n_0_[4] ),
        .I2(\v_cnt_reg_n_0_[1] ),
        .I3(\v_cnt_reg_n_0_[10] ),
        .O(\v_cnt[9]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_cnt_reg[0] 
       (.C(VGA_clk),
        .CE(\v_cnt[10]_i_2_n_0 ),
        .D(fin_line_buf_i_3_n_0),
        .Q(gen_line[0]),
        .R(\v_cnt[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_cnt_reg[10] 
       (.C(VGA_clk),
        .CE(\v_cnt[10]_i_2_n_0 ),
        .D(\v_cnt[10]_i_3_n_0 ),
        .Q(\v_cnt_reg_n_0_[10] ),
        .R(\v_cnt[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_cnt_reg[1] 
       (.C(VGA_clk),
        .CE(\v_cnt[10]_i_2_n_0 ),
        .D(\v_cnt[1]_i_1_n_0 ),
        .Q(\v_cnt_reg_n_0_[1] ),
        .R(\v_cnt[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_cnt_reg[2] 
       (.C(VGA_clk),
        .CE(\v_cnt[10]_i_2_n_0 ),
        .D(\v_cnt[2]_i_1_n_0 ),
        .Q(\v_cnt_reg_n_0_[2] ),
        .R(\v_cnt[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_cnt_reg[3] 
       (.C(VGA_clk),
        .CE(\v_cnt[10]_i_2_n_0 ),
        .D(\v_cnt[3]_i_1_n_0 ),
        .Q(\v_cnt_reg_n_0_[3] ),
        .R(\v_cnt[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_cnt_reg[4] 
       (.C(VGA_clk),
        .CE(\v_cnt[10]_i_2_n_0 ),
        .D(\v_cnt[4]_i_1_n_0 ),
        .Q(\v_cnt_reg_n_0_[4] ),
        .R(\v_cnt[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_cnt_reg[5] 
       (.C(VGA_clk),
        .CE(\v_cnt[10]_i_2_n_0 ),
        .D(\v_cnt[5]_i_1_n_0 ),
        .Q(\v_cnt_reg_n_0_[5] ),
        .R(\v_cnt[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_cnt_reg[6] 
       (.C(VGA_clk),
        .CE(\v_cnt[10]_i_2_n_0 ),
        .D(\v_cnt[6]_i_1_n_0 ),
        .Q(\v_cnt_reg_n_0_[6] ),
        .R(\v_cnt[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_cnt_reg[7] 
       (.C(VGA_clk),
        .CE(\v_cnt[10]_i_2_n_0 ),
        .D(\v_cnt[7]_i_1_n_0 ),
        .Q(\v_cnt_reg_n_0_[7] ),
        .R(\v_cnt[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_cnt_reg[8] 
       (.C(VGA_clk),
        .CE(\v_cnt[10]_i_2_n_0 ),
        .D(\v_cnt[8]_i_1_n_0 ),
        .Q(\v_cnt_reg_n_0_[8] ),
        .R(\v_cnt[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \v_cnt_reg[9] 
       (.C(VGA_clk),
        .CE(\v_cnt[10]_i_2_n_0 ),
        .D(\v_cnt[9]_i_1_n_0 ),
        .Q(\v_cnt_reg_n_0_[9] ),
        .R(\v_cnt[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00001000)) 
    v_sync_INST_0
       (.I0(v_sync_INST_0_i_1_n_0),
        .I1(\v_cnt_reg_n_0_[4] ),
        .I2(\v_cnt_reg_n_0_[1] ),
        .I3(\v_cnt_reg_n_0_[9] ),
        .I4(v_sync_INST_0_i_2_n_0),
        .O(v_sync));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    v_sync_INST_0_i_1
       (.I0(\v_cnt_reg_n_0_[5] ),
        .I1(\v_cnt_reg_n_0_[6] ),
        .I2(\v_cnt_reg_n_0_[7] ),
        .O(v_sync_INST_0_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFEF)) 
    v_sync_INST_0_i_2
       (.I0(\v_cnt_reg_n_0_[8] ),
        .I1(\v_cnt_reg_n_0_[10] ),
        .I2(\v_cnt_reg_n_0_[3] ),
        .I3(\v_cnt_reg_n_0_[2] ),
        .O(v_sync_INST_0_i_2_n_0));
  LUT6 #(
    .INIT(64'h000000000000A8AA)) 
    \vga_b[0]_INST_0 
       (.I0(vga_rgb[0]),
        .I1(\v_cnt_reg_n_0_[8] ),
        .I2(v_sync_INST_0_i_1_n_0),
        .I3(\vga_r[3]_INST_0_i_1_n_0 ),
        .I4(\vga_r[3]_INST_0_i_2_n_0 ),
        .I5(\vga_r[3]_INST_0_i_3_n_0 ),
        .O(vga_b[0]));
  LUT6 #(
    .INIT(64'h000000000000A8AA)) 
    \vga_b[1]_INST_0 
       (.I0(vga_rgb[1]),
        .I1(\v_cnt_reg_n_0_[8] ),
        .I2(v_sync_INST_0_i_1_n_0),
        .I3(\vga_r[3]_INST_0_i_1_n_0 ),
        .I4(\vga_r[3]_INST_0_i_2_n_0 ),
        .I5(\vga_r[3]_INST_0_i_3_n_0 ),
        .O(vga_b[1]));
  LUT6 #(
    .INIT(64'h000000000000A8AA)) 
    \vga_b[2]_INST_0 
       (.I0(vga_rgb[2]),
        .I1(\v_cnt_reg_n_0_[8] ),
        .I2(v_sync_INST_0_i_1_n_0),
        .I3(\vga_r[3]_INST_0_i_1_n_0 ),
        .I4(\vga_r[3]_INST_0_i_2_n_0 ),
        .I5(\vga_r[3]_INST_0_i_3_n_0 ),
        .O(vga_b[2]));
  LUT6 #(
    .INIT(64'h000000000000A8AA)) 
    \vga_b[3]_INST_0 
       (.I0(vga_rgb[3]),
        .I1(\v_cnt_reg_n_0_[8] ),
        .I2(v_sync_INST_0_i_1_n_0),
        .I3(\vga_r[3]_INST_0_i_1_n_0 ),
        .I4(\vga_r[3]_INST_0_i_2_n_0 ),
        .I5(\vga_r[3]_INST_0_i_3_n_0 ),
        .O(vga_b[3]));
  LUT6 #(
    .INIT(64'h000000000000A8AA)) 
    \vga_g[0]_INST_0 
       (.I0(vga_rgb[4]),
        .I1(\v_cnt_reg_n_0_[8] ),
        .I2(v_sync_INST_0_i_1_n_0),
        .I3(\vga_r[3]_INST_0_i_1_n_0 ),
        .I4(\vga_r[3]_INST_0_i_2_n_0 ),
        .I5(\vga_r[3]_INST_0_i_3_n_0 ),
        .O(vga_g[0]));
  LUT6 #(
    .INIT(64'h000000000000A8AA)) 
    \vga_g[1]_INST_0 
       (.I0(vga_rgb[5]),
        .I1(\v_cnt_reg_n_0_[8] ),
        .I2(v_sync_INST_0_i_1_n_0),
        .I3(\vga_r[3]_INST_0_i_1_n_0 ),
        .I4(\vga_r[3]_INST_0_i_2_n_0 ),
        .I5(\vga_r[3]_INST_0_i_3_n_0 ),
        .O(vga_g[1]));
  LUT6 #(
    .INIT(64'h000000000000A8AA)) 
    \vga_g[2]_INST_0 
       (.I0(vga_rgb[6]),
        .I1(\v_cnt_reg_n_0_[8] ),
        .I2(v_sync_INST_0_i_1_n_0),
        .I3(\vga_r[3]_INST_0_i_1_n_0 ),
        .I4(\vga_r[3]_INST_0_i_2_n_0 ),
        .I5(\vga_r[3]_INST_0_i_3_n_0 ),
        .O(vga_g[2]));
  LUT6 #(
    .INIT(64'h000000000000A8AA)) 
    \vga_g[3]_INST_0 
       (.I0(vga_rgb[7]),
        .I1(\v_cnt_reg_n_0_[8] ),
        .I2(v_sync_INST_0_i_1_n_0),
        .I3(\vga_r[3]_INST_0_i_1_n_0 ),
        .I4(\vga_r[3]_INST_0_i_2_n_0 ),
        .I5(\vga_r[3]_INST_0_i_3_n_0 ),
        .O(vga_g[3]));
  LUT6 #(
    .INIT(64'h000000000000A8AA)) 
    \vga_r[0]_INST_0 
       (.I0(vga_rgb[8]),
        .I1(\v_cnt_reg_n_0_[8] ),
        .I2(v_sync_INST_0_i_1_n_0),
        .I3(\vga_r[3]_INST_0_i_1_n_0 ),
        .I4(\vga_r[3]_INST_0_i_2_n_0 ),
        .I5(\vga_r[3]_INST_0_i_3_n_0 ),
        .O(vga_r[0]));
  LUT6 #(
    .INIT(64'h000000000000A8AA)) 
    \vga_r[1]_INST_0 
       (.I0(vga_rgb[9]),
        .I1(\v_cnt_reg_n_0_[8] ),
        .I2(v_sync_INST_0_i_1_n_0),
        .I3(\vga_r[3]_INST_0_i_1_n_0 ),
        .I4(\vga_r[3]_INST_0_i_2_n_0 ),
        .I5(\vga_r[3]_INST_0_i_3_n_0 ),
        .O(vga_r[1]));
  LUT6 #(
    .INIT(64'h000000000000A8AA)) 
    \vga_r[2]_INST_0 
       (.I0(vga_rgb[10]),
        .I1(\v_cnt_reg_n_0_[8] ),
        .I2(v_sync_INST_0_i_1_n_0),
        .I3(\vga_r[3]_INST_0_i_1_n_0 ),
        .I4(\vga_r[3]_INST_0_i_2_n_0 ),
        .I5(\vga_r[3]_INST_0_i_3_n_0 ),
        .O(vga_r[2]));
  LUT6 #(
    .INIT(64'h000000000000A8AA)) 
    \vga_r[3]_INST_0 
       (.I0(vga_rgb[11]),
        .I1(\v_cnt_reg_n_0_[8] ),
        .I2(v_sync_INST_0_i_1_n_0),
        .I3(\vga_r[3]_INST_0_i_1_n_0 ),
        .I4(\vga_r[3]_INST_0_i_2_n_0 ),
        .I5(\vga_r[3]_INST_0_i_3_n_0 ),
        .O(vga_r[3]));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \vga_r[3]_INST_0_i_1 
       (.I0(\v_cnt_reg_n_0_[3] ),
        .I1(gen_line[0]),
        .I2(\v_cnt_reg_n_0_[1] ),
        .I3(\v_cnt_reg_n_0_[2] ),
        .I4(\v_cnt_reg_n_0_[4] ),
        .O(\vga_r[3]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \vga_r[3]_INST_0_i_2 
       (.I0(\vga_r[3]_INST_0_i_4_n_0 ),
        .I1(h_cnt_reg__0[10]),
        .I2(\v_cnt_reg_n_0_[10] ),
        .I3(\v_cnt_reg_n_0_[9] ),
        .I4(\vga_r[3]_INST_0_i_5_n_0 ),
        .O(\vga_r[3]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \vga_r[3]_INST_0_i_3 
       (.I0(\v_cnt_reg_n_0_[8] ),
        .I1(\v_cnt_reg_n_0_[6] ),
        .I2(\v_cnt_reg_n_0_[5] ),
        .I3(\vga_r[3]_INST_0_i_1_n_0 ),
        .I4(\v_cnt_reg_n_0_[7] ),
        .O(\vga_r[3]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA8888AAAA8000)) 
    \vga_r[3]_INST_0_i_4 
       (.I0(h_cnt_reg__0[9]),
        .I1(h_cnt_reg__0[7]),
        .I2(h_cnt_reg__0[5]),
        .I3(h_cnt_reg__0[4]),
        .I4(h_cnt_reg__0[8]),
        .I5(h_cnt_reg__0[6]),
        .O(\vga_r[3]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \vga_r[3]_INST_0_i_5 
       (.I0(h_cnt_reg__0[6]),
        .I1(h_cnt_reg__0[7]),
        .I2(\vga_r[3]_INST_0_i_6_n_0 ),
        .I3(h_cnt_reg__0[8]),
        .I4(h_cnt_reg__0[9]),
        .I5(h_cnt_reg__0[10]),
        .O(\vga_r[3]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \vga_r[3]_INST_0_i_6 
       (.I0(h_cnt_reg__0[4]),
        .I1(h_cnt_reg__0[5]),
        .O(\vga_r[3]_INST_0_i_6_n_0 ));
endmodule

(* ORIG_REF_NAME = "VDP_sprite_gen" *) 
module Block_top_VDP_0_0_VDP_sprite_gen
   (s0_data_cpu_dout,
    s0_att_cpu_dout,
    \v_cnt_reg[4] ,
    \v_cnt_reg[5] ,
    \v_cnt_reg[2] ,
    \v_cnt_reg[8] ,
    gen_line,
    \v_cnt_reg[6] ,
    D,
    \gen_done_reg[1] ,
    \bbstub_doutb[11] ,
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
    \map_r_addr_reg[13] ,
    \FSM_onehot_state_reg[9]_i_7_0 ,
    \FSM_onehot_state_reg[10]_0 ,
    gen_done,
    gen_done0,
    doutb);
  output [31:0]s0_data_cpu_dout;
  output [31:0]s0_att_cpu_dout;
  output \v_cnt_reg[4] ;
  output \v_cnt_reg[5] ;
  output \v_cnt_reg[2] ;
  output \v_cnt_reg[8] ;
  output [1:0]gen_line;
  output \v_cnt_reg[6] ;
  output [0:0]D;
  output \gen_done_reg[1] ;
  output [11:0]\bbstub_doutb[11] ;
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
  input [9:0]\map_r_addr_reg[13] ;
  input [0:0]\FSM_onehot_state_reg[9]_i_7_0 ;
  input \FSM_onehot_state_reg[10]_0 ;
  input [0:0]gen_done;
  input gen_done0;
  input [11:0]doutb;

  wire [0:0]D;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[10]_i_10_n_0 ;
  wire \FSM_onehot_state[10]_i_1_n_0 ;
  wire \FSM_onehot_state[10]_i_2_n_0 ;
  wire \FSM_onehot_state[10]_i_3_n_0 ;
  wire \FSM_onehot_state[10]_i_5_n_0 ;
  wire \FSM_onehot_state[10]_i_6_n_0 ;
  wire \FSM_onehot_state[1]_i_2_n_0 ;
  wire \FSM_onehot_state[1]_i_3_n_0 ;
  wire \FSM_onehot_state[1]_i_4_n_0 ;
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
  wire \FSM_onehot_state[9]_i_5_n_0 ;
  wire \FSM_onehot_state[9]_i_6_n_0 ;
  wire \FSM_onehot_state[9]_i_8_n_0 ;
  wire \FSM_onehot_state[9]_i_9_n_0 ;
  wire \FSM_onehot_state_reg[10]_0 ;
  wire \FSM_onehot_state_reg[9]_i_3_n_3 ;
  wire \FSM_onehot_state_reg[9]_i_4_n_0 ;
  wire \FSM_onehot_state_reg[9]_i_4_n_1 ;
  wire \FSM_onehot_state_reg[9]_i_4_n_2 ;
  wire \FSM_onehot_state_reg[9]_i_4_n_3 ;
  wire [0:0]\FSM_onehot_state_reg[9]_i_7_0 ;
  wire \FSM_onehot_state_reg[9]_i_7_n_0 ;
  wire \FSM_onehot_state_reg[9]_i_7_n_1 ;
  wire \FSM_onehot_state_reg[9]_i_7_n_2 ;
  wire \FSM_onehot_state_reg[9]_i_7_n_3 ;
  wire [9:0]Q;
  wire [0:0]att_pos;
  wire att_pos3;
  wire att_pos311_in;
  wire [5:0]att_pos_reg;
  wire [11:0]\bbstub_doutb[11] ;
  wire [0:0]clear_pos;
  wire \clear_pos[0]_i_1_n_0 ;
  wire \clear_pos[1]_i_1_n_0 ;
  wire \clear_pos[2]_i_1_n_0 ;
  wire \clear_pos[3]_i_1_n_0 ;
  wire \clear_pos[4]_i_1_n_0 ;
  wire \clear_pos[5]_i_1_n_0 ;
  wire \clear_pos[6]_i_1_n_0 ;
  wire \clear_pos[7]_i_1_n_0 ;
  wire \clear_pos[7]_i_3_n_0 ;
  wire \clear_pos[7]_i_4_n_0 ;
  wire \clear_pos_reg_n_0_[0] ;
  wire \clear_pos_reg_n_0_[1] ;
  wire \clear_pos_reg_n_0_[2] ;
  wire \clear_pos_reg_n_0_[3] ;
  wire \clear_pos_reg_n_0_[4] ;
  wire \clear_pos_reg_n_0_[5] ;
  wire \clear_pos_reg_n_0_[6] ;
  wire \clear_pos_reg_n_0_[7] ;
  wire [0:0]data_pos;
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
  wire \data_pos[7]_i_10_n_0 ;
  wire \data_pos[7]_i_12_n_0 ;
  wire \data_pos[7]_i_13_n_0 ;
  wire \data_pos[7]_i_15_n_0 ;
  wire \data_pos[7]_i_16_n_0 ;
  wire \data_pos[7]_i_17_n_0 ;
  wire \data_pos[7]_i_18_n_0 ;
  wire \data_pos[7]_i_19_n_0 ;
  wire \data_pos[7]_i_20_n_0 ;
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
  wire \data_pos_reg[10]_i_2_n_5 ;
  wire \data_pos_reg[10]_i_2_n_6 ;
  wire \data_pos_reg[10]_i_2_n_7 ;
  wire \data_pos_reg[3]_i_1_n_0 ;
  wire \data_pos_reg[3]_i_1_n_1 ;
  wire \data_pos_reg[3]_i_1_n_2 ;
  wire \data_pos_reg[3]_i_1_n_3 ;
  wire \data_pos_reg[3]_i_1_n_4 ;
  wire \data_pos_reg[3]_i_1_n_5 ;
  wire \data_pos_reg[3]_i_1_n_6 ;
  wire \data_pos_reg[3]_i_1_n_7 ;
  wire \data_pos_reg[7]_i_11_n_3 ;
  wire \data_pos_reg[7]_i_11_n_6 ;
  wire \data_pos_reg[7]_i_11_n_7 ;
  wire \data_pos_reg[7]_i_14_n_0 ;
  wire \data_pos_reg[7]_i_14_n_1 ;
  wire \data_pos_reg[7]_i_14_n_2 ;
  wire \data_pos_reg[7]_i_14_n_3 ;
  wire \data_pos_reg[7]_i_14_n_4 ;
  wire \data_pos_reg[7]_i_14_n_5 ;
  wire \data_pos_reg[7]_i_14_n_6 ;
  wire \data_pos_reg[7]_i_14_n_7 ;
  wire \data_pos_reg[7]_i_1_n_0 ;
  wire \data_pos_reg[7]_i_1_n_1 ;
  wire \data_pos_reg[7]_i_1_n_2 ;
  wire \data_pos_reg[7]_i_1_n_3 ;
  wire \data_pos_reg[7]_i_1_n_4 ;
  wire \data_pos_reg[7]_i_1_n_5 ;
  wire \data_pos_reg[7]_i_1_n_6 ;
  wire \data_pos_reg[7]_i_1_n_7 ;
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
  wire \gen_done_reg[1] ;
  wire [1:0]gen_line;
  wire [0:0]line_data;
  wire line_data0;
  wire \line_data[10]_i_10_n_0 ;
  wire \line_data[10]_i_11_n_0 ;
  wire \line_data[10]_i_12_n_0 ;
  wire \line_data[10]_i_13_n_0 ;
  wire \line_data[10]_i_14_n_0 ;
  wire \line_data[10]_i_2_n_0 ;
  wire \line_data[10]_i_7_n_0 ;
  wire \line_data[10]_i_8_n_0 ;
  wire \line_data[10]_i_9_n_0 ;
  wire \line_data[11]_i_10_n_0 ;
  wire \line_data[11]_i_11_n_0 ;
  wire \line_data[11]_i_12_n_0 ;
  wire \line_data[11]_i_13_n_0 ;
  wire \line_data[11]_i_14_n_0 ;
  wire \line_data[11]_i_2_n_0 ;
  wire \line_data[11]_i_4_n_0 ;
  wire \line_data[11]_i_7_n_0 ;
  wire \line_data[11]_i_8_n_0 ;
  wire \line_data[11]_i_9_n_0 ;
  wire \line_data[14]_i_10_n_0 ;
  wire \line_data[14]_i_11_n_0 ;
  wire \line_data[14]_i_12_n_0 ;
  wire \line_data[14]_i_13_n_0 ;
  wire \line_data[14]_i_14_n_0 ;
  wire \line_data[14]_i_1_n_0 ;
  wire \line_data[14]_i_2_n_0 ;
  wire \line_data[14]_i_7_n_0 ;
  wire \line_data[14]_i_8_n_0 ;
  wire \line_data[14]_i_9_n_0 ;
  wire \line_data[15]_i_10_n_0 ;
  wire \line_data[15]_i_11_n_0 ;
  wire \line_data[15]_i_17_n_0 ;
  wire \line_data[15]_i_18_n_0 ;
  wire \line_data[15]_i_19_n_0 ;
  wire \line_data[15]_i_20_n_0 ;
  wire \line_data[15]_i_22_n_0 ;
  wire \line_data[15]_i_23_n_0 ;
  wire \line_data[15]_i_24_n_0 ;
  wire \line_data[15]_i_25_n_0 ;
  wire \line_data[15]_i_26_n_0 ;
  wire \line_data[15]_i_27_n_0 ;
  wire \line_data[15]_i_28_n_0 ;
  wire \line_data[15]_i_29_n_0 ;
  wire \line_data[15]_i_30_n_0 ;
  wire \line_data[15]_i_31_n_0 ;
  wire \line_data[15]_i_32_n_0 ;
  wire \line_data[15]_i_33_n_0 ;
  wire \line_data[15]_i_35_n_0 ;
  wire \line_data[15]_i_36_n_0 ;
  wire \line_data[15]_i_37_n_0 ;
  wire \line_data[15]_i_38_n_0 ;
  wire \line_data[15]_i_40_n_0 ;
  wire \line_data[15]_i_41_n_0 ;
  wire \line_data[15]_i_42_n_0 ;
  wire \line_data[15]_i_43_n_0 ;
  wire \line_data[15]_i_45_n_0 ;
  wire \line_data[15]_i_46_n_0 ;
  wire \line_data[15]_i_47_n_0 ;
  wire \line_data[15]_i_48_n_0 ;
  wire \line_data[15]_i_49_n_0 ;
  wire \line_data[15]_i_4_n_0 ;
  wire \line_data[15]_i_50_n_0 ;
  wire \line_data[15]_i_51_n_0 ;
  wire \line_data[15]_i_52_n_0 ;
  wire \line_data[15]_i_53_n_0 ;
  wire \line_data[15]_i_55_n_0 ;
  wire \line_data[15]_i_56_n_0 ;
  wire \line_data[15]_i_57_n_0 ;
  wire \line_data[15]_i_58_n_0 ;
  wire \line_data[15]_i_61_n_0 ;
  wire \line_data[15]_i_62_n_0 ;
  wire \line_data[15]_i_63_n_0 ;
  wire \line_data[15]_i_64_n_0 ;
  wire \line_data[15]_i_65_n_0 ;
  wire \line_data[15]_i_66_n_0 ;
  wire \line_data[15]_i_67_n_0 ;
  wire \line_data[15]_i_68_n_0 ;
  wire \line_data[15]_i_69_n_0 ;
  wire \line_data[15]_i_6_n_0 ;
  wire \line_data[15]_i_70_n_0 ;
  wire \line_data[15]_i_71_n_0 ;
  wire \line_data[15]_i_72_n_0 ;
  wire \line_data[15]_i_7_n_0 ;
  wire \line_data[15]_i_8_n_0 ;
  wire \line_data[18]_i_10_n_0 ;
  wire \line_data[18]_i_11_n_0 ;
  wire \line_data[18]_i_12_n_0 ;
  wire \line_data[18]_i_13_n_0 ;
  wire \line_data[18]_i_14_n_0 ;
  wire \line_data[18]_i_15_n_0 ;
  wire \line_data[18]_i_16_n_0 ;
  wire \line_data[18]_i_17_n_0 ;
  wire \line_data[18]_i_2_n_0 ;
  wire \line_data[18]_i_4_n_0 ;
  wire \line_data[18]_i_5_n_0 ;
  wire \line_data[18]_i_6_n_0 ;
  wire \line_data[18]_i_7_n_0 ;
  wire \line_data[18]_i_8_n_0 ;
  wire \line_data[18]_i_9_n_0 ;
  wire \line_data[19]_i_10_n_0 ;
  wire \line_data[19]_i_11_n_0 ;
  wire \line_data[19]_i_12_n_0 ;
  wire \line_data[19]_i_13_n_0 ;
  wire \line_data[19]_i_14_n_0 ;
  wire \line_data[19]_i_15_n_0 ;
  wire \line_data[19]_i_16_n_0 ;
  wire \line_data[19]_i_17_n_0 ;
  wire \line_data[19]_i_18_n_0 ;
  wire \line_data[19]_i_19_n_0 ;
  wire \line_data[19]_i_20_n_0 ;
  wire \line_data[19]_i_5_n_0 ;
  wire \line_data[19]_i_6_n_0 ;
  wire \line_data[19]_i_7_n_0 ;
  wire \line_data[19]_i_8_n_0 ;
  wire \line_data[19]_i_9_n_0 ;
  wire \line_data[22]_i_10_n_0 ;
  wire \line_data[22]_i_11_n_0 ;
  wire \line_data[22]_i_12_n_0 ;
  wire \line_data[22]_i_13_n_0 ;
  wire \line_data[22]_i_14_n_0 ;
  wire \line_data[22]_i_2_n_0 ;
  wire \line_data[22]_i_3_n_0 ;
  wire \line_data[22]_i_4_n_0 ;
  wire \line_data[22]_i_5_n_0 ;
  wire \line_data[22]_i_6_n_0 ;
  wire \line_data[22]_i_7_n_0 ;
  wire \line_data[22]_i_8_n_0 ;
  wire \line_data[22]_i_9_n_0 ;
  wire \line_data[23]_i_10_n_0 ;
  wire \line_data[23]_i_11_n_0 ;
  wire \line_data[23]_i_12_n_0 ;
  wire \line_data[23]_i_13_n_0 ;
  wire \line_data[23]_i_14_n_0 ;
  wire \line_data[23]_i_2_n_0 ;
  wire \line_data[23]_i_3_n_0 ;
  wire \line_data[23]_i_4_n_0 ;
  wire \line_data[23]_i_5_n_0 ;
  wire \line_data[23]_i_6_n_0 ;
  wire \line_data[23]_i_7_n_0 ;
  wire \line_data[23]_i_8_n_0 ;
  wire \line_data[23]_i_9_n_0 ;
  wire \line_data[26]_i_10_n_0 ;
  wire \line_data[26]_i_11_n_0 ;
  wire \line_data[26]_i_12_n_0 ;
  wire \line_data[26]_i_13_n_0 ;
  wire \line_data[26]_i_14_n_0 ;
  wire \line_data[26]_i_15_n_0 ;
  wire \line_data[26]_i_16_n_0 ;
  wire \line_data[26]_i_17_n_0 ;
  wire \line_data[26]_i_2_n_0 ;
  wire \line_data[26]_i_3_n_0 ;
  wire \line_data[26]_i_4_n_0 ;
  wire \line_data[26]_i_5_n_0 ;
  wire \line_data[26]_i_6_n_0 ;
  wire \line_data[26]_i_7_n_0 ;
  wire \line_data[26]_i_8_n_0 ;
  wire \line_data[26]_i_9_n_0 ;
  wire \line_data[27]_i_10_n_0 ;
  wire \line_data[27]_i_11_n_0 ;
  wire \line_data[27]_i_12_n_0 ;
  wire \line_data[27]_i_3_n_0 ;
  wire \line_data[27]_i_4_n_0 ;
  wire \line_data[27]_i_5_n_0 ;
  wire \line_data[27]_i_6_n_0 ;
  wire \line_data[27]_i_7_n_0 ;
  wire \line_data[27]_i_8_n_0 ;
  wire \line_data[27]_i_9_n_0 ;
  wire \line_data[2]_i_10_n_0 ;
  wire \line_data[2]_i_11_n_0 ;
  wire \line_data[2]_i_12_n_0 ;
  wire \line_data[2]_i_13_n_0 ;
  wire \line_data[2]_i_14_n_0 ;
  wire \line_data[2]_i_2_n_0 ;
  wire \line_data[2]_i_7_n_0 ;
  wire \line_data[2]_i_8_n_0 ;
  wire \line_data[2]_i_9_n_0 ;
  wire \line_data[30]_i_10_n_0 ;
  wire \line_data[30]_i_11_n_0 ;
  wire \line_data[30]_i_12_n_0 ;
  wire \line_data[30]_i_1_n_0 ;
  wire \line_data[30]_i_3_n_0 ;
  wire \line_data[30]_i_4_n_0 ;
  wire \line_data[30]_i_5_n_0 ;
  wire \line_data[30]_i_6_n_0 ;
  wire \line_data[30]_i_7_n_0 ;
  wire \line_data[30]_i_8_n_0 ;
  wire \line_data[30]_i_9_n_0 ;
  wire \line_data[31]_i_10_n_0 ;
  wire \line_data[31]_i_11_n_0 ;
  wire \line_data[31]_i_12_n_0 ;
  wire \line_data[31]_i_13_n_0 ;
  wire \line_data[31]_i_14_n_0 ;
  wire \line_data[31]_i_15_n_0 ;
  wire \line_data[31]_i_16_n_0 ;
  wire \line_data[31]_i_17_n_0 ;
  wire \line_data[31]_i_19_n_0 ;
  wire \line_data[31]_i_20_n_0 ;
  wire \line_data[31]_i_21_n_0 ;
  wire \line_data[31]_i_22_n_0 ;
  wire \line_data[31]_i_24_n_0 ;
  wire \line_data[31]_i_25_n_0 ;
  wire \line_data[31]_i_26_n_0 ;
  wire \line_data[31]_i_27_n_0 ;
  wire \line_data[31]_i_28_n_0 ;
  wire \line_data[31]_i_29_n_0 ;
  wire \line_data[31]_i_30_n_0 ;
  wire \line_data[31]_i_31_n_0 ;
  wire \line_data[31]_i_32_n_0 ;
  wire \line_data[31]_i_4_n_0 ;
  wire \line_data[31]_i_5_n_0 ;
  wire \line_data[31]_i_6_n_0 ;
  wire \line_data[31]_i_8_n_0 ;
  wire \line_data[31]_i_9_n_0 ;
  wire \line_data[34]_i_10_n_0 ;
  wire \line_data[34]_i_11_n_0 ;
  wire \line_data[34]_i_12_n_0 ;
  wire \line_data[34]_i_3_n_0 ;
  wire \line_data[34]_i_4_n_0 ;
  wire \line_data[34]_i_5_n_0 ;
  wire \line_data[34]_i_6_n_0 ;
  wire \line_data[34]_i_7_n_0 ;
  wire \line_data[34]_i_8_n_0 ;
  wire \line_data[34]_i_9_n_0 ;
  wire \line_data[35]_i_10_n_0 ;
  wire \line_data[35]_i_11_n_0 ;
  wire \line_data[35]_i_12_n_0 ;
  wire \line_data[35]_i_3_n_0 ;
  wire \line_data[35]_i_4_n_0 ;
  wire \line_data[35]_i_5_n_0 ;
  wire \line_data[35]_i_6_n_0 ;
  wire \line_data[35]_i_7_n_0 ;
  wire \line_data[35]_i_8_n_0 ;
  wire \line_data[35]_i_9_n_0 ;
  wire \line_data[38]_i_10_n_0 ;
  wire \line_data[38]_i_11_n_0 ;
  wire \line_data[38]_i_12_n_0 ;
  wire \line_data[38]_i_3_n_0 ;
  wire \line_data[38]_i_4_n_0 ;
  wire \line_data[38]_i_5_n_0 ;
  wire \line_data[38]_i_6_n_0 ;
  wire \line_data[38]_i_7_n_0 ;
  wire \line_data[38]_i_8_n_0 ;
  wire \line_data[38]_i_9_n_0 ;
  wire \line_data[39]_i_10_n_0 ;
  wire \line_data[39]_i_11_n_0 ;
  wire \line_data[39]_i_12_n_0 ;
  wire \line_data[39]_i_3_n_0 ;
  wire \line_data[39]_i_4_n_0 ;
  wire \line_data[39]_i_5_n_0 ;
  wire \line_data[39]_i_6_n_0 ;
  wire \line_data[39]_i_7_n_0 ;
  wire \line_data[39]_i_8_n_0 ;
  wire \line_data[39]_i_9_n_0 ;
  wire \line_data[3]_i_10_n_0 ;
  wire \line_data[3]_i_11_n_0 ;
  wire \line_data[3]_i_12_n_0 ;
  wire \line_data[3]_i_13_n_0 ;
  wire \line_data[3]_i_14_n_0 ;
  wire \line_data[3]_i_2_n_0 ;
  wire \line_data[3]_i_7_n_0 ;
  wire \line_data[3]_i_8_n_0 ;
  wire \line_data[3]_i_9_n_0 ;
  wire \line_data[42]_i_10_n_0 ;
  wire \line_data[42]_i_11_n_0 ;
  wire \line_data[42]_i_12_n_0 ;
  wire \line_data[42]_i_3_n_0 ;
  wire \line_data[42]_i_4_n_0 ;
  wire \line_data[42]_i_5_n_0 ;
  wire \line_data[42]_i_6_n_0 ;
  wire \line_data[42]_i_7_n_0 ;
  wire \line_data[42]_i_8_n_0 ;
  wire \line_data[42]_i_9_n_0 ;
  wire \line_data[43]_i_10_n_0 ;
  wire \line_data[43]_i_11_n_0 ;
  wire \line_data[43]_i_12_n_0 ;
  wire \line_data[43]_i_3_n_0 ;
  wire \line_data[43]_i_4_n_0 ;
  wire \line_data[43]_i_5_n_0 ;
  wire \line_data[43]_i_6_n_0 ;
  wire \line_data[43]_i_7_n_0 ;
  wire \line_data[43]_i_8_n_0 ;
  wire \line_data[43]_i_9_n_0 ;
  wire \line_data[46]_i_10_n_0 ;
  wire \line_data[46]_i_11_n_0 ;
  wire \line_data[46]_i_12_n_0 ;
  wire \line_data[46]_i_1_n_0 ;
  wire \line_data[46]_i_3_n_0 ;
  wire \line_data[46]_i_4_n_0 ;
  wire \line_data[46]_i_5_n_0 ;
  wire \line_data[46]_i_6_n_0 ;
  wire \line_data[46]_i_7_n_0 ;
  wire \line_data[46]_i_8_n_0 ;
  wire \line_data[46]_i_9_n_0 ;
  wire \line_data[47]_i_10_n_0 ;
  wire \line_data[47]_i_11_n_0 ;
  wire \line_data[47]_i_12_n_0 ;
  wire \line_data[47]_i_13_n_0 ;
  wire \line_data[47]_i_14_n_0 ;
  wire \line_data[47]_i_15_n_0 ;
  wire \line_data[47]_i_16_n_0 ;
  wire \line_data[47]_i_17_n_0 ;
  wire \line_data[47]_i_18_n_0 ;
  wire \line_data[47]_i_19_n_0 ;
  wire \line_data[47]_i_20_n_0 ;
  wire \line_data[47]_i_22_n_0 ;
  wire \line_data[47]_i_23_n_0 ;
  wire \line_data[47]_i_24_n_0 ;
  wire \line_data[47]_i_25_n_0 ;
  wire \line_data[47]_i_27_n_0 ;
  wire \line_data[47]_i_28_n_0 ;
  wire \line_data[47]_i_29_n_0 ;
  wire \line_data[47]_i_30_n_0 ;
  wire \line_data[47]_i_31_n_0 ;
  wire \line_data[47]_i_32_n_0 ;
  wire \line_data[47]_i_33_n_0 ;
  wire \line_data[47]_i_34_n_0 ;
  wire \line_data[47]_i_35_n_0 ;
  wire \line_data[47]_i_4_n_0 ;
  wire \line_data[47]_i_5_n_0 ;
  wire \line_data[47]_i_6_n_0 ;
  wire \line_data[47]_i_7_n_0 ;
  wire \line_data[47]_i_9_n_0 ;
  wire \line_data[50]_i_10_n_0 ;
  wire \line_data[50]_i_11_n_0 ;
  wire \line_data[50]_i_12_n_0 ;
  wire \line_data[50]_i_13_n_0 ;
  wire \line_data[50]_i_14_n_0 ;
  wire \line_data[50]_i_2_n_0 ;
  wire \line_data[50]_i_7_n_0 ;
  wire \line_data[50]_i_8_n_0 ;
  wire \line_data[50]_i_9_n_0 ;
  wire \line_data[51]_i_10_n_0 ;
  wire \line_data[51]_i_11_n_0 ;
  wire \line_data[51]_i_12_n_0 ;
  wire \line_data[51]_i_13_n_0 ;
  wire \line_data[51]_i_14_n_0 ;
  wire \line_data[51]_i_2_n_0 ;
  wire \line_data[51]_i_7_n_0 ;
  wire \line_data[51]_i_8_n_0 ;
  wire \line_data[51]_i_9_n_0 ;
  wire \line_data[54]_i_10_n_0 ;
  wire \line_data[54]_i_11_n_0 ;
  wire \line_data[54]_i_12_n_0 ;
  wire \line_data[54]_i_13_n_0 ;
  wire \line_data[54]_i_14_n_0 ;
  wire \line_data[54]_i_2_n_0 ;
  wire \line_data[54]_i_7_n_0 ;
  wire \line_data[54]_i_8_n_0 ;
  wire \line_data[54]_i_9_n_0 ;
  wire \line_data[55]_i_10_n_0 ;
  wire \line_data[55]_i_11_n_0 ;
  wire \line_data[55]_i_12_n_0 ;
  wire \line_data[55]_i_13_n_0 ;
  wire \line_data[55]_i_14_n_0 ;
  wire \line_data[55]_i_2_n_0 ;
  wire \line_data[55]_i_7_n_0 ;
  wire \line_data[55]_i_8_n_0 ;
  wire \line_data[55]_i_9_n_0 ;
  wire \line_data[58]_i_10_n_0 ;
  wire \line_data[58]_i_11_n_0 ;
  wire \line_data[58]_i_12_n_0 ;
  wire \line_data[58]_i_13_n_0 ;
  wire \line_data[58]_i_14_n_0 ;
  wire \line_data[58]_i_2_n_0 ;
  wire \line_data[58]_i_7_n_0 ;
  wire \line_data[58]_i_8_n_0 ;
  wire \line_data[58]_i_9_n_0 ;
  wire \line_data[59]_i_10_n_0 ;
  wire \line_data[59]_i_11_n_0 ;
  wire \line_data[59]_i_12_n_0 ;
  wire \line_data[59]_i_13_n_0 ;
  wire \line_data[59]_i_14_n_0 ;
  wire \line_data[59]_i_2_n_0 ;
  wire \line_data[59]_i_7_n_0 ;
  wire \line_data[59]_i_8_n_0 ;
  wire \line_data[59]_i_9_n_0 ;
  wire \line_data[62]_i_10_n_0 ;
  wire \line_data[62]_i_11_n_0 ;
  wire \line_data[62]_i_12_n_0 ;
  wire \line_data[62]_i_13_n_0 ;
  wire \line_data[62]_i_14_n_0 ;
  wire \line_data[62]_i_2_n_0 ;
  wire \line_data[62]_i_7_n_0 ;
  wire \line_data[62]_i_8_n_0 ;
  wire \line_data[62]_i_9_n_0 ;
  wire \line_data[63]_i_10_n_0 ;
  wire \line_data[63]_i_11_n_0 ;
  wire \line_data[63]_i_12_n_0 ;
  wire \line_data[63]_i_13_n_0 ;
  wire \line_data[63]_i_14_n_0 ;
  wire \line_data[63]_i_2_n_0 ;
  wire \line_data[63]_i_7_n_0 ;
  wire \line_data[63]_i_8_n_0 ;
  wire \line_data[63]_i_9_n_0 ;
  wire \line_data[6]_i_10_n_0 ;
  wire \line_data[6]_i_11_n_0 ;
  wire \line_data[6]_i_12_n_0 ;
  wire \line_data[6]_i_13_n_0 ;
  wire \line_data[6]_i_14_n_0 ;
  wire \line_data[6]_i_2_n_0 ;
  wire \line_data[6]_i_7_n_0 ;
  wire \line_data[6]_i_8_n_0 ;
  wire \line_data[6]_i_9_n_0 ;
  wire \line_data[7]_i_10_n_0 ;
  wire \line_data[7]_i_11_n_0 ;
  wire \line_data[7]_i_12_n_0 ;
  wire \line_data[7]_i_13_n_0 ;
  wire \line_data[7]_i_14_n_0 ;
  wire \line_data[7]_i_2_n_0 ;
  wire \line_data[7]_i_7_n_0 ;
  wire \line_data[7]_i_8_n_0 ;
  wire \line_data[7]_i_9_n_0 ;
  wire \line_data_reg[10]_i_3_n_0 ;
  wire \line_data_reg[10]_i_4_n_0 ;
  wire \line_data_reg[10]_i_5_n_0 ;
  wire \line_data_reg[10]_i_6_n_0 ;
  wire \line_data_reg[11]_i_3_n_0 ;
  wire \line_data_reg[11]_i_5_n_0 ;
  wire \line_data_reg[11]_i_6_n_0 ;
  wire \line_data_reg[14]_i_3_n_0 ;
  wire \line_data_reg[14]_i_4_n_0 ;
  wire \line_data_reg[14]_i_5_n_0 ;
  wire \line_data_reg[14]_i_6_n_0 ;
  wire \line_data_reg[15]_i_12_n_0 ;
  wire \line_data_reg[15]_i_13_n_0 ;
  wire \line_data_reg[15]_i_14_n_0 ;
  wire \line_data_reg[15]_i_15_n_0 ;
  wire \line_data_reg[15]_i_16_n_0 ;
  wire \line_data_reg[15]_i_16_n_1 ;
  wire \line_data_reg[15]_i_16_n_2 ;
  wire \line_data_reg[15]_i_16_n_3 ;
  wire \line_data_reg[15]_i_21_n_0 ;
  wire \line_data_reg[15]_i_21_n_1 ;
  wire \line_data_reg[15]_i_21_n_2 ;
  wire \line_data_reg[15]_i_21_n_3 ;
  wire \line_data_reg[15]_i_2_n_2 ;
  wire \line_data_reg[15]_i_2_n_3 ;
  wire \line_data_reg[15]_i_2_n_5 ;
  wire \line_data_reg[15]_i_34_n_0 ;
  wire \line_data_reg[15]_i_34_n_1 ;
  wire \line_data_reg[15]_i_34_n_2 ;
  wire \line_data_reg[15]_i_34_n_3 ;
  wire \line_data_reg[15]_i_39_n_0 ;
  wire \line_data_reg[15]_i_39_n_1 ;
  wire \line_data_reg[15]_i_39_n_2 ;
  wire \line_data_reg[15]_i_39_n_3 ;
  wire \line_data_reg[15]_i_3_n_3 ;
  wire \line_data_reg[15]_i_44_n_0 ;
  wire \line_data_reg[15]_i_44_n_1 ;
  wire \line_data_reg[15]_i_44_n_2 ;
  wire \line_data_reg[15]_i_44_n_3 ;
  wire \line_data_reg[15]_i_54_n_0 ;
  wire \line_data_reg[15]_i_54_n_1 ;
  wire \line_data_reg[15]_i_54_n_2 ;
  wire \line_data_reg[15]_i_54_n_3 ;
  wire \line_data_reg[15]_i_59_n_0 ;
  wire \line_data_reg[15]_i_59_n_1 ;
  wire \line_data_reg[15]_i_59_n_2 ;
  wire \line_data_reg[15]_i_59_n_3 ;
  wire \line_data_reg[15]_i_5_n_0 ;
  wire \line_data_reg[15]_i_5_n_1 ;
  wire \line_data_reg[15]_i_5_n_2 ;
  wire \line_data_reg[15]_i_5_n_3 ;
  wire \line_data_reg[15]_i_60_n_0 ;
  wire \line_data_reg[15]_i_60_n_1 ;
  wire \line_data_reg[15]_i_60_n_2 ;
  wire \line_data_reg[15]_i_60_n_3 ;
  wire \line_data_reg[15]_i_9_n_0 ;
  wire \line_data_reg[15]_i_9_n_1 ;
  wire \line_data_reg[15]_i_9_n_2 ;
  wire \line_data_reg[15]_i_9_n_3 ;
  wire \line_data_reg[18]_i_3_n_0 ;
  wire \line_data_reg[19]_i_2_n_0 ;
  wire \line_data_reg[19]_i_3_n_0 ;
  wire \line_data_reg[19]_i_4_n_0 ;
  wire \line_data_reg[27]_i_2_n_0 ;
  wire \line_data_reg[2]_i_3_n_0 ;
  wire \line_data_reg[2]_i_4_n_0 ;
  wire \line_data_reg[2]_i_5_n_0 ;
  wire \line_data_reg[2]_i_6_n_0 ;
  wire \line_data_reg[30]_i_2_n_0 ;
  wire \line_data_reg[31]_i_18_n_0 ;
  wire \line_data_reg[31]_i_18_n_1 ;
  wire \line_data_reg[31]_i_18_n_2 ;
  wire \line_data_reg[31]_i_18_n_3 ;
  wire \line_data_reg[31]_i_23_n_0 ;
  wire \line_data_reg[31]_i_23_n_1 ;
  wire \line_data_reg[31]_i_23_n_2 ;
  wire \line_data_reg[31]_i_23_n_3 ;
  wire \line_data_reg[31]_i_2_n_0 ;
  wire \line_data_reg[31]_i_3_n_3 ;
  wire \line_data_reg[31]_i_7_n_0 ;
  wire \line_data_reg[31]_i_7_n_1 ;
  wire \line_data_reg[31]_i_7_n_2 ;
  wire \line_data_reg[31]_i_7_n_3 ;
  wire \line_data_reg[34]_i_2_n_0 ;
  wire \line_data_reg[35]_i_2_n_0 ;
  wire \line_data_reg[38]_i_2_n_0 ;
  wire \line_data_reg[39]_i_2_n_0 ;
  wire \line_data_reg[3]_i_3_n_0 ;
  wire \line_data_reg[3]_i_4_n_0 ;
  wire \line_data_reg[3]_i_5_n_0 ;
  wire \line_data_reg[3]_i_6_n_0 ;
  wire \line_data_reg[42]_i_2_n_0 ;
  wire \line_data_reg[43]_i_2_n_0 ;
  wire \line_data_reg[46]_i_2_n_0 ;
  wire \line_data_reg[47]_i_21_n_0 ;
  wire \line_data_reg[47]_i_21_n_1 ;
  wire \line_data_reg[47]_i_21_n_2 ;
  wire \line_data_reg[47]_i_21_n_3 ;
  wire \line_data_reg[47]_i_26_n_0 ;
  wire \line_data_reg[47]_i_26_n_1 ;
  wire \line_data_reg[47]_i_26_n_2 ;
  wire \line_data_reg[47]_i_26_n_3 ;
  wire \line_data_reg[47]_i_2_n_0 ;
  wire \line_data_reg[47]_i_3_n_3 ;
  wire \line_data_reg[47]_i_8_n_0 ;
  wire \line_data_reg[47]_i_8_n_1 ;
  wire \line_data_reg[47]_i_8_n_2 ;
  wire \line_data_reg[47]_i_8_n_3 ;
  wire \line_data_reg[50]_i_3_n_0 ;
  wire \line_data_reg[50]_i_4_n_0 ;
  wire \line_data_reg[50]_i_5_n_0 ;
  wire \line_data_reg[50]_i_6_n_0 ;
  wire \line_data_reg[51]_i_3_n_0 ;
  wire \line_data_reg[51]_i_4_n_0 ;
  wire \line_data_reg[51]_i_5_n_0 ;
  wire \line_data_reg[51]_i_6_n_0 ;
  wire \line_data_reg[54]_i_3_n_0 ;
  wire \line_data_reg[54]_i_4_n_0 ;
  wire \line_data_reg[54]_i_5_n_0 ;
  wire \line_data_reg[54]_i_6_n_0 ;
  wire \line_data_reg[55]_i_3_n_0 ;
  wire \line_data_reg[55]_i_4_n_0 ;
  wire \line_data_reg[55]_i_5_n_0 ;
  wire \line_data_reg[55]_i_6_n_0 ;
  wire \line_data_reg[58]_i_3_n_0 ;
  wire \line_data_reg[58]_i_4_n_0 ;
  wire \line_data_reg[58]_i_5_n_0 ;
  wire \line_data_reg[58]_i_6_n_0 ;
  wire \line_data_reg[59]_i_3_n_0 ;
  wire \line_data_reg[59]_i_4_n_0 ;
  wire \line_data_reg[59]_i_5_n_0 ;
  wire \line_data_reg[59]_i_6_n_0 ;
  wire \line_data_reg[62]_i_3_n_0 ;
  wire \line_data_reg[62]_i_4_n_0 ;
  wire \line_data_reg[62]_i_5_n_0 ;
  wire \line_data_reg[62]_i_6_n_0 ;
  wire \line_data_reg[63]_i_3_n_0 ;
  wire \line_data_reg[63]_i_4_n_0 ;
  wire \line_data_reg[63]_i_5_n_0 ;
  wire \line_data_reg[63]_i_6_n_0 ;
  wire \line_data_reg[6]_i_3_n_0 ;
  wire \line_data_reg[6]_i_4_n_0 ;
  wire \line_data_reg[6]_i_5_n_0 ;
  wire \line_data_reg[6]_i_6_n_0 ;
  wire \line_data_reg[7]_i_3_n_0 ;
  wire \line_data_reg[7]_i_4_n_0 ;
  wire \line_data_reg[7]_i_5_n_0 ;
  wire \line_data_reg[7]_i_6_n_0 ;
  wire \line_data_reg_n_0_[10] ;
  wire \line_data_reg_n_0_[11] ;
  wire \line_data_reg_n_0_[14] ;
  wire \line_data_reg_n_0_[15] ;
  wire \line_data_reg_n_0_[18] ;
  wire \line_data_reg_n_0_[19] ;
  wire \line_data_reg_n_0_[22] ;
  wire \line_data_reg_n_0_[23] ;
  wire \line_data_reg_n_0_[26] ;
  wire \line_data_reg_n_0_[27] ;
  wire \line_data_reg_n_0_[2] ;
  wire \line_data_reg_n_0_[30] ;
  wire \line_data_reg_n_0_[31] ;
  wire \line_data_reg_n_0_[34] ;
  wire \line_data_reg_n_0_[35] ;
  wire \line_data_reg_n_0_[38] ;
  wire \line_data_reg_n_0_[39] ;
  wire \line_data_reg_n_0_[3] ;
  wire \line_data_reg_n_0_[42] ;
  wire \line_data_reg_n_0_[43] ;
  wire \line_data_reg_n_0_[46] ;
  wire \line_data_reg_n_0_[47] ;
  wire \line_data_reg_n_0_[50] ;
  wire \line_data_reg_n_0_[51] ;
  wire \line_data_reg_n_0_[54] ;
  wire \line_data_reg_n_0_[55] ;
  wire \line_data_reg_n_0_[58] ;
  wire \line_data_reg_n_0_[59] ;
  wire \line_data_reg_n_0_[62] ;
  wire \line_data_reg_n_0_[63] ;
  wire \line_data_reg_n_0_[6] ;
  wire \line_data_reg_n_0_[7] ;
  wire line_done0;
  wire line_done_i_1_n_0;
  wire [1:0]line_off;
  wire \line_off_reg[0]__0_rep__0_n_0 ;
  wire \line_off_reg[0]__0_rep__1_n_0 ;
  wire \line_off_reg[0]__0_rep_n_0 ;
  wire \line_off_reg[1]__0_rep__0_n_0 ;
  wire \line_off_reg[1]__0_rep__1_n_0 ;
  wire \line_off_reg[1]__0_rep_n_0 ;
  wire [0:0]line_pos;
  wire \line_pos[0]_i_1_n_0 ;
  wire \line_pos[0]_i_2_n_0 ;
  wire \line_pos[1]_i_1_n_0 ;
  wire \line_pos[1]_i_2_n_0 ;
  wire \line_pos[2]_i_1_n_0 ;
  wire \line_pos[2]_i_2_n_0 ;
  wire \line_pos[3]_i_1_n_0 ;
  wire \line_pos[3]_i_2_n_0 ;
  wire \line_pos[4]_i_1_n_0 ;
  wire \line_pos[4]_i_2_n_0 ;
  wire \line_pos[5]_i_1_n_0 ;
  wire \line_pos[5]_i_2_n_0 ;
  wire \line_pos[5]_i_3_n_0 ;
  wire \line_pos[6]_i_1_n_0 ;
  wire \line_pos[6]_i_2_n_0 ;
  wire \line_pos[6]_i_3_n_0 ;
  wire \line_pos[7]_i_2_n_0 ;
  wire \line_pos[7]_i_3_n_0 ;
  wire \line_pos[7]_i_4_n_0 ;
  wire \line_pos[7]_i_5_n_0 ;
  wire [0:0]line_pos__0;
  wire [0:0]line_pos_reg;
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
  wire line_we21_in;
  wire [30:4]line_we3;
  wire line_we34_in;
  wire line_we3__0;
  wire \line_we[1]_i_1_n_0 ;
  wire \line_we[3]_i_1_n_0 ;
  wire \line_we[5]_i_1_n_0 ;
  wire \line_we[7]_i_1_n_0 ;
  wire \line_we[7]_i_2_n_0 ;
  wire \line_we_reg_n_0_[1] ;
  wire \line_we_reg_n_0_[3] ;
  wire \line_we_reg_n_0_[5] ;
  wire \line_we_reg_n_0_[7] ;
  wire \line_word[0]_i_1_n_0 ;
  wire \line_word[2]_i_1_n_0 ;
  wire \line_word[3]_i_1_n_0 ;
  wire \line_word[3]_i_2_n_0 ;
  wire \line_word[3]_i_3_n_0 ;
  wire \line_word[3]_i_4_n_0 ;
  wire \line_word_reg_n_0_[0] ;
  wire \line_word_reg_n_0_[1] ;
  wire \line_word_reg_n_0_[2] ;
  wire \line_word_reg_n_0_[3] ;
  wire [9:0]\map_r_addr_reg[13] ;
  wire [7:0]p_0_in;
  wire [5:0]p_0_in__0;
  wire [9:0]p_0_out;
  wire [15:2]p_33_out;
  wire [63:18]p_33_out__0;
  wire \row_buf[0][10]_i_1_n_0 ;
  wire \row_buf[0][10]_i_2_n_0 ;
  wire \row_buf[0][10]_i_3_n_0 ;
  wire \row_buf[0][11]_i_1_n_0 ;
  wire \row_buf[0][11]_i_2_n_0 ;
  wire \row_buf[0][11]_i_3_n_0 ;
  wire \row_buf[0][11]_i_4_n_0 ;
  wire \row_buf[0][11]_i_5_n_0 ;
  wire \row_buf[0][11]_i_6_n_0 ;
  wire \row_buf[0][11]_i_7_n_0 ;
  wire \row_buf[0][11]_i_8_n_0 ;
  wire \row_buf[0][12]_i_1_n_0 ;
  wire \row_buf[0][12]_i_2_n_0 ;
  wire \row_buf[0][12]_i_3_n_0 ;
  wire \row_buf[0][12]_i_4_n_0 ;
  wire \row_buf[0][12]_i_5_n_0 ;
  wire \row_buf[0][12]_i_6_n_0 ;
  wire \row_buf[0][2]_i_1_n_0 ;
  wire \row_buf[0][2]_i_2_n_0 ;
  wire \row_buf[0][2]_i_3_n_0 ;
  wire \row_buf[0][3]_i_1_n_0 ;
  wire \row_buf[0][3]_i_2_n_0 ;
  wire \row_buf[0][3]_i_3_n_0 ;
  wire \row_buf[0][6]_i_1_n_0 ;
  wire \row_buf[0][6]_i_2_n_0 ;
  wire \row_buf[0][6]_i_3_n_0 ;
  wire \row_buf[0][7]_i_1_n_0 ;
  wire \row_buf[0][7]_i_2_n_0 ;
  wire \row_buf[0][7]_i_3_n_0 ;
  wire \row_buf[10][10]_i_1_n_0 ;
  wire \row_buf[10][11]_i_1_n_0 ;
  wire \row_buf[10][12]_i_1_n_0 ;
  wire \row_buf[10][2]_i_1_n_0 ;
  wire \row_buf[10][3]_i_1_n_0 ;
  wire \row_buf[10][6]_i_1_n_0 ;
  wire \row_buf[10][7]_i_1_n_0 ;
  wire \row_buf[11][10]_i_1_n_0 ;
  wire \row_buf[11][11]_i_1_n_0 ;
  wire \row_buf[11][11]_i_2_n_0 ;
  wire \row_buf[11][12]_i_1_n_0 ;
  wire \row_buf[11][15]_i_1_n_0 ;
  wire \row_buf[11][15]_i_2_n_0 ;
  wire \row_buf[11][2]_i_1_n_0 ;
  wire \row_buf[11][3]_i_1_n_0 ;
  wire \row_buf[11][3]_i_2_n_0 ;
  wire \row_buf[11][6]_i_1_n_0 ;
  wire \row_buf[11][7]_i_1_n_0 ;
  wire \row_buf[12][10]_i_1_n_0 ;
  wire \row_buf[12][10]_i_2_n_0 ;
  wire \row_buf[12][10]_i_3_n_0 ;
  wire \row_buf[12][10]_i_4_n_0 ;
  wire \row_buf[12][11]_i_1_n_0 ;
  wire \row_buf[12][12]_i_1_n_0 ;
  wire \row_buf[12][15]_i_1_n_0 ;
  wire \row_buf[12][2]_i_1_n_0 ;
  wire \row_buf[12][3]_i_1_n_0 ;
  wire \row_buf[12][6]_i_1_n_0 ;
  wire \row_buf[12][7]_i_1_n_0 ;
  wire \row_buf[13][10]_i_1_n_0 ;
  wire \row_buf[13][11]_i_1_n_0 ;
  wire \row_buf[13][12]_i_1_n_0 ;
  wire \row_buf[13][2]_i_1_n_0 ;
  wire \row_buf[13][3]_i_1_n_0 ;
  wire \row_buf[13][6]_i_1_n_0 ;
  wire \row_buf[13][7]_i_1_n_0 ;
  wire \row_buf[14][10]_i_1_n_0 ;
  wire \row_buf[14][11]_i_1_n_0 ;
  wire \row_buf[14][12]_i_1_n_0 ;
  wire \row_buf[14][15]_i_1_n_0 ;
  wire \row_buf[14][2]_i_1_n_0 ;
  wire \row_buf[14][3]_i_1_n_0 ;
  wire \row_buf[14][6]_i_1_n_0 ;
  wire \row_buf[14][7]_i_1_n_0 ;
  wire \row_buf[15][10]_i_1_n_0 ;
  wire \row_buf[15][11]_i_1_n_0 ;
  wire \row_buf[15][11]_i_2_n_0 ;
  wire \row_buf[15][12]_i_1_n_0 ;
  wire \row_buf[15][15]_i_1_n_0 ;
  wire \row_buf[15][2]_i_1_n_0 ;
  wire \row_buf[15][3]_i_1_n_0 ;
  wire \row_buf[15][6]_i_1_n_0 ;
  wire \row_buf[15][7]_i_1_n_0 ;
  wire \row_buf[16][10]_i_1_n_0 ;
  wire \row_buf[16][10]_i_2_n_0 ;
  wire \row_buf[16][11]_i_1_n_0 ;
  wire \row_buf[16][11]_i_2_n_0 ;
  wire \row_buf[16][11]_i_3_n_0 ;
  wire \row_buf[16][12]_i_1_n_0 ;
  wire \row_buf[16][12]_i_2_n_0 ;
  wire \row_buf[16][2]_i_1_n_0 ;
  wire \row_buf[16][3]_i_1_n_0 ;
  wire \row_buf[16][6]_i_1_n_0 ;
  wire \row_buf[16][7]_i_1_n_0 ;
  wire \row_buf[17][10]_i_1_n_0 ;
  wire \row_buf[17][11]_i_1_n_0 ;
  wire \row_buf[17][12]_i_1_n_0 ;
  wire \row_buf[17][15]_i_1_n_0 ;
  wire \row_buf[17][15]_i_2_n_0 ;
  wire \row_buf[17][2]_i_1_n_0 ;
  wire \row_buf[17][3]_i_1_n_0 ;
  wire \row_buf[17][6]_i_1_n_0 ;
  wire \row_buf[17][7]_i_1_n_0 ;
  wire \row_buf[18][10]_i_1_n_0 ;
  wire \row_buf[18][11]_i_1_n_0 ;
  wire \row_buf[18][12]_i_1_n_0 ;
  wire \row_buf[18][2]_i_1_n_0 ;
  wire \row_buf[18][3]_i_1_n_0 ;
  wire \row_buf[18][6]_i_1_n_0 ;
  wire \row_buf[18][7]_i_1_n_0 ;
  wire \row_buf[19][10]_i_1_n_0 ;
  wire \row_buf[19][11]_i_1_n_0 ;
  wire \row_buf[19][12]_i_1_n_0 ;
  wire \row_buf[19][15]_i_1_n_0 ;
  wire \row_buf[19][2]_i_1_n_0 ;
  wire \row_buf[19][3]_i_1_n_0 ;
  wire \row_buf[19][6]_i_1_n_0 ;
  wire \row_buf[19][7]_i_1_n_0 ;
  wire \row_buf[1][10]_i_1_n_0 ;
  wire \row_buf[1][10]_i_2_n_0 ;
  wire \row_buf[1][10]_i_3_n_0 ;
  wire \row_buf[1][11]_i_1_n_0 ;
  wire \row_buf[1][11]_i_2_n_0 ;
  wire \row_buf[1][11]_i_3_n_0 ;
  wire \row_buf[1][11]_i_4_n_0 ;
  wire \row_buf[1][11]_i_5_n_0 ;
  wire \row_buf[1][12]_i_1_n_0 ;
  wire \row_buf[1][12]_i_2_n_0 ;
  wire \row_buf[1][12]_i_3_n_0 ;
  wire \row_buf[1][15]_i_1_n_0 ;
  wire \row_buf[1][15]_i_2_n_0 ;
  wire \row_buf[1][15]_i_3_n_0 ;
  wire \row_buf[1][15]_i_4_n_0 ;
  wire \row_buf[1][15]_i_5_n_0 ;
  wire \row_buf[1][15]_i_6_n_0 ;
  wire \row_buf[1][2]_i_1_n_0 ;
  wire \row_buf[1][2]_i_2_n_0 ;
  wire \row_buf[1][2]_i_3_n_0 ;
  wire \row_buf[1][3]_i_1_n_0 ;
  wire \row_buf[1][3]_i_2_n_0 ;
  wire \row_buf[1][3]_i_3_n_0 ;
  wire \row_buf[1][6]_i_1_n_0 ;
  wire \row_buf[1][6]_i_2_n_0 ;
  wire \row_buf[1][6]_i_3_n_0 ;
  wire \row_buf[1][7]_i_1_n_0 ;
  wire \row_buf[1][7]_i_2_n_0 ;
  wire \row_buf[1][7]_i_3_n_0 ;
  wire \row_buf[20][10]_i_1_n_0 ;
  wire \row_buf[20][10]_i_2_n_0 ;
  wire \row_buf[20][11]_i_1_n_0 ;
  wire \row_buf[20][12]_i_1_n_0 ;
  wire \row_buf[20][15]_i_1_n_0 ;
  wire \row_buf[20][2]_i_1_n_0 ;
  wire \row_buf[20][3]_i_1_n_0 ;
  wire \row_buf[20][6]_i_1_n_0 ;
  wire \row_buf[20][7]_i_1_n_0 ;
  wire \row_buf[21][10]_i_1_n_0 ;
  wire \row_buf[21][10]_i_2_n_0 ;
  wire \row_buf[21][11]_i_1_n_0 ;
  wire \row_buf[21][12]_i_1_n_0 ;
  wire \row_buf[21][2]_i_1_n_0 ;
  wire \row_buf[21][3]_i_1_n_0 ;
  wire \row_buf[21][6]_i_1_n_0 ;
  wire \row_buf[21][7]_i_1_n_0 ;
  wire \row_buf[22][10]_i_1_n_0 ;
  wire \row_buf[22][11]_i_1_n_0 ;
  wire \row_buf[22][12]_i_1_n_0 ;
  wire \row_buf[22][15]_i_1_n_0 ;
  wire \row_buf[22][2]_i_1_n_0 ;
  wire \row_buf[22][3]_i_1_n_0 ;
  wire \row_buf[22][6]_i_1_n_0 ;
  wire \row_buf[22][7]_i_1_n_0 ;
  wire \row_buf[23][10]_i_1_n_0 ;
  wire \row_buf[23][11]_i_1_n_0 ;
  wire \row_buf[23][12]_i_1_n_0 ;
  wire \row_buf[23][15]_i_1_n_0 ;
  wire \row_buf[23][2]_i_1_n_0 ;
  wire \row_buf[23][3]_i_1_n_0 ;
  wire \row_buf[23][6]_i_1_n_0 ;
  wire \row_buf[23][7]_i_1_n_0 ;
  wire \row_buf[24][10]_i_1_n_0 ;
  wire \row_buf[24][11]_i_1_n_0 ;
  wire \row_buf[24][12]_i_1_n_0 ;
  wire \row_buf[24][15]_i_1_n_0 ;
  wire \row_buf[24][2]_i_1_n_0 ;
  wire \row_buf[24][3]_i_1_n_0 ;
  wire \row_buf[24][6]_i_1_n_0 ;
  wire \row_buf[24][7]_i_1_n_0 ;
  wire \row_buf[25][10]_i_1_n_0 ;
  wire \row_buf[25][11]_i_1_n_0 ;
  wire \row_buf[25][12]_i_1_n_0 ;
  wire \row_buf[25][15]_i_1_n_0 ;
  wire \row_buf[25][2]_i_1_n_0 ;
  wire \row_buf[25][3]_i_1_n_0 ;
  wire \row_buf[25][6]_i_1_n_0 ;
  wire \row_buf[25][7]_i_1_n_0 ;
  wire \row_buf[26][10]_i_1_n_0 ;
  wire \row_buf[26][11]_i_1_n_0 ;
  wire \row_buf[26][12]_i_1_n_0 ;
  wire \row_buf[26][2]_i_1_n_0 ;
  wire \row_buf[26][3]_i_1_n_0 ;
  wire \row_buf[26][6]_i_1_n_0 ;
  wire \row_buf[26][7]_i_1_n_0 ;
  wire \row_buf[27][10]_i_1_n_0 ;
  wire \row_buf[27][11]_i_1_n_0 ;
  wire \row_buf[27][11]_i_2_n_0 ;
  wire \row_buf[27][12]_i_1_n_0 ;
  wire \row_buf[27][15]_i_1_n_0 ;
  wire \row_buf[27][2]_i_1_n_0 ;
  wire \row_buf[27][3]_i_1_n_0 ;
  wire \row_buf[27][3]_i_2_n_0 ;
  wire \row_buf[27][6]_i_1_n_0 ;
  wire \row_buf[27][7]_i_1_n_0 ;
  wire \row_buf[28][10]_i_1_n_0 ;
  wire \row_buf[28][11]_i_1_n_0 ;
  wire \row_buf[28][12]_i_1_n_0 ;
  wire \row_buf[28][15]_i_1_n_0 ;
  wire \row_buf[28][2]_i_1_n_0 ;
  wire \row_buf[28][3]_i_1_n_0 ;
  wire \row_buf[28][6]_i_1_n_0 ;
  wire \row_buf[28][7]_i_1_n_0 ;
  wire \row_buf[29][10]_i_1_n_0 ;
  wire \row_buf[29][11]_i_1_n_0 ;
  wire \row_buf[29][12]_i_1_n_0 ;
  wire \row_buf[29][2]_i_1_n_0 ;
  wire \row_buf[29][3]_i_1_n_0 ;
  wire \row_buf[29][6]_i_1_n_0 ;
  wire \row_buf[29][7]_i_1_n_0 ;
  wire \row_buf[2][10]_i_1_n_0 ;
  wire \row_buf[2][10]_i_2_n_0 ;
  wire \row_buf[2][10]_i_3_n_0 ;
  wire \row_buf[2][11]_i_1_n_0 ;
  wire \row_buf[2][11]_i_2_n_0 ;
  wire \row_buf[2][11]_i_3_n_0 ;
  wire \row_buf[2][11]_i_4_n_0 ;
  wire \row_buf[2][11]_i_5_n_0 ;
  wire \row_buf[2][12]_i_1_n_0 ;
  wire \row_buf[2][12]_i_2_n_0 ;
  wire \row_buf[2][12]_i_3_n_0 ;
  wire \row_buf[2][12]_i_4_n_0 ;
  wire \row_buf[2][12]_i_5_n_0 ;
  wire \row_buf[2][2]_i_1_n_0 ;
  wire \row_buf[2][2]_i_2_n_0 ;
  wire \row_buf[2][2]_i_3_n_0 ;
  wire \row_buf[2][3]_i_1_n_0 ;
  wire \row_buf[2][3]_i_2_n_0 ;
  wire \row_buf[2][3]_i_3_n_0 ;
  wire \row_buf[2][3]_i_4_n_0 ;
  wire \row_buf[2][3]_i_5_n_0 ;
  wire \row_buf[2][6]_i_1_n_0 ;
  wire \row_buf[2][6]_i_2_n_0 ;
  wire \row_buf[2][6]_i_3_n_0 ;
  wire \row_buf[2][7]_i_1_n_0 ;
  wire \row_buf[2][7]_i_2_n_0 ;
  wire \row_buf[2][7]_i_3_n_0 ;
  wire \row_buf[30][10]_i_1_n_0 ;
  wire \row_buf[30][11]_i_1_n_0 ;
  wire \row_buf[30][12]_i_1_n_0 ;
  wire \row_buf[30][15]_i_1_n_0 ;
  wire \row_buf[30][15]_i_2_n_0 ;
  wire \row_buf[30][2]_i_1_n_0 ;
  wire \row_buf[30][3]_i_1_n_0 ;
  wire \row_buf[30][6]_i_1_n_0 ;
  wire \row_buf[30][7]_i_1_n_0 ;
  wire \row_buf[31][10]_i_1_n_0 ;
  wire \row_buf[31][10]_i_2_n_0 ;
  wire \row_buf[31][11]_i_1_n_0 ;
  wire \row_buf[31][12]_i_1_n_0 ;
  wire \row_buf[31][2]_i_1_n_0 ;
  wire \row_buf[31][3]_i_1_n_0 ;
  wire \row_buf[31][6]_i_1_n_0 ;
  wire \row_buf[31][7]_i_1_n_0 ;
  wire \row_buf[3][10]_i_1_n_0 ;
  wire \row_buf[3][10]_i_2_n_0 ;
  wire \row_buf[3][10]_i_3_n_0 ;
  wire \row_buf[3][11]_i_1_n_0 ;
  wire \row_buf[3][11]_i_2_n_0 ;
  wire \row_buf[3][11]_i_3_n_0 ;
  wire \row_buf[3][11]_i_4_n_0 ;
  wire \row_buf[3][12]_i_1_n_0 ;
  wire \row_buf[3][12]_i_2_n_0 ;
  wire \row_buf[3][12]_i_3_n_0 ;
  wire \row_buf[3][15]_i_1_n_0 ;
  wire \row_buf[3][15]_i_2_n_0 ;
  wire \row_buf[3][15]_i_3_n_0 ;
  wire \row_buf[3][15]_i_4_n_0 ;
  wire \row_buf[3][15]_i_5_n_0 ;
  wire \row_buf[3][2]_i_1_n_0 ;
  wire \row_buf[3][2]_i_2_n_0 ;
  wire \row_buf[3][2]_i_3_n_0 ;
  wire \row_buf[3][3]_i_1_n_0 ;
  wire \row_buf[3][3]_i_2_n_0 ;
  wire \row_buf[3][3]_i_3_n_0 ;
  wire \row_buf[3][6]_i_1_n_0 ;
  wire \row_buf[3][6]_i_2_n_0 ;
  wire \row_buf[3][6]_i_3_n_0 ;
  wire \row_buf[3][7]_i_1_n_0 ;
  wire \row_buf[3][7]_i_2_n_0 ;
  wire \row_buf[3][7]_i_3_n_0 ;
  wire \row_buf[4][10]_i_1_n_0 ;
  wire \row_buf[4][10]_i_2_n_0 ;
  wire \row_buf[4][10]_i_3_n_0 ;
  wire \row_buf[4][11]_i_1_n_0 ;
  wire \row_buf[4][11]_i_2_n_0 ;
  wire \row_buf[4][11]_i_3_n_0 ;
  wire \row_buf[4][11]_i_4_n_0 ;
  wire \row_buf[4][12]_i_1_n_0 ;
  wire \row_buf[4][12]_i_2_n_0 ;
  wire \row_buf[4][15]_i_1_n_0 ;
  wire \row_buf[4][15]_i_2_n_0 ;
  wire \row_buf[4][15]_i_3_n_0 ;
  wire \row_buf[4][15]_i_4_n_0 ;
  wire \row_buf[4][15]_i_5_n_0 ;
  wire \row_buf[4][2]_i_1_n_0 ;
  wire \row_buf[4][2]_i_2_n_0 ;
  wire \row_buf[4][2]_i_3_n_0 ;
  wire \row_buf[4][3]_i_1_n_0 ;
  wire \row_buf[4][3]_i_2_n_0 ;
  wire \row_buf[4][3]_i_3_n_0 ;
  wire \row_buf[4][6]_i_1_n_0 ;
  wire \row_buf[4][6]_i_2_n_0 ;
  wire \row_buf[4][6]_i_3_n_0 ;
  wire \row_buf[4][7]_i_1_n_0 ;
  wire \row_buf[4][7]_i_2_n_0 ;
  wire \row_buf[4][7]_i_3_n_0 ;
  wire \row_buf[5][10]_i_1_n_0 ;
  wire \row_buf[5][10]_i_2_n_0 ;
  wire \row_buf[5][10]_i_3_n_0 ;
  wire \row_buf[5][11]_i_1_n_0 ;
  wire \row_buf[5][11]_i_2_n_0 ;
  wire \row_buf[5][11]_i_3_n_0 ;
  wire \row_buf[5][11]_i_4_n_0 ;
  wire \row_buf[5][12]_i_1_n_0 ;
  wire \row_buf[5][12]_i_2_n_0 ;
  wire \row_buf[5][12]_i_3_n_0 ;
  wire \row_buf[5][12]_i_4_n_0 ;
  wire \row_buf[5][12]_i_5_n_0 ;
  wire \row_buf[5][12]_i_6_n_0 ;
  wire \row_buf[5][12]_i_7_n_0 ;
  wire \row_buf[5][2]_i_1_n_0 ;
  wire \row_buf[5][2]_i_2_n_0 ;
  wire \row_buf[5][2]_i_3_n_0 ;
  wire \row_buf[5][3]_i_1_n_0 ;
  wire \row_buf[5][3]_i_2_n_0 ;
  wire \row_buf[5][3]_i_3_n_0 ;
  wire \row_buf[5][6]_i_1_n_0 ;
  wire \row_buf[5][6]_i_2_n_0 ;
  wire \row_buf[5][6]_i_3_n_0 ;
  wire \row_buf[5][7]_i_1_n_0 ;
  wire \row_buf[5][7]_i_2_n_0 ;
  wire \row_buf[5][7]_i_3_n_0 ;
  wire \row_buf[6][10]_i_1_n_0 ;
  wire \row_buf[6][10]_i_2_n_0 ;
  wire \row_buf[6][10]_i_3_n_0 ;
  wire \row_buf[6][11]_i_1_n_0 ;
  wire \row_buf[6][11]_i_2_n_0 ;
  wire \row_buf[6][11]_i_3_n_0 ;
  wire \row_buf[6][11]_i_4_n_0 ;
  wire \row_buf[6][11]_i_5_n_0 ;
  wire \row_buf[6][12]_i_1_n_0 ;
  wire \row_buf[6][12]_i_2_n_0 ;
  wire \row_buf[6][12]_i_3_n_0 ;
  wire \row_buf[6][12]_i_4_n_0 ;
  wire \row_buf[6][15]_i_1_n_0 ;
  wire \row_buf[6][15]_i_2_n_0 ;
  wire \row_buf[6][15]_i_3_n_0 ;
  wire \row_buf[6][15]_i_4_n_0 ;
  wire \row_buf[6][15]_i_5_n_0 ;
  wire \row_buf[6][15]_i_6_n_0 ;
  wire \row_buf[6][2]_i_1_n_0 ;
  wire \row_buf[6][2]_i_2_n_0 ;
  wire \row_buf[6][2]_i_3_n_0 ;
  wire \row_buf[6][3]_i_1_n_0 ;
  wire \row_buf[6][3]_i_2_n_0 ;
  wire \row_buf[6][3]_i_3_n_0 ;
  wire \row_buf[6][6]_i_1_n_0 ;
  wire \row_buf[6][6]_i_2_n_0 ;
  wire \row_buf[6][6]_i_3_n_0 ;
  wire \row_buf[6][7]_i_1_n_0 ;
  wire \row_buf[6][7]_i_2_n_0 ;
  wire \row_buf[6][7]_i_3_n_0 ;
  wire \row_buf[7][10]_i_1_n_0 ;
  wire \row_buf[7][10]_i_2_n_0 ;
  wire \row_buf[7][10]_i_3_n_0 ;
  wire \row_buf[7][11]_i_1_n_0 ;
  wire \row_buf[7][11]_i_2_n_0 ;
  wire \row_buf[7][11]_i_3_n_0 ;
  wire \row_buf[7][11]_i_4_n_0 ;
  wire \row_buf[7][11]_i_5_n_0 ;
  wire \row_buf[7][12]_i_1_n_0 ;
  wire \row_buf[7][12]_i_2_n_0 ;
  wire \row_buf[7][12]_i_3_n_0 ;
  wire \row_buf[7][12]_i_4_n_0 ;
  wire \row_buf[7][12]_i_5_n_0 ;
  wire \row_buf[7][12]_i_6_n_0 ;
  wire \row_buf[7][12]_i_7_n_0 ;
  wire \row_buf[7][15]_i_1_n_0 ;
  wire \row_buf[7][15]_i_2_n_0 ;
  wire \row_buf[7][15]_i_3_n_0 ;
  wire \row_buf[7][15]_i_4_n_0 ;
  wire \row_buf[7][15]_i_5_n_0 ;
  wire \row_buf[7][2]_i_1_n_0 ;
  wire \row_buf[7][2]_i_2_n_0 ;
  wire \row_buf[7][2]_i_3_n_0 ;
  wire \row_buf[7][3]_i_1_n_0 ;
  wire \row_buf[7][3]_i_2_n_0 ;
  wire \row_buf[7][3]_i_3_n_0 ;
  wire \row_buf[7][6]_i_1_n_0 ;
  wire \row_buf[7][6]_i_2_n_0 ;
  wire \row_buf[7][6]_i_3_n_0 ;
  wire \row_buf[7][7]_i_1_n_0 ;
  wire \row_buf[7][7]_i_2_n_0 ;
  wire \row_buf[7][7]_i_3_n_0 ;
  wire \row_buf[8][10]_i_1_n_0 ;
  wire \row_buf[8][10]_i_2_n_0 ;
  wire \row_buf[8][10]_i_3_n_0 ;
  wire \row_buf[8][11]_i_1_n_0 ;
  wire \row_buf[8][12]_i_1_n_0 ;
  wire \row_buf[8][15]_i_1_n_0 ;
  wire \row_buf[8][2]_i_1_n_0 ;
  wire \row_buf[8][3]_i_1_n_0 ;
  wire \row_buf[8][6]_i_1_n_0 ;
  wire \row_buf[8][7]_i_1_n_0 ;
  wire \row_buf[9][10]_i_1_n_0 ;
  wire \row_buf[9][11]_i_1_n_0 ;
  wire \row_buf[9][12]_i_1_n_0 ;
  wire \row_buf[9][15]_i_1_n_0 ;
  wire \row_buf[9][15]_i_2_n_0 ;
  wire \row_buf[9][2]_i_1_n_0 ;
  wire \row_buf[9][3]_i_1_n_0 ;
  wire \row_buf[9][6]_i_1_n_0 ;
  wire \row_buf[9][7]_i_1_n_0 ;
  wire [12:2]\row_buf_reg[10]_2 ;
  wire [15:2]\row_buf_reg[11]_3 ;
  wire [15:2]\row_buf_reg[12]_4 ;
  wire [12:2]\row_buf_reg[13]_5 ;
  wire [15:2]\row_buf_reg[14]_6 ;
  wire [15:2]\row_buf_reg[15]_7 ;
  wire [12:2]\row_buf_reg[16]_8 ;
  wire [15:2]\row_buf_reg[17]_9 ;
  wire [12:2]\row_buf_reg[18]_10 ;
  wire [15:2]\row_buf_reg[19]_11 ;
  wire [15:2]\row_buf_reg[20]_12 ;
  wire [12:2]\row_buf_reg[21]_13 ;
  wire [15:2]\row_buf_reg[22]_14 ;
  wire [15:2]\row_buf_reg[23]_15 ;
  wire [15:2]\row_buf_reg[24]_16 ;
  wire [15:2]\row_buf_reg[25]_17 ;
  wire [12:2]\row_buf_reg[26]_18 ;
  wire [15:2]\row_buf_reg[27]_19 ;
  wire [15:2]\row_buf_reg[28]_20 ;
  wire [12:2]\row_buf_reg[29]_21 ;
  wire [15:2]\row_buf_reg[30]_22 ;
  wire [12:2]\row_buf_reg[31]_23 ;
  wire [15:2]\row_buf_reg[8]_0 ;
  wire [15:2]\row_buf_reg[9]_1 ;
  wire \row_buf_reg_n_0_[0][10] ;
  wire \row_buf_reg_n_0_[0][11] ;
  wire \row_buf_reg_n_0_[0][12] ;
  wire \row_buf_reg_n_0_[0][2] ;
  wire \row_buf_reg_n_0_[0][3] ;
  wire \row_buf_reg_n_0_[0][6] ;
  wire \row_buf_reg_n_0_[0][7] ;
  wire \row_buf_reg_n_0_[1][10] ;
  wire \row_buf_reg_n_0_[1][11] ;
  wire \row_buf_reg_n_0_[1][12] ;
  wire \row_buf_reg_n_0_[1][15] ;
  wire \row_buf_reg_n_0_[1][2] ;
  wire \row_buf_reg_n_0_[1][3] ;
  wire \row_buf_reg_n_0_[1][6] ;
  wire \row_buf_reg_n_0_[1][7] ;
  wire \row_buf_reg_n_0_[2][10] ;
  wire \row_buf_reg_n_0_[2][11] ;
  wire \row_buf_reg_n_0_[2][12] ;
  wire \row_buf_reg_n_0_[2][2] ;
  wire \row_buf_reg_n_0_[2][3] ;
  wire \row_buf_reg_n_0_[2][6] ;
  wire \row_buf_reg_n_0_[2][7] ;
  wire \row_buf_reg_n_0_[3][10] ;
  wire \row_buf_reg_n_0_[3][11] ;
  wire \row_buf_reg_n_0_[3][12] ;
  wire \row_buf_reg_n_0_[3][15] ;
  wire \row_buf_reg_n_0_[3][2] ;
  wire \row_buf_reg_n_0_[3][3] ;
  wire \row_buf_reg_n_0_[3][6] ;
  wire \row_buf_reg_n_0_[3][7] ;
  wire \row_buf_reg_n_0_[4][10] ;
  wire \row_buf_reg_n_0_[4][11] ;
  wire \row_buf_reg_n_0_[4][12] ;
  wire \row_buf_reg_n_0_[4][15] ;
  wire \row_buf_reg_n_0_[4][2] ;
  wire \row_buf_reg_n_0_[4][3] ;
  wire \row_buf_reg_n_0_[4][6] ;
  wire \row_buf_reg_n_0_[4][7] ;
  wire \row_buf_reg_n_0_[5][10] ;
  wire \row_buf_reg_n_0_[5][11] ;
  wire \row_buf_reg_n_0_[5][12] ;
  wire \row_buf_reg_n_0_[5][2] ;
  wire \row_buf_reg_n_0_[5][3] ;
  wire \row_buf_reg_n_0_[5][6] ;
  wire \row_buf_reg_n_0_[5][7] ;
  wire \row_buf_reg_n_0_[6][10] ;
  wire \row_buf_reg_n_0_[6][11] ;
  wire \row_buf_reg_n_0_[6][12] ;
  wire \row_buf_reg_n_0_[6][15] ;
  wire \row_buf_reg_n_0_[6][2] ;
  wire \row_buf_reg_n_0_[6][3] ;
  wire \row_buf_reg_n_0_[6][6] ;
  wire \row_buf_reg_n_0_[6][7] ;
  wire \row_buf_reg_n_0_[7][10] ;
  wire \row_buf_reg_n_0_[7][11] ;
  wire \row_buf_reg_n_0_[7][12] ;
  wire \row_buf_reg_n_0_[7][15] ;
  wire \row_buf_reg_n_0_[7][2] ;
  wire \row_buf_reg_n_0_[7][3] ;
  wire \row_buf_reg_n_0_[7][6] ;
  wire \row_buf_reg_n_0_[7][7] ;
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
  wire [15:0]s0_dout;
  wire s_axi_aclk;
  wire [63:10]spr_att_vdp_dout;
  wire [52:0]spr_att_vdp_dout__0;
  wire [0:0]spr_cnt;
  wire \spr_cnt[7]_i_2_n_0 ;
  wire [7:0]spr_cnt_reg;
  wire [127:0]spr_data_vdp_dout;
  wire [87:40]spr_data_vdp_dout__0;
  wire [9:1]state;
  wire [1:1]state1;
  wire [6:1]state__0;
  wire \v_cnt_reg[2] ;
  wire \v_cnt_reg[4] ;
  wire \v_cnt_reg[5] ;
  wire \v_cnt_reg[6] ;
  wire \v_cnt_reg[8] ;
  wire [3:1]\NLW_FSM_onehot_state_reg[9]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_FSM_onehot_state_reg[9]_i_2_O_UNCONNECTED ;
  wire [3:2]\NLW_FSM_onehot_state_reg[9]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_FSM_onehot_state_reg[9]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_FSM_onehot_state_reg[9]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_FSM_onehot_state_reg[9]_i_7_O_UNCONNECTED ;
  wire [3:2]\NLW_data_pos_reg[10]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_data_pos_reg[10]_i_2_O_UNCONNECTED ;
  wire [3:1]\NLW_data_pos_reg[7]_i_11_CO_UNCONNECTED ;
  wire [3:2]\NLW_data_pos_reg[7]_i_11_O_UNCONNECTED ;
  wire [3:2]\NLW_line_data_reg[15]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_line_data_reg[15]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_line_data_reg[15]_i_21_O_UNCONNECTED ;
  wire [3:2]\NLW_line_data_reg[15]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_line_data_reg[15]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_line_data_reg[15]_i_39_O_UNCONNECTED ;
  wire [2:0]\NLW_line_data_reg[15]_i_60_O_UNCONNECTED ;
  wire [3:0]\NLW_line_data_reg[15]_i_9_O_UNCONNECTED ;
  wire [3:0]\NLW_line_data_reg[31]_i_18_O_UNCONNECTED ;
  wire [3:0]\NLW_line_data_reg[31]_i_23_O_UNCONNECTED ;
  wire [3:2]\NLW_line_data_reg[31]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_line_data_reg[31]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_line_data_reg[31]_i_7_O_UNCONNECTED ;
  wire [3:0]\NLW_line_data_reg[47]_i_21_O_UNCONNECTED ;
  wire [3:0]\NLW_line_data_reg[47]_i_26_O_UNCONNECTED ;
  wire [3:2]\NLW_line_data_reg[47]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_line_data_reg[47]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_line_data_reg[47]_i_8_O_UNCONNECTED ;
  wire [63:0]NLW_spr_att_dina_UNCONNECTED;
  wire [62:53]NLW_spr_att_douta_UNCONNECTED;
  wire [63:0]NLW_spr_line_douta_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state[1]_i_2_n_0 ),
        .I1(state[9]),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEEFEFFFFFFFF)) 
    \FSM_onehot_state[10]_i_1 
       (.I0(\FSM_onehot_state[10]_i_2_n_0 ),
        .I1(\FSM_onehot_state[10]_i_3_n_0 ),
        .I2(line_done0),
        .I3(\FSM_onehot_state_reg[10]_0 ),
        .I4(state[1]),
        .I5(\FSM_onehot_state[10]_i_5_n_0 ),
        .O(\FSM_onehot_state[10]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_state[10]_i_10 
       (.I0(\line_off_reg[0]__0_rep__1_n_0 ),
        .I1(\line_off_reg[1]__0_rep__1_n_0 ),
        .O(\FSM_onehot_state[10]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \FSM_onehot_state[10]_i_2 
       (.I0(line_data0),
        .I1(\clear_pos[7]_i_4_n_0 ),
        .I2(\clear_pos_reg_n_0_[7] ),
        .I3(\clear_pos_reg_n_0_[6] ),
        .I4(\clear_pos_reg_n_0_[5] ),
        .O(\FSM_onehot_state[10]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[10]_i_3 
       (.I0(line_data),
        .I1(\FSM_onehot_state[10]_i_6_n_0 ),
        .O(\FSM_onehot_state[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \FSM_onehot_state[10]_i_5 
       (.I0(state[9]),
        .I1(spr_cnt),
        .I2(line_pos__0),
        .I3(state[5]),
        .I4(state[4]),
        .I5(state[3]),
        .O(\FSM_onehot_state[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFB2303030)) 
    \FSM_onehot_state[10]_i_6 
       (.I0(\FSM_onehot_state[10]_i_10_n_0 ),
        .I1(spr_att_vdp_dout__0[52]),
        .I2(\line_word_reg_n_0_[2] ),
        .I3(\line_word_reg_n_0_[0] ),
        .I4(\line_word_reg_n_0_[1] ),
        .I5(\line_word_reg_n_0_[3] ),
        .O(\FSM_onehot_state[10]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \FSM_onehot_state[10]_i_8 
       (.I0(\map_r_addr_reg[13] [5]),
        .I1(\map_r_addr_reg[13] [3]),
        .I2(\map_r_addr_reg[13] [4]),
        .I3(\map_r_addr_reg[13] [1]),
        .I4(\map_r_addr_reg[13] [2]),
        .O(\v_cnt_reg[5] ));
  LUT6 #(
    .INIT(64'h5666666666666666)) 
    \FSM_onehot_state[10]_i_9 
       (.I0(\map_r_addr_reg[13] [6]),
        .I1(\map_r_addr_reg[13] [5]),
        .I2(\map_r_addr_reg[13] [2]),
        .I3(\map_r_addr_reg[13] [1]),
        .I4(\map_r_addr_reg[13] [4]),
        .I5(\map_r_addr_reg[13] [3]),
        .O(\v_cnt_reg[6] ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_state[1]_i_1 
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
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \FSM_onehot_state[1]_i_4 
       (.I0(spr_cnt_reg[2]),
        .I1(spr_cnt_reg[3]),
        .I2(spr_cnt_reg[5]),
        .I3(spr_cnt_reg[1]),
        .O(\FSM_onehot_state[1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(spr_att_vdp_dout[63]),
        .I1(att_pos3),
        .I2(att_pos311_in),
        .I3(state[1]),
        .O(state__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(spr_att_vdp_dout__0[52]),
        .I1(state[3]),
        .O(state__0[4]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_state[6]_i_1 
       (.I0(state[5]),
        .I1(spr_att_vdp_dout__0[52]),
        .I2(state[3]),
        .O(state__0[6]));
  LUT5 #(
    .INIT(32'hBFFFAAAA)) 
    \FSM_onehot_state[9]_i_1 
       (.I0(spr_cnt),
        .I1(att_pos311_in),
        .I2(att_pos3),
        .I3(spr_att_vdp_dout[63]),
        .I4(state[1]),
        .O(att_pos));
  LUT5 #(
    .INIT(32'h16808016)) 
    \FSM_onehot_state[9]_i_10 
       (.I0(\v_cnt_reg[8] ),
        .I1(\FSM_onehot_state[9]_i_27_n_0 ),
        .I2(spr_att_vdp_dout[24]),
        .I3(spr_att_vdp_dout[25]),
        .I4(gen_line[1]),
        .O(\FSM_onehot_state[9]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h7130713030177130)) 
    \FSM_onehot_state[9]_i_11 
       (.I0(spr_att_vdp_dout[22]),
        .I1(spr_att_vdp_dout[23]),
        .I2(\map_r_addr_reg[13] [7]),
        .I3(\map_r_addr_reg[13] [6]),
        .I4(\v_cnt_reg[2] ),
        .I5(\map_r_addr_reg[13] [5]),
        .O(\FSM_onehot_state[9]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h022F)) 
    \FSM_onehot_state[9]_i_12 
       (.I0(\v_cnt_reg[4] ),
        .I1(spr_att_vdp_dout[20]),
        .I2(\v_cnt_reg[5] ),
        .I3(spr_att_vdp_dout[21]),
        .O(\FSM_onehot_state[9]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h03717130)) 
    \FSM_onehot_state[9]_i_13 
       (.I0(spr_att_vdp_dout[18]),
        .I1(spr_att_vdp_dout[19]),
        .I2(\map_r_addr_reg[13] [3]),
        .I3(\map_r_addr_reg[13] [2]),
        .I4(\map_r_addr_reg[13] [1]),
        .O(\FSM_onehot_state[9]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h022F)) 
    \FSM_onehot_state[9]_i_14 
       (.I0(\map_r_addr_reg[13] [0]),
        .I1(spr_att_vdp_dout[16]),
        .I2(\map_r_addr_reg[13] [1]),
        .I3(spr_att_vdp_dout[17]),
        .O(\FSM_onehot_state[9]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h8484428421211821)) 
    \FSM_onehot_state[9]_i_15 
       (.I0(spr_att_vdp_dout[22]),
        .I1(\map_r_addr_reg[13] [7]),
        .I2(\map_r_addr_reg[13] [6]),
        .I3(\v_cnt_reg[2] ),
        .I4(\map_r_addr_reg[13] [5]),
        .I5(spr_att_vdp_dout[23]),
        .O(\FSM_onehot_state[9]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h0990)) 
    \FSM_onehot_state[9]_i_16 
       (.I0(\v_cnt_reg[4] ),
        .I1(spr_att_vdp_dout[20]),
        .I2(\v_cnt_reg[5] ),
        .I3(spr_att_vdp_dout[21]),
        .O(\FSM_onehot_state[9]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h18844221)) 
    \FSM_onehot_state[9]_i_17 
       (.I0(spr_att_vdp_dout[18]),
        .I1(\map_r_addr_reg[13] [3]),
        .I2(\map_r_addr_reg[13] [2]),
        .I3(\map_r_addr_reg[13] [1]),
        .I4(spr_att_vdp_dout[19]),
        .O(\FSM_onehot_state[9]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h0990)) 
    \FSM_onehot_state[9]_i_18 
       (.I0(\map_r_addr_reg[13] [0]),
        .I1(spr_att_vdp_dout[16]),
        .I2(\map_r_addr_reg[13] [1]),
        .I3(spr_att_vdp_dout[17]),
        .O(\FSM_onehot_state[9]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0BBBB33332222000)) 
    \FSM_onehot_state[9]_i_19 
       (.I0(\v_cnt_reg[6] ),
        .I1(\FSM_onehot_state_reg[9]_i_7_0 ),
        .I2(spr_att_vdp_dout[21]),
        .I3(\FSM_onehot_state[9]_i_28_n_0 ),
        .I4(spr_att_vdp_dout[22]),
        .I5(spr_att_vdp_dout[23]),
        .O(\FSM_onehot_state[9]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h433FFDD401144000)) 
    \FSM_onehot_state[9]_i_20 
       (.I0(\v_cnt_reg[4] ),
        .I1(\FSM_onehot_state[9]_i_29_n_0 ),
        .I2(spr_att_vdp_dout[20]),
        .I3(spr_att_vdp_dout__0[52]),
        .I4(spr_att_vdp_dout[21]),
        .I5(\v_cnt_reg[5] ),
        .O(\FSM_onehot_state[9]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h44400001FFFD4443)) 
    \FSM_onehot_state[9]_i_21 
       (.I0(gen_line[0]),
        .I1(spr_att_vdp_dout[18]),
        .I2(spr_att_vdp_dout[16]),
        .I3(spr_att_vdp_dout[17]),
        .I4(spr_att_vdp_dout[19]),
        .I5(D),
        .O(\FSM_onehot_state[9]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'hD301)) 
    \FSM_onehot_state[9]_i_22 
       (.I0(\map_r_addr_reg[13] [0]),
        .I1(spr_att_vdp_dout[16]),
        .I2(spr_att_vdp_dout[17]),
        .I3(\map_r_addr_reg[13] [1]),
        .O(\FSM_onehot_state[9]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h156A80008000156A)) 
    \FSM_onehot_state[9]_i_23 
       (.I0(\v_cnt_reg[6] ),
        .I1(spr_att_vdp_dout[21]),
        .I2(\FSM_onehot_state[9]_i_28_n_0 ),
        .I3(spr_att_vdp_dout[22]),
        .I4(spr_att_vdp_dout[23]),
        .I5(\FSM_onehot_state_reg[9]_i_7_0 ),
        .O(\FSM_onehot_state[9]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h9440022902299440)) 
    \FSM_onehot_state[9]_i_24 
       (.I0(\v_cnt_reg[4] ),
        .I1(\FSM_onehot_state[9]_i_29_n_0 ),
        .I2(spr_att_vdp_dout[20]),
        .I3(spr_att_vdp_dout__0[52]),
        .I4(spr_att_vdp_dout[21]),
        .I5(\v_cnt_reg[5] ),
        .O(\FSM_onehot_state[9]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h9994000200029994)) 
    \FSM_onehot_state[9]_i_25 
       (.I0(gen_line[0]),
        .I1(spr_att_vdp_dout[18]),
        .I2(spr_att_vdp_dout[16]),
        .I3(spr_att_vdp_dout[17]),
        .I4(spr_att_vdp_dout[19]),
        .I5(D),
        .O(\FSM_onehot_state[9]_i_25_n_0 ));
  LUT4 #(
    .INIT(16'h0960)) 
    \FSM_onehot_state[9]_i_26 
       (.I0(spr_att_vdp_dout[17]),
        .I1(\map_r_addr_reg[13] [1]),
        .I2(spr_att_vdp_dout[16]),
        .I3(\map_r_addr_reg[13] [0]),
        .O(\FSM_onehot_state[9]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h8880800000000000)) 
    \FSM_onehot_state[9]_i_27 
       (.I0(spr_att_vdp_dout[23]),
        .I1(spr_att_vdp_dout[21]),
        .I2(\FSM_onehot_state[9]_i_29_n_0 ),
        .I3(spr_att_vdp_dout[20]),
        .I4(spr_att_vdp_dout__0[52]),
        .I5(spr_att_vdp_dout[22]),
        .O(\FSM_onehot_state[9]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEEEEEE8)) 
    \FSM_onehot_state[9]_i_28 
       (.I0(spr_att_vdp_dout__0[52]),
        .I1(spr_att_vdp_dout[20]),
        .I2(spr_att_vdp_dout[19]),
        .I3(spr_att_vdp_dout[17]),
        .I4(spr_att_vdp_dout[16]),
        .I5(spr_att_vdp_dout[18]),
        .O(\FSM_onehot_state[9]_i_28_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_state[9]_i_29 
       (.I0(spr_att_vdp_dout[18]),
        .I1(spr_att_vdp_dout[16]),
        .I2(spr_att_vdp_dout[17]),
        .I3(spr_att_vdp_dout[19]),
        .O(\FSM_onehot_state[9]_i_29_n_0 ));
  LUT4 #(
    .INIT(16'h1F01)) 
    \FSM_onehot_state[9]_i_5 
       (.I0(spr_att_vdp_dout[24]),
        .I1(\v_cnt_reg[8] ),
        .I2(spr_att_vdp_dout[25]),
        .I3(gen_line[1]),
        .O(\FSM_onehot_state[9]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h6006)) 
    \FSM_onehot_state[9]_i_6 
       (.I0(\v_cnt_reg[8] ),
        .I1(spr_att_vdp_dout[24]),
        .I2(gen_line[1]),
        .I3(spr_att_vdp_dout[25]),
        .O(\FSM_onehot_state[9]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h0BB33220)) 
    \FSM_onehot_state[9]_i_8 
       (.I0(\v_cnt_reg[8] ),
        .I1(gen_line[1]),
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
  (* FSM_ENCODED_STATES = "STATE_C1:000000001000,STATE_C5:000010000000,STATE_C0:000000000100,STATE_C4:000001000000,STATE_START:000000000010,STATE_NEXT:001000000000,STATE_C2:000000010000,STATE_WAIT:000000000001,STATE_CLEAR:010000000000,STATE_C3:000000100000" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(\FSM_onehot_state[10]_i_1_n_0 ),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(line_done0),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "STATE_C1:000000001000,STATE_C5:000010000000,STATE_C0:000000000100,STATE_C4:000001000000,STATE_START:000000000010,STATE_NEXT:001000000000,STATE_C2:000000010000,STATE_WAIT:000000000001,STATE_CLEAR:010000000000,STATE_C3:000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[10] 
       (.C(s_axi_aclk),
        .CE(\FSM_onehot_state[10]_i_1_n_0 ),
        .D(line_done0),
        .Q(line_data0),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "STATE_C1:000000001000,STATE_C5:000010000000,STATE_C0:000000000100,STATE_C4:000001000000,STATE_START:000000000010,STATE_NEXT:001000000000,STATE_C2:000000010000,STATE_WAIT:000000000001,STATE_CLEAR:010000000000,STATE_C3:000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(\FSM_onehot_state[10]_i_1_n_0 ),
        .D(state__0[1]),
        .Q(state[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "STATE_C1:000000001000,STATE_C5:000010000000,STATE_C0:000000000100,STATE_C4:000001000000,STATE_START:000000000010,STATE_NEXT:001000000000,STATE_C2:000000010000,STATE_WAIT:000000000001,STATE_CLEAR:010000000000,STATE_C3:000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(s_axi_aclk),
        .CE(\FSM_onehot_state[10]_i_1_n_0 ),
        .D(state__0[2]),
        .Q(line_pos__0),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "STATE_C1:000000001000,STATE_C5:000010000000,STATE_C0:000000000100,STATE_C4:000001000000,STATE_START:000000000010,STATE_NEXT:001000000000,STATE_C2:000000010000,STATE_WAIT:000000000001,STATE_CLEAR:010000000000,STATE_C3:000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(s_axi_aclk),
        .CE(\FSM_onehot_state[10]_i_1_n_0 ),
        .D(line_pos__0),
        .Q(state[3]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "STATE_C1:000000001000,STATE_C5:000010000000,STATE_C0:000000000100,STATE_C4:000001000000,STATE_START:000000000010,STATE_NEXT:001000000000,STATE_C2:000000010000,STATE_WAIT:000000000001,STATE_CLEAR:010000000000,STATE_C3:000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(s_axi_aclk),
        .CE(\FSM_onehot_state[10]_i_1_n_0 ),
        .D(state__0[4]),
        .Q(state[4]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "STATE_C1:000000001000,STATE_C5:000010000000,STATE_C0:000000000100,STATE_C4:000001000000,STATE_START:000000000010,STATE_NEXT:001000000000,STATE_C2:000000010000,STATE_WAIT:000000000001,STATE_CLEAR:010000000000,STATE_C3:000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(s_axi_aclk),
        .CE(\FSM_onehot_state[10]_i_1_n_0 ),
        .D(state[4]),
        .Q(state[5]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "STATE_C1:000000001000,STATE_C5:000010000000,STATE_C0:000000000100,STATE_C4:000001000000,STATE_START:000000000010,STATE_NEXT:001000000000,STATE_C2:000000010000,STATE_WAIT:000000000001,STATE_CLEAR:010000000000,STATE_C3:000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[6] 
       (.C(s_axi_aclk),
        .CE(\FSM_onehot_state[10]_i_1_n_0 ),
        .D(state__0[6]),
        .Q(line_data),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "STATE_C1:000000001000,STATE_C5:000010000000,STATE_C0:000000000100,STATE_C4:000001000000,STATE_START:000000000010,STATE_NEXT:001000000000,STATE_C2:000000010000,STATE_WAIT:000000000001,STATE_CLEAR:010000000000,STATE_C3:000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[7] 
       (.C(s_axi_aclk),
        .CE(\FSM_onehot_state[10]_i_1_n_0 ),
        .D(line_data),
        .Q(spr_cnt),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "STATE_C1:000000001000,STATE_C5:000010000000,STATE_C0:000000000100,STATE_C4:000001000000,STATE_START:000000000010,STATE_NEXT:001000000000,STATE_C2:000000010000,STATE_WAIT:000000000001,STATE_CLEAR:010000000000,STATE_C3:000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[9] 
       (.C(s_axi_aclk),
        .CE(\FSM_onehot_state[10]_i_1_n_0 ),
        .D(att_pos),
        .Q(state[9]),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \FSM_onehot_state_reg[9]_i_2 
       (.CI(\FSM_onehot_state_reg[9]_i_4_n_0 ),
        .CO({\NLW_FSM_onehot_state_reg[9]_i_2_CO_UNCONNECTED [3:1],att_pos311_in}),
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
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \att_pos[1]_i_1 
       (.I0(att_pos_reg[0]),
        .I1(att_pos_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \att_pos[2]_i_1 
       (.I0(att_pos_reg[0]),
        .I1(att_pos_reg[1]),
        .I2(att_pos_reg[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \att_pos[3]_i_1 
       (.I0(att_pos_reg[1]),
        .I1(att_pos_reg[0]),
        .I2(att_pos_reg[2]),
        .I3(att_pos_reg[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \att_pos[4]_i_1 
       (.I0(att_pos_reg[2]),
        .I1(att_pos_reg[0]),
        .I2(att_pos_reg[1]),
        .I3(att_pos_reg[3]),
        .I4(att_pos_reg[4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \att_pos[5]_i_1 
       (.I0(att_pos_reg[3]),
        .I1(att_pos_reg[1]),
        .I2(att_pos_reg[0]),
        .I3(att_pos_reg[2]),
        .I4(att_pos_reg[4]),
        .I5(att_pos_reg[5]),
        .O(p_0_in__0[5]));
  FDRE #(
    .INIT(1'b0)) 
    \att_pos_reg[0] 
       (.C(s_axi_aclk),
        .CE(att_pos),
        .D(p_0_in__0[0]),
        .Q(att_pos_reg[0]),
        .R(line_done0));
  FDRE #(
    .INIT(1'b0)) 
    \att_pos_reg[1] 
       (.C(s_axi_aclk),
        .CE(att_pos),
        .D(p_0_in__0[1]),
        .Q(att_pos_reg[1]),
        .R(line_done0));
  FDRE #(
    .INIT(1'b0)) 
    \att_pos_reg[2] 
       (.C(s_axi_aclk),
        .CE(att_pos),
        .D(p_0_in__0[2]),
        .Q(att_pos_reg[2]),
        .R(line_done0));
  FDRE #(
    .INIT(1'b0)) 
    \att_pos_reg[3] 
       (.C(s_axi_aclk),
        .CE(att_pos),
        .D(p_0_in__0[3]),
        .Q(att_pos_reg[3]),
        .R(line_done0));
  FDRE #(
    .INIT(1'b0)) 
    \att_pos_reg[4] 
       (.C(s_axi_aclk),
        .CE(att_pos),
        .D(p_0_in__0[4]),
        .Q(att_pos_reg[4]),
        .R(line_done0));
  FDRE #(
    .INIT(1'b0)) 
    \att_pos_reg[5] 
       (.C(s_axi_aclk),
        .CE(att_pos),
        .D(p_0_in__0[5]),
        .Q(att_pos_reg[5]),
        .R(line_done0));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \clear_pos[0]_i_1 
       (.I0(\clear_pos_reg_n_0_[0] ),
        .O(\clear_pos[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \clear_pos[1]_i_1 
       (.I0(\clear_pos_reg_n_0_[0] ),
        .I1(\clear_pos_reg_n_0_[1] ),
        .O(\clear_pos[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \clear_pos[2]_i_1 
       (.I0(\clear_pos_reg_n_0_[2] ),
        .I1(\clear_pos_reg_n_0_[1] ),
        .I2(\clear_pos_reg_n_0_[0] ),
        .O(\clear_pos[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \clear_pos[3]_i_1 
       (.I0(\clear_pos_reg_n_0_[3] ),
        .I1(\clear_pos_reg_n_0_[2] ),
        .I2(\clear_pos_reg_n_0_[0] ),
        .I3(\clear_pos_reg_n_0_[1] ),
        .O(\clear_pos[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \clear_pos[4]_i_1 
       (.I0(\clear_pos_reg_n_0_[4] ),
        .I1(\clear_pos_reg_n_0_[3] ),
        .I2(\clear_pos_reg_n_0_[1] ),
        .I3(\clear_pos_reg_n_0_[0] ),
        .I4(\clear_pos_reg_n_0_[2] ),
        .O(\clear_pos[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \clear_pos[5]_i_1 
       (.I0(\clear_pos_reg_n_0_[5] ),
        .I1(\clear_pos_reg_n_0_[4] ),
        .I2(\clear_pos_reg_n_0_[2] ),
        .I3(\clear_pos_reg_n_0_[0] ),
        .I4(\clear_pos_reg_n_0_[1] ),
        .I5(\clear_pos_reg_n_0_[3] ),
        .O(\clear_pos[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hA6)) 
    \clear_pos[6]_i_1 
       (.I0(\clear_pos_reg_n_0_[6] ),
        .I1(\clear_pos_reg_n_0_[5] ),
        .I2(\clear_pos[7]_i_4_n_0 ),
        .O(\clear_pos[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clear_pos[7]_i_1 
       (.I0(line_done0),
        .I1(line_data0),
        .O(\clear_pos[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFFAAAAAAAA)) 
    \clear_pos[7]_i_2 
       (.I0(line_done0),
        .I1(\clear_pos_reg_n_0_[5] ),
        .I2(\clear_pos_reg_n_0_[6] ),
        .I3(\clear_pos_reg_n_0_[7] ),
        .I4(\clear_pos[7]_i_4_n_0 ),
        .I5(line_data0),
        .O(clear_pos));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hA6AA)) 
    \clear_pos[7]_i_3 
       (.I0(\clear_pos_reg_n_0_[7] ),
        .I1(\clear_pos_reg_n_0_[6] ),
        .I2(\clear_pos[7]_i_4_n_0 ),
        .I3(\clear_pos_reg_n_0_[5] ),
        .O(\clear_pos[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \clear_pos[7]_i_4 
       (.I0(\clear_pos_reg_n_0_[3] ),
        .I1(\clear_pos_reg_n_0_[1] ),
        .I2(\clear_pos_reg_n_0_[0] ),
        .I3(\clear_pos_reg_n_0_[2] ),
        .I4(\clear_pos_reg_n_0_[4] ),
        .O(\clear_pos[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clear_pos_reg[0] 
       (.C(s_axi_aclk),
        .CE(clear_pos),
        .D(\clear_pos[0]_i_1_n_0 ),
        .Q(\clear_pos_reg_n_0_[0] ),
        .R(\clear_pos[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clear_pos_reg[1] 
       (.C(s_axi_aclk),
        .CE(clear_pos),
        .D(\clear_pos[1]_i_1_n_0 ),
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
        .D(\clear_pos[3]_i_1_n_0 ),
        .Q(\clear_pos_reg_n_0_[3] ),
        .R(\clear_pos[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clear_pos_reg[4] 
       (.C(s_axi_aclk),
        .CE(clear_pos),
        .D(\clear_pos[4]_i_1_n_0 ),
        .Q(\clear_pos_reg_n_0_[4] ),
        .R(\clear_pos[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clear_pos_reg[5] 
       (.C(s_axi_aclk),
        .CE(clear_pos),
        .D(\clear_pos[5]_i_1_n_0 ),
        .Q(\clear_pos_reg_n_0_[5] ),
        .R(\clear_pos[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clear_pos_reg[6] 
       (.C(s_axi_aclk),
        .CE(clear_pos),
        .D(\clear_pos[6]_i_1_n_0 ),
        .Q(\clear_pos_reg_n_0_[6] ),
        .R(\clear_pos[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clear_pos_reg[7] 
       (.C(s_axi_aclk),
        .CE(clear_pos),
        .D(\clear_pos[7]_i_3_n_0 ),
        .Q(\clear_pos_reg_n_0_[7] ),
        .R(\clear_pos[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF888888888888888)) 
    \data_pos[10]_i_1 
       (.I0(state[3]),
        .I1(spr_att_vdp_dout__0[52]),
        .I2(state[1]),
        .I3(att_pos311_in),
        .I4(att_pos3),
        .I5(spr_att_vdp_dout[63]),
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
    .INIT(32'h77787878)) 
    \data_pos[10]_i_5 
       (.I0(spr_att_vdp_dout__0[46]),
        .I1(state[1]),
        .I2(\data_pos[10]_i_8_n_0 ),
        .I3(state[3]),
        .I4(\data_pos_reg_n_0_[10] ),
        .O(\data_pos[10]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h07F8F8F8)) 
    \data_pos[10]_i_6 
       (.I0(state[3]),
        .I1(\data_pos_reg_n_0_[9] ),
        .I2(\data_pos[10]_i_8_n_0 ),
        .I3(spr_att_vdp_dout__0[45]),
        .I4(state[1]),
        .O(\data_pos[10]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h07F8F8F8)) 
    \data_pos[10]_i_7 
       (.I0(state[3]),
        .I1(\data_pos_reg_n_0_[8] ),
        .I2(\data_pos[10]_i_8_n_0 ),
        .I3(spr_att_vdp_dout__0[44]),
        .I4(state[1]),
        .O(\data_pos[10]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h8800A800)) 
    \data_pos[10]_i_8 
       (.I0(state[1]),
        .I1(\data_pos_reg[7]_i_11_n_6 ),
        .I2(\data_pos_reg[7]_i_11_n_7 ),
        .I3(spr_att_vdp_dout[51]),
        .I4(spr_att_vdp_dout__0[52]),
        .O(\data_pos[10]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_pos[3]_i_10 
       (.I0(state[3]),
        .I1(\data_pos_reg_n_0_[3] ),
        .O(\data_pos[3]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_pos[3]_i_11 
       (.I0(state[3]),
        .I1(\data_pos_reg_n_0_[2] ),
        .O(\data_pos[3]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_pos[3]_i_12 
       (.I0(state[3]),
        .I1(\data_pos_reg_n_0_[1] ),
        .O(\data_pos[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hBAEFBFEAAAAAAAAA)) 
    \data_pos[3]_i_2 
       (.I0(\data_pos[3]_i_10_n_0 ),
        .I1(\data_pos_reg[7]_i_14_n_5 ),
        .I2(spr_att_vdp_dout__0[52]),
        .I3(spr_att_vdp_dout[51]),
        .I4(\data_pos_reg[7]_i_14_n_4 ),
        .I5(state[1]),
        .O(p_0_out[3]));
  LUT6 #(
    .INIT(64'hBAEFBFEAAAAAAAAA)) 
    \data_pos[3]_i_3 
       (.I0(\data_pos[3]_i_11_n_0 ),
        .I1(\data_pos_reg[7]_i_14_n_6 ),
        .I2(spr_att_vdp_dout__0[52]),
        .I3(spr_att_vdp_dout[51]),
        .I4(\data_pos_reg[7]_i_14_n_5 ),
        .I5(state[1]),
        .O(p_0_out[2]));
  LUT6 #(
    .INIT(64'hBAEFBFEAAAAAAAAA)) 
    \data_pos[3]_i_4 
       (.I0(\data_pos[3]_i_12_n_0 ),
        .I1(\data_pos_reg[7]_i_14_n_7 ),
        .I2(spr_att_vdp_dout__0[52]),
        .I3(spr_att_vdp_dout[51]),
        .I4(\data_pos_reg[7]_i_14_n_6 ),
        .I5(state[1]),
        .O(p_0_out[1]));
  LUT6 #(
    .INIT(64'h88888FF888888888)) 
    \data_pos[3]_i_5 
       (.I0(\data_pos_reg_n_0_[0] ),
        .I1(state[3]),
        .I2(\data_pos_reg[7]_i_14_n_7 ),
        .I3(spr_att_vdp_dout[51]),
        .I4(spr_att_vdp_dout__0[52]),
        .I5(state[1]),
        .O(p_0_out[0]));
  LUT3 #(
    .INIT(8'h6A)) 
    \data_pos[3]_i_6 
       (.I0(p_0_out[3]),
        .I1(spr_att_vdp_dout__0[39]),
        .I2(state[1]),
        .O(\data_pos[3]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \data_pos[3]_i_7 
       (.I0(p_0_out[2]),
        .I1(spr_att_vdp_dout__0[38]),
        .I2(state[1]),
        .O(\data_pos[3]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \data_pos[3]_i_8 
       (.I0(p_0_out[1]),
        .I1(spr_att_vdp_dout__0[37]),
        .I2(state[1]),
        .O(\data_pos[3]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h56)) 
    \data_pos[3]_i_9 
       (.I0(p_0_out[0]),
        .I1(spr_att_vdp_dout__0[36]),
        .I2(state[3]),
        .O(\data_pos[3]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \data_pos[7]_i_10 
       (.I0(state[3]),
        .I1(\data_pos_reg_n_0_[6] ),
        .O(\data_pos[7]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_pos[7]_i_12 
       (.I0(state[3]),
        .I1(\data_pos_reg_n_0_[5] ),
        .O(\data_pos[7]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_pos[7]_i_13 
       (.I0(state[3]),
        .I1(\data_pos_reg_n_0_[4] ),
        .O(\data_pos[7]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \data_pos[7]_i_15 
       (.I0(\map_r_addr_reg[13] [4]),
        .I1(\map_r_addr_reg[13] [3]),
        .I2(\map_r_addr_reg[13] [1]),
        .I3(\map_r_addr_reg[13] [2]),
        .O(\data_pos[7]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h80007FFF7FFF8000)) 
    \data_pos[7]_i_16 
       (.I0(\map_r_addr_reg[13] [2]),
        .I1(\map_r_addr_reg[13] [1]),
        .I2(\map_r_addr_reg[13] [4]),
        .I3(\map_r_addr_reg[13] [3]),
        .I4(\map_r_addr_reg[13] [5]),
        .I5(spr_att_vdp_dout[21]),
        .O(\data_pos[7]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h7F80807F)) 
    \data_pos[7]_i_17 
       (.I0(\map_r_addr_reg[13] [2]),
        .I1(\map_r_addr_reg[13] [1]),
        .I2(\map_r_addr_reg[13] [3]),
        .I3(\map_r_addr_reg[13] [4]),
        .I4(spr_att_vdp_dout[20]),
        .O(\data_pos[7]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \data_pos[7]_i_18 
       (.I0(\map_r_addr_reg[13] [3]),
        .I1(\map_r_addr_reg[13] [2]),
        .I2(\map_r_addr_reg[13] [1]),
        .O(\data_pos[7]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \data_pos[7]_i_19 
       (.I0(\map_r_addr_reg[13] [1]),
        .I1(\map_r_addr_reg[13] [2]),
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
       (.I0(\map_r_addr_reg[13] [1]),
        .O(\data_pos[7]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h7887)) 
    \data_pos[7]_i_21 
       (.I0(\map_r_addr_reg[13] [1]),
        .I1(\map_r_addr_reg[13] [2]),
        .I2(\map_r_addr_reg[13] [3]),
        .I3(spr_att_vdp_dout[19]),
        .O(\data_pos[7]_i_21_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \data_pos[7]_i_22 
       (.I0(\map_r_addr_reg[13] [2]),
        .I1(\map_r_addr_reg[13] [1]),
        .I2(spr_att_vdp_dout[18]),
        .O(\data_pos[7]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \data_pos[7]_i_23 
       (.I0(\map_r_addr_reg[13] [1]),
        .I1(spr_att_vdp_dout[17]),
        .O(\data_pos[7]_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \data_pos[7]_i_24 
       (.I0(\map_r_addr_reg[13] [0]),
        .I1(spr_att_vdp_dout[16]),
        .O(\data_pos[7]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEBAAAAAAAAAAA)) 
    \data_pos[7]_i_3 
       (.I0(\data_pos[7]_i_10_n_0 ),
        .I1(spr_att_vdp_dout__0[52]),
        .I2(spr_att_vdp_dout[51]),
        .I3(\data_pos_reg[7]_i_11_n_7 ),
        .I4(\data_pos_reg[7]_i_11_n_6 ),
        .I5(state[1]),
        .O(p_0_out[6]));
  LUT6 #(
    .INIT(64'hAFFBBEEAAAAAAAAA)) 
    \data_pos[7]_i_4 
       (.I0(\data_pos[7]_i_12_n_0 ),
        .I1(spr_att_vdp_dout__0[52]),
        .I2(\data_pos_reg[7]_i_11_n_7 ),
        .I3(spr_att_vdp_dout[51]),
        .I4(\data_pos_reg[7]_i_11_n_6 ),
        .I5(state[1]),
        .O(p_0_out[5]));
  LUT6 #(
    .INIT(64'hBEFFBEAAAAAAAAAA)) 
    \data_pos[7]_i_5 
       (.I0(\data_pos[7]_i_13_n_0 ),
        .I1(spr_att_vdp_dout[51]),
        .I2(\data_pos_reg[7]_i_14_n_4 ),
        .I3(spr_att_vdp_dout__0[52]),
        .I4(\data_pos_reg[7]_i_11_n_7 ),
        .I5(state[1]),
        .O(p_0_out[4]));
  LUT5 #(
    .INIT(32'h07F8F8F8)) 
    \data_pos[7]_i_6 
       (.I0(state[3]),
        .I1(\data_pos_reg_n_0_[7] ),
        .I2(\data_pos[10]_i_8_n_0 ),
        .I3(spr_att_vdp_dout__0[43]),
        .I4(state[1]),
        .O(\data_pos[7]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \data_pos[7]_i_7 
       (.I0(p_0_out[6]),
        .I1(spr_att_vdp_dout__0[42]),
        .I2(state[1]),
        .O(\data_pos[7]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \data_pos[7]_i_8 
       (.I0(p_0_out[5]),
        .I1(spr_att_vdp_dout__0[41]),
        .I2(state[1]),
        .O(\data_pos[7]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \data_pos[7]_i_9 
       (.I0(p_0_out[4]),
        .I1(spr_att_vdp_dout__0[40]),
        .I2(state[1]),
        .O(\data_pos[7]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \data_pos_reg[0] 
       (.C(s_axi_aclk),
        .CE(data_pos),
        .D(\data_pos_reg[3]_i_1_n_7 ),
        .Q(\data_pos_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_pos_reg[10] 
       (.C(s_axi_aclk),
        .CE(data_pos),
        .D(\data_pos_reg[10]_i_2_n_5 ),
        .Q(\data_pos_reg_n_0_[10] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \data_pos_reg[10]_i_2 
       (.CI(\data_pos_reg[7]_i_1_n_0 ),
        .CO({\NLW_data_pos_reg[10]_i_2_CO_UNCONNECTED [3:2],\data_pos_reg[10]_i_2_n_2 ,\data_pos_reg[10]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,p_0_out[9:8]}),
        .O({\NLW_data_pos_reg[10]_i_2_O_UNCONNECTED [3],\data_pos_reg[10]_i_2_n_5 ,\data_pos_reg[10]_i_2_n_6 ,\data_pos_reg[10]_i_2_n_7 }),
        .S({1'b0,\data_pos[10]_i_5_n_0 ,\data_pos[10]_i_6_n_0 ,\data_pos[10]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \data_pos_reg[1] 
       (.C(s_axi_aclk),
        .CE(data_pos),
        .D(\data_pos_reg[3]_i_1_n_6 ),
        .Q(\data_pos_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_pos_reg[2] 
       (.C(s_axi_aclk),
        .CE(data_pos),
        .D(\data_pos_reg[3]_i_1_n_5 ),
        .Q(\data_pos_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_pos_reg[3] 
       (.C(s_axi_aclk),
        .CE(data_pos),
        .D(\data_pos_reg[3]_i_1_n_4 ),
        .Q(\data_pos_reg_n_0_[3] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \data_pos_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\data_pos_reg[3]_i_1_n_0 ,\data_pos_reg[3]_i_1_n_1 ,\data_pos_reg[3]_i_1_n_2 ,\data_pos_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(p_0_out[3:0]),
        .O({\data_pos_reg[3]_i_1_n_4 ,\data_pos_reg[3]_i_1_n_5 ,\data_pos_reg[3]_i_1_n_6 ,\data_pos_reg[3]_i_1_n_7 }),
        .S({\data_pos[3]_i_6_n_0 ,\data_pos[3]_i_7_n_0 ,\data_pos[3]_i_8_n_0 ,\data_pos[3]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \data_pos_reg[4] 
       (.C(s_axi_aclk),
        .CE(data_pos),
        .D(\data_pos_reg[7]_i_1_n_7 ),
        .Q(\data_pos_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_pos_reg[5] 
       (.C(s_axi_aclk),
        .CE(data_pos),
        .D(\data_pos_reg[7]_i_1_n_6 ),
        .Q(\data_pos_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_pos_reg[6] 
       (.C(s_axi_aclk),
        .CE(data_pos),
        .D(\data_pos_reg[7]_i_1_n_5 ),
        .Q(\data_pos_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_pos_reg[7] 
       (.C(s_axi_aclk),
        .CE(data_pos),
        .D(\data_pos_reg[7]_i_1_n_4 ),
        .Q(\data_pos_reg_n_0_[7] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \data_pos_reg[7]_i_1 
       (.CI(\data_pos_reg[3]_i_1_n_0 ),
        .CO({\data_pos_reg[7]_i_1_n_0 ,\data_pos_reg[7]_i_1_n_1 ,\data_pos_reg[7]_i_1_n_2 ,\data_pos_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(p_0_out[7:4]),
        .O({\data_pos_reg[7]_i_1_n_4 ,\data_pos_reg[7]_i_1_n_5 ,\data_pos_reg[7]_i_1_n_6 ,\data_pos_reg[7]_i_1_n_7 }),
        .S({\data_pos[7]_i_6_n_0 ,\data_pos[7]_i_7_n_0 ,\data_pos[7]_i_8_n_0 ,\data_pos[7]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \data_pos_reg[7]_i_11 
       (.CI(\data_pos_reg[7]_i_14_n_0 ),
        .CO({\NLW_data_pos_reg[7]_i_11_CO_UNCONNECTED [3:1],\data_pos_reg[7]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\data_pos[7]_i_15_n_0 }),
        .O({\NLW_data_pos_reg[7]_i_11_O_UNCONNECTED [3:2],\data_pos_reg[7]_i_11_n_6 ,\data_pos_reg[7]_i_11_n_7 }),
        .S({1'b0,1'b0,\data_pos[7]_i_16_n_0 ,\data_pos[7]_i_17_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \data_pos_reg[7]_i_14 
       (.CI(1'b0),
        .CO({\data_pos_reg[7]_i_14_n_0 ,\data_pos_reg[7]_i_14_n_1 ,\data_pos_reg[7]_i_14_n_2 ,\data_pos_reg[7]_i_14_n_3 }),
        .CYINIT(1'b1),
        .DI({\data_pos[7]_i_18_n_0 ,\data_pos[7]_i_19_n_0 ,\data_pos[7]_i_20_n_0 ,\map_r_addr_reg[13] [0]}),
        .O({\data_pos_reg[7]_i_14_n_4 ,\data_pos_reg[7]_i_14_n_5 ,\data_pos_reg[7]_i_14_n_6 ,\data_pos_reg[7]_i_14_n_7 }),
        .S({\data_pos[7]_i_21_n_0 ,\data_pos[7]_i_22_n_0 ,\data_pos[7]_i_23_n_0 ,\data_pos[7]_i_24_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \data_pos_reg[8] 
       (.C(s_axi_aclk),
        .CE(data_pos),
        .D(\data_pos_reg[10]_i_2_n_7 ),
        .Q(\data_pos_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_pos_reg[9] 
       (.C(s_axi_aclk),
        .CE(data_pos),
        .D(\data_pos_reg[10]_i_2_n_6 ),
        .Q(\data_pos_reg_n_0_[9] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \data_r_addr[2]_i_1 
       (.I0(\map_r_addr_reg[13] [1]),
        .I1(\map_r_addr_reg[13] [2]),
        .O(gen_line[0]));
  LUT3 #(
    .INIT(8'h0E)) 
    \gen_done[1]_i_1 
       (.I0(gen_done),
        .I1(s0_done),
        .I2(gen_done0),
        .O(\gen_done_reg[1] ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \gen_fin_data[0]_i_1 
       (.I0(doutb[0]),
        .I1(s0_dout[13]),
        .I2(s0_dout[12]),
        .I3(s0_dout[15]),
        .I4(s0_dout[14]),
        .I5(s0_dout[0]),
        .O(\bbstub_doutb[11] [0]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \gen_fin_data[10]_i_1 
       (.I0(doutb[10]),
        .I1(s0_dout[13]),
        .I2(s0_dout[12]),
        .I3(s0_dout[15]),
        .I4(s0_dout[14]),
        .I5(s0_dout[10]),
        .O(\bbstub_doutb[11] [10]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \gen_fin_data[11]_i_1 
       (.I0(doutb[11]),
        .I1(s0_dout[13]),
        .I2(s0_dout[12]),
        .I3(s0_dout[15]),
        .I4(s0_dout[14]),
        .I5(s0_dout[11]),
        .O(\bbstub_doutb[11] [11]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \gen_fin_data[1]_i_1 
       (.I0(doutb[1]),
        .I1(s0_dout[13]),
        .I2(s0_dout[12]),
        .I3(s0_dout[15]),
        .I4(s0_dout[14]),
        .I5(s0_dout[1]),
        .O(\bbstub_doutb[11] [1]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \gen_fin_data[2]_i_1 
       (.I0(doutb[2]),
        .I1(s0_dout[13]),
        .I2(s0_dout[12]),
        .I3(s0_dout[15]),
        .I4(s0_dout[14]),
        .I5(s0_dout[2]),
        .O(\bbstub_doutb[11] [2]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \gen_fin_data[3]_i_1 
       (.I0(doutb[3]),
        .I1(s0_dout[13]),
        .I2(s0_dout[12]),
        .I3(s0_dout[15]),
        .I4(s0_dout[14]),
        .I5(s0_dout[3]),
        .O(\bbstub_doutb[11] [3]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \gen_fin_data[4]_i_1 
       (.I0(doutb[4]),
        .I1(s0_dout[13]),
        .I2(s0_dout[12]),
        .I3(s0_dout[15]),
        .I4(s0_dout[14]),
        .I5(s0_dout[4]),
        .O(\bbstub_doutb[11] [4]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \gen_fin_data[5]_i_1 
       (.I0(doutb[5]),
        .I1(s0_dout[13]),
        .I2(s0_dout[12]),
        .I3(s0_dout[15]),
        .I4(s0_dout[14]),
        .I5(s0_dout[5]),
        .O(\bbstub_doutb[11] [5]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \gen_fin_data[6]_i_1 
       (.I0(doutb[6]),
        .I1(s0_dout[13]),
        .I2(s0_dout[12]),
        .I3(s0_dout[15]),
        .I4(s0_dout[14]),
        .I5(s0_dout[6]),
        .O(\bbstub_doutb[11] [6]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \gen_fin_data[7]_i_1 
       (.I0(doutb[7]),
        .I1(s0_dout[13]),
        .I2(s0_dout[12]),
        .I3(s0_dout[15]),
        .I4(s0_dout[14]),
        .I5(s0_dout[7]),
        .O(\bbstub_doutb[11] [7]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \gen_fin_data[8]_i_1 
       (.I0(doutb[8]),
        .I1(s0_dout[13]),
        .I2(s0_dout[12]),
        .I3(s0_dout[15]),
        .I4(s0_dout[14]),
        .I5(s0_dout[8]),
        .O(\bbstub_doutb[11] [8]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \gen_fin_data[9]_i_1 
       (.I0(doutb[9]),
        .I1(s0_dout[13]),
        .I2(s0_dout[12]),
        .I3(s0_dout[15]),
        .I4(s0_dout[14]),
        .I5(s0_dout[9]),
        .O(\bbstub_doutb[11] [9]));
  LUT5 #(
    .INIT(32'h000000E0)) 
    \line_data[10]_i_1 
       (.I0(\line_data[15]_i_4_n_0 ),
        .I1(\line_data[14]_i_2_n_0 ),
        .I2(line_we21_in),
        .I3(\line_data_reg[15]_i_2_n_5 ),
        .I4(\line_data[10]_i_2_n_0 ),
        .O(p_33_out[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[10]_i_10 
       (.I0(\row_buf_reg[26]_18 [10]),
        .I1(\row_buf_reg[22]_14 [10]),
        .I2(\line_word_reg_n_0_[1] ),
        .I3(\row_buf_reg[18]_10 [10]),
        .I4(\line_word_reg_n_0_[0] ),
        .I5(\row_buf_reg[14]_6 [10]),
        .O(\line_data[10]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[10]_i_11 
       (.I0(\row_buf_reg[11]_3 [10]),
        .I1(\row_buf_reg_n_0_[7][10] ),
        .I2(\line_word_reg_n_0_[1] ),
        .I3(\row_buf_reg_n_0_[3][10] ),
        .I4(\line_word_reg_n_0_[0] ),
        .I5(\row_buf_reg[31]_23 [10]),
        .O(\line_data[10]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[10]_i_12 
       (.I0(\row_buf_reg[27]_19 [10]),
        .I1(\row_buf_reg[23]_15 [10]),
        .I2(\line_word_reg_n_0_[1] ),
        .I3(\row_buf_reg[19]_11 [10]),
        .I4(\line_word_reg_n_0_[0] ),
        .I5(\row_buf_reg[15]_7 [10]),
        .O(\line_data[10]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[10]_i_13 
       (.I0(\row_buf_reg[12]_4 [10]),
        .I1(\row_buf_reg[8]_0 [10]),
        .I2(\line_word_reg_n_0_[1] ),
        .I3(\row_buf_reg_n_0_[4][10] ),
        .I4(\line_word_reg_n_0_[0] ),
        .I5(\row_buf_reg_n_0_[0][10] ),
        .O(\line_data[10]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[10]_i_14 
       (.I0(\row_buf_reg[28]_20 [10]),
        .I1(\row_buf_reg[24]_16 [10]),
        .I2(\line_word_reg_n_0_[1] ),
        .I3(\row_buf_reg[20]_12 [10]),
        .I4(\line_word_reg_n_0_[0] ),
        .I5(\row_buf_reg[16]_8 [10]),
        .O(\line_data[10]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \line_data[10]_i_2 
       (.I0(\line_data_reg[10]_i_3_n_0 ),
        .I1(\line_data_reg[10]_i_4_n_0 ),
        .I2(\line_off_reg[1]__0_rep__1_n_0 ),
        .I3(\line_data_reg[10]_i_5_n_0 ),
        .I4(\line_off_reg[0]__0_rep__1_n_0 ),
        .I5(\line_data_reg[10]_i_6_n_0 ),
        .O(\line_data[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[10]_i_7 
       (.I0(\row_buf_reg[9]_1 [10]),
        .I1(\row_buf_reg_n_0_[5][10] ),
        .I2(\line_word_reg_n_0_[1] ),
        .I3(\row_buf_reg_n_0_[1][10] ),
        .I4(\line_word_reg_n_0_[0] ),
        .I5(\row_buf_reg[29]_21 [10]),
        .O(\line_data[10]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[10]_i_8 
       (.I0(\row_buf_reg[25]_17 [10]),
        .I1(\row_buf_reg[21]_13 [10]),
        .I2(\line_word_reg_n_0_[1] ),
        .I3(\row_buf_reg[17]_9 [10]),
        .I4(\line_word_reg_n_0_[0] ),
        .I5(\row_buf_reg[13]_5 [10]),
        .O(\line_data[10]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[10]_i_9 
       (.I0(\row_buf_reg[10]_2 [10]),
        .I1(\row_buf_reg_n_0_[6][10] ),
        .I2(\line_word_reg_n_0_[1] ),
        .I3(\row_buf_reg_n_0_[2][10] ),
        .I4(\line_word_reg_n_0_[0] ),
        .I5(\row_buf_reg[30]_22 [10]),
        .O(\line_data[10]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h000000E0E0E000E0)) 
    \line_data[11]_i_1 
       (.I0(\line_data[15]_i_4_n_0 ),
        .I1(\line_data[14]_i_2_n_0 ),
        .I2(\line_data[11]_i_2_n_0 ),
        .I3(\line_data_reg[11]_i_3_n_0 ),
        .I4(\line_off_reg[1]__0_rep__1_n_0 ),
        .I5(\line_data[11]_i_4_n_0 ),
        .O(p_33_out[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[11]_i_10 
       (.I0(\row_buf_reg[10]_2 [11]),
        .I1(\row_buf_reg_n_0_[6][11] ),
        .I2(\line_word_reg_n_0_[1] ),
        .I3(\row_buf_reg_n_0_[2][11] ),
        .I4(\line_word_reg_n_0_[0] ),
        .I5(\row_buf_reg[30]_22 [11]),
        .O(\line_data[11]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \line_data[11]_i_11 
       (.I0(\row_buf_reg_n_0_[4][11] ),
        .I1(\row_buf_reg_n_0_[0][11] ),
        .I2(\line_word_reg_n_0_[1] ),
        .I3(\row_buf_reg[12]_4 [11]),
        .I4(\line_word_reg_n_0_[0] ),
        .I5(\row_buf_reg[8]_0 [11]),
        .O(\line_data[11]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \line_data[11]_i_12 
       (.I0(\row_buf_reg[20]_12 [11]),
        .I1(\row_buf_reg[16]_8 [11]),
        .I2(\line_word_reg_n_0_[1] ),
        .I3(\row_buf_reg[28]_20 [11]),
        .I4(\line_word_reg_n_0_[0] ),
        .I5(\row_buf_reg[24]_16 [11]),
        .O(\line_data[11]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \line_data[11]_i_13 
       (.I0(\row_buf_reg_n_0_[3][11] ),
        .I1(\row_buf_reg[31]_23 [11]),
        .I2(\line_word_reg_n_0_[1] ),
        .I3(\row_buf_reg[11]_3 [11]),
        .I4(\line_word_reg_n_0_[0] ),
        .I5(\row_buf_reg_n_0_[7][11] ),
        .O(\line_data[11]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \line_data[11]_i_14 
       (.I0(\row_buf_reg[19]_11 [11]),
        .I1(\row_buf_reg[15]_7 [11]),
        .I2(\line_word_reg_n_0_[1] ),
        .I3(\row_buf_reg[27]_19 [11]),
        .I4(\line_word_reg_n_0_[0] ),
        .I5(\row_buf_reg[23]_15 [11]),
        .O(\line_data[11]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \line_data[11]_i_2 
       (.I0(line_we21_in),
        .I1(\line_data_reg[15]_i_2_n_5 ),
        .O(\line_data[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA0AFC0C0A0AFCFCF)) 
    \line_data[11]_i_4 
       (.I0(\line_data[11]_i_7_n_0 ),
        .I1(\line_data[11]_i_8_n_0 ),
        .I2(\line_off_reg[0]__0_rep__1_n_0 ),
        .I3(\line_data[11]_i_9_n_0 ),
        .I4(\line_word_reg_n_0_[2] ),
        .I5(\line_data[11]_i_10_n_0 ),
        .O(\line_data[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \line_data[11]_i_7 
       (.I0(\row_buf_reg[17]_9 [11]),
        .I1(\row_buf_reg[13]_5 [11]),
        .I2(\line_word_reg_n_0_[1] ),
        .I3(\row_buf_reg[25]_17 [11]),
        .I4(\line_word_reg_n_0_[0] ),
        .I5(\row_buf_reg[21]_13 [11]),
        .O(\line_data[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \line_data[11]_i_8 
       (.I0(\row_buf_reg_n_0_[1][11] ),
        .I1(\row_buf_reg[29]_21 [11]),
        .I2(\line_word_reg_n_0_[1] ),
        .I3(\row_buf_reg[9]_1 [11]),
        .I4(\line_word_reg_n_0_[0] ),
        .I5(\row_buf_reg_n_0_[5][11] ),
        .O(\line_data[11]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[11]_i_9 
       (.I0(\row_buf_reg[26]_18 [11]),
        .I1(\row_buf_reg[22]_14 [11]),
        .I2(\line_word_reg_n_0_[1] ),
        .I3(\row_buf_reg[18]_10 [11]),
        .I4(\line_word_reg_n_0_[0] ),
        .I5(\row_buf_reg[14]_6 [11]),
        .O(\line_data[11]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \line_data[14]_i_1 
       (.I0(line_we21_in),
        .I1(\line_data_reg[15]_i_2_n_5 ),
        .I2(\line_data[14]_i_2_n_0 ),
        .O(\line_data[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[14]_i_10 
       (.I0(\row_buf_reg[26]_18 [12]),
        .I1(\row_buf_reg[22]_14 [12]),
        .I2(\line_word_reg_n_0_[1] ),
        .I3(\row_buf_reg[18]_10 [12]),
        .I4(\line_word_reg_n_0_[0] ),
        .I5(\row_buf_reg[14]_6 [12]),
        .O(\line_data[14]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[14]_i_11 
       (.I0(\row_buf_reg[11]_3 [12]),
        .I1(\row_buf_reg_n_0_[7][12] ),
        .I2(\line_word_reg_n_0_[1] ),
        .I3(\row_buf_reg_n_0_[3][12] ),
        .I4(\line_word_reg_n_0_[0] ),
        .I5(\row_buf_reg[31]_23 [12]),
        .O(\line_data[14]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[14]_i_12 
       (.I0(\row_buf_reg[27]_19 [12]),
        .I1(\row_buf_reg[23]_15 [12]),
        .I2(\line_word_reg_n_0_[1] ),
        .I3(\row_buf_reg[19]_11 [12]),
        .I4(\line_word_reg_n_0_[0] ),
        .I5(\row_buf_reg[15]_7 [12]),
        .O(\line_data[14]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[14]_i_13 
       (.I0(\row_buf_reg[12]_4 [12]),
        .I1(\row_buf_reg[8]_0 [12]),
        .I2(\line_word_reg_n_0_[1] ),
        .I3(\row_buf_reg_n_0_[4][12] ),
        .I4(\line_word_reg_n_0_[0] ),
        .I5(\row_buf_reg_n_0_[0][12] ),
        .O(\line_data[14]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[14]_i_14 
       (.I0(\row_buf_reg[28]_20 [12]),
        .I1(\row_buf_reg[24]_16 [12]),
        .I2(\line_word_reg_n_0_[1] ),
        .I3(\row_buf_reg[20]_12 [12]),
        .I4(\line_word_reg_n_0_[0] ),
        .I5(\row_buf_reg[16]_8 [12]),
        .O(\line_data[14]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[14]_i_2 
       (.I0(\line_data_reg[14]_i_3_n_0 ),
        .I1(\line_data_reg[14]_i_4_n_0 ),
        .I2(\line_off_reg[1]__0_rep__1_n_0 ),
        .I3(\line_data_reg[14]_i_5_n_0 ),
        .I4(\line_off_reg[0]__0_rep__1_n_0 ),
        .I5(\line_data_reg[14]_i_6_n_0 ),
        .O(\line_data[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[14]_i_7 
       (.I0(\row_buf_reg[9]_1 [12]),
        .I1(\row_buf_reg_n_0_[5][12] ),
        .I2(\line_word_reg_n_0_[1] ),
        .I3(\row_buf_reg_n_0_[1][12] ),
        .I4(\line_word_reg_n_0_[0] ),
        .I5(\row_buf_reg[29]_21 [12]),
        .O(\line_data[14]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[14]_i_8 
       (.I0(\row_buf_reg[25]_17 [12]),
        .I1(\row_buf_reg[21]_13 [12]),
        .I2(\line_word_reg_n_0_[1] ),
        .I3(\row_buf_reg[17]_9 [12]),
        .I4(\line_word_reg_n_0_[0] ),
        .I5(\row_buf_reg[13]_5 [12]),
        .O(\line_data[14]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[14]_i_9 
       (.I0(\row_buf_reg[10]_2 [12]),
        .I1(\row_buf_reg_n_0_[6][12] ),
        .I2(\line_word_reg_n_0_[1] ),
        .I3(\row_buf_reg_n_0_[2][12] ),
        .I4(\line_word_reg_n_0_[0] ),
        .I5(\row_buf_reg[30]_22 [12]),
        .O(\line_data[14]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \line_data[15]_i_1 
       (.I0(\line_data_reg[15]_i_2_n_5 ),
        .I1(line_we21_in),
        .I2(\line_data[15]_i_4_n_0 ),
        .O(p_33_out[15]));
  LUT2 #(
    .INIT(4'h1)) 
    \line_data[15]_i_10 
       (.I0(\line_data_reg[15]_i_2_n_5 ),
        .I1(line_we3[30]),
        .O(\line_data[15]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \line_data[15]_i_11 
       (.I0(line_we3[29]),
        .I1(line_we3[28]),
        .O(\line_data[15]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[15]_i_17 
       (.I0(\line_off_reg[1]__0_rep__1_n_0 ),
        .I1(\line_off_reg[0]__0_rep__1_n_0 ),
        .O(\line_data[15]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[15]_i_18 
       (.I0(\line_off_reg[1]__0_rep__1_n_0 ),
        .I1(\line_off_reg[0]__0_rep__1_n_0 ),
        .O(\line_data[15]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[15]_i_19 
       (.I0(\line_off_reg[1]__0_rep__1_n_0 ),
        .I1(\line_off_reg[0]__0_rep__1_n_0 ),
        .O(\line_data[15]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[15]_i_20 
       (.I0(\line_off_reg[1]__0_rep__1_n_0 ),
        .I1(\line_off_reg[0]__0_rep__1_n_0 ),
        .O(\line_data[15]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \line_data[15]_i_22 
       (.I0(line_we3[27]),
        .I1(line_we3[26]),
        .O(\line_data[15]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \line_data[15]_i_23 
       (.I0(line_we3[25]),
        .I1(line_we3[24]),
        .O(\line_data[15]_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \line_data[15]_i_24 
       (.I0(line_we3[23]),
        .I1(line_we3[22]),
        .O(\line_data[15]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \line_data[15]_i_25 
       (.I0(line_we3[21]),
        .I1(line_we3[20]),
        .O(\line_data[15]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[15]_i_26 
       (.I0(\row_buf_reg[9]_1 [15]),
        .I1(\row_buf_reg_n_0_[5][12] ),
        .I2(\line_word_reg_n_0_[1] ),
        .I3(\row_buf_reg_n_0_[1][15] ),
        .I4(\line_word_reg_n_0_[0] ),
        .I5(\row_buf_reg[29]_21 [12]),
        .O(\line_data[15]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[15]_i_27 
       (.I0(\row_buf_reg[25]_17 [15]),
        .I1(\row_buf_reg[21]_13 [12]),
        .I2(\line_word_reg_n_0_[1] ),
        .I3(\row_buf_reg[17]_9 [15]),
        .I4(\line_word_reg_n_0_[0] ),
        .I5(\row_buf_reg[13]_5 [12]),
        .O(\line_data[15]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[15]_i_28 
       (.I0(\row_buf_reg[10]_2 [12]),
        .I1(\row_buf_reg_n_0_[6][15] ),
        .I2(\line_word_reg_n_0_[1] ),
        .I3(\row_buf_reg_n_0_[2][12] ),
        .I4(\line_word_reg_n_0_[0] ),
        .I5(\row_buf_reg[30]_22 [15]),
        .O(\line_data[15]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[15]_i_29 
       (.I0(\row_buf_reg[26]_18 [12]),
        .I1(\row_buf_reg[22]_14 [15]),
        .I2(\line_word_reg_n_0_[1] ),
        .I3(\row_buf_reg[18]_10 [12]),
        .I4(\line_word_reg_n_0_[0] ),
        .I5(\row_buf_reg[14]_6 [15]),
        .O(\line_data[15]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[15]_i_30 
       (.I0(\row_buf_reg[11]_3 [15]),
        .I1(\row_buf_reg_n_0_[7][15] ),
        .I2(\line_word_reg_n_0_[1] ),
        .I3(\row_buf_reg_n_0_[3][15] ),
        .I4(\line_word_reg_n_0_[0] ),
        .I5(\row_buf_reg[31]_23 [12]),
        .O(\line_data[15]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[15]_i_31 
       (.I0(\row_buf_reg[27]_19 [15]),
        .I1(\row_buf_reg[23]_15 [15]),
        .I2(\line_word_reg_n_0_[1] ),
        .I3(\row_buf_reg[19]_11 [15]),
        .I4(\line_word_reg_n_0_[0] ),
        .I5(\row_buf_reg[15]_7 [15]),
        .O(\line_data[15]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[15]_i_32 
       (.I0(\row_buf_reg[12]_4 [15]),
        .I1(\row_buf_reg[8]_0 [15]),
        .I2(\line_word_reg_n_0_[1] ),
        .I3(\row_buf_reg_n_0_[4][15] ),
        .I4(\line_word_reg_n_0_[0] ),
        .I5(\row_buf_reg_n_0_[0][12] ),
        .O(\line_data[15]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[15]_i_33 
       (.I0(\row_buf_reg[28]_20 [15]),
        .I1(\row_buf_reg[24]_16 [15]),
        .I2(\line_word_reg_n_0_[1] ),
        .I3(\row_buf_reg[20]_12 [15]),
        .I4(\line_word_reg_n_0_[0] ),
        .I5(\row_buf_reg[16]_8 [12]),
        .O(\line_data[15]_i_33_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[15]_i_35 
       (.I0(\line_off_reg[1]__0_rep__1_n_0 ),
        .I1(\line_off_reg[0]__0_rep__1_n_0 ),
        .O(\line_data[15]_i_35_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[15]_i_36 
       (.I0(\line_off_reg[1]__0_rep__1_n_0 ),
        .I1(\line_off_reg[0]__0_rep__1_n_0 ),
        .O(\line_data[15]_i_36_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[15]_i_37 
       (.I0(\line_off_reg[1]__0_rep__1_n_0 ),
        .I1(\line_off_reg[0]__0_rep__1_n_0 ),
        .O(\line_data[15]_i_37_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[15]_i_38 
       (.I0(\line_off_reg[1]__0_rep__1_n_0 ),
        .I1(\line_off_reg[0]__0_rep__1_n_0 ),
        .O(\line_data[15]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[15]_i_4 
       (.I0(\line_data_reg[15]_i_12_n_0 ),
        .I1(\line_data_reg[15]_i_13_n_0 ),
        .I2(\line_off_reg[1]__0_rep__1_n_0 ),
        .I3(\line_data_reg[15]_i_14_n_0 ),
        .I4(\line_off_reg[0]__0_rep__1_n_0 ),
        .I5(\line_data_reg[15]_i_15_n_0 ),
        .O(\line_data[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \line_data[15]_i_40 
       (.I0(line_we3[19]),
        .I1(line_we3[18]),
        .O(\line_data[15]_i_40_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \line_data[15]_i_41 
       (.I0(line_we3[17]),
        .I1(line_we3[16]),
        .O(\line_data[15]_i_41_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \line_data[15]_i_42 
       (.I0(line_we3[15]),
        .I1(line_we3[14]),
        .O(\line_data[15]_i_42_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \line_data[15]_i_43 
       (.I0(line_we3[13]),
        .I1(line_we3[12]),
        .O(\line_data[15]_i_43_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[15]_i_45 
       (.I0(\line_off_reg[1]__0_rep__1_n_0 ),
        .I1(\line_off_reg[0]__0_rep__1_n_0 ),
        .O(\line_data[15]_i_45_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[15]_i_46 
       (.I0(\line_off_reg[1]__0_rep__1_n_0 ),
        .I1(\line_off_reg[0]__0_rep__1_n_0 ),
        .O(\line_data[15]_i_46_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[15]_i_47 
       (.I0(\line_off_reg[1]__0_rep__1_n_0 ),
        .I1(\line_off_reg[0]__0_rep__1_n_0 ),
        .O(\line_data[15]_i_47_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[15]_i_48 
       (.I0(\line_off_reg[1]__0_rep__1_n_0 ),
        .I1(\line_off_reg[0]__0_rep__1_n_0 ),
        .O(\line_data[15]_i_48_n_0 ));
  LUT3 #(
    .INIT(8'h23)) 
    \line_data[15]_i_49 
       (.I0(spr_att_vdp_dout__0[52]),
        .I1(line_we3[5]),
        .I2(line_we3[4]),
        .O(\line_data[15]_i_49_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \line_data[15]_i_50 
       (.I0(line_we3[11]),
        .I1(line_we3[10]),
        .O(\line_data[15]_i_50_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \line_data[15]_i_51 
       (.I0(line_we3[9]),
        .I1(line_we3[8]),
        .O(\line_data[15]_i_51_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \line_data[15]_i_52 
       (.I0(line_we3[7]),
        .I1(line_we3[6]),
        .O(\line_data[15]_i_52_n_0 ));
  LUT3 #(
    .INIT(8'h24)) 
    \line_data[15]_i_53 
       (.I0(line_we3[5]),
        .I1(line_we3[4]),
        .I2(spr_att_vdp_dout__0[52]),
        .O(\line_data[15]_i_53_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[15]_i_55 
       (.I0(\line_off_reg[1]__0_rep__1_n_0 ),
        .I1(\line_off_reg[0]__0_rep__1_n_0 ),
        .O(\line_data[15]_i_55_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[15]_i_56 
       (.I0(\line_off_reg[1]__0_rep__1_n_0 ),
        .I1(\line_off_reg[0]__0_rep__1_n_0 ),
        .O(\line_data[15]_i_56_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[15]_i_57 
       (.I0(\line_off_reg[1]__0_rep__1_n_0 ),
        .I1(\line_off_reg[0]__0_rep__1_n_0 ),
        .O(\line_data[15]_i_57_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[15]_i_58 
       (.I0(\line_off_reg[1]__0_rep__1_n_0 ),
        .I1(\line_off_reg[0]__0_rep__1_n_0 ),
        .O(\line_data[15]_i_58_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[15]_i_6 
       (.I0(\line_off_reg[1]__0_rep__1_n_0 ),
        .I1(\line_off_reg[0]__0_rep__1_n_0 ),
        .O(\line_data[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[15]_i_61 
       (.I0(\line_off_reg[1]__0_rep__1_n_0 ),
        .I1(\line_off_reg[0]__0_rep__1_n_0 ),
        .O(\line_data[15]_i_61_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[15]_i_62 
       (.I0(\line_off_reg[1]__0_rep__1_n_0 ),
        .I1(\line_off_reg[0]__0_rep__1_n_0 ),
        .O(\line_data[15]_i_62_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[15]_i_63 
       (.I0(\line_off_reg[1]__0_rep__1_n_0 ),
        .I1(\line_off_reg[0]__0_rep__1_n_0 ),
        .O(\line_data[15]_i_63_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[15]_i_64 
       (.I0(\line_off_reg[1]__0_rep__1_n_0 ),
        .I1(\line_off_reg[0]__0_rep__1_n_0 ),
        .O(\line_data[15]_i_64_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[15]_i_65 
       (.I0(\line_off_reg[1]__0_rep__1_n_0 ),
        .I1(\line_off_reg[0]__0_rep__1_n_0 ),
        .O(\line_data[15]_i_65_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[15]_i_66 
       (.I0(\line_off_reg[1]__0_rep__1_n_0 ),
        .I1(\line_off_reg[0]__0_rep__1_n_0 ),
        .O(\line_data[15]_i_66_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[15]_i_67 
       (.I0(\line_off_reg[1]__0_rep__1_n_0 ),
        .I1(\line_off_reg[0]__0_rep__1_n_0 ),
        .O(\line_data[15]_i_67_n_0 ));
  LUT3 #(
    .INIT(8'h56)) 
    \line_data[15]_i_68 
       (.I0(\line_word_reg_n_0_[3] ),
        .I1(\line_off_reg[0]__0_rep__1_n_0 ),
        .I2(\line_off_reg[1]__0_rep__1_n_0 ),
        .O(\line_data[15]_i_68_n_0 ));
  LUT3 #(
    .INIT(8'h56)) 
    \line_data[15]_i_69 
       (.I0(\line_word_reg_n_0_[2] ),
        .I1(\line_off_reg[0]__0_rep__1_n_0 ),
        .I2(\line_off_reg[1]__0_rep__1_n_0 ),
        .O(\line_data[15]_i_69_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[15]_i_7 
       (.I0(\line_off_reg[1]__0_rep__1_n_0 ),
        .I1(\line_off_reg[0]__0_rep__1_n_0 ),
        .O(\line_data[15]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h56)) 
    \line_data[15]_i_70 
       (.I0(\line_word_reg_n_0_[1] ),
        .I1(\line_off_reg[0]__0_rep__1_n_0 ),
        .I2(\line_off_reg[1]__0_rep__1_n_0 ),
        .O(\line_data[15]_i_70_n_0 ));
  LUT3 #(
    .INIT(8'h56)) 
    \line_data[15]_i_71 
       (.I0(\line_word_reg_n_0_[0] ),
        .I1(\line_off_reg[0]__0_rep__1_n_0 ),
        .I2(\line_off_reg[1]__0_rep__1_n_0 ),
        .O(\line_data[15]_i_71_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \line_data[15]_i_72 
       (.I0(\line_off_reg[0]__0_rep__1_n_0 ),
        .I1(\line_off_reg[1]__0_rep__1_n_0 ),
        .O(\line_data[15]_i_72_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \line_data[15]_i_8 
       (.I0(\line_off_reg[1]__0_rep__1_n_0 ),
        .I1(\line_off_reg[0]__0_rep__1_n_0 ),
        .O(\line_data[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000E0E0E000E)) 
    \line_data[18]_i_1 
       (.I0(\line_data_reg[31]_i_2_n_0 ),
        .I1(\line_data_reg[30]_i_2_n_0 ),
        .I2(\line_data[26]_i_2_n_0 ),
        .I3(\line_data[18]_i_2_n_0 ),
        .I4(\line_data[26]_i_4_n_0 ),
        .I5(\line_data_reg[18]_i_3_n_0 ),
        .O(p_33_out__0[18]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \line_data[18]_i_10 
       (.I0(\row_buf_reg[8]_0 [2]),
        .I1(\line_off_reg[0]__0_rep__0_n_0 ),
        .I2(\row_buf_reg[9]_1 [2]),
        .O(\line_data[18]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \line_data[18]_i_11 
       (.I0(\row_buf_reg[10]_2 [2]),
        .I1(\line_off_reg[0]__0_rep__0_n_0 ),
        .I2(\row_buf_reg[11]_3 [2]),
        .O(\line_data[18]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \line_data[18]_i_12 
       (.I0(\row_buf_reg[12]_4 [2]),
        .I1(\line_off_reg[0]__0_rep__0_n_0 ),
        .I2(\row_buf_reg[13]_5 [2]),
        .O(\line_data[18]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \line_data[18]_i_13 
       (.I0(\row_buf_reg[14]_6 [2]),
        .I1(\line_off_reg[0]__0_rep__0_n_0 ),
        .I2(\row_buf_reg[15]_7 [2]),
        .O(\line_data[18]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \line_data[18]_i_14 
       (.I0(\row_buf_reg_n_0_[4][2] ),
        .I1(\line_off_reg[0]__0_rep__0_n_0 ),
        .I2(\row_buf_reg_n_0_[5][2] ),
        .O(\line_data[18]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \line_data[18]_i_15 
       (.I0(\row_buf_reg_n_0_[6][2] ),
        .I1(\line_off_reg[0]__0_rep__0_n_0 ),
        .I2(\row_buf_reg_n_0_[7][2] ),
        .O(\line_data[18]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \line_data[18]_i_16 
       (.I0(\row_buf_reg_n_0_[0][2] ),
        .I1(\line_off_reg[0]__0_rep__0_n_0 ),
        .I2(\row_buf_reg_n_0_[1][2] ),
        .O(\line_data[18]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \line_data[18]_i_17 
       (.I0(\row_buf_reg_n_0_[2][2] ),
        .I1(\line_off_reg[0]__0_rep__0_n_0 ),
        .I2(\row_buf_reg_n_0_[3][2] ),
        .O(\line_data[18]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0F000FFF55335533)) 
    \line_data[18]_i_2 
       (.I0(\line_data[18]_i_4_n_0 ),
        .I1(\line_data[18]_i_5_n_0 ),
        .I2(\line_data[18]_i_6_n_0 ),
        .I3(\line_data[26]_i_10_n_0 ),
        .I4(\line_data[18]_i_7_n_0 ),
        .I5(\line_data[26]_i_8_n_0 ),
        .O(\line_data[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[18]_i_4 
       (.I0(\row_buf_reg[26]_18 [2]),
        .I1(\row_buf_reg[27]_19 [2]),
        .I2(\line_off_reg[1]__0_rep__0_n_0 ),
        .I3(\row_buf_reg[24]_16 [2]),
        .I4(\line_off_reg[0]__0_rep__0_n_0 ),
        .I5(\row_buf_reg[25]_17 [2]),
        .O(\line_data[18]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[18]_i_5 
       (.I0(\row_buf_reg[30]_22 [2]),
        .I1(\row_buf_reg[31]_23 [2]),
        .I2(\line_off_reg[1]__0_rep__0_n_0 ),
        .I3(\row_buf_reg[28]_20 [2]),
        .I4(\line_off_reg[0]__0_rep__0_n_0 ),
        .I5(\row_buf_reg[29]_21 [2]),
        .O(\line_data[18]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[18]_i_6 
       (.I0(\row_buf_reg[18]_10 [2]),
        .I1(\row_buf_reg[19]_11 [2]),
        .I2(\line_off_reg[1]__0_rep__0_n_0 ),
        .I3(\row_buf_reg[16]_8 [2]),
        .I4(\line_off_reg[0]__0_rep__0_n_0 ),
        .I5(\row_buf_reg[17]_9 [2]),
        .O(\line_data[18]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[18]_i_7 
       (.I0(\row_buf_reg[22]_14 [2]),
        .I1(\row_buf_reg[23]_15 [2]),
        .I2(\line_off_reg[1]__0_rep__0_n_0 ),
        .I3(\row_buf_reg[20]_12 [2]),
        .I4(\line_off_reg[0]__0_rep__0_n_0 ),
        .I5(\row_buf_reg[21]_13 [2]),
        .O(\line_data[18]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h33000F5533FF0F55)) 
    \line_data[18]_i_8 
       (.I0(\line_data[18]_i_10_n_0 ),
        .I1(\line_data[18]_i_11_n_0 ),
        .I2(\line_data[18]_i_12_n_0 ),
        .I3(\line_word_reg_n_0_[0] ),
        .I4(\line_off_reg[1]__0_rep__0_n_0 ),
        .I5(\line_data[18]_i_13_n_0 ),
        .O(\line_data[18]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0350035FF350F35F)) 
    \line_data[18]_i_9 
       (.I0(\line_data[18]_i_14_n_0 ),
        .I1(\line_data[18]_i_15_n_0 ),
        .I2(\line_word_reg_n_0_[0] ),
        .I3(\line_off_reg[1]__0_rep__0_n_0 ),
        .I4(\line_data[18]_i_16_n_0 ),
        .I5(\line_data[18]_i_17_n_0 ),
        .O(\line_data[18]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00000E00)) 
    \line_data[19]_i_1 
       (.I0(\line_data_reg[31]_i_2_n_0 ),
        .I1(\line_data_reg[30]_i_2_n_0 ),
        .I2(\line_data[47]_i_4_n_0 ),
        .I3(line_we34_in),
        .I4(\line_data_reg[19]_i_2_n_0 ),
        .O(p_33_out__0[19]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \line_data[19]_i_10 
       (.I0(\row_buf_reg[26]_18 [3]),
        .I1(\line_off_reg[0]__0_rep__0_n_0 ),
        .I2(\row_buf_reg[27]_19 [3]),
        .O(\line_data[19]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[19]_i_11 
       (.I0(\row_buf_reg[30]_22 [3]),
        .I1(\row_buf_reg[31]_23 [3]),
        .I2(\line_off_reg[1]__0_rep__0_n_0 ),
        .I3(\row_buf_reg[28]_20 [3]),
        .I4(\line_off_reg[0]__0_rep__0_n_0 ),
        .I5(\row_buf_reg[29]_21 [3]),
        .O(\line_data[19]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \line_data[19]_i_12 
       (.I0(\row_buf_reg[16]_8 [3]),
        .I1(\line_off_reg[0]__0_rep__0_n_0 ),
        .I2(\row_buf_reg[17]_9 [3]),
        .O(\line_data[19]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \line_data[19]_i_13 
       (.I0(\row_buf_reg[18]_10 [3]),
        .I1(\line_off_reg[0]__0_rep__0_n_0 ),
        .I2(\row_buf_reg[19]_11 [3]),
        .O(\line_data[19]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \line_data[19]_i_14 
       (.I0(\row_buf_reg[22]_14 [3]),
        .I1(\line_off_reg[0]__0_rep__0_n_0 ),
        .I2(\row_buf_reg[23]_15 [3]),
        .O(\line_data[19]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \line_data[19]_i_15 
       (.I0(\row_buf_reg[20]_12 [3]),
        .I1(\line_off_reg[0]__0_rep__0_n_0 ),
        .I2(\row_buf_reg[21]_13 [3]),
        .O(\line_data[19]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \line_data[19]_i_16 
       (.I0(\row_buf_reg[10]_2 [3]),
        .I1(\line_off_reg[0]__0_rep__0_n_0 ),
        .I2(\row_buf_reg[11]_3 [3]),
        .O(\line_data[19]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \line_data[19]_i_17 
       (.I0(\row_buf_reg[8]_0 [3]),
        .I1(\line_off_reg[0]__0_rep__0_n_0 ),
        .I2(\row_buf_reg[9]_1 [3]),
        .O(\line_data[19]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[19]_i_18 
       (.I0(\row_buf_reg[14]_6 [3]),
        .I1(\row_buf_reg[15]_7 [3]),
        .I2(\line_off_reg[1]__0_rep__0_n_0 ),
        .I3(\row_buf_reg[12]_4 [3]),
        .I4(\line_off_reg[0]__0_rep__0_n_0 ),
        .I5(\row_buf_reg[13]_5 [3]),
        .O(\line_data[19]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[19]_i_19 
       (.I0(\row_buf_reg_n_0_[2][3] ),
        .I1(\row_buf_reg_n_0_[3][3] ),
        .I2(\line_off_reg[1]__0_rep__0_n_0 ),
        .I3(\row_buf_reg_n_0_[0][3] ),
        .I4(\line_off_reg[0]__0_rep__0_n_0 ),
        .I5(\row_buf_reg_n_0_[1][3] ),
        .O(\line_data[19]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[19]_i_20 
       (.I0(\row_buf_reg_n_0_[6][3] ),
        .I1(\row_buf_reg_n_0_[7][3] ),
        .I2(\line_off_reg[1]__0_rep__0_n_0 ),
        .I3(\row_buf_reg_n_0_[4][3] ),
        .I4(\line_off_reg[0]__0_rep__0_n_0 ),
        .I5(\row_buf_reg_n_0_[5][3] ),
        .O(\line_data[19]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'h30053FF5)) 
    \line_data[19]_i_5 
       (.I0(\line_data[19]_i_9_n_0 ),
        .I1(\line_data[19]_i_10_n_0 ),
        .I2(\line_word_reg_n_0_[0] ),
        .I3(\line_off_reg[1]__0_rep__0_n_0 ),
        .I4(\line_data[19]_i_11_n_0 ),
        .O(\line_data[19]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h30053F0530F53FF5)) 
    \line_data[19]_i_6 
       (.I0(\line_data[19]_i_12_n_0 ),
        .I1(\line_data[19]_i_13_n_0 ),
        .I2(\line_word_reg_n_0_[0] ),
        .I3(\line_off_reg[1]__0_rep__0_n_0 ),
        .I4(\line_data[19]_i_14_n_0 ),
        .I5(\line_data[19]_i_15_n_0 ),
        .O(\line_data[19]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h50035FF3)) 
    \line_data[19]_i_7 
       (.I0(\line_data[19]_i_16_n_0 ),
        .I1(\line_data[19]_i_17_n_0 ),
        .I2(\line_word_reg_n_0_[0] ),
        .I3(\line_off_reg[1]__0_rep__0_n_0 ),
        .I4(\line_data[19]_i_18_n_0 ),
        .O(\line_data[19]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h417D)) 
    \line_data[19]_i_8 
       (.I0(\line_data[19]_i_19_n_0 ),
        .I1(\line_word_reg_n_0_[0] ),
        .I2(\line_off_reg[1]__0_rep__0_n_0 ),
        .I3(\line_data[19]_i_20_n_0 ),
        .O(\line_data[19]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \line_data[19]_i_9 
       (.I0(\row_buf_reg[24]_16 [3]),
        .I1(\line_off_reg[0]__0_rep__0_n_0 ),
        .I2(\row_buf_reg[25]_17 [3]),
        .O(\line_data[19]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000E0E0E000E)) 
    \line_data[22]_i_1 
       (.I0(\line_data_reg[31]_i_2_n_0 ),
        .I1(\line_data_reg[30]_i_2_n_0 ),
        .I2(\line_data[26]_i_2_n_0 ),
        .I3(\line_data[22]_i_2_n_0 ),
        .I4(\line_data[26]_i_4_n_0 ),
        .I5(\line_data[22]_i_3_n_0 ),
        .O(p_33_out__0[22]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[22]_i_10 
       (.I0(\row_buf_reg_n_0_[6][6] ),
        .I1(\row_buf_reg_n_0_[7][6] ),
        .I2(\line_off_reg[1]__0_rep__0_n_0 ),
        .I3(\row_buf_reg_n_0_[4][6] ),
        .I4(\line_off_reg[0]__0_rep__0_n_0 ),
        .I5(\row_buf_reg_n_0_[5][6] ),
        .O(\line_data[22]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \line_data[22]_i_11 
       (.I0(\row_buf_reg[16]_8 [6]),
        .I1(\line_off_reg[0]__0_rep__0_n_0 ),
        .I2(\row_buf_reg[17]_9 [6]),
        .O(\line_data[22]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \line_data[22]_i_12 
       (.I0(\row_buf_reg[18]_10 [6]),
        .I1(\line_off_reg[0]__0_rep__0_n_0 ),
        .I2(\row_buf_reg[19]_11 [6]),
        .O(\line_data[22]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \line_data[22]_i_13 
       (.I0(\row_buf_reg[22]_14 [6]),
        .I1(\line_off_reg[0]__0_rep__0_n_0 ),
        .I2(\row_buf_reg[23]_15 [6]),
        .O(\line_data[22]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \line_data[22]_i_14 
       (.I0(\row_buf_reg[20]_12 [6]),
        .I1(\line_off_reg[0]__0_rep__0_n_0 ),
        .I2(\row_buf_reg[21]_13 [6]),
        .O(\line_data[22]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h2822E82E2BE2EBEE)) 
    \line_data[22]_i_2 
       (.I0(\line_data[22]_i_4_n_0 ),
        .I1(\line_word_reg_n_0_[1] ),
        .I2(\line_word_reg_n_0_[0] ),
        .I3(\line_off_reg[1]__0_rep__0_n_0 ),
        .I4(\line_data[22]_i_5_n_0 ),
        .I5(\line_data[22]_i_6_n_0 ),
        .O(\line_data[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0F000FFF55335533)) 
    \line_data[22]_i_3 
       (.I0(\line_data[22]_i_7_n_0 ),
        .I1(\line_data[22]_i_8_n_0 ),
        .I2(\line_data[22]_i_9_n_0 ),
        .I3(\line_data[26]_i_10_n_0 ),
        .I4(\line_data[22]_i_10_n_0 ),
        .I5(\line_data[26]_i_8_n_0 ),
        .O(\line_data[22]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h30053F0530F53FF5)) 
    \line_data[22]_i_4 
       (.I0(\line_data[22]_i_11_n_0 ),
        .I1(\line_data[22]_i_12_n_0 ),
        .I2(\line_word_reg_n_0_[0] ),
        .I3(\line_off_reg[1]__0_rep__0_n_0 ),
        .I4(\line_data[22]_i_13_n_0 ),
        .I5(\line_data[22]_i_14_n_0 ),
        .O(\line_data[22]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[22]_i_5 
       (.I0(\row_buf_reg[26]_18 [6]),
        .I1(\row_buf_reg[27]_19 [6]),
        .I2(\line_off_reg[1]__0_rep__0_n_0 ),
        .I3(\row_buf_reg[24]_16 [6]),
        .I4(\line_off_reg[0]__0_rep__0_n_0 ),
        .I5(\row_buf_reg[25]_17 [6]),
        .O(\line_data[22]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[22]_i_6 
       (.I0(\row_buf_reg[30]_22 [6]),
        .I1(\row_buf_reg[31]_23 [6]),
        .I2(\line_off_reg[1]__0_rep__0_n_0 ),
        .I3(\row_buf_reg[28]_20 [6]),
        .I4(\line_off_reg[0]__0_rep__0_n_0 ),
        .I5(\row_buf_reg[29]_21 [6]),
        .O(\line_data[22]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[22]_i_7 
       (.I0(\row_buf_reg[10]_2 [6]),
        .I1(\row_buf_reg[11]_3 [6]),
        .I2(\line_off_reg[1]__0_rep__0_n_0 ),
        .I3(\row_buf_reg[8]_0 [6]),
        .I4(\line_off_reg[0]__0_rep__0_n_0 ),
        .I5(\row_buf_reg[9]_1 [6]),
        .O(\line_data[22]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[22]_i_8 
       (.I0(\row_buf_reg[14]_6 [6]),
        .I1(\row_buf_reg[15]_7 [6]),
        .I2(\line_off_reg[1]__0_rep__0_n_0 ),
        .I3(\row_buf_reg[12]_4 [6]),
        .I4(\line_off_reg[0]__0_rep__0_n_0 ),
        .I5(\row_buf_reg[13]_5 [6]),
        .O(\line_data[22]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[22]_i_9 
       (.I0(\row_buf_reg_n_0_[2][6] ),
        .I1(\row_buf_reg_n_0_[3][6] ),
        .I2(\line_off_reg[1]__0_rep__0_n_0 ),
        .I3(\row_buf_reg_n_0_[0][6] ),
        .I4(\line_off_reg[0]__0_rep__0_n_0 ),
        .I5(\row_buf_reg_n_0_[1][6] ),
        .O(\line_data[22]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000E0E0E000E)) 
    \line_data[23]_i_1 
       (.I0(\line_data_reg[31]_i_2_n_0 ),
        .I1(\line_data_reg[30]_i_2_n_0 ),
        .I2(\line_data[26]_i_2_n_0 ),
        .I3(\line_data[23]_i_2_n_0 ),
        .I4(\line_data[26]_i_4_n_0 ),
        .I5(\line_data[23]_i_3_n_0 ),
        .O(p_33_out__0[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[23]_i_10 
       (.I0(\row_buf_reg[14]_6 [7]),
        .I1(\row_buf_reg[15]_7 [7]),
        .I2(\line_off_reg[1]__0_rep__0_n_0 ),
        .I3(\row_buf_reg[12]_4 [7]),
        .I4(\line_off_reg[0]__0_rep__0_n_0 ),
        .I5(\row_buf_reg[13]_5 [7]),
        .O(\line_data[23]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \line_data[23]_i_11 
       (.I0(\row_buf_reg[16]_8 [7]),
        .I1(\line_off_reg[0]__0_rep__0_n_0 ),
        .I2(\row_buf_reg[17]_9 [7]),
        .O(\line_data[23]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \line_data[23]_i_12 
       (.I0(\row_buf_reg[18]_10 [7]),
        .I1(\line_off_reg[0]__0_rep__0_n_0 ),
        .I2(\row_buf_reg[19]_11 [7]),
        .O(\line_data[23]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \line_data[23]_i_13 
       (.I0(\row_buf_reg[22]_14 [7]),
        .I1(\line_off_reg[0]__0_rep__0_n_0 ),
        .I2(\row_buf_reg[23]_15 [7]),
        .O(\line_data[23]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \line_data[23]_i_14 
       (.I0(\row_buf_reg[20]_12 [7]),
        .I1(\line_off_reg[0]__0_rep__0_n_0 ),
        .I2(\row_buf_reg[21]_13 [7]),
        .O(\line_data[23]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h2822E82E2BE2EBEE)) 
    \line_data[23]_i_2 
       (.I0(\line_data[23]_i_4_n_0 ),
        .I1(\line_word_reg_n_0_[1] ),
        .I2(\line_word_reg_n_0_[0] ),
        .I3(\line_off_reg[1]__0_rep__0_n_0 ),
        .I4(\line_data[23]_i_5_n_0 ),
        .I5(\line_data[23]_i_6_n_0 ),
        .O(\line_data[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h553355330F000FFF)) 
    \line_data[23]_i_3 
       (.I0(\line_data[23]_i_7_n_0 ),
        .I1(\line_data[23]_i_8_n_0 ),
        .I2(\line_data[23]_i_9_n_0 ),
        .I3(\line_data[26]_i_10_n_0 ),
        .I4(\line_data[23]_i_10_n_0 ),
        .I5(\line_data[26]_i_8_n_0 ),
        .O(\line_data[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h30053F0530F53FF5)) 
    \line_data[23]_i_4 
       (.I0(\line_data[23]_i_11_n_0 ),
        .I1(\line_data[23]_i_12_n_0 ),
        .I2(\line_word_reg_n_0_[0] ),
        .I3(\line_off_reg[1]__0_rep__0_n_0 ),
        .I4(\line_data[23]_i_13_n_0 ),
        .I5(\line_data[23]_i_14_n_0 ),
        .O(\line_data[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[23]_i_5 
       (.I0(\row_buf_reg[26]_18 [7]),
        .I1(\row_buf_reg[27]_19 [7]),
        .I2(\line_off_reg[1]__0_rep__0_n_0 ),
        .I3(\row_buf_reg[24]_16 [7]),
        .I4(\line_off_reg[0]__0_rep__0_n_0 ),
        .I5(\row_buf_reg[25]_17 [7]),
        .O(\line_data[23]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[23]_i_6 
       (.I0(\row_buf_reg[30]_22 [7]),
        .I1(\row_buf_reg[31]_23 [7]),
        .I2(\line_off_reg[1]__0_rep__0_n_0 ),
        .I3(\row_buf_reg[28]_20 [7]),
        .I4(\line_off_reg[0]__0_rep__0_n_0 ),
        .I5(\row_buf_reg[29]_21 [7]),
        .O(\line_data[23]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[23]_i_7 
       (.I0(\row_buf_reg_n_0_[2][7] ),
        .I1(\row_buf_reg_n_0_[3][7] ),
        .I2(\line_off_reg[1]__0_rep__0_n_0 ),
        .I3(\row_buf_reg_n_0_[0][7] ),
        .I4(\line_off_reg[0]__0_rep__0_n_0 ),
        .I5(\row_buf_reg_n_0_[1][7] ),
        .O(\line_data[23]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[23]_i_8 
       (.I0(\row_buf_reg_n_0_[6][7] ),
        .I1(\row_buf_reg_n_0_[7][7] ),
        .I2(\line_off_reg[1]__0_rep__0_n_0 ),
        .I3(\row_buf_reg_n_0_[4][7] ),
        .I4(\line_off_reg[0]__0_rep__0_n_0 ),
        .I5(\row_buf_reg_n_0_[5][7] ),
        .O(\line_data[23]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[23]_i_9 
       (.I0(\row_buf_reg[10]_2 [7]),
        .I1(\row_buf_reg[11]_3 [7]),
        .I2(\line_off_reg[1]__0_rep__0_n_0 ),
        .I3(\row_buf_reg[8]_0 [7]),
        .I4(\line_off_reg[0]__0_rep__0_n_0 ),
        .I5(\row_buf_reg[9]_1 [7]),
        .O(\line_data[23]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000E0E0E000E)) 
    \line_data[26]_i_1 
       (.I0(\line_data_reg[31]_i_2_n_0 ),
        .I1(\line_data_reg[30]_i_2_n_0 ),
        .I2(\line_data[26]_i_2_n_0 ),
        .I3(\line_data[26]_i_3_n_0 ),
        .I4(\line_data[26]_i_4_n_0 ),
        .I5(\line_data[26]_i_5_n_0 ),
        .O(p_33_out__0[26]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \line_data[26]_i_10 
       (.I0(\line_word_reg_n_0_[0] ),
        .I1(\line_off_reg[1]__0_rep__0_n_0 ),
        .O(\line_data[26]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[26]_i_11 
       (.I0(\row_buf_reg[30]_22 [10]),
        .I1(\row_buf_reg[31]_23 [10]),
        .I2(\line_off_reg[1]__0_rep__0_n_0 ),
        .I3(\row_buf_reg[28]_20 [10]),
        .I4(\line_off_reg[0]__0_rep__0_n_0 ),
        .I5(\row_buf_reg[29]_21 [10]),
        .O(\line_data[26]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00FFFFFFFFFF4747)) 
    \line_data[26]_i_12 
       (.I0(\row_buf_reg_n_0_[0][10] ),
        .I1(\line_off_reg[0]__0_rep__0_n_0 ),
        .I2(\row_buf_reg_n_0_[1][10] ),
        .I3(\line_data[26]_i_16_n_0 ),
        .I4(\line_word_reg_n_0_[0] ),
        .I5(\line_off_reg[1]__0_rep__0_n_0 ),
        .O(\line_data[26]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[26]_i_13 
       (.I0(\row_buf_reg_n_0_[6][10] ),
        .I1(\row_buf_reg_n_0_[7][10] ),
        .I2(\line_off_reg[1]__0_rep__0_n_0 ),
        .I3(\row_buf_reg_n_0_[4][10] ),
        .I4(\line_off_reg[0]__0_rep__0_n_0 ),
        .I5(\row_buf_reg_n_0_[5][10] ),
        .O(\line_data[26]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h00FFFFFFFFFF4747)) 
    \line_data[26]_i_14 
       (.I0(\row_buf_reg[8]_0 [10]),
        .I1(\line_off_reg[0]__0_rep__0_n_0 ),
        .I2(\row_buf_reg[9]_1 [10]),
        .I3(\line_data[26]_i_17_n_0 ),
        .I4(\line_word_reg_n_0_[0] ),
        .I5(\line_off_reg[1]__0_rep__0_n_0 ),
        .O(\line_data[26]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[26]_i_15 
       (.I0(\row_buf_reg[14]_6 [10]),
        .I1(\row_buf_reg[15]_7 [10]),
        .I2(\line_off_reg[1]__0_rep__0_n_0 ),
        .I3(\row_buf_reg[12]_4 [10]),
        .I4(\line_off_reg[0]__0_rep__0_n_0 ),
        .I5(\row_buf_reg[13]_5 [10]),
        .O(\line_data[26]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \line_data[26]_i_16 
       (.I0(\row_buf_reg_n_0_[2][10] ),
        .I1(\line_off_reg[0]__0_rep__0_n_0 ),
        .I2(\row_buf_reg_n_0_[3][10] ),
        .O(\line_data[26]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \line_data[26]_i_17 
       (.I0(\row_buf_reg[10]_2 [10]),
        .I1(\line_off_reg[0]__0_rep__0_n_0 ),
        .I2(\row_buf_reg[11]_3 [10]),
        .O(\line_data[26]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h00000010FFFFFFFF)) 
    \line_data[26]_i_2 
       (.I0(\line_word_reg_n_0_[2] ),
        .I1(\line_word_reg_n_0_[1] ),
        .I2(\line_off_reg[1]__0_rep__0_n_0 ),
        .I3(\line_word_reg_n_0_[0] ),
        .I4(\line_word_reg_n_0_[3] ),
        .I5(line_we34_in),
        .O(\line_data[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \line_data[26]_i_3 
       (.I0(\line_data[26]_i_6_n_0 ),
        .I1(\line_data[26]_i_7_n_0 ),
        .I2(\line_data[26]_i_8_n_0 ),
        .I3(\line_data[26]_i_9_n_0 ),
        .I4(\line_data[26]_i_10_n_0 ),
        .I5(\line_data[26]_i_11_n_0 ),
        .O(\line_data[26]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h5565)) 
    \line_data[26]_i_4 
       (.I0(\line_word_reg_n_0_[2] ),
        .I1(\line_word_reg_n_0_[1] ),
        .I2(\line_off_reg[1]__0_rep__0_n_0 ),
        .I3(\line_word_reg_n_0_[0] ),
        .O(\line_data[26]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA02020AFA02F20)) 
    \line_data[26]_i_5 
       (.I0(\line_data[26]_i_12_n_0 ),
        .I1(\line_data[26]_i_13_n_0 ),
        .I2(\line_data[26]_i_8_n_0 ),
        .I3(\line_data[26]_i_14_n_0 ),
        .I4(\line_data[26]_i_10_n_0 ),
        .I5(\line_data[26]_i_15_n_0 ),
        .O(\line_data[26]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[26]_i_6 
       (.I0(\row_buf_reg[18]_10 [10]),
        .I1(\row_buf_reg[19]_11 [10]),
        .I2(\line_off_reg[1]__0_rep__0_n_0 ),
        .I3(\row_buf_reg[16]_8 [10]),
        .I4(\line_off_reg[0]__0_rep__0_n_0 ),
        .I5(\row_buf_reg[17]_9 [10]),
        .O(\line_data[26]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[26]_i_7 
       (.I0(\row_buf_reg[22]_14 [10]),
        .I1(\row_buf_reg[23]_15 [10]),
        .I2(\line_off_reg[1]__0_rep__0_n_0 ),
        .I3(\row_buf_reg[20]_12 [10]),
        .I4(\line_off_reg[0]__0_rep__0_n_0 ),
        .I5(\row_buf_reg[21]_13 [10]),
        .O(\line_data[26]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h65)) 
    \line_data[26]_i_8 
       (.I0(\line_word_reg_n_0_[1] ),
        .I1(\line_word_reg_n_0_[0] ),
        .I2(\line_off_reg[1]__0_rep__0_n_0 ),
        .O(\line_data[26]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[26]_i_9 
       (.I0(\row_buf_reg[26]_18 [10]),
        .I1(\row_buf_reg[27]_19 [10]),
        .I2(\line_off_reg[1]__0_rep__0_n_0 ),
        .I3(\row_buf_reg[24]_16 [10]),
        .I4(\line_off_reg[0]__0_rep__0_n_0 ),
        .I5(\row_buf_reg[25]_17 [10]),
        .O(\line_data[26]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h00000E00)) 
    \line_data[27]_i_1 
       (.I0(\line_data_reg[31]_i_2_n_0 ),
        .I1(\line_data_reg[30]_i_2_n_0 ),
        .I2(\line_data[47]_i_4_n_0 ),
        .I3(line_we34_in),
        .I4(\line_data_reg[27]_i_2_n_0 ),
        .O(p_33_out__0[27]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[27]_i_10 
       (.I0(\row_buf_reg[14]_6 [11]),
        .I1(\row_buf_reg[15]_7 [11]),
        .I2(\line_off_reg[1]__0_rep__0_n_0 ),
        .I3(\row_buf_reg[12]_4 [11]),
        .I4(\line_off_reg[0]__0_rep__0_n_0 ),
        .I5(\row_buf_reg[13]_5 [11]),
        .O(\line_data[27]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[27]_i_11 
       (.I0(\row_buf_reg_n_0_[2][11] ),
        .I1(\row_buf_reg_n_0_[3][11] ),
        .I2(\line_off_reg[1]__0_rep__0_n_0 ),
        .I3(\row_buf_reg_n_0_[0][11] ),
        .I4(\line_off_reg[0]__0_rep__0_n_0 ),
        .I5(\row_buf_reg_n_0_[1][11] ),
        .O(\line_data[27]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[27]_i_12 
       (.I0(\row_buf_reg_n_0_[6][11] ),
        .I1(\row_buf_reg_n_0_[7][11] ),
        .I2(\line_off_reg[1]__0_rep__0_n_0 ),
        .I3(\row_buf_reg_n_0_[4][11] ),
        .I4(\line_off_reg[0]__0_rep__0_n_0 ),
        .I5(\row_buf_reg_n_0_[5][11] ),
        .O(\line_data[27]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h553355330F000FFF)) 
    \line_data[27]_i_3 
       (.I0(\line_data[27]_i_5_n_0 ),
        .I1(\line_data[27]_i_6_n_0 ),
        .I2(\line_data[27]_i_7_n_0 ),
        .I3(\line_data[26]_i_10_n_0 ),
        .I4(\line_data[27]_i_8_n_0 ),
        .I5(\line_data[26]_i_8_n_0 ),
        .O(\line_data[27]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0F000FFF55335533)) 
    \line_data[27]_i_4 
       (.I0(\line_data[27]_i_9_n_0 ),
        .I1(\line_data[27]_i_10_n_0 ),
        .I2(\line_data[27]_i_11_n_0 ),
        .I3(\line_data[26]_i_10_n_0 ),
        .I4(\line_data[27]_i_12_n_0 ),
        .I5(\line_data[26]_i_8_n_0 ),
        .O(\line_data[27]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[27]_i_5 
       (.I0(\row_buf_reg[18]_10 [11]),
        .I1(\row_buf_reg[19]_11 [11]),
        .I2(\line_off_reg[1]__0_rep__0_n_0 ),
        .I3(\row_buf_reg[16]_8 [11]),
        .I4(\line_off_reg[0]__0_rep__0_n_0 ),
        .I5(\row_buf_reg[17]_9 [11]),
        .O(\line_data[27]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[27]_i_6 
       (.I0(\row_buf_reg[22]_14 [11]),
        .I1(\row_buf_reg[23]_15 [11]),
        .I2(\line_off_reg[1]__0_rep__0_n_0 ),
        .I3(\row_buf_reg[20]_12 [11]),
        .I4(\line_off_reg[0]__0_rep__0_n_0 ),
        .I5(\row_buf_reg[21]_13 [11]),
        .O(\line_data[27]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[27]_i_7 
       (.I0(\row_buf_reg[26]_18 [11]),
        .I1(\row_buf_reg[27]_19 [11]),
        .I2(\line_off_reg[1]__0_rep__0_n_0 ),
        .I3(\row_buf_reg[24]_16 [11]),
        .I4(\line_off_reg[0]__0_rep__0_n_0 ),
        .I5(\row_buf_reg[25]_17 [11]),
        .O(\line_data[27]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[27]_i_8 
       (.I0(\row_buf_reg[30]_22 [11]),
        .I1(\row_buf_reg[31]_23 [11]),
        .I2(\line_off_reg[1]__0_rep__0_n_0 ),
        .I3(\row_buf_reg[28]_20 [11]),
        .I4(\line_off_reg[0]__0_rep__0_n_0 ),
        .I5(\row_buf_reg[29]_21 [11]),
        .O(\line_data[27]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[27]_i_9 
       (.I0(\row_buf_reg[10]_2 [11]),
        .I1(\row_buf_reg[11]_3 [11]),
        .I2(\line_off_reg[1]__0_rep__0_n_0 ),
        .I3(\row_buf_reg[8]_0 [11]),
        .I4(\line_off_reg[0]__0_rep__0_n_0 ),
        .I5(\row_buf_reg[9]_1 [11]),
        .O(\line_data[27]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h000000E0)) 
    \line_data[2]_i_1 
       (.I0(\line_data[15]_i_4_n_0 ),
        .I1(\line_data[14]_i_2_n_0 ),
        .I2(line_we21_in),
        .I3(\line_data_reg[15]_i_2_n_5 ),
        .I4(\line_data[2]_i_2_n_0 ),
        .O(p_33_out[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[2]_i_10 
       (.I0(\row_buf_reg[25]_17 [2]),
        .I1(\row_buf_reg[21]_13 [2]),
        .I2(\line_word_reg_n_0_[1] ),
        .I3(\row_buf_reg[17]_9 [2]),
        .I4(\line_word_reg_n_0_[0] ),
        .I5(\row_buf_reg[13]_5 [2]),
        .O(\line_data[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[2]_i_11 
       (.I0(\row_buf_reg[11]_3 [2]),
        .I1(\row_buf_reg_n_0_[7][2] ),
        .I2(\line_word_reg_n_0_[1] ),
        .I3(\row_buf_reg_n_0_[3][2] ),
        .I4(\line_word_reg_n_0_[0] ),
        .I5(\row_buf_reg[31]_23 [2]),
        .O(\line_data[2]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[2]_i_12 
       (.I0(\row_buf_reg[27]_19 [2]),
        .I1(\row_buf_reg[23]_15 [2]),
        .I2(\line_word_reg_n_0_[1] ),
        .I3(\row_buf_reg[19]_11 [2]),
        .I4(\line_word_reg_n_0_[0] ),
        .I5(\row_buf_reg[15]_7 [2]),
        .O(\line_data[2]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[2]_i_13 
       (.I0(\row_buf_reg[12]_4 [2]),
        .I1(\row_buf_reg[8]_0 [2]),
        .I2(\line_word_reg_n_0_[1] ),
        .I3(\row_buf_reg_n_0_[4][2] ),
        .I4(\line_word_reg_n_0_[0] ),
        .I5(\row_buf_reg_n_0_[0][2] ),
        .O(\line_data[2]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[2]_i_14 
       (.I0(\row_buf_reg[28]_20 [2]),
        .I1(\row_buf_reg[24]_16 [2]),
        .I2(\line_word_reg_n_0_[1] ),
        .I3(\row_buf_reg[20]_12 [2]),
        .I4(\line_word_reg_n_0_[0] ),
        .I5(\row_buf_reg[16]_8 [2]),
        .O(\line_data[2]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h303F5050303F5F5F)) 
    \line_data[2]_i_2 
       (.I0(\line_data_reg[2]_i_3_n_0 ),
        .I1(\line_data_reg[2]_i_4_n_0 ),
        .I2(\line_off_reg[1]__0_rep__1_n_0 ),
        .I3(\line_data_reg[2]_i_5_n_0 ),
        .I4(\line_off_reg[0]__0_rep__1_n_0 ),
        .I5(\line_data_reg[2]_i_6_n_0 ),
        .O(\line_data[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[2]_i_7 
       (.I0(\row_buf_reg[10]_2 [2]),
        .I1(\row_buf_reg_n_0_[6][2] ),
        .I2(\line_word_reg_n_0_[1] ),
        .I3(\row_buf_reg_n_0_[2][2] ),
        .I4(\line_word_reg_n_0_[0] ),
        .I5(\row_buf_reg[30]_22 [2]),
        .O(\line_data[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[2]_i_8 
       (.I0(\row_buf_reg[26]_18 [2]),
        .I1(\row_buf_reg[22]_14 [2]),
        .I2(\line_word_reg_n_0_[1] ),
        .I3(\row_buf_reg[18]_10 [2]),
        .I4(\line_word_reg_n_0_[0] ),
        .I5(\row_buf_reg[14]_6 [2]),
        .O(\line_data[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[2]_i_9 
       (.I0(\row_buf_reg[9]_1 [2]),
        .I1(\row_buf_reg_n_0_[5][2] ),
        .I2(\line_word_reg_n_0_[1] ),
        .I3(\row_buf_reg_n_0_[1][2] ),
        .I4(\line_word_reg_n_0_[0] ),
        .I5(\row_buf_reg[29]_21 [2]),
        .O(\line_data[2]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \line_data[30]_i_1 
       (.I0(\line_data[47]_i_4_n_0 ),
        .I1(line_we34_in),
        .I2(\line_data_reg[30]_i_2_n_0 ),
        .O(\line_data[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[30]_i_10 
       (.I0(\row_buf_reg_n_0_[6][12] ),
        .I1(\row_buf_reg_n_0_[7][12] ),
        .I2(\line_off_reg[1]__0_rep__0_n_0 ),
        .I3(\row_buf_reg_n_0_[4][12] ),
        .I4(\line_off_reg[0]__0_rep__0_n_0 ),
        .I5(\row_buf_reg_n_0_[5][12] ),
        .O(\line_data[30]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[30]_i_11 
       (.I0(\row_buf_reg[10]_2 [12]),
        .I1(\row_buf_reg[11]_3 [12]),
        .I2(\line_off_reg[1]__0_rep__0_n_0 ),
        .I3(\row_buf_reg[8]_0 [12]),
        .I4(\line_off_reg[0]__0_rep__0_n_0 ),
        .I5(\row_buf_reg[9]_1 [12]),
        .O(\line_data[30]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[30]_i_12 
       (.I0(\row_buf_reg[14]_6 [12]),
        .I1(\row_buf_reg[15]_7 [12]),
        .I2(\line_off_reg[1]__0_rep__0_n_0 ),
        .I3(\row_buf_reg[12]_4 [12]),
        .I4(\line_off_reg[0]__0_rep__0_n_0 ),
        .I5(\row_buf_reg[13]_5 [12]),
        .O(\line_data[30]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[30]_i_3 
       (.I0(\line_data[30]_i_5_n_0 ),
        .I1(\line_data[30]_i_6_n_0 ),
        .I2(\line_data[26]_i_8_n_0 ),
        .I3(\line_data[30]_i_7_n_0 ),
        .I4(\line_data[26]_i_10_n_0 ),
        .I5(\line_data[30]_i_8_n_0 ),
        .O(\line_data[30]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[30]_i_4 
       (.I0(\line_data[30]_i_9_n_0 ),
        .I1(\line_data[30]_i_10_n_0 ),
        .I2(\line_data[26]_i_8_n_0 ),
        .I3(\line_data[30]_i_11_n_0 ),
        .I4(\line_data[26]_i_10_n_0 ),
        .I5(\line_data[30]_i_12_n_0 ),
        .O(\line_data[30]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[30]_i_5 
       (.I0(\row_buf_reg[18]_10 [12]),
        .I1(\row_buf_reg[19]_11 [12]),
        .I2(\line_off_reg[1]__0_rep__0_n_0 ),
        .I3(\row_buf_reg[16]_8 [12]),
        .I4(\line_off_reg[0]__0_rep__0_n_0 ),
        .I5(\row_buf_reg[17]_9 [12]),
        .O(\line_data[30]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[30]_i_6 
       (.I0(\row_buf_reg[22]_14 [12]),
        .I1(\row_buf_reg[23]_15 [12]),
        .I2(\line_off_reg[1]__0_rep__0_n_0 ),
        .I3(\row_buf_reg[20]_12 [12]),
        .I4(\line_off_reg[0]__0_rep__0_n_0 ),
        .I5(\row_buf_reg[21]_13 [12]),
        .O(\line_data[30]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[30]_i_7 
       (.I0(\row_buf_reg[26]_18 [12]),
        .I1(\row_buf_reg[27]_19 [12]),
        .I2(\line_off_reg[1]__0_rep__0_n_0 ),
        .I3(\row_buf_reg[24]_16 [12]),
        .I4(\line_off_reg[0]__0_rep__0_n_0 ),
        .I5(\row_buf_reg[25]_17 [12]),
        .O(\line_data[30]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[30]_i_8 
       (.I0(\row_buf_reg[30]_22 [12]),
        .I1(\row_buf_reg[31]_23 [12]),
        .I2(\line_off_reg[1]__0_rep__0_n_0 ),
        .I3(\row_buf_reg[28]_20 [12]),
        .I4(\line_off_reg[0]__0_rep__0_n_0 ),
        .I5(\row_buf_reg[29]_21 [12]),
        .O(\line_data[30]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[30]_i_9 
       (.I0(\row_buf_reg_n_0_[2][12] ),
        .I1(\row_buf_reg_n_0_[3][12] ),
        .I2(\line_off_reg[1]__0_rep__0_n_0 ),
        .I3(\row_buf_reg_n_0_[0][12] ),
        .I4(\line_off_reg[0]__0_rep__0_n_0 ),
        .I5(\row_buf_reg_n_0_[1][12] ),
        .O(\line_data[30]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h8888888888888088)) 
    \line_data[31]_i_1 
       (.I0(\line_data_reg[31]_i_2_n_0 ),
        .I1(line_we34_in),
        .I2(\line_word_reg_n_0_[3] ),
        .I3(\line_data[31]_i_4_n_0 ),
        .I4(\line_word_reg_n_0_[1] ),
        .I5(\line_word_reg_n_0_[2] ),
        .O(p_33_out__0[31]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[31]_i_10 
       (.I0(\row_buf_reg[18]_10 [12]),
        .I1(\row_buf_reg[19]_11 [15]),
        .I2(\line_off_reg[1]__0_rep__0_n_0 ),
        .I3(\row_buf_reg[16]_8 [12]),
        .I4(\line_off_reg[0]__0_rep__0_n_0 ),
        .I5(\row_buf_reg[17]_9 [15]),
        .O(\line_data[31]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[31]_i_11 
       (.I0(\row_buf_reg[22]_14 [15]),
        .I1(\row_buf_reg[23]_15 [15]),
        .I2(\line_off_reg[1]__0_rep__0_n_0 ),
        .I3(\row_buf_reg[20]_12 [15]),
        .I4(\line_off_reg[0]__0_rep__0_n_0 ),
        .I5(\row_buf_reg[21]_13 [12]),
        .O(\line_data[31]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[31]_i_12 
       (.I0(\row_buf_reg[26]_18 [12]),
        .I1(\row_buf_reg[27]_19 [15]),
        .I2(\line_off_reg[1]__0_rep__0_n_0 ),
        .I3(\row_buf_reg[24]_16 [15]),
        .I4(\line_off_reg[0]__0_rep__0_n_0 ),
        .I5(\row_buf_reg[25]_17 [15]),
        .O(\line_data[31]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[31]_i_13 
       (.I0(\row_buf_reg[30]_22 [15]),
        .I1(\row_buf_reg[31]_23 [12]),
        .I2(\line_off_reg[1]__0_rep__0_n_0 ),
        .I3(\row_buf_reg[28]_20 [15]),
        .I4(\line_off_reg[0]__0_rep__0_n_0 ),
        .I5(\row_buf_reg[29]_21 [12]),
        .O(\line_data[31]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[31]_i_14 
       (.I0(\row_buf_reg_n_0_[2][12] ),
        .I1(\row_buf_reg_n_0_[3][15] ),
        .I2(\line_off_reg[1]__0_rep__0_n_0 ),
        .I3(\row_buf_reg_n_0_[0][12] ),
        .I4(\line_off_reg[0]__0_rep__0_n_0 ),
        .I5(\row_buf_reg_n_0_[1][15] ),
        .O(\line_data[31]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[31]_i_15 
       (.I0(\row_buf_reg_n_0_[6][15] ),
        .I1(\row_buf_reg_n_0_[7][15] ),
        .I2(\line_off_reg[1]__0_rep__0_n_0 ),
        .I3(\row_buf_reg_n_0_[4][15] ),
        .I4(\line_off_reg[0]__0_rep__0_n_0 ),
        .I5(\row_buf_reg_n_0_[5][12] ),
        .O(\line_data[31]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[31]_i_16 
       (.I0(\row_buf_reg[10]_2 [12]),
        .I1(\row_buf_reg[11]_3 [15]),
        .I2(\line_off_reg[1]__0_rep__0_n_0 ),
        .I3(\row_buf_reg[8]_0 [15]),
        .I4(\line_off_reg[0]__0_rep__0_n_0 ),
        .I5(\row_buf_reg[9]_1 [15]),
        .O(\line_data[31]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[31]_i_17 
       (.I0(\row_buf_reg[14]_6 [15]),
        .I1(\row_buf_reg[15]_7 [15]),
        .I2(\line_off_reg[1]__0_rep__0_n_0 ),
        .I3(\row_buf_reg[12]_4 [15]),
        .I4(\line_off_reg[0]__0_rep__0_n_0 ),
        .I5(\row_buf_reg[13]_5 [12]),
        .O(\line_data[31]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \line_data[31]_i_19 
       (.I0(\line_word_reg_n_0_[2] ),
        .I1(\line_word_reg_n_0_[1] ),
        .I2(\line_off_reg[1]__0_rep__0_n_0 ),
        .I3(\line_word_reg_n_0_[0] ),
        .I4(\line_word_reg_n_0_[3] ),
        .O(\line_data[31]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \line_data[31]_i_20 
       (.I0(\line_word_reg_n_0_[2] ),
        .I1(\line_word_reg_n_0_[1] ),
        .I2(\line_off_reg[1]__0_rep__0_n_0 ),
        .I3(\line_word_reg_n_0_[0] ),
        .I4(\line_word_reg_n_0_[3] ),
        .O(\line_data[31]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \line_data[31]_i_21 
       (.I0(\line_word_reg_n_0_[2] ),
        .I1(\line_word_reg_n_0_[1] ),
        .I2(\line_off_reg[1]__0_rep__0_n_0 ),
        .I3(\line_word_reg_n_0_[0] ),
        .I4(\line_word_reg_n_0_[3] ),
        .O(\line_data[31]_i_21_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \line_data[31]_i_22 
       (.I0(\line_word_reg_n_0_[2] ),
        .I1(\line_word_reg_n_0_[1] ),
        .I2(\line_off_reg[1]__0_rep__0_n_0 ),
        .I3(\line_word_reg_n_0_[0] ),
        .I4(\line_word_reg_n_0_[3] ),
        .O(\line_data[31]_i_22_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \line_data[31]_i_24 
       (.I0(\line_word_reg_n_0_[2] ),
        .I1(\line_word_reg_n_0_[1] ),
        .I2(\line_off_reg[1]__0_rep__0_n_0 ),
        .I3(\line_word_reg_n_0_[0] ),
        .I4(\line_word_reg_n_0_[3] ),
        .O(\line_data[31]_i_24_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \line_data[31]_i_25 
       (.I0(\line_word_reg_n_0_[2] ),
        .I1(\line_word_reg_n_0_[1] ),
        .I2(\line_off_reg[1]__0_rep__0_n_0 ),
        .I3(\line_word_reg_n_0_[0] ),
        .I4(\line_word_reg_n_0_[3] ),
        .O(\line_data[31]_i_25_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \line_data[31]_i_26 
       (.I0(\line_word_reg_n_0_[2] ),
        .I1(\line_word_reg_n_0_[1] ),
        .I2(\line_off_reg[1]__0_rep__0_n_0 ),
        .I3(\line_word_reg_n_0_[0] ),
        .I4(\line_word_reg_n_0_[3] ),
        .O(\line_data[31]_i_26_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \line_data[31]_i_27 
       (.I0(\line_word_reg_n_0_[2] ),
        .I1(\line_word_reg_n_0_[1] ),
        .I2(\line_off_reg[1]__0_rep__0_n_0 ),
        .I3(\line_word_reg_n_0_[0] ),
        .I4(\line_word_reg_n_0_[3] ),
        .O(\line_data[31]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h00000200BBBBBCBB)) 
    \line_data[31]_i_28 
       (.I0(spr_att_vdp_dout__0[52]),
        .I1(\line_word_reg_n_0_[2] ),
        .I2(\line_word_reg_n_0_[1] ),
        .I3(\line_off_reg[1]__0_rep__0_n_0 ),
        .I4(\line_word_reg_n_0_[0] ),
        .I5(\line_word_reg_n_0_[3] ),
        .O(\line_data[31]_i_28_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \line_data[31]_i_29 
       (.I0(\line_word_reg_n_0_[2] ),
        .I1(\line_word_reg_n_0_[1] ),
        .I2(\line_off_reg[1]__0_rep__0_n_0 ),
        .I3(\line_word_reg_n_0_[0] ),
        .I4(\line_word_reg_n_0_[3] ),
        .O(\line_data[31]_i_29_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \line_data[31]_i_30 
       (.I0(\line_word_reg_n_0_[2] ),
        .I1(\line_word_reg_n_0_[1] ),
        .I2(\line_off_reg[1]__0_rep__0_n_0 ),
        .I3(\line_word_reg_n_0_[0] ),
        .I4(\line_word_reg_n_0_[3] ),
        .O(\line_data[31]_i_30_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \line_data[31]_i_31 
       (.I0(\line_word_reg_n_0_[2] ),
        .I1(\line_word_reg_n_0_[1] ),
        .I2(\line_off_reg[1]__0_rep__0_n_0 ),
        .I3(\line_word_reg_n_0_[0] ),
        .I4(\line_word_reg_n_0_[3] ),
        .O(\line_data[31]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h2222282244444244)) 
    \line_data[31]_i_32 
       (.I0(\line_word_reg_n_0_[3] ),
        .I1(\line_word_reg_n_0_[2] ),
        .I2(\line_word_reg_n_0_[1] ),
        .I3(\line_off_reg[1]__0_rep__0_n_0 ),
        .I4(\line_word_reg_n_0_[0] ),
        .I5(spr_att_vdp_dout__0[52]),
        .O(\line_data[31]_i_32_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \line_data[31]_i_4 
       (.I0(\line_off_reg[1]__0_rep__0_n_0 ),
        .I1(\line_word_reg_n_0_[0] ),
        .O(\line_data[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[31]_i_5 
       (.I0(\line_data[31]_i_10_n_0 ),
        .I1(\line_data[31]_i_11_n_0 ),
        .I2(\line_data[26]_i_8_n_0 ),
        .I3(\line_data[31]_i_12_n_0 ),
        .I4(\line_data[26]_i_10_n_0 ),
        .I5(\line_data[31]_i_13_n_0 ),
        .O(\line_data[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[31]_i_6 
       (.I0(\line_data[31]_i_14_n_0 ),
        .I1(\line_data[31]_i_15_n_0 ),
        .I2(\line_data[26]_i_8_n_0 ),
        .I3(\line_data[31]_i_16_n_0 ),
        .I4(\line_data[26]_i_10_n_0 ),
        .I5(\line_data[31]_i_17_n_0 ),
        .O(\line_data[31]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \line_data[31]_i_8 
       (.I0(\line_word_reg_n_0_[2] ),
        .I1(\line_word_reg_n_0_[1] ),
        .I2(\line_off_reg[1]__0_rep__0_n_0 ),
        .I3(\line_word_reg_n_0_[0] ),
        .I4(\line_word_reg_n_0_[3] ),
        .O(\line_data[31]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \line_data[31]_i_9 
       (.I0(\line_word_reg_n_0_[2] ),
        .I1(\line_word_reg_n_0_[1] ),
        .I2(\line_off_reg[1]__0_rep__0_n_0 ),
        .I3(\line_word_reg_n_0_[0] ),
        .I4(\line_word_reg_n_0_[3] ),
        .O(\line_data[31]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h00A8A8A800000000)) 
    \line_data[34]_i_1 
       (.I0(\line_data_reg[34]_i_2_n_0 ),
        .I1(\line_data_reg[47]_i_2_n_0 ),
        .I2(\line_data_reg[46]_i_2_n_0 ),
        .I3(\line_off_reg[0]__0_rep__1_n_0 ),
        .I4(\line_data[47]_i_4_n_0 ),
        .I5(line_we3__0),
        .O(p_33_out__0[34]));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    \line_data[34]_i_10 
       (.I0(\row_buf_reg_n_0_[1][2] ),
        .I1(\row_buf_reg_n_0_[0][2] ),
        .I2(line_off[0]),
        .I3(line_off[1]),
        .I4(\row_buf_reg_n_0_[3][2] ),
        .I5(\row_buf_reg_n_0_[2][2] ),
        .O(\line_data[34]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    \line_data[34]_i_11 
       (.I0(\row_buf_reg[9]_1 [2]),
        .I1(\row_buf_reg[8]_0 [2]),
        .I2(line_off[0]),
        .I3(line_off[1]),
        .I4(\row_buf_reg[11]_3 [2]),
        .I5(\row_buf_reg[10]_2 [2]),
        .O(\line_data[34]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    \line_data[34]_i_12 
       (.I0(\row_buf_reg[13]_5 [2]),
        .I1(\row_buf_reg[12]_4 [2]),
        .I2(line_off[0]),
        .I3(line_off[1]),
        .I4(\row_buf_reg[15]_7 [2]),
        .I5(\row_buf_reg[14]_6 [2]),
        .O(\line_data[34]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hCFCFAFA0C0C0AFA0)) 
    \line_data[34]_i_3 
       (.I0(\line_data[34]_i_5_n_0 ),
        .I1(\line_data[34]_i_6_n_0 ),
        .I2(\line_data[47]_i_13_n_0 ),
        .I3(\line_data[34]_i_7_n_0 ),
        .I4(\line_data[47]_i_15_n_0 ),
        .I5(\line_data[34]_i_8_n_0 ),
        .O(\line_data[34]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \line_data[34]_i_4 
       (.I0(\line_data[34]_i_9_n_0 ),
        .I1(\line_data[34]_i_10_n_0 ),
        .I2(\line_data[47]_i_13_n_0 ),
        .I3(\line_data[34]_i_11_n_0 ),
        .I4(\line_data[47]_i_15_n_0 ),
        .I5(\line_data[34]_i_12_n_0 ),
        .O(\line_data[34]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    \line_data[34]_i_5 
       (.I0(\row_buf_reg[21]_13 [2]),
        .I1(\row_buf_reg[20]_12 [2]),
        .I2(line_off[0]),
        .I3(line_off[1]),
        .I4(\row_buf_reg[23]_15 [2]),
        .I5(\row_buf_reg[22]_14 [2]),
        .O(\line_data[34]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    \line_data[34]_i_6 
       (.I0(\row_buf_reg[17]_9 [2]),
        .I1(\row_buf_reg[16]_8 [2]),
        .I2(line_off[0]),
        .I3(line_off[1]),
        .I4(\row_buf_reg[19]_11 [2]),
        .I5(\row_buf_reg[18]_10 [2]),
        .O(\line_data[34]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    \line_data[34]_i_7 
       (.I0(\row_buf_reg[29]_21 [2]),
        .I1(\row_buf_reg[28]_20 [2]),
        .I2(line_off[0]),
        .I3(line_off[1]),
        .I4(\row_buf_reg[31]_23 [2]),
        .I5(\row_buf_reg[30]_22 [2]),
        .O(\line_data[34]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    \line_data[34]_i_8 
       (.I0(\row_buf_reg[25]_17 [2]),
        .I1(\row_buf_reg[24]_16 [2]),
        .I2(line_off[0]),
        .I3(line_off[1]),
        .I4(\row_buf_reg[27]_19 [2]),
        .I5(\row_buf_reg[26]_18 [2]),
        .O(\line_data[34]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    \line_data[34]_i_9 
       (.I0(\row_buf_reg_n_0_[5][2] ),
        .I1(\row_buf_reg_n_0_[4][2] ),
        .I2(line_off[0]),
        .I3(line_off[1]),
        .I4(\row_buf_reg_n_0_[7][2] ),
        .I5(\row_buf_reg_n_0_[6][2] ),
        .O(\line_data[34]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h00A8A8A800000000)) 
    \line_data[35]_i_1 
       (.I0(\line_data_reg[35]_i_2_n_0 ),
        .I1(\line_data_reg[47]_i_2_n_0 ),
        .I2(\line_data_reg[46]_i_2_n_0 ),
        .I3(\line_off_reg[0]__0_rep__1_n_0 ),
        .I4(\line_data[47]_i_4_n_0 ),
        .I5(line_we3__0),
        .O(p_33_out__0[35]));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    \line_data[35]_i_10 
       (.I0(\row_buf_reg_n_0_[5][3] ),
        .I1(\row_buf_reg_n_0_[4][3] ),
        .I2(line_off[0]),
        .I3(line_off[1]),
        .I4(\row_buf_reg_n_0_[7][3] ),
        .I5(\row_buf_reg_n_0_[6][3] ),
        .O(\line_data[35]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    \line_data[35]_i_11 
       (.I0(\row_buf_reg[9]_1 [3]),
        .I1(\row_buf_reg[8]_0 [3]),
        .I2(line_off[0]),
        .I3(line_off[1]),
        .I4(\row_buf_reg[11]_3 [3]),
        .I5(\row_buf_reg[10]_2 [3]),
        .O(\line_data[35]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    \line_data[35]_i_12 
       (.I0(\row_buf_reg[13]_5 [3]),
        .I1(\row_buf_reg[12]_4 [3]),
        .I2(line_off[0]),
        .I3(line_off[1]),
        .I4(\row_buf_reg[15]_7 [3]),
        .I5(\row_buf_reg[14]_6 [3]),
        .O(\line_data[35]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFCFC0A0A0CFC0)) 
    \line_data[35]_i_3 
       (.I0(\line_data[35]_i_5_n_0 ),
        .I1(\line_data[35]_i_6_n_0 ),
        .I2(\line_data[47]_i_13_n_0 ),
        .I3(\line_data[35]_i_7_n_0 ),
        .I4(\line_data[47]_i_15_n_0 ),
        .I5(\line_data[35]_i_8_n_0 ),
        .O(\line_data[35]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[35]_i_4 
       (.I0(\line_data[35]_i_9_n_0 ),
        .I1(\line_data[35]_i_10_n_0 ),
        .I2(\line_data[47]_i_13_n_0 ),
        .I3(\line_data[35]_i_11_n_0 ),
        .I4(\line_data[47]_i_15_n_0 ),
        .I5(\line_data[35]_i_12_n_0 ),
        .O(\line_data[35]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    \line_data[35]_i_5 
       (.I0(\row_buf_reg[17]_9 [3]),
        .I1(\row_buf_reg[16]_8 [3]),
        .I2(line_off[0]),
        .I3(line_off[1]),
        .I4(\row_buf_reg[19]_11 [3]),
        .I5(\row_buf_reg[18]_10 [3]),
        .O(\line_data[35]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    \line_data[35]_i_6 
       (.I0(\row_buf_reg[21]_13 [3]),
        .I1(\row_buf_reg[20]_12 [3]),
        .I2(line_off[0]),
        .I3(line_off[1]),
        .I4(\row_buf_reg[23]_15 [3]),
        .I5(\row_buf_reg[22]_14 [3]),
        .O(\line_data[35]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    \line_data[35]_i_7 
       (.I0(\row_buf_reg[29]_21 [3]),
        .I1(\row_buf_reg[28]_20 [3]),
        .I2(line_off[0]),
        .I3(line_off[1]),
        .I4(\row_buf_reg[31]_23 [3]),
        .I5(\row_buf_reg[30]_22 [3]),
        .O(\line_data[35]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    \line_data[35]_i_8 
       (.I0(\row_buf_reg[25]_17 [3]),
        .I1(\row_buf_reg[24]_16 [3]),
        .I2(line_off[0]),
        .I3(line_off[1]),
        .I4(\row_buf_reg[27]_19 [3]),
        .I5(\row_buf_reg[26]_18 [3]),
        .O(\line_data[35]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    \line_data[35]_i_9 
       (.I0(\row_buf_reg_n_0_[1][3] ),
        .I1(\row_buf_reg_n_0_[0][3] ),
        .I2(line_off[0]),
        .I3(line_off[1]),
        .I4(\row_buf_reg_n_0_[3][3] ),
        .I5(\row_buf_reg_n_0_[2][3] ),
        .O(\line_data[35]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h00A8A8A800000000)) 
    \line_data[38]_i_1 
       (.I0(\line_data_reg[38]_i_2_n_0 ),
        .I1(\line_data_reg[47]_i_2_n_0 ),
        .I2(\line_data_reg[46]_i_2_n_0 ),
        .I3(\line_off_reg[0]__0_rep__1_n_0 ),
        .I4(\line_data[47]_i_4_n_0 ),
        .I5(line_we3__0),
        .O(p_33_out__0[38]));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    \line_data[38]_i_10 
       (.I0(\row_buf_reg_n_0_[5][6] ),
        .I1(\row_buf_reg_n_0_[4][6] ),
        .I2(line_off[0]),
        .I3(line_off[1]),
        .I4(\row_buf_reg_n_0_[7][6] ),
        .I5(\row_buf_reg_n_0_[6][6] ),
        .O(\line_data[38]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    \line_data[38]_i_11 
       (.I0(\row_buf_reg[9]_1 [6]),
        .I1(\row_buf_reg[8]_0 [6]),
        .I2(line_off[0]),
        .I3(line_off[1]),
        .I4(\row_buf_reg[11]_3 [6]),
        .I5(\row_buf_reg[10]_2 [6]),
        .O(\line_data[38]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    \line_data[38]_i_12 
       (.I0(\row_buf_reg[13]_5 [6]),
        .I1(\row_buf_reg[12]_4 [6]),
        .I2(line_off[0]),
        .I3(line_off[1]),
        .I4(\row_buf_reg[15]_7 [6]),
        .I5(\row_buf_reg[14]_6 [6]),
        .O(\line_data[38]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFCFC0A0A0CFC0)) 
    \line_data[38]_i_3 
       (.I0(\line_data[38]_i_5_n_0 ),
        .I1(\line_data[38]_i_6_n_0 ),
        .I2(\line_data[47]_i_13_n_0 ),
        .I3(\line_data[38]_i_7_n_0 ),
        .I4(\line_data[47]_i_15_n_0 ),
        .I5(\line_data[38]_i_8_n_0 ),
        .O(\line_data[38]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[38]_i_4 
       (.I0(\line_data[38]_i_9_n_0 ),
        .I1(\line_data[38]_i_10_n_0 ),
        .I2(\line_data[47]_i_13_n_0 ),
        .I3(\line_data[38]_i_11_n_0 ),
        .I4(\line_data[47]_i_15_n_0 ),
        .I5(\line_data[38]_i_12_n_0 ),
        .O(\line_data[38]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    \line_data[38]_i_5 
       (.I0(\row_buf_reg[17]_9 [6]),
        .I1(\row_buf_reg[16]_8 [6]),
        .I2(line_off[0]),
        .I3(line_off[1]),
        .I4(\row_buf_reg[19]_11 [6]),
        .I5(\row_buf_reg[18]_10 [6]),
        .O(\line_data[38]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    \line_data[38]_i_6 
       (.I0(\row_buf_reg[21]_13 [6]),
        .I1(\row_buf_reg[20]_12 [6]),
        .I2(line_off[0]),
        .I3(line_off[1]),
        .I4(\row_buf_reg[23]_15 [6]),
        .I5(\row_buf_reg[22]_14 [6]),
        .O(\line_data[38]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    \line_data[38]_i_7 
       (.I0(\row_buf_reg[29]_21 [6]),
        .I1(\row_buf_reg[28]_20 [6]),
        .I2(line_off[0]),
        .I3(line_off[1]),
        .I4(\row_buf_reg[31]_23 [6]),
        .I5(\row_buf_reg[30]_22 [6]),
        .O(\line_data[38]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    \line_data[38]_i_8 
       (.I0(\row_buf_reg[25]_17 [6]),
        .I1(\row_buf_reg[24]_16 [6]),
        .I2(line_off[0]),
        .I3(line_off[1]),
        .I4(\row_buf_reg[27]_19 [6]),
        .I5(\row_buf_reg[26]_18 [6]),
        .O(\line_data[38]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    \line_data[38]_i_9 
       (.I0(\row_buf_reg_n_0_[1][6] ),
        .I1(\row_buf_reg_n_0_[0][6] ),
        .I2(line_off[0]),
        .I3(line_off[1]),
        .I4(\row_buf_reg_n_0_[3][6] ),
        .I5(\row_buf_reg_n_0_[2][6] ),
        .O(\line_data[38]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h00A8A8A800000000)) 
    \line_data[39]_i_1 
       (.I0(\line_data_reg[39]_i_2_n_0 ),
        .I1(\line_data_reg[47]_i_2_n_0 ),
        .I2(\line_data_reg[46]_i_2_n_0 ),
        .I3(\line_off_reg[0]__0_rep__1_n_0 ),
        .I4(\line_data[47]_i_4_n_0 ),
        .I5(line_we3__0),
        .O(p_33_out__0[39]));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    \line_data[39]_i_10 
       (.I0(\row_buf_reg_n_0_[5][7] ),
        .I1(\row_buf_reg_n_0_[4][7] ),
        .I2(line_off[0]),
        .I3(line_off[1]),
        .I4(\row_buf_reg_n_0_[7][7] ),
        .I5(\row_buf_reg_n_0_[6][7] ),
        .O(\line_data[39]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    \line_data[39]_i_11 
       (.I0(\row_buf_reg[9]_1 [7]),
        .I1(\row_buf_reg[8]_0 [7]),
        .I2(line_off[0]),
        .I3(line_off[1]),
        .I4(\row_buf_reg[11]_3 [7]),
        .I5(\row_buf_reg[10]_2 [7]),
        .O(\line_data[39]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    \line_data[39]_i_12 
       (.I0(\row_buf_reg[13]_5 [7]),
        .I1(\row_buf_reg[12]_4 [7]),
        .I2(line_off[0]),
        .I3(line_off[1]),
        .I4(\row_buf_reg[15]_7 [7]),
        .I5(\row_buf_reg[14]_6 [7]),
        .O(\line_data[39]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFCFC0A0A0CFC0)) 
    \line_data[39]_i_3 
       (.I0(\line_data[39]_i_5_n_0 ),
        .I1(\line_data[39]_i_6_n_0 ),
        .I2(\line_data[47]_i_13_n_0 ),
        .I3(\line_data[39]_i_7_n_0 ),
        .I4(\line_data[47]_i_15_n_0 ),
        .I5(\line_data[39]_i_8_n_0 ),
        .O(\line_data[39]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[39]_i_4 
       (.I0(\line_data[39]_i_9_n_0 ),
        .I1(\line_data[39]_i_10_n_0 ),
        .I2(\line_data[47]_i_13_n_0 ),
        .I3(\line_data[39]_i_11_n_0 ),
        .I4(\line_data[47]_i_15_n_0 ),
        .I5(\line_data[39]_i_12_n_0 ),
        .O(\line_data[39]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    \line_data[39]_i_5 
       (.I0(\row_buf_reg[17]_9 [7]),
        .I1(\row_buf_reg[16]_8 [7]),
        .I2(line_off[0]),
        .I3(line_off[1]),
        .I4(\row_buf_reg[19]_11 [7]),
        .I5(\row_buf_reg[18]_10 [7]),
        .O(\line_data[39]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    \line_data[39]_i_6 
       (.I0(\row_buf_reg[21]_13 [7]),
        .I1(\row_buf_reg[20]_12 [7]),
        .I2(line_off[0]),
        .I3(line_off[1]),
        .I4(\row_buf_reg[23]_15 [7]),
        .I5(\row_buf_reg[22]_14 [7]),
        .O(\line_data[39]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    \line_data[39]_i_7 
       (.I0(\row_buf_reg[29]_21 [7]),
        .I1(\row_buf_reg[28]_20 [7]),
        .I2(line_off[0]),
        .I3(line_off[1]),
        .I4(\row_buf_reg[31]_23 [7]),
        .I5(\row_buf_reg[30]_22 [7]),
        .O(\line_data[39]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    \line_data[39]_i_8 
       (.I0(\row_buf_reg[25]_17 [7]),
        .I1(\row_buf_reg[24]_16 [7]),
        .I2(line_off[0]),
        .I3(line_off[1]),
        .I4(\row_buf_reg[27]_19 [7]),
        .I5(\row_buf_reg[26]_18 [7]),
        .O(\line_data[39]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    \line_data[39]_i_9 
       (.I0(\row_buf_reg_n_0_[1][7] ),
        .I1(\row_buf_reg_n_0_[0][7] ),
        .I2(line_off[0]),
        .I3(line_off[1]),
        .I4(\row_buf_reg_n_0_[3][7] ),
        .I5(\row_buf_reg_n_0_[2][7] ),
        .O(\line_data[39]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h000000E0)) 
    \line_data[3]_i_1 
       (.I0(\line_data[15]_i_4_n_0 ),
        .I1(\line_data[14]_i_2_n_0 ),
        .I2(line_we21_in),
        .I3(\line_data_reg[15]_i_2_n_5 ),
        .I4(\line_data[3]_i_2_n_0 ),
        .O(p_33_out[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[3]_i_10 
       (.I0(\row_buf_reg[26]_18 [3]),
        .I1(\row_buf_reg[22]_14 [3]),
        .I2(\line_word_reg_n_0_[1] ),
        .I3(\row_buf_reg[18]_10 [3]),
        .I4(\line_word_reg_n_0_[0] ),
        .I5(\row_buf_reg[14]_6 [3]),
        .O(\line_data[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[3]_i_11 
       (.I0(\row_buf_reg[11]_3 [3]),
        .I1(\row_buf_reg_n_0_[7][3] ),
        .I2(\line_word_reg_n_0_[1] ),
        .I3(\row_buf_reg_n_0_[3][3] ),
        .I4(\line_word_reg_n_0_[0] ),
        .I5(\row_buf_reg[31]_23 [3]),
        .O(\line_data[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[3]_i_12 
       (.I0(\row_buf_reg[27]_19 [3]),
        .I1(\row_buf_reg[23]_15 [3]),
        .I2(\line_word_reg_n_0_[1] ),
        .I3(\row_buf_reg[19]_11 [3]),
        .I4(\line_word_reg_n_0_[0] ),
        .I5(\row_buf_reg[15]_7 [3]),
        .O(\line_data[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[3]_i_13 
       (.I0(\row_buf_reg[12]_4 [3]),
        .I1(\row_buf_reg[8]_0 [3]),
        .I2(\line_word_reg_n_0_[1] ),
        .I3(\row_buf_reg_n_0_[4][3] ),
        .I4(\line_word_reg_n_0_[0] ),
        .I5(\row_buf_reg_n_0_[0][3] ),
        .O(\line_data[3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[3]_i_14 
       (.I0(\row_buf_reg[28]_20 [3]),
        .I1(\row_buf_reg[24]_16 [3]),
        .I2(\line_word_reg_n_0_[1] ),
        .I3(\row_buf_reg[20]_12 [3]),
        .I4(\line_word_reg_n_0_[0] ),
        .I5(\row_buf_reg[16]_8 [3]),
        .O(\line_data[3]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \line_data[3]_i_2 
       (.I0(\line_data_reg[3]_i_3_n_0 ),
        .I1(\line_data_reg[3]_i_4_n_0 ),
        .I2(\line_off_reg[1]__0_rep__1_n_0 ),
        .I3(\line_data_reg[3]_i_5_n_0 ),
        .I4(\line_off_reg[0]__0_rep__1_n_0 ),
        .I5(\line_data_reg[3]_i_6_n_0 ),
        .O(\line_data[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[3]_i_7 
       (.I0(\row_buf_reg[9]_1 [3]),
        .I1(\row_buf_reg_n_0_[5][3] ),
        .I2(\line_word_reg_n_0_[1] ),
        .I3(\row_buf_reg_n_0_[1][3] ),
        .I4(\line_word_reg_n_0_[0] ),
        .I5(\row_buf_reg[29]_21 [3]),
        .O(\line_data[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[3]_i_8 
       (.I0(\row_buf_reg[25]_17 [3]),
        .I1(\row_buf_reg[21]_13 [3]),
        .I2(\line_word_reg_n_0_[1] ),
        .I3(\row_buf_reg[17]_9 [3]),
        .I4(\line_word_reg_n_0_[0] ),
        .I5(\row_buf_reg[13]_5 [3]),
        .O(\line_data[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[3]_i_9 
       (.I0(\row_buf_reg[10]_2 [3]),
        .I1(\row_buf_reg_n_0_[6][3] ),
        .I2(\line_word_reg_n_0_[1] ),
        .I3(\row_buf_reg_n_0_[2][3] ),
        .I4(\line_word_reg_n_0_[0] ),
        .I5(\row_buf_reg[30]_22 [3]),
        .O(\line_data[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h00A8A8A800000000)) 
    \line_data[42]_i_1 
       (.I0(\line_data_reg[42]_i_2_n_0 ),
        .I1(\line_data_reg[47]_i_2_n_0 ),
        .I2(\line_data_reg[46]_i_2_n_0 ),
        .I3(\line_off_reg[0]__0_rep__1_n_0 ),
        .I4(\line_data[47]_i_4_n_0 ),
        .I5(line_we3__0),
        .O(p_33_out__0[42]));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    \line_data[42]_i_10 
       (.I0(\row_buf_reg_n_0_[5][10] ),
        .I1(\row_buf_reg_n_0_[4][10] ),
        .I2(line_off[0]),
        .I3(line_off[1]),
        .I4(\row_buf_reg_n_0_[7][10] ),
        .I5(\row_buf_reg_n_0_[6][10] ),
        .O(\line_data[42]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    \line_data[42]_i_11 
       (.I0(\row_buf_reg[9]_1 [10]),
        .I1(\row_buf_reg[8]_0 [10]),
        .I2(line_off[0]),
        .I3(line_off[1]),
        .I4(\row_buf_reg[11]_3 [10]),
        .I5(\row_buf_reg[10]_2 [10]),
        .O(\line_data[42]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    \line_data[42]_i_12 
       (.I0(\row_buf_reg[13]_5 [10]),
        .I1(\row_buf_reg[12]_4 [10]),
        .I2(line_off[0]),
        .I3(line_off[1]),
        .I4(\row_buf_reg[15]_7 [10]),
        .I5(\row_buf_reg[14]_6 [10]),
        .O(\line_data[42]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFAFCFC0A0A0CFC0)) 
    \line_data[42]_i_3 
       (.I0(\line_data[42]_i_5_n_0 ),
        .I1(\line_data[42]_i_6_n_0 ),
        .I2(\line_data[47]_i_13_n_0 ),
        .I3(\line_data[42]_i_7_n_0 ),
        .I4(\line_data[47]_i_15_n_0 ),
        .I5(\line_data[42]_i_8_n_0 ),
        .O(\line_data[42]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[42]_i_4 
       (.I0(\line_data[42]_i_9_n_0 ),
        .I1(\line_data[42]_i_10_n_0 ),
        .I2(\line_data[47]_i_13_n_0 ),
        .I3(\line_data[42]_i_11_n_0 ),
        .I4(\line_data[47]_i_15_n_0 ),
        .I5(\line_data[42]_i_12_n_0 ),
        .O(\line_data[42]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    \line_data[42]_i_5 
       (.I0(\row_buf_reg[17]_9 [10]),
        .I1(\row_buf_reg[16]_8 [10]),
        .I2(line_off[0]),
        .I3(line_off[1]),
        .I4(\row_buf_reg[19]_11 [10]),
        .I5(\row_buf_reg[18]_10 [10]),
        .O(\line_data[42]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    \line_data[42]_i_6 
       (.I0(\row_buf_reg[21]_13 [10]),
        .I1(\row_buf_reg[20]_12 [10]),
        .I2(line_off[0]),
        .I3(line_off[1]),
        .I4(\row_buf_reg[23]_15 [10]),
        .I5(\row_buf_reg[22]_14 [10]),
        .O(\line_data[42]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    \line_data[42]_i_7 
       (.I0(\row_buf_reg[29]_21 [10]),
        .I1(\row_buf_reg[28]_20 [10]),
        .I2(line_off[0]),
        .I3(line_off[1]),
        .I4(\row_buf_reg[31]_23 [10]),
        .I5(\row_buf_reg[30]_22 [10]),
        .O(\line_data[42]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    \line_data[42]_i_8 
       (.I0(\row_buf_reg[25]_17 [10]),
        .I1(\row_buf_reg[24]_16 [10]),
        .I2(line_off[0]),
        .I3(line_off[1]),
        .I4(\row_buf_reg[27]_19 [10]),
        .I5(\row_buf_reg[26]_18 [10]),
        .O(\line_data[42]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    \line_data[42]_i_9 
       (.I0(\row_buf_reg_n_0_[1][10] ),
        .I1(\row_buf_reg_n_0_[0][10] ),
        .I2(line_off[0]),
        .I3(line_off[1]),
        .I4(\row_buf_reg_n_0_[3][10] ),
        .I5(\row_buf_reg_n_0_[2][10] ),
        .O(\line_data[42]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h00A8A8A800000000)) 
    \line_data[43]_i_1 
       (.I0(\line_data_reg[43]_i_2_n_0 ),
        .I1(\line_data_reg[47]_i_2_n_0 ),
        .I2(\line_data_reg[46]_i_2_n_0 ),
        .I3(\line_off_reg[0]__0_rep__1_n_0 ),
        .I4(\line_data[47]_i_4_n_0 ),
        .I5(line_we3__0),
        .O(p_33_out__0[43]));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    \line_data[43]_i_10 
       (.I0(\row_buf_reg_n_0_[5][11] ),
        .I1(\row_buf_reg_n_0_[4][11] ),
        .I2(line_off[0]),
        .I3(line_off[1]),
        .I4(\row_buf_reg_n_0_[7][11] ),
        .I5(\row_buf_reg_n_0_[6][11] ),
        .O(\line_data[43]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    \line_data[43]_i_11 
       (.I0(\row_buf_reg[9]_1 [11]),
        .I1(\row_buf_reg[8]_0 [11]),
        .I2(line_off[0]),
        .I3(line_off[1]),
        .I4(\row_buf_reg[11]_3 [11]),
        .I5(\row_buf_reg[10]_2 [11]),
        .O(\line_data[43]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    \line_data[43]_i_12 
       (.I0(\row_buf_reg[13]_5 [11]),
        .I1(\row_buf_reg[12]_4 [11]),
        .I2(line_off[0]),
        .I3(line_off[1]),
        .I4(\row_buf_reg[15]_7 [11]),
        .I5(\row_buf_reg[14]_6 [11]),
        .O(\line_data[43]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hCFCFAFA0C0C0AFA0)) 
    \line_data[43]_i_3 
       (.I0(\line_data[43]_i_5_n_0 ),
        .I1(\line_data[43]_i_6_n_0 ),
        .I2(\line_data[47]_i_13_n_0 ),
        .I3(\line_data[43]_i_7_n_0 ),
        .I4(\line_data[47]_i_15_n_0 ),
        .I5(\line_data[43]_i_8_n_0 ),
        .O(\line_data[43]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[43]_i_4 
       (.I0(\line_data[43]_i_9_n_0 ),
        .I1(\line_data[43]_i_10_n_0 ),
        .I2(\line_data[47]_i_13_n_0 ),
        .I3(\line_data[43]_i_11_n_0 ),
        .I4(\line_data[47]_i_15_n_0 ),
        .I5(\line_data[43]_i_12_n_0 ),
        .O(\line_data[43]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    \line_data[43]_i_5 
       (.I0(\row_buf_reg[21]_13 [11]),
        .I1(\row_buf_reg[20]_12 [11]),
        .I2(line_off[0]),
        .I3(line_off[1]),
        .I4(\row_buf_reg[23]_15 [11]),
        .I5(\row_buf_reg[22]_14 [11]),
        .O(\line_data[43]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    \line_data[43]_i_6 
       (.I0(\row_buf_reg[17]_9 [11]),
        .I1(\row_buf_reg[16]_8 [11]),
        .I2(line_off[0]),
        .I3(line_off[1]),
        .I4(\row_buf_reg[19]_11 [11]),
        .I5(\row_buf_reg[18]_10 [11]),
        .O(\line_data[43]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    \line_data[43]_i_7 
       (.I0(\row_buf_reg[29]_21 [11]),
        .I1(\row_buf_reg[28]_20 [11]),
        .I2(line_off[0]),
        .I3(line_off[1]),
        .I4(\row_buf_reg[31]_23 [11]),
        .I5(\row_buf_reg[30]_22 [11]),
        .O(\line_data[43]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    \line_data[43]_i_8 
       (.I0(\row_buf_reg[25]_17 [11]),
        .I1(\row_buf_reg[24]_16 [11]),
        .I2(line_off[0]),
        .I3(line_off[1]),
        .I4(\row_buf_reg[27]_19 [11]),
        .I5(\row_buf_reg[26]_18 [11]),
        .O(\line_data[43]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    \line_data[43]_i_9 
       (.I0(\row_buf_reg_n_0_[1][11] ),
        .I1(\row_buf_reg_n_0_[0][11] ),
        .I2(line_off[0]),
        .I3(line_off[1]),
        .I4(\row_buf_reg_n_0_[3][11] ),
        .I5(\row_buf_reg_n_0_[2][11] ),
        .O(\line_data[43]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h2A00)) 
    \line_data[46]_i_1 
       (.I0(\line_data_reg[46]_i_2_n_0 ),
        .I1(\line_off_reg[0]__0_rep__1_n_0 ),
        .I2(\line_data[47]_i_4_n_0 ),
        .I3(line_we3__0),
        .O(\line_data[46]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    \line_data[46]_i_10 
       (.I0(\row_buf_reg_n_0_[5][12] ),
        .I1(\row_buf_reg_n_0_[4][12] ),
        .I2(line_off[0]),
        .I3(line_off[1]),
        .I4(\row_buf_reg_n_0_[7][12] ),
        .I5(\row_buf_reg_n_0_[6][12] ),
        .O(\line_data[46]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    \line_data[46]_i_11 
       (.I0(\row_buf_reg[9]_1 [12]),
        .I1(\row_buf_reg[8]_0 [12]),
        .I2(line_off[0]),
        .I3(line_off[1]),
        .I4(\row_buf_reg[11]_3 [12]),
        .I5(\row_buf_reg[10]_2 [12]),
        .O(\line_data[46]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    \line_data[46]_i_12 
       (.I0(\row_buf_reg[13]_5 [12]),
        .I1(\row_buf_reg[12]_4 [12]),
        .I2(line_off[0]),
        .I3(line_off[1]),
        .I4(\row_buf_reg[15]_7 [12]),
        .I5(\row_buf_reg[14]_6 [12]),
        .O(\line_data[46]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[46]_i_3 
       (.I0(\line_data[46]_i_5_n_0 ),
        .I1(\line_data[46]_i_6_n_0 ),
        .I2(\line_data[47]_i_13_n_0 ),
        .I3(\line_data[46]_i_7_n_0 ),
        .I4(\line_data[47]_i_15_n_0 ),
        .I5(\line_data[46]_i_8_n_0 ),
        .O(\line_data[46]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[46]_i_4 
       (.I0(\line_data[46]_i_9_n_0 ),
        .I1(\line_data[46]_i_10_n_0 ),
        .I2(\line_data[47]_i_13_n_0 ),
        .I3(\line_data[46]_i_11_n_0 ),
        .I4(\line_data[47]_i_15_n_0 ),
        .I5(\line_data[46]_i_12_n_0 ),
        .O(\line_data[46]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    \line_data[46]_i_5 
       (.I0(\row_buf_reg[17]_9 [12]),
        .I1(\row_buf_reg[16]_8 [12]),
        .I2(line_off[0]),
        .I3(line_off[1]),
        .I4(\row_buf_reg[19]_11 [12]),
        .I5(\row_buf_reg[18]_10 [12]),
        .O(\line_data[46]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    \line_data[46]_i_6 
       (.I0(\row_buf_reg[21]_13 [12]),
        .I1(\row_buf_reg[20]_12 [12]),
        .I2(line_off[0]),
        .I3(line_off[1]),
        .I4(\row_buf_reg[23]_15 [12]),
        .I5(\row_buf_reg[22]_14 [12]),
        .O(\line_data[46]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    \line_data[46]_i_7 
       (.I0(\row_buf_reg[25]_17 [12]),
        .I1(\row_buf_reg[24]_16 [12]),
        .I2(line_off[0]),
        .I3(line_off[1]),
        .I4(\row_buf_reg[27]_19 [12]),
        .I5(\row_buf_reg[26]_18 [12]),
        .O(\line_data[46]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    \line_data[46]_i_8 
       (.I0(\row_buf_reg[29]_21 [12]),
        .I1(\row_buf_reg[28]_20 [12]),
        .I2(line_off[0]),
        .I3(line_off[1]),
        .I4(\row_buf_reg[31]_23 [12]),
        .I5(\row_buf_reg[30]_22 [12]),
        .O(\line_data[46]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    \line_data[46]_i_9 
       (.I0(\row_buf_reg_n_0_[1][12] ),
        .I1(\row_buf_reg_n_0_[0][12] ),
        .I2(line_off[0]),
        .I3(line_off[1]),
        .I4(\row_buf_reg_n_0_[3][12] ),
        .I5(\row_buf_reg_n_0_[2][12] ),
        .O(\line_data[46]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h0888)) 
    \line_data[47]_i_1 
       (.I0(\line_data_reg[47]_i_2_n_0 ),
        .I1(line_we3__0),
        .I2(\line_data[47]_i_4_n_0 ),
        .I3(\line_off_reg[0]__0_rep__1_n_0 ),
        .O(p_33_out__0[47]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDFF)) 
    \line_data[47]_i_10 
       (.I0(\line_off_reg[0]__0_rep__1_n_0 ),
        .I1(\line_word_reg_n_0_[3] ),
        .I2(\line_word_reg_n_0_[0] ),
        .I3(\line_off_reg[1]__0_rep__0_n_0 ),
        .I4(\line_word_reg_n_0_[1] ),
        .I5(\line_word_reg_n_0_[2] ),
        .O(\line_data[47]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    \line_data[47]_i_11 
       (.I0(\row_buf_reg[21]_13 [12]),
        .I1(\row_buf_reg[20]_12 [15]),
        .I2(line_off[0]),
        .I3(line_off[1]),
        .I4(\row_buf_reg[23]_15 [15]),
        .I5(\row_buf_reg[22]_14 [15]),
        .O(\line_data[47]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    \line_data[47]_i_12 
       (.I0(\row_buf_reg[17]_9 [15]),
        .I1(\row_buf_reg[16]_8 [12]),
        .I2(line_off[0]),
        .I3(line_off[1]),
        .I4(\row_buf_reg[19]_11 [15]),
        .I5(\row_buf_reg[18]_10 [12]),
        .O(\line_data[47]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h6555)) 
    \line_data[47]_i_13 
       (.I0(\line_word_reg_n_0_[1] ),
        .I1(\line_word_reg_n_0_[0] ),
        .I2(line_off[0]),
        .I3(line_off[1]),
        .O(\line_data[47]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    \line_data[47]_i_14 
       (.I0(\row_buf_reg[25]_17 [15]),
        .I1(\row_buf_reg[24]_16 [15]),
        .I2(line_off[0]),
        .I3(line_off[1]),
        .I4(\row_buf_reg[27]_19 [15]),
        .I5(\row_buf_reg[26]_18 [12]),
        .O(\line_data[47]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h95)) 
    \line_data[47]_i_15 
       (.I0(\line_word_reg_n_0_[0] ),
        .I1(line_off[1]),
        .I2(line_off[0]),
        .O(\line_data[47]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    \line_data[47]_i_16 
       (.I0(\row_buf_reg[29]_21 [12]),
        .I1(\row_buf_reg[28]_20 [15]),
        .I2(line_off[0]),
        .I3(line_off[1]),
        .I4(\row_buf_reg[31]_23 [12]),
        .I5(\row_buf_reg[30]_22 [15]),
        .O(\line_data[47]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    \line_data[47]_i_17 
       (.I0(\row_buf_reg_n_0_[5][12] ),
        .I1(\row_buf_reg_n_0_[4][15] ),
        .I2(line_off[0]),
        .I3(line_off[1]),
        .I4(\row_buf_reg_n_0_[7][15] ),
        .I5(\row_buf_reg_n_0_[6][15] ),
        .O(\line_data[47]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    \line_data[47]_i_18 
       (.I0(\row_buf_reg_n_0_[1][15] ),
        .I1(\row_buf_reg_n_0_[0][12] ),
        .I2(line_off[0]),
        .I3(line_off[1]),
        .I4(\row_buf_reg_n_0_[3][15] ),
        .I5(\row_buf_reg_n_0_[2][12] ),
        .O(\line_data[47]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    \line_data[47]_i_19 
       (.I0(\row_buf_reg[9]_1 [15]),
        .I1(\row_buf_reg[8]_0 [15]),
        .I2(line_off[0]),
        .I3(line_off[1]),
        .I4(\row_buf_reg[11]_3 [15]),
        .I5(\row_buf_reg[10]_2 [12]),
        .O(\line_data[47]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
    \line_data[47]_i_20 
       (.I0(\row_buf_reg[13]_5 [12]),
        .I1(\row_buf_reg[12]_4 [15]),
        .I2(line_off[0]),
        .I3(line_off[1]),
        .I4(\row_buf_reg[15]_7 [15]),
        .I5(\row_buf_reg[14]_6 [15]),
        .O(\line_data[47]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDFF)) 
    \line_data[47]_i_22 
       (.I0(\line_off_reg[0]__0_rep__1_n_0 ),
        .I1(\line_word_reg_n_0_[3] ),
        .I2(\line_word_reg_n_0_[0] ),
        .I3(\line_off_reg[1]__0_rep__0_n_0 ),
        .I4(\line_word_reg_n_0_[1] ),
        .I5(\line_word_reg_n_0_[2] ),
        .O(\line_data[47]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDFF)) 
    \line_data[47]_i_23 
       (.I0(\line_off_reg[0]__0_rep__1_n_0 ),
        .I1(\line_word_reg_n_0_[3] ),
        .I2(\line_word_reg_n_0_[0] ),
        .I3(\line_off_reg[1]__0_rep__0_n_0 ),
        .I4(\line_word_reg_n_0_[1] ),
        .I5(\line_word_reg_n_0_[2] ),
        .O(\line_data[47]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDFF)) 
    \line_data[47]_i_24 
       (.I0(\line_off_reg[0]__0_rep__1_n_0 ),
        .I1(\line_word_reg_n_0_[3] ),
        .I2(\line_word_reg_n_0_[0] ),
        .I3(\line_off_reg[1]__0_rep__0_n_0 ),
        .I4(\line_word_reg_n_0_[1] ),
        .I5(\line_word_reg_n_0_[2] ),
        .O(\line_data[47]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDFF)) 
    \line_data[47]_i_25 
       (.I0(\line_off_reg[0]__0_rep__1_n_0 ),
        .I1(\line_word_reg_n_0_[3] ),
        .I2(\line_word_reg_n_0_[0] ),
        .I3(\line_off_reg[1]__0_rep__0_n_0 ),
        .I4(\line_word_reg_n_0_[1] ),
        .I5(\line_word_reg_n_0_[2] ),
        .O(\line_data[47]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDFF)) 
    \line_data[47]_i_27 
       (.I0(\line_off_reg[0]__0_rep__1_n_0 ),
        .I1(\line_word_reg_n_0_[3] ),
        .I2(\line_word_reg_n_0_[0] ),
        .I3(\line_off_reg[1]__0_rep__0_n_0 ),
        .I4(\line_word_reg_n_0_[1] ),
        .I5(\line_word_reg_n_0_[2] ),
        .O(\line_data[47]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDFF)) 
    \line_data[47]_i_28 
       (.I0(\line_off_reg[0]__0_rep__1_n_0 ),
        .I1(\line_word_reg_n_0_[3] ),
        .I2(\line_word_reg_n_0_[0] ),
        .I3(\line_off_reg[1]__0_rep__0_n_0 ),
        .I4(\line_word_reg_n_0_[1] ),
        .I5(\line_word_reg_n_0_[2] ),
        .O(\line_data[47]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDFF)) 
    \line_data[47]_i_29 
       (.I0(\line_off_reg[0]__0_rep__1_n_0 ),
        .I1(\line_word_reg_n_0_[3] ),
        .I2(\line_word_reg_n_0_[0] ),
        .I3(\line_off_reg[1]__0_rep__0_n_0 ),
        .I4(\line_word_reg_n_0_[1] ),
        .I5(\line_word_reg_n_0_[2] ),
        .O(\line_data[47]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDFF)) 
    \line_data[47]_i_30 
       (.I0(\line_off_reg[0]__0_rep__1_n_0 ),
        .I1(\line_word_reg_n_0_[3] ),
        .I2(\line_word_reg_n_0_[0] ),
        .I3(\line_off_reg[1]__0_rep__0_n_0 ),
        .I4(\line_word_reg_n_0_[1] ),
        .I5(\line_word_reg_n_0_[2] ),
        .O(\line_data[47]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h00000080AAEAFF3F)) 
    \line_data[47]_i_31 
       (.I0(spr_att_vdp_dout__0[52]),
        .I1(\line_off_reg[0]__0_rep__1_n_0 ),
        .I2(\line_data[31]_i_4_n_0 ),
        .I3(\line_word_reg_n_0_[1] ),
        .I4(\line_word_reg_n_0_[2] ),
        .I5(\line_word_reg_n_0_[3] ),
        .O(\line_data[47]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDFF)) 
    \line_data[47]_i_32 
       (.I0(\line_off_reg[0]__0_rep__1_n_0 ),
        .I1(\line_word_reg_n_0_[3] ),
        .I2(\line_word_reg_n_0_[0] ),
        .I3(\line_off_reg[1]__0_rep__0_n_0 ),
        .I4(\line_word_reg_n_0_[1] ),
        .I5(\line_word_reg_n_0_[2] ),
        .O(\line_data[47]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDFF)) 
    \line_data[47]_i_33 
       (.I0(\line_off_reg[0]__0_rep__1_n_0 ),
        .I1(\line_word_reg_n_0_[3] ),
        .I2(\line_word_reg_n_0_[0] ),
        .I3(\line_off_reg[1]__0_rep__0_n_0 ),
        .I4(\line_word_reg_n_0_[1] ),
        .I5(\line_word_reg_n_0_[2] ),
        .O(\line_data[47]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDFF)) 
    \line_data[47]_i_34 
       (.I0(\line_off_reg[0]__0_rep__1_n_0 ),
        .I1(\line_word_reg_n_0_[3] ),
        .I2(\line_word_reg_n_0_[0] ),
        .I3(\line_off_reg[1]__0_rep__0_n_0 ),
        .I4(\line_word_reg_n_0_[1] ),
        .I5(\line_word_reg_n_0_[2] ),
        .O(\line_data[47]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h2222822244442444)) 
    \line_data[47]_i_35 
       (.I0(\line_word_reg_n_0_[3] ),
        .I1(\line_word_reg_n_0_[2] ),
        .I2(\line_off_reg[0]__0_rep__1_n_0 ),
        .I3(\line_data[31]_i_4_n_0 ),
        .I4(\line_word_reg_n_0_[1] ),
        .I5(spr_att_vdp_dout__0[52]),
        .O(\line_data[47]_i_35_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \line_data[47]_i_4 
       (.I0(\line_word_reg_n_0_[3] ),
        .I1(\line_word_reg_n_0_[0] ),
        .I2(\line_off_reg[1]__0_rep__0_n_0 ),
        .I3(\line_word_reg_n_0_[1] ),
        .I4(\line_word_reg_n_0_[2] ),
        .O(\line_data[47]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h55555955)) 
    \line_data[47]_i_5 
       (.I0(\line_word_reg_n_0_[2] ),
        .I1(\line_off_reg[0]__0_rep__1_n_0 ),
        .I2(\line_word_reg_n_0_[0] ),
        .I3(\line_off_reg[1]__0_rep__0_n_0 ),
        .I4(\line_word_reg_n_0_[1] ),
        .O(\line_data[47]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \line_data[47]_i_6 
       (.I0(\line_data[47]_i_11_n_0 ),
        .I1(\line_data[47]_i_12_n_0 ),
        .I2(\line_data[47]_i_13_n_0 ),
        .I3(\line_data[47]_i_14_n_0 ),
        .I4(\line_data[47]_i_15_n_0 ),
        .I5(\line_data[47]_i_16_n_0 ),
        .O(\line_data[47]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \line_data[47]_i_7 
       (.I0(\line_data[47]_i_17_n_0 ),
        .I1(\line_data[47]_i_18_n_0 ),
        .I2(\line_data[47]_i_13_n_0 ),
        .I3(\line_data[47]_i_19_n_0 ),
        .I4(\line_data[47]_i_15_n_0 ),
        .I5(\line_data[47]_i_20_n_0 ),
        .O(\line_data[47]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDFF)) 
    \line_data[47]_i_9 
       (.I0(\line_off_reg[0]__0_rep__1_n_0 ),
        .I1(\line_word_reg_n_0_[3] ),
        .I2(\line_word_reg_n_0_[0] ),
        .I3(\line_off_reg[1]__0_rep__0_n_0 ),
        .I4(\line_word_reg_n_0_[1] ),
        .I5(\line_word_reg_n_0_[2] ),
        .O(\line_data[47]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h000000000E000E0E)) 
    \line_data[50]_i_1 
       (.I0(\line_data[63]_i_2_n_0 ),
        .I1(\line_data[62]_i_2_n_0 ),
        .I2(\line_word_reg_n_0_[3] ),
        .I3(spr_att_vdp_dout__0[52]),
        .I4(\line_word_reg_n_0_[2] ),
        .I5(\line_data[50]_i_2_n_0 ),
        .O(p_33_out__0[50]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[50]_i_10 
       (.I0(\row_buf_reg[20]_12 [2]),
        .I1(\row_buf_reg[21]_13 [2]),
        .I2(\line_off_reg[1]__0_rep_n_0 ),
        .I3(\row_buf_reg[22]_14 [2]),
        .I4(\line_off_reg[0]__0_rep_n_0 ),
        .I5(\row_buf_reg[23]_15 [2]),
        .O(\line_data[50]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[50]_i_11 
       (.I0(\row_buf_reg_n_0_[0][2] ),
        .I1(\row_buf_reg_n_0_[1][2] ),
        .I2(\line_off_reg[1]__0_rep_n_0 ),
        .I3(\row_buf_reg_n_0_[2][2] ),
        .I4(\line_off_reg[0]__0_rep_n_0 ),
        .I5(\row_buf_reg_n_0_[3][2] ),
        .O(\line_data[50]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[50]_i_12 
       (.I0(\row_buf_reg_n_0_[4][2] ),
        .I1(\row_buf_reg_n_0_[5][2] ),
        .I2(\line_off_reg[1]__0_rep_n_0 ),
        .I3(\row_buf_reg_n_0_[6][2] ),
        .I4(\line_off_reg[0]__0_rep_n_0 ),
        .I5(\row_buf_reg_n_0_[7][2] ),
        .O(\line_data[50]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[50]_i_13 
       (.I0(\row_buf_reg[8]_0 [2]),
        .I1(\row_buf_reg[9]_1 [2]),
        .I2(\line_off_reg[1]__0_rep_n_0 ),
        .I3(\row_buf_reg[10]_2 [2]),
        .I4(\line_off_reg[0]__0_rep_n_0 ),
        .I5(\row_buf_reg[11]_3 [2]),
        .O(\line_data[50]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[50]_i_14 
       (.I0(\row_buf_reg[12]_4 [2]),
        .I1(\row_buf_reg[13]_5 [2]),
        .I2(\line_off_reg[1]__0_rep_n_0 ),
        .I3(\row_buf_reg[14]_6 [2]),
        .I4(\line_off_reg[0]__0_rep_n_0 ),
        .I5(\row_buf_reg[15]_7 [2]),
        .O(\line_data[50]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h50505F5F303F303F)) 
    \line_data[50]_i_2 
       (.I0(\line_data_reg[50]_i_3_n_0 ),
        .I1(\line_data_reg[50]_i_4_n_0 ),
        .I2(\line_word_reg_n_0_[2] ),
        .I3(\line_data_reg[50]_i_5_n_0 ),
        .I4(\line_data_reg[50]_i_6_n_0 ),
        .I5(\line_word_reg_n_0_[1] ),
        .O(\line_data[50]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[50]_i_7 
       (.I0(\row_buf_reg[24]_16 [2]),
        .I1(\row_buf_reg[25]_17 [2]),
        .I2(\line_off_reg[1]__0_rep_n_0 ),
        .I3(\row_buf_reg[26]_18 [2]),
        .I4(\line_off_reg[0]__0_rep_n_0 ),
        .I5(\row_buf_reg[27]_19 [2]),
        .O(\line_data[50]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[50]_i_8 
       (.I0(\row_buf_reg[28]_20 [2]),
        .I1(\row_buf_reg[29]_21 [2]),
        .I2(\line_off_reg[1]__0_rep_n_0 ),
        .I3(\row_buf_reg[30]_22 [2]),
        .I4(\line_off_reg[0]__0_rep_n_0 ),
        .I5(\row_buf_reg[31]_23 [2]),
        .O(\line_data[50]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[50]_i_9 
       (.I0(\row_buf_reg[16]_8 [2]),
        .I1(\row_buf_reg[17]_9 [2]),
        .I2(\line_off_reg[1]__0_rep_n_0 ),
        .I3(\row_buf_reg[18]_10 [2]),
        .I4(\line_off_reg[0]__0_rep_n_0 ),
        .I5(\row_buf_reg[19]_11 [2]),
        .O(\line_data[50]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h000000000E000E0E)) 
    \line_data[51]_i_1 
       (.I0(\line_data[63]_i_2_n_0 ),
        .I1(\line_data[62]_i_2_n_0 ),
        .I2(\line_word_reg_n_0_[3] ),
        .I3(spr_att_vdp_dout__0[52]),
        .I4(\line_word_reg_n_0_[2] ),
        .I5(\line_data[51]_i_2_n_0 ),
        .O(p_33_out__0[51]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[51]_i_10 
       (.I0(\row_buf_reg[28]_20 [3]),
        .I1(\row_buf_reg[29]_21 [3]),
        .I2(\line_off_reg[1]__0_rep_n_0 ),
        .I3(\row_buf_reg[30]_22 [3]),
        .I4(\line_off_reg[0]__0_rep_n_0 ),
        .I5(\row_buf_reg[31]_23 [3]),
        .O(\line_data[51]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[51]_i_11 
       (.I0(\row_buf_reg[8]_0 [3]),
        .I1(\row_buf_reg[9]_1 [3]),
        .I2(\line_off_reg[1]__0_rep_n_0 ),
        .I3(\row_buf_reg[10]_2 [3]),
        .I4(\line_off_reg[0]__0_rep_n_0 ),
        .I5(\row_buf_reg[11]_3 [3]),
        .O(\line_data[51]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[51]_i_12 
       (.I0(\row_buf_reg[12]_4 [3]),
        .I1(\row_buf_reg[13]_5 [3]),
        .I2(\line_off_reg[1]__0_rep_n_0 ),
        .I3(\row_buf_reg[14]_6 [3]),
        .I4(\line_off_reg[0]__0_rep_n_0 ),
        .I5(\row_buf_reg[15]_7 [3]),
        .O(\line_data[51]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[51]_i_13 
       (.I0(\row_buf_reg_n_0_[0][3] ),
        .I1(\row_buf_reg_n_0_[1][3] ),
        .I2(\line_off_reg[1]__0_rep_n_0 ),
        .I3(\row_buf_reg_n_0_[2][3] ),
        .I4(\line_off_reg[0]__0_rep_n_0 ),
        .I5(\row_buf_reg_n_0_[3][3] ),
        .O(\line_data[51]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[51]_i_14 
       (.I0(\row_buf_reg_n_0_[4][3] ),
        .I1(\row_buf_reg_n_0_[5][3] ),
        .I2(\line_off_reg[1]__0_rep_n_0 ),
        .I3(\row_buf_reg_n_0_[6][3] ),
        .I4(\line_off_reg[0]__0_rep_n_0 ),
        .I5(\row_buf_reg_n_0_[7][3] ),
        .O(\line_data[51]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h303F303F50505F5F)) 
    \line_data[51]_i_2 
       (.I0(\line_data_reg[51]_i_3_n_0 ),
        .I1(\line_data_reg[51]_i_4_n_0 ),
        .I2(\line_word_reg_n_0_[2] ),
        .I3(\line_data_reg[51]_i_5_n_0 ),
        .I4(\line_data_reg[51]_i_6_n_0 ),
        .I5(\line_word_reg_n_0_[1] ),
        .O(\line_data[51]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[51]_i_7 
       (.I0(\row_buf_reg[16]_8 [3]),
        .I1(\row_buf_reg[17]_9 [3]),
        .I2(\line_off_reg[1]__0_rep_n_0 ),
        .I3(\row_buf_reg[18]_10 [3]),
        .I4(\line_off_reg[0]__0_rep_n_0 ),
        .I5(\row_buf_reg[19]_11 [3]),
        .O(\line_data[51]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[51]_i_8 
       (.I0(\row_buf_reg[20]_12 [3]),
        .I1(\row_buf_reg[21]_13 [3]),
        .I2(\line_off_reg[1]__0_rep_n_0 ),
        .I3(\row_buf_reg[22]_14 [3]),
        .I4(\line_off_reg[0]__0_rep_n_0 ),
        .I5(\row_buf_reg[23]_15 [3]),
        .O(\line_data[51]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[51]_i_9 
       (.I0(\row_buf_reg[24]_16 [3]),
        .I1(\row_buf_reg[25]_17 [3]),
        .I2(\line_off_reg[1]__0_rep_n_0 ),
        .I3(\row_buf_reg[26]_18 [3]),
        .I4(\line_off_reg[0]__0_rep_n_0 ),
        .I5(\row_buf_reg[27]_19 [3]),
        .O(\line_data[51]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h000000000E000E0E)) 
    \line_data[54]_i_1 
       (.I0(\line_data[63]_i_2_n_0 ),
        .I1(\line_data[62]_i_2_n_0 ),
        .I2(\line_word_reg_n_0_[3] ),
        .I3(spr_att_vdp_dout__0[52]),
        .I4(\line_word_reg_n_0_[2] ),
        .I5(\line_data[54]_i_2_n_0 ),
        .O(p_33_out__0[54]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[54]_i_10 
       (.I0(\row_buf_reg[20]_12 [6]),
        .I1(\row_buf_reg[21]_13 [6]),
        .I2(\line_off_reg[1]__0_rep_n_0 ),
        .I3(\row_buf_reg[22]_14 [6]),
        .I4(\line_off_reg[0]__0_rep_n_0 ),
        .I5(\row_buf_reg[23]_15 [6]),
        .O(\line_data[54]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[54]_i_11 
       (.I0(\row_buf_reg[8]_0 [6]),
        .I1(\row_buf_reg[9]_1 [6]),
        .I2(\line_off_reg[1]__0_rep_n_0 ),
        .I3(\row_buf_reg[10]_2 [6]),
        .I4(\line_off_reg[0]__0_rep_n_0 ),
        .I5(\row_buf_reg[11]_3 [6]),
        .O(\line_data[54]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[54]_i_12 
       (.I0(\row_buf_reg[12]_4 [6]),
        .I1(\row_buf_reg[13]_5 [6]),
        .I2(\line_off_reg[1]__0_rep_n_0 ),
        .I3(\row_buf_reg[14]_6 [6]),
        .I4(\line_off_reg[0]__0_rep_n_0 ),
        .I5(\row_buf_reg[15]_7 [6]),
        .O(\line_data[54]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[54]_i_13 
       (.I0(\row_buf_reg_n_0_[0][6] ),
        .I1(\row_buf_reg_n_0_[1][6] ),
        .I2(\line_off_reg[1]__0_rep_n_0 ),
        .I3(\row_buf_reg_n_0_[2][6] ),
        .I4(\line_off_reg[0]__0_rep_n_0 ),
        .I5(\row_buf_reg_n_0_[3][6] ),
        .O(\line_data[54]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[54]_i_14 
       (.I0(\row_buf_reg_n_0_[4][6] ),
        .I1(\row_buf_reg_n_0_[5][6] ),
        .I2(\line_off_reg[1]__0_rep_n_0 ),
        .I3(\row_buf_reg_n_0_[6][6] ),
        .I4(\line_off_reg[0]__0_rep_n_0 ),
        .I5(\row_buf_reg_n_0_[7][6] ),
        .O(\line_data[54]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h505F505F30303F3F)) 
    \line_data[54]_i_2 
       (.I0(\line_data_reg[54]_i_3_n_0 ),
        .I1(\line_data_reg[54]_i_4_n_0 ),
        .I2(\line_word_reg_n_0_[2] ),
        .I3(\line_data_reg[54]_i_5_n_0 ),
        .I4(\line_data_reg[54]_i_6_n_0 ),
        .I5(\line_word_reg_n_0_[1] ),
        .O(\line_data[54]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[54]_i_7 
       (.I0(\row_buf_reg[24]_16 [6]),
        .I1(\row_buf_reg[25]_17 [6]),
        .I2(\line_off_reg[1]__0_rep_n_0 ),
        .I3(\row_buf_reg[26]_18 [6]),
        .I4(\line_off_reg[0]__0_rep_n_0 ),
        .I5(\row_buf_reg[27]_19 [6]),
        .O(\line_data[54]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[54]_i_8 
       (.I0(\row_buf_reg[28]_20 [6]),
        .I1(\row_buf_reg[29]_21 [6]),
        .I2(\line_off_reg[1]__0_rep_n_0 ),
        .I3(\row_buf_reg[30]_22 [6]),
        .I4(\line_off_reg[0]__0_rep_n_0 ),
        .I5(\row_buf_reg[31]_23 [6]),
        .O(\line_data[54]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[54]_i_9 
       (.I0(\row_buf_reg[16]_8 [6]),
        .I1(\row_buf_reg[17]_9 [6]),
        .I2(\line_off_reg[1]__0_rep_n_0 ),
        .I3(\row_buf_reg[18]_10 [6]),
        .I4(\line_off_reg[0]__0_rep_n_0 ),
        .I5(\row_buf_reg[19]_11 [6]),
        .O(\line_data[54]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h000000000E000E0E)) 
    \line_data[55]_i_1 
       (.I0(\line_data[63]_i_2_n_0 ),
        .I1(\line_data[62]_i_2_n_0 ),
        .I2(\line_word_reg_n_0_[3] ),
        .I3(spr_att_vdp_dout__0[52]),
        .I4(\line_word_reg_n_0_[2] ),
        .I5(\line_data[55]_i_2_n_0 ),
        .O(p_33_out__0[55]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[55]_i_10 
       (.I0(\row_buf_reg[20]_12 [7]),
        .I1(\row_buf_reg[21]_13 [7]),
        .I2(\line_off_reg[1]__0_rep_n_0 ),
        .I3(\row_buf_reg[22]_14 [7]),
        .I4(\line_off_reg[0]__0_rep_n_0 ),
        .I5(\row_buf_reg[23]_15 [7]),
        .O(\line_data[55]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[55]_i_11 
       (.I0(\row_buf_reg[8]_0 [7]),
        .I1(\row_buf_reg[9]_1 [7]),
        .I2(\line_off_reg[1]__0_rep_n_0 ),
        .I3(\row_buf_reg[10]_2 [7]),
        .I4(\line_off_reg[0]__0_rep_n_0 ),
        .I5(\row_buf_reg[11]_3 [7]),
        .O(\line_data[55]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[55]_i_12 
       (.I0(\row_buf_reg[12]_4 [7]),
        .I1(\row_buf_reg[13]_5 [7]),
        .I2(\line_off_reg[1]__0_rep_n_0 ),
        .I3(\row_buf_reg[14]_6 [7]),
        .I4(\line_off_reg[0]__0_rep_n_0 ),
        .I5(\row_buf_reg[15]_7 [7]),
        .O(\line_data[55]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[55]_i_13 
       (.I0(\row_buf_reg_n_0_[0][7] ),
        .I1(\row_buf_reg_n_0_[1][7] ),
        .I2(\line_off_reg[1]__0_rep_n_0 ),
        .I3(\row_buf_reg_n_0_[2][7] ),
        .I4(\line_off_reg[0]__0_rep_n_0 ),
        .I5(\row_buf_reg_n_0_[3][7] ),
        .O(\line_data[55]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[55]_i_14 
       (.I0(\row_buf_reg_n_0_[4][7] ),
        .I1(\row_buf_reg_n_0_[5][7] ),
        .I2(\line_off_reg[1]__0_rep_n_0 ),
        .I3(\row_buf_reg_n_0_[6][7] ),
        .I4(\line_off_reg[0]__0_rep_n_0 ),
        .I5(\row_buf_reg_n_0_[7][7] ),
        .O(\line_data[55]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h505F505F30303F3F)) 
    \line_data[55]_i_2 
       (.I0(\line_data_reg[55]_i_3_n_0 ),
        .I1(\line_data_reg[55]_i_4_n_0 ),
        .I2(\line_word_reg_n_0_[2] ),
        .I3(\line_data_reg[55]_i_5_n_0 ),
        .I4(\line_data_reg[55]_i_6_n_0 ),
        .I5(\line_word_reg_n_0_[1] ),
        .O(\line_data[55]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[55]_i_7 
       (.I0(\row_buf_reg[24]_16 [7]),
        .I1(\row_buf_reg[25]_17 [7]),
        .I2(\line_off_reg[1]__0_rep_n_0 ),
        .I3(\row_buf_reg[26]_18 [7]),
        .I4(\line_off_reg[0]__0_rep_n_0 ),
        .I5(\row_buf_reg[27]_19 [7]),
        .O(\line_data[55]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[55]_i_8 
       (.I0(\row_buf_reg[28]_20 [7]),
        .I1(\row_buf_reg[29]_21 [7]),
        .I2(\line_off_reg[1]__0_rep_n_0 ),
        .I3(\row_buf_reg[30]_22 [7]),
        .I4(\line_off_reg[0]__0_rep_n_0 ),
        .I5(\row_buf_reg[31]_23 [7]),
        .O(\line_data[55]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[55]_i_9 
       (.I0(\row_buf_reg[16]_8 [7]),
        .I1(\row_buf_reg[17]_9 [7]),
        .I2(\line_off_reg[1]__0_rep_n_0 ),
        .I3(\row_buf_reg[18]_10 [7]),
        .I4(\line_off_reg[0]__0_rep_n_0 ),
        .I5(\row_buf_reg[19]_11 [7]),
        .O(\line_data[55]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h000000000E000E0E)) 
    \line_data[58]_i_1 
       (.I0(\line_data[63]_i_2_n_0 ),
        .I1(\line_data[62]_i_2_n_0 ),
        .I2(\line_word_reg_n_0_[3] ),
        .I3(spr_att_vdp_dout__0[52]),
        .I4(\line_word_reg_n_0_[2] ),
        .I5(\line_data[58]_i_2_n_0 ),
        .O(p_33_out__0[58]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[58]_i_10 
       (.I0(\row_buf_reg[28]_20 [10]),
        .I1(\row_buf_reg[29]_21 [10]),
        .I2(\line_off_reg[1]__0_rep_n_0 ),
        .I3(\row_buf_reg[30]_22 [10]),
        .I4(\line_off_reg[0]__0_rep_n_0 ),
        .I5(\row_buf_reg[31]_23 [10]),
        .O(\line_data[58]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[58]_i_11 
       (.I0(\row_buf_reg[8]_0 [10]),
        .I1(\row_buf_reg[9]_1 [10]),
        .I2(\line_off_reg[1]__0_rep_n_0 ),
        .I3(\row_buf_reg[10]_2 [10]),
        .I4(\line_off_reg[0]__0_rep_n_0 ),
        .I5(\row_buf_reg[11]_3 [10]),
        .O(\line_data[58]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[58]_i_12 
       (.I0(\row_buf_reg[12]_4 [10]),
        .I1(\row_buf_reg[13]_5 [10]),
        .I2(\line_off_reg[1]__0_rep_n_0 ),
        .I3(\row_buf_reg[14]_6 [10]),
        .I4(\line_off_reg[0]__0_rep_n_0 ),
        .I5(\row_buf_reg[15]_7 [10]),
        .O(\line_data[58]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[58]_i_13 
       (.I0(\row_buf_reg_n_0_[0][10] ),
        .I1(\row_buf_reg_n_0_[1][10] ),
        .I2(\line_off_reg[1]__0_rep_n_0 ),
        .I3(\row_buf_reg_n_0_[2][10] ),
        .I4(\line_off_reg[0]__0_rep_n_0 ),
        .I5(\row_buf_reg_n_0_[3][10] ),
        .O(\line_data[58]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[58]_i_14 
       (.I0(\row_buf_reg_n_0_[4][10] ),
        .I1(\row_buf_reg_n_0_[5][10] ),
        .I2(\line_off_reg[1]__0_rep_n_0 ),
        .I3(\row_buf_reg_n_0_[6][10] ),
        .I4(\line_off_reg[0]__0_rep_n_0 ),
        .I5(\row_buf_reg_n_0_[7][10] ),
        .O(\line_data[58]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h303F303F50505F5F)) 
    \line_data[58]_i_2 
       (.I0(\line_data_reg[58]_i_3_n_0 ),
        .I1(\line_data_reg[58]_i_4_n_0 ),
        .I2(\line_word_reg_n_0_[2] ),
        .I3(\line_data_reg[58]_i_5_n_0 ),
        .I4(\line_data_reg[58]_i_6_n_0 ),
        .I5(\line_word_reg_n_0_[1] ),
        .O(\line_data[58]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[58]_i_7 
       (.I0(\row_buf_reg[16]_8 [10]),
        .I1(\row_buf_reg[17]_9 [10]),
        .I2(\line_off_reg[1]__0_rep_n_0 ),
        .I3(\row_buf_reg[18]_10 [10]),
        .I4(\line_off_reg[0]__0_rep_n_0 ),
        .I5(\row_buf_reg[19]_11 [10]),
        .O(\line_data[58]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[58]_i_8 
       (.I0(\row_buf_reg[20]_12 [10]),
        .I1(\row_buf_reg[21]_13 [10]),
        .I2(\line_off_reg[1]__0_rep_n_0 ),
        .I3(\row_buf_reg[22]_14 [10]),
        .I4(\line_off_reg[0]__0_rep_n_0 ),
        .I5(\row_buf_reg[23]_15 [10]),
        .O(\line_data[58]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[58]_i_9 
       (.I0(\row_buf_reg[24]_16 [10]),
        .I1(\row_buf_reg[25]_17 [10]),
        .I2(\line_off_reg[1]__0_rep_n_0 ),
        .I3(\row_buf_reg[26]_18 [10]),
        .I4(\line_off_reg[0]__0_rep_n_0 ),
        .I5(\row_buf_reg[27]_19 [10]),
        .O(\line_data[58]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h000000000E000E0E)) 
    \line_data[59]_i_1 
       (.I0(\line_data[63]_i_2_n_0 ),
        .I1(\line_data[62]_i_2_n_0 ),
        .I2(\line_word_reg_n_0_[3] ),
        .I3(spr_att_vdp_dout__0[52]),
        .I4(\line_word_reg_n_0_[2] ),
        .I5(\line_data[59]_i_2_n_0 ),
        .O(p_33_out__0[59]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[59]_i_10 
       (.I0(\row_buf_reg[20]_12 [11]),
        .I1(\row_buf_reg[21]_13 [11]),
        .I2(\line_off_reg[1]__0_rep_n_0 ),
        .I3(\row_buf_reg[22]_14 [11]),
        .I4(\line_off_reg[0]__0_rep_n_0 ),
        .I5(\row_buf_reg[23]_15 [11]),
        .O(\line_data[59]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[59]_i_11 
       (.I0(\row_buf_reg[8]_0 [11]),
        .I1(\row_buf_reg[9]_1 [11]),
        .I2(\line_off_reg[1]__0_rep_n_0 ),
        .I3(\row_buf_reg[10]_2 [11]),
        .I4(\line_off_reg[0]__0_rep_n_0 ),
        .I5(\row_buf_reg[11]_3 [11]),
        .O(\line_data[59]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[59]_i_12 
       (.I0(\row_buf_reg[12]_4 [11]),
        .I1(\row_buf_reg[13]_5 [11]),
        .I2(\line_off_reg[1]__0_rep_n_0 ),
        .I3(\row_buf_reg[14]_6 [11]),
        .I4(\line_off_reg[0]__0_rep_n_0 ),
        .I5(\row_buf_reg[15]_7 [11]),
        .O(\line_data[59]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[59]_i_13 
       (.I0(\row_buf_reg_n_0_[0][11] ),
        .I1(\row_buf_reg_n_0_[1][11] ),
        .I2(\line_off_reg[1]__0_rep_n_0 ),
        .I3(\row_buf_reg_n_0_[2][11] ),
        .I4(\line_off_reg[0]__0_rep_n_0 ),
        .I5(\row_buf_reg_n_0_[3][11] ),
        .O(\line_data[59]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[59]_i_14 
       (.I0(\row_buf_reg_n_0_[4][11] ),
        .I1(\row_buf_reg_n_0_[5][11] ),
        .I2(\line_off_reg[1]__0_rep_n_0 ),
        .I3(\row_buf_reg_n_0_[6][11] ),
        .I4(\line_off_reg[0]__0_rep_n_0 ),
        .I5(\row_buf_reg_n_0_[7][11] ),
        .O(\line_data[59]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h505F505F30303F3F)) 
    \line_data[59]_i_2 
       (.I0(\line_data_reg[59]_i_3_n_0 ),
        .I1(\line_data_reg[59]_i_4_n_0 ),
        .I2(\line_word_reg_n_0_[2] ),
        .I3(\line_data_reg[59]_i_5_n_0 ),
        .I4(\line_data_reg[59]_i_6_n_0 ),
        .I5(\line_word_reg_n_0_[1] ),
        .O(\line_data[59]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[59]_i_7 
       (.I0(\row_buf_reg[24]_16 [11]),
        .I1(\row_buf_reg[25]_17 [11]),
        .I2(\line_off_reg[1]__0_rep_n_0 ),
        .I3(\row_buf_reg[26]_18 [11]),
        .I4(\line_off_reg[0]__0_rep_n_0 ),
        .I5(\row_buf_reg[27]_19 [11]),
        .O(\line_data[59]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[59]_i_8 
       (.I0(\row_buf_reg[28]_20 [11]),
        .I1(\row_buf_reg[29]_21 [11]),
        .I2(\line_off_reg[1]__0_rep_n_0 ),
        .I3(\row_buf_reg[30]_22 [11]),
        .I4(\line_off_reg[0]__0_rep_n_0 ),
        .I5(\row_buf_reg[31]_23 [11]),
        .O(\line_data[59]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[59]_i_9 
       (.I0(\row_buf_reg[16]_8 [11]),
        .I1(\row_buf_reg[17]_9 [11]),
        .I2(\line_off_reg[1]__0_rep_n_0 ),
        .I3(\row_buf_reg[18]_10 [11]),
        .I4(\line_off_reg[0]__0_rep_n_0 ),
        .I5(\row_buf_reg[19]_11 [11]),
        .O(\line_data[59]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h00A2)) 
    \line_data[62]_i_1 
       (.I0(\line_data[62]_i_2_n_0 ),
        .I1(\line_word_reg_n_0_[2] ),
        .I2(spr_att_vdp_dout__0[52]),
        .I3(\line_word_reg_n_0_[3] ),
        .O(p_33_out__0[62]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[62]_i_10 
       (.I0(\row_buf_reg[20]_12 [12]),
        .I1(\row_buf_reg[21]_13 [12]),
        .I2(\line_off_reg[1]__0_rep_n_0 ),
        .I3(\row_buf_reg[22]_14 [12]),
        .I4(\line_off_reg[0]__0_rep_n_0 ),
        .I5(\row_buf_reg[23]_15 [12]),
        .O(\line_data[62]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[62]_i_11 
       (.I0(\row_buf_reg[8]_0 [12]),
        .I1(\row_buf_reg[9]_1 [12]),
        .I2(\line_off_reg[1]__0_rep_n_0 ),
        .I3(\row_buf_reg[10]_2 [12]),
        .I4(\line_off_reg[0]__0_rep_n_0 ),
        .I5(\row_buf_reg[11]_3 [12]),
        .O(\line_data[62]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[62]_i_12 
       (.I0(\row_buf_reg[12]_4 [12]),
        .I1(\row_buf_reg[13]_5 [12]),
        .I2(\line_off_reg[1]__0_rep_n_0 ),
        .I3(\row_buf_reg[14]_6 [12]),
        .I4(\line_off_reg[0]__0_rep_n_0 ),
        .I5(\row_buf_reg[15]_7 [12]),
        .O(\line_data[62]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[62]_i_13 
       (.I0(\row_buf_reg_n_0_[0][12] ),
        .I1(\row_buf_reg_n_0_[1][12] ),
        .I2(\line_off_reg[1]__0_rep_n_0 ),
        .I3(\row_buf_reg_n_0_[2][12] ),
        .I4(\line_off_reg[0]__0_rep_n_0 ),
        .I5(\row_buf_reg_n_0_[3][12] ),
        .O(\line_data[62]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[62]_i_14 
       (.I0(\row_buf_reg_n_0_[4][12] ),
        .I1(\row_buf_reg_n_0_[5][12] ),
        .I2(\line_off_reg[1]__0_rep_n_0 ),
        .I3(\row_buf_reg_n_0_[6][12] ),
        .I4(\line_off_reg[0]__0_rep_n_0 ),
        .I5(\row_buf_reg_n_0_[7][12] ),
        .O(\line_data[62]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[62]_i_2 
       (.I0(\line_data_reg[62]_i_3_n_0 ),
        .I1(\line_data_reg[62]_i_4_n_0 ),
        .I2(\line_word_reg_n_0_[2] ),
        .I3(\line_data_reg[62]_i_5_n_0 ),
        .I4(\line_word_reg_n_0_[1] ),
        .I5(\line_data_reg[62]_i_6_n_0 ),
        .O(\line_data[62]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[62]_i_7 
       (.I0(\row_buf_reg[24]_16 [12]),
        .I1(\row_buf_reg[25]_17 [12]),
        .I2(\line_off_reg[1]__0_rep_n_0 ),
        .I3(\row_buf_reg[26]_18 [12]),
        .I4(\line_off_reg[0]__0_rep_n_0 ),
        .I5(\row_buf_reg[27]_19 [12]),
        .O(\line_data[62]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[62]_i_8 
       (.I0(\row_buf_reg[28]_20 [12]),
        .I1(\row_buf_reg[29]_21 [12]),
        .I2(\line_off_reg[1]__0_rep_n_0 ),
        .I3(\row_buf_reg[30]_22 [12]),
        .I4(\line_off_reg[0]__0_rep_n_0 ),
        .I5(\row_buf_reg[31]_23 [12]),
        .O(\line_data[62]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[62]_i_9 
       (.I0(\row_buf_reg[16]_8 [12]),
        .I1(\row_buf_reg[17]_9 [12]),
        .I2(\line_off_reg[1]__0_rep_n_0 ),
        .I3(\row_buf_reg[18]_10 [12]),
        .I4(\line_off_reg[0]__0_rep_n_0 ),
        .I5(\row_buf_reg[19]_11 [12]),
        .O(\line_data[62]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h00A2)) 
    \line_data[63]_i_1 
       (.I0(\line_data[63]_i_2_n_0 ),
        .I1(\line_word_reg_n_0_[2] ),
        .I2(spr_att_vdp_dout__0[52]),
        .I3(\line_word_reg_n_0_[3] ),
        .O(p_33_out__0[63]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[63]_i_10 
       (.I0(\row_buf_reg[20]_12 [15]),
        .I1(\row_buf_reg[21]_13 [12]),
        .I2(\line_off_reg[1]__0_rep_n_0 ),
        .I3(\row_buf_reg[22]_14 [15]),
        .I4(\line_off_reg[0]__0_rep_n_0 ),
        .I5(\row_buf_reg[23]_15 [15]),
        .O(\line_data[63]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[63]_i_11 
       (.I0(\row_buf_reg[8]_0 [15]),
        .I1(\row_buf_reg[9]_1 [15]),
        .I2(\line_off_reg[1]__0_rep_n_0 ),
        .I3(\row_buf_reg[10]_2 [12]),
        .I4(\line_off_reg[0]__0_rep_n_0 ),
        .I5(\row_buf_reg[11]_3 [15]),
        .O(\line_data[63]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[63]_i_12 
       (.I0(\row_buf_reg[12]_4 [15]),
        .I1(\row_buf_reg[13]_5 [12]),
        .I2(\line_off_reg[1]__0_rep_n_0 ),
        .I3(\row_buf_reg[14]_6 [15]),
        .I4(\line_off_reg[0]__0_rep_n_0 ),
        .I5(\row_buf_reg[15]_7 [15]),
        .O(\line_data[63]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[63]_i_13 
       (.I0(\row_buf_reg_n_0_[0][12] ),
        .I1(\row_buf_reg_n_0_[1][15] ),
        .I2(\line_off_reg[1]__0_rep_n_0 ),
        .I3(\row_buf_reg_n_0_[2][12] ),
        .I4(\line_off_reg[0]__0_rep_n_0 ),
        .I5(\row_buf_reg_n_0_[3][15] ),
        .O(\line_data[63]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[63]_i_14 
       (.I0(\row_buf_reg_n_0_[4][15] ),
        .I1(\row_buf_reg_n_0_[5][12] ),
        .I2(\line_off_reg[1]__0_rep_n_0 ),
        .I3(\row_buf_reg_n_0_[6][15] ),
        .I4(\line_off_reg[0]__0_rep_n_0 ),
        .I5(\row_buf_reg_n_0_[7][15] ),
        .O(\line_data[63]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[63]_i_2 
       (.I0(\line_data_reg[63]_i_3_n_0 ),
        .I1(\line_data_reg[63]_i_4_n_0 ),
        .I2(\line_word_reg_n_0_[2] ),
        .I3(\line_data_reg[63]_i_5_n_0 ),
        .I4(\line_word_reg_n_0_[1] ),
        .I5(\line_data_reg[63]_i_6_n_0 ),
        .O(\line_data[63]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[63]_i_7 
       (.I0(\row_buf_reg[24]_16 [15]),
        .I1(\row_buf_reg[25]_17 [15]),
        .I2(\line_off_reg[1]__0_rep_n_0 ),
        .I3(\row_buf_reg[26]_18 [12]),
        .I4(\line_off_reg[0]__0_rep_n_0 ),
        .I5(\row_buf_reg[27]_19 [15]),
        .O(\line_data[63]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[63]_i_8 
       (.I0(\row_buf_reg[28]_20 [15]),
        .I1(\row_buf_reg[29]_21 [12]),
        .I2(\line_off_reg[1]__0_rep_n_0 ),
        .I3(\row_buf_reg[30]_22 [15]),
        .I4(\line_off_reg[0]__0_rep_n_0 ),
        .I5(\row_buf_reg[31]_23 [12]),
        .O(\line_data[63]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[63]_i_9 
       (.I0(\row_buf_reg[16]_8 [12]),
        .I1(\row_buf_reg[17]_9 [15]),
        .I2(\line_off_reg[1]__0_rep_n_0 ),
        .I3(\row_buf_reg[18]_10 [12]),
        .I4(\line_off_reg[0]__0_rep_n_0 ),
        .I5(\row_buf_reg[19]_11 [15]),
        .O(\line_data[63]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h000000E0)) 
    \line_data[6]_i_1 
       (.I0(\line_data[15]_i_4_n_0 ),
        .I1(\line_data[14]_i_2_n_0 ),
        .I2(line_we21_in),
        .I3(\line_data_reg[15]_i_2_n_5 ),
        .I4(\line_data[6]_i_2_n_0 ),
        .O(p_33_out[6]));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \line_data[6]_i_10 
       (.I0(\row_buf_reg[18]_10 [6]),
        .I1(\row_buf_reg[14]_6 [6]),
        .I2(\line_word_reg_n_0_[1] ),
        .I3(\row_buf_reg[26]_18 [6]),
        .I4(\line_word_reg_n_0_[0] ),
        .I5(\row_buf_reg[22]_14 [6]),
        .O(\line_data[6]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[6]_i_11 
       (.I0(\row_buf_reg[12]_4 [6]),
        .I1(\row_buf_reg[8]_0 [6]),
        .I2(\line_word_reg_n_0_[1] ),
        .I3(\row_buf_reg_n_0_[4][6] ),
        .I4(\line_word_reg_n_0_[0] ),
        .I5(\row_buf_reg_n_0_[0][6] ),
        .O(\line_data[6]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[6]_i_12 
       (.I0(\row_buf_reg[28]_20 [6]),
        .I1(\row_buf_reg[24]_16 [6]),
        .I2(\line_word_reg_n_0_[1] ),
        .I3(\row_buf_reg[20]_12 [6]),
        .I4(\line_word_reg_n_0_[0] ),
        .I5(\row_buf_reg[16]_8 [6]),
        .O(\line_data[6]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[6]_i_13 
       (.I0(\row_buf_reg[11]_3 [6]),
        .I1(\row_buf_reg_n_0_[7][6] ),
        .I2(\line_word_reg_n_0_[1] ),
        .I3(\row_buf_reg_n_0_[3][6] ),
        .I4(\line_word_reg_n_0_[0] ),
        .I5(\row_buf_reg[31]_23 [6]),
        .O(\line_data[6]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[6]_i_14 
       (.I0(\row_buf_reg[27]_19 [6]),
        .I1(\row_buf_reg[23]_15 [6]),
        .I2(\line_word_reg_n_0_[1] ),
        .I3(\row_buf_reg[19]_11 [6]),
        .I4(\line_word_reg_n_0_[0] ),
        .I5(\row_buf_reg[15]_7 [6]),
        .O(\line_data[6]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hA0A0C0CFAFAFC0CF)) 
    \line_data[6]_i_2 
       (.I0(\line_data_reg[6]_i_3_n_0 ),
        .I1(\line_data_reg[6]_i_4_n_0 ),
        .I2(\line_off_reg[1]__0_rep__1_n_0 ),
        .I3(\line_data_reg[6]_i_5_n_0 ),
        .I4(\line_off_reg[0]__0_rep__1_n_0 ),
        .I5(\line_data_reg[6]_i_6_n_0 ),
        .O(\line_data[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \line_data[6]_i_7 
       (.I0(\row_buf_reg_n_0_[1][6] ),
        .I1(\row_buf_reg[29]_21 [6]),
        .I2(\line_word_reg_n_0_[1] ),
        .I3(\row_buf_reg[9]_1 [6]),
        .I4(\line_word_reg_n_0_[0] ),
        .I5(\row_buf_reg_n_0_[5][6] ),
        .O(\line_data[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \line_data[6]_i_8 
       (.I0(\row_buf_reg[17]_9 [6]),
        .I1(\row_buf_reg[13]_5 [6]),
        .I2(\line_word_reg_n_0_[1] ),
        .I3(\row_buf_reg[25]_17 [6]),
        .I4(\line_word_reg_n_0_[0] ),
        .I5(\row_buf_reg[21]_13 [6]),
        .O(\line_data[6]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h05F5030305F5F3F3)) 
    \line_data[6]_i_9 
       (.I0(\row_buf_reg_n_0_[2][6] ),
        .I1(\row_buf_reg[30]_22 [6]),
        .I2(\line_word_reg_n_0_[1] ),
        .I3(\row_buf_reg[10]_2 [6]),
        .I4(\line_word_reg_n_0_[0] ),
        .I5(\row_buf_reg_n_0_[6][6] ),
        .O(\line_data[6]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h000000E0)) 
    \line_data[7]_i_1 
       (.I0(\line_data[15]_i_4_n_0 ),
        .I1(\line_data[14]_i_2_n_0 ),
        .I2(line_we21_in),
        .I3(\line_data_reg[15]_i_2_n_5 ),
        .I4(\line_data[7]_i_2_n_0 ),
        .O(p_33_out[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[7]_i_10 
       (.I0(\row_buf_reg[25]_17 [7]),
        .I1(\row_buf_reg[21]_13 [7]),
        .I2(\line_word_reg_n_0_[1] ),
        .I3(\row_buf_reg[17]_9 [7]),
        .I4(\line_word_reg_n_0_[0] ),
        .I5(\row_buf_reg[13]_5 [7]),
        .O(\line_data[7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[7]_i_11 
       (.I0(\row_buf_reg[11]_3 [7]),
        .I1(\row_buf_reg_n_0_[7][7] ),
        .I2(\line_word_reg_n_0_[1] ),
        .I3(\row_buf_reg_n_0_[3][7] ),
        .I4(\line_word_reg_n_0_[0] ),
        .I5(\row_buf_reg[31]_23 [7]),
        .O(\line_data[7]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[7]_i_12 
       (.I0(\row_buf_reg[27]_19 [7]),
        .I1(\row_buf_reg[23]_15 [7]),
        .I2(\line_word_reg_n_0_[1] ),
        .I3(\row_buf_reg[19]_11 [7]),
        .I4(\line_word_reg_n_0_[0] ),
        .I5(\row_buf_reg[15]_7 [7]),
        .O(\line_data[7]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[7]_i_13 
       (.I0(\row_buf_reg[12]_4 [7]),
        .I1(\row_buf_reg[8]_0 [7]),
        .I2(\line_word_reg_n_0_[1] ),
        .I3(\row_buf_reg_n_0_[4][7] ),
        .I4(\line_word_reg_n_0_[0] ),
        .I5(\row_buf_reg_n_0_[0][7] ),
        .O(\line_data[7]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[7]_i_14 
       (.I0(\row_buf_reg[28]_20 [7]),
        .I1(\row_buf_reg[24]_16 [7]),
        .I2(\line_word_reg_n_0_[1] ),
        .I3(\row_buf_reg[20]_12 [7]),
        .I4(\line_word_reg_n_0_[0] ),
        .I5(\row_buf_reg[16]_8 [7]),
        .O(\line_data[7]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h303F5050303F5F5F)) 
    \line_data[7]_i_2 
       (.I0(\line_data_reg[7]_i_3_n_0 ),
        .I1(\line_data_reg[7]_i_4_n_0 ),
        .I2(\line_off_reg[1]__0_rep__1_n_0 ),
        .I3(\line_data_reg[7]_i_5_n_0 ),
        .I4(\line_off_reg[0]__0_rep__1_n_0 ),
        .I5(\line_data_reg[7]_i_6_n_0 ),
        .O(\line_data[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[7]_i_7 
       (.I0(\row_buf_reg[10]_2 [7]),
        .I1(\row_buf_reg_n_0_[6][7] ),
        .I2(\line_word_reg_n_0_[1] ),
        .I3(\row_buf_reg_n_0_[2][7] ),
        .I4(\line_word_reg_n_0_[0] ),
        .I5(\row_buf_reg[30]_22 [7]),
        .O(\line_data[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[7]_i_8 
       (.I0(\row_buf_reg[26]_18 [7]),
        .I1(\row_buf_reg[22]_14 [7]),
        .I2(\line_word_reg_n_0_[1] ),
        .I3(\row_buf_reg[18]_10 [7]),
        .I4(\line_word_reg_n_0_[0] ),
        .I5(\row_buf_reg[14]_6 [7]),
        .O(\line_data[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \line_data[7]_i_9 
       (.I0(\row_buf_reg[9]_1 [7]),
        .I1(\row_buf_reg_n_0_[5][7] ),
        .I2(\line_word_reg_n_0_[1] ),
        .I3(\row_buf_reg_n_0_[1][7] ),
        .I4(\line_word_reg_n_0_[0] ),
        .I5(\row_buf_reg[29]_21 [7]),
        .O(\line_data[7]_i_9_n_0 ));
  FDRE \line_data_reg[10] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_33_out[10]),
        .Q(\line_data_reg_n_0_[10] ),
        .R(line_data0));
  MUXF7 \line_data_reg[10]_i_3 
       (.I0(\line_data[10]_i_7_n_0 ),
        .I1(\line_data[10]_i_8_n_0 ),
        .O(\line_data_reg[10]_i_3_n_0 ),
        .S(\line_word_reg_n_0_[2] ));
  MUXF7 \line_data_reg[10]_i_4 
       (.I0(\line_data[10]_i_9_n_0 ),
        .I1(\line_data[10]_i_10_n_0 ),
        .O(\line_data_reg[10]_i_4_n_0 ),
        .S(\line_word_reg_n_0_[2] ));
  MUXF7 \line_data_reg[10]_i_5 
       (.I0(\line_data[10]_i_11_n_0 ),
        .I1(\line_data[10]_i_12_n_0 ),
        .O(\line_data_reg[10]_i_5_n_0 ),
        .S(\line_word_reg_n_0_[2] ));
  MUXF7 \line_data_reg[10]_i_6 
       (.I0(\line_data[10]_i_13_n_0 ),
        .I1(\line_data[10]_i_14_n_0 ),
        .O(\line_data_reg[10]_i_6_n_0 ),
        .S(\line_word_reg_n_0_[2] ));
  FDRE \line_data_reg[11] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_33_out[11]),
        .Q(\line_data_reg_n_0_[11] ),
        .R(line_data0));
  MUXF8 \line_data_reg[11]_i_3 
       (.I0(\line_data_reg[11]_i_5_n_0 ),
        .I1(\line_data_reg[11]_i_6_n_0 ),
        .O(\line_data_reg[11]_i_3_n_0 ),
        .S(\line_off_reg[0]__0_rep__1_n_0 ));
  MUXF7 \line_data_reg[11]_i_5 
       (.I0(\line_data[11]_i_11_n_0 ),
        .I1(\line_data[11]_i_12_n_0 ),
        .O(\line_data_reg[11]_i_5_n_0 ),
        .S(\line_word_reg_n_0_[2] ));
  MUXF7 \line_data_reg[11]_i_6 
       (.I0(\line_data[11]_i_13_n_0 ),
        .I1(\line_data[11]_i_14_n_0 ),
        .O(\line_data_reg[11]_i_6_n_0 ),
        .S(\line_word_reg_n_0_[2] ));
  FDRE \line_data_reg[14] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(\line_data[14]_i_1_n_0 ),
        .Q(\line_data_reg_n_0_[14] ),
        .R(line_data0));
  MUXF7 \line_data_reg[14]_i_3 
       (.I0(\line_data[14]_i_7_n_0 ),
        .I1(\line_data[14]_i_8_n_0 ),
        .O(\line_data_reg[14]_i_3_n_0 ),
        .S(\line_word_reg_n_0_[2] ));
  MUXF7 \line_data_reg[14]_i_4 
       (.I0(\line_data[14]_i_9_n_0 ),
        .I1(\line_data[14]_i_10_n_0 ),
        .O(\line_data_reg[14]_i_4_n_0 ),
        .S(\line_word_reg_n_0_[2] ));
  MUXF7 \line_data_reg[14]_i_5 
       (.I0(\line_data[14]_i_11_n_0 ),
        .I1(\line_data[14]_i_12_n_0 ),
        .O(\line_data_reg[14]_i_5_n_0 ),
        .S(\line_word_reg_n_0_[2] ));
  MUXF7 \line_data_reg[14]_i_6 
       (.I0(\line_data[14]_i_13_n_0 ),
        .I1(\line_data[14]_i_14_n_0 ),
        .O(\line_data_reg[14]_i_6_n_0 ),
        .S(\line_word_reg_n_0_[2] ));
  FDRE \line_data_reg[15] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_33_out[15]),
        .Q(\line_data_reg_n_0_[15] ),
        .R(line_data0));
  MUXF7 \line_data_reg[15]_i_12 
       (.I0(\line_data[15]_i_26_n_0 ),
        .I1(\line_data[15]_i_27_n_0 ),
        .O(\line_data_reg[15]_i_12_n_0 ),
        .S(\line_word_reg_n_0_[2] ));
  MUXF7 \line_data_reg[15]_i_13 
       (.I0(\line_data[15]_i_28_n_0 ),
        .I1(\line_data[15]_i_29_n_0 ),
        .O(\line_data_reg[15]_i_13_n_0 ),
        .S(\line_word_reg_n_0_[2] ));
  MUXF7 \line_data_reg[15]_i_14 
       (.I0(\line_data[15]_i_30_n_0 ),
        .I1(\line_data[15]_i_31_n_0 ),
        .O(\line_data_reg[15]_i_14_n_0 ),
        .S(\line_word_reg_n_0_[2] ));
  MUXF7 \line_data_reg[15]_i_15 
       (.I0(\line_data[15]_i_32_n_0 ),
        .I1(\line_data[15]_i_33_n_0 ),
        .O(\line_data_reg[15]_i_15_n_0 ),
        .S(\line_word_reg_n_0_[2] ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \line_data_reg[15]_i_16 
       (.CI(\line_data_reg[15]_i_34_n_0 ),
        .CO({\line_data_reg[15]_i_16_n_0 ,\line_data_reg[15]_i_16_n_1 ,\line_data_reg[15]_i_16_n_2 ,\line_data_reg[15]_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(line_we3[24:21]),
        .S({\line_data[15]_i_35_n_0 ,\line_data[15]_i_36_n_0 ,\line_data[15]_i_37_n_0 ,\line_data[15]_i_38_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \line_data_reg[15]_i_2 
       (.CI(\line_data_reg[15]_i_5_n_0 ),
        .CO({\NLW_line_data_reg[15]_i_2_CO_UNCONNECTED [3:2],\line_data_reg[15]_i_2_n_2 ,\line_data_reg[15]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_line_data_reg[15]_i_2_O_UNCONNECTED [3],\line_data_reg[15]_i_2_n_5 ,line_we3[30:29]}),
        .S({1'b0,\line_data[15]_i_6_n_0 ,\line_data[15]_i_7_n_0 ,\line_data[15]_i_8_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \line_data_reg[15]_i_21 
       (.CI(\line_data_reg[15]_i_39_n_0 ),
        .CO({\line_data_reg[15]_i_21_n_0 ,\line_data_reg[15]_i_21_n_1 ,\line_data_reg[15]_i_21_n_2 ,\line_data_reg[15]_i_21_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_line_data_reg[15]_i_21_O_UNCONNECTED [3:0]),
        .S({\line_data[15]_i_40_n_0 ,\line_data[15]_i_41_n_0 ,\line_data[15]_i_42_n_0 ,\line_data[15]_i_43_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \line_data_reg[15]_i_3 
       (.CI(\line_data_reg[15]_i_9_n_0 ),
        .CO({\NLW_line_data_reg[15]_i_3_CO_UNCONNECTED [3:2],line_we21_in,\line_data_reg[15]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_line_data_reg[15]_i_3_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\line_data[15]_i_10_n_0 ,\line_data[15]_i_11_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \line_data_reg[15]_i_34 
       (.CI(\line_data_reg[15]_i_44_n_0 ),
        .CO({\line_data_reg[15]_i_34_n_0 ,\line_data_reg[15]_i_34_n_1 ,\line_data_reg[15]_i_34_n_2 ,\line_data_reg[15]_i_34_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(line_we3[20:17]),
        .S({\line_data[15]_i_45_n_0 ,\line_data[15]_i_46_n_0 ,\line_data[15]_i_47_n_0 ,\line_data[15]_i_48_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \line_data_reg[15]_i_39 
       (.CI(1'b0),
        .CO({\line_data_reg[15]_i_39_n_0 ,\line_data_reg[15]_i_39_n_1 ,\line_data_reg[15]_i_39_n_2 ,\line_data_reg[15]_i_39_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\line_data[15]_i_49_n_0 }),
        .O(\NLW_line_data_reg[15]_i_39_O_UNCONNECTED [3:0]),
        .S({\line_data[15]_i_50_n_0 ,\line_data[15]_i_51_n_0 ,\line_data[15]_i_52_n_0 ,\line_data[15]_i_53_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \line_data_reg[15]_i_44 
       (.CI(\line_data_reg[15]_i_54_n_0 ),
        .CO({\line_data_reg[15]_i_44_n_0 ,\line_data_reg[15]_i_44_n_1 ,\line_data_reg[15]_i_44_n_2 ,\line_data_reg[15]_i_44_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(line_we3[16:13]),
        .S({\line_data[15]_i_55_n_0 ,\line_data[15]_i_56_n_0 ,\line_data[15]_i_57_n_0 ,\line_data[15]_i_58_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \line_data_reg[15]_i_5 
       (.CI(\line_data_reg[15]_i_16_n_0 ),
        .CO({\line_data_reg[15]_i_5_n_0 ,\line_data_reg[15]_i_5_n_1 ,\line_data_reg[15]_i_5_n_2 ,\line_data_reg[15]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(line_we3[28:25]),
        .S({\line_data[15]_i_17_n_0 ,\line_data[15]_i_18_n_0 ,\line_data[15]_i_19_n_0 ,\line_data[15]_i_20_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \line_data_reg[15]_i_54 
       (.CI(\line_data_reg[15]_i_59_n_0 ),
        .CO({\line_data_reg[15]_i_54_n_0 ,\line_data_reg[15]_i_54_n_1 ,\line_data_reg[15]_i_54_n_2 ,\line_data_reg[15]_i_54_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(line_we3[12:9]),
        .S({\line_data[15]_i_61_n_0 ,\line_data[15]_i_62_n_0 ,\line_data[15]_i_63_n_0 ,\line_data[15]_i_64_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \line_data_reg[15]_i_59 
       (.CI(\line_data_reg[15]_i_60_n_0 ),
        .CO({\line_data_reg[15]_i_59_n_0 ,\line_data_reg[15]_i_59_n_1 ,\line_data_reg[15]_i_59_n_2 ,\line_data_reg[15]_i_59_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\line_word_reg_n_0_[3] }),
        .O(line_we3[8:5]),
        .S({\line_data[15]_i_65_n_0 ,\line_data[15]_i_66_n_0 ,\line_data[15]_i_67_n_0 ,\line_data[15]_i_68_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \line_data_reg[15]_i_60 
       (.CI(1'b0),
        .CO({\line_data_reg[15]_i_60_n_0 ,\line_data_reg[15]_i_60_n_1 ,\line_data_reg[15]_i_60_n_2 ,\line_data_reg[15]_i_60_n_3 }),
        .CYINIT(1'b0),
        .DI({\line_word_reg_n_0_[2] ,\line_word_reg_n_0_[1] ,\line_word_reg_n_0_[0] ,1'b0}),
        .O({line_we3[4],\NLW_line_data_reg[15]_i_60_O_UNCONNECTED [2:0]}),
        .S({\line_data[15]_i_69_n_0 ,\line_data[15]_i_70_n_0 ,\line_data[15]_i_71_n_0 ,\line_data[15]_i_72_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \line_data_reg[15]_i_9 
       (.CI(\line_data_reg[15]_i_21_n_0 ),
        .CO({\line_data_reg[15]_i_9_n_0 ,\line_data_reg[15]_i_9_n_1 ,\line_data_reg[15]_i_9_n_2 ,\line_data_reg[15]_i_9_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_line_data_reg[15]_i_9_O_UNCONNECTED [3:0]),
        .S({\line_data[15]_i_22_n_0 ,\line_data[15]_i_23_n_0 ,\line_data[15]_i_24_n_0 ,\line_data[15]_i_25_n_0 }));
  FDRE \line_data_reg[18] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_33_out__0[18]),
        .Q(\line_data_reg_n_0_[18] ),
        .R(line_data0));
  MUXF7 \line_data_reg[18]_i_3 
       (.I0(\line_data[18]_i_8_n_0 ),
        .I1(\line_data[18]_i_9_n_0 ),
        .O(\line_data_reg[18]_i_3_n_0 ),
        .S(\line_data[26]_i_8_n_0 ));
  FDRE \line_data_reg[19] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_33_out__0[19]),
        .Q(\line_data_reg_n_0_[19] ),
        .R(line_data0));
  MUXF8 \line_data_reg[19]_i_2 
       (.I0(\line_data_reg[19]_i_3_n_0 ),
        .I1(\line_data_reg[19]_i_4_n_0 ),
        .O(\line_data_reg[19]_i_2_n_0 ),
        .S(\line_data[26]_i_4_n_0 ));
  MUXF7 \line_data_reg[19]_i_3 
       (.I0(\line_data[19]_i_5_n_0 ),
        .I1(\line_data[19]_i_6_n_0 ),
        .O(\line_data_reg[19]_i_3_n_0 ),
        .S(\line_data[26]_i_8_n_0 ));
  MUXF7 \line_data_reg[19]_i_4 
       (.I0(\line_data[19]_i_7_n_0 ),
        .I1(\line_data[19]_i_8_n_0 ),
        .O(\line_data_reg[19]_i_4_n_0 ),
        .S(\line_data[26]_i_8_n_0 ));
  FDRE \line_data_reg[22] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_33_out__0[22]),
        .Q(\line_data_reg_n_0_[22] ),
        .R(line_data0));
  FDRE \line_data_reg[23] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_33_out__0[23]),
        .Q(\line_data_reg_n_0_[23] ),
        .R(line_data0));
  FDRE \line_data_reg[26] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_33_out__0[26]),
        .Q(\line_data_reg_n_0_[26] ),
        .R(line_data0));
  FDRE \line_data_reg[27] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_33_out__0[27]),
        .Q(\line_data_reg_n_0_[27] ),
        .R(line_data0));
  MUXF7 \line_data_reg[27]_i_2 
       (.I0(\line_data[27]_i_3_n_0 ),
        .I1(\line_data[27]_i_4_n_0 ),
        .O(\line_data_reg[27]_i_2_n_0 ),
        .S(\line_data[26]_i_4_n_0 ));
  FDRE \line_data_reg[2] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_33_out[2]),
        .Q(\line_data_reg_n_0_[2] ),
        .R(line_data0));
  MUXF7 \line_data_reg[2]_i_3 
       (.I0(\line_data[2]_i_7_n_0 ),
        .I1(\line_data[2]_i_8_n_0 ),
        .O(\line_data_reg[2]_i_3_n_0 ),
        .S(\line_word_reg_n_0_[2] ));
  MUXF7 \line_data_reg[2]_i_4 
       (.I0(\line_data[2]_i_9_n_0 ),
        .I1(\line_data[2]_i_10_n_0 ),
        .O(\line_data_reg[2]_i_4_n_0 ),
        .S(\line_word_reg_n_0_[2] ));
  MUXF7 \line_data_reg[2]_i_5 
       (.I0(\line_data[2]_i_11_n_0 ),
        .I1(\line_data[2]_i_12_n_0 ),
        .O(\line_data_reg[2]_i_5_n_0 ),
        .S(\line_word_reg_n_0_[2] ));
  MUXF7 \line_data_reg[2]_i_6 
       (.I0(\line_data[2]_i_13_n_0 ),
        .I1(\line_data[2]_i_14_n_0 ),
        .O(\line_data_reg[2]_i_6_n_0 ),
        .S(\line_word_reg_n_0_[2] ));
  FDRE \line_data_reg[30] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(\line_data[30]_i_1_n_0 ),
        .Q(\line_data_reg_n_0_[30] ),
        .R(line_data0));
  MUXF7 \line_data_reg[30]_i_2 
       (.I0(\line_data[30]_i_3_n_0 ),
        .I1(\line_data[30]_i_4_n_0 ),
        .O(\line_data_reg[30]_i_2_n_0 ),
        .S(\line_data[26]_i_4_n_0 ));
  FDRE \line_data_reg[31] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_33_out__0[31]),
        .Q(\line_data_reg_n_0_[31] ),
        .R(line_data0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \line_data_reg[31]_i_18 
       (.CI(\line_data_reg[31]_i_23_n_0 ),
        .CO({\line_data_reg[31]_i_18_n_0 ,\line_data_reg[31]_i_18_n_1 ,\line_data_reg[31]_i_18_n_2 ,\line_data_reg[31]_i_18_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_line_data_reg[31]_i_18_O_UNCONNECTED [3:0]),
        .S({\line_data[31]_i_24_n_0 ,\line_data[31]_i_25_n_0 ,\line_data[31]_i_26_n_0 ,\line_data[31]_i_27_n_0 }));
  MUXF7 \line_data_reg[31]_i_2 
       (.I0(\line_data[31]_i_5_n_0 ),
        .I1(\line_data[31]_i_6_n_0 ),
        .O(\line_data_reg[31]_i_2_n_0 ),
        .S(\line_data[26]_i_4_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \line_data_reg[31]_i_23 
       (.CI(1'b0),
        .CO({\line_data_reg[31]_i_23_n_0 ,\line_data_reg[31]_i_23_n_1 ,\line_data_reg[31]_i_23_n_2 ,\line_data_reg[31]_i_23_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\line_data[31]_i_28_n_0 }),
        .O(\NLW_line_data_reg[31]_i_23_O_UNCONNECTED [3:0]),
        .S({\line_data[31]_i_29_n_0 ,\line_data[31]_i_30_n_0 ,\line_data[31]_i_31_n_0 ,\line_data[31]_i_32_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \line_data_reg[31]_i_3 
       (.CI(\line_data_reg[31]_i_7_n_0 ),
        .CO({\NLW_line_data_reg[31]_i_3_CO_UNCONNECTED [3:2],line_we34_in,\line_data_reg[31]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_line_data_reg[31]_i_3_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\line_data[31]_i_8_n_0 ,\line_data[31]_i_9_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \line_data_reg[31]_i_7 
       (.CI(\line_data_reg[31]_i_18_n_0 ),
        .CO({\line_data_reg[31]_i_7_n_0 ,\line_data_reg[31]_i_7_n_1 ,\line_data_reg[31]_i_7_n_2 ,\line_data_reg[31]_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_line_data_reg[31]_i_7_O_UNCONNECTED [3:0]),
        .S({\line_data[31]_i_19_n_0 ,\line_data[31]_i_20_n_0 ,\line_data[31]_i_21_n_0 ,\line_data[31]_i_22_n_0 }));
  FDRE \line_data_reg[34] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_33_out__0[34]),
        .Q(\line_data_reg_n_0_[34] ),
        .R(line_data0));
  MUXF7 \line_data_reg[34]_i_2 
       (.I0(\line_data[34]_i_3_n_0 ),
        .I1(\line_data[34]_i_4_n_0 ),
        .O(\line_data_reg[34]_i_2_n_0 ),
        .S(\line_data[47]_i_5_n_0 ));
  FDRE \line_data_reg[35] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_33_out__0[35]),
        .Q(\line_data_reg_n_0_[35] ),
        .R(line_data0));
  MUXF7 \line_data_reg[35]_i_2 
       (.I0(\line_data[35]_i_3_n_0 ),
        .I1(\line_data[35]_i_4_n_0 ),
        .O(\line_data_reg[35]_i_2_n_0 ),
        .S(\line_data[47]_i_5_n_0 ));
  FDRE \line_data_reg[38] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_33_out__0[38]),
        .Q(\line_data_reg_n_0_[38] ),
        .R(line_data0));
  MUXF7 \line_data_reg[38]_i_2 
       (.I0(\line_data[38]_i_3_n_0 ),
        .I1(\line_data[38]_i_4_n_0 ),
        .O(\line_data_reg[38]_i_2_n_0 ),
        .S(\line_data[47]_i_5_n_0 ));
  FDRE \line_data_reg[39] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_33_out__0[39]),
        .Q(\line_data_reg_n_0_[39] ),
        .R(line_data0));
  MUXF7 \line_data_reg[39]_i_2 
       (.I0(\line_data[39]_i_3_n_0 ),
        .I1(\line_data[39]_i_4_n_0 ),
        .O(\line_data_reg[39]_i_2_n_0 ),
        .S(\line_data[47]_i_5_n_0 ));
  FDRE \line_data_reg[3] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_33_out[3]),
        .Q(\line_data_reg_n_0_[3] ),
        .R(line_data0));
  MUXF7 \line_data_reg[3]_i_3 
       (.I0(\line_data[3]_i_7_n_0 ),
        .I1(\line_data[3]_i_8_n_0 ),
        .O(\line_data_reg[3]_i_3_n_0 ),
        .S(\line_word_reg_n_0_[2] ));
  MUXF7 \line_data_reg[3]_i_4 
       (.I0(\line_data[3]_i_9_n_0 ),
        .I1(\line_data[3]_i_10_n_0 ),
        .O(\line_data_reg[3]_i_4_n_0 ),
        .S(\line_word_reg_n_0_[2] ));
  MUXF7 \line_data_reg[3]_i_5 
       (.I0(\line_data[3]_i_11_n_0 ),
        .I1(\line_data[3]_i_12_n_0 ),
        .O(\line_data_reg[3]_i_5_n_0 ),
        .S(\line_word_reg_n_0_[2] ));
  MUXF7 \line_data_reg[3]_i_6 
       (.I0(\line_data[3]_i_13_n_0 ),
        .I1(\line_data[3]_i_14_n_0 ),
        .O(\line_data_reg[3]_i_6_n_0 ),
        .S(\line_word_reg_n_0_[2] ));
  FDRE \line_data_reg[42] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_33_out__0[42]),
        .Q(\line_data_reg_n_0_[42] ),
        .R(line_data0));
  MUXF7 \line_data_reg[42]_i_2 
       (.I0(\line_data[42]_i_3_n_0 ),
        .I1(\line_data[42]_i_4_n_0 ),
        .O(\line_data_reg[42]_i_2_n_0 ),
        .S(\line_data[47]_i_5_n_0 ));
  FDRE \line_data_reg[43] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_33_out__0[43]),
        .Q(\line_data_reg_n_0_[43] ),
        .R(line_data0));
  MUXF7 \line_data_reg[43]_i_2 
       (.I0(\line_data[43]_i_3_n_0 ),
        .I1(\line_data[43]_i_4_n_0 ),
        .O(\line_data_reg[43]_i_2_n_0 ),
        .S(\line_data[47]_i_5_n_0 ));
  FDRE \line_data_reg[46] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(\line_data[46]_i_1_n_0 ),
        .Q(\line_data_reg_n_0_[46] ),
        .R(line_data0));
  MUXF7 \line_data_reg[46]_i_2 
       (.I0(\line_data[46]_i_3_n_0 ),
        .I1(\line_data[46]_i_4_n_0 ),
        .O(\line_data_reg[46]_i_2_n_0 ),
        .S(\line_data[47]_i_5_n_0 ));
  FDRE \line_data_reg[47] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_33_out__0[47]),
        .Q(\line_data_reg_n_0_[47] ),
        .R(line_data0));
  MUXF7 \line_data_reg[47]_i_2 
       (.I0(\line_data[47]_i_6_n_0 ),
        .I1(\line_data[47]_i_7_n_0 ),
        .O(\line_data_reg[47]_i_2_n_0 ),
        .S(\line_data[47]_i_5_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \line_data_reg[47]_i_21 
       (.CI(\line_data_reg[47]_i_26_n_0 ),
        .CO({\line_data_reg[47]_i_21_n_0 ,\line_data_reg[47]_i_21_n_1 ,\line_data_reg[47]_i_21_n_2 ,\line_data_reg[47]_i_21_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_line_data_reg[47]_i_21_O_UNCONNECTED [3:0]),
        .S({\line_data[47]_i_27_n_0 ,\line_data[47]_i_28_n_0 ,\line_data[47]_i_29_n_0 ,\line_data[47]_i_30_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \line_data_reg[47]_i_26 
       (.CI(1'b0),
        .CO({\line_data_reg[47]_i_26_n_0 ,\line_data_reg[47]_i_26_n_1 ,\line_data_reg[47]_i_26_n_2 ,\line_data_reg[47]_i_26_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\line_data[47]_i_31_n_0 }),
        .O(\NLW_line_data_reg[47]_i_26_O_UNCONNECTED [3:0]),
        .S({\line_data[47]_i_32_n_0 ,\line_data[47]_i_33_n_0 ,\line_data[47]_i_34_n_0 ,\line_data[47]_i_35_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \line_data_reg[47]_i_3 
       (.CI(\line_data_reg[47]_i_8_n_0 ),
        .CO({\NLW_line_data_reg[47]_i_3_CO_UNCONNECTED [3:2],line_we3__0,\line_data_reg[47]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_line_data_reg[47]_i_3_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\line_data[47]_i_9_n_0 ,\line_data[47]_i_10_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \line_data_reg[47]_i_8 
       (.CI(\line_data_reg[47]_i_21_n_0 ),
        .CO({\line_data_reg[47]_i_8_n_0 ,\line_data_reg[47]_i_8_n_1 ,\line_data_reg[47]_i_8_n_2 ,\line_data_reg[47]_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_line_data_reg[47]_i_8_O_UNCONNECTED [3:0]),
        .S({\line_data[47]_i_22_n_0 ,\line_data[47]_i_23_n_0 ,\line_data[47]_i_24_n_0 ,\line_data[47]_i_25_n_0 }));
  FDRE \line_data_reg[50] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_33_out__0[50]),
        .Q(\line_data_reg_n_0_[50] ),
        .R(line_data0));
  MUXF7 \line_data_reg[50]_i_3 
       (.I0(\line_data[50]_i_7_n_0 ),
        .I1(\line_data[50]_i_8_n_0 ),
        .O(\line_data_reg[50]_i_3_n_0 ),
        .S(\line_word_reg_n_0_[0] ));
  MUXF7 \line_data_reg[50]_i_4 
       (.I0(\line_data[50]_i_9_n_0 ),
        .I1(\line_data[50]_i_10_n_0 ),
        .O(\line_data_reg[50]_i_4_n_0 ),
        .S(\line_word_reg_n_0_[0] ));
  MUXF7 \line_data_reg[50]_i_5 
       (.I0(\line_data[50]_i_11_n_0 ),
        .I1(\line_data[50]_i_12_n_0 ),
        .O(\line_data_reg[50]_i_5_n_0 ),
        .S(\line_word_reg_n_0_[0] ));
  MUXF7 \line_data_reg[50]_i_6 
       (.I0(\line_data[50]_i_13_n_0 ),
        .I1(\line_data[50]_i_14_n_0 ),
        .O(\line_data_reg[50]_i_6_n_0 ),
        .S(\line_word_reg_n_0_[0] ));
  FDRE \line_data_reg[51] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_33_out__0[51]),
        .Q(\line_data_reg_n_0_[51] ),
        .R(line_data0));
  MUXF7 \line_data_reg[51]_i_3 
       (.I0(\line_data[51]_i_7_n_0 ),
        .I1(\line_data[51]_i_8_n_0 ),
        .O(\line_data_reg[51]_i_3_n_0 ),
        .S(\line_word_reg_n_0_[0] ));
  MUXF7 \line_data_reg[51]_i_4 
       (.I0(\line_data[51]_i_9_n_0 ),
        .I1(\line_data[51]_i_10_n_0 ),
        .O(\line_data_reg[51]_i_4_n_0 ),
        .S(\line_word_reg_n_0_[0] ));
  MUXF7 \line_data_reg[51]_i_5 
       (.I0(\line_data[51]_i_11_n_0 ),
        .I1(\line_data[51]_i_12_n_0 ),
        .O(\line_data_reg[51]_i_5_n_0 ),
        .S(\line_word_reg_n_0_[0] ));
  MUXF7 \line_data_reg[51]_i_6 
       (.I0(\line_data[51]_i_13_n_0 ),
        .I1(\line_data[51]_i_14_n_0 ),
        .O(\line_data_reg[51]_i_6_n_0 ),
        .S(\line_word_reg_n_0_[0] ));
  FDRE \line_data_reg[54] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_33_out__0[54]),
        .Q(\line_data_reg_n_0_[54] ),
        .R(line_data0));
  MUXF7 \line_data_reg[54]_i_3 
       (.I0(\line_data[54]_i_7_n_0 ),
        .I1(\line_data[54]_i_8_n_0 ),
        .O(\line_data_reg[54]_i_3_n_0 ),
        .S(\line_word_reg_n_0_[0] ));
  MUXF7 \line_data_reg[54]_i_4 
       (.I0(\line_data[54]_i_9_n_0 ),
        .I1(\line_data[54]_i_10_n_0 ),
        .O(\line_data_reg[54]_i_4_n_0 ),
        .S(\line_word_reg_n_0_[0] ));
  MUXF7 \line_data_reg[54]_i_5 
       (.I0(\line_data[54]_i_11_n_0 ),
        .I1(\line_data[54]_i_12_n_0 ),
        .O(\line_data_reg[54]_i_5_n_0 ),
        .S(\line_word_reg_n_0_[0] ));
  MUXF7 \line_data_reg[54]_i_6 
       (.I0(\line_data[54]_i_13_n_0 ),
        .I1(\line_data[54]_i_14_n_0 ),
        .O(\line_data_reg[54]_i_6_n_0 ),
        .S(\line_word_reg_n_0_[0] ));
  FDRE \line_data_reg[55] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_33_out__0[55]),
        .Q(\line_data_reg_n_0_[55] ),
        .R(line_data0));
  MUXF7 \line_data_reg[55]_i_3 
       (.I0(\line_data[55]_i_7_n_0 ),
        .I1(\line_data[55]_i_8_n_0 ),
        .O(\line_data_reg[55]_i_3_n_0 ),
        .S(\line_word_reg_n_0_[0] ));
  MUXF7 \line_data_reg[55]_i_4 
       (.I0(\line_data[55]_i_9_n_0 ),
        .I1(\line_data[55]_i_10_n_0 ),
        .O(\line_data_reg[55]_i_4_n_0 ),
        .S(\line_word_reg_n_0_[0] ));
  MUXF7 \line_data_reg[55]_i_5 
       (.I0(\line_data[55]_i_11_n_0 ),
        .I1(\line_data[55]_i_12_n_0 ),
        .O(\line_data_reg[55]_i_5_n_0 ),
        .S(\line_word_reg_n_0_[0] ));
  MUXF7 \line_data_reg[55]_i_6 
       (.I0(\line_data[55]_i_13_n_0 ),
        .I1(\line_data[55]_i_14_n_0 ),
        .O(\line_data_reg[55]_i_6_n_0 ),
        .S(\line_word_reg_n_0_[0] ));
  FDRE \line_data_reg[58] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_33_out__0[58]),
        .Q(\line_data_reg_n_0_[58] ),
        .R(line_data0));
  MUXF7 \line_data_reg[58]_i_3 
       (.I0(\line_data[58]_i_7_n_0 ),
        .I1(\line_data[58]_i_8_n_0 ),
        .O(\line_data_reg[58]_i_3_n_0 ),
        .S(\line_word_reg_n_0_[0] ));
  MUXF7 \line_data_reg[58]_i_4 
       (.I0(\line_data[58]_i_9_n_0 ),
        .I1(\line_data[58]_i_10_n_0 ),
        .O(\line_data_reg[58]_i_4_n_0 ),
        .S(\line_word_reg_n_0_[0] ));
  MUXF7 \line_data_reg[58]_i_5 
       (.I0(\line_data[58]_i_11_n_0 ),
        .I1(\line_data[58]_i_12_n_0 ),
        .O(\line_data_reg[58]_i_5_n_0 ),
        .S(\line_word_reg_n_0_[0] ));
  MUXF7 \line_data_reg[58]_i_6 
       (.I0(\line_data[58]_i_13_n_0 ),
        .I1(\line_data[58]_i_14_n_0 ),
        .O(\line_data_reg[58]_i_6_n_0 ),
        .S(\line_word_reg_n_0_[0] ));
  FDRE \line_data_reg[59] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_33_out__0[59]),
        .Q(\line_data_reg_n_0_[59] ),
        .R(line_data0));
  MUXF7 \line_data_reg[59]_i_3 
       (.I0(\line_data[59]_i_7_n_0 ),
        .I1(\line_data[59]_i_8_n_0 ),
        .O(\line_data_reg[59]_i_3_n_0 ),
        .S(\line_word_reg_n_0_[0] ));
  MUXF7 \line_data_reg[59]_i_4 
       (.I0(\line_data[59]_i_9_n_0 ),
        .I1(\line_data[59]_i_10_n_0 ),
        .O(\line_data_reg[59]_i_4_n_0 ),
        .S(\line_word_reg_n_0_[0] ));
  MUXF7 \line_data_reg[59]_i_5 
       (.I0(\line_data[59]_i_11_n_0 ),
        .I1(\line_data[59]_i_12_n_0 ),
        .O(\line_data_reg[59]_i_5_n_0 ),
        .S(\line_word_reg_n_0_[0] ));
  MUXF7 \line_data_reg[59]_i_6 
       (.I0(\line_data[59]_i_13_n_0 ),
        .I1(\line_data[59]_i_14_n_0 ),
        .O(\line_data_reg[59]_i_6_n_0 ),
        .S(\line_word_reg_n_0_[0] ));
  FDRE \line_data_reg[62] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_33_out__0[62]),
        .Q(\line_data_reg_n_0_[62] ),
        .R(line_data0));
  MUXF7 \line_data_reg[62]_i_3 
       (.I0(\line_data[62]_i_7_n_0 ),
        .I1(\line_data[62]_i_8_n_0 ),
        .O(\line_data_reg[62]_i_3_n_0 ),
        .S(\line_word_reg_n_0_[0] ));
  MUXF7 \line_data_reg[62]_i_4 
       (.I0(\line_data[62]_i_9_n_0 ),
        .I1(\line_data[62]_i_10_n_0 ),
        .O(\line_data_reg[62]_i_4_n_0 ),
        .S(\line_word_reg_n_0_[0] ));
  MUXF7 \line_data_reg[62]_i_5 
       (.I0(\line_data[62]_i_11_n_0 ),
        .I1(\line_data[62]_i_12_n_0 ),
        .O(\line_data_reg[62]_i_5_n_0 ),
        .S(\line_word_reg_n_0_[0] ));
  MUXF7 \line_data_reg[62]_i_6 
       (.I0(\line_data[62]_i_13_n_0 ),
        .I1(\line_data[62]_i_14_n_0 ),
        .O(\line_data_reg[62]_i_6_n_0 ),
        .S(\line_word_reg_n_0_[0] ));
  FDRE \line_data_reg[63] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_33_out__0[63]),
        .Q(\line_data_reg_n_0_[63] ),
        .R(line_data0));
  MUXF7 \line_data_reg[63]_i_3 
       (.I0(\line_data[63]_i_7_n_0 ),
        .I1(\line_data[63]_i_8_n_0 ),
        .O(\line_data_reg[63]_i_3_n_0 ),
        .S(\line_word_reg_n_0_[0] ));
  MUXF7 \line_data_reg[63]_i_4 
       (.I0(\line_data[63]_i_9_n_0 ),
        .I1(\line_data[63]_i_10_n_0 ),
        .O(\line_data_reg[63]_i_4_n_0 ),
        .S(\line_word_reg_n_0_[0] ));
  MUXF7 \line_data_reg[63]_i_5 
       (.I0(\line_data[63]_i_11_n_0 ),
        .I1(\line_data[63]_i_12_n_0 ),
        .O(\line_data_reg[63]_i_5_n_0 ),
        .S(\line_word_reg_n_0_[0] ));
  MUXF7 \line_data_reg[63]_i_6 
       (.I0(\line_data[63]_i_13_n_0 ),
        .I1(\line_data[63]_i_14_n_0 ),
        .O(\line_data_reg[63]_i_6_n_0 ),
        .S(\line_word_reg_n_0_[0] ));
  FDRE \line_data_reg[6] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_33_out[6]),
        .Q(\line_data_reg_n_0_[6] ),
        .R(line_data0));
  MUXF7 \line_data_reg[6]_i_3 
       (.I0(\line_data[6]_i_7_n_0 ),
        .I1(\line_data[6]_i_8_n_0 ),
        .O(\line_data_reg[6]_i_3_n_0 ),
        .S(\line_word_reg_n_0_[2] ));
  MUXF7 \line_data_reg[6]_i_4 
       (.I0(\line_data[6]_i_9_n_0 ),
        .I1(\line_data[6]_i_10_n_0 ),
        .O(\line_data_reg[6]_i_4_n_0 ),
        .S(\line_word_reg_n_0_[2] ));
  MUXF7 \line_data_reg[6]_i_5 
       (.I0(\line_data[6]_i_11_n_0 ),
        .I1(\line_data[6]_i_12_n_0 ),
        .O(\line_data_reg[6]_i_5_n_0 ),
        .S(\line_word_reg_n_0_[2] ));
  MUXF7 \line_data_reg[6]_i_6 
       (.I0(\line_data[6]_i_13_n_0 ),
        .I1(\line_data[6]_i_14_n_0 ),
        .O(\line_data_reg[6]_i_6_n_0 ),
        .S(\line_word_reg_n_0_[2] ));
  FDRE \line_data_reg[7] 
       (.C(s_axi_aclk),
        .CE(line_data),
        .D(p_33_out[7]),
        .Q(\line_data_reg_n_0_[7] ),
        .R(line_data0));
  MUXF7 \line_data_reg[7]_i_3 
       (.I0(\line_data[7]_i_7_n_0 ),
        .I1(\line_data[7]_i_8_n_0 ),
        .O(\line_data_reg[7]_i_3_n_0 ),
        .S(\line_word_reg_n_0_[2] ));
  MUXF7 \line_data_reg[7]_i_4 
       (.I0(\line_data[7]_i_9_n_0 ),
        .I1(\line_data[7]_i_10_n_0 ),
        .O(\line_data_reg[7]_i_4_n_0 ),
        .S(\line_word_reg_n_0_[2] ));
  MUXF7 \line_data_reg[7]_i_5 
       (.I0(\line_data[7]_i_11_n_0 ),
        .I1(\line_data[7]_i_12_n_0 ),
        .O(\line_data_reg[7]_i_5_n_0 ),
        .S(\line_word_reg_n_0_[2] ));
  MUXF7 \line_data_reg[7]_i_6 
       (.I0(\line_data[7]_i_13_n_0 ),
        .I1(\line_data[7]_i_14_n_0 ),
        .O(\line_data_reg[7]_i_6_n_0 ),
        .S(\line_word_reg_n_0_[2] ));
  LUT4 #(
    .INIT(16'h00EA)) 
    line_done_i_1
       (.I0(s0_done),
        .I1(state[9]),
        .I2(\FSM_onehot_state[1]_i_2_n_0 ),
        .I3(line_done0),
        .O(line_done_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    line_done_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(line_done_i_1_n_0),
        .Q(s0_done),
        .R(1'b0));
  (* ORIG_CELL_NAME = "line_off_reg[0]__0" *) 
  FDRE \line_off_reg[0]__0 
       (.C(s_axi_aclk),
        .CE(line_pos__0),
        .D(spr_att_vdp_dout__0[0]),
        .Q(line_off[0]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "line_off_reg[0]__0" *) 
  FDRE \line_off_reg[0]__0_rep 
       (.C(s_axi_aclk),
        .CE(line_pos__0),
        .D(spr_att_vdp_dout__0[0]),
        .Q(\line_off_reg[0]__0_rep_n_0 ),
        .R(1'b0));
  (* ORIG_CELL_NAME = "line_off_reg[0]__0" *) 
  FDRE \line_off_reg[0]__0_rep__0 
       (.C(s_axi_aclk),
        .CE(line_pos__0),
        .D(spr_att_vdp_dout__0[0]),
        .Q(\line_off_reg[0]__0_rep__0_n_0 ),
        .R(1'b0));
  (* ORIG_CELL_NAME = "line_off_reg[0]__0" *) 
  FDRE \line_off_reg[0]__0_rep__1 
       (.C(s_axi_aclk),
        .CE(line_pos__0),
        .D(spr_att_vdp_dout__0[0]),
        .Q(\line_off_reg[0]__0_rep__1_n_0 ),
        .R(1'b0));
  (* ORIG_CELL_NAME = "line_off_reg[1]__0" *) 
  FDRE \line_off_reg[1]__0 
       (.C(s_axi_aclk),
        .CE(line_pos__0),
        .D(spr_att_vdp_dout__0[1]),
        .Q(line_off[1]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "line_off_reg[1]__0" *) 
  FDRE \line_off_reg[1]__0_rep 
       (.C(s_axi_aclk),
        .CE(line_pos__0),
        .D(spr_att_vdp_dout__0[1]),
        .Q(\line_off_reg[1]__0_rep_n_0 ),
        .R(1'b0));
  (* ORIG_CELL_NAME = "line_off_reg[1]__0" *) 
  FDRE \line_off_reg[1]__0_rep__0 
       (.C(s_axi_aclk),
        .CE(line_pos__0),
        .D(spr_att_vdp_dout__0[1]),
        .Q(\line_off_reg[1]__0_rep__0_n_0 ),
        .R(1'b0));
  (* ORIG_CELL_NAME = "line_off_reg[1]__0" *) 
  FDRE \line_off_reg[1]__0_rep__1 
       (.C(s_axi_aclk),
        .CE(line_pos__0),
        .D(spr_att_vdp_dout__0[1]),
        .Q(\line_off_reg[1]__0_rep__1_n_0 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFF444F444F444F)) 
    \line_pos[0]_i_1 
       (.I0(\line_pos[6]_i_3_n_0 ),
        .I1(spr_att_vdp_dout__0[2]),
        .I2(\line_pos_reg_n_0_[0] ),
        .I3(\line_pos[0]_i_2_n_0 ),
        .I4(line_data0),
        .I5(\clear_pos_reg_n_0_[0] ),
        .O(\line_pos[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBBBB222FFFFFFFF)) 
    \line_pos[0]_i_2 
       (.I0(\line_word[3]_i_4_n_0 ),
        .I1(spr_att_vdp_dout__0[52]),
        .I2(\line_word_reg_n_0_[2] ),
        .I3(\line_word[3]_i_3_n_0 ),
        .I4(\line_word_reg_n_0_[3] ),
        .I5(line_data),
        .O(\line_pos[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \line_pos[1]_i_1 
       (.I0(\line_pos[6]_i_3_n_0 ),
        .I1(spr_att_vdp_dout__0[3]),
        .I2(\line_pos[1]_i_2_n_0 ),
        .O(\line_pos[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h888F8F88)) 
    \line_pos[1]_i_2 
       (.I0(\clear_pos_reg_n_0_[1] ),
        .I1(line_data0),
        .I2(\line_pos[0]_i_2_n_0 ),
        .I3(\line_pos_reg_n_0_[1] ),
        .I4(\line_pos_reg_n_0_[0] ),
        .O(\line_pos[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \line_pos[2]_i_1 
       (.I0(\line_pos[6]_i_3_n_0 ),
        .I1(spr_att_vdp_dout__0[4]),
        .I2(\line_pos[2]_i_2_n_0 ),
        .O(\line_pos[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h888F8F888F888F88)) 
    \line_pos[2]_i_2 
       (.I0(\clear_pos_reg_n_0_[2] ),
        .I1(line_data0),
        .I2(\line_pos[0]_i_2_n_0 ),
        .I3(\line_pos_reg_n_0_[2] ),
        .I4(\line_pos_reg_n_0_[0] ),
        .I5(\line_pos_reg_n_0_[1] ),
        .O(\line_pos[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFF4F4F4)) 
    \line_pos[3]_i_1 
       (.I0(\line_pos[6]_i_3_n_0 ),
        .I1(spr_att_vdp_dout__0[5]),
        .I2(\line_pos[3]_i_2_n_0 ),
        .I3(line_data0),
        .I4(\clear_pos_reg_n_0_[3] ),
        .O(\line_pos[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00007F80)) 
    \line_pos[3]_i_2 
       (.I0(\line_pos_reg_n_0_[2] ),
        .I1(\line_pos_reg_n_0_[0] ),
        .I2(\line_pos_reg_n_0_[1] ),
        .I3(\line_pos_reg_n_0_[3] ),
        .I4(\line_pos[0]_i_2_n_0 ),
        .O(\line_pos[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFF4F4F4)) 
    \line_pos[4]_i_1 
       (.I0(\line_pos[6]_i_3_n_0 ),
        .I1(spr_att_vdp_dout__0[6]),
        .I2(\line_pos[4]_i_2_n_0 ),
        .I3(line_data0),
        .I4(\clear_pos_reg_n_0_[4] ),
        .O(\line_pos[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1444444444444444)) 
    \line_pos[4]_i_2 
       (.I0(\line_pos[0]_i_2_n_0 ),
        .I1(\line_pos_reg_n_0_[4] ),
        .I2(\line_pos_reg_n_0_[3] ),
        .I3(\line_pos_reg_n_0_[1] ),
        .I4(\line_pos_reg_n_0_[0] ),
        .I5(\line_pos_reg_n_0_[2] ),
        .O(\line_pos[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFAEAEAE)) 
    \line_pos[5]_i_1 
       (.I0(\line_pos[5]_i_2_n_0 ),
        .I1(spr_att_vdp_dout__0[7]),
        .I2(\line_pos[6]_i_3_n_0 ),
        .I3(line_data0),
        .I4(\clear_pos_reg_n_0_[5] ),
        .O(\line_pos[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h14)) 
    \line_pos[5]_i_2 
       (.I0(\line_pos[0]_i_2_n_0 ),
        .I1(\line_pos_reg_n_0_[5] ),
        .I2(\line_pos[5]_i_3_n_0 ),
        .O(\line_pos[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \line_pos[5]_i_3 
       (.I0(\line_pos_reg_n_0_[4] ),
        .I1(\line_pos_reg_n_0_[3] ),
        .I2(\line_pos_reg_n_0_[1] ),
        .I3(\line_pos_reg_n_0_[0] ),
        .I4(\line_pos_reg_n_0_[2] ),
        .O(\line_pos[5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFAEAEAE)) 
    \line_pos[6]_i_1 
       (.I0(\line_pos[6]_i_2_n_0 ),
        .I1(spr_att_vdp_dout__0[8]),
        .I2(\line_pos[6]_i_3_n_0 ),
        .I3(line_data0),
        .I4(\clear_pos_reg_n_0_[6] ),
        .O(\line_pos[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h14)) 
    \line_pos[6]_i_2 
       (.I0(\line_pos[0]_i_2_n_0 ),
        .I1(\line_pos_reg_n_0_[6] ),
        .I2(\line_pos[7]_i_5_n_0 ),
        .O(\line_pos[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000030002000200)) 
    \line_pos[6]_i_3 
       (.I0(line_data0),
        .I1(line_done0),
        .I2(state[1]),
        .I3(\FSM_onehot_state[10]_i_5_n_0 ),
        .I4(\FSM_onehot_state[10]_i_6_n_0 ),
        .I5(line_data),
        .O(\line_pos[6]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \line_pos[7]_i_1 
       (.I0(\line_word[3]_i_1_n_0 ),
        .I1(line_pos__0),
        .I2(line_data0),
        .O(line_pos));
  LUT6 #(
    .INIT(64'hFFEAEAEAFFFFEAEA)) 
    \line_pos[7]_i_2 
       (.I0(\line_pos[7]_i_3_n_0 ),
        .I1(\clear_pos_reg_n_0_[7] ),
        .I2(line_data0),
        .I3(\FSM_onehot_state[10]_i_3_n_0 ),
        .I4(spr_att_vdp_dout__0[9]),
        .I5(\line_pos[7]_i_4_n_0 ),
        .O(\line_pos[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h1444)) 
    \line_pos[7]_i_3 
       (.I0(\line_pos[0]_i_2_n_0 ),
        .I1(\line_pos_reg_n_0_[7] ),
        .I2(\line_pos[7]_i_5_n_0 ),
        .I3(\line_pos_reg_n_0_[6] ),
        .O(\line_pos[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h02020200)) 
    \line_pos[7]_i_4 
       (.I0(\FSM_onehot_state[10]_i_5_n_0 ),
        .I1(state[1]),
        .I2(line_done0),
        .I3(line_data),
        .I4(line_data0),
        .O(\line_pos[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \line_pos[7]_i_5 
       (.I0(\line_pos_reg_n_0_[5] ),
        .I1(\line_pos_reg_n_0_[2] ),
        .I2(\line_pos_reg_n_0_[0] ),
        .I3(\line_pos_reg_n_0_[1] ),
        .I4(\line_pos_reg_n_0_[3] ),
        .I5(\line_pos_reg_n_0_[4] ),
        .O(\line_pos[7]_i_5_n_0 ));
  FDRE \line_pos_reg[0] 
       (.C(s_axi_aclk),
        .CE(line_pos),
        .D(\line_pos[0]_i_1_n_0 ),
        .Q(\line_pos_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \line_pos_reg[1] 
       (.C(s_axi_aclk),
        .CE(line_pos),
        .D(\line_pos[1]_i_1_n_0 ),
        .Q(\line_pos_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \line_pos_reg[2] 
       (.C(s_axi_aclk),
        .CE(line_pos),
        .D(\line_pos[2]_i_1_n_0 ),
        .Q(\line_pos_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \line_pos_reg[3] 
       (.C(s_axi_aclk),
        .CE(line_pos),
        .D(\line_pos[3]_i_1_n_0 ),
        .Q(\line_pos_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \line_pos_reg[4] 
       (.C(s_axi_aclk),
        .CE(line_pos),
        .D(\line_pos[4]_i_1_n_0 ),
        .Q(\line_pos_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \line_pos_reg[5] 
       (.C(s_axi_aclk),
        .CE(line_pos),
        .D(\line_pos[5]_i_1_n_0 ),
        .Q(\line_pos_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \line_pos_reg[6] 
       (.C(s_axi_aclk),
        .CE(line_pos),
        .D(\line_pos[6]_i_1_n_0 ),
        .Q(\line_pos_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \line_pos_reg[7] 
       (.C(s_axi_aclk),
        .CE(line_pos),
        .D(\line_pos[7]_i_2_n_0 ),
        .Q(\line_pos_reg_n_0_[7] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    \line_pos_reg[7]_i_1 
       (.I0(line_data0),
        .I1(line_data),
        .O(line_pos_reg));
  FDRE \line_pos_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(line_pos_reg),
        .D(\line_pos_reg_n_0_[0] ),
        .Q(\line_pos_reg_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \line_pos_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(line_pos_reg),
        .D(\line_pos_reg_n_0_[1] ),
        .Q(\line_pos_reg_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \line_pos_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(line_pos_reg),
        .D(\line_pos_reg_n_0_[2] ),
        .Q(\line_pos_reg_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \line_pos_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(line_pos_reg),
        .D(\line_pos_reg_n_0_[3] ),
        .Q(\line_pos_reg_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \line_pos_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(line_pos_reg),
        .D(\line_pos_reg_n_0_[4] ),
        .Q(\line_pos_reg_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \line_pos_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(line_pos_reg),
        .D(\line_pos_reg_n_0_[5] ),
        .Q(\line_pos_reg_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \line_pos_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(line_pos_reg),
        .D(\line_pos_reg_n_0_[6] ),
        .Q(\line_pos_reg_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \line_pos_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(line_pos_reg),
        .D(\line_pos_reg_n_0_[7] ),
        .Q(\line_pos_reg_reg_n_0_[7] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0000A800)) 
    \line_we[1]_i_1 
       (.I0(line_data),
        .I1(\line_data[15]_i_4_n_0 ),
        .I2(\line_data[14]_i_2_n_0 ),
        .I3(line_we21_in),
        .I4(\line_data_reg[15]_i_2_n_5 ),
        .O(\line_we[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00A80000)) 
    \line_we[3]_i_1 
       (.I0(line_data),
        .I1(\line_data_reg[31]_i_2_n_0 ),
        .I2(\line_data_reg[30]_i_2_n_0 ),
        .I3(\line_data[47]_i_4_n_0 ),
        .I4(line_we34_in),
        .O(\line_we[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00A8A8A800000000)) 
    \line_we[5]_i_1 
       (.I0(line_data),
        .I1(\line_data_reg[47]_i_2_n_0 ),
        .I2(\line_data_reg[46]_i_2_n_0 ),
        .I3(\line_off_reg[0]__0_rep__1_n_0 ),
        .I4(\line_data[47]_i_4_n_0 ),
        .I5(line_we3__0),
        .O(\line_we[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \line_we[7]_i_1 
       (.I0(state[1]),
        .I1(line_done0),
        .I2(spr_cnt),
        .I3(line_data),
        .O(\line_we[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00A8000000A800A8)) 
    \line_we[7]_i_2 
       (.I0(line_data),
        .I1(\line_data[63]_i_2_n_0 ),
        .I2(\line_data[62]_i_2_n_0 ),
        .I3(\line_word_reg_n_0_[3] ),
        .I4(spr_att_vdp_dout__0[52]),
        .I5(\line_word_reg_n_0_[2] ),
        .O(\line_we[7]_i_2_n_0 ));
  FDSE \line_we_reg[1] 
       (.C(s_axi_aclk),
        .CE(\line_we[7]_i_1_n_0 ),
        .D(\line_we[1]_i_1_n_0 ),
        .Q(\line_we_reg_n_0_[1] ),
        .S(line_data0));
  FDSE \line_we_reg[3] 
       (.C(s_axi_aclk),
        .CE(\line_we[7]_i_1_n_0 ),
        .D(\line_we[3]_i_1_n_0 ),
        .Q(\line_we_reg_n_0_[3] ),
        .S(line_data0));
  FDSE \line_we_reg[5] 
       (.C(s_axi_aclk),
        .CE(\line_we[7]_i_1_n_0 ),
        .D(\line_we[5]_i_1_n_0 ),
        .Q(\line_we_reg_n_0_[5] ),
        .S(line_data0));
  FDSE \line_we_reg[7] 
       (.C(s_axi_aclk),
        .CE(\line_we[7]_i_1_n_0 ),
        .D(\line_we[7]_i_2_n_0 ),
        .Q(\line_we_reg_n_0_[7] ),
        .S(line_data0));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \line_word[0]_i_1 
       (.I0(\line_word_reg_n_0_[0] ),
        .O(\line_word[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \line_word[1]_i_1 
       (.I0(\line_word_reg_n_0_[0] ),
        .I1(\line_word_reg_n_0_[1] ),
        .O(state1));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \line_word[2]_i_1 
       (.I0(\line_word_reg_n_0_[2] ),
        .I1(\line_word_reg_n_0_[1] ),
        .I2(\line_word_reg_n_0_[0] ),
        .O(\line_word[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h022200002AAA0222)) 
    \line_word[3]_i_1 
       (.I0(line_data),
        .I1(\line_word_reg_n_0_[3] ),
        .I2(\line_word[3]_i_3_n_0 ),
        .I3(\line_word_reg_n_0_[2] ),
        .I4(spr_att_vdp_dout__0[52]),
        .I5(\line_word[3]_i_4_n_0 ),
        .O(\line_word[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \line_word[3]_i_2 
       (.I0(\line_word_reg_n_0_[3] ),
        .I1(\line_word_reg_n_0_[0] ),
        .I2(\line_word_reg_n_0_[1] ),
        .I3(\line_word_reg_n_0_[2] ),
        .O(\line_word[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \line_word[3]_i_3 
       (.I0(\line_word_reg_n_0_[1] ),
        .I1(\line_word_reg_n_0_[0] ),
        .O(\line_word[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h1FFFFFFF0FFF1000)) 
    \line_word[3]_i_4 
       (.I0(\line_off_reg[0]__0_rep__1_n_0 ),
        .I1(\line_off_reg[1]__0_rep__1_n_0 ),
        .I2(\line_word_reg_n_0_[0] ),
        .I3(\line_word_reg_n_0_[1] ),
        .I4(\line_word_reg_n_0_[2] ),
        .I5(spr_att_vdp_dout__0[52]),
        .O(\line_word[3]_i_4_n_0 ));
  FDRE \line_word_reg[0] 
       (.C(s_axi_aclk),
        .CE(\line_word[3]_i_1_n_0 ),
        .D(\line_word[0]_i_1_n_0 ),
        .Q(\line_word_reg_n_0_[0] ),
        .R(line_pos__0));
  FDRE \line_word_reg[1] 
       (.C(s_axi_aclk),
        .CE(\line_word[3]_i_1_n_0 ),
        .D(state1),
        .Q(\line_word_reg_n_0_[1] ),
        .R(line_pos__0));
  FDRE \line_word_reg[2] 
       (.C(s_axi_aclk),
        .CE(\line_word[3]_i_1_n_0 ),
        .D(\line_word[2]_i_1_n_0 ),
        .Q(\line_word_reg_n_0_[2] ),
        .R(line_pos__0));
  FDRE \line_word_reg[3] 
       (.C(s_axi_aclk),
        .CE(\line_word[3]_i_1_n_0 ),
        .D(\line_word[3]_i_2_n_0 ),
        .Q(\line_word_reg_n_0_[3] ),
        .R(line_pos__0));
  LUT5 #(
    .INIT(32'h55565555)) 
    \map_r_addr[12]_i_2 
       (.I0(\map_r_addr_reg[13] [8]),
        .I1(\map_r_addr_reg[13] [5]),
        .I2(\map_r_addr_reg[13] [6]),
        .I3(\map_r_addr_reg[13] [7]),
        .I4(\v_cnt_reg[2] ),
        .O(\v_cnt_reg[8] ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAA9A)) 
    \map_r_addr[13]_i_1 
       (.I0(\map_r_addr_reg[13] [9]),
        .I1(\map_r_addr_reg[13] [8]),
        .I2(\v_cnt_reg[2] ),
        .I3(\map_r_addr_reg[13] [7]),
        .I4(\map_r_addr_reg[13] [6]),
        .I5(\map_r_addr_reg[13] [5]),
        .O(gen_line[1]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \map_r_addr[13]_i_2 
       (.I0(\map_r_addr_reg[13] [2]),
        .I1(\map_r_addr_reg[13] [1]),
        .I2(\map_r_addr_reg[13] [4]),
        .I3(\map_r_addr_reg[13] [3]),
        .O(\v_cnt_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \map_r_addr[7]_i_1 
       (.I0(\map_r_addr_reg[13] [3]),
        .I1(\map_r_addr_reg[13] [2]),
        .I2(\map_r_addr_reg[13] [1]),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \map_r_addr[8]_i_1 
       (.I0(\map_r_addr_reg[13] [4]),
        .I1(\map_r_addr_reg[13] [3]),
        .I2(\map_r_addr_reg[13] [1]),
        .I3(\map_r_addr_reg[13] [2]),
        .O(\v_cnt_reg[4] ));
  LUT6 #(
    .INIT(64'h3033BFBB0000AAAA)) 
    \row_buf[0][10]_i_1 
       (.I0(state[5]),
        .I1(\row_buf[0][10]_i_2_n_0 ),
        .I2(spr_att_vdp_dout__0[52]),
        .I3(spr_att_vdp_dout__0[50]),
        .I4(\row_buf[0][10]_i_3_n_0 ),
        .I5(state[3]),
        .O(\row_buf[0][10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFB)) 
    \row_buf[0][10]_i_2 
       (.I0(spr_att_vdp_dout__0[48]),
        .I1(spr_data_vdp_dout[1]),
        .I2(spr_data_vdp_dout[3]),
        .I3(\row_buf[16][10]_i_2_n_0 ),
        .O(\row_buf[0][10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \row_buf[0][10]_i_3 
       (.I0(\row_buf[16][11]_i_2_n_0 ),
        .I1(spr_att_vdp_dout__0[48]),
        .I2(spr_data_vdp_dout[121]),
        .I3(spr_data_vdp_dout[123]),
        .O(\row_buf[0][10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFDDDDD0DD)) 
    \row_buf[0][11]_i_1 
       (.I0(\row_buf[0][11]_i_2_n_0 ),
        .I1(\row_buf[0][11]_i_3_n_0 ),
        .I2(\row_buf[0][11]_i_4_n_0 ),
        .I3(\row_buf[0][11]_i_5_n_0 ),
        .I4(\row_buf[0][11]_i_6_n_0 ),
        .I5(\row_buf[0][11]_i_7_n_0 ),
        .O(\row_buf[0][11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBAFBFFFFAFAF)) 
    \row_buf[0][11]_i_2 
       (.I0(\row_buf[16][10]_i_2_n_0 ),
        .I1(spr_data_vdp_dout[0]),
        .I2(spr_data_vdp_dout[1]),
        .I3(spr_data_vdp_dout[2]),
        .I4(spr_att_vdp_dout__0[48]),
        .I5(spr_data_vdp_dout[3]),
        .O(\row_buf[0][11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \row_buf[0][11]_i_3 
       (.I0(spr_att_vdp_dout__0[50]),
        .I1(spr_att_vdp_dout__0[52]),
        .O(\row_buf[0][11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020220020)) 
    \row_buf[0][11]_i_4 
       (.I0(state[3]),
        .I1(\row_buf[0][11]_i_8_n_0 ),
        .I2(spr_data_vdp_dout[120]),
        .I3(spr_data_vdp_dout[121]),
        .I4(spr_data_vdp_dout[122]),
        .I5(spr_att_vdp_dout__0[48]),
        .O(\row_buf[0][11]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \row_buf[0][11]_i_5 
       (.I0(spr_att_vdp_dout__0[52]),
        .I1(spr_att_vdp_dout__0[50]),
        .I2(state[3]),
        .O(\row_buf[0][11]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \row_buf[0][11]_i_6 
       (.I0(state[3]),
        .I1(spr_data_vdp_dout[123]),
        .I2(spr_data_vdp_dout[121]),
        .I3(spr_att_vdp_dout__0[48]),
        .I4(\row_buf[16][11]_i_2_n_0 ),
        .O(\row_buf[0][11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0010FFFF00000000)) 
    \row_buf[0][11]_i_7 
       (.I0(\row_buf[16][11]_i_2_n_0 ),
        .I1(spr_att_vdp_dout__0[48]),
        .I2(spr_data_vdp_dout[121]),
        .I3(spr_data_vdp_dout[123]),
        .I4(\row_buf[15][11]_i_2_n_0 ),
        .I5(state[5]),
        .O(\row_buf[0][11]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'hFFFEFFFF)) 
    \row_buf[0][11]_i_8 
       (.I0(spr_data_vdp_dout[125]),
        .I1(spr_data_vdp_dout[126]),
        .I2(spr_data_vdp_dout[124]),
        .I3(spr_data_vdp_dout[127]),
        .I4(spr_data_vdp_dout[123]),
        .O(\row_buf[0][11]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hBF88)) 
    \row_buf[0][12]_i_1 
       (.I0(state[5]),
        .I1(spr_att_vdp_dout__0[50]),
        .I2(spr_att_vdp_dout__0[52]),
        .I3(state[3]),
        .O(\row_buf[0][12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4050FFFF40507050)) 
    \row_buf[0][12]_i_2 
       (.I0(\row_buf[0][12]_i_3_n_0 ),
        .I1(spr_att_vdp_dout__0[52]),
        .I2(state[3]),
        .I3(spr_att_vdp_dout__0[50]),
        .I4(\row_buf[0][12]_i_4_n_0 ),
        .I5(state[5]),
        .O(\row_buf[0][12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF00FF01)) 
    \row_buf[0][12]_i_3 
       (.I0(\row_buf[0][12]_i_5_n_0 ),
        .I1(spr_data_vdp_dout[0]),
        .I2(spr_data_vdp_dout[1]),
        .I3(spr_att_vdp_dout__0[48]),
        .I4(spr_data_vdp_dout[7]),
        .O(\row_buf[0][12]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFF00FF01)) 
    \row_buf[0][12]_i_4 
       (.I0(\row_buf[0][12]_i_6_n_0 ),
        .I1(spr_data_vdp_dout[120]),
        .I2(spr_data_vdp_dout[121]),
        .I3(spr_att_vdp_dout__0[48]),
        .I4(spr_data_vdp_dout[127]),
        .O(\row_buf[0][12]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \row_buf[0][12]_i_5 
       (.I0(spr_data_vdp_dout[2]),
        .I1(spr_data_vdp_dout[3]),
        .I2(spr_data_vdp_dout[4]),
        .I3(spr_data_vdp_dout[6]),
        .I4(spr_data_vdp_dout[5]),
        .O(\row_buf[0][12]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \row_buf[0][12]_i_6 
       (.I0(spr_data_vdp_dout[122]),
        .I1(spr_data_vdp_dout[123]),
        .I2(spr_data_vdp_dout[124]),
        .I3(spr_data_vdp_dout[126]),
        .I4(spr_data_vdp_dout[125]),
        .O(\row_buf[0][12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h3033BFBB0000AAAA)) 
    \row_buf[0][2]_i_1 
       (.I0(state[5]),
        .I1(\row_buf[0][2]_i_2_n_0 ),
        .I2(spr_att_vdp_dout__0[52]),
        .I3(spr_att_vdp_dout__0[50]),
        .I4(\row_buf[0][2]_i_3_n_0 ),
        .I5(state[3]),
        .O(\row_buf[0][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFEFFFEFBFF)) 
    \row_buf[0][2]_i_2 
       (.I0(\row_buf[16][10]_i_2_n_0 ),
        .I1(spr_data_vdp_dout[2]),
        .I2(spr_att_vdp_dout__0[48]),
        .I3(spr_data_vdp_dout[0]),
        .I4(spr_data_vdp_dout[3]),
        .I5(spr_data_vdp_dout[1]),
        .O(\row_buf[0][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEF3FD)) 
    \row_buf[0][2]_i_3 
       (.I0(spr_data_vdp_dout[121]),
        .I1(spr_data_vdp_dout[122]),
        .I2(spr_att_vdp_dout__0[48]),
        .I3(spr_data_vdp_dout[120]),
        .I4(spr_data_vdp_dout[123]),
        .I5(\row_buf[16][11]_i_2_n_0 ),
        .O(\row_buf[0][2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h30330000BFBBAAAA)) 
    \row_buf[0][3]_i_1 
       (.I0(state[5]),
        .I1(\row_buf[0][3]_i_2_n_0 ),
        .I2(spr_att_vdp_dout__0[52]),
        .I3(spr_att_vdp_dout__0[50]),
        .I4(state[3]),
        .I5(\row_buf[0][3]_i_3_n_0 ),
        .O(\row_buf[0][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAABFBFEB)) 
    \row_buf[0][3]_i_2 
       (.I0(\row_buf[16][10]_i_2_n_0 ),
        .I1(spr_data_vdp_dout[3]),
        .I2(spr_data_vdp_dout[1]),
        .I3(spr_data_vdp_dout[2]),
        .I4(spr_data_vdp_dout[0]),
        .I5(spr_att_vdp_dout__0[48]),
        .O(\row_buf[0][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFAFBFBFEFBFEFBFF)) 
    \row_buf[0][3]_i_3 
       (.I0(\row_buf[16][11]_i_2_n_0 ),
        .I1(spr_data_vdp_dout[122]),
        .I2(spr_att_vdp_dout__0[48]),
        .I3(spr_data_vdp_dout[120]),
        .I4(spr_data_vdp_dout[121]),
        .I5(spr_data_vdp_dout[123]),
        .O(\row_buf[0][3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00AE00AAF3FF00AA)) 
    \row_buf[0][6]_i_1 
       (.I0(state[5]),
        .I1(spr_att_vdp_dout__0[50]),
        .I2(spr_att_vdp_dout__0[52]),
        .I3(\row_buf[0][6]_i_2_n_0 ),
        .I4(state[3]),
        .I5(\row_buf[0][6]_i_3_n_0 ),
        .O(\row_buf[0][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFEFFFEFFFB)) 
    \row_buf[0][6]_i_2 
       (.I0(\row_buf[16][11]_i_2_n_0 ),
        .I1(spr_data_vdp_dout[123]),
        .I2(spr_data_vdp_dout[120]),
        .I3(spr_att_vdp_dout__0[48]),
        .I4(spr_data_vdp_dout[122]),
        .I5(spr_data_vdp_dout[121]),
        .O(\row_buf[0][6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFEFEFEFF)) 
    \row_buf[0][6]_i_3 
       (.I0(\row_buf[16][10]_i_2_n_0 ),
        .I1(spr_data_vdp_dout[0]),
        .I2(spr_att_vdp_dout__0[48]),
        .I3(spr_data_vdp_dout[2]),
        .I4(spr_data_vdp_dout[1]),
        .I5(spr_data_vdp_dout[3]),
        .O(\row_buf[0][6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF3FF00AA00AE00AA)) 
    \row_buf[0][7]_i_1 
       (.I0(state[5]),
        .I1(spr_att_vdp_dout__0[50]),
        .I2(spr_att_vdp_dout__0[52]),
        .I3(\row_buf[0][7]_i_2_n_0 ),
        .I4(state[3]),
        .I5(\row_buf[0][7]_i_3_n_0 ),
        .O(\row_buf[0][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF7F0FFFFFFF1)) 
    \row_buf[0][7]_i_2 
       (.I0(spr_data_vdp_dout[121]),
        .I1(spr_data_vdp_dout[122]),
        .I2(spr_att_vdp_dout__0[48]),
        .I3(spr_data_vdp_dout[120]),
        .I4(\row_buf[16][11]_i_2_n_0 ),
        .I5(spr_data_vdp_dout[123]),
        .O(\row_buf[0][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000008000FE)) 
    \row_buf[0][7]_i_3 
       (.I0(spr_data_vdp_dout[3]),
        .I1(spr_data_vdp_dout[1]),
        .I2(spr_data_vdp_dout[2]),
        .I3(spr_att_vdp_dout__0[48]),
        .I4(spr_data_vdp_dout[0]),
        .I5(\row_buf[16][10]_i_2_n_0 ),
        .O(\row_buf[0][7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hE0ECE0A0)) 
    \row_buf[10][10]_i_1 
       (.I0(state[5]),
        .I1(state[3]),
        .I2(\row_buf[5][10]_i_2_n_0 ),
        .I3(spr_att_vdp_dout__0[50]),
        .I4(\row_buf[5][10]_i_3_n_0 ),
        .O(\row_buf[10][10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hE0ECE0A0)) 
    \row_buf[10][11]_i_1 
       (.I0(state[5]),
        .I1(state[3]),
        .I2(\row_buf[5][11]_i_2_n_0 ),
        .I3(spr_att_vdp_dout__0[50]),
        .I4(\row_buf[5][11]_i_3_n_0 ),
        .O(\row_buf[10][11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hE0ECE0A0)) 
    \row_buf[10][12]_i_1 
       (.I0(state[5]),
        .I1(state[3]),
        .I2(\row_buf[5][12]_i_2_n_0 ),
        .I3(spr_att_vdp_dout__0[50]),
        .I4(\row_buf[5][12]_i_3_n_0 ),
        .O(\row_buf[10][12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hE0ECE0A0)) 
    \row_buf[10][2]_i_1 
       (.I0(state[5]),
        .I1(state[3]),
        .I2(\row_buf[5][2]_i_2_n_0 ),
        .I3(spr_att_vdp_dout__0[50]),
        .I4(\row_buf[5][2]_i_3_n_0 ),
        .O(\row_buf[10][2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hE0ECE0A0)) 
    \row_buf[10][3]_i_1 
       (.I0(state[5]),
        .I1(state[3]),
        .I2(\row_buf[5][3]_i_2_n_0 ),
        .I3(spr_att_vdp_dout__0[50]),
        .I4(\row_buf[5][3]_i_3_n_0 ),
        .O(\row_buf[10][3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hE0ECE0A0)) 
    \row_buf[10][6]_i_1 
       (.I0(state[5]),
        .I1(state[3]),
        .I2(\row_buf[5][6]_i_2_n_0 ),
        .I3(spr_att_vdp_dout__0[50]),
        .I4(\row_buf[5][6]_i_3_n_0 ),
        .O(\row_buf[10][6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hE0ECE0A0)) 
    \row_buf[10][7]_i_1 
       (.I0(state[5]),
        .I1(state[3]),
        .I2(\row_buf[5][7]_i_2_n_0 ),
        .I3(spr_att_vdp_dout__0[50]),
        .I4(\row_buf[5][7]_i_3_n_0 ),
        .O(\row_buf[10][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30FA00EA)) 
    \row_buf[11][10]_i_1 
       (.I0(state[5]),
        .I1(spr_att_vdp_dout__0[50]),
        .I2(state[3]),
        .I3(\row_buf[4][10]_i_2_n_0 ),
        .I4(\row_buf[4][10]_i_3_n_0 ),
        .O(\row_buf[11][10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFFEA3300)) 
    \row_buf[11][11]_i_1 
       (.I0(state[5]),
        .I1(spr_att_vdp_dout__0[50]),
        .I2(state[3]),
        .I3(\row_buf[11][11]_i_2_n_0 ),
        .I4(\row_buf[4][11]_i_3_n_0 ),
        .O(\row_buf[11][11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h80AAA80000000000)) 
    \row_buf[11][11]_i_2 
       (.I0(state[3]),
        .I1(spr_data_vdp_dout[90]),
        .I2(spr_data_vdp_dout[88]),
        .I3(spr_data_vdp_dout[91]),
        .I4(spr_data_vdp_dout[89]),
        .I5(\row_buf[20][10]_i_2_n_0 ),
        .O(\row_buf[11][11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0F0C8F88)) 
    \row_buf[11][12]_i_1 
       (.I0(\row_buf[4][12]_i_2_n_0 ),
        .I1(state[3]),
        .I2(\row_buf[11][15]_i_2_n_0 ),
        .I3(state[5]),
        .I4(spr_att_vdp_dout__0[50]),
        .O(\row_buf[11][12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0F0A8F88)) 
    \row_buf[11][15]_i_1 
       (.I0(state[3]),
        .I1(\row_buf[4][15]_i_3_n_0 ),
        .I2(\row_buf[11][15]_i_2_n_0 ),
        .I3(state[5]),
        .I4(spr_att_vdp_dout__0[50]),
        .O(\row_buf[11][15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF00FF01)) 
    \row_buf[11][15]_i_2 
       (.I0(\row_buf[4][15]_i_4_n_0 ),
        .I1(spr_data_vdp_dout[32]),
        .I2(spr_data_vdp_dout[33]),
        .I3(spr_att_vdp_dout__0[48]),
        .I4(spr_data_vdp_dout[39]),
        .O(\row_buf[11][15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h40FF40C8)) 
    \row_buf[11][2]_i_1 
       (.I0(spr_att_vdp_dout__0[50]),
        .I1(state[3]),
        .I2(\row_buf[4][2]_i_3_n_0 ),
        .I3(\row_buf[4][2]_i_2_n_0 ),
        .I4(state[5]),
        .O(\row_buf[11][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h3300FFEA)) 
    \row_buf[11][3]_i_1 
       (.I0(state[5]),
        .I1(spr_att_vdp_dout__0[50]),
        .I2(state[3]),
        .I3(\row_buf[11][3]_i_2_n_0 ),
        .I4(\row_buf[4][3]_i_3_n_0 ),
        .O(\row_buf[11][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA80802800000000)) 
    \row_buf[11][3]_i_2 
       (.I0(state[3]),
        .I1(spr_data_vdp_dout[91]),
        .I2(spr_data_vdp_dout[89]),
        .I3(spr_data_vdp_dout[90]),
        .I4(spr_data_vdp_dout[88]),
        .I5(\row_buf[20][10]_i_2_n_0 ),
        .O(\row_buf[11][3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30FA00EA)) 
    \row_buf[11][6]_i_1 
       (.I0(state[5]),
        .I1(spr_att_vdp_dout__0[50]),
        .I2(state[3]),
        .I3(\row_buf[4][6]_i_2_n_0 ),
        .I4(\row_buf[4][6]_i_3_n_0 ),
        .O(\row_buf[11][6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30FA00EA)) 
    \row_buf[11][7]_i_1 
       (.I0(state[5]),
        .I1(spr_att_vdp_dout__0[50]),
        .I2(state[3]),
        .I3(\row_buf[4][7]_i_2_n_0 ),
        .I4(\row_buf[4][7]_i_3_n_0 ),
        .O(\row_buf[11][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000FFFF20002000)) 
    \row_buf[12][10]_i_1 
       (.I0(\row_buf[12][10]_i_2_n_0 ),
        .I1(spr_data_vdp_dout[99]),
        .I2(spr_data_vdp_dout[97]),
        .I3(\row_buf[12][10]_i_3_n_0 ),
        .I4(\row_buf[12][10]_i_4_n_0 ),
        .I5(\row_buf[3][10]_i_2_n_0 ),
        .O(\row_buf[12][10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \row_buf[12][10]_i_2 
       (.I0(state[3]),
        .I1(spr_att_vdp_dout__0[50]),
        .O(\row_buf[12][10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \row_buf[12][10]_i_3 
       (.I0(spr_att_vdp_dout__0[48]),
        .I1(spr_data_vdp_dout[100]),
        .I2(spr_data_vdp_dout[103]),
        .I3(spr_data_vdp_dout[101]),
        .I4(spr_data_vdp_dout[102]),
        .O(\row_buf[12][10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h15)) 
    \row_buf[12][10]_i_4 
       (.I0(state[5]),
        .I1(spr_att_vdp_dout__0[50]),
        .I2(state[3]),
        .O(\row_buf[12][10]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFECC0A00)) 
    \row_buf[12][11]_i_1 
       (.I0(\row_buf[3][11]_i_3_n_0 ),
        .I1(state[5]),
        .I2(spr_att_vdp_dout__0[50]),
        .I3(state[3]),
        .I4(\row_buf[3][11]_i_2_n_0 ),
        .O(\row_buf[12][11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFECC0A00)) 
    \row_buf[12][12]_i_1 
       (.I0(\row_buf[3][12]_i_3_n_0 ),
        .I1(state[5]),
        .I2(spr_att_vdp_dout__0[50]),
        .I3(state[3]),
        .I4(\row_buf[3][12]_i_2_n_0 ),
        .O(\row_buf[12][12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFECC0A00)) 
    \row_buf[12][15]_i_1 
       (.I0(\row_buf[3][15]_i_3_n_0 ),
        .I1(state[5]),
        .I2(spr_att_vdp_dout__0[50]),
        .I3(state[3]),
        .I4(\row_buf[3][15]_i_2_n_0 ),
        .O(\row_buf[12][15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFECC0A00)) 
    \row_buf[12][2]_i_1 
       (.I0(\row_buf[3][2]_i_3_n_0 ),
        .I1(state[5]),
        .I2(spr_att_vdp_dout__0[50]),
        .I3(state[3]),
        .I4(\row_buf[3][2]_i_2_n_0 ),
        .O(\row_buf[12][2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFECC0A00)) 
    \row_buf[12][3]_i_1 
       (.I0(\row_buf[3][3]_i_3_n_0 ),
        .I1(state[5]),
        .I2(spr_att_vdp_dout__0[50]),
        .I3(state[3]),
        .I4(\row_buf[3][3]_i_2_n_0 ),
        .O(\row_buf[12][3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFECC0A00)) 
    \row_buf[12][6]_i_1 
       (.I0(\row_buf[3][6]_i_3_n_0 ),
        .I1(state[5]),
        .I2(spr_att_vdp_dout__0[50]),
        .I3(state[3]),
        .I4(\row_buf[3][6]_i_2_n_0 ),
        .O(\row_buf[12][6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFECC0A00)) 
    \row_buf[12][7]_i_1 
       (.I0(\row_buf[3][7]_i_3_n_0 ),
        .I1(state[5]),
        .I2(spr_att_vdp_dout__0[50]),
        .I3(state[3]),
        .I4(\row_buf[3][7]_i_2_n_0 ),
        .O(\row_buf[12][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h10FF10D0)) 
    \row_buf[13][10]_i_1 
       (.I0(\row_buf[2][10]_i_3_n_0 ),
        .I1(spr_att_vdp_dout__0[50]),
        .I2(state[3]),
        .I3(\row_buf[2][10]_i_2_n_0 ),
        .I4(state[5]),
        .O(\row_buf[13][10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h10FF10D0)) 
    \row_buf[13][11]_i_1 
       (.I0(\row_buf[2][11]_i_3_n_0 ),
        .I1(spr_att_vdp_dout__0[50]),
        .I2(state[3]),
        .I3(\row_buf[2][11]_i_2_n_0 ),
        .I4(state[5]),
        .O(\row_buf[13][11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h10FF10D0)) 
    \row_buf[13][12]_i_1 
       (.I0(\row_buf[2][12]_i_3_n_0 ),
        .I1(spr_att_vdp_dout__0[50]),
        .I2(state[3]),
        .I3(\row_buf[2][12]_i_2_n_0 ),
        .I4(state[5]),
        .O(\row_buf[13][12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h10FF10D0)) 
    \row_buf[13][2]_i_1 
       (.I0(\row_buf[2][2]_i_3_n_0 ),
        .I1(spr_att_vdp_dout__0[50]),
        .I2(state[3]),
        .I3(\row_buf[2][2]_i_2_n_0 ),
        .I4(state[5]),
        .O(\row_buf[13][2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h3332BABA)) 
    \row_buf[13][3]_i_1 
       (.I0(\row_buf[2][3]_i_3_n_0 ),
        .I1(\row_buf[2][3]_i_2_n_0 ),
        .I2(state[5]),
        .I3(state[3]),
        .I4(spr_att_vdp_dout__0[50]),
        .O(\row_buf[13][3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h10FF10D0)) 
    \row_buf[13][6]_i_1 
       (.I0(\row_buf[2][6]_i_3_n_0 ),
        .I1(spr_att_vdp_dout__0[50]),
        .I2(state[3]),
        .I3(\row_buf[2][6]_i_2_n_0 ),
        .I4(state[5]),
        .O(\row_buf[13][6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h10FF10D0)) 
    \row_buf[13][7]_i_1 
       (.I0(\row_buf[2][7]_i_3_n_0 ),
        .I1(spr_att_vdp_dout__0[50]),
        .I2(state[3]),
        .I3(\row_buf[2][7]_i_2_n_0 ),
        .I4(state[5]),
        .O(\row_buf[13][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h10FF10D0)) 
    \row_buf[14][10]_i_1 
       (.I0(\row_buf[1][10]_i_3_n_0 ),
        .I1(spr_att_vdp_dout__0[50]),
        .I2(state[3]),
        .I3(\row_buf[1][10]_i_2_n_0 ),
        .I4(state[5]),
        .O(\row_buf[14][10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0F0C4F44)) 
    \row_buf[14][11]_i_1 
       (.I0(\row_buf[1][11]_i_3_n_0 ),
        .I1(state[3]),
        .I2(\row_buf[1][11]_i_2_n_0 ),
        .I3(state[5]),
        .I4(spr_att_vdp_dout__0[50]),
        .O(\row_buf[14][11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h33222F22)) 
    \row_buf[14][12]_i_1 
       (.I0(state[5]),
        .I1(\row_buf[1][12]_i_2_n_0 ),
        .I2(\row_buf[1][15]_i_3_n_0 ),
        .I3(state[3]),
        .I4(spr_att_vdp_dout__0[50]),
        .O(\row_buf[14][12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h33222F22)) 
    \row_buf[14][15]_i_1 
       (.I0(state[5]),
        .I1(\row_buf[1][15]_i_2_n_0 ),
        .I2(\row_buf[1][15]_i_3_n_0 ),
        .I3(state[3]),
        .I4(spr_att_vdp_dout__0[50]),
        .O(\row_buf[14][15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00EA30FA)) 
    \row_buf[14][2]_i_1 
       (.I0(state[5]),
        .I1(spr_att_vdp_dout__0[50]),
        .I2(state[3]),
        .I3(\row_buf[1][2]_i_2_n_0 ),
        .I4(\row_buf[1][2]_i_3_n_0 ),
        .O(\row_buf[14][2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0404FF8C)) 
    \row_buf[14][3]_i_1 
       (.I0(spr_att_vdp_dout__0[50]),
        .I1(state[3]),
        .I2(\row_buf[1][3]_i_3_n_0 ),
        .I3(state[5]),
        .I4(\row_buf[1][3]_i_2_n_0 ),
        .O(\row_buf[14][3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h10FF10D0)) 
    \row_buf[14][6]_i_1 
       (.I0(\row_buf[1][6]_i_3_n_0 ),
        .I1(spr_att_vdp_dout__0[50]),
        .I2(state[3]),
        .I3(\row_buf[1][6]_i_2_n_0 ),
        .I4(state[5]),
        .O(\row_buf[14][6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00EA30FA)) 
    \row_buf[14][7]_i_1 
       (.I0(state[5]),
        .I1(spr_att_vdp_dout__0[50]),
        .I2(state[3]),
        .I3(\row_buf[1][7]_i_2_n_0 ),
        .I4(\row_buf[1][7]_i_3_n_0 ),
        .O(\row_buf[14][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h3300FFEA)) 
    \row_buf[15][10]_i_1 
       (.I0(state[5]),
        .I1(spr_att_vdp_dout__0[50]),
        .I2(state[3]),
        .I3(\row_buf[0][11]_i_6_n_0 ),
        .I4(\row_buf[0][10]_i_2_n_0 ),
        .O(\row_buf[15][10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F0FFFFF0F0C4F44)) 
    \row_buf[15][11]_i_1 
       (.I0(\row_buf[15][11]_i_2_n_0 ),
        .I1(state[3]),
        .I2(\row_buf[0][11]_i_2_n_0 ),
        .I3(state[5]),
        .I4(spr_att_vdp_dout__0[50]),
        .I5(\row_buf[0][11]_i_6_n_0 ),
        .O(\row_buf[15][11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBAFBFFFF)) 
    \row_buf[15][11]_i_2 
       (.I0(spr_att_vdp_dout__0[48]),
        .I1(spr_data_vdp_dout[122]),
        .I2(spr_data_vdp_dout[121]),
        .I3(spr_data_vdp_dout[120]),
        .I4(spr_data_vdp_dout[123]),
        .I5(\row_buf[16][11]_i_2_n_0 ),
        .O(\row_buf[15][11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h10FF10D0)) 
    \row_buf[15][12]_i_1 
       (.I0(\row_buf[0][12]_i_4_n_0 ),
        .I1(spr_att_vdp_dout__0[50]),
        .I2(state[3]),
        .I3(\row_buf[0][12]_i_3_n_0 ),
        .I4(state[5]),
        .O(\row_buf[15][12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h33222F22)) 
    \row_buf[15][15]_i_1 
       (.I0(state[5]),
        .I1(\row_buf[0][12]_i_3_n_0 ),
        .I2(\row_buf[0][12]_i_4_n_0 ),
        .I3(state[3]),
        .I4(spr_att_vdp_dout__0[50]),
        .O(\row_buf[15][15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h10FF10D0)) 
    \row_buf[15][2]_i_1 
       (.I0(\row_buf[0][2]_i_3_n_0 ),
        .I1(spr_att_vdp_dout__0[50]),
        .I2(state[3]),
        .I3(\row_buf[0][2]_i_2_n_0 ),
        .I4(state[5]),
        .O(\row_buf[15][2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h55444F44)) 
    \row_buf[15][3]_i_1 
       (.I0(\row_buf[0][3]_i_2_n_0 ),
        .I1(state[5]),
        .I2(\row_buf[0][3]_i_3_n_0 ),
        .I3(state[3]),
        .I4(spr_att_vdp_dout__0[50]),
        .O(\row_buf[15][3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0404FF8C)) 
    \row_buf[15][6]_i_1 
       (.I0(spr_att_vdp_dout__0[50]),
        .I1(state[3]),
        .I2(\row_buf[0][6]_i_2_n_0 ),
        .I3(state[5]),
        .I4(\row_buf[0][6]_i_3_n_0 ),
        .O(\row_buf[15][6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCC888F88)) 
    \row_buf[15][7]_i_1 
       (.I0(state[5]),
        .I1(\row_buf[0][7]_i_3_n_0 ),
        .I2(\row_buf[0][7]_i_2_n_0 ),
        .I3(state[3]),
        .I4(spr_att_vdp_dout__0[50]),
        .O(\row_buf[15][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAABAAAAAAAAA)) 
    \row_buf[16][10]_i_1 
       (.I0(\row_buf[0][11]_i_6_n_0 ),
        .I1(spr_att_vdp_dout__0[48]),
        .I2(spr_data_vdp_dout[1]),
        .I3(spr_data_vdp_dout[3]),
        .I4(\row_buf[16][10]_i_2_n_0 ),
        .I5(state[5]),
        .O(\row_buf[16][10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \row_buf[16][10]_i_2 
       (.I0(spr_data_vdp_dout[7]),
        .I1(spr_data_vdp_dout[4]),
        .I2(spr_data_vdp_dout[6]),
        .I3(spr_data_vdp_dout[5]),
        .O(\row_buf[16][10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00100000)) 
    \row_buf[16][11]_i_1 
       (.I0(\row_buf[16][11]_i_2_n_0 ),
        .I1(spr_att_vdp_dout__0[48]),
        .I2(spr_data_vdp_dout[121]),
        .I3(spr_data_vdp_dout[123]),
        .I4(state[3]),
        .I5(\row_buf[16][11]_i_3_n_0 ),
        .O(\row_buf[16][11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \row_buf[16][11]_i_2 
       (.I0(spr_data_vdp_dout[127]),
        .I1(spr_data_vdp_dout[124]),
        .I2(spr_data_vdp_dout[126]),
        .I3(spr_data_vdp_dout[125]),
        .O(\row_buf[16][11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \row_buf[16][11]_i_3 
       (.I0(\row_buf[15][11]_i_2_n_0 ),
        .I1(state[3]),
        .I2(\row_buf[0][11]_i_2_n_0 ),
        .I3(state[5]),
        .O(\row_buf[16][11]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hE222)) 
    \row_buf[16][12]_i_1 
       (.I0(state[5]),
        .I1(spr_att_vdp_dout__0[50]),
        .I2(spr_att_vdp_dout__0[52]),
        .I3(state[3]),
        .O(\row_buf[16][12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \row_buf[16][12]_i_2 
       (.I0(\row_buf[0][12]_i_3_n_0 ),
        .I1(state[5]),
        .I2(\row_buf[0][12]_i_4_n_0 ),
        .I3(state[3]),
        .O(\row_buf[16][12]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \row_buf[16][2]_i_1 
       (.I0(\row_buf[0][2]_i_3_n_0 ),
        .I1(state[3]),
        .I2(\row_buf[0][2]_i_2_n_0 ),
        .I3(state[5]),
        .O(\row_buf[16][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \row_buf[16][3]_i_1 
       (.I0(\row_buf[0][3]_i_2_n_0 ),
        .I1(state[5]),
        .I2(\row_buf[0][3]_i_3_n_0 ),
        .I3(state[3]),
        .O(\row_buf[16][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \row_buf[16][6]_i_1 
       (.I0(\row_buf[0][6]_i_2_n_0 ),
        .I1(state[3]),
        .I2(\row_buf[0][6]_i_3_n_0 ),
        .I3(state[5]),
        .O(\row_buf[16][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'hF444)) 
    \row_buf[16][7]_i_1 
       (.I0(\row_buf[0][7]_i_2_n_0 ),
        .I1(state[3]),
        .I2(\row_buf[0][7]_i_3_n_0 ),
        .I3(state[5]),
        .O(\row_buf[16][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \row_buf[17][10]_i_1 
       (.I0(\row_buf[1][10]_i_3_n_0 ),
        .I1(state[3]),
        .I2(\row_buf[1][10]_i_2_n_0 ),
        .I3(state[5]),
        .O(\row_buf[17][10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \row_buf[17][11]_i_1 
       (.I0(\row_buf[1][11]_i_3_n_0 ),
        .I1(state[3]),
        .I2(\row_buf[1][11]_i_2_n_0 ),
        .I3(state[5]),
        .O(\row_buf[17][11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \row_buf[17][12]_i_1 
       (.I0(\row_buf[17][15]_i_2_n_0 ),
        .I1(\row_buf[1][12]_i_2_n_0 ),
        .I2(state[5]),
        .O(\row_buf[17][12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \row_buf[17][15]_i_1 
       (.I0(\row_buf[17][15]_i_2_n_0 ),
        .I1(\row_buf[1][15]_i_2_n_0 ),
        .I2(state[5]),
        .O(\row_buf[17][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0A0A0A0A0A0A0A08)) 
    \row_buf[17][15]_i_2 
       (.I0(state[3]),
        .I1(spr_data_vdp_dout[119]),
        .I2(spr_att_vdp_dout__0[48]),
        .I3(spr_data_vdp_dout[113]),
        .I4(spr_data_vdp_dout[112]),
        .I5(\row_buf[1][15]_i_5_n_0 ),
        .O(\row_buf[17][15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \row_buf[17][2]_i_1 
       (.I0(\row_buf[1][2]_i_3_n_0 ),
        .I1(state[3]),
        .I2(\row_buf[1][2]_i_2_n_0 ),
        .I3(state[5]),
        .O(\row_buf[17][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \row_buf[17][3]_i_1 
       (.I0(\row_buf[1][3]_i_2_n_0 ),
        .I1(state[5]),
        .I2(\row_buf[1][3]_i_3_n_0 ),
        .I3(state[3]),
        .O(\row_buf[17][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \row_buf[17][6]_i_1 
       (.I0(\row_buf[1][6]_i_3_n_0 ),
        .I1(state[3]),
        .I2(\row_buf[1][6]_i_2_n_0 ),
        .I3(state[5]),
        .O(\row_buf[17][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \row_buf[17][7]_i_1 
       (.I0(\row_buf[1][7]_i_3_n_0 ),
        .I1(state[3]),
        .I2(\row_buf[1][7]_i_2_n_0 ),
        .I3(state[5]),
        .O(\row_buf[17][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \row_buf[18][10]_i_1 
       (.I0(\row_buf[2][10]_i_3_n_0 ),
        .I1(state[3]),
        .I2(\row_buf[2][10]_i_2_n_0 ),
        .I3(state[5]),
        .O(\row_buf[18][10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \row_buf[18][11]_i_1 
       (.I0(\row_buf[2][11]_i_3_n_0 ),
        .I1(state[3]),
        .I2(\row_buf[2][11]_i_2_n_0 ),
        .I3(state[5]),
        .O(\row_buf[18][11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \row_buf[18][12]_i_1 
       (.I0(\row_buf[2][12]_i_3_n_0 ),
        .I1(state[3]),
        .I2(\row_buf[2][12]_i_2_n_0 ),
        .I3(state[5]),
        .O(\row_buf[18][12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \row_buf[18][2]_i_1 
       (.I0(\row_buf[2][2]_i_3_n_0 ),
        .I1(state[3]),
        .I2(\row_buf[2][2]_i_2_n_0 ),
        .I3(state[5]),
        .O(\row_buf[18][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \row_buf[18][3]_i_1 
       (.I0(\row_buf[2][3]_i_3_n_0 ),
        .I1(\row_buf[2][3]_i_2_n_0 ),
        .I2(state[5]),
        .O(\row_buf[18][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \row_buf[18][6]_i_1 
       (.I0(\row_buf[2][6]_i_3_n_0 ),
        .I1(state[3]),
        .I2(\row_buf[2][6]_i_2_n_0 ),
        .I3(state[5]),
        .O(\row_buf[18][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \row_buf[18][7]_i_1 
       (.I0(\row_buf[2][7]_i_3_n_0 ),
        .I1(state[3]),
        .I2(\row_buf[2][7]_i_2_n_0 ),
        .I3(state[5]),
        .O(\row_buf[18][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF400040004000)) 
    \row_buf[19][10]_i_1 
       (.I0(spr_data_vdp_dout[99]),
        .I1(spr_data_vdp_dout[97]),
        .I2(\row_buf[12][10]_i_3_n_0 ),
        .I3(state[3]),
        .I4(\row_buf[3][10]_i_2_n_0 ),
        .I5(state[5]),
        .O(\row_buf[19][10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_buf[19][11]_i_1 
       (.I0(\row_buf[3][11]_i_3_n_0 ),
        .I1(state[3]),
        .I2(\row_buf[3][11]_i_2_n_0 ),
        .I3(state[5]),
        .O(\row_buf[19][11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_buf[19][12]_i_1 
       (.I0(\row_buf[3][12]_i_3_n_0 ),
        .I1(state[3]),
        .I2(\row_buf[3][12]_i_2_n_0 ),
        .I3(state[5]),
        .O(\row_buf[19][12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_buf[19][15]_i_1 
       (.I0(\row_buf[3][15]_i_3_n_0 ),
        .I1(state[3]),
        .I2(\row_buf[3][15]_i_2_n_0 ),
        .I3(state[5]),
        .O(\row_buf[19][15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_buf[19][2]_i_1 
       (.I0(\row_buf[3][2]_i_3_n_0 ),
        .I1(state[3]),
        .I2(\row_buf[3][2]_i_2_n_0 ),
        .I3(state[5]),
        .O(\row_buf[19][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_buf[19][3]_i_1 
       (.I0(\row_buf[3][3]_i_3_n_0 ),
        .I1(state[3]),
        .I2(\row_buf[3][3]_i_2_n_0 ),
        .I3(state[5]),
        .O(\row_buf[19][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_buf[19][6]_i_1 
       (.I0(\row_buf[3][6]_i_3_n_0 ),
        .I1(state[3]),
        .I2(\row_buf[3][6]_i_2_n_0 ),
        .I3(state[5]),
        .O(\row_buf[19][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_buf[19][7]_i_1 
       (.I0(\row_buf[3][7]_i_3_n_0 ),
        .I1(state[3]),
        .I2(\row_buf[3][7]_i_2_n_0 ),
        .I3(state[5]),
        .O(\row_buf[19][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h30003030BAFABABA)) 
    \row_buf[1][10]_i_1 
       (.I0(state[5]),
        .I1(\row_buf[1][10]_i_2_n_0 ),
        .I2(state[3]),
        .I3(spr_att_vdp_dout__0[52]),
        .I4(spr_att_vdp_dout__0[50]),
        .I5(\row_buf[1][10]_i_3_n_0 ),
        .O(\row_buf[1][10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \row_buf[1][10]_i_2 
       (.I0(\row_buf[1][11]_i_4_n_0 ),
        .I1(spr_att_vdp_dout__0[48]),
        .I2(spr_data_vdp_dout[9]),
        .I3(spr_data_vdp_dout[11]),
        .O(\row_buf[1][10]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFB)) 
    \row_buf[1][10]_i_3 
       (.I0(spr_att_vdp_dout__0[48]),
        .I1(spr_data_vdp_dout[113]),
        .I2(spr_data_vdp_dout[115]),
        .I3(\row_buf[1][11]_i_5_n_0 ),
        .O(\row_buf[1][10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4500FFFF45007500)) 
    \row_buf[1][11]_i_1 
       (.I0(\row_buf[1][11]_i_2_n_0 ),
        .I1(spr_att_vdp_dout__0[52]),
        .I2(spr_att_vdp_dout__0[50]),
        .I3(state[3]),
        .I4(\row_buf[1][11]_i_3_n_0 ),
        .I5(state[5]),
        .O(\row_buf[1][11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFABFFEBFFEBFFEF)) 
    \row_buf[1][11]_i_2 
       (.I0(\row_buf[1][11]_i_4_n_0 ),
        .I1(spr_data_vdp_dout[11]),
        .I2(spr_data_vdp_dout[9]),
        .I3(spr_att_vdp_dout__0[48]),
        .I4(spr_data_vdp_dout[8]),
        .I5(spr_data_vdp_dout[10]),
        .O(\row_buf[1][11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBAFBFFFFAFAF)) 
    \row_buf[1][11]_i_3 
       (.I0(\row_buf[1][11]_i_5_n_0 ),
        .I1(spr_data_vdp_dout[112]),
        .I2(spr_data_vdp_dout[113]),
        .I3(spr_data_vdp_dout[114]),
        .I4(spr_att_vdp_dout__0[48]),
        .I5(spr_data_vdp_dout[115]),
        .O(\row_buf[1][11]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \row_buf[1][11]_i_4 
       (.I0(spr_data_vdp_dout[15]),
        .I1(spr_data_vdp_dout[12]),
        .I2(spr_data_vdp_dout[13]),
        .I3(spr_data_vdp_dout[14]),
        .O(\row_buf[1][11]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \row_buf[1][11]_i_5 
       (.I0(spr_data_vdp_dout[119]),
        .I1(spr_data_vdp_dout[116]),
        .I2(spr_data_vdp_dout[118]),
        .I3(spr_data_vdp_dout[117]),
        .O(\row_buf[1][11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0F04BFBF0F000F00)) 
    \row_buf[1][12]_i_1 
       (.I0(spr_att_vdp_dout__0[52]),
        .I1(spr_att_vdp_dout__0[50]),
        .I2(\row_buf[1][15]_i_3_n_0 ),
        .I3(state[5]),
        .I4(\row_buf[1][12]_i_2_n_0 ),
        .I5(state[3]),
        .O(\row_buf[1][12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAAA)) 
    \row_buf[1][12]_i_2 
       (.I0(spr_att_vdp_dout__0[48]),
        .I1(spr_data_vdp_dout[14]),
        .I2(spr_data_vdp_dout[13]),
        .I3(spr_data_vdp_dout[12]),
        .I4(\row_buf[1][12]_i_3_n_0 ),
        .O(\row_buf[1][12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \row_buf[1][12]_i_3 
       (.I0(spr_data_vdp_dout[15]),
        .I1(spr_data_vdp_dout[11]),
        .I2(spr_data_vdp_dout[8]),
        .I3(spr_data_vdp_dout[10]),
        .I4(spr_data_vdp_dout[9]),
        .O(\row_buf[1][12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h30003030BAFABABA)) 
    \row_buf[1][15]_i_1 
       (.I0(state[5]),
        .I1(\row_buf[1][15]_i_2_n_0 ),
        .I2(state[3]),
        .I3(spr_att_vdp_dout__0[52]),
        .I4(spr_att_vdp_dout__0[50]),
        .I5(\row_buf[1][15]_i_3_n_0 ),
        .O(\row_buf[1][15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    \row_buf[1][15]_i_2 
       (.I0(\row_buf[1][12]_i_2_n_0 ),
        .I1(spr_att_vdp_dout__0[48]),
        .I2(\row_buf[1][15]_i_4_n_0 ),
        .O(\row_buf[1][15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF00FF01)) 
    \row_buf[1][15]_i_3 
       (.I0(\row_buf[1][15]_i_5_n_0 ),
        .I1(spr_data_vdp_dout[112]),
        .I2(spr_data_vdp_dout[113]),
        .I3(spr_att_vdp_dout__0[48]),
        .I4(spr_data_vdp_dout[119]),
        .O(\row_buf[1][15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000040)) 
    \row_buf[1][15]_i_4 
       (.I0(spr_data_vdp_dout[8]),
        .I1(spr_data_vdp_dout[14]),
        .I2(spr_data_vdp_dout[11]),
        .I3(spr_data_vdp_dout[12]),
        .I4(\row_buf[1][15]_i_6_n_0 ),
        .O(\row_buf[1][15]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \row_buf[1][15]_i_5 
       (.I0(spr_data_vdp_dout[114]),
        .I1(spr_data_vdp_dout[115]),
        .I2(spr_data_vdp_dout[116]),
        .I3(spr_data_vdp_dout[118]),
        .I4(spr_data_vdp_dout[117]),
        .O(\row_buf[1][15]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \row_buf[1][15]_i_6 
       (.I0(spr_data_vdp_dout[9]),
        .I1(spr_data_vdp_dout[10]),
        .I2(spr_data_vdp_dout[15]),
        .I3(spr_data_vdp_dout[13]),
        .O(\row_buf[1][15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h30003030BAFABABA)) 
    \row_buf[1][2]_i_1 
       (.I0(state[5]),
        .I1(\row_buf[1][2]_i_2_n_0 ),
        .I2(state[3]),
        .I3(spr_att_vdp_dout__0[52]),
        .I4(spr_att_vdp_dout__0[50]),
        .I5(\row_buf[1][2]_i_3_n_0 ),
        .O(\row_buf[1][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFEFFFFEFFB)) 
    \row_buf[1][2]_i_2 
       (.I0(\row_buf[1][11]_i_4_n_0 ),
        .I1(spr_data_vdp_dout[11]),
        .I2(spr_data_vdp_dout[10]),
        .I3(spr_data_vdp_dout[8]),
        .I4(spr_att_vdp_dout__0[48]),
        .I5(spr_data_vdp_dout[9]),
        .O(\row_buf[1][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFAFFFF9)) 
    \row_buf[1][2]_i_3 
       (.I0(spr_data_vdp_dout[115]),
        .I1(spr_data_vdp_dout[113]),
        .I2(spr_data_vdp_dout[114]),
        .I3(spr_att_vdp_dout__0[48]),
        .I4(spr_data_vdp_dout[112]),
        .I5(\row_buf[1][11]_i_5_n_0 ),
        .O(\row_buf[1][2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h30300030BABAFABA)) 
    \row_buf[1][3]_i_1 
       (.I0(state[5]),
        .I1(\row_buf[1][3]_i_2_n_0 ),
        .I2(state[3]),
        .I3(spr_att_vdp_dout__0[50]),
        .I4(spr_att_vdp_dout__0[52]),
        .I5(\row_buf[1][3]_i_3_n_0 ),
        .O(\row_buf[1][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFABFFBEFFBEFFBF)) 
    \row_buf[1][3]_i_2 
       (.I0(\row_buf[1][11]_i_4_n_0 ),
        .I1(spr_data_vdp_dout[10]),
        .I2(spr_data_vdp_dout[8]),
        .I3(spr_att_vdp_dout__0[48]),
        .I4(spr_data_vdp_dout[9]),
        .I5(spr_data_vdp_dout[11]),
        .O(\row_buf[1][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAABFBFEB)) 
    \row_buf[1][3]_i_3 
       (.I0(\row_buf[1][11]_i_5_n_0 ),
        .I1(spr_data_vdp_dout[115]),
        .I2(spr_data_vdp_dout[113]),
        .I3(spr_data_vdp_dout[114]),
        .I4(spr_data_vdp_dout[112]),
        .I5(spr_att_vdp_dout__0[48]),
        .O(\row_buf[1][3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h30003030BAFABABA)) 
    \row_buf[1][6]_i_1 
       (.I0(state[5]),
        .I1(\row_buf[1][6]_i_2_n_0 ),
        .I2(state[3]),
        .I3(spr_att_vdp_dout__0[52]),
        .I4(spr_att_vdp_dout__0[50]),
        .I5(\row_buf[1][6]_i_3_n_0 ),
        .O(\row_buf[1][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFAFB)) 
    \row_buf[1][6]_i_2 
       (.I0(\row_buf[1][11]_i_4_n_0 ),
        .I1(spr_data_vdp_dout[9]),
        .I2(spr_data_vdp_dout[8]),
        .I3(spr_data_vdp_dout[10]),
        .I4(spr_att_vdp_dout__0[48]),
        .I5(spr_data_vdp_dout[11]),
        .O(\row_buf[1][6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFEFEFEFF)) 
    \row_buf[1][6]_i_3 
       (.I0(\row_buf[1][11]_i_5_n_0 ),
        .I1(spr_data_vdp_dout[112]),
        .I2(spr_att_vdp_dout__0[48]),
        .I3(spr_data_vdp_dout[114]),
        .I4(spr_data_vdp_dout[113]),
        .I5(spr_data_vdp_dout[115]),
        .O(\row_buf[1][6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h30003030BAFABABA)) 
    \row_buf[1][7]_i_1 
       (.I0(state[5]),
        .I1(\row_buf[1][7]_i_2_n_0 ),
        .I2(state[3]),
        .I3(spr_att_vdp_dout__0[52]),
        .I4(spr_att_vdp_dout__0[50]),
        .I5(\row_buf[1][7]_i_3_n_0 ),
        .O(\row_buf[1][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFDCFCFCFD)) 
    \row_buf[1][7]_i_2 
       (.I0(spr_data_vdp_dout[11]),
        .I1(spr_att_vdp_dout__0[48]),
        .I2(spr_data_vdp_dout[8]),
        .I3(spr_data_vdp_dout[10]),
        .I4(spr_data_vdp_dout[9]),
        .I5(\row_buf[1][11]_i_4_n_0 ),
        .O(\row_buf[1][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF7FFF01)) 
    \row_buf[1][7]_i_3 
       (.I0(spr_data_vdp_dout[115]),
        .I1(spr_data_vdp_dout[113]),
        .I2(spr_data_vdp_dout[114]),
        .I3(spr_att_vdp_dout__0[48]),
        .I4(spr_data_vdp_dout[112]),
        .I5(\row_buf[1][11]_i_5_n_0 ),
        .O(\row_buf[1][7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4000FFFF40004000)) 
    \row_buf[20][10]_i_1 
       (.I0(spr_data_vdp_dout[91]),
        .I1(spr_data_vdp_dout[89]),
        .I2(\row_buf[20][10]_i_2_n_0 ),
        .I3(state[3]),
        .I4(\row_buf[4][10]_i_2_n_0 ),
        .I5(state[5]),
        .O(\row_buf[20][10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \row_buf[20][10]_i_2 
       (.I0(spr_att_vdp_dout__0[48]),
        .I1(spr_data_vdp_dout[92]),
        .I2(spr_data_vdp_dout[95]),
        .I3(spr_data_vdp_dout[93]),
        .I4(spr_data_vdp_dout[94]),
        .O(\row_buf[20][10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \row_buf[20][11]_i_1 
       (.I0(\row_buf[11][11]_i_2_n_0 ),
        .I1(\row_buf[4][11]_i_3_n_0 ),
        .I2(state[5]),
        .O(\row_buf[20][11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \row_buf[20][12]_i_1 
       (.I0(\row_buf[4][12]_i_2_n_0 ),
        .I1(state[3]),
        .I2(\row_buf[11][15]_i_2_n_0 ),
        .I3(state[5]),
        .O(\row_buf[20][12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \row_buf[20][15]_i_1 
       (.I0(state[3]),
        .I1(\row_buf[4][15]_i_3_n_0 ),
        .I2(\row_buf[11][15]_i_2_n_0 ),
        .I3(state[5]),
        .O(\row_buf[20][15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \row_buf[20][2]_i_1 
       (.I0(\row_buf[4][2]_i_3_n_0 ),
        .I1(state[3]),
        .I2(\row_buf[4][2]_i_2_n_0 ),
        .I3(state[5]),
        .O(\row_buf[20][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \row_buf[20][3]_i_1 
       (.I0(\row_buf[11][3]_i_2_n_0 ),
        .I1(\row_buf[4][3]_i_3_n_0 ),
        .I2(state[5]),
        .O(\row_buf[20][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \row_buf[20][6]_i_1 
       (.I0(\row_buf[4][6]_i_3_n_0 ),
        .I1(state[3]),
        .I2(\row_buf[4][6]_i_2_n_0 ),
        .I3(state[5]),
        .O(\row_buf[20][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \row_buf[20][7]_i_1 
       (.I0(\row_buf[4][7]_i_3_n_0 ),
        .I1(state[3]),
        .I2(\row_buf[4][7]_i_2_n_0 ),
        .I3(state[5]),
        .O(\row_buf[20][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF400040004000)) 
    \row_buf[21][10]_i_1 
       (.I0(spr_data_vdp_dout__0[83]),
        .I1(spr_data_vdp_dout__0[81]),
        .I2(\row_buf[21][10]_i_2_n_0 ),
        .I3(state[3]),
        .I4(\row_buf[5][10]_i_2_n_0 ),
        .I5(state[5]),
        .O(\row_buf[21][10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \row_buf[21][10]_i_2 
       (.I0(spr_att_vdp_dout__0[48]),
        .I1(spr_data_vdp_dout__0[87]),
        .I2(spr_data_vdp_dout__0[86]),
        .I3(spr_data_vdp_dout__0[85]),
        .I4(spr_data_vdp_dout__0[84]),
        .O(\row_buf[21][10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_buf[21][11]_i_1 
       (.I0(\row_buf[5][11]_i_3_n_0 ),
        .I1(state[3]),
        .I2(\row_buf[5][11]_i_2_n_0 ),
        .I3(state[5]),
        .O(\row_buf[21][11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_buf[21][12]_i_1 
       (.I0(\row_buf[5][12]_i_3_n_0 ),
        .I1(state[3]),
        .I2(\row_buf[5][12]_i_2_n_0 ),
        .I3(state[5]),
        .O(\row_buf[21][12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_buf[21][2]_i_1 
       (.I0(\row_buf[5][2]_i_3_n_0 ),
        .I1(state[3]),
        .I2(\row_buf[5][2]_i_2_n_0 ),
        .I3(state[5]),
        .O(\row_buf[21][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_buf[21][3]_i_1 
       (.I0(\row_buf[5][3]_i_3_n_0 ),
        .I1(state[3]),
        .I2(\row_buf[5][3]_i_2_n_0 ),
        .I3(state[5]),
        .O(\row_buf[21][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_buf[21][6]_i_1 
       (.I0(\row_buf[5][6]_i_3_n_0 ),
        .I1(state[3]),
        .I2(\row_buf[5][6]_i_2_n_0 ),
        .I3(state[5]),
        .O(\row_buf[21][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_buf[21][7]_i_1 
       (.I0(\row_buf[5][7]_i_3_n_0 ),
        .I1(state[3]),
        .I2(\row_buf[5][7]_i_2_n_0 ),
        .I3(state[5]),
        .O(\row_buf[21][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hFF404040)) 
    \row_buf[22][10]_i_1 
       (.I0(spr_data_vdp_dout[75]),
        .I1(\row_buf[6][10]_i_3_n_0 ),
        .I2(state[3]),
        .I3(\row_buf[6][10]_i_2_n_0 ),
        .I4(state[5]),
        .O(\row_buf[22][10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_buf[22][11]_i_1 
       (.I0(\row_buf[6][11]_i_3_n_0 ),
        .I1(state[3]),
        .I2(\row_buf[6][11]_i_2_n_0 ),
        .I3(state[5]),
        .O(\row_buf[22][11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_buf[22][12]_i_1 
       (.I0(state[3]),
        .I1(\row_buf[6][12]_i_2_n_0 ),
        .I2(\row_buf[6][15]_i_2_n_0 ),
        .I3(state[5]),
        .O(\row_buf[22][12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \row_buf[22][15]_i_1 
       (.I0(\row_buf[9][15]_i_2_n_0 ),
        .I1(\row_buf[6][15]_i_2_n_0 ),
        .I2(state[5]),
        .O(\row_buf[22][15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_buf[22][2]_i_1 
       (.I0(\row_buf[6][2]_i_3_n_0 ),
        .I1(state[3]),
        .I2(\row_buf[6][2]_i_2_n_0 ),
        .I3(state[5]),
        .O(\row_buf[22][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_buf[22][3]_i_1 
       (.I0(\row_buf[6][3]_i_3_n_0 ),
        .I1(state[3]),
        .I2(\row_buf[6][3]_i_2_n_0 ),
        .I3(state[5]),
        .O(\row_buf[22][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_buf[22][6]_i_1 
       (.I0(\row_buf[6][6]_i_3_n_0 ),
        .I1(state[3]),
        .I2(\row_buf[6][6]_i_2_n_0 ),
        .I3(state[5]),
        .O(\row_buf[22][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_buf[22][7]_i_1 
       (.I0(\row_buf[6][7]_i_3_n_0 ),
        .I1(state[3]),
        .I2(\row_buf[6][7]_i_2_n_0 ),
        .I3(state[5]),
        .O(\row_buf[22][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2020FF2020202020)) 
    \row_buf[23][10]_i_1 
       (.I0(\row_buf[8][10]_i_3_n_0 ),
        .I1(spr_data_vdp_dout[67]),
        .I2(state[3]),
        .I3(\row_buf[7][10]_i_2_n_0 ),
        .I4(spr_data_vdp_dout[59]),
        .I5(state[5]),
        .O(\row_buf[23][10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_buf[23][11]_i_1 
       (.I0(\row_buf[7][11]_i_3_n_0 ),
        .I1(state[3]),
        .I2(\row_buf[7][11]_i_2_n_0 ),
        .I3(state[5]),
        .O(\row_buf[23][11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_buf[23][12]_i_1 
       (.I0(\row_buf[7][12]_i_3_n_0 ),
        .I1(state[3]),
        .I2(\row_buf[7][12]_i_2_n_0 ),
        .I3(state[5]),
        .O(\row_buf[23][12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_buf[23][15]_i_1 
       (.I0(\row_buf[7][15]_i_3_n_0 ),
        .I1(state[3]),
        .I2(\row_buf[7][15]_i_2_n_0 ),
        .I3(state[5]),
        .O(\row_buf[23][15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_buf[23][2]_i_1 
       (.I0(\row_buf[7][2]_i_3_n_0 ),
        .I1(state[3]),
        .I2(\row_buf[7][2]_i_2_n_0 ),
        .I3(state[5]),
        .O(\row_buf[23][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_buf[23][3]_i_1 
       (.I0(\row_buf[7][3]_i_3_n_0 ),
        .I1(state[3]),
        .I2(\row_buf[7][3]_i_2_n_0 ),
        .I3(state[5]),
        .O(\row_buf[23][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_buf[23][6]_i_1 
       (.I0(\row_buf[7][6]_i_3_n_0 ),
        .I1(state[3]),
        .I2(\row_buf[7][6]_i_2_n_0 ),
        .I3(state[5]),
        .O(\row_buf[23][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_buf[23][7]_i_1 
       (.I0(\row_buf[7][7]_i_3_n_0 ),
        .I1(state[3]),
        .I2(\row_buf[7][7]_i_2_n_0 ),
        .I3(state[5]),
        .O(\row_buf[23][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2020FF2020202020)) 
    \row_buf[24][10]_i_1 
       (.I0(\row_buf[8][10]_i_3_n_0 ),
        .I1(spr_data_vdp_dout[67]),
        .I2(state[5]),
        .I3(\row_buf[7][10]_i_2_n_0 ),
        .I4(spr_data_vdp_dout[59]),
        .I5(state[3]),
        .O(\row_buf[24][10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_buf[24][11]_i_1 
       (.I0(\row_buf[7][11]_i_3_n_0 ),
        .I1(state[5]),
        .I2(\row_buf[7][11]_i_2_n_0 ),
        .I3(state[3]),
        .O(\row_buf[24][11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_buf[24][12]_i_1 
       (.I0(\row_buf[7][12]_i_3_n_0 ),
        .I1(state[5]),
        .I2(\row_buf[7][12]_i_2_n_0 ),
        .I3(state[3]),
        .O(\row_buf[24][12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_buf[24][15]_i_1 
       (.I0(\row_buf[7][15]_i_3_n_0 ),
        .I1(state[5]),
        .I2(\row_buf[7][15]_i_2_n_0 ),
        .I3(state[3]),
        .O(\row_buf[24][15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_buf[24][2]_i_1 
       (.I0(\row_buf[7][2]_i_3_n_0 ),
        .I1(state[5]),
        .I2(\row_buf[7][2]_i_2_n_0 ),
        .I3(state[3]),
        .O(\row_buf[24][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_buf[24][3]_i_1 
       (.I0(\row_buf[7][3]_i_3_n_0 ),
        .I1(state[5]),
        .I2(\row_buf[7][3]_i_2_n_0 ),
        .I3(state[3]),
        .O(\row_buf[24][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_buf[24][6]_i_1 
       (.I0(\row_buf[7][6]_i_3_n_0 ),
        .I1(state[5]),
        .I2(\row_buf[7][6]_i_2_n_0 ),
        .I3(state[3]),
        .O(\row_buf[24][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_buf[24][7]_i_1 
       (.I0(\row_buf[7][7]_i_3_n_0 ),
        .I1(state[5]),
        .I2(\row_buf[7][7]_i_2_n_0 ),
        .I3(state[3]),
        .O(\row_buf[24][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hFF404040)) 
    \row_buf[25][10]_i_1 
       (.I0(spr_data_vdp_dout[75]),
        .I1(\row_buf[6][10]_i_3_n_0 ),
        .I2(state[5]),
        .I3(\row_buf[6][10]_i_2_n_0 ),
        .I4(state[3]),
        .O(\row_buf[25][10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_buf[25][11]_i_1 
       (.I0(\row_buf[6][11]_i_3_n_0 ),
        .I1(state[5]),
        .I2(\row_buf[6][11]_i_2_n_0 ),
        .I3(state[3]),
        .O(\row_buf[25][11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_buf[25][12]_i_1 
       (.I0(state[3]),
        .I1(\row_buf[6][15]_i_2_n_0 ),
        .I2(\row_buf[6][12]_i_2_n_0 ),
        .I3(state[5]),
        .O(\row_buf[25][12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_buf[25][15]_i_1 
       (.I0(state[3]),
        .I1(\row_buf[6][15]_i_2_n_0 ),
        .I2(\row_buf[6][15]_i_3_n_0 ),
        .I3(state[5]),
        .O(\row_buf[25][15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_buf[25][2]_i_1 
       (.I0(\row_buf[6][2]_i_3_n_0 ),
        .I1(state[5]),
        .I2(\row_buf[6][2]_i_2_n_0 ),
        .I3(state[3]),
        .O(\row_buf[25][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_buf[25][3]_i_1 
       (.I0(\row_buf[6][3]_i_3_n_0 ),
        .I1(state[5]),
        .I2(\row_buf[6][3]_i_2_n_0 ),
        .I3(state[3]),
        .O(\row_buf[25][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_buf[25][6]_i_1 
       (.I0(\row_buf[6][6]_i_3_n_0 ),
        .I1(state[5]),
        .I2(\row_buf[6][6]_i_2_n_0 ),
        .I3(state[3]),
        .O(\row_buf[25][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_buf[25][7]_i_1 
       (.I0(\row_buf[6][7]_i_3_n_0 ),
        .I1(state[5]),
        .I2(\row_buf[6][7]_i_2_n_0 ),
        .I3(state[3]),
        .O(\row_buf[25][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF400040004000)) 
    \row_buf[26][10]_i_1 
       (.I0(spr_data_vdp_dout__0[83]),
        .I1(spr_data_vdp_dout__0[81]),
        .I2(\row_buf[21][10]_i_2_n_0 ),
        .I3(state[5]),
        .I4(\row_buf[5][10]_i_2_n_0 ),
        .I5(state[3]),
        .O(\row_buf[26][10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_buf[26][11]_i_1 
       (.I0(\row_buf[5][11]_i_3_n_0 ),
        .I1(state[5]),
        .I2(\row_buf[5][11]_i_2_n_0 ),
        .I3(state[3]),
        .O(\row_buf[26][11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_buf[26][12]_i_1 
       (.I0(\row_buf[5][12]_i_3_n_0 ),
        .I1(state[5]),
        .I2(\row_buf[5][12]_i_2_n_0 ),
        .I3(state[3]),
        .O(\row_buf[26][12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_buf[26][2]_i_1 
       (.I0(\row_buf[5][2]_i_3_n_0 ),
        .I1(state[5]),
        .I2(\row_buf[5][2]_i_2_n_0 ),
        .I3(state[3]),
        .O(\row_buf[26][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_buf[26][3]_i_1 
       (.I0(\row_buf[5][3]_i_3_n_0 ),
        .I1(state[5]),
        .I2(\row_buf[5][3]_i_2_n_0 ),
        .I3(state[3]),
        .O(\row_buf[26][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_buf[26][6]_i_1 
       (.I0(\row_buf[5][6]_i_3_n_0 ),
        .I1(state[5]),
        .I2(\row_buf[5][6]_i_2_n_0 ),
        .I3(state[3]),
        .O(\row_buf[26][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_buf[26][7]_i_1 
       (.I0(\row_buf[5][7]_i_3_n_0 ),
        .I1(state[5]),
        .I2(\row_buf[5][7]_i_2_n_0 ),
        .I3(state[3]),
        .O(\row_buf[26][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4000FFFF40004000)) 
    \row_buf[27][10]_i_1 
       (.I0(spr_data_vdp_dout[91]),
        .I1(spr_data_vdp_dout[89]),
        .I2(\row_buf[20][10]_i_2_n_0 ),
        .I3(state[5]),
        .I4(\row_buf[4][10]_i_2_n_0 ),
        .I5(state[3]),
        .O(\row_buf[27][10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \row_buf[27][11]_i_1 
       (.I0(\row_buf[27][11]_i_2_n_0 ),
        .I1(state[3]),
        .I2(\row_buf[4][11]_i_3_n_0 ),
        .O(\row_buf[27][11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h80AAA80000000000)) 
    \row_buf[27][11]_i_2 
       (.I0(state[5]),
        .I1(spr_data_vdp_dout[90]),
        .I2(spr_data_vdp_dout[88]),
        .I3(spr_data_vdp_dout[91]),
        .I4(spr_data_vdp_dout[89]),
        .I5(\row_buf[20][10]_i_2_n_0 ),
        .O(\row_buf[27][11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \row_buf[27][12]_i_1 
       (.I0(\row_buf[4][12]_i_2_n_0 ),
        .I1(state[5]),
        .I2(\row_buf[4][15]_i_2_n_0 ),
        .O(\row_buf[27][12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \row_buf[27][15]_i_1 
       (.I0(state[5]),
        .I1(\row_buf[4][15]_i_3_n_0 ),
        .I2(\row_buf[4][15]_i_2_n_0 ),
        .O(\row_buf[27][15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \row_buf[27][2]_i_1 
       (.I0(\row_buf[4][2]_i_3_n_0 ),
        .I1(state[5]),
        .I2(\row_buf[4][2]_i_2_n_0 ),
        .I3(state[3]),
        .O(\row_buf[27][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \row_buf[27][3]_i_1 
       (.I0(\row_buf[27][3]_i_2_n_0 ),
        .I1(\row_buf[4][3]_i_3_n_0 ),
        .I2(state[3]),
        .O(\row_buf[27][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA80802800000000)) 
    \row_buf[27][3]_i_2 
       (.I0(state[5]),
        .I1(spr_data_vdp_dout[91]),
        .I2(spr_data_vdp_dout[89]),
        .I3(spr_data_vdp_dout[90]),
        .I4(spr_data_vdp_dout[88]),
        .I5(\row_buf[20][10]_i_2_n_0 ),
        .O(\row_buf[27][3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \row_buf[27][6]_i_1 
       (.I0(\row_buf[4][6]_i_3_n_0 ),
        .I1(state[5]),
        .I2(\row_buf[4][6]_i_2_n_0 ),
        .I3(state[3]),
        .O(\row_buf[27][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \row_buf[27][7]_i_1 
       (.I0(\row_buf[4][7]_i_3_n_0 ),
        .I1(state[5]),
        .I2(\row_buf[4][7]_i_2_n_0 ),
        .I3(state[3]),
        .O(\row_buf[27][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF400040004000)) 
    \row_buf[28][10]_i_1 
       (.I0(spr_data_vdp_dout[99]),
        .I1(spr_data_vdp_dout[97]),
        .I2(\row_buf[12][10]_i_3_n_0 ),
        .I3(state[5]),
        .I4(\row_buf[3][10]_i_2_n_0 ),
        .I5(state[3]),
        .O(\row_buf[28][10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_buf[28][11]_i_1 
       (.I0(\row_buf[3][11]_i_3_n_0 ),
        .I1(state[5]),
        .I2(\row_buf[3][11]_i_2_n_0 ),
        .I3(state[3]),
        .O(\row_buf[28][11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_buf[28][12]_i_1 
       (.I0(\row_buf[3][12]_i_3_n_0 ),
        .I1(state[5]),
        .I2(\row_buf[3][12]_i_2_n_0 ),
        .I3(state[3]),
        .O(\row_buf[28][12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_buf[28][15]_i_1 
       (.I0(\row_buf[3][15]_i_3_n_0 ),
        .I1(state[5]),
        .I2(\row_buf[3][15]_i_2_n_0 ),
        .I3(state[3]),
        .O(\row_buf[28][15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_buf[28][2]_i_1 
       (.I0(\row_buf[3][2]_i_3_n_0 ),
        .I1(state[5]),
        .I2(\row_buf[3][2]_i_2_n_0 ),
        .I3(state[3]),
        .O(\row_buf[28][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_buf[28][3]_i_1 
       (.I0(\row_buf[3][3]_i_3_n_0 ),
        .I1(state[5]),
        .I2(\row_buf[3][3]_i_2_n_0 ),
        .I3(state[3]),
        .O(\row_buf[28][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_buf[28][6]_i_1 
       (.I0(\row_buf[3][6]_i_3_n_0 ),
        .I1(state[5]),
        .I2(\row_buf[3][6]_i_2_n_0 ),
        .I3(state[3]),
        .O(\row_buf[28][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \row_buf[28][7]_i_1 
       (.I0(\row_buf[3][7]_i_3_n_0 ),
        .I1(state[5]),
        .I2(\row_buf[3][7]_i_2_n_0 ),
        .I3(state[3]),
        .O(\row_buf[28][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \row_buf[29][10]_i_1 
       (.I0(\row_buf[2][10]_i_3_n_0 ),
        .I1(state[5]),
        .I2(\row_buf[2][10]_i_2_n_0 ),
        .I3(state[3]),
        .O(\row_buf[29][10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \row_buf[29][11]_i_1 
       (.I0(\row_buf[2][11]_i_3_n_0 ),
        .I1(state[5]),
        .I2(\row_buf[2][11]_i_2_n_0 ),
        .I3(state[3]),
        .O(\row_buf[29][11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \row_buf[29][12]_i_1 
       (.I0(\row_buf[2][12]_i_3_n_0 ),
        .I1(state[5]),
        .I2(\row_buf[2][12]_i_2_n_0 ),
        .I3(state[3]),
        .O(\row_buf[29][12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \row_buf[29][2]_i_1 
       (.I0(\row_buf[2][2]_i_3_n_0 ),
        .I1(state[5]),
        .I2(\row_buf[2][2]_i_2_n_0 ),
        .I3(state[3]),
        .O(\row_buf[29][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \row_buf[29][3]_i_1 
       (.I0(\row_buf[2][3]_i_4_n_0 ),
        .I1(\row_buf[2][3]_i_2_n_0 ),
        .I2(state[3]),
        .O(\row_buf[29][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \row_buf[29][6]_i_1 
       (.I0(\row_buf[2][6]_i_3_n_0 ),
        .I1(state[5]),
        .I2(\row_buf[2][6]_i_2_n_0 ),
        .I3(state[3]),
        .O(\row_buf[29][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \row_buf[29][7]_i_1 
       (.I0(\row_buf[2][7]_i_3_n_0 ),
        .I1(state[5]),
        .I2(\row_buf[2][7]_i_2_n_0 ),
        .I3(state[3]),
        .O(\row_buf[29][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h30003030BAFABABA)) 
    \row_buf[2][10]_i_1 
       (.I0(state[5]),
        .I1(\row_buf[2][10]_i_2_n_0 ),
        .I2(state[3]),
        .I3(spr_att_vdp_dout__0[52]),
        .I4(spr_att_vdp_dout__0[50]),
        .I5(\row_buf[2][10]_i_3_n_0 ),
        .O(\row_buf[2][10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFB)) 
    \row_buf[2][10]_i_2 
       (.I0(spr_att_vdp_dout__0[48]),
        .I1(spr_data_vdp_dout[17]),
        .I2(spr_data_vdp_dout[19]),
        .I3(\row_buf[2][11]_i_4_n_0 ),
        .O(\row_buf[2][10]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFB)) 
    \row_buf[2][10]_i_3 
       (.I0(spr_att_vdp_dout__0[48]),
        .I1(spr_data_vdp_dout[105]),
        .I2(spr_data_vdp_dout[107]),
        .I3(\row_buf[2][11]_i_5_n_0 ),
        .O(\row_buf[2][10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h3033BFBB0000AAAA)) 
    \row_buf[2][11]_i_1 
       (.I0(state[5]),
        .I1(\row_buf[2][11]_i_2_n_0 ),
        .I2(spr_att_vdp_dout__0[52]),
        .I3(spr_att_vdp_dout__0[50]),
        .I4(\row_buf[2][11]_i_3_n_0 ),
        .I5(state[3]),
        .O(\row_buf[2][11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBAFBFFFFAFAF)) 
    \row_buf[2][11]_i_2 
       (.I0(\row_buf[2][11]_i_4_n_0 ),
        .I1(spr_data_vdp_dout[16]),
        .I2(spr_data_vdp_dout[17]),
        .I3(spr_data_vdp_dout[18]),
        .I4(spr_att_vdp_dout__0[48]),
        .I5(spr_data_vdp_dout[19]),
        .O(\row_buf[2][11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAEEEBBBF)) 
    \row_buf[2][11]_i_3 
       (.I0(\row_buf[2][11]_i_5_n_0 ),
        .I1(spr_data_vdp_dout[107]),
        .I2(spr_data_vdp_dout[104]),
        .I3(spr_data_vdp_dout[106]),
        .I4(spr_data_vdp_dout[105]),
        .I5(spr_att_vdp_dout__0[48]),
        .O(\row_buf[2][11]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \row_buf[2][11]_i_4 
       (.I0(spr_data_vdp_dout[23]),
        .I1(spr_data_vdp_dout[20]),
        .I2(spr_data_vdp_dout[22]),
        .I3(spr_data_vdp_dout[21]),
        .O(\row_buf[2][11]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \row_buf[2][11]_i_5 
       (.I0(spr_data_vdp_dout[111]),
        .I1(spr_data_vdp_dout[108]),
        .I2(spr_data_vdp_dout[110]),
        .I3(spr_data_vdp_dout[109]),
        .O(\row_buf[2][11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h30003030BAFABABA)) 
    \row_buf[2][12]_i_1 
       (.I0(state[5]),
        .I1(\row_buf[2][12]_i_2_n_0 ),
        .I2(state[3]),
        .I3(spr_att_vdp_dout__0[52]),
        .I4(spr_att_vdp_dout__0[50]),
        .I5(\row_buf[2][12]_i_3_n_0 ),
        .O(\row_buf[2][12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF00FF02)) 
    \row_buf[2][12]_i_2 
       (.I0(\row_buf[2][12]_i_4_n_0 ),
        .I1(spr_data_vdp_dout[17]),
        .I2(spr_data_vdp_dout[16]),
        .I3(spr_att_vdp_dout__0[48]),
        .I4(spr_data_vdp_dout[23]),
        .O(\row_buf[2][12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF00FF02)) 
    \row_buf[2][12]_i_3 
       (.I0(\row_buf[2][12]_i_5_n_0 ),
        .I1(spr_data_vdp_dout[104]),
        .I2(spr_data_vdp_dout[105]),
        .I3(spr_att_vdp_dout__0[48]),
        .I4(spr_data_vdp_dout[111]),
        .O(\row_buf[2][12]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \row_buf[2][12]_i_4 
       (.I0(spr_data_vdp_dout[18]),
        .I1(spr_data_vdp_dout[19]),
        .I2(spr_data_vdp_dout[20]),
        .I3(spr_data_vdp_dout[22]),
        .I4(spr_data_vdp_dout[21]),
        .O(\row_buf[2][12]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \row_buf[2][12]_i_5 
       (.I0(spr_data_vdp_dout[106]),
        .I1(spr_data_vdp_dout[107]),
        .I2(spr_data_vdp_dout[108]),
        .I3(spr_data_vdp_dout[110]),
        .I4(spr_data_vdp_dout[109]),
        .O(\row_buf[2][12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h30003030BAFABABA)) 
    \row_buf[2][2]_i_1 
       (.I0(state[5]),
        .I1(\row_buf[2][2]_i_2_n_0 ),
        .I2(state[3]),
        .I3(spr_att_vdp_dout__0[52]),
        .I4(spr_att_vdp_dout__0[50]),
        .I5(\row_buf[2][2]_i_3_n_0 ),
        .O(\row_buf[2][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFAFFFF9)) 
    \row_buf[2][2]_i_2 
       (.I0(spr_data_vdp_dout[19]),
        .I1(spr_data_vdp_dout[17]),
        .I2(spr_data_vdp_dout[18]),
        .I3(spr_att_vdp_dout__0[48]),
        .I4(spr_data_vdp_dout[16]),
        .I5(\row_buf[2][11]_i_4_n_0 ),
        .O(\row_buf[2][2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEF3FD)) 
    \row_buf[2][2]_i_3 
       (.I0(spr_data_vdp_dout[105]),
        .I1(spr_data_vdp_dout[106]),
        .I2(spr_att_vdp_dout__0[48]),
        .I3(spr_data_vdp_dout[104]),
        .I4(spr_data_vdp_dout[107]),
        .I5(\row_buf[2][11]_i_5_n_0 ),
        .O(\row_buf[2][2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF75457500)) 
    \row_buf[2][3]_i_1 
       (.I0(\row_buf[2][3]_i_2_n_0 ),
        .I1(spr_att_vdp_dout__0[52]),
        .I2(spr_att_vdp_dout__0[50]),
        .I3(\row_buf[2][3]_i_3_n_0 ),
        .I4(state[3]),
        .I5(\row_buf[2][3]_i_4_n_0 ),
        .O(\row_buf[2][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAABFBFEB)) 
    \row_buf[2][3]_i_2 
       (.I0(\row_buf[2][11]_i_4_n_0 ),
        .I1(spr_data_vdp_dout[19]),
        .I2(spr_data_vdp_dout[17]),
        .I3(spr_data_vdp_dout[18]),
        .I4(spr_data_vdp_dout[16]),
        .I5(spr_att_vdp_dout__0[48]),
        .O(\row_buf[2][3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \row_buf[2][3]_i_3 
       (.I0(\row_buf[2][2]_i_3_n_0 ),
        .I1(\row_buf[2][3]_i_5_n_0 ),
        .I2(state[3]),
        .O(\row_buf[2][3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \row_buf[2][3]_i_4 
       (.I0(\row_buf[2][2]_i_3_n_0 ),
        .I1(\row_buf[2][3]_i_5_n_0 ),
        .I2(state[5]),
        .O(\row_buf[2][3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFDDFFDFFFDFFFFF)) 
    \row_buf[2][3]_i_5 
       (.I0(spr_data_vdp_dout[107]),
        .I1(\row_buf[2][11]_i_5_n_0 ),
        .I2(spr_data_vdp_dout[104]),
        .I3(spr_att_vdp_dout__0[48]),
        .I4(spr_data_vdp_dout[106]),
        .I5(spr_data_vdp_dout[105]),
        .O(\row_buf[2][3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h30003030BAFABABA)) 
    \row_buf[2][6]_i_1 
       (.I0(state[5]),
        .I1(\row_buf[2][6]_i_2_n_0 ),
        .I2(state[3]),
        .I3(spr_att_vdp_dout__0[52]),
        .I4(spr_att_vdp_dout__0[50]),
        .I5(\row_buf[2][6]_i_3_n_0 ),
        .O(\row_buf[2][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFEFEFEFF)) 
    \row_buf[2][6]_i_2 
       (.I0(\row_buf[2][11]_i_4_n_0 ),
        .I1(spr_data_vdp_dout[16]),
        .I2(spr_att_vdp_dout__0[48]),
        .I3(spr_data_vdp_dout[18]),
        .I4(spr_data_vdp_dout[17]),
        .I5(spr_data_vdp_dout[19]),
        .O(\row_buf[2][6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFEFFFEFFFB)) 
    \row_buf[2][6]_i_3 
       (.I0(\row_buf[2][11]_i_5_n_0 ),
        .I1(spr_data_vdp_dout[107]),
        .I2(spr_data_vdp_dout[104]),
        .I3(spr_att_vdp_dout__0[48]),
        .I4(spr_data_vdp_dout[106]),
        .I5(spr_data_vdp_dout[105]),
        .O(\row_buf[2][6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h30003030BAFABABA)) 
    \row_buf[2][7]_i_1 
       (.I0(state[5]),
        .I1(\row_buf[2][7]_i_2_n_0 ),
        .I2(state[3]),
        .I3(spr_att_vdp_dout__0[52]),
        .I4(spr_att_vdp_dout__0[50]),
        .I5(\row_buf[2][7]_i_3_n_0 ),
        .O(\row_buf[2][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF7FFF01)) 
    \row_buf[2][7]_i_2 
       (.I0(spr_data_vdp_dout[19]),
        .I1(spr_data_vdp_dout[17]),
        .I2(spr_data_vdp_dout[18]),
        .I3(spr_att_vdp_dout__0[48]),
        .I4(spr_data_vdp_dout[16]),
        .I5(\row_buf[2][11]_i_4_n_0 ),
        .O(\row_buf[2][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF7F0FFFFFFF1)) 
    \row_buf[2][7]_i_3 
       (.I0(spr_data_vdp_dout[105]),
        .I1(spr_data_vdp_dout[106]),
        .I2(spr_att_vdp_dout__0[48]),
        .I3(spr_data_vdp_dout[104]),
        .I4(\row_buf[2][11]_i_5_n_0 ),
        .I5(spr_data_vdp_dout[107]),
        .O(\row_buf[2][7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \row_buf[30][10]_i_1 
       (.I0(\row_buf[1][10]_i_3_n_0 ),
        .I1(state[5]),
        .I2(\row_buf[1][10]_i_2_n_0 ),
        .I3(state[3]),
        .O(\row_buf[30][10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \row_buf[30][11]_i_1 
       (.I0(\row_buf[1][11]_i_3_n_0 ),
        .I1(state[5]),
        .I2(\row_buf[1][11]_i_2_n_0 ),
        .I3(state[3]),
        .O(\row_buf[30][11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \row_buf[30][12]_i_1 
       (.I0(\row_buf[30][15]_i_2_n_0 ),
        .I1(\row_buf[1][12]_i_2_n_0 ),
        .I2(state[3]),
        .O(\row_buf[30][12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \row_buf[30][15]_i_1 
       (.I0(\row_buf[30][15]_i_2_n_0 ),
        .I1(\row_buf[1][15]_i_2_n_0 ),
        .I2(state[3]),
        .O(\row_buf[30][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0A0A0A0A0A0A0A08)) 
    \row_buf[30][15]_i_2 
       (.I0(state[5]),
        .I1(spr_data_vdp_dout[119]),
        .I2(spr_att_vdp_dout__0[48]),
        .I3(spr_data_vdp_dout[113]),
        .I4(spr_data_vdp_dout[112]),
        .I5(\row_buf[1][15]_i_5_n_0 ),
        .O(\row_buf[30][15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \row_buf[30][2]_i_1 
       (.I0(\row_buf[1][2]_i_3_n_0 ),
        .I1(state[5]),
        .I2(\row_buf[1][2]_i_2_n_0 ),
        .I3(state[3]),
        .O(\row_buf[30][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \row_buf[30][3]_i_1 
       (.I0(\row_buf[1][3]_i_3_n_0 ),
        .I1(state[5]),
        .I2(\row_buf[1][3]_i_2_n_0 ),
        .I3(state[3]),
        .O(\row_buf[30][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \row_buf[30][6]_i_1 
       (.I0(\row_buf[1][6]_i_3_n_0 ),
        .I1(state[5]),
        .I2(\row_buf[1][6]_i_2_n_0 ),
        .I3(state[3]),
        .O(\row_buf[30][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \row_buf[30][7]_i_1 
       (.I0(\row_buf[1][7]_i_3_n_0 ),
        .I1(state[5]),
        .I2(\row_buf[1][7]_i_2_n_0 ),
        .I3(state[3]),
        .O(\row_buf[30][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAABAAAAAAAAA)) 
    \row_buf[31][10]_i_1 
       (.I0(\row_buf[31][10]_i_2_n_0 ),
        .I1(spr_att_vdp_dout__0[48]),
        .I2(spr_data_vdp_dout[1]),
        .I3(spr_data_vdp_dout[3]),
        .I4(\row_buf[16][10]_i_2_n_0 ),
        .I5(state[3]),
        .O(\row_buf[31][10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000020)) 
    \row_buf[31][10]_i_2 
       (.I0(state[5]),
        .I1(spr_data_vdp_dout[123]),
        .I2(spr_data_vdp_dout[121]),
        .I3(spr_att_vdp_dout__0[48]),
        .I4(\row_buf[16][11]_i_2_n_0 ),
        .O(\row_buf[31][10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \row_buf[31][11]_i_1 
       (.I0(\row_buf[0][11]_i_7_n_0 ),
        .I1(\row_buf[0][11]_i_2_n_0 ),
        .I2(state[3]),
        .O(\row_buf[31][11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \row_buf[31][12]_i_1 
       (.I0(\row_buf[0][12]_i_4_n_0 ),
        .I1(state[5]),
        .I2(\row_buf[0][12]_i_3_n_0 ),
        .I3(state[3]),
        .O(\row_buf[31][12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \row_buf[31][2]_i_1 
       (.I0(\row_buf[0][2]_i_3_n_0 ),
        .I1(state[5]),
        .I2(\row_buf[0][2]_i_2_n_0 ),
        .I3(state[3]),
        .O(\row_buf[31][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \row_buf[31][3]_i_1 
       (.I0(\row_buf[0][3]_i_3_n_0 ),
        .I1(state[5]),
        .I2(\row_buf[0][3]_i_2_n_0 ),
        .I3(state[3]),
        .O(\row_buf[31][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'h44F4)) 
    \row_buf[31][6]_i_1 
       (.I0(\row_buf[0][6]_i_2_n_0 ),
        .I1(state[5]),
        .I2(state[3]),
        .I3(\row_buf[0][6]_i_3_n_0 ),
        .O(\row_buf[31][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'hF444)) 
    \row_buf[31][7]_i_1 
       (.I0(\row_buf[0][7]_i_2_n_0 ),
        .I1(state[5]),
        .I2(state[3]),
        .I3(\row_buf[0][7]_i_3_n_0 ),
        .O(\row_buf[31][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAFAEAEAC000C0C0)) 
    \row_buf[3][10]_i_1 
       (.I0(state[5]),
        .I1(\row_buf[3][10]_i_2_n_0 ),
        .I2(state[3]),
        .I3(spr_att_vdp_dout__0[52]),
        .I4(spr_att_vdp_dout__0[50]),
        .I5(\row_buf[3][10]_i_3_n_0 ),
        .O(\row_buf[3][10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \row_buf[3][10]_i_2 
       (.I0(spr_data_vdp_dout[27]),
        .I1(spr_data_vdp_dout[25]),
        .I2(\row_buf[3][11]_i_4_n_0 ),
        .O(\row_buf[3][10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \row_buf[3][10]_i_3 
       (.I0(spr_data_vdp_dout[99]),
        .I1(spr_data_vdp_dout[97]),
        .I2(\row_buf[12][10]_i_3_n_0 ),
        .O(\row_buf[3][10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEAFAEAEAC000C0C0)) 
    \row_buf[3][11]_i_1 
       (.I0(state[5]),
        .I1(\row_buf[3][11]_i_2_n_0 ),
        .I2(state[3]),
        .I3(spr_att_vdp_dout__0[52]),
        .I4(spr_att_vdp_dout__0[50]),
        .I5(\row_buf[3][11]_i_3_n_0 ),
        .O(\row_buf[3][11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'hA8282808)) 
    \row_buf[3][11]_i_2 
       (.I0(\row_buf[3][11]_i_4_n_0 ),
        .I1(spr_data_vdp_dout[25]),
        .I2(spr_data_vdp_dout[27]),
        .I3(spr_data_vdp_dout[24]),
        .I4(spr_data_vdp_dout[26]),
        .O(\row_buf[3][11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'hA8282808)) 
    \row_buf[3][11]_i_3 
       (.I0(\row_buf[12][10]_i_3_n_0 ),
        .I1(spr_data_vdp_dout[97]),
        .I2(spr_data_vdp_dout[99]),
        .I3(spr_data_vdp_dout[96]),
        .I4(spr_data_vdp_dout[98]),
        .O(\row_buf[3][11]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \row_buf[3][11]_i_4 
       (.I0(spr_att_vdp_dout__0[48]),
        .I1(spr_data_vdp_dout[28]),
        .I2(spr_data_vdp_dout[31]),
        .I3(spr_data_vdp_dout[29]),
        .I4(spr_data_vdp_dout[30]),
        .O(\row_buf[3][11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEAFAEAEAC000C0C0)) 
    \row_buf[3][12]_i_1 
       (.I0(state[5]),
        .I1(\row_buf[3][12]_i_2_n_0 ),
        .I2(state[3]),
        .I3(spr_att_vdp_dout__0[52]),
        .I4(spr_att_vdp_dout__0[50]),
        .I5(\row_buf[3][12]_i_3_n_0 ),
        .O(\row_buf[3][12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF0000FFFE)) 
    \row_buf[3][12]_i_2 
       (.I0(\row_buf[3][15]_i_4_n_0 ),
        .I1(spr_data_vdp_dout[28]),
        .I2(spr_data_vdp_dout[26]),
        .I3(spr_data_vdp_dout[24]),
        .I4(spr_att_vdp_dout__0[48]),
        .I5(spr_data_vdp_dout[31]),
        .O(\row_buf[3][12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF0000FFFE)) 
    \row_buf[3][12]_i_3 
       (.I0(\row_buf[3][15]_i_5_n_0 ),
        .I1(spr_data_vdp_dout[100]),
        .I2(spr_data_vdp_dout[98]),
        .I3(spr_data_vdp_dout[96]),
        .I4(spr_att_vdp_dout__0[48]),
        .I5(spr_data_vdp_dout[103]),
        .O(\row_buf[3][12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEAFAEAEAC000C0C0)) 
    \row_buf[3][15]_i_1 
       (.I0(state[5]),
        .I1(\row_buf[3][15]_i_2_n_0 ),
        .I2(state[3]),
        .I3(spr_att_vdp_dout__0[52]),
        .I4(spr_att_vdp_dout__0[50]),
        .I5(\row_buf[3][15]_i_3_n_0 ),
        .O(\row_buf[3][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00FF00FF00FF00FE)) 
    \row_buf[3][15]_i_2 
       (.I0(spr_data_vdp_dout[26]),
        .I1(spr_data_vdp_dout[24]),
        .I2(spr_data_vdp_dout[31]),
        .I3(spr_att_vdp_dout__0[48]),
        .I4(\row_buf[3][15]_i_4_n_0 ),
        .I5(spr_data_vdp_dout[28]),
        .O(\row_buf[3][15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00FF00FF00FF00FE)) 
    \row_buf[3][15]_i_3 
       (.I0(spr_data_vdp_dout[98]),
        .I1(spr_data_vdp_dout[96]),
        .I2(spr_data_vdp_dout[103]),
        .I3(spr_att_vdp_dout__0[48]),
        .I4(\row_buf[3][15]_i_5_n_0 ),
        .I5(spr_data_vdp_dout[100]),
        .O(\row_buf[3][15]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \row_buf[3][15]_i_4 
       (.I0(spr_data_vdp_dout[29]),
        .I1(spr_data_vdp_dout[30]),
        .I2(spr_data_vdp_dout[25]),
        .I3(spr_data_vdp_dout[27]),
        .O(\row_buf[3][15]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \row_buf[3][15]_i_5 
       (.I0(spr_data_vdp_dout[101]),
        .I1(spr_data_vdp_dout[102]),
        .I2(spr_data_vdp_dout[97]),
        .I3(spr_data_vdp_dout[99]),
        .O(\row_buf[3][15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEAFAEAEAC000C0C0)) 
    \row_buf[3][2]_i_1 
       (.I0(state[5]),
        .I1(\row_buf[3][2]_i_2_n_0 ),
        .I2(state[3]),
        .I3(spr_att_vdp_dout__0[52]),
        .I4(spr_att_vdp_dout__0[50]),
        .I5(\row_buf[3][2]_i_3_n_0 ),
        .O(\row_buf[3][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h0A000028)) 
    \row_buf[3][2]_i_2 
       (.I0(\row_buf[3][11]_i_4_n_0 ),
        .I1(spr_data_vdp_dout[25]),
        .I2(spr_data_vdp_dout[27]),
        .I3(spr_data_vdp_dout[24]),
        .I4(spr_data_vdp_dout[26]),
        .O(\row_buf[3][2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h0A000028)) 
    \row_buf[3][2]_i_3 
       (.I0(\row_buf[12][10]_i_3_n_0 ),
        .I1(spr_data_vdp_dout[97]),
        .I2(spr_data_vdp_dout[99]),
        .I3(spr_data_vdp_dout[96]),
        .I4(spr_data_vdp_dout[98]),
        .O(\row_buf[3][2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEAFAEAEAC000C0C0)) 
    \row_buf[3][3]_i_1 
       (.I0(state[5]),
        .I1(\row_buf[3][3]_i_2_n_0 ),
        .I2(state[3]),
        .I3(spr_att_vdp_dout__0[52]),
        .I4(spr_att_vdp_dout__0[50]),
        .I5(\row_buf[3][3]_i_3_n_0 ),
        .O(\row_buf[3][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'hA8828280)) 
    \row_buf[3][3]_i_2 
       (.I0(\row_buf[3][11]_i_4_n_0 ),
        .I1(spr_data_vdp_dout[24]),
        .I2(spr_data_vdp_dout[26]),
        .I3(spr_data_vdp_dout[25]),
        .I4(spr_data_vdp_dout[27]),
        .O(\row_buf[3][3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'hA8828280)) 
    \row_buf[3][3]_i_3 
       (.I0(\row_buf[12][10]_i_3_n_0 ),
        .I1(spr_data_vdp_dout[96]),
        .I2(spr_data_vdp_dout[98]),
        .I3(spr_data_vdp_dout[97]),
        .I4(spr_data_vdp_dout[99]),
        .O(\row_buf[3][3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEAFAEAEAC000C0C0)) 
    \row_buf[3][6]_i_1 
       (.I0(state[5]),
        .I1(\row_buf[3][6]_i_2_n_0 ),
        .I2(state[3]),
        .I3(spr_att_vdp_dout__0[52]),
        .I4(spr_att_vdp_dout__0[50]),
        .I5(\row_buf[3][6]_i_3_n_0 ),
        .O(\row_buf[3][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h000010E0)) 
    \row_buf[3][6]_i_2 
       (.I0(spr_data_vdp_dout[25]),
        .I1(spr_data_vdp_dout[26]),
        .I2(\row_buf[3][11]_i_4_n_0 ),
        .I3(spr_data_vdp_dout[27]),
        .I4(spr_data_vdp_dout[24]),
        .O(\row_buf[3][6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h000010E0)) 
    \row_buf[3][6]_i_3 
       (.I0(spr_data_vdp_dout[97]),
        .I1(spr_data_vdp_dout[98]),
        .I2(\row_buf[12][10]_i_3_n_0 ),
        .I3(spr_data_vdp_dout[99]),
        .I4(spr_data_vdp_dout[96]),
        .O(\row_buf[3][6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEAFAEAEAC000C0C0)) 
    \row_buf[3][7]_i_1 
       (.I0(state[5]),
        .I1(\row_buf[3][7]_i_2_n_0 ),
        .I2(state[3]),
        .I3(spr_att_vdp_dout__0[52]),
        .I4(spr_att_vdp_dout__0[50]),
        .I5(\row_buf[3][7]_i_3_n_0 ),
        .O(\row_buf[3][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'hD5005400)) 
    \row_buf[3][7]_i_2 
       (.I0(spr_data_vdp_dout[24]),
        .I1(spr_data_vdp_dout[27]),
        .I2(spr_data_vdp_dout[25]),
        .I3(\row_buf[3][11]_i_4_n_0 ),
        .I4(spr_data_vdp_dout[26]),
        .O(\row_buf[3][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'hD5005400)) 
    \row_buf[3][7]_i_3 
       (.I0(spr_data_vdp_dout[96]),
        .I1(spr_data_vdp_dout[99]),
        .I2(spr_data_vdp_dout[97]),
        .I3(\row_buf[12][10]_i_3_n_0 ),
        .I4(spr_data_vdp_dout[98]),
        .O(\row_buf[3][7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBAFABABA30003030)) 
    \row_buf[4][10]_i_1 
       (.I0(state[5]),
        .I1(\row_buf[4][10]_i_2_n_0 ),
        .I2(state[3]),
        .I3(spr_att_vdp_dout__0[52]),
        .I4(spr_att_vdp_dout__0[50]),
        .I5(\row_buf[4][10]_i_3_n_0 ),
        .O(\row_buf[4][10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFB)) 
    \row_buf[4][10]_i_2 
       (.I0(spr_att_vdp_dout__0[48]),
        .I1(spr_data_vdp_dout[33]),
        .I2(spr_data_vdp_dout[35]),
        .I3(\row_buf[4][11]_i_4_n_0 ),
        .O(\row_buf[4][10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \row_buf[4][10]_i_3 
       (.I0(spr_data_vdp_dout[91]),
        .I1(spr_data_vdp_dout[89]),
        .I2(\row_buf[20][10]_i_2_n_0 ),
        .O(\row_buf[4][10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFF3AA00AE00AA00)) 
    \row_buf[4][11]_i_1 
       (.I0(state[5]),
        .I1(spr_att_vdp_dout__0[50]),
        .I2(spr_att_vdp_dout__0[52]),
        .I3(\row_buf[4][11]_i_2_n_0 ),
        .I4(state[3]),
        .I5(\row_buf[4][11]_i_3_n_0 ),
        .O(\row_buf[4][11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'hA8282808)) 
    \row_buf[4][11]_i_2 
       (.I0(\row_buf[20][10]_i_2_n_0 ),
        .I1(spr_data_vdp_dout[89]),
        .I2(spr_data_vdp_dout[91]),
        .I3(spr_data_vdp_dout[88]),
        .I4(spr_data_vdp_dout[90]),
        .O(\row_buf[4][11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000080F0E00)) 
    \row_buf[4][11]_i_3 
       (.I0(spr_data_vdp_dout[32]),
        .I1(spr_data_vdp_dout[34]),
        .I2(\row_buf[4][11]_i_4_n_0 ),
        .I3(spr_data_vdp_dout[35]),
        .I4(spr_data_vdp_dout[33]),
        .I5(spr_att_vdp_dout__0[48]),
        .O(\row_buf[4][11]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \row_buf[4][11]_i_4 
       (.I0(spr_data_vdp_dout[39]),
        .I1(spr_data_vdp_dout[36]),
        .I2(spr_data_vdp_dout[38]),
        .I3(spr_data_vdp_dout[37]),
        .O(\row_buf[4][11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEFEEC0CCEAEEC0CC)) 
    \row_buf[4][12]_i_1 
       (.I0(state[5]),
        .I1(\row_buf[4][15]_i_2_n_0 ),
        .I2(spr_att_vdp_dout__0[52]),
        .I3(spr_att_vdp_dout__0[50]),
        .I4(\row_buf[4][12]_i_2_n_0 ),
        .I5(state[3]),
        .O(\row_buf[4][12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF0000FFFE)) 
    \row_buf[4][12]_i_2 
       (.I0(\row_buf[4][15]_i_5_n_0 ),
        .I1(spr_data_vdp_dout[92]),
        .I2(spr_data_vdp_dout[90]),
        .I3(spr_data_vdp_dout[88]),
        .I4(spr_att_vdp_dout__0[48]),
        .I5(spr_data_vdp_dout[95]),
        .O(\row_buf[4][12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFEEC0CCEAEEC0CC)) 
    \row_buf[4][15]_i_1 
       (.I0(state[5]),
        .I1(\row_buf[4][15]_i_2_n_0 ),
        .I2(spr_att_vdp_dout__0[52]),
        .I3(spr_att_vdp_dout__0[50]),
        .I4(\row_buf[4][15]_i_3_n_0 ),
        .I5(state[3]),
        .O(\row_buf[4][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0A0A0A0A0A0A0A08)) 
    \row_buf[4][15]_i_2 
       (.I0(state[3]),
        .I1(spr_data_vdp_dout[39]),
        .I2(spr_att_vdp_dout__0[48]),
        .I3(spr_data_vdp_dout[33]),
        .I4(spr_data_vdp_dout[32]),
        .I5(\row_buf[4][15]_i_4_n_0 ),
        .O(\row_buf[4][15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00FF00FF00FF00FE)) 
    \row_buf[4][15]_i_3 
       (.I0(spr_data_vdp_dout[90]),
        .I1(spr_data_vdp_dout[88]),
        .I2(spr_data_vdp_dout[95]),
        .I3(spr_att_vdp_dout__0[48]),
        .I4(\row_buf[4][15]_i_5_n_0 ),
        .I5(spr_data_vdp_dout[92]),
        .O(\row_buf[4][15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \row_buf[4][15]_i_4 
       (.I0(spr_data_vdp_dout[34]),
        .I1(spr_data_vdp_dout[35]),
        .I2(spr_data_vdp_dout[36]),
        .I3(spr_data_vdp_dout[38]),
        .I4(spr_data_vdp_dout[37]),
        .O(\row_buf[4][15]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \row_buf[4][15]_i_5 
       (.I0(spr_data_vdp_dout[93]),
        .I1(spr_data_vdp_dout[94]),
        .I2(spr_data_vdp_dout[89]),
        .I3(spr_data_vdp_dout[91]),
        .O(\row_buf[4][15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBAFABABA30003030)) 
    \row_buf[4][2]_i_1 
       (.I0(state[5]),
        .I1(\row_buf[4][2]_i_2_n_0 ),
        .I2(state[3]),
        .I3(spr_att_vdp_dout__0[52]),
        .I4(spr_att_vdp_dout__0[50]),
        .I5(\row_buf[4][2]_i_3_n_0 ),
        .O(\row_buf[4][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFAFFFF9)) 
    \row_buf[4][2]_i_2 
       (.I0(spr_data_vdp_dout[35]),
        .I1(spr_data_vdp_dout[33]),
        .I2(spr_data_vdp_dout[34]),
        .I3(spr_att_vdp_dout__0[48]),
        .I4(spr_data_vdp_dout[32]),
        .I5(\row_buf[4][11]_i_4_n_0 ),
        .O(\row_buf[4][2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h0A000028)) 
    \row_buf[4][2]_i_3 
       (.I0(\row_buf[20][10]_i_2_n_0 ),
        .I1(spr_data_vdp_dout[89]),
        .I2(spr_data_vdp_dout[91]),
        .I3(spr_data_vdp_dout[88]),
        .I4(spr_data_vdp_dout[90]),
        .O(\row_buf[4][2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAE00AA00FFF3AA00)) 
    \row_buf[4][3]_i_1 
       (.I0(state[5]),
        .I1(spr_att_vdp_dout__0[50]),
        .I2(spr_att_vdp_dout__0[52]),
        .I3(\row_buf[4][3]_i_2_n_0 ),
        .I4(state[3]),
        .I5(\row_buf[4][3]_i_3_n_0 ),
        .O(\row_buf[4][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'hA8828280)) 
    \row_buf[4][3]_i_2 
       (.I0(\row_buf[20][10]_i_2_n_0 ),
        .I1(spr_data_vdp_dout[88]),
        .I2(spr_data_vdp_dout[90]),
        .I3(spr_data_vdp_dout[89]),
        .I4(spr_data_vdp_dout[91]),
        .O(\row_buf[4][3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAABFBFEB)) 
    \row_buf[4][3]_i_3 
       (.I0(\row_buf[4][11]_i_4_n_0 ),
        .I1(spr_data_vdp_dout[35]),
        .I2(spr_data_vdp_dout[33]),
        .I3(spr_data_vdp_dout[34]),
        .I4(spr_data_vdp_dout[32]),
        .I5(spr_att_vdp_dout__0[48]),
        .O(\row_buf[4][3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBAFABABA30003030)) 
    \row_buf[4][6]_i_1 
       (.I0(state[5]),
        .I1(\row_buf[4][6]_i_2_n_0 ),
        .I2(state[3]),
        .I3(spr_att_vdp_dout__0[52]),
        .I4(spr_att_vdp_dout__0[50]),
        .I5(\row_buf[4][6]_i_3_n_0 ),
        .O(\row_buf[4][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFEFEFEFF)) 
    \row_buf[4][6]_i_2 
       (.I0(\row_buf[4][11]_i_4_n_0 ),
        .I1(spr_data_vdp_dout[32]),
        .I2(spr_att_vdp_dout__0[48]),
        .I3(spr_data_vdp_dout[34]),
        .I4(spr_data_vdp_dout[33]),
        .I5(spr_data_vdp_dout[35]),
        .O(\row_buf[4][6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h000010E0)) 
    \row_buf[4][6]_i_3 
       (.I0(spr_data_vdp_dout[89]),
        .I1(spr_data_vdp_dout[90]),
        .I2(\row_buf[20][10]_i_2_n_0 ),
        .I3(spr_data_vdp_dout[91]),
        .I4(spr_data_vdp_dout[88]),
        .O(\row_buf[4][6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBAFABABA30003030)) 
    \row_buf[4][7]_i_1 
       (.I0(state[5]),
        .I1(\row_buf[4][7]_i_2_n_0 ),
        .I2(state[3]),
        .I3(spr_att_vdp_dout__0[52]),
        .I4(spr_att_vdp_dout__0[50]),
        .I5(\row_buf[4][7]_i_3_n_0 ),
        .O(\row_buf[4][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF7FFF01)) 
    \row_buf[4][7]_i_2 
       (.I0(spr_data_vdp_dout[35]),
        .I1(spr_data_vdp_dout[33]),
        .I2(spr_data_vdp_dout[34]),
        .I3(spr_att_vdp_dout__0[48]),
        .I4(spr_data_vdp_dout[32]),
        .I5(\row_buf[4][11]_i_4_n_0 ),
        .O(\row_buf[4][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'hD5005400)) 
    \row_buf[4][7]_i_3 
       (.I0(spr_data_vdp_dout[88]),
        .I1(spr_data_vdp_dout[91]),
        .I2(spr_data_vdp_dout[89]),
        .I3(\row_buf[20][10]_i_2_n_0 ),
        .I4(spr_data_vdp_dout[90]),
        .O(\row_buf[4][7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEAFAEAEAC000C0C0)) 
    \row_buf[5][10]_i_1 
       (.I0(state[5]),
        .I1(\row_buf[5][10]_i_2_n_0 ),
        .I2(state[3]),
        .I3(spr_att_vdp_dout__0[52]),
        .I4(spr_att_vdp_dout__0[50]),
        .I5(\row_buf[5][10]_i_3_n_0 ),
        .O(\row_buf[5][10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \row_buf[5][10]_i_2 
       (.I0(spr_data_vdp_dout__0[43]),
        .I1(spr_data_vdp_dout__0[41]),
        .I2(\row_buf[5][11]_i_4_n_0 ),
        .O(\row_buf[5][10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \row_buf[5][10]_i_3 
       (.I0(spr_data_vdp_dout__0[83]),
        .I1(spr_data_vdp_dout__0[81]),
        .I2(\row_buf[21][10]_i_2_n_0 ),
        .O(\row_buf[5][10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEAFAEAEAC000C0C0)) 
    \row_buf[5][11]_i_1 
       (.I0(state[5]),
        .I1(\row_buf[5][11]_i_2_n_0 ),
        .I2(state[3]),
        .I3(spr_att_vdp_dout__0[52]),
        .I4(spr_att_vdp_dout__0[50]),
        .I5(\row_buf[5][11]_i_3_n_0 ),
        .O(\row_buf[5][11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'hA2228880)) 
    \row_buf[5][11]_i_2 
       (.I0(\row_buf[5][11]_i_4_n_0 ),
        .I1(spr_data_vdp_dout__0[43]),
        .I2(spr_data_vdp_dout__0[42]),
        .I3(spr_data_vdp_dout__0[40]),
        .I4(spr_data_vdp_dout__0[41]),
        .O(\row_buf[5][11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'hA2228880)) 
    \row_buf[5][11]_i_3 
       (.I0(\row_buf[21][10]_i_2_n_0 ),
        .I1(spr_data_vdp_dout__0[83]),
        .I2(spr_data_vdp_dout__0[82]),
        .I3(spr_data_vdp_dout__0[80]),
        .I4(spr_data_vdp_dout__0[81]),
        .O(\row_buf[5][11]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \row_buf[5][11]_i_4 
       (.I0(spr_att_vdp_dout__0[48]),
        .I1(spr_data_vdp_dout__0[47]),
        .I2(spr_data_vdp_dout__0[46]),
        .I3(spr_data_vdp_dout__0[45]),
        .I4(spr_data_vdp_dout__0[44]),
        .O(\row_buf[5][11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEAFAEAEAC000C0C0)) 
    \row_buf[5][12]_i_1 
       (.I0(state[5]),
        .I1(\row_buf[5][12]_i_2_n_0 ),
        .I2(state[3]),
        .I3(spr_att_vdp_dout__0[52]),
        .I4(spr_att_vdp_dout__0[50]),
        .I5(\row_buf[5][12]_i_3_n_0 ),
        .O(\row_buf[5][12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00FF00FF00FF00FE)) 
    \row_buf[5][12]_i_2 
       (.I0(spr_data_vdp_dout__0[43]),
        .I1(\row_buf[5][12]_i_4_n_0 ),
        .I2(\row_buf[5][12]_i_5_n_0 ),
        .I3(spr_att_vdp_dout__0[48]),
        .I4(spr_data_vdp_dout__0[47]),
        .I5(spr_data_vdp_dout__0[40]),
        .O(\row_buf[5][12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00FF00FF00FF00FE)) 
    \row_buf[5][12]_i_3 
       (.I0(spr_data_vdp_dout__0[83]),
        .I1(\row_buf[5][12]_i_6_n_0 ),
        .I2(\row_buf[5][12]_i_7_n_0 ),
        .I3(spr_att_vdp_dout__0[48]),
        .I4(spr_data_vdp_dout__0[87]),
        .I5(spr_data_vdp_dout__0[80]),
        .O(\row_buf[5][12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \row_buf[5][12]_i_4 
       (.I0(spr_data_vdp_dout__0[42]),
        .I1(spr_data_vdp_dout__0[41]),
        .O(\row_buf[5][12]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \row_buf[5][12]_i_5 
       (.I0(spr_data_vdp_dout__0[44]),
        .I1(spr_data_vdp_dout__0[45]),
        .I2(spr_data_vdp_dout__0[46]),
        .O(\row_buf[5][12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \row_buf[5][12]_i_6 
       (.I0(spr_data_vdp_dout__0[82]),
        .I1(spr_data_vdp_dout__0[81]),
        .O(\row_buf[5][12]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \row_buf[5][12]_i_7 
       (.I0(spr_data_vdp_dout__0[84]),
        .I1(spr_data_vdp_dout__0[85]),
        .I2(spr_data_vdp_dout__0[86]),
        .O(\row_buf[5][12]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hEAFAEAEAC000C0C0)) 
    \row_buf[5][2]_i_1 
       (.I0(state[5]),
        .I1(\row_buf[5][2]_i_2_n_0 ),
        .I2(state[3]),
        .I3(spr_att_vdp_dout__0[52]),
        .I4(spr_att_vdp_dout__0[50]),
        .I5(\row_buf[5][2]_i_3_n_0 ),
        .O(\row_buf[5][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h30060000)) 
    \row_buf[5][2]_i_2 
       (.I0(spr_data_vdp_dout__0[41]),
        .I1(spr_data_vdp_dout__0[43]),
        .I2(spr_data_vdp_dout__0[42]),
        .I3(spr_data_vdp_dout__0[40]),
        .I4(\row_buf[5][11]_i_4_n_0 ),
        .O(\row_buf[5][2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h50060000)) 
    \row_buf[5][2]_i_3 
       (.I0(spr_data_vdp_dout__0[83]),
        .I1(spr_data_vdp_dout__0[81]),
        .I2(spr_data_vdp_dout__0[82]),
        .I3(spr_data_vdp_dout__0[80]),
        .I4(\row_buf[21][10]_i_2_n_0 ),
        .O(\row_buf[5][2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEAFAEAEAC000C0C0)) 
    \row_buf[5][3]_i_1 
       (.I0(state[5]),
        .I1(\row_buf[5][3]_i_2_n_0 ),
        .I2(state[3]),
        .I3(spr_att_vdp_dout__0[52]),
        .I4(spr_att_vdp_dout__0[50]),
        .I5(\row_buf[5][3]_i_3_n_0 ),
        .O(\row_buf[5][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'hA882A008)) 
    \row_buf[5][3]_i_2 
       (.I0(\row_buf[5][11]_i_4_n_0 ),
        .I1(spr_data_vdp_dout__0[43]),
        .I2(spr_data_vdp_dout__0[42]),
        .I3(spr_data_vdp_dout__0[40]),
        .I4(spr_data_vdp_dout__0[41]),
        .O(\row_buf[5][3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'hA882A008)) 
    \row_buf[5][3]_i_3 
       (.I0(\row_buf[21][10]_i_2_n_0 ),
        .I1(spr_data_vdp_dout__0[83]),
        .I2(spr_data_vdp_dout__0[82]),
        .I3(spr_data_vdp_dout__0[80]),
        .I4(spr_data_vdp_dout__0[81]),
        .O(\row_buf[5][3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEAFAEAEAC000C0C0)) 
    \row_buf[5][6]_i_1 
       (.I0(state[5]),
        .I1(\row_buf[5][6]_i_2_n_0 ),
        .I2(state[3]),
        .I3(spr_att_vdp_dout__0[52]),
        .I4(spr_att_vdp_dout__0[50]),
        .I5(\row_buf[5][6]_i_3_n_0 ),
        .O(\row_buf[5][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h02020208)) 
    \row_buf[5][6]_i_2 
       (.I0(\row_buf[5][11]_i_4_n_0 ),
        .I1(spr_data_vdp_dout__0[43]),
        .I2(spr_data_vdp_dout__0[40]),
        .I3(spr_data_vdp_dout__0[41]),
        .I4(spr_data_vdp_dout__0[42]),
        .O(\row_buf[5][6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h02020208)) 
    \row_buf[5][6]_i_3 
       (.I0(\row_buf[21][10]_i_2_n_0 ),
        .I1(spr_data_vdp_dout__0[83]),
        .I2(spr_data_vdp_dout__0[80]),
        .I3(spr_data_vdp_dout__0[81]),
        .I4(spr_data_vdp_dout__0[82]),
        .O(\row_buf[5][6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEAFAEAEAC000C0C0)) 
    \row_buf[5][7]_i_1 
       (.I0(state[5]),
        .I1(\row_buf[5][7]_i_2_n_0 ),
        .I2(state[3]),
        .I3(spr_att_vdp_dout__0[52]),
        .I4(spr_att_vdp_dout__0[50]),
        .I5(\row_buf[5][7]_i_3_n_0 ),
        .O(\row_buf[5][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h8000AAA8)) 
    \row_buf[5][7]_i_2 
       (.I0(\row_buf[5][11]_i_4_n_0 ),
        .I1(spr_data_vdp_dout__0[43]),
        .I2(spr_data_vdp_dout__0[42]),
        .I3(spr_data_vdp_dout__0[41]),
        .I4(spr_data_vdp_dout__0[40]),
        .O(\row_buf[5][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h8000AAA8)) 
    \row_buf[5][7]_i_3 
       (.I0(\row_buf[21][10]_i_2_n_0 ),
        .I1(spr_data_vdp_dout__0[83]),
        .I2(spr_data_vdp_dout__0[82]),
        .I3(spr_data_vdp_dout__0[81]),
        .I4(spr_data_vdp_dout__0[80]),
        .O(\row_buf[5][7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00C0FAEA00C000C0)) 
    \row_buf[6][10]_i_1 
       (.I0(state[5]),
        .I1(\row_buf[6][10]_i_2_n_0 ),
        .I2(state[3]),
        .I3(\row_buf[0][11]_i_3_n_0 ),
        .I4(spr_data_vdp_dout[75]),
        .I5(\row_buf[6][10]_i_3_n_0 ),
        .O(\row_buf[6][10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \row_buf[6][10]_i_2 
       (.I0(spr_data_vdp_dout__0[51]),
        .I1(spr_data_vdp_dout__0[49]),
        .I2(\row_buf[6][11]_i_4_n_0 ),
        .O(\row_buf[6][10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \row_buf[6][10]_i_3 
       (.I0(spr_data_vdp_dout[73]),
        .I1(spr_att_vdp_dout__0[48]),
        .I2(spr_data_vdp_dout[76]),
        .I3(spr_data_vdp_dout[77]),
        .I4(spr_data_vdp_dout[78]),
        .I5(spr_data_vdp_dout[79]),
        .O(\row_buf[6][10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEAFAEAEAC000C0C0)) 
    \row_buf[6][11]_i_1 
       (.I0(state[5]),
        .I1(\row_buf[6][11]_i_2_n_0 ),
        .I2(state[3]),
        .I3(spr_att_vdp_dout__0[52]),
        .I4(spr_att_vdp_dout__0[50]),
        .I5(\row_buf[6][11]_i_3_n_0 ),
        .O(\row_buf[6][11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'hA2228880)) 
    \row_buf[6][11]_i_2 
       (.I0(\row_buf[6][11]_i_4_n_0 ),
        .I1(spr_data_vdp_dout__0[51]),
        .I2(spr_data_vdp_dout__0[50]),
        .I3(spr_data_vdp_dout__0[48]),
        .I4(spr_data_vdp_dout__0[49]),
        .O(\row_buf[6][11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h0000D5A8)) 
    \row_buf[6][11]_i_3 
       (.I0(spr_data_vdp_dout[75]),
        .I1(spr_data_vdp_dout[72]),
        .I2(spr_data_vdp_dout[74]),
        .I3(spr_data_vdp_dout[73]),
        .I4(\row_buf[6][11]_i_5_n_0 ),
        .O(\row_buf[6][11]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \row_buf[6][11]_i_4 
       (.I0(spr_att_vdp_dout__0[48]),
        .I1(spr_data_vdp_dout__0[55]),
        .I2(spr_data_vdp_dout__0[54]),
        .I3(spr_data_vdp_dout__0[53]),
        .I4(spr_data_vdp_dout__0[52]),
        .O(\row_buf[6][11]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \row_buf[6][11]_i_5 
       (.I0(spr_data_vdp_dout[79]),
        .I1(spr_data_vdp_dout[78]),
        .I2(spr_data_vdp_dout[77]),
        .I3(spr_data_vdp_dout[76]),
        .I4(spr_att_vdp_dout__0[48]),
        .O(\row_buf[6][11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF888FA00F888F888)) 
    \row_buf[6][12]_i_1 
       (.I0(state[3]),
        .I1(\row_buf[6][15]_i_2_n_0 ),
        .I2(state[5]),
        .I3(\row_buf[6][12]_i_2_n_0 ),
        .I4(spr_att_vdp_dout__0[52]),
        .I5(spr_att_vdp_dout__0[50]),
        .O(\row_buf[6][12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5555555555555554)) 
    \row_buf[6][12]_i_2 
       (.I0(spr_att_vdp_dout__0[48]),
        .I1(\row_buf[6][12]_i_3_n_0 ),
        .I2(spr_data_vdp_dout[73]),
        .I3(spr_data_vdp_dout[75]),
        .I4(spr_data_vdp_dout[76]),
        .I5(\row_buf[6][12]_i_4_n_0 ),
        .O(\row_buf[6][12]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \row_buf[6][12]_i_3 
       (.I0(spr_data_vdp_dout[77]),
        .I1(spr_data_vdp_dout[78]),
        .I2(spr_data_vdp_dout[79]),
        .O(\row_buf[6][12]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \row_buf[6][12]_i_4 
       (.I0(spr_data_vdp_dout[74]),
        .I1(spr_data_vdp_dout[72]),
        .O(\row_buf[6][12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF888FA00F888F888)) 
    \row_buf[6][15]_i_1 
       (.I0(state[3]),
        .I1(\row_buf[6][15]_i_2_n_0 ),
        .I2(state[5]),
        .I3(\row_buf[6][15]_i_3_n_0 ),
        .I4(spr_att_vdp_dout__0[52]),
        .I5(spr_att_vdp_dout__0[50]),
        .O(\row_buf[6][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00FF00FF00FF00FE)) 
    \row_buf[6][15]_i_2 
       (.I0(spr_data_vdp_dout__0[51]),
        .I1(\row_buf[6][15]_i_4_n_0 ),
        .I2(\row_buf[6][15]_i_5_n_0 ),
        .I3(spr_att_vdp_dout__0[48]),
        .I4(spr_data_vdp_dout__0[55]),
        .I5(spr_data_vdp_dout__0[48]),
        .O(\row_buf[6][15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \row_buf[6][15]_i_3 
       (.I0(spr_att_vdp_dout__0[48]),
        .I1(spr_data_vdp_dout[74]),
        .I2(spr_data_vdp_dout[72]),
        .I3(spr_data_vdp_dout[76]),
        .I4(\row_buf[6][15]_i_6_n_0 ),
        .I5(\row_buf[6][12]_i_2_n_0 ),
        .O(\row_buf[6][15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \row_buf[6][15]_i_4 
       (.I0(spr_data_vdp_dout__0[50]),
        .I1(spr_data_vdp_dout__0[49]),
        .O(\row_buf[6][15]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \row_buf[6][15]_i_5 
       (.I0(spr_data_vdp_dout__0[52]),
        .I1(spr_data_vdp_dout__0[53]),
        .I2(spr_data_vdp_dout__0[54]),
        .O(\row_buf[6][15]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \row_buf[6][15]_i_6 
       (.I0(spr_data_vdp_dout[73]),
        .I1(spr_data_vdp_dout[78]),
        .I2(spr_data_vdp_dout[77]),
        .I3(spr_data_vdp_dout[75]),
        .I4(spr_data_vdp_dout[79]),
        .O(\row_buf[6][15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hEAFAEAEAC000C0C0)) 
    \row_buf[6][2]_i_1 
       (.I0(state[5]),
        .I1(\row_buf[6][2]_i_2_n_0 ),
        .I2(state[3]),
        .I3(spr_att_vdp_dout__0[52]),
        .I4(spr_att_vdp_dout__0[50]),
        .I5(\row_buf[6][2]_i_3_n_0 ),
        .O(\row_buf[6][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h50060000)) 
    \row_buf[6][2]_i_2 
       (.I0(spr_data_vdp_dout__0[51]),
        .I1(spr_data_vdp_dout__0[49]),
        .I2(spr_data_vdp_dout__0[50]),
        .I3(spr_data_vdp_dout__0[48]),
        .I4(\row_buf[6][11]_i_4_n_0 ),
        .O(\row_buf[6][2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h00410042)) 
    \row_buf[6][2]_i_3 
       (.I0(spr_data_vdp_dout[75]),
        .I1(spr_data_vdp_dout[74]),
        .I2(spr_data_vdp_dout[72]),
        .I3(\row_buf[6][11]_i_5_n_0 ),
        .I4(spr_data_vdp_dout[73]),
        .O(\row_buf[6][2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEAFAEAEAC000C0C0)) 
    \row_buf[6][3]_i_1 
       (.I0(state[5]),
        .I1(\row_buf[6][3]_i_2_n_0 ),
        .I2(state[3]),
        .I3(spr_att_vdp_dout__0[52]),
        .I4(spr_att_vdp_dout__0[50]),
        .I5(\row_buf[6][3]_i_3_n_0 ),
        .O(\row_buf[6][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'hA882A008)) 
    \row_buf[6][3]_i_2 
       (.I0(\row_buf[6][11]_i_4_n_0 ),
        .I1(spr_data_vdp_dout__0[51]),
        .I2(spr_data_vdp_dout__0[50]),
        .I3(spr_data_vdp_dout__0[48]),
        .I4(spr_data_vdp_dout__0[49]),
        .O(\row_buf[6][3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h54504104)) 
    \row_buf[6][3]_i_3 
       (.I0(\row_buf[6][11]_i_5_n_0 ),
        .I1(spr_data_vdp_dout[75]),
        .I2(spr_data_vdp_dout[74]),
        .I3(spr_data_vdp_dout[73]),
        .I4(spr_data_vdp_dout[72]),
        .O(\row_buf[6][3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEAFAEAEAC000C0C0)) 
    \row_buf[6][6]_i_1 
       (.I0(state[5]),
        .I1(\row_buf[6][6]_i_2_n_0 ),
        .I2(state[3]),
        .I3(spr_att_vdp_dout__0[52]),
        .I4(spr_att_vdp_dout__0[50]),
        .I5(\row_buf[6][6]_i_3_n_0 ),
        .O(\row_buf[6][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'h02020208)) 
    \row_buf[6][6]_i_2 
       (.I0(\row_buf[6][11]_i_4_n_0 ),
        .I1(spr_data_vdp_dout__0[51]),
        .I2(spr_data_vdp_dout__0[48]),
        .I3(spr_data_vdp_dout__0[49]),
        .I4(spr_data_vdp_dout__0[50]),
        .O(\row_buf[6][6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h00110014)) 
    \row_buf[6][6]_i_3 
       (.I0(\row_buf[6][11]_i_5_n_0 ),
        .I1(spr_data_vdp_dout[75]),
        .I2(spr_data_vdp_dout[73]),
        .I3(spr_data_vdp_dout[72]),
        .I4(spr_data_vdp_dout[74]),
        .O(\row_buf[6][6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEAFAEAEAC000C0C0)) 
    \row_buf[6][7]_i_1 
       (.I0(state[5]),
        .I1(\row_buf[6][7]_i_2_n_0 ),
        .I2(state[3]),
        .I3(spr_att_vdp_dout__0[52]),
        .I4(spr_att_vdp_dout__0[50]),
        .I5(\row_buf[6][7]_i_3_n_0 ),
        .O(\row_buf[6][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'h8000AAA8)) 
    \row_buf[6][7]_i_2 
       (.I0(\row_buf[6][11]_i_4_n_0 ),
        .I1(spr_data_vdp_dout__0[51]),
        .I2(spr_data_vdp_dout__0[50]),
        .I3(spr_data_vdp_dout__0[49]),
        .I4(spr_data_vdp_dout__0[48]),
        .O(\row_buf[6][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h0D050504)) 
    \row_buf[6][7]_i_3 
       (.I0(spr_data_vdp_dout[72]),
        .I1(spr_data_vdp_dout[75]),
        .I2(\row_buf[6][11]_i_5_n_0 ),
        .I3(spr_data_vdp_dout[73]),
        .I4(spr_data_vdp_dout[74]),
        .O(\row_buf[6][7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAAEAA00000C00)) 
    \row_buf[7][10]_i_1 
       (.I0(state[5]),
        .I1(\row_buf[7][10]_i_2_n_0 ),
        .I2(spr_data_vdp_dout[59]),
        .I3(state[3]),
        .I4(\row_buf[0][11]_i_3_n_0 ),
        .I5(\row_buf[7][10]_i_3_n_0 ),
        .O(\row_buf[7][10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \row_buf[7][10]_i_2 
       (.I0(spr_data_vdp_dout[57]),
        .I1(spr_att_vdp_dout__0[48]),
        .I2(spr_data_vdp_dout[60]),
        .I3(spr_data_vdp_dout[61]),
        .I4(spr_data_vdp_dout[62]),
        .I5(spr_data_vdp_dout[63]),
        .O(\row_buf[7][10]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \row_buf[7][10]_i_3 
       (.I0(\row_buf[8][10]_i_3_n_0 ),
        .I1(spr_data_vdp_dout[67]),
        .O(\row_buf[7][10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEAFAEAEAC000C0C0)) 
    \row_buf[7][11]_i_1 
       (.I0(state[5]),
        .I1(\row_buf[7][11]_i_2_n_0 ),
        .I2(state[3]),
        .I3(spr_att_vdp_dout__0[52]),
        .I4(spr_att_vdp_dout__0[50]),
        .I5(\row_buf[7][11]_i_3_n_0 ),
        .O(\row_buf[7][11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h0E060602)) 
    \row_buf[7][11]_i_2 
       (.I0(spr_data_vdp_dout[57]),
        .I1(spr_data_vdp_dout[59]),
        .I2(\row_buf[7][11]_i_4_n_0 ),
        .I3(spr_data_vdp_dout[58]),
        .I4(spr_data_vdp_dout[56]),
        .O(\row_buf[7][11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h00008FE0)) 
    \row_buf[7][11]_i_3 
       (.I0(spr_data_vdp_dout[64]),
        .I1(spr_data_vdp_dout[66]),
        .I2(spr_data_vdp_dout[67]),
        .I3(spr_data_vdp_dout[65]),
        .I4(\row_buf[7][11]_i_5_n_0 ),
        .O(\row_buf[7][11]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \row_buf[7][11]_i_4 
       (.I0(spr_data_vdp_dout[63]),
        .I1(spr_data_vdp_dout[62]),
        .I2(spr_data_vdp_dout[61]),
        .I3(spr_data_vdp_dout[60]),
        .I4(spr_att_vdp_dout__0[48]),
        .O(\row_buf[7][11]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \row_buf[7][11]_i_5 
       (.I0(spr_data_vdp_dout[71]),
        .I1(spr_data_vdp_dout[70]),
        .I2(spr_data_vdp_dout[69]),
        .I3(spr_data_vdp_dout[68]),
        .I4(spr_att_vdp_dout__0[48]),
        .O(\row_buf[7][11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEAFAEAEAC000C0C0)) 
    \row_buf[7][12]_i_1 
       (.I0(state[5]),
        .I1(\row_buf[7][12]_i_2_n_0 ),
        .I2(state[3]),
        .I3(spr_att_vdp_dout__0[52]),
        .I4(spr_att_vdp_dout__0[50]),
        .I5(\row_buf[7][12]_i_3_n_0 ),
        .O(\row_buf[7][12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5555555555555554)) 
    \row_buf[7][12]_i_2 
       (.I0(spr_att_vdp_dout__0[48]),
        .I1(\row_buf[7][12]_i_4_n_0 ),
        .I2(spr_data_vdp_dout[57]),
        .I3(spr_data_vdp_dout[59]),
        .I4(spr_data_vdp_dout[60]),
        .I5(\row_buf[7][12]_i_5_n_0 ),
        .O(\row_buf[7][12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5555555555555554)) 
    \row_buf[7][12]_i_3 
       (.I0(spr_att_vdp_dout__0[48]),
        .I1(\row_buf[7][12]_i_6_n_0 ),
        .I2(spr_data_vdp_dout[65]),
        .I3(spr_data_vdp_dout[67]),
        .I4(spr_data_vdp_dout[68]),
        .I5(\row_buf[7][12]_i_7_n_0 ),
        .O(\row_buf[7][12]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \row_buf[7][12]_i_4 
       (.I0(spr_data_vdp_dout[61]),
        .I1(spr_data_vdp_dout[62]),
        .I2(spr_data_vdp_dout[63]),
        .O(\row_buf[7][12]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \row_buf[7][12]_i_5 
       (.I0(spr_data_vdp_dout[58]),
        .I1(spr_data_vdp_dout[56]),
        .O(\row_buf[7][12]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \row_buf[7][12]_i_6 
       (.I0(spr_data_vdp_dout[69]),
        .I1(spr_data_vdp_dout[70]),
        .I2(spr_data_vdp_dout[71]),
        .O(\row_buf[7][12]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \row_buf[7][12]_i_7 
       (.I0(spr_data_vdp_dout[66]),
        .I1(spr_data_vdp_dout[64]),
        .O(\row_buf[7][12]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hEAFAEAEAC000C0C0)) 
    \row_buf[7][15]_i_1 
       (.I0(state[5]),
        .I1(\row_buf[7][15]_i_2_n_0 ),
        .I2(state[3]),
        .I3(spr_att_vdp_dout__0[52]),
        .I4(spr_att_vdp_dout__0[50]),
        .I5(\row_buf[7][15]_i_3_n_0 ),
        .O(\row_buf[7][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \row_buf[7][15]_i_2 
       (.I0(spr_att_vdp_dout__0[48]),
        .I1(spr_data_vdp_dout[58]),
        .I2(spr_data_vdp_dout[56]),
        .I3(spr_data_vdp_dout[60]),
        .I4(\row_buf[7][15]_i_4_n_0 ),
        .I5(\row_buf[7][12]_i_2_n_0 ),
        .O(\row_buf[7][15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000001)) 
    \row_buf[7][15]_i_3 
       (.I0(spr_att_vdp_dout__0[48]),
        .I1(spr_data_vdp_dout[66]),
        .I2(spr_data_vdp_dout[64]),
        .I3(spr_data_vdp_dout[68]),
        .I4(\row_buf[7][15]_i_5_n_0 ),
        .I5(\row_buf[7][12]_i_3_n_0 ),
        .O(\row_buf[7][15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \row_buf[7][15]_i_4 
       (.I0(spr_data_vdp_dout[57]),
        .I1(spr_data_vdp_dout[62]),
        .I2(spr_data_vdp_dout[61]),
        .I3(spr_data_vdp_dout[59]),
        .I4(spr_data_vdp_dout[63]),
        .O(\row_buf[7][15]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \row_buf[7][15]_i_5 
       (.I0(spr_data_vdp_dout[65]),
        .I1(spr_data_vdp_dout[70]),
        .I2(spr_data_vdp_dout[69]),
        .I3(spr_data_vdp_dout[67]),
        .I4(spr_data_vdp_dout[71]),
        .O(\row_buf[7][15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hEAFAEAEAC000C0C0)) 
    \row_buf[7][2]_i_1 
       (.I0(state[5]),
        .I1(\row_buf[7][2]_i_2_n_0 ),
        .I2(state[3]),
        .I3(spr_att_vdp_dout__0[52]),
        .I4(spr_att_vdp_dout__0[50]),
        .I5(\row_buf[7][2]_i_3_n_0 ),
        .O(\row_buf[7][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h00410042)) 
    \row_buf[7][2]_i_2 
       (.I0(spr_data_vdp_dout[59]),
        .I1(spr_data_vdp_dout[58]),
        .I2(spr_data_vdp_dout[56]),
        .I3(\row_buf[7][11]_i_4_n_0 ),
        .I4(spr_data_vdp_dout[57]),
        .O(\row_buf[7][2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h00410042)) 
    \row_buf[7][2]_i_3 
       (.I0(spr_data_vdp_dout[67]),
        .I1(spr_data_vdp_dout[66]),
        .I2(spr_data_vdp_dout[64]),
        .I3(\row_buf[7][11]_i_5_n_0 ),
        .I4(spr_data_vdp_dout[65]),
        .O(\row_buf[7][2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEAFAEAEAC000C0C0)) 
    \row_buf[7][3]_i_1 
       (.I0(state[5]),
        .I1(\row_buf[7][3]_i_2_n_0 ),
        .I2(state[3]),
        .I3(spr_att_vdp_dout__0[52]),
        .I4(spr_att_vdp_dout__0[50]),
        .I5(\row_buf[7][3]_i_3_n_0 ),
        .O(\row_buf[7][3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h54504104)) 
    \row_buf[7][3]_i_2 
       (.I0(\row_buf[7][11]_i_4_n_0 ),
        .I1(spr_data_vdp_dout[59]),
        .I2(spr_data_vdp_dout[58]),
        .I3(spr_data_vdp_dout[57]),
        .I4(spr_data_vdp_dout[56]),
        .O(\row_buf[7][3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h0000F886)) 
    \row_buf[7][3]_i_3 
       (.I0(spr_data_vdp_dout[67]),
        .I1(spr_data_vdp_dout[65]),
        .I2(spr_data_vdp_dout[66]),
        .I3(spr_data_vdp_dout[64]),
        .I4(\row_buf[7][11]_i_5_n_0 ),
        .O(\row_buf[7][3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEAFAEAEAC000C0C0)) 
    \row_buf[7][6]_i_1 
       (.I0(state[5]),
        .I1(\row_buf[7][6]_i_2_n_0 ),
        .I2(state[3]),
        .I3(spr_att_vdp_dout__0[52]),
        .I4(spr_att_vdp_dout__0[50]),
        .I5(\row_buf[7][6]_i_3_n_0 ),
        .O(\row_buf[7][6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h00110014)) 
    \row_buf[7][6]_i_2 
       (.I0(\row_buf[7][11]_i_4_n_0 ),
        .I1(spr_data_vdp_dout[59]),
        .I2(spr_data_vdp_dout[57]),
        .I3(spr_data_vdp_dout[56]),
        .I4(spr_data_vdp_dout[58]),
        .O(\row_buf[7][6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h00110014)) 
    \row_buf[7][6]_i_3 
       (.I0(spr_data_vdp_dout[64]),
        .I1(spr_data_vdp_dout[67]),
        .I2(spr_data_vdp_dout[65]),
        .I3(\row_buf[7][11]_i_5_n_0 ),
        .I4(spr_data_vdp_dout[66]),
        .O(\row_buf[7][6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEAFAEAEAC000C0C0)) 
    \row_buf[7][7]_i_1 
       (.I0(state[5]),
        .I1(\row_buf[7][7]_i_2_n_0 ),
        .I2(state[3]),
        .I3(spr_att_vdp_dout__0[52]),
        .I4(spr_att_vdp_dout__0[50]),
        .I5(\row_buf[7][7]_i_3_n_0 ),
        .O(\row_buf[7][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h0D050504)) 
    \row_buf[7][7]_i_2 
       (.I0(spr_data_vdp_dout[56]),
        .I1(spr_data_vdp_dout[59]),
        .I2(\row_buf[7][11]_i_4_n_0 ),
        .I3(spr_data_vdp_dout[57]),
        .I4(spr_data_vdp_dout[58]),
        .O(\row_buf[7][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h00D50054)) 
    \row_buf[7][7]_i_3 
       (.I0(spr_data_vdp_dout[64]),
        .I1(spr_data_vdp_dout[67]),
        .I2(spr_data_vdp_dout[66]),
        .I3(\row_buf[7][11]_i_5_n_0 ),
        .I4(spr_data_vdp_dout[65]),
        .O(\row_buf[7][7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hE0A0E0A0E0ECE0A0)) 
    \row_buf[8][10]_i_1 
       (.I0(state[5]),
        .I1(state[3]),
        .I2(\row_buf[8][10]_i_2_n_0 ),
        .I3(spr_att_vdp_dout__0[50]),
        .I4(\row_buf[8][10]_i_3_n_0 ),
        .I5(spr_data_vdp_dout[67]),
        .O(\row_buf[8][10]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \row_buf[8][10]_i_2 
       (.I0(\row_buf[7][10]_i_2_n_0 ),
        .I1(spr_data_vdp_dout[59]),
        .O(\row_buf[8][10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \row_buf[8][10]_i_3 
       (.I0(spr_data_vdp_dout[65]),
        .I1(spr_att_vdp_dout__0[48]),
        .I2(spr_data_vdp_dout[68]),
        .I3(spr_data_vdp_dout[69]),
        .I4(spr_data_vdp_dout[70]),
        .I5(spr_data_vdp_dout[71]),
        .O(\row_buf[8][10]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hE0ECE0A0)) 
    \row_buf[8][11]_i_1 
       (.I0(state[5]),
        .I1(state[3]),
        .I2(\row_buf[7][11]_i_2_n_0 ),
        .I3(spr_att_vdp_dout__0[50]),
        .I4(\row_buf[7][11]_i_3_n_0 ),
        .O(\row_buf[8][11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hE0ECE0A0)) 
    \row_buf[8][12]_i_1 
       (.I0(state[5]),
        .I1(state[3]),
        .I2(\row_buf[7][12]_i_2_n_0 ),
        .I3(spr_att_vdp_dout__0[50]),
        .I4(\row_buf[7][12]_i_3_n_0 ),
        .O(\row_buf[8][12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hE0ECE0A0)) 
    \row_buf[8][15]_i_1 
       (.I0(state[5]),
        .I1(state[3]),
        .I2(\row_buf[7][15]_i_2_n_0 ),
        .I3(spr_att_vdp_dout__0[50]),
        .I4(\row_buf[7][15]_i_3_n_0 ),
        .O(\row_buf[8][15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hE0ECE0A0)) 
    \row_buf[8][2]_i_1 
       (.I0(state[5]),
        .I1(state[3]),
        .I2(\row_buf[7][2]_i_2_n_0 ),
        .I3(spr_att_vdp_dout__0[50]),
        .I4(\row_buf[7][2]_i_3_n_0 ),
        .O(\row_buf[8][2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hE0ECE0A0)) 
    \row_buf[8][3]_i_1 
       (.I0(state[5]),
        .I1(state[3]),
        .I2(\row_buf[7][3]_i_2_n_0 ),
        .I3(spr_att_vdp_dout__0[50]),
        .I4(\row_buf[7][3]_i_3_n_0 ),
        .O(\row_buf[8][3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hE0ECE0A0)) 
    \row_buf[8][6]_i_1 
       (.I0(state[5]),
        .I1(state[3]),
        .I2(\row_buf[7][6]_i_2_n_0 ),
        .I3(spr_att_vdp_dout__0[50]),
        .I4(\row_buf[7][6]_i_3_n_0 ),
        .O(\row_buf[8][6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hE0ECE0A0)) 
    \row_buf[8][7]_i_1 
       (.I0(state[5]),
        .I1(state[3]),
        .I2(\row_buf[7][7]_i_2_n_0 ),
        .I3(spr_att_vdp_dout__0[50]),
        .I4(\row_buf[7][7]_i_3_n_0 ),
        .O(\row_buf[8][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE0A0E0ECE0A0E0A0)) 
    \row_buf[9][10]_i_1 
       (.I0(state[5]),
        .I1(state[3]),
        .I2(\row_buf[6][10]_i_2_n_0 ),
        .I3(spr_att_vdp_dout__0[50]),
        .I4(spr_data_vdp_dout[75]),
        .I5(\row_buf[6][10]_i_3_n_0 ),
        .O(\row_buf[9][10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hE0ECE0A0)) 
    \row_buf[9][11]_i_1 
       (.I0(state[5]),
        .I1(state[3]),
        .I2(\row_buf[6][11]_i_2_n_0 ),
        .I3(spr_att_vdp_dout__0[50]),
        .I4(\row_buf[6][11]_i_3_n_0 ),
        .O(\row_buf[9][11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFA00F888)) 
    \row_buf[9][12]_i_1 
       (.I0(state[3]),
        .I1(\row_buf[6][12]_i_2_n_0 ),
        .I2(state[5]),
        .I3(\row_buf[6][15]_i_2_n_0 ),
        .I4(spr_att_vdp_dout__0[50]),
        .O(\row_buf[9][12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFECE0A0A)) 
    \row_buf[9][15]_i_1 
       (.I0(\row_buf[9][15]_i_2_n_0 ),
        .I1(state[5]),
        .I2(spr_att_vdp_dout__0[50]),
        .I3(state[3]),
        .I4(\row_buf[6][15]_i_2_n_0 ),
        .O(\row_buf[9][15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h888888808888888A)) 
    \row_buf[9][15]_i_2 
       (.I0(state[3]),
        .I1(\row_buf[6][12]_i_2_n_0 ),
        .I2(\row_buf[6][15]_i_6_n_0 ),
        .I3(spr_data_vdp_dout[76]),
        .I4(\row_buf[6][12]_i_4_n_0 ),
        .I5(spr_att_vdp_dout__0[48]),
        .O(\row_buf[9][15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hE0ECE0A0)) 
    \row_buf[9][2]_i_1 
       (.I0(state[5]),
        .I1(state[3]),
        .I2(\row_buf[6][2]_i_2_n_0 ),
        .I3(spr_att_vdp_dout__0[50]),
        .I4(\row_buf[6][2]_i_3_n_0 ),
        .O(\row_buf[9][2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hE0ECE0A0)) 
    \row_buf[9][3]_i_1 
       (.I0(state[5]),
        .I1(state[3]),
        .I2(\row_buf[6][3]_i_2_n_0 ),
        .I3(spr_att_vdp_dout__0[50]),
        .I4(\row_buf[6][3]_i_3_n_0 ),
        .O(\row_buf[9][3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hE0ECE0A0)) 
    \row_buf[9][6]_i_1 
       (.I0(state[5]),
        .I1(state[3]),
        .I2(\row_buf[6][6]_i_2_n_0 ),
        .I3(spr_att_vdp_dout__0[50]),
        .I4(\row_buf[6][6]_i_3_n_0 ),
        .O(\row_buf[9][6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hE0ECE0A0)) 
    \row_buf[9][7]_i_1 
       (.I0(state[5]),
        .I1(state[3]),
        .I2(\row_buf[6][7]_i_2_n_0 ),
        .I3(spr_att_vdp_dout__0[50]),
        .I4(\row_buf[6][7]_i_3_n_0 ),
        .O(\row_buf[9][7]_i_1_n_0 ));
  FDRE \row_buf_reg[0][10] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[0][10]_i_1_n_0 ),
        .Q(\row_buf_reg_n_0_[0][10] ),
        .R(1'b0));
  FDRE \row_buf_reg[0][11] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[0][11]_i_1_n_0 ),
        .Q(\row_buf_reg_n_0_[0][11] ),
        .R(1'b0));
  FDRE \row_buf_reg[0][12] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[0][12]_i_2_n_0 ),
        .Q(\row_buf_reg_n_0_[0][12] ),
        .R(1'b0));
  FDRE \row_buf_reg[0][2] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[0][2]_i_1_n_0 ),
        .Q(\row_buf_reg_n_0_[0][2] ),
        .R(1'b0));
  FDRE \row_buf_reg[0][3] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[0][3]_i_1_n_0 ),
        .Q(\row_buf_reg_n_0_[0][3] ),
        .R(1'b0));
  FDRE \row_buf_reg[0][6] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[0][6]_i_1_n_0 ),
        .Q(\row_buf_reg_n_0_[0][6] ),
        .R(1'b0));
  FDRE \row_buf_reg[0][7] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[0][7]_i_1_n_0 ),
        .Q(\row_buf_reg_n_0_[0][7] ),
        .R(1'b0));
  FDRE \row_buf_reg[10][10] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[10][10]_i_1_n_0 ),
        .Q(\row_buf_reg[10]_2 [10]),
        .R(1'b0));
  FDRE \row_buf_reg[10][11] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[10][11]_i_1_n_0 ),
        .Q(\row_buf_reg[10]_2 [11]),
        .R(1'b0));
  FDRE \row_buf_reg[10][12] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[10][12]_i_1_n_0 ),
        .Q(\row_buf_reg[10]_2 [12]),
        .R(1'b0));
  FDRE \row_buf_reg[10][2] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[10][2]_i_1_n_0 ),
        .Q(\row_buf_reg[10]_2 [2]),
        .R(1'b0));
  FDRE \row_buf_reg[10][3] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[10][3]_i_1_n_0 ),
        .Q(\row_buf_reg[10]_2 [3]),
        .R(1'b0));
  FDRE \row_buf_reg[10][6] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[10][6]_i_1_n_0 ),
        .Q(\row_buf_reg[10]_2 [6]),
        .R(1'b0));
  FDRE \row_buf_reg[10][7] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[10][7]_i_1_n_0 ),
        .Q(\row_buf_reg[10]_2 [7]),
        .R(1'b0));
  FDRE \row_buf_reg[11][10] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[11][10]_i_1_n_0 ),
        .Q(\row_buf_reg[11]_3 [10]),
        .R(1'b0));
  FDRE \row_buf_reg[11][11] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[11][11]_i_1_n_0 ),
        .Q(\row_buf_reg[11]_3 [11]),
        .R(1'b0));
  FDRE \row_buf_reg[11][12] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[11][12]_i_1_n_0 ),
        .Q(\row_buf_reg[11]_3 [12]),
        .R(1'b0));
  FDRE \row_buf_reg[11][15] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[11][15]_i_1_n_0 ),
        .Q(\row_buf_reg[11]_3 [15]),
        .R(1'b0));
  FDRE \row_buf_reg[11][2] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[11][2]_i_1_n_0 ),
        .Q(\row_buf_reg[11]_3 [2]),
        .R(1'b0));
  FDRE \row_buf_reg[11][3] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[11][3]_i_1_n_0 ),
        .Q(\row_buf_reg[11]_3 [3]),
        .R(1'b0));
  FDRE \row_buf_reg[11][6] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[11][6]_i_1_n_0 ),
        .Q(\row_buf_reg[11]_3 [6]),
        .R(1'b0));
  FDRE \row_buf_reg[11][7] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[11][7]_i_1_n_0 ),
        .Q(\row_buf_reg[11]_3 [7]),
        .R(1'b0));
  FDRE \row_buf_reg[12][10] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[12][10]_i_1_n_0 ),
        .Q(\row_buf_reg[12]_4 [10]),
        .R(1'b0));
  FDRE \row_buf_reg[12][11] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[12][11]_i_1_n_0 ),
        .Q(\row_buf_reg[12]_4 [11]),
        .R(1'b0));
  FDRE \row_buf_reg[12][12] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[12][12]_i_1_n_0 ),
        .Q(\row_buf_reg[12]_4 [12]),
        .R(1'b0));
  FDRE \row_buf_reg[12][15] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[12][15]_i_1_n_0 ),
        .Q(\row_buf_reg[12]_4 [15]),
        .R(1'b0));
  FDRE \row_buf_reg[12][2] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[12][2]_i_1_n_0 ),
        .Q(\row_buf_reg[12]_4 [2]),
        .R(1'b0));
  FDRE \row_buf_reg[12][3] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[12][3]_i_1_n_0 ),
        .Q(\row_buf_reg[12]_4 [3]),
        .R(1'b0));
  FDRE \row_buf_reg[12][6] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[12][6]_i_1_n_0 ),
        .Q(\row_buf_reg[12]_4 [6]),
        .R(1'b0));
  FDRE \row_buf_reg[12][7] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[12][7]_i_1_n_0 ),
        .Q(\row_buf_reg[12]_4 [7]),
        .R(1'b0));
  FDRE \row_buf_reg[13][10] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[13][10]_i_1_n_0 ),
        .Q(\row_buf_reg[13]_5 [10]),
        .R(1'b0));
  FDRE \row_buf_reg[13][11] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[13][11]_i_1_n_0 ),
        .Q(\row_buf_reg[13]_5 [11]),
        .R(1'b0));
  FDRE \row_buf_reg[13][12] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[13][12]_i_1_n_0 ),
        .Q(\row_buf_reg[13]_5 [12]),
        .R(1'b0));
  FDRE \row_buf_reg[13][2] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[13][2]_i_1_n_0 ),
        .Q(\row_buf_reg[13]_5 [2]),
        .R(1'b0));
  FDRE \row_buf_reg[13][3] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[13][3]_i_1_n_0 ),
        .Q(\row_buf_reg[13]_5 [3]),
        .R(1'b0));
  FDRE \row_buf_reg[13][6] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[13][6]_i_1_n_0 ),
        .Q(\row_buf_reg[13]_5 [6]),
        .R(1'b0));
  FDRE \row_buf_reg[13][7] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[13][7]_i_1_n_0 ),
        .Q(\row_buf_reg[13]_5 [7]),
        .R(1'b0));
  FDRE \row_buf_reg[14][10] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[14][10]_i_1_n_0 ),
        .Q(\row_buf_reg[14]_6 [10]),
        .R(1'b0));
  FDRE \row_buf_reg[14][11] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[14][11]_i_1_n_0 ),
        .Q(\row_buf_reg[14]_6 [11]),
        .R(1'b0));
  FDRE \row_buf_reg[14][12] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[14][12]_i_1_n_0 ),
        .Q(\row_buf_reg[14]_6 [12]),
        .R(1'b0));
  FDRE \row_buf_reg[14][15] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[14][15]_i_1_n_0 ),
        .Q(\row_buf_reg[14]_6 [15]),
        .R(1'b0));
  FDRE \row_buf_reg[14][2] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[14][2]_i_1_n_0 ),
        .Q(\row_buf_reg[14]_6 [2]),
        .R(1'b0));
  FDRE \row_buf_reg[14][3] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[14][3]_i_1_n_0 ),
        .Q(\row_buf_reg[14]_6 [3]),
        .R(1'b0));
  FDRE \row_buf_reg[14][6] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[14][6]_i_1_n_0 ),
        .Q(\row_buf_reg[14]_6 [6]),
        .R(1'b0));
  FDRE \row_buf_reg[14][7] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[14][7]_i_1_n_0 ),
        .Q(\row_buf_reg[14]_6 [7]),
        .R(1'b0));
  FDRE \row_buf_reg[15][10] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[15][10]_i_1_n_0 ),
        .Q(\row_buf_reg[15]_7 [10]),
        .R(1'b0));
  FDRE \row_buf_reg[15][11] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[15][11]_i_1_n_0 ),
        .Q(\row_buf_reg[15]_7 [11]),
        .R(1'b0));
  FDRE \row_buf_reg[15][12] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[15][12]_i_1_n_0 ),
        .Q(\row_buf_reg[15]_7 [12]),
        .R(1'b0));
  FDRE \row_buf_reg[15][15] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[15][15]_i_1_n_0 ),
        .Q(\row_buf_reg[15]_7 [15]),
        .R(1'b0));
  FDRE \row_buf_reg[15][2] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[15][2]_i_1_n_0 ),
        .Q(\row_buf_reg[15]_7 [2]),
        .R(1'b0));
  FDRE \row_buf_reg[15][3] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[15][3]_i_1_n_0 ),
        .Q(\row_buf_reg[15]_7 [3]),
        .R(1'b0));
  FDRE \row_buf_reg[15][6] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[15][6]_i_1_n_0 ),
        .Q(\row_buf_reg[15]_7 [6]),
        .R(1'b0));
  FDRE \row_buf_reg[15][7] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[15][7]_i_1_n_0 ),
        .Q(\row_buf_reg[15]_7 [7]),
        .R(1'b0));
  FDRE \row_buf_reg[16][10] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[16][10]_i_1_n_0 ),
        .Q(\row_buf_reg[16]_8 [10]),
        .R(1'b0));
  FDRE \row_buf_reg[16][11] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[16][11]_i_1_n_0 ),
        .Q(\row_buf_reg[16]_8 [11]),
        .R(1'b0));
  FDRE \row_buf_reg[16][12] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[16][12]_i_2_n_0 ),
        .Q(\row_buf_reg[16]_8 [12]),
        .R(1'b0));
  FDRE \row_buf_reg[16][2] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[16][2]_i_1_n_0 ),
        .Q(\row_buf_reg[16]_8 [2]),
        .R(1'b0));
  FDRE \row_buf_reg[16][3] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[16][3]_i_1_n_0 ),
        .Q(\row_buf_reg[16]_8 [3]),
        .R(1'b0));
  FDRE \row_buf_reg[16][6] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[16][6]_i_1_n_0 ),
        .Q(\row_buf_reg[16]_8 [6]),
        .R(1'b0));
  FDRE \row_buf_reg[16][7] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[16][7]_i_1_n_0 ),
        .Q(\row_buf_reg[16]_8 [7]),
        .R(1'b0));
  FDRE \row_buf_reg[17][10] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[17][10]_i_1_n_0 ),
        .Q(\row_buf_reg[17]_9 [10]),
        .R(1'b0));
  FDRE \row_buf_reg[17][11] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[17][11]_i_1_n_0 ),
        .Q(\row_buf_reg[17]_9 [11]),
        .R(1'b0));
  FDRE \row_buf_reg[17][12] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[17][12]_i_1_n_0 ),
        .Q(\row_buf_reg[17]_9 [12]),
        .R(1'b0));
  FDRE \row_buf_reg[17][15] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[17][15]_i_1_n_0 ),
        .Q(\row_buf_reg[17]_9 [15]),
        .R(1'b0));
  FDRE \row_buf_reg[17][2] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[17][2]_i_1_n_0 ),
        .Q(\row_buf_reg[17]_9 [2]),
        .R(1'b0));
  FDRE \row_buf_reg[17][3] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[17][3]_i_1_n_0 ),
        .Q(\row_buf_reg[17]_9 [3]),
        .R(1'b0));
  FDRE \row_buf_reg[17][6] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[17][6]_i_1_n_0 ),
        .Q(\row_buf_reg[17]_9 [6]),
        .R(1'b0));
  FDRE \row_buf_reg[17][7] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[17][7]_i_1_n_0 ),
        .Q(\row_buf_reg[17]_9 [7]),
        .R(1'b0));
  FDRE \row_buf_reg[18][10] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[18][10]_i_1_n_0 ),
        .Q(\row_buf_reg[18]_10 [10]),
        .R(1'b0));
  FDRE \row_buf_reg[18][11] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[18][11]_i_1_n_0 ),
        .Q(\row_buf_reg[18]_10 [11]),
        .R(1'b0));
  FDRE \row_buf_reg[18][12] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[18][12]_i_1_n_0 ),
        .Q(\row_buf_reg[18]_10 [12]),
        .R(1'b0));
  FDRE \row_buf_reg[18][2] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[18][2]_i_1_n_0 ),
        .Q(\row_buf_reg[18]_10 [2]),
        .R(1'b0));
  FDRE \row_buf_reg[18][3] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[18][3]_i_1_n_0 ),
        .Q(\row_buf_reg[18]_10 [3]),
        .R(1'b0));
  FDRE \row_buf_reg[18][6] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[18][6]_i_1_n_0 ),
        .Q(\row_buf_reg[18]_10 [6]),
        .R(1'b0));
  FDRE \row_buf_reg[18][7] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[18][7]_i_1_n_0 ),
        .Q(\row_buf_reg[18]_10 [7]),
        .R(1'b0));
  FDRE \row_buf_reg[19][10] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[19][10]_i_1_n_0 ),
        .Q(\row_buf_reg[19]_11 [10]),
        .R(1'b0));
  FDRE \row_buf_reg[19][11] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[19][11]_i_1_n_0 ),
        .Q(\row_buf_reg[19]_11 [11]),
        .R(1'b0));
  FDRE \row_buf_reg[19][12] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[19][12]_i_1_n_0 ),
        .Q(\row_buf_reg[19]_11 [12]),
        .R(1'b0));
  FDRE \row_buf_reg[19][15] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[19][15]_i_1_n_0 ),
        .Q(\row_buf_reg[19]_11 [15]),
        .R(1'b0));
  FDRE \row_buf_reg[19][2] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[19][2]_i_1_n_0 ),
        .Q(\row_buf_reg[19]_11 [2]),
        .R(1'b0));
  FDRE \row_buf_reg[19][3] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[19][3]_i_1_n_0 ),
        .Q(\row_buf_reg[19]_11 [3]),
        .R(1'b0));
  FDRE \row_buf_reg[19][6] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[19][6]_i_1_n_0 ),
        .Q(\row_buf_reg[19]_11 [6]),
        .R(1'b0));
  FDRE \row_buf_reg[19][7] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[19][7]_i_1_n_0 ),
        .Q(\row_buf_reg[19]_11 [7]),
        .R(1'b0));
  FDRE \row_buf_reg[1][10] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[1][10]_i_1_n_0 ),
        .Q(\row_buf_reg_n_0_[1][10] ),
        .R(1'b0));
  FDRE \row_buf_reg[1][11] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[1][11]_i_1_n_0 ),
        .Q(\row_buf_reg_n_0_[1][11] ),
        .R(1'b0));
  FDRE \row_buf_reg[1][12] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[1][12]_i_1_n_0 ),
        .Q(\row_buf_reg_n_0_[1][12] ),
        .R(1'b0));
  FDRE \row_buf_reg[1][15] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[1][15]_i_1_n_0 ),
        .Q(\row_buf_reg_n_0_[1][15] ),
        .R(1'b0));
  FDRE \row_buf_reg[1][2] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[1][2]_i_1_n_0 ),
        .Q(\row_buf_reg_n_0_[1][2] ),
        .R(1'b0));
  FDRE \row_buf_reg[1][3] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[1][3]_i_1_n_0 ),
        .Q(\row_buf_reg_n_0_[1][3] ),
        .R(1'b0));
  FDRE \row_buf_reg[1][6] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[1][6]_i_1_n_0 ),
        .Q(\row_buf_reg_n_0_[1][6] ),
        .R(1'b0));
  FDRE \row_buf_reg[1][7] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[1][7]_i_1_n_0 ),
        .Q(\row_buf_reg_n_0_[1][7] ),
        .R(1'b0));
  FDRE \row_buf_reg[20][10] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[20][10]_i_1_n_0 ),
        .Q(\row_buf_reg[20]_12 [10]),
        .R(1'b0));
  FDRE \row_buf_reg[20][11] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[20][11]_i_1_n_0 ),
        .Q(\row_buf_reg[20]_12 [11]),
        .R(1'b0));
  FDRE \row_buf_reg[20][12] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[20][12]_i_1_n_0 ),
        .Q(\row_buf_reg[20]_12 [12]),
        .R(1'b0));
  FDRE \row_buf_reg[20][15] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[20][15]_i_1_n_0 ),
        .Q(\row_buf_reg[20]_12 [15]),
        .R(1'b0));
  FDRE \row_buf_reg[20][2] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[20][2]_i_1_n_0 ),
        .Q(\row_buf_reg[20]_12 [2]),
        .R(1'b0));
  FDRE \row_buf_reg[20][3] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[20][3]_i_1_n_0 ),
        .Q(\row_buf_reg[20]_12 [3]),
        .R(1'b0));
  FDRE \row_buf_reg[20][6] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[20][6]_i_1_n_0 ),
        .Q(\row_buf_reg[20]_12 [6]),
        .R(1'b0));
  FDRE \row_buf_reg[20][7] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[20][7]_i_1_n_0 ),
        .Q(\row_buf_reg[20]_12 [7]),
        .R(1'b0));
  FDRE \row_buf_reg[21][10] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[21][10]_i_1_n_0 ),
        .Q(\row_buf_reg[21]_13 [10]),
        .R(1'b0));
  FDRE \row_buf_reg[21][11] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[21][11]_i_1_n_0 ),
        .Q(\row_buf_reg[21]_13 [11]),
        .R(1'b0));
  FDRE \row_buf_reg[21][12] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[21][12]_i_1_n_0 ),
        .Q(\row_buf_reg[21]_13 [12]),
        .R(1'b0));
  FDRE \row_buf_reg[21][2] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[21][2]_i_1_n_0 ),
        .Q(\row_buf_reg[21]_13 [2]),
        .R(1'b0));
  FDRE \row_buf_reg[21][3] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[21][3]_i_1_n_0 ),
        .Q(\row_buf_reg[21]_13 [3]),
        .R(1'b0));
  FDRE \row_buf_reg[21][6] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[21][6]_i_1_n_0 ),
        .Q(\row_buf_reg[21]_13 [6]),
        .R(1'b0));
  FDRE \row_buf_reg[21][7] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[21][7]_i_1_n_0 ),
        .Q(\row_buf_reg[21]_13 [7]),
        .R(1'b0));
  FDRE \row_buf_reg[22][10] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[22][10]_i_1_n_0 ),
        .Q(\row_buf_reg[22]_14 [10]),
        .R(1'b0));
  FDRE \row_buf_reg[22][11] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[22][11]_i_1_n_0 ),
        .Q(\row_buf_reg[22]_14 [11]),
        .R(1'b0));
  FDRE \row_buf_reg[22][12] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[22][12]_i_1_n_0 ),
        .Q(\row_buf_reg[22]_14 [12]),
        .R(1'b0));
  FDRE \row_buf_reg[22][15] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[22][15]_i_1_n_0 ),
        .Q(\row_buf_reg[22]_14 [15]),
        .R(1'b0));
  FDRE \row_buf_reg[22][2] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[22][2]_i_1_n_0 ),
        .Q(\row_buf_reg[22]_14 [2]),
        .R(1'b0));
  FDRE \row_buf_reg[22][3] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[22][3]_i_1_n_0 ),
        .Q(\row_buf_reg[22]_14 [3]),
        .R(1'b0));
  FDRE \row_buf_reg[22][6] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[22][6]_i_1_n_0 ),
        .Q(\row_buf_reg[22]_14 [6]),
        .R(1'b0));
  FDRE \row_buf_reg[22][7] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[22][7]_i_1_n_0 ),
        .Q(\row_buf_reg[22]_14 [7]),
        .R(1'b0));
  FDRE \row_buf_reg[23][10] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[23][10]_i_1_n_0 ),
        .Q(\row_buf_reg[23]_15 [10]),
        .R(1'b0));
  FDRE \row_buf_reg[23][11] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[23][11]_i_1_n_0 ),
        .Q(\row_buf_reg[23]_15 [11]),
        .R(1'b0));
  FDRE \row_buf_reg[23][12] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[23][12]_i_1_n_0 ),
        .Q(\row_buf_reg[23]_15 [12]),
        .R(1'b0));
  FDRE \row_buf_reg[23][15] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[23][15]_i_1_n_0 ),
        .Q(\row_buf_reg[23]_15 [15]),
        .R(1'b0));
  FDRE \row_buf_reg[23][2] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[23][2]_i_1_n_0 ),
        .Q(\row_buf_reg[23]_15 [2]),
        .R(1'b0));
  FDRE \row_buf_reg[23][3] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[23][3]_i_1_n_0 ),
        .Q(\row_buf_reg[23]_15 [3]),
        .R(1'b0));
  FDRE \row_buf_reg[23][6] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[23][6]_i_1_n_0 ),
        .Q(\row_buf_reg[23]_15 [6]),
        .R(1'b0));
  FDRE \row_buf_reg[23][7] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[23][7]_i_1_n_0 ),
        .Q(\row_buf_reg[23]_15 [7]),
        .R(1'b0));
  FDRE \row_buf_reg[24][10] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[24][10]_i_1_n_0 ),
        .Q(\row_buf_reg[24]_16 [10]),
        .R(1'b0));
  FDRE \row_buf_reg[24][11] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[24][11]_i_1_n_0 ),
        .Q(\row_buf_reg[24]_16 [11]),
        .R(1'b0));
  FDRE \row_buf_reg[24][12] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[24][12]_i_1_n_0 ),
        .Q(\row_buf_reg[24]_16 [12]),
        .R(1'b0));
  FDRE \row_buf_reg[24][15] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[24][15]_i_1_n_0 ),
        .Q(\row_buf_reg[24]_16 [15]),
        .R(1'b0));
  FDRE \row_buf_reg[24][2] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[24][2]_i_1_n_0 ),
        .Q(\row_buf_reg[24]_16 [2]),
        .R(1'b0));
  FDRE \row_buf_reg[24][3] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[24][3]_i_1_n_0 ),
        .Q(\row_buf_reg[24]_16 [3]),
        .R(1'b0));
  FDRE \row_buf_reg[24][6] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[24][6]_i_1_n_0 ),
        .Q(\row_buf_reg[24]_16 [6]),
        .R(1'b0));
  FDRE \row_buf_reg[24][7] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[24][7]_i_1_n_0 ),
        .Q(\row_buf_reg[24]_16 [7]),
        .R(1'b0));
  FDRE \row_buf_reg[25][10] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[25][10]_i_1_n_0 ),
        .Q(\row_buf_reg[25]_17 [10]),
        .R(1'b0));
  FDRE \row_buf_reg[25][11] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[25][11]_i_1_n_0 ),
        .Q(\row_buf_reg[25]_17 [11]),
        .R(1'b0));
  FDRE \row_buf_reg[25][12] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[25][12]_i_1_n_0 ),
        .Q(\row_buf_reg[25]_17 [12]),
        .R(1'b0));
  FDRE \row_buf_reg[25][15] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[25][15]_i_1_n_0 ),
        .Q(\row_buf_reg[25]_17 [15]),
        .R(1'b0));
  FDRE \row_buf_reg[25][2] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[25][2]_i_1_n_0 ),
        .Q(\row_buf_reg[25]_17 [2]),
        .R(1'b0));
  FDRE \row_buf_reg[25][3] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[25][3]_i_1_n_0 ),
        .Q(\row_buf_reg[25]_17 [3]),
        .R(1'b0));
  FDRE \row_buf_reg[25][6] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[25][6]_i_1_n_0 ),
        .Q(\row_buf_reg[25]_17 [6]),
        .R(1'b0));
  FDRE \row_buf_reg[25][7] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[25][7]_i_1_n_0 ),
        .Q(\row_buf_reg[25]_17 [7]),
        .R(1'b0));
  FDRE \row_buf_reg[26][10] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[26][10]_i_1_n_0 ),
        .Q(\row_buf_reg[26]_18 [10]),
        .R(1'b0));
  FDRE \row_buf_reg[26][11] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[26][11]_i_1_n_0 ),
        .Q(\row_buf_reg[26]_18 [11]),
        .R(1'b0));
  FDRE \row_buf_reg[26][12] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[26][12]_i_1_n_0 ),
        .Q(\row_buf_reg[26]_18 [12]),
        .R(1'b0));
  FDRE \row_buf_reg[26][2] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[26][2]_i_1_n_0 ),
        .Q(\row_buf_reg[26]_18 [2]),
        .R(1'b0));
  FDRE \row_buf_reg[26][3] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[26][3]_i_1_n_0 ),
        .Q(\row_buf_reg[26]_18 [3]),
        .R(1'b0));
  FDRE \row_buf_reg[26][6] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[26][6]_i_1_n_0 ),
        .Q(\row_buf_reg[26]_18 [6]),
        .R(1'b0));
  FDRE \row_buf_reg[26][7] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[26][7]_i_1_n_0 ),
        .Q(\row_buf_reg[26]_18 [7]),
        .R(1'b0));
  FDRE \row_buf_reg[27][10] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[27][10]_i_1_n_0 ),
        .Q(\row_buf_reg[27]_19 [10]),
        .R(1'b0));
  FDRE \row_buf_reg[27][11] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[27][11]_i_1_n_0 ),
        .Q(\row_buf_reg[27]_19 [11]),
        .R(1'b0));
  FDRE \row_buf_reg[27][12] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[27][12]_i_1_n_0 ),
        .Q(\row_buf_reg[27]_19 [12]),
        .R(1'b0));
  FDRE \row_buf_reg[27][15] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[27][15]_i_1_n_0 ),
        .Q(\row_buf_reg[27]_19 [15]),
        .R(1'b0));
  FDRE \row_buf_reg[27][2] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[27][2]_i_1_n_0 ),
        .Q(\row_buf_reg[27]_19 [2]),
        .R(1'b0));
  FDRE \row_buf_reg[27][3] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[27][3]_i_1_n_0 ),
        .Q(\row_buf_reg[27]_19 [3]),
        .R(1'b0));
  FDRE \row_buf_reg[27][6] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[27][6]_i_1_n_0 ),
        .Q(\row_buf_reg[27]_19 [6]),
        .R(1'b0));
  FDRE \row_buf_reg[27][7] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[27][7]_i_1_n_0 ),
        .Q(\row_buf_reg[27]_19 [7]),
        .R(1'b0));
  FDRE \row_buf_reg[28][10] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[28][10]_i_1_n_0 ),
        .Q(\row_buf_reg[28]_20 [10]),
        .R(1'b0));
  FDRE \row_buf_reg[28][11] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[28][11]_i_1_n_0 ),
        .Q(\row_buf_reg[28]_20 [11]),
        .R(1'b0));
  FDRE \row_buf_reg[28][12] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[28][12]_i_1_n_0 ),
        .Q(\row_buf_reg[28]_20 [12]),
        .R(1'b0));
  FDRE \row_buf_reg[28][15] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[28][15]_i_1_n_0 ),
        .Q(\row_buf_reg[28]_20 [15]),
        .R(1'b0));
  FDRE \row_buf_reg[28][2] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[28][2]_i_1_n_0 ),
        .Q(\row_buf_reg[28]_20 [2]),
        .R(1'b0));
  FDRE \row_buf_reg[28][3] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[28][3]_i_1_n_0 ),
        .Q(\row_buf_reg[28]_20 [3]),
        .R(1'b0));
  FDRE \row_buf_reg[28][6] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[28][6]_i_1_n_0 ),
        .Q(\row_buf_reg[28]_20 [6]),
        .R(1'b0));
  FDRE \row_buf_reg[28][7] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[28][7]_i_1_n_0 ),
        .Q(\row_buf_reg[28]_20 [7]),
        .R(1'b0));
  FDRE \row_buf_reg[29][10] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[29][10]_i_1_n_0 ),
        .Q(\row_buf_reg[29]_21 [10]),
        .R(1'b0));
  FDRE \row_buf_reg[29][11] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[29][11]_i_1_n_0 ),
        .Q(\row_buf_reg[29]_21 [11]),
        .R(1'b0));
  FDRE \row_buf_reg[29][12] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[29][12]_i_1_n_0 ),
        .Q(\row_buf_reg[29]_21 [12]),
        .R(1'b0));
  FDRE \row_buf_reg[29][2] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[29][2]_i_1_n_0 ),
        .Q(\row_buf_reg[29]_21 [2]),
        .R(1'b0));
  FDRE \row_buf_reg[29][3] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[29][3]_i_1_n_0 ),
        .Q(\row_buf_reg[29]_21 [3]),
        .R(1'b0));
  FDRE \row_buf_reg[29][6] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[29][6]_i_1_n_0 ),
        .Q(\row_buf_reg[29]_21 [6]),
        .R(1'b0));
  FDRE \row_buf_reg[29][7] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[29][7]_i_1_n_0 ),
        .Q(\row_buf_reg[29]_21 [7]),
        .R(1'b0));
  FDRE \row_buf_reg[2][10] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[2][10]_i_1_n_0 ),
        .Q(\row_buf_reg_n_0_[2][10] ),
        .R(1'b0));
  FDRE \row_buf_reg[2][11] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[2][11]_i_1_n_0 ),
        .Q(\row_buf_reg_n_0_[2][11] ),
        .R(1'b0));
  FDRE \row_buf_reg[2][12] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[2][12]_i_1_n_0 ),
        .Q(\row_buf_reg_n_0_[2][12] ),
        .R(1'b0));
  FDRE \row_buf_reg[2][2] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[2][2]_i_1_n_0 ),
        .Q(\row_buf_reg_n_0_[2][2] ),
        .R(1'b0));
  FDRE \row_buf_reg[2][3] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[2][3]_i_1_n_0 ),
        .Q(\row_buf_reg_n_0_[2][3] ),
        .R(1'b0));
  FDRE \row_buf_reg[2][6] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[2][6]_i_1_n_0 ),
        .Q(\row_buf_reg_n_0_[2][6] ),
        .R(1'b0));
  FDRE \row_buf_reg[2][7] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[2][7]_i_1_n_0 ),
        .Q(\row_buf_reg_n_0_[2][7] ),
        .R(1'b0));
  FDRE \row_buf_reg[30][10] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[30][10]_i_1_n_0 ),
        .Q(\row_buf_reg[30]_22 [10]),
        .R(1'b0));
  FDRE \row_buf_reg[30][11] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[30][11]_i_1_n_0 ),
        .Q(\row_buf_reg[30]_22 [11]),
        .R(1'b0));
  FDRE \row_buf_reg[30][12] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[30][12]_i_1_n_0 ),
        .Q(\row_buf_reg[30]_22 [12]),
        .R(1'b0));
  FDRE \row_buf_reg[30][15] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[30][15]_i_1_n_0 ),
        .Q(\row_buf_reg[30]_22 [15]),
        .R(1'b0));
  FDRE \row_buf_reg[30][2] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[30][2]_i_1_n_0 ),
        .Q(\row_buf_reg[30]_22 [2]),
        .R(1'b0));
  FDRE \row_buf_reg[30][3] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[30][3]_i_1_n_0 ),
        .Q(\row_buf_reg[30]_22 [3]),
        .R(1'b0));
  FDRE \row_buf_reg[30][6] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[30][6]_i_1_n_0 ),
        .Q(\row_buf_reg[30]_22 [6]),
        .R(1'b0));
  FDRE \row_buf_reg[30][7] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[30][7]_i_1_n_0 ),
        .Q(\row_buf_reg[30]_22 [7]),
        .R(1'b0));
  FDRE \row_buf_reg[31][10] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[31][10]_i_1_n_0 ),
        .Q(\row_buf_reg[31]_23 [10]),
        .R(1'b0));
  FDRE \row_buf_reg[31][11] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[31][11]_i_1_n_0 ),
        .Q(\row_buf_reg[31]_23 [11]),
        .R(1'b0));
  FDRE \row_buf_reg[31][12] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[31][12]_i_1_n_0 ),
        .Q(\row_buf_reg[31]_23 [12]),
        .R(1'b0));
  FDRE \row_buf_reg[31][2] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[31][2]_i_1_n_0 ),
        .Q(\row_buf_reg[31]_23 [2]),
        .R(1'b0));
  FDRE \row_buf_reg[31][3] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[31][3]_i_1_n_0 ),
        .Q(\row_buf_reg[31]_23 [3]),
        .R(1'b0));
  FDRE \row_buf_reg[31][6] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[31][6]_i_1_n_0 ),
        .Q(\row_buf_reg[31]_23 [6]),
        .R(1'b0));
  FDRE \row_buf_reg[31][7] 
       (.C(s_axi_aclk),
        .CE(\row_buf[16][12]_i_1_n_0 ),
        .D(\row_buf[31][7]_i_1_n_0 ),
        .Q(\row_buf_reg[31]_23 [7]),
        .R(1'b0));
  FDRE \row_buf_reg[3][10] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[3][10]_i_1_n_0 ),
        .Q(\row_buf_reg_n_0_[3][10] ),
        .R(1'b0));
  FDRE \row_buf_reg[3][11] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[3][11]_i_1_n_0 ),
        .Q(\row_buf_reg_n_0_[3][11] ),
        .R(1'b0));
  FDRE \row_buf_reg[3][12] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[3][12]_i_1_n_0 ),
        .Q(\row_buf_reg_n_0_[3][12] ),
        .R(1'b0));
  FDRE \row_buf_reg[3][15] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[3][15]_i_1_n_0 ),
        .Q(\row_buf_reg_n_0_[3][15] ),
        .R(1'b0));
  FDRE \row_buf_reg[3][2] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[3][2]_i_1_n_0 ),
        .Q(\row_buf_reg_n_0_[3][2] ),
        .R(1'b0));
  FDRE \row_buf_reg[3][3] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[3][3]_i_1_n_0 ),
        .Q(\row_buf_reg_n_0_[3][3] ),
        .R(1'b0));
  FDRE \row_buf_reg[3][6] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[3][6]_i_1_n_0 ),
        .Q(\row_buf_reg_n_0_[3][6] ),
        .R(1'b0));
  FDRE \row_buf_reg[3][7] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[3][7]_i_1_n_0 ),
        .Q(\row_buf_reg_n_0_[3][7] ),
        .R(1'b0));
  FDRE \row_buf_reg[4][10] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[4][10]_i_1_n_0 ),
        .Q(\row_buf_reg_n_0_[4][10] ),
        .R(1'b0));
  FDRE \row_buf_reg[4][11] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[4][11]_i_1_n_0 ),
        .Q(\row_buf_reg_n_0_[4][11] ),
        .R(1'b0));
  FDRE \row_buf_reg[4][12] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[4][12]_i_1_n_0 ),
        .Q(\row_buf_reg_n_0_[4][12] ),
        .R(1'b0));
  FDRE \row_buf_reg[4][15] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[4][15]_i_1_n_0 ),
        .Q(\row_buf_reg_n_0_[4][15] ),
        .R(1'b0));
  FDRE \row_buf_reg[4][2] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[4][2]_i_1_n_0 ),
        .Q(\row_buf_reg_n_0_[4][2] ),
        .R(1'b0));
  FDRE \row_buf_reg[4][3] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[4][3]_i_1_n_0 ),
        .Q(\row_buf_reg_n_0_[4][3] ),
        .R(1'b0));
  FDRE \row_buf_reg[4][6] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[4][6]_i_1_n_0 ),
        .Q(\row_buf_reg_n_0_[4][6] ),
        .R(1'b0));
  FDRE \row_buf_reg[4][7] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[4][7]_i_1_n_0 ),
        .Q(\row_buf_reg_n_0_[4][7] ),
        .R(1'b0));
  FDRE \row_buf_reg[5][10] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[5][10]_i_1_n_0 ),
        .Q(\row_buf_reg_n_0_[5][10] ),
        .R(1'b0));
  FDRE \row_buf_reg[5][11] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[5][11]_i_1_n_0 ),
        .Q(\row_buf_reg_n_0_[5][11] ),
        .R(1'b0));
  FDRE \row_buf_reg[5][12] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[5][12]_i_1_n_0 ),
        .Q(\row_buf_reg_n_0_[5][12] ),
        .R(1'b0));
  FDRE \row_buf_reg[5][2] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[5][2]_i_1_n_0 ),
        .Q(\row_buf_reg_n_0_[5][2] ),
        .R(1'b0));
  FDRE \row_buf_reg[5][3] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[5][3]_i_1_n_0 ),
        .Q(\row_buf_reg_n_0_[5][3] ),
        .R(1'b0));
  FDRE \row_buf_reg[5][6] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[5][6]_i_1_n_0 ),
        .Q(\row_buf_reg_n_0_[5][6] ),
        .R(1'b0));
  FDRE \row_buf_reg[5][7] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[5][7]_i_1_n_0 ),
        .Q(\row_buf_reg_n_0_[5][7] ),
        .R(1'b0));
  FDRE \row_buf_reg[6][10] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[6][10]_i_1_n_0 ),
        .Q(\row_buf_reg_n_0_[6][10] ),
        .R(1'b0));
  FDRE \row_buf_reg[6][11] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[6][11]_i_1_n_0 ),
        .Q(\row_buf_reg_n_0_[6][11] ),
        .R(1'b0));
  FDRE \row_buf_reg[6][12] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[6][12]_i_1_n_0 ),
        .Q(\row_buf_reg_n_0_[6][12] ),
        .R(1'b0));
  FDRE \row_buf_reg[6][15] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[6][15]_i_1_n_0 ),
        .Q(\row_buf_reg_n_0_[6][15] ),
        .R(1'b0));
  FDRE \row_buf_reg[6][2] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[6][2]_i_1_n_0 ),
        .Q(\row_buf_reg_n_0_[6][2] ),
        .R(1'b0));
  FDRE \row_buf_reg[6][3] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[6][3]_i_1_n_0 ),
        .Q(\row_buf_reg_n_0_[6][3] ),
        .R(1'b0));
  FDRE \row_buf_reg[6][6] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[6][6]_i_1_n_0 ),
        .Q(\row_buf_reg_n_0_[6][6] ),
        .R(1'b0));
  FDRE \row_buf_reg[6][7] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[6][7]_i_1_n_0 ),
        .Q(\row_buf_reg_n_0_[6][7] ),
        .R(1'b0));
  FDRE \row_buf_reg[7][10] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[7][10]_i_1_n_0 ),
        .Q(\row_buf_reg_n_0_[7][10] ),
        .R(1'b0));
  FDRE \row_buf_reg[7][11] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[7][11]_i_1_n_0 ),
        .Q(\row_buf_reg_n_0_[7][11] ),
        .R(1'b0));
  FDRE \row_buf_reg[7][12] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[7][12]_i_1_n_0 ),
        .Q(\row_buf_reg_n_0_[7][12] ),
        .R(1'b0));
  FDRE \row_buf_reg[7][15] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[7][15]_i_1_n_0 ),
        .Q(\row_buf_reg_n_0_[7][15] ),
        .R(1'b0));
  FDRE \row_buf_reg[7][2] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[7][2]_i_1_n_0 ),
        .Q(\row_buf_reg_n_0_[7][2] ),
        .R(1'b0));
  FDRE \row_buf_reg[7][3] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[7][3]_i_1_n_0 ),
        .Q(\row_buf_reg_n_0_[7][3] ),
        .R(1'b0));
  FDRE \row_buf_reg[7][6] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[7][6]_i_1_n_0 ),
        .Q(\row_buf_reg_n_0_[7][6] ),
        .R(1'b0));
  FDRE \row_buf_reg[7][7] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[7][7]_i_1_n_0 ),
        .Q(\row_buf_reg_n_0_[7][7] ),
        .R(1'b0));
  FDRE \row_buf_reg[8][10] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[8][10]_i_1_n_0 ),
        .Q(\row_buf_reg[8]_0 [10]),
        .R(1'b0));
  FDRE \row_buf_reg[8][11] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[8][11]_i_1_n_0 ),
        .Q(\row_buf_reg[8]_0 [11]),
        .R(1'b0));
  FDRE \row_buf_reg[8][12] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[8][12]_i_1_n_0 ),
        .Q(\row_buf_reg[8]_0 [12]),
        .R(1'b0));
  FDRE \row_buf_reg[8][15] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[8][15]_i_1_n_0 ),
        .Q(\row_buf_reg[8]_0 [15]),
        .R(1'b0));
  FDRE \row_buf_reg[8][2] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[8][2]_i_1_n_0 ),
        .Q(\row_buf_reg[8]_0 [2]),
        .R(1'b0));
  FDRE \row_buf_reg[8][3] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[8][3]_i_1_n_0 ),
        .Q(\row_buf_reg[8]_0 [3]),
        .R(1'b0));
  FDRE \row_buf_reg[8][6] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[8][6]_i_1_n_0 ),
        .Q(\row_buf_reg[8]_0 [6]),
        .R(1'b0));
  FDRE \row_buf_reg[8][7] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[8][7]_i_1_n_0 ),
        .Q(\row_buf_reg[8]_0 [7]),
        .R(1'b0));
  FDRE \row_buf_reg[9][10] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[9][10]_i_1_n_0 ),
        .Q(\row_buf_reg[9]_1 [10]),
        .R(1'b0));
  FDRE \row_buf_reg[9][11] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[9][11]_i_1_n_0 ),
        .Q(\row_buf_reg[9]_1 [11]),
        .R(1'b0));
  FDRE \row_buf_reg[9][12] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[9][12]_i_1_n_0 ),
        .Q(\row_buf_reg[9]_1 [12]),
        .R(1'b0));
  FDRE \row_buf_reg[9][15] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[9][15]_i_1_n_0 ),
        .Q(\row_buf_reg[9]_1 [15]),
        .R(1'b0));
  FDRE \row_buf_reg[9][2] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[9][2]_i_1_n_0 ),
        .Q(\row_buf_reg[9]_1 [2]),
        .R(1'b0));
  FDRE \row_buf_reg[9][3] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[9][3]_i_1_n_0 ),
        .Q(\row_buf_reg[9]_1 [3]),
        .R(1'b0));
  FDRE \row_buf_reg[9][6] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[9][6]_i_1_n_0 ),
        .Q(\row_buf_reg[9]_1 [6]),
        .R(1'b0));
  FDRE \row_buf_reg[9][7] 
       (.C(s_axi_aclk),
        .CE(\row_buf[0][12]_i_1_n_0 ),
        .D(\row_buf[9][7]_i_1_n_0 ),
        .Q(\row_buf_reg[9]_1 [7]),
        .R(1'b0));
  (* CHECK_LICENSE_TYPE = "blk_mem_gen_spr_att,blk_mem_gen_v8_4_12,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
  Block_top_VDP_0_0_blk_mem_gen_spr_att spr_att
       (.addra(att_pos_reg),
        .addrb(s0_att_cpu_addr),
        .clka(s_axi_aclk),
        .clkb(s0_att_cpu_clk),
        .dina(NLW_spr_att_dina_UNCONNECTED[63:0]),
        .dinb(s0_att_cpu_din),
        .douta({spr_att_vdp_dout[63:53],spr_att_vdp_dout__0[52],spr_att_vdp_dout[51],spr_att_vdp_dout__0[50],spr_att_vdp_dout[49],spr_att_vdp_dout__0[48],spr_att_vdp_dout[47],spr_att_vdp_dout__0[46:36],spr_att_vdp_dout[35:10],spr_att_vdp_dout__0[9:0]}),
        .doutb(s0_att_cpu_dout),
        .enb(s0_att_cpu_en),
        .wea({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .web(s0_att_cpu_wen));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \spr_cnt[0]_i_1 
       (.I0(spr_cnt_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \spr_cnt[1]_i_1 
       (.I0(spr_cnt_reg[0]),
        .I1(spr_cnt_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \spr_cnt[2]_i_1 
       (.I0(spr_cnt_reg[0]),
        .I1(spr_cnt_reg[1]),
        .I2(spr_cnt_reg[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \spr_cnt[3]_i_1 
       (.I0(spr_cnt_reg[1]),
        .I1(spr_cnt_reg[0]),
        .I2(spr_cnt_reg[2]),
        .I3(spr_cnt_reg[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \spr_cnt[4]_i_1 
       (.I0(spr_cnt_reg[2]),
        .I1(spr_cnt_reg[0]),
        .I2(spr_cnt_reg[1]),
        .I3(spr_cnt_reg[3]),
        .I4(spr_cnt_reg[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \spr_cnt[5]_i_1 
       (.I0(spr_cnt_reg[3]),
        .I1(spr_cnt_reg[1]),
        .I2(spr_cnt_reg[0]),
        .I3(spr_cnt_reg[2]),
        .I4(spr_cnt_reg[4]),
        .I5(spr_cnt_reg[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \spr_cnt[6]_i_1 
       (.I0(\spr_cnt[7]_i_2_n_0 ),
        .I1(spr_cnt_reg[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \spr_cnt[7]_i_1 
       (.I0(\spr_cnt[7]_i_2_n_0 ),
        .I1(spr_cnt_reg[6]),
        .I2(spr_cnt_reg[7]),
        .O(p_0_in[7]));
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
        .D(p_0_in[0]),
        .Q(spr_cnt_reg[0]),
        .R(line_done0));
  FDRE \spr_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(spr_cnt),
        .D(p_0_in[1]),
        .Q(spr_cnt_reg[1]),
        .R(line_done0));
  FDRE \spr_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(spr_cnt),
        .D(p_0_in[2]),
        .Q(spr_cnt_reg[2]),
        .R(line_done0));
  FDRE \spr_cnt_reg[3] 
       (.C(s_axi_aclk),
        .CE(spr_cnt),
        .D(p_0_in[3]),
        .Q(spr_cnt_reg[3]),
        .R(line_done0));
  FDRE \spr_cnt_reg[4] 
       (.C(s_axi_aclk),
        .CE(spr_cnt),
        .D(p_0_in[4]),
        .Q(spr_cnt_reg[4]),
        .R(line_done0));
  FDRE \spr_cnt_reg[5] 
       (.C(s_axi_aclk),
        .CE(spr_cnt),
        .D(p_0_in[5]),
        .Q(spr_cnt_reg[5]),
        .R(line_done0));
  FDRE \spr_cnt_reg[6] 
       (.C(s_axi_aclk),
        .CE(spr_cnt),
        .D(p_0_in[6]),
        .Q(spr_cnt_reg[6]),
        .R(line_done0));
  FDRE \spr_cnt_reg[7] 
       (.C(s_axi_aclk),
        .CE(spr_cnt),
        .D(p_0_in[7]),
        .Q(spr_cnt_reg[7]),
        .R(line_done0));
  (* CHECK_LICENSE_TYPE = "blk_mem_gen_spr_data,blk_mem_gen_v8_4_12,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
  Block_top_VDP_0_0_blk_mem_gen_spr_data spr_data
       (.addra({\data_pos_reg_n_0_[10] ,\data_pos_reg_n_0_[9] ,\data_pos_reg_n_0_[8] ,\data_pos_reg_n_0_[7] ,\data_pos_reg_n_0_[6] ,\data_pos_reg_n_0_[5] ,\data_pos_reg_n_0_[4] ,\data_pos_reg_n_0_[3] ,\data_pos_reg_n_0_[2] ,\data_pos_reg_n_0_[1] ,\data_pos_reg_n_0_[0] }),
        .addrb(s0_data_cpu_addr),
        .clka(s_axi_aclk),
        .clkb(s0_data_cpu_clk),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb(s0_data_cpu_din),
        .douta({spr_data_vdp_dout[127:88],spr_data_vdp_dout__0[87:80],spr_data_vdp_dout[79:56],spr_data_vdp_dout__0[55:40],spr_data_vdp_dout[39:0]}),
        .doutb(s0_data_cpu_dout),
        .enb(s0_data_cpu_en),
        .wea({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .web(s0_data_cpu_wen));
  (* CHECK_LICENSE_TYPE = "blk_mem_gen_spr_line,blk_mem_gen_v8_4_12,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
  Block_top_VDP_0_0_blk_mem_gen_spr_line spr_line
       (.addra({\line_pos_reg_reg_n_0_[7] ,\line_pos_reg_reg_n_0_[6] ,\line_pos_reg_reg_n_0_[5] ,\line_pos_reg_reg_n_0_[4] ,\line_pos_reg_reg_n_0_[3] ,\line_pos_reg_reg_n_0_[2] ,\line_pos_reg_reg_n_0_[1] ,\line_pos_reg_reg_n_0_[0] }),
        .addrb(Q),
        .clka(s_axi_aclk),
        .clkb(s_axi_aclk),
        .dina({\line_data_reg_n_0_[63] ,\line_data_reg_n_0_[62] ,\line_data_reg_n_0_[62] ,\line_data_reg_n_0_[62] ,\line_data_reg_n_0_[59] ,\line_data_reg_n_0_[58] ,\line_data_reg_n_0_[58] ,\line_data_reg_n_0_[58] ,\line_data_reg_n_0_[55] ,\line_data_reg_n_0_[54] ,\line_data_reg_n_0_[54] ,\line_data_reg_n_0_[54] ,\line_data_reg_n_0_[51] ,\line_data_reg_n_0_[50] ,\line_data_reg_n_0_[50] ,\line_data_reg_n_0_[50] ,\line_data_reg_n_0_[47] ,\line_data_reg_n_0_[46] ,\line_data_reg_n_0_[46] ,\line_data_reg_n_0_[46] ,\line_data_reg_n_0_[43] ,\line_data_reg_n_0_[42] ,\line_data_reg_n_0_[42] ,\line_data_reg_n_0_[42] ,\line_data_reg_n_0_[39] ,\line_data_reg_n_0_[38] ,\line_data_reg_n_0_[38] ,\line_data_reg_n_0_[38] ,\line_data_reg_n_0_[35] ,\line_data_reg_n_0_[34] ,\line_data_reg_n_0_[34] ,\line_data_reg_n_0_[34] ,\line_data_reg_n_0_[31] ,\line_data_reg_n_0_[30] ,\line_data_reg_n_0_[30] ,\line_data_reg_n_0_[30] ,\line_data_reg_n_0_[27] ,\line_data_reg_n_0_[26] ,\line_data_reg_n_0_[26] ,\line_data_reg_n_0_[26] ,\line_data_reg_n_0_[23] ,\line_data_reg_n_0_[22] ,\line_data_reg_n_0_[22] ,\line_data_reg_n_0_[22] ,\line_data_reg_n_0_[19] ,\line_data_reg_n_0_[18] ,\line_data_reg_n_0_[18] ,\line_data_reg_n_0_[18] ,\line_data_reg_n_0_[15] ,\line_data_reg_n_0_[14] ,\line_data_reg_n_0_[14] ,\line_data_reg_n_0_[14] ,\line_data_reg_n_0_[11] ,\line_data_reg_n_0_[10] ,\line_data_reg_n_0_[10] ,\line_data_reg_n_0_[10] ,\line_data_reg_n_0_[7] ,\line_data_reg_n_0_[6] ,\line_data_reg_n_0_[6] ,\line_data_reg_n_0_[6] ,\line_data_reg_n_0_[3] ,\line_data_reg_n_0_[2] ,\line_data_reg_n_0_[2] ,\line_data_reg_n_0_[2] }),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_spr_line_douta_UNCONNECTED[63:0]),
        .doutb(s0_dout),
        .wea({\line_we_reg_n_0_[7] ,\line_we_reg_n_0_[7] ,\line_we_reg_n_0_[5] ,\line_we_reg_n_0_[5] ,\line_we_reg_n_0_[3] ,\line_we_reg_n_0_[3] ,\line_we_reg_n_0_[1] ,\line_we_reg_n_0_[1] }),
        .web({1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "VDP_tile_gen" *) 
module Block_top_VDP_0_0_VDP_tile_gen
   (doutb,
    t0_map_cpu_dout,
    t0_data_cpu_dout,
    \gen_done_reg[0] ,
    \v_cnt_reg[7] ,
    \h_cnt_reg[4] ,
    s_axi_aclk,
    Q,
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
    gen_done,
    gen_done0,
    D,
    \data_r_addr_reg[2]_0 ,
    \map_r_addr_reg[12]_0 ,
    \FSM_onehot_state_reg[5]_0 ,
    \FSM_onehot_state_reg[5]_1 ,
    \map_r_addr_reg[11]_0 ,
    \map_r_addr_reg[11]_1 ,
    \FSM_onehot_state[10]_i_7_0 );
  output [11:0]doutb;
  output [31:0]t0_map_cpu_dout;
  output [31:0]t0_data_cpu_dout;
  output \gen_done_reg[0] ;
  output [0:0]\v_cnt_reg[7] ;
  output \h_cnt_reg[4] ;
  input s_axi_aclk;
  input [9:0]Q;
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
  input [0:0]gen_done;
  input gen_done0;
  input [2:0]D;
  input [1:0]\data_r_addr_reg[2]_0 ;
  input \map_r_addr_reg[12]_0 ;
  input \FSM_onehot_state_reg[5]_0 ;
  input \FSM_onehot_state_reg[5]_1 ;
  input [6:0]\map_r_addr_reg[11]_0 ;
  input \map_r_addr_reg[11]_1 ;
  input [10:0]\FSM_onehot_state[10]_i_7_0 ;

  wire [2:0]D;
  wire \FSM_onehot_state[10]_i_11_n_0 ;
  wire [10:0]\FSM_onehot_state[10]_i_7_0 ;
  wire \FSM_onehot_state[10]_i_7_n_0 ;
  wire \FSM_onehot_state[1]_i_2__0_n_0 ;
  wire \FSM_onehot_state[5]_i_1_n_0 ;
  wire \FSM_onehot_state[5]_i_2_n_0 ;
  wire \FSM_onehot_state_reg[5]_0 ;
  wire \FSM_onehot_state_reg[5]_1 ;
  wire \FSM_onehot_state_reg_n_0_[5] ;
  wire [9:0]Q;
  wire [0:0]data_r_addr;
  wire [1:0]\data_r_addr_reg[2]_0 ;
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
  wire \gen_done_reg[0] ;
  wire [8:1]gen_line;
  wire \h_cnt_reg[4] ;
  wire line_buf_i_10_n_0;
  wire line_buf_i_11_n_0;
  wire line_buf_i_12_n_0;
  wire line_buf_i_13_n_0;
  wire line_buf_i_14_n_0;
  wire line_buf_i_15_n_0;
  wire line_buf_i_16_n_0;
  wire line_buf_i_17_n_0;
  wire line_buf_i_18_n_0;
  wire line_buf_i_19_n_0;
  wire line_buf_i_20_n_0;
  wire line_buf_i_21_n_0;
  wire line_buf_i_22_n_0;
  wire line_buf_i_23_n_0;
  wire line_buf_i_24_n_0;
  wire line_buf_i_25_n_0;
  wire line_buf_i_26_n_0;
  wire line_buf_i_27_n_0;
  wire line_buf_i_28_n_0;
  wire line_buf_i_29_n_0;
  wire line_buf_i_30_n_0;
  wire line_buf_i_31_n_0;
  wire line_buf_i_8_n_0;
  wire line_buf_i_9_n_0;
  wire line_buf_n_16;
  wire line_buf_n_17;
  wire line_buf_n_18;
  wire line_buf_n_19;
  wire line_done;
  wire line_done0;
  wire line_done_i_1__0_n_0;
  wire [9:0]map_a_dout;
  wire [0:0]map_r_addr;
  wire [6:0]\map_r_addr_reg[11]_0 ;
  wire \map_r_addr_reg[11]_1 ;
  wire \map_r_addr_reg[12]_0 ;
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
  wire \map_x[0]_i_1_n_0 ;
  wire \map_x[1]_i_1_n_0 ;
  wire \map_x[2]_i_1_n_0 ;
  wire \map_x[3]_i_1_n_0 ;
  wire \map_x[4]_i_1_n_0 ;
  wire \map_x[5]_i_1_n_0 ;
  wire \map_x[5]_i_2_n_0 ;
  wire \map_x[5]_i_3_n_0 ;
  wire \map_x[5]_i_4_n_0 ;
  wire \map_x[6]_i_1_n_0 ;
  wire \map_x[6]_i_2_n_0 ;
  wire \pixel_addr[0]_i_1_n_0 ;
  wire \pixel_addr[1]_i_1_n_0 ;
  wire \pixel_addr[2]_i_1_n_0 ;
  wire \pixel_addr[3]_i_1_n_0 ;
  wire \pixel_addr[4]_i_1_n_0 ;
  wire \pixel_addr[5]_i_1_n_0 ;
  wire \pixel_addr[6]_i_1_n_0 ;
  wire \pixel_addr[7]_i_1_n_0 ;
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
  wire [15:2]pixel_data_comb;
  wire s_axi_aclk;
  wire [4:2]state;
  wire [1:0]state__0;
  wire [13:0]t0_data_cpu_addr;
  wire t0_data_cpu_clk;
  wire [31:0]t0_data_cpu_din;
  wire [31:0]t0_data_cpu_dout;
  wire t0_data_cpu_en;
  wire [3:0]t0_data_cpu_wen;
  wire [12:0]t0_map_cpu_addr;
  wire t0_map_cpu_clk;
  wire [31:0]t0_map_cpu_din;
  wire [31:0]t0_map_cpu_dout;
  wire t0_map_cpu_en;
  wire [3:0]t0_map_cpu_wen;
  wire \tile_pixel[0]_i_1_n_0 ;
  wire \tile_pixel[1]_i_1_n_0 ;
  wire \tile_pixel[2]_i_1_n_0 ;
  wire \tile_pixel_reg_n_0_[0] ;
  wire \tile_pixel_reg_n_0_[1] ;
  wire \tile_pixel_reg_n_0_[2] ;
  wire [0:0]\v_cnt_reg[7] ;
  wire [63:0]NLW_Tile_DATA_mem_dina_UNCONNECTED;
  wire [15:0]NLW_Tile_MAP_mem_dina_UNCONNECTED;
  wire [15:10]NLW_Tile_MAP_mem_douta_UNCONNECTED;
  wire [15:0]NLW_line_buf_dinb_UNCONNECTED;
  wire [15:0]NLW_line_buf_douta_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT5 #(
    .INIT(32'h00000200)) 
    \FSM_onehot_state[0]_i_1__0 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(\pixel_addr_reg_n_0_[8] ),
        .I2(\pixel_addr_reg_n_0_[7] ),
        .I3(\pixel_addr_reg_n_0_[9] ),
        .I4(\FSM_onehot_state[1]_i_2__0_n_0 ),
        .O(state__0[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_state[10]_i_11 
       (.I0(\FSM_onehot_state[10]_i_7_0 [6]),
        .I1(\FSM_onehot_state[10]_i_7_0 [7]),
        .I2(\FSM_onehot_state[10]_i_7_0 [5]),
        .I3(\FSM_onehot_state[10]_i_7_0 [8]),
        .I4(\FSM_onehot_state[10]_i_7_0 [9]),
        .I5(\FSM_onehot_state[10]_i_7_0 [10]),
        .O(\FSM_onehot_state[10]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEEEEEFE)) 
    \FSM_onehot_state[10]_i_4 
       (.I0(\FSM_onehot_state[10]_i_7_n_0 ),
        .I1(D[2]),
        .I2(\v_cnt_reg[7] ),
        .I3(\map_r_addr_reg[12]_0 ),
        .I4(\FSM_onehot_state_reg[5]_0 ),
        .I5(\FSM_onehot_state_reg[5]_1 ),
        .O(\h_cnt_reg[4] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_state[10]_i_7 
       (.I0(\FSM_onehot_state[10]_i_7_0 [4]),
        .I1(\FSM_onehot_state[10]_i_7_0 [3]),
        .I2(\FSM_onehot_state[10]_i_7_0 [2]),
        .I3(\FSM_onehot_state[10]_i_7_0 [0]),
        .I4(\FSM_onehot_state[10]_i_7_0 [1]),
        .I5(\FSM_onehot_state[10]_i_11_n_0 ),
        .O(\FSM_onehot_state[10]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEEEEAEE)) 
    \FSM_onehot_state[1]_i_1__0 
       (.I0(line_done0),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(\FSM_onehot_state[1]_i_2__0_n_0 ),
        .I3(\pixel_addr_reg_n_0_[9] ),
        .I4(\pixel_addr_reg_n_0_[7] ),
        .I5(\pixel_addr_reg_n_0_[8] ),
        .O(state__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT4 #(
    .INIT(16'hF7FF)) 
    \FSM_onehot_state[1]_i_2__0 
       (.I0(\pixel_addr_reg_n_0_[4] ),
        .I1(\pixel_addr_reg_n_0_[5] ),
        .I2(\pixel_addr[8]_i_3_n_0 ),
        .I3(\pixel_addr_reg_n_0_[6] ),
        .O(\FSM_onehot_state[1]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFF4)) 
    \FSM_onehot_state[5]_i_1 
       (.I0(\h_cnt_reg[4] ),
        .I1(line_done0),
        .I2(\FSM_onehot_state[5]_i_2_n_0 ),
        .I3(state__0[0]),
        .O(\FSM_onehot_state[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_state[5]_i_2 
       (.I0(\map_x[5]_i_4_n_0 ),
        .I1(state[4]),
        .I2(map_r_addr),
        .I3(state[2]),
        .I4(data_r_addr),
        .O(\FSM_onehot_state[5]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "STATE_C0:000000000100,STATE_C1:000000001000,STATE_C2:000000010000,STATE_C3:000000100000,STATE_START:000000000010,STATE_WAIT:000000000001" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(\FSM_onehot_state[5]_i_1_n_0 ),
        .D(state__0[0]),
        .Q(line_done0),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "STATE_C0:000000000100,STATE_C1:000000001000,STATE_C2:000000010000,STATE_C3:000000100000,STATE_START:000000000010,STATE_WAIT:000000000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(\FSM_onehot_state[5]_i_1_n_0 ),
        .D(state__0[1]),
        .Q(map_r_addr),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "STATE_C0:000000000100,STATE_C1:000000001000,STATE_C2:000000010000,STATE_C3:000000100000,STATE_START:000000000010,STATE_WAIT:000000000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(s_axi_aclk),
        .CE(\FSM_onehot_state[5]_i_1_n_0 ),
        .D(map_r_addr),
        .Q(state[2]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "STATE_C0:000000000100,STATE_C1:000000001000,STATE_C2:000000010000,STATE_C3:000000100000,STATE_START:000000000010,STATE_WAIT:000000000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(s_axi_aclk),
        .CE(\FSM_onehot_state[5]_i_1_n_0 ),
        .D(state[2]),
        .Q(data_r_addr),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "STATE_C0:000000000100,STATE_C1:000000001000,STATE_C2:000000010000,STATE_C3:000000100000,STATE_START:000000000010,STATE_WAIT:000000000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(s_axi_aclk),
        .CE(\FSM_onehot_state[5]_i_1_n_0 ),
        .D(data_r_addr),
        .Q(state[4]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "STATE_C0:000000000100,STATE_C1:000000001000,STATE_C2:000000010000,STATE_C3:000000100000,STATE_START:000000000010,STATE_WAIT:000000000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(s_axi_aclk),
        .CE(\FSM_onehot_state[5]_i_1_n_0 ),
        .D(state[4]),
        .Q(\FSM_onehot_state_reg_n_0_[5] ),
        .R(1'b0));
  (* CHECK_LICENSE_TYPE = "blk_mem_tile_data,blk_mem_gen_v8_4_12,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
  Block_top_VDP_0_0_blk_mem_tile_data Tile_DATA_mem
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
  Block_top_VDP_0_0_blk_mem_tile_map Tile_MAP_mem
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
  LUT1 #(
    .INIT(2'h1)) 
    \data_r_addr[1]_i_1 
       (.I0(\map_r_addr_reg[11]_0 [0]),
        .O(gen_line[1]));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_addr_reg[0] 
       (.C(s_axi_aclk),
        .CE(data_r_addr),
        .D(\data_r_addr_reg[2]_0 [0]),
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
        .D(gen_line[1]),
        .Q(\data_r_addr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_addr_reg[2] 
       (.C(s_axi_aclk),
        .CE(data_r_addr),
        .D(\data_r_addr_reg[2]_0 [1]),
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
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \gen_done[0]_i_1 
       (.I0(gen_done),
        .I1(line_done),
        .I2(gen_done0),
        .O(\gen_done_reg[0] ));
  (* CHECK_LICENSE_TYPE = "blk_mem_buf_line,blk_mem_gen_v8_4_12,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
  Block_top_VDP_0_0_blk_mem_buf_line line_buf
       (.addra({\pixel_addr_reg_n_0_[9] ,\pixel_addr_reg_n_0_[8] ,\pixel_addr_reg_n_0_[7] ,\pixel_addr_reg_n_0_[6] ,\pixel_addr_reg_n_0_[5] ,\pixel_addr_reg_n_0_[4] ,\pixel_addr_reg_n_0_[3] ,\pixel_addr_reg_n_0_[2] ,\pixel_addr_reg_n_0_[1] ,\pixel_addr_reg_n_0_[0] }),
        .addrb(Q),
        .clka(s_axi_aclk),
        .clkb(s_axi_aclk),
        .dina({pixel_data_comb[15],pixel_data_comb[15],pixel_data_comb[15],pixel_data_comb[15],pixel_data_comb[11:10],pixel_data_comb[10],pixel_data_comb[10],pixel_data_comb[7:6],pixel_data_comb[6],pixel_data_comb[6],pixel_data_comb[3:2],pixel_data_comb[2],pixel_data_comb[2]}),
        .dinb(NLW_line_buf_dinb_UNCONNECTED[15:0]),
        .douta(NLW_line_buf_douta_UNCONNECTED[15:0]),
        .doutb({line_buf_n_16,line_buf_n_17,line_buf_n_18,line_buf_n_19,doutb}),
        .ena(\FSM_onehot_state_reg_n_0_[5] ),
        .wea(1'b1),
        .web(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    line_buf_i_1
       (.I0(line_buf_i_8_n_0),
        .I1(line_buf_i_9_n_0),
        .I2(line_buf_i_10_n_0),
        .I3(line_buf_i_11_n_0),
        .I4(line_buf_i_12_n_0),
        .O(pixel_data_comb[15]));
  MUXF7 line_buf_i_10
       (.I0(line_buf_i_17_n_0),
        .I1(line_buf_i_18_n_0),
        .O(line_buf_i_10_n_0),
        .S(\tile_pixel_reg_n_0_[2] ));
  MUXF7 line_buf_i_11
       (.I0(line_buf_i_19_n_0),
        .I1(line_buf_i_20_n_0),
        .O(line_buf_i_11_n_0),
        .S(\tile_pixel_reg_n_0_[2] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFEA)) 
    line_buf_i_12
       (.I0(line_buf_i_21_n_0),
        .I1(line_buf_i_22_n_0),
        .I2(\tile_pixel_reg_n_0_[2] ),
        .I3(line_buf_i_23_n_0),
        .I4(line_buf_i_24_n_0),
        .I5(line_buf_i_25_n_0),
        .O(line_buf_i_12_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    line_buf_i_13
       (.I0(data_r_data[24]),
        .I1(data_r_data[16]),
        .I2(\tile_pixel_reg_n_0_[1] ),
        .I3(data_r_data[8]),
        .I4(\tile_pixel_reg_n_0_[0] ),
        .I5(data_r_data[0]),
        .O(line_buf_i_13_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    line_buf_i_14
       (.I0(data_r_data[56]),
        .I1(data_r_data[48]),
        .I2(\tile_pixel_reg_n_0_[1] ),
        .I3(data_r_data[40]),
        .I4(\tile_pixel_reg_n_0_[0] ),
        .I5(data_r_data[32]),
        .O(line_buf_i_14_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    line_buf_i_15
       (.I0(data_r_data[26]),
        .I1(data_r_data[18]),
        .I2(\tile_pixel_reg_n_0_[1] ),
        .I3(data_r_data[10]),
        .I4(\tile_pixel_reg_n_0_[0] ),
        .I5(data_r_data[2]),
        .O(line_buf_i_15_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    line_buf_i_16
       (.I0(data_r_data[58]),
        .I1(data_r_data[50]),
        .I2(\tile_pixel_reg_n_0_[1] ),
        .I3(data_r_data[42]),
        .I4(\tile_pixel_reg_n_0_[0] ),
        .I5(data_r_data[34]),
        .O(line_buf_i_16_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    line_buf_i_17
       (.I0(data_r_data[27]),
        .I1(data_r_data[19]),
        .I2(\tile_pixel_reg_n_0_[1] ),
        .I3(data_r_data[11]),
        .I4(\tile_pixel_reg_n_0_[0] ),
        .I5(data_r_data[3]),
        .O(line_buf_i_17_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    line_buf_i_18
       (.I0(data_r_data[59]),
        .I1(data_r_data[51]),
        .I2(\tile_pixel_reg_n_0_[1] ),
        .I3(data_r_data[43]),
        .I4(\tile_pixel_reg_n_0_[0] ),
        .I5(data_r_data[35]),
        .O(line_buf_i_18_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    line_buf_i_19
       (.I0(data_r_data[25]),
        .I1(data_r_data[17]),
        .I2(\tile_pixel_reg_n_0_[1] ),
        .I3(data_r_data[9]),
        .I4(\tile_pixel_reg_n_0_[0] ),
        .I5(data_r_data[1]),
        .O(line_buf_i_19_n_0));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT5 #(
    .INIT(32'h0E060604)) 
    line_buf_i_2
       (.I0(line_buf_i_10_n_0),
        .I1(line_buf_i_11_n_0),
        .I2(line_buf_i_12_n_0),
        .I3(line_buf_i_8_n_0),
        .I4(line_buf_i_9_n_0),
        .O(pixel_data_comb[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    line_buf_i_20
       (.I0(data_r_data[57]),
        .I1(data_r_data[49]),
        .I2(\tile_pixel_reg_n_0_[1] ),
        .I3(data_r_data[41]),
        .I4(\tile_pixel_reg_n_0_[0] ),
        .I5(data_r_data[33]),
        .O(line_buf_i_20_n_0));
  MUXF7 line_buf_i_21
       (.I0(line_buf_i_26_n_0),
        .I1(line_buf_i_27_n_0),
        .O(line_buf_i_21_n_0),
        .S(\tile_pixel_reg_n_0_[2] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    line_buf_i_22
       (.I0(data_r_data[60]),
        .I1(data_r_data[52]),
        .I2(\tile_pixel_reg_n_0_[1] ),
        .I3(data_r_data[44]),
        .I4(\tile_pixel_reg_n_0_[0] ),
        .I5(data_r_data[36]),
        .O(line_buf_i_22_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    line_buf_i_23
       (.I0(data_r_data[28]),
        .I1(data_r_data[20]),
        .I2(\tile_pixel_reg_n_0_[1] ),
        .I3(data_r_data[12]),
        .I4(\tile_pixel_reg_n_0_[0] ),
        .I5(data_r_data[4]),
        .O(line_buf_i_23_n_0));
  MUXF7 line_buf_i_24
       (.I0(line_buf_i_28_n_0),
        .I1(line_buf_i_29_n_0),
        .O(line_buf_i_24_n_0),
        .S(\tile_pixel_reg_n_0_[2] ));
  MUXF7 line_buf_i_25
       (.I0(line_buf_i_30_n_0),
        .I1(line_buf_i_31_n_0),
        .O(line_buf_i_25_n_0),
        .S(\tile_pixel_reg_n_0_[2] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    line_buf_i_26
       (.I0(data_r_data[29]),
        .I1(data_r_data[21]),
        .I2(\tile_pixel_reg_n_0_[1] ),
        .I3(data_r_data[13]),
        .I4(\tile_pixel_reg_n_0_[0] ),
        .I5(data_r_data[5]),
        .O(line_buf_i_26_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    line_buf_i_27
       (.I0(data_r_data[61]),
        .I1(data_r_data[53]),
        .I2(\tile_pixel_reg_n_0_[1] ),
        .I3(data_r_data[45]),
        .I4(\tile_pixel_reg_n_0_[0] ),
        .I5(data_r_data[37]),
        .O(line_buf_i_27_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    line_buf_i_28
       (.I0(data_r_data[31]),
        .I1(data_r_data[23]),
        .I2(\tile_pixel_reg_n_0_[1] ),
        .I3(data_r_data[15]),
        .I4(\tile_pixel_reg_n_0_[0] ),
        .I5(data_r_data[7]),
        .O(line_buf_i_28_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    line_buf_i_29
       (.I0(data_r_data[63]),
        .I1(data_r_data[55]),
        .I2(\tile_pixel_reg_n_0_[1] ),
        .I3(data_r_data[47]),
        .I4(\tile_pixel_reg_n_0_[0] ),
        .I5(data_r_data[39]),
        .O(line_buf_i_29_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    line_buf_i_3
       (.I0(line_buf_i_12_n_0),
        .I1(line_buf_i_11_n_0),
        .I2(line_buf_i_10_n_0),
        .O(pixel_data_comb[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    line_buf_i_30
       (.I0(data_r_data[30]),
        .I1(data_r_data[22]),
        .I2(\tile_pixel_reg_n_0_[1] ),
        .I3(data_r_data[14]),
        .I4(\tile_pixel_reg_n_0_[0] ),
        .I5(data_r_data[6]),
        .O(line_buf_i_30_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    line_buf_i_31
       (.I0(data_r_data[62]),
        .I1(data_r_data[54]),
        .I2(\tile_pixel_reg_n_0_[1] ),
        .I3(data_r_data[46]),
        .I4(\tile_pixel_reg_n_0_[0] ),
        .I5(data_r_data[38]),
        .O(line_buf_i_31_n_0));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT5 #(
    .INIT(32'h00B30032)) 
    line_buf_i_4
       (.I0(line_buf_i_10_n_0),
        .I1(line_buf_i_8_n_0),
        .I2(line_buf_i_9_n_0),
        .I3(line_buf_i_12_n_0),
        .I4(line_buf_i_11_n_0),
        .O(pixel_data_comb[7]));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT5 #(
    .INIT(32'h00000132)) 
    line_buf_i_5
       (.I0(line_buf_i_9_n_0),
        .I1(line_buf_i_12_n_0),
        .I2(line_buf_i_11_n_0),
        .I3(line_buf_i_10_n_0),
        .I4(line_buf_i_8_n_0),
        .O(pixel_data_comb[6]));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT5 #(
    .INIT(32'h00E900C2)) 
    line_buf_i_6
       (.I0(line_buf_i_10_n_0),
        .I1(line_buf_i_8_n_0),
        .I2(line_buf_i_9_n_0),
        .I3(line_buf_i_12_n_0),
        .I4(line_buf_i_11_n_0),
        .O(pixel_data_comb[3]));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT5 #(
    .INIT(32'h03000012)) 
    line_buf_i_7
       (.I0(line_buf_i_11_n_0),
        .I1(line_buf_i_12_n_0),
        .I2(line_buf_i_10_n_0),
        .I3(line_buf_i_9_n_0),
        .I4(line_buf_i_8_n_0),
        .O(pixel_data_comb[2]));
  MUXF7 line_buf_i_8
       (.I0(line_buf_i_13_n_0),
        .I1(line_buf_i_14_n_0),
        .O(line_buf_i_8_n_0),
        .S(\tile_pixel_reg_n_0_[2] ));
  MUXF7 line_buf_i_9
       (.I0(line_buf_i_15_n_0),
        .I1(line_buf_i_16_n_0),
        .O(line_buf_i_9_n_0),
        .S(\tile_pixel_reg_n_0_[2] ));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    line_done_i_1__0
       (.I0(line_done),
        .I1(state__0[0]),
        .I2(line_done0),
        .O(line_done_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    line_done_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(line_done_i_1__0_n_0),
        .Q(line_done),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFF800000007FFF)) 
    \map_r_addr[10]_i_1 
       (.I0(\map_r_addr_reg[11]_0 [2]),
        .I1(\map_r_addr_reg[11]_0 [3]),
        .I2(\map_r_addr_reg[11]_0 [0]),
        .I3(\map_r_addr_reg[11]_0 [1]),
        .I4(\map_r_addr_reg[11]_0 [4]),
        .I5(\map_r_addr_reg[11]_0 [5]),
        .O(gen_line[6]));
  LUT4 #(
    .INIT(16'hAA9A)) 
    \map_r_addr[11]_i_1 
       (.I0(\map_r_addr_reg[11]_0 [6]),
        .I1(\map_r_addr_reg[11]_0 [5]),
        .I2(\map_r_addr_reg[11]_1 ),
        .I3(\map_r_addr_reg[11]_0 [4]),
        .O(\v_cnt_reg[7] ));
  LUT1 #(
    .INIT(2'h1)) 
    \map_r_addr[12]_i_1 
       (.I0(\map_r_addr_reg[12]_0 ),
        .O(gen_line[8]));
  LUT5 #(
    .INIT(32'h80007FFF)) 
    \map_r_addr[9]_i_1 
       (.I0(\map_r_addr_reg[11]_0 [1]),
        .I1(\map_r_addr_reg[11]_0 [0]),
        .I2(\map_r_addr_reg[11]_0 [3]),
        .I3(\map_r_addr_reg[11]_0 [2]),
        .I4(\map_r_addr_reg[11]_0 [4]),
        .O(gen_line[5]));
  FDRE #(
    .INIT(1'b0)) 
    \map_r_addr_reg[0] 
       (.C(s_axi_aclk),
        .CE(map_r_addr),
        .D(map_x[0]),
        .Q(\map_r_addr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \map_r_addr_reg[10] 
       (.C(s_axi_aclk),
        .CE(map_r_addr),
        .D(gen_line[6]),
        .Q(\map_r_addr_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \map_r_addr_reg[11] 
       (.C(s_axi_aclk),
        .CE(map_r_addr),
        .D(\v_cnt_reg[7] ),
        .Q(\map_r_addr_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \map_r_addr_reg[12] 
       (.C(s_axi_aclk),
        .CE(map_r_addr),
        .D(gen_line[8]),
        .Q(\map_r_addr_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \map_r_addr_reg[13] 
       (.C(s_axi_aclk),
        .CE(map_r_addr),
        .D(D[2]),
        .Q(\map_r_addr_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \map_r_addr_reg[1] 
       (.C(s_axi_aclk),
        .CE(map_r_addr),
        .D(map_x[1]),
        .Q(\map_r_addr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \map_r_addr_reg[2] 
       (.C(s_axi_aclk),
        .CE(map_r_addr),
        .D(map_x[2]),
        .Q(\map_r_addr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \map_r_addr_reg[3] 
       (.C(s_axi_aclk),
        .CE(map_r_addr),
        .D(map_x[3]),
        .Q(\map_r_addr_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \map_r_addr_reg[4] 
       (.C(s_axi_aclk),
        .CE(map_r_addr),
        .D(map_x[4]),
        .Q(\map_r_addr_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \map_r_addr_reg[5] 
       (.C(s_axi_aclk),
        .CE(map_r_addr),
        .D(map_x[5]),
        .Q(\map_r_addr_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \map_r_addr_reg[6] 
       (.C(s_axi_aclk),
        .CE(map_r_addr),
        .D(map_x[6]),
        .Q(\map_r_addr_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \map_r_addr_reg[7] 
       (.C(s_axi_aclk),
        .CE(map_r_addr),
        .D(D[0]),
        .Q(\map_r_addr_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \map_r_addr_reg[8] 
       (.C(s_axi_aclk),
        .CE(map_r_addr),
        .D(D[1]),
        .Q(\map_r_addr_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \map_r_addr_reg[9] 
       (.C(s_axi_aclk),
        .CE(map_r_addr),
        .D(gen_line[5]),
        .Q(\map_r_addr_reg_n_0_[9] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \map_x[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(map_x[0]),
        .O(\map_x[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F80)) 
    \map_x[1]_i_1 
       (.I0(map_x[0]),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(\map_x[5]_i_2_n_0 ),
        .I3(map_x[1]),
        .O(\map_x[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \map_x[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(map_x[2]),
        .I2(map_x[1]),
        .I3(map_x[0]),
        .O(\map_x[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \map_x[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(map_x[3]),
        .I2(map_x[2]),
        .I3(map_x[0]),
        .I4(map_x[1]),
        .O(\map_x[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \map_x[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(map_x[4]),
        .I2(map_x[3]),
        .I3(map_x[1]),
        .I4(map_x[0]),
        .I5(map_x[2]),
        .O(\map_x[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \map_x[5]_i_1 
       (.I0(\map_x[5]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .O(\map_x[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEEEEAEE)) 
    \map_x[5]_i_2 
       (.I0(line_done0),
        .I1(\map_x[5]_i_4_n_0 ),
        .I2(\FSM_onehot_state[1]_i_2__0_n_0 ),
        .I3(\pixel_addr_reg_n_0_[9] ),
        .I4(\pixel_addr_reg_n_0_[7] ),
        .I5(\pixel_addr_reg_n_0_[8] ),
        .O(\map_x[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \map_x[5]_i_3 
       (.I0(map_x[5]),
        .I1(map_x[2]),
        .I2(map_x[0]),
        .I3(map_x[1]),
        .I4(map_x[3]),
        .I5(map_x[4]),
        .O(\map_x[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \map_x[5]_i_4 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(\tile_pixel_reg_n_0_[2] ),
        .I2(\tile_pixel_reg_n_0_[0] ),
        .I3(\tile_pixel_reg_n_0_[1] ),
        .O(\map_x[5]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h70FF8000)) 
    \map_x[6]_i_1 
       (.I0(\map_x[6]_i_2_n_0 ),
        .I1(map_x[5]),
        .I2(\FSM_onehot_state_reg_n_0_[5] ),
        .I3(\map_x[5]_i_2_n_0 ),
        .I4(map_x[6]),
        .O(\map_x[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \map_x[6]_i_2 
       (.I0(map_x[4]),
        .I1(map_x[3]),
        .I2(map_x[1]),
        .I3(map_x[0]),
        .I4(map_x[2]),
        .O(\map_x[6]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \map_x_reg[0] 
       (.C(s_axi_aclk),
        .CE(\map_x[5]_i_2_n_0 ),
        .D(\map_x[0]_i_1_n_0 ),
        .Q(map_x[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \map_x_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\map_x[1]_i_1_n_0 ),
        .Q(map_x[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \map_x_reg[2] 
       (.C(s_axi_aclk),
        .CE(\map_x[5]_i_2_n_0 ),
        .D(\map_x[2]_i_1_n_0 ),
        .Q(map_x[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \map_x_reg[3] 
       (.C(s_axi_aclk),
        .CE(\map_x[5]_i_2_n_0 ),
        .D(\map_x[3]_i_1_n_0 ),
        .Q(map_x[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \map_x_reg[4] 
       (.C(s_axi_aclk),
        .CE(\map_x[5]_i_2_n_0 ),
        .D(\map_x[4]_i_1_n_0 ),
        .Q(map_x[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \map_x_reg[5] 
       (.C(s_axi_aclk),
        .CE(\map_x[5]_i_2_n_0 ),
        .D(\map_x[5]_i_3_n_0 ),
        .Q(map_x[5]),
        .R(\map_x[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \map_x_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\map_x[6]_i_1_n_0 ),
        .Q(map_x[6]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \pixel_addr[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(\pixel_addr_reg_n_0_[0] ),
        .O(\pixel_addr[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F80)) 
    \pixel_addr[1]_i_1 
       (.I0(\pixel_addr_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(state__0[1]),
        .I3(\pixel_addr_reg_n_0_[1] ),
        .O(\pixel_addr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \pixel_addr[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(\pixel_addr_reg_n_0_[2] ),
        .I2(\pixel_addr_reg_n_0_[0] ),
        .I3(\pixel_addr_reg_n_0_[1] ),
        .O(\pixel_addr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \pixel_addr[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(\pixel_addr_reg_n_0_[3] ),
        .I2(\pixel_addr_reg_n_0_[2] ),
        .I3(\pixel_addr_reg_n_0_[1] ),
        .I4(\pixel_addr_reg_n_0_[0] ),
        .O(\pixel_addr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \pixel_addr[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(\pixel_addr_reg_n_0_[4] ),
        .I2(\pixel_addr_reg_n_0_[3] ),
        .I3(\pixel_addr_reg_n_0_[0] ),
        .I4(\pixel_addr_reg_n_0_[1] ),
        .I5(\pixel_addr_reg_n_0_[2] ),
        .O(\pixel_addr[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \pixel_addr[5]_i_1 
       (.I0(\pixel_addr_reg_n_0_[5] ),
        .I1(\pixel_addr_reg_n_0_[4] ),
        .I2(\pixel_addr_reg_n_0_[2] ),
        .I3(\pixel_addr_reg_n_0_[1] ),
        .I4(\pixel_addr_reg_n_0_[0] ),
        .I5(\pixel_addr_reg_n_0_[3] ),
        .O(\pixel_addr[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT5 #(
    .INIT(32'h88882888)) 
    \pixel_addr[6]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(\pixel_addr_reg_n_0_[6] ),
        .I2(\pixel_addr_reg_n_0_[4] ),
        .I3(\pixel_addr_reg_n_0_[5] ),
        .I4(\pixel_addr[8]_i_3_n_0 ),
        .O(\pixel_addr[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8828888888888888)) 
    \pixel_addr[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(\pixel_addr_reg_n_0_[7] ),
        .I2(\pixel_addr_reg_n_0_[6] ),
        .I3(\pixel_addr[8]_i_3_n_0 ),
        .I4(\pixel_addr_reg_n_0_[5] ),
        .I5(\pixel_addr_reg_n_0_[4] ),
        .O(\pixel_addr[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \pixel_addr[8]_i_1 
       (.I0(state__0[1]),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .O(\pixel_addr[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA6AAAAAAAAAAAAA)) 
    \pixel_addr[8]_i_2 
       (.I0(\pixel_addr_reg_n_0_[8] ),
        .I1(\pixel_addr_reg_n_0_[4] ),
        .I2(\pixel_addr_reg_n_0_[5] ),
        .I3(\pixel_addr[8]_i_3_n_0 ),
        .I4(\pixel_addr_reg_n_0_[6] ),
        .I5(\pixel_addr_reg_n_0_[7] ),
        .O(\pixel_addr[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \pixel_addr[8]_i_3 
       (.I0(\pixel_addr_reg_n_0_[2] ),
        .I1(\pixel_addr_reg_n_0_[1] ),
        .I2(\pixel_addr_reg_n_0_[0] ),
        .I3(\pixel_addr_reg_n_0_[3] ),
        .O(\pixel_addr[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT5 #(
    .INIT(32'h88882888)) 
    \pixel_addr[9]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(\pixel_addr_reg_n_0_[9] ),
        .I2(\pixel_addr_reg_n_0_[8] ),
        .I3(\pixel_addr_reg_n_0_[7] ),
        .I4(\FSM_onehot_state[1]_i_2__0_n_0 ),
        .O(\pixel_addr[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_addr_reg[0] 
       (.C(s_axi_aclk),
        .CE(state__0[1]),
        .D(\pixel_addr[0]_i_1_n_0 ),
        .Q(\pixel_addr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_addr_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\pixel_addr[1]_i_1_n_0 ),
        .Q(\pixel_addr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_addr_reg[2] 
       (.C(s_axi_aclk),
        .CE(state__0[1]),
        .D(\pixel_addr[2]_i_1_n_0 ),
        .Q(\pixel_addr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_addr_reg[3] 
       (.C(s_axi_aclk),
        .CE(state__0[1]),
        .D(\pixel_addr[3]_i_1_n_0 ),
        .Q(\pixel_addr_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_addr_reg[4] 
       (.C(s_axi_aclk),
        .CE(state__0[1]),
        .D(\pixel_addr[4]_i_1_n_0 ),
        .Q(\pixel_addr_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_addr_reg[5] 
       (.C(s_axi_aclk),
        .CE(state__0[1]),
        .D(\pixel_addr[5]_i_1_n_0 ),
        .Q(\pixel_addr_reg_n_0_[5] ),
        .R(\pixel_addr[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_addr_reg[6] 
       (.C(s_axi_aclk),
        .CE(state__0[1]),
        .D(\pixel_addr[6]_i_1_n_0 ),
        .Q(\pixel_addr_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_addr_reg[7] 
       (.C(s_axi_aclk),
        .CE(state__0[1]),
        .D(\pixel_addr[7]_i_1_n_0 ),
        .Q(\pixel_addr_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_addr_reg[8] 
       (.C(s_axi_aclk),
        .CE(state__0[1]),
        .D(\pixel_addr[8]_i_2_n_0 ),
        .Q(\pixel_addr_reg_n_0_[8] ),
        .R(\pixel_addr[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_addr_reg[9] 
       (.C(s_axi_aclk),
        .CE(state__0[1]),
        .D(\pixel_addr[9]_i_1_n_0 ),
        .Q(\pixel_addr_reg_n_0_[9] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \tile_pixel[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(\tile_pixel_reg_n_0_[0] ),
        .O(\tile_pixel[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F80)) 
    \tile_pixel[1]_i_1 
       (.I0(\tile_pixel_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(state__0[1]),
        .I3(\tile_pixel_reg_n_0_[1] ),
        .O(\tile_pixel[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \tile_pixel[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(\tile_pixel_reg_n_0_[2] ),
        .I2(\tile_pixel_reg_n_0_[1] ),
        .I3(\tile_pixel_reg_n_0_[0] ),
        .O(\tile_pixel[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \tile_pixel_reg[0] 
       (.C(s_axi_aclk),
        .CE(state__0[1]),
        .D(\tile_pixel[0]_i_1_n_0 ),
        .Q(\tile_pixel_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tile_pixel_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\tile_pixel[1]_i_1_n_0 ),
        .Q(\tile_pixel_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \tile_pixel_reg[2] 
       (.C(s_axi_aclk),
        .CE(state__0[1]),
        .D(\tile_pixel[2]_i_1_n_0 ),
        .Q(\tile_pixel_reg_n_0_[2] ),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "blk_mem_buf_line,blk_mem_gen_v8_4_12,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "blk_mem_buf_line" *) 
(* X_CORE_INFO = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
module Block_top_VDP_0_0_blk_mem_buf_line
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
module Block_top_VDP_0_0_blk_mem_fin_line
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
module Block_top_VDP_0_0_blk_mem_gen_spr_att
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
module Block_top_VDP_0_0_blk_mem_gen_spr_data
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
module Block_top_VDP_0_0_blk_mem_gen_spr_line
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
module Block_top_VDP_0_0_blk_mem_tile_data
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
module Block_top_VDP_0_0_blk_mem_tile_map
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

// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Tue Aug 11 21:52:52 2026
// Host        : lovroLinuxM running 64-bit Ubuntu 24.04.4 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/lovro/ARES/ARES_fpga/ARES_fpga/ARES_fpga.gen/sources_1/bd/Block_top/ip/Block_top_VDP_0_0/Block_top_VDP_0_0_sim_netlist.v
// Design      : Block_top_VDP_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tftg256-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Block_top_VDP_0_0,VDP,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "VDP,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module Block_top_VDP_0_0
   (map_cpu_addr,
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
    vga_b);
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 MAP_CPU_BRAM ADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME MAP_CPU_BRAM, MASTER_TYPE BRAM_CTRL, MEM_SIZE 32768, READ_WRITE_MODE READ_WRITE, MEM_WIDTH 32, MEM_ECC NONE, READ_LATENCY 1" *) input [12:0]map_cpu_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 MAP_CPU_BRAM DIN" *) input [31:0]map_cpu_din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 MAP_CPU_BRAM DOUT" *) output [31:0]map_cpu_dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 MAP_CPU_BRAM EN" *) input map_cpu_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 MAP_CPU_BRAM WE" *) input [3:0]map_cpu_wen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 MAP_CPU_BRAM CLK" *) input map_cpu_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 DATA_CPU_BRAM ADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA_CPU_BRAM, MASTER_TYPE BRAM_CTRL, MEM_SIZE 65536, READ_WRITE_MODE READ_WRITE, MEM_WIDTH 32, MEM_ECC NONE, READ_LATENCY 1" *) input [13:0]data_cpu_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 DATA_CPU_BRAM DIN" *) input [31:0]data_cpu_din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 DATA_CPU_BRAM DOUT" *) output [31:0]data_cpu_dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 DATA_CPU_BRAM EN" *) input data_cpu_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 DATA_CPU_BRAM WE" *) input [3:0]data_cpu_wen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 DATA_CPU_BRAM CLK" *) input data_cpu_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s_axi_aclk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_aclk, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Block_top_mig_axi_wrapper_0_0_ui_clk, INSERT_VIP 0" *) input s_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s_axi_aresetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;
  output h_sync;
  output v_sync;
  output [3:0]vga_r;
  output [3:0]vga_g;
  output [3:0]vga_b;

  wire [13:0]data_cpu_addr;
  wire data_cpu_clk;
  wire [31:0]data_cpu_din;
  wire [31:0]data_cpu_dout;
  wire data_cpu_en;
  wire [3:0]data_cpu_wen;
  wire h_sync;
  wire [12:0]map_cpu_addr;
  wire map_cpu_clk;
  wire [31:0]map_cpu_din;
  wire [31:0]map_cpu_dout;
  wire map_cpu_en;
  wire [3:0]map_cpu_wen;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire v_sync;
  wire [3:0]vga_b;
  wire [3:0]vga_g;
  wire [3:0]vga_r;

  (* STATE_C0 = "12'b000000000100" *) 
  (* STATE_C1 = "12'b000000001000" *) 
  (* STATE_C2 = "12'b000000010000" *) 
  (* STATE_START = "12'b000000000010" *) 
  (* STATE_WAIT = "12'b000000000001" *) 
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
       (.data_cpu_addr(data_cpu_addr),
        .data_cpu_clk(data_cpu_clk),
        .data_cpu_din(data_cpu_din),
        .data_cpu_dout(data_cpu_dout),
        .data_cpu_en(data_cpu_en),
        .data_cpu_wen(data_cpu_wen),
        .h_sync(h_sync),
        .map_cpu_addr(map_cpu_addr),
        .map_cpu_clk(map_cpu_clk),
        .map_cpu_din(map_cpu_din),
        .map_cpu_dout(map_cpu_dout),
        .map_cpu_en(map_cpu_en),
        .map_cpu_wen(map_cpu_wen),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .v_sync(v_sync),
        .vga_b(vga_b),
        .vga_g(vga_g),
        .vga_r(vga_r));
endmodule

(* ORIG_REF_NAME = "VDP" *) (* STATE_C0 = "12'b000000000100" *) (* STATE_C1 = "12'b000000001000" *) 
(* STATE_C2 = "12'b000000010000" *) (* STATE_START = "12'b000000000010" *) (* STATE_WAIT = "12'b000000000001" *) 
(* VGA_H_ACTIVE = "640" *) (* VGA_H_BACK_PORCH = "48" *) (* VGA_H_FRONT_PORCH = "16" *) 
(* VGA_H_SYNC = "96" *) (* VGA_H_TOTAL = "800" *) (* VGA_V_ACTIVE = "480" *) 
(* VGA_V_BACK_PORCH = "31" *) (* VGA_V_FRONT_PORCH = "11" *) (* VGA_V_SYNC = "2" *) 
(* VGA_V_TOTAL = "524" *) 
module Block_top_VDP_0_0_VDP
   (map_cpu_addr,
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
    vga_b);
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 MAP_CPU_BRAM ADDR" *) input [12:0]map_cpu_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 MAP_CPU_BRAM DIN" *) input [31:0]map_cpu_din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 MAP_CPU_BRAM DOUT" *) output [31:0]map_cpu_dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 MAP_CPU_BRAM EN" *) input map_cpu_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 MAP_CPU_BRAM WE" *) input [3:0]map_cpu_wen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 MAP_CPU_BRAM CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME MAP_CPU_BRAM, MASTER_TYPE BRAM_CTRL, MEM_SIZE 32768, READ_WRITE_MODE READ_WRITE" *) input map_cpu_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 DATA_CPU_BRAM ADDR" *) input [13:0]data_cpu_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 DATA_CPU_BRAM DIN" *) input [31:0]data_cpu_din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 DATA_CPU_BRAM DOUT" *) output [31:0]data_cpu_dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 DATA_CPU_BRAM EN" *) input data_cpu_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 DATA_CPU_BRAM WE" *) input [3:0]data_cpu_wen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 DATA_CPU_BRAM CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA_CPU_BRAM, MASTER_TYPE BRAM_CTRL, MEM_SIZE 65536, READ_WRITE_MODE READ_WRITE" *) input data_cpu_clk;
  input s_axi_aclk;
  input s_axi_aresetn;
  output h_sync;
  output v_sync;
  output [3:0]vga_r;
  output [3:0]vga_g;
  output [3:0]vga_b;

  wire T0_gen_n_76;
  wire T0_gen_n_77;
  wire T0_gen_n_78;
  wire T0_gen_n_79;
  wire VGA_clk;
  wire \VGA_clk_cnt[0]_i_1_n_0 ;
  wire \VGA_clk_cnt[1]_i_1_n_0 ;
  wire \VGA_clk_cnt_reg_n_0_[0] ;
  wire [13:0]data_cpu_addr;
  wire data_cpu_clk;
  wire [31:0]data_cpu_din;
  wire [31:0]data_cpu_dout;
  wire data_cpu_en;
  wire [3:0]data_cpu_wen;
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
  wire gen_fin_pixel0;
  wire \gen_fin_pixel[3]_i_1_n_0 ;
  wire \gen_fin_pixel[9]_i_2_n_0 ;
  wire [9:0]gen_fin_pixel_reg;
  wire [9:0]gen_fin_pixel_reg1__0;
  wire [9:0]gen_fin_pixel_reg__0;
  wire [1:1]gen_fin_state;
  wire \h_cnt[0]_i_1_n_0 ;
  wire \h_cnt[10]_i_1_n_0 ;
  wire \h_cnt[10]_i_2_n_0 ;
  wire \h_cnt[10]_i_3_n_0 ;
  wire \h_cnt[10]_i_4_n_0 ;
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
  wire [12:0]map_cpu_addr;
  wire map_cpu_clk;
  wire [31:0]map_cpu_din;
  wire [31:0]map_cpu_dout;
  wire map_cpu_en;
  wire [3:0]map_cpu_wen;
  wire [9:0]p_0_in;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [11:0]t0_dout;
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
  wire \v_cnt_reg_n_0_[0] ;
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

  (* FSM_ENCODED_STATES = "STATE_WAIT:000000000001,STATE_START:000000000010,STATE_C0:000000000100," *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_gen_fin_state_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(T0_gen_n_78),
        .Q(gen_fin_pixel0),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "STATE_WAIT:000000000001,STATE_START:000000000010,STATE_C0:000000000100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_fin_state_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(T0_gen_n_77),
        .Q(gen_fin_state),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "STATE_WAIT:000000000001,STATE_START:000000000010,STATE_C0:000000000100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_fin_state_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(T0_gen_n_76),
        .Q(gen_fin_data),
        .R(1'b0));
  Block_top_VDP_0_0_VDP_tile_gen T0_gen
       (.D(t0_dout),
        .\FSM_onehot_gen_fin_state[2]_i_2_0 ({h_cnt_reg__0,h_cnt_reg}),
        .\FSM_onehot_gen_fin_state_reg[0] (T0_gen_n_77),
        .\FSM_onehot_gen_fin_state_reg[1] (T0_gen_n_76),
        .\FSM_onehot_gen_fin_state_reg[2] (T0_gen_n_78),
        .Q(gen_fin_pixel_reg),
        .data_cpu_addr(data_cpu_addr),
        .data_cpu_clk(data_cpu_clk),
        .data_cpu_din(data_cpu_din),
        .data_cpu_dout(data_cpu_dout),
        .data_cpu_en(data_cpu_en),
        .data_cpu_wen(data_cpu_wen),
        .gen_fin_data(gen_fin_data),
        .gen_fin_pixel0(gen_fin_pixel0),
        .gen_fin_state(gen_fin_state),
        .map_cpu_addr(map_cpu_addr),
        .map_cpu_clk(map_cpu_clk),
        .map_cpu_din(map_cpu_din),
        .map_cpu_dout(map_cpu_dout),
        .map_cpu_en(map_cpu_en),
        .map_cpu_wen(map_cpu_wen),
        .\map_r_addr_reg[13]_0 ({\v_cnt_reg_n_0_[9] ,\v_cnt_reg_n_0_[8] ,\v_cnt_reg_n_0_[7] ,\v_cnt_reg_n_0_[6] ,\v_cnt_reg_n_0_[5] ,\v_cnt_reg_n_0_[4] ,\v_cnt_reg_n_0_[3] ,\v_cnt_reg_n_0_[2] ,\v_cnt_reg_n_0_[1] ,\v_cnt_reg_n_0_[0] }),
        .s_axi_aclk(s_axi_aclk),
        .\v_cnt_reg[5] (T0_gen_n_79));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \VGA_clk_cnt[0]_i_1 
       (.I0(\VGA_clk_cnt_reg_n_0_[0] ),
        .O(\VGA_clk_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
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
        .addrb({fin_line_buf_i_3_n_0,gen_fin_pixel_reg1__0}),
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
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT1 #(
    .INIT(2'h1)) 
    fin_line_buf_i_3
       (.I0(\v_cnt_reg_n_0_[0] ),
        .O(fin_line_buf_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    fin_line_buf_i_4
       (.I0(h_cnt_reg__0[10]),
        .I1(\v_cnt_reg_n_0_[0] ),
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
  LUT3 #(
    .INIT(8'hCE)) 
    gen_fin_buf_en_i_1
       (.I0(gen_fin_buf_en_reg_n_0),
        .I1(gen_fin_data),
        .I2(gen_fin_pixel0),
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
        .D(t0_dout[0]),
        .Q(\gen_fin_data_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fin_data_reg[10] 
       (.C(s_axi_aclk),
        .CE(gen_fin_data),
        .D(t0_dout[10]),
        .Q(\gen_fin_data_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fin_data_reg[11] 
       (.C(s_axi_aclk),
        .CE(gen_fin_data),
        .D(t0_dout[11]),
        .Q(\gen_fin_data_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fin_data_reg[1] 
       (.C(s_axi_aclk),
        .CE(gen_fin_data),
        .D(t0_dout[1]),
        .Q(\gen_fin_data_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fin_data_reg[2] 
       (.C(s_axi_aclk),
        .CE(gen_fin_data),
        .D(t0_dout[2]),
        .Q(\gen_fin_data_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fin_data_reg[3] 
       (.C(s_axi_aclk),
        .CE(gen_fin_data),
        .D(t0_dout[3]),
        .Q(\gen_fin_data_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fin_data_reg[4] 
       (.C(s_axi_aclk),
        .CE(gen_fin_data),
        .D(t0_dout[4]),
        .Q(\gen_fin_data_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fin_data_reg[5] 
       (.C(s_axi_aclk),
        .CE(gen_fin_data),
        .D(t0_dout[5]),
        .Q(\gen_fin_data_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fin_data_reg[6] 
       (.C(s_axi_aclk),
        .CE(gen_fin_data),
        .D(t0_dout[6]),
        .Q(\gen_fin_data_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fin_data_reg[7] 
       (.C(s_axi_aclk),
        .CE(gen_fin_data),
        .D(t0_dout[7]),
        .Q(\gen_fin_data_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fin_data_reg[8] 
       (.C(s_axi_aclk),
        .CE(gen_fin_data),
        .D(t0_dout[8]),
        .Q(\gen_fin_data_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fin_data_reg[9] 
       (.C(s_axi_aclk),
        .CE(gen_fin_data),
        .D(t0_dout[9]),
        .Q(\gen_fin_data_reg_n_0_[9] ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_fin_pixel[0]_i_1 
       (.I0(gen_fin_pixel_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gen_fin_pixel[1]_i_1 
       (.I0(gen_fin_pixel_reg[0]),
        .I1(gen_fin_pixel_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \gen_fin_pixel[2]_i_1 
       (.I0(gen_fin_pixel_reg[2]),
        .I1(gen_fin_pixel_reg[0]),
        .I2(gen_fin_pixel_reg[1]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \gen_fin_pixel[3]_i_1 
       (.I0(gen_fin_pixel_reg[3]),
        .I1(gen_fin_pixel_reg[2]),
        .I2(gen_fin_pixel_reg[0]),
        .I3(gen_fin_pixel_reg[1]),
        .O(\gen_fin_pixel[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gen_fin_pixel[6]_i_1 
       (.I0(gen_fin_pixel_reg[6]),
        .I1(\gen_fin_pixel[9]_i_2_n_0 ),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \gen_fin_pixel[7]_i_1 
       (.I0(gen_fin_pixel_reg[7]),
        .I1(\gen_fin_pixel[9]_i_2_n_0 ),
        .I2(gen_fin_pixel_reg[6]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \gen_fin_pixel[8]_i_1 
       (.I0(gen_fin_pixel_reg[8]),
        .I1(gen_fin_pixel_reg[6]),
        .I2(\gen_fin_pixel[9]_i_2_n_0 ),
        .I3(gen_fin_pixel_reg[7]),
        .O(p_0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
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
        .R(gen_fin_pixel0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fin_pixel_reg[1] 
       (.C(s_axi_aclk),
        .CE(gen_fin_data),
        .D(p_0_in[1]),
        .Q(gen_fin_pixel_reg[1]),
        .R(gen_fin_pixel0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fin_pixel_reg[2] 
       (.C(s_axi_aclk),
        .CE(gen_fin_data),
        .D(p_0_in[2]),
        .Q(gen_fin_pixel_reg[2]),
        .R(gen_fin_pixel0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fin_pixel_reg[3] 
       (.C(s_axi_aclk),
        .CE(gen_fin_data),
        .D(\gen_fin_pixel[3]_i_1_n_0 ),
        .Q(gen_fin_pixel_reg[3]),
        .R(gen_fin_pixel0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fin_pixel_reg[4] 
       (.C(s_axi_aclk),
        .CE(gen_fin_data),
        .D(p_0_in[4]),
        .Q(gen_fin_pixel_reg[4]),
        .R(gen_fin_pixel0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fin_pixel_reg[5] 
       (.C(s_axi_aclk),
        .CE(gen_fin_data),
        .D(p_0_in[5]),
        .Q(gen_fin_pixel_reg[5]),
        .R(gen_fin_pixel0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fin_pixel_reg[6] 
       (.C(s_axi_aclk),
        .CE(gen_fin_data),
        .D(p_0_in[6]),
        .Q(gen_fin_pixel_reg[6]),
        .R(gen_fin_pixel0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fin_pixel_reg[7] 
       (.C(s_axi_aclk),
        .CE(gen_fin_data),
        .D(p_0_in[7]),
        .Q(gen_fin_pixel_reg[7]),
        .R(gen_fin_pixel0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fin_pixel_reg[8] 
       (.C(s_axi_aclk),
        .CE(gen_fin_data),
        .D(p_0_in[8]),
        .Q(gen_fin_pixel_reg[8]),
        .R(gen_fin_pixel0));
  FDRE #(
    .INIT(1'b0)) 
    \gen_fin_pixel_reg[9] 
       (.C(s_axi_aclk),
        .CE(gen_fin_data),
        .D(p_0_in[9]),
        .Q(gen_fin_pixel_reg[9]),
        .R(gen_fin_pixel0));
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
  LUT6 #(
    .INIT(64'hAAAAAAAEFFFFFFFF)) 
    \h_cnt[10]_i_1 
       (.I0(\v_cnt[10]_i_6_n_0 ),
        .I1(\v_cnt[10]_i_5_n_0 ),
        .I2(h_cnt_reg__0[10]),
        .I3(\h_cnt[10]_i_3_n_0 ),
        .I4(\v_cnt[10]_i_4_n_0 ),
        .I5(s_axi_aresetn),
        .O(\h_cnt[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA6AAAAAAA)) 
    \h_cnt[10]_i_2 
       (.I0(h_cnt_reg__0[10]),
        .I1(h_cnt_reg__0[8]),
        .I2(h_cnt_reg__0[9]),
        .I3(h_cnt_reg__0[7]),
        .I4(h_cnt_reg__0[6]),
        .I5(\h_cnt[10]_i_4_n_0 ),
        .O(\h_cnt[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \h_cnt[10]_i_3 
       (.I0(h_cnt_reg__0[8]),
        .I1(h_cnt_reg__0[9]),
        .O(\h_cnt[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \h_cnt[10]_i_4 
       (.I0(h_cnt_reg__0[3]),
        .I1(h_cnt_reg[1]),
        .I2(h_cnt_reg[0]),
        .I3(h_cnt_reg[2]),
        .I4(h_cnt_reg__0[5]),
        .I5(h_cnt_reg__0[4]),
        .O(\h_cnt[10]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \h_cnt[1]_i_1 
       (.I0(h_cnt_reg[0]),
        .I1(h_cnt_reg[1]),
        .O(\h_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \h_cnt[2]_i_1 
       (.I0(h_cnt_reg[2]),
        .I1(h_cnt_reg[0]),
        .I2(h_cnt_reg[1]),
        .O(\h_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \h_cnt[3]_i_1 
       (.I0(h_cnt_reg__0[3]),
        .I1(h_cnt_reg[1]),
        .I2(h_cnt_reg[0]),
        .I3(h_cnt_reg[2]),
        .O(\h_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hAA6A)) 
    \h_cnt[6]_i_1 
       (.I0(h_cnt_reg__0[6]),
        .I1(h_cnt_reg__0[4]),
        .I2(h_cnt_reg__0[5]),
        .I3(\h_cnt[8]_i_2_n_0 ),
        .O(\h_cnt[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \h_cnt[8]_i_2 
       (.I0(h_cnt_reg[2]),
        .I1(h_cnt_reg[0]),
        .I2(h_cnt_reg[1]),
        .I3(h_cnt_reg__0[3]),
        .O(\h_cnt[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hAAAA6AAA)) 
    \h_cnt[9]_i_1 
       (.I0(h_cnt_reg__0[9]),
        .I1(h_cnt_reg__0[8]),
        .I2(h_cnt_reg__0[7]),
        .I3(h_cnt_reg__0[6]),
        .I4(\h_cnt[10]_i_4_n_0 ),
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
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \v_cnt[10]_i_4 
       (.I0(h_cnt_reg__0[5]),
        .I1(h_cnt_reg__0[7]),
        .I2(h_cnt_reg__0[6]),
        .O(\v_cnt[10]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
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
       (.I0(T0_gen_n_79),
        .I1(\v_cnt_reg_n_0_[4] ),
        .I2(\v_cnt_reg_n_0_[0] ),
        .I3(\v_cnt_reg_n_0_[1] ),
        .I4(\v_cnt_reg_n_0_[9] ),
        .I5(v_sync_INST_0_i_2_n_0),
        .O(\v_cnt[10]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \v_cnt[1]_i_1 
       (.I0(\v_cnt_reg_n_0_[1] ),
        .I1(\v_cnt_reg_n_0_[0] ),
        .O(\v_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0078)) 
    \v_cnt[2]_i_1 
       (.I0(\v_cnt_reg_n_0_[1] ),
        .I1(\v_cnt_reg_n_0_[0] ),
        .I2(\v_cnt_reg_n_0_[2] ),
        .I3(\v_cnt[10]_i_6_n_0 ),
        .O(\v_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h00007F80)) 
    \v_cnt[3]_i_1 
       (.I0(\v_cnt_reg_n_0_[0] ),
        .I1(\v_cnt_reg_n_0_[1] ),
        .I2(\v_cnt_reg_n_0_[2] ),
        .I3(\v_cnt_reg_n_0_[3] ),
        .I4(\v_cnt[10]_i_6_n_0 ),
        .O(\v_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \v_cnt[4]_i_1 
       (.I0(\v_cnt_reg_n_0_[4] ),
        .I1(\v_cnt_reg_n_0_[3] ),
        .I2(\v_cnt_reg_n_0_[0] ),
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
        .I4(\v_cnt_reg_n_0_[0] ),
        .I5(\v_cnt_reg_n_0_[3] ),
        .O(\v_cnt[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hA6)) 
    \v_cnt[6]_i_1 
       (.I0(\v_cnt_reg_n_0_[6] ),
        .I1(\v_cnt_reg_n_0_[5] ),
        .I2(\vga_r[3]_INST_0_i_1_n_0 ),
        .O(\v_cnt[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h9AAA)) 
    \v_cnt[7]_i_1 
       (.I0(\v_cnt_reg_n_0_[7] ),
        .I1(\vga_r[3]_INST_0_i_1_n_0 ),
        .I2(\v_cnt_reg_n_0_[5] ),
        .I3(\v_cnt_reg_n_0_[6] ),
        .O(\v_cnt[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hAA6AAAAA)) 
    \v_cnt[8]_i_1 
       (.I0(\v_cnt_reg_n_0_[8] ),
        .I1(\v_cnt_reg_n_0_[6] ),
        .I2(\v_cnt_reg_n_0_[5] ),
        .I3(\vga_r[3]_INST_0_i_1_n_0 ),
        .I4(\v_cnt_reg_n_0_[7] ),
        .O(\v_cnt[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h00F7FF00)) 
    \v_cnt[9]_i_1 
       (.I0(\v_cnt_reg_n_0_[0] ),
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
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
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
        .Q(\v_cnt_reg_n_0_[0] ),
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
       (.I0(T0_gen_n_79),
        .I1(\v_cnt_reg_n_0_[4] ),
        .I2(\v_cnt_reg_n_0_[1] ),
        .I3(\v_cnt_reg_n_0_[9] ),
        .I4(v_sync_INST_0_i_2_n_0),
        .O(v_sync));
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
        .I2(T0_gen_n_79),
        .I3(\vga_r[3]_INST_0_i_1_n_0 ),
        .I4(\vga_r[3]_INST_0_i_2_n_0 ),
        .I5(\vga_r[3]_INST_0_i_3_n_0 ),
        .O(vga_b[0]));
  LUT6 #(
    .INIT(64'h000000000000A8AA)) 
    \vga_b[1]_INST_0 
       (.I0(vga_rgb[1]),
        .I1(\v_cnt_reg_n_0_[8] ),
        .I2(T0_gen_n_79),
        .I3(\vga_r[3]_INST_0_i_1_n_0 ),
        .I4(\vga_r[3]_INST_0_i_2_n_0 ),
        .I5(\vga_r[3]_INST_0_i_3_n_0 ),
        .O(vga_b[1]));
  LUT6 #(
    .INIT(64'h000000000000A8AA)) 
    \vga_b[2]_INST_0 
       (.I0(vga_rgb[2]),
        .I1(\v_cnt_reg_n_0_[8] ),
        .I2(T0_gen_n_79),
        .I3(\vga_r[3]_INST_0_i_1_n_0 ),
        .I4(\vga_r[3]_INST_0_i_2_n_0 ),
        .I5(\vga_r[3]_INST_0_i_3_n_0 ),
        .O(vga_b[2]));
  LUT6 #(
    .INIT(64'h000000000000A8AA)) 
    \vga_b[3]_INST_0 
       (.I0(vga_rgb[3]),
        .I1(\v_cnt_reg_n_0_[8] ),
        .I2(T0_gen_n_79),
        .I3(\vga_r[3]_INST_0_i_1_n_0 ),
        .I4(\vga_r[3]_INST_0_i_2_n_0 ),
        .I5(\vga_r[3]_INST_0_i_3_n_0 ),
        .O(vga_b[3]));
  LUT6 #(
    .INIT(64'h000000000000A8AA)) 
    \vga_g[0]_INST_0 
       (.I0(vga_rgb[4]),
        .I1(\v_cnt_reg_n_0_[8] ),
        .I2(T0_gen_n_79),
        .I3(\vga_r[3]_INST_0_i_1_n_0 ),
        .I4(\vga_r[3]_INST_0_i_2_n_0 ),
        .I5(\vga_r[3]_INST_0_i_3_n_0 ),
        .O(vga_g[0]));
  LUT6 #(
    .INIT(64'h000000000000A8AA)) 
    \vga_g[1]_INST_0 
       (.I0(vga_rgb[5]),
        .I1(\v_cnt_reg_n_0_[8] ),
        .I2(T0_gen_n_79),
        .I3(\vga_r[3]_INST_0_i_1_n_0 ),
        .I4(\vga_r[3]_INST_0_i_2_n_0 ),
        .I5(\vga_r[3]_INST_0_i_3_n_0 ),
        .O(vga_g[1]));
  LUT6 #(
    .INIT(64'h000000000000A8AA)) 
    \vga_g[2]_INST_0 
       (.I0(vga_rgb[6]),
        .I1(\v_cnt_reg_n_0_[8] ),
        .I2(T0_gen_n_79),
        .I3(\vga_r[3]_INST_0_i_1_n_0 ),
        .I4(\vga_r[3]_INST_0_i_2_n_0 ),
        .I5(\vga_r[3]_INST_0_i_3_n_0 ),
        .O(vga_g[2]));
  LUT6 #(
    .INIT(64'h000000000000A8AA)) 
    \vga_g[3]_INST_0 
       (.I0(vga_rgb[7]),
        .I1(\v_cnt_reg_n_0_[8] ),
        .I2(T0_gen_n_79),
        .I3(\vga_r[3]_INST_0_i_1_n_0 ),
        .I4(\vga_r[3]_INST_0_i_2_n_0 ),
        .I5(\vga_r[3]_INST_0_i_3_n_0 ),
        .O(vga_g[3]));
  LUT6 #(
    .INIT(64'h000000000000A8AA)) 
    \vga_r[0]_INST_0 
       (.I0(vga_rgb[8]),
        .I1(\v_cnt_reg_n_0_[8] ),
        .I2(T0_gen_n_79),
        .I3(\vga_r[3]_INST_0_i_1_n_0 ),
        .I4(\vga_r[3]_INST_0_i_2_n_0 ),
        .I5(\vga_r[3]_INST_0_i_3_n_0 ),
        .O(vga_r[0]));
  LUT6 #(
    .INIT(64'h000000000000A8AA)) 
    \vga_r[1]_INST_0 
       (.I0(vga_rgb[9]),
        .I1(\v_cnt_reg_n_0_[8] ),
        .I2(T0_gen_n_79),
        .I3(\vga_r[3]_INST_0_i_1_n_0 ),
        .I4(\vga_r[3]_INST_0_i_2_n_0 ),
        .I5(\vga_r[3]_INST_0_i_3_n_0 ),
        .O(vga_r[1]));
  LUT6 #(
    .INIT(64'h000000000000A8AA)) 
    \vga_r[2]_INST_0 
       (.I0(vga_rgb[10]),
        .I1(\v_cnt_reg_n_0_[8] ),
        .I2(T0_gen_n_79),
        .I3(\vga_r[3]_INST_0_i_1_n_0 ),
        .I4(\vga_r[3]_INST_0_i_2_n_0 ),
        .I5(\vga_r[3]_INST_0_i_3_n_0 ),
        .O(vga_r[2]));
  LUT6 #(
    .INIT(64'h000000000000A8AA)) 
    \vga_r[3]_INST_0 
       (.I0(vga_rgb[11]),
        .I1(\v_cnt_reg_n_0_[8] ),
        .I2(T0_gen_n_79),
        .I3(\vga_r[3]_INST_0_i_1_n_0 ),
        .I4(\vga_r[3]_INST_0_i_2_n_0 ),
        .I5(\vga_r[3]_INST_0_i_3_n_0 ),
        .O(vga_r[3]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \vga_r[3]_INST_0_i_1 
       (.I0(\v_cnt_reg_n_0_[3] ),
        .I1(\v_cnt_reg_n_0_[0] ),
        .I2(\v_cnt_reg_n_0_[1] ),
        .I3(\v_cnt_reg_n_0_[2] ),
        .I4(\v_cnt_reg_n_0_[4] ),
        .O(\vga_r[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFEFFFFFFFE)) 
    \vga_r[3]_INST_0_i_2 
       (.I0(\vga_r[3]_INST_0_i_4_n_0 ),
        .I1(h_cnt_reg__0[10]),
        .I2(\v_cnt_reg_n_0_[10] ),
        .I3(\v_cnt_reg_n_0_[9] ),
        .I4(\vga_r[3]_INST_0_i_5_n_0 ),
        .I5(\vga_r[3]_INST_0_i_6_n_0 ),
        .O(\vga_r[3]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0007)) 
    \vga_r[3]_INST_0_i_5 
       (.I0(h_cnt_reg__0[5]),
        .I1(h_cnt_reg__0[4]),
        .I2(h_cnt_reg__0[7]),
        .I3(h_cnt_reg__0[6]),
        .O(\vga_r[3]_INST_0_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \vga_r[3]_INST_0_i_6 
       (.I0(h_cnt_reg__0[10]),
        .I1(h_cnt_reg__0[9]),
        .I2(h_cnt_reg__0[8]),
        .O(\vga_r[3]_INST_0_i_6_n_0 ));
endmodule

(* ORIG_REF_NAME = "VDP_tile_gen" *) 
module Block_top_VDP_0_0_VDP_tile_gen
   (D,
    map_cpu_dout,
    data_cpu_dout,
    \FSM_onehot_gen_fin_state_reg[1] ,
    \FSM_onehot_gen_fin_state_reg[0] ,
    \FSM_onehot_gen_fin_state_reg[2] ,
    \v_cnt_reg[5] ,
    s_axi_aclk,
    Q,
    map_cpu_clk,
    map_cpu_en,
    map_cpu_wen,
    map_cpu_addr,
    map_cpu_din,
    data_cpu_clk,
    data_cpu_en,
    data_cpu_wen,
    data_cpu_addr,
    data_cpu_din,
    gen_fin_state,
    gen_fin_pixel0,
    gen_fin_data,
    \map_r_addr_reg[13]_0 ,
    \FSM_onehot_gen_fin_state[2]_i_2_0 );
  output [11:0]D;
  output [31:0]map_cpu_dout;
  output [31:0]data_cpu_dout;
  output \FSM_onehot_gen_fin_state_reg[1] ;
  output \FSM_onehot_gen_fin_state_reg[0] ;
  output \FSM_onehot_gen_fin_state_reg[2] ;
  output \v_cnt_reg[5] ;
  input s_axi_aclk;
  input [9:0]Q;
  input map_cpu_clk;
  input map_cpu_en;
  input [3:0]map_cpu_wen;
  input [12:0]map_cpu_addr;
  input [31:0]map_cpu_din;
  input data_cpu_clk;
  input data_cpu_en;
  input [3:0]data_cpu_wen;
  input [13:0]data_cpu_addr;
  input [31:0]data_cpu_din;
  input [0:0]gen_fin_state;
  input gen_fin_pixel0;
  input [0:0]gen_fin_data;
  input [9:0]\map_r_addr_reg[13]_0 ;
  input [10:0]\FSM_onehot_gen_fin_state[2]_i_2_0 ;

  wire [11:0]D;
  wire [10:0]\FSM_onehot_gen_fin_state[2]_i_2_0 ;
  wire \FSM_onehot_gen_fin_state[2]_i_2_n_0 ;
  wire \FSM_onehot_gen_fin_state[2]_i_3_n_0 ;
  wire \FSM_onehot_gen_fin_state[2]_i_4_n_0 ;
  wire \FSM_onehot_gen_fin_state[2]_i_5_n_0 ;
  wire \FSM_onehot_gen_fin_state[2]_i_6_n_0 ;
  wire \FSM_onehot_gen_fin_state[2]_i_7_n_0 ;
  wire \FSM_onehot_gen_fin_state_reg[0] ;
  wire \FSM_onehot_gen_fin_state_reg[1] ;
  wire \FSM_onehot_gen_fin_state_reg[2] ;
  wire \FSM_onehot_state[1]_i_2_n_0 ;
  wire \FSM_onehot_state[1]_i_3_n_0 ;
  wire \FSM_onehot_state[5]_i_1_n_0 ;
  wire \FSM_onehot_state[5]_i_2_n_0 ;
  wire \FSM_onehot_state[5]_i_3_n_0 ;
  wire \FSM_onehot_state[5]_i_4_n_0 ;
  wire \FSM_onehot_state[5]_i_5_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[5] ;
  wire [9:0]Q;
  wire [13:0]data_cpu_addr;
  wire data_cpu_clk;
  wire [31:0]data_cpu_din;
  wire [31:0]data_cpu_dout;
  wire data_cpu_en;
  wire [3:0]data_cpu_wen;
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
  wire [0:0]gen_fin_data;
  wire gen_fin_pixel0;
  wire [0:0]gen_fin_state;
  wire [9:1]gen_line;
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
  wire line_buf_i_32_n_0;
  wire line_buf_i_33_n_0;
  wire line_buf_i_34_n_0;
  wire line_buf_i_8_n_0;
  wire line_buf_i_9_n_0;
  wire line_buf_n_16;
  wire line_buf_n_17;
  wire line_buf_n_18;
  wire line_buf_n_19;
  wire line_done0;
  wire line_done_i_1_n_0;
  wire [9:0]map_a_dout;
  wire [12:0]map_cpu_addr;
  wire map_cpu_clk;
  wire [31:0]map_cpu_din;
  wire [31:0]map_cpu_dout;
  wire map_cpu_en;
  wire [3:0]map_cpu_wen;
  wire [0:0]map_r_addr;
  wire \map_r_addr[13]_i_2_n_0 ;
  wire \map_r_addr[7]_i_1_n_0 ;
  wire \map_r_addr[8]_i_1_n_0 ;
  wire [9:0]\map_r_addr_reg[13]_0 ;
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
  wire \pixel_addr[9]_i_2_n_0 ;
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
  wire t0_done;
  wire \tile_pixel[0]_i_1_n_0 ;
  wire \tile_pixel[1]_i_1_n_0 ;
  wire \tile_pixel[2]_i_1_n_0 ;
  wire \tile_pixel_reg_n_0_[0] ;
  wire \tile_pixel_reg_n_0_[1] ;
  wire \tile_pixel_reg_n_0_[2] ;
  wire \v_cnt_reg[5] ;
  wire [63:0]NLW_Tile_DATA_mem_dina_UNCONNECTED;
  wire [15:0]NLW_Tile_MAP_mem_dina_UNCONNECTED;
  wire [15:10]NLW_Tile_MAP_mem_douta_UNCONNECTED;
  wire [15:0]NLW_line_buf_dinb_UNCONNECTED;
  wire [15:0]NLW_line_buf_douta_UNCONNECTED;

  LUT6 #(
    .INIT(64'hAAAABBBBFFFA0000)) 
    \FSM_onehot_gen_fin_state[0]_i_1 
       (.I0(gen_fin_data),
        .I1(gen_fin_state),
        .I2(\FSM_onehot_state[5]_i_2_n_0 ),
        .I3(\FSM_onehot_gen_fin_state[2]_i_2_n_0 ),
        .I4(gen_fin_pixel0),
        .I5(\FSM_onehot_gen_fin_state[2]_i_3_n_0 ),
        .O(\FSM_onehot_gen_fin_state_reg[2] ));
  LUT6 #(
    .INIT(64'hFF00FFFFFF000100)) 
    \FSM_onehot_gen_fin_state[1]_i_1 
       (.I0(\FSM_onehot_state[5]_i_2_n_0 ),
        .I1(\FSM_onehot_state[5]_i_3_n_0 ),
        .I2(gen_line[9]),
        .I3(gen_fin_pixel0),
        .I4(\FSM_onehot_gen_fin_state[2]_i_3_n_0 ),
        .I5(gen_fin_state),
        .O(\FSM_onehot_gen_fin_state_reg[0] ));
  LUT6 #(
    .INIT(64'hAAAAFEFFAAAA0200)) 
    \FSM_onehot_gen_fin_state[2]_i_1 
       (.I0(gen_fin_state),
        .I1(\FSM_onehot_state[5]_i_2_n_0 ),
        .I2(\FSM_onehot_gen_fin_state[2]_i_2_n_0 ),
        .I3(gen_fin_pixel0),
        .I4(\FSM_onehot_gen_fin_state[2]_i_3_n_0 ),
        .I5(gen_fin_data),
        .O(\FSM_onehot_gen_fin_state_reg[1] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFB04)) 
    \FSM_onehot_gen_fin_state[2]_i_2 
       (.I0(\v_cnt_reg[5] ),
        .I1(\map_r_addr[13]_i_2_n_0 ),
        .I2(\map_r_addr_reg[13]_0 [8]),
        .I3(\map_r_addr_reg[13]_0 [9]),
        .I4(\FSM_onehot_state[5]_i_5_n_0 ),
        .I5(\FSM_onehot_gen_fin_state[2]_i_4_n_0 ),
        .O(\FSM_onehot_gen_fin_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000100)) 
    \FSM_onehot_gen_fin_state[2]_i_3 
       (.I0(\FSM_onehot_gen_fin_state[2]_i_5_n_0 ),
        .I1(\FSM_onehot_gen_fin_state[2]_i_6_n_0 ),
        .I2(Q[3]),
        .I3(gen_fin_data),
        .I4(Q[5]),
        .I5(\FSM_onehot_gen_fin_state[2]_i_7_n_0 ),
        .O(\FSM_onehot_gen_fin_state[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_gen_fin_state[2]_i_4 
       (.I0(\FSM_onehot_gen_fin_state[2]_i_2_0 [1]),
        .I1(\FSM_onehot_gen_fin_state[2]_i_2_0 [0]),
        .I2(\FSM_onehot_gen_fin_state[2]_i_2_0 [2]),
        .I3(\FSM_onehot_gen_fin_state[2]_i_2_0 [3]),
        .I4(\FSM_onehot_gen_fin_state[2]_i_2_0 [4]),
        .O(\FSM_onehot_gen_fin_state[2]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \FSM_onehot_gen_fin_state[2]_i_5 
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(Q[9]),
        .I3(Q[2]),
        .O(\FSM_onehot_gen_fin_state[2]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \FSM_onehot_gen_fin_state[2]_i_6 
       (.I0(Q[8]),
        .I1(Q[1]),
        .I2(Q[7]),
        .I3(Q[0]),
        .O(\FSM_onehot_gen_fin_state[2]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h888B)) 
    \FSM_onehot_gen_fin_state[2]_i_7 
       (.I0(t0_done),
        .I1(gen_fin_state),
        .I2(gen_fin_data),
        .I3(gen_fin_pixel0),
        .O(\FSM_onehot_gen_fin_state[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(\pixel_addr_reg_n_0_[8] ),
        .I2(\pixel_addr_reg_n_0_[7] ),
        .I3(\pixel_addr_reg_n_0_[9] ),
        .I4(\FSM_onehot_state[1]_i_2_n_0 ),
        .I5(\pixel_addr_reg_n_0_[6] ),
        .O(state__0[0]));
  LUT5 #(
    .INIT(32'hEEEEEEAE)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(line_done0),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(\pixel_addr_reg_n_0_[6] ),
        .I3(\FSM_onehot_state[1]_i_2_n_0 ),
        .I4(\FSM_onehot_state[1]_i_3_n_0 ),
        .O(state__0[1]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \FSM_onehot_state[1]_i_2 
       (.I0(\pixel_addr_reg_n_0_[3] ),
        .I1(\pixel_addr_reg_n_0_[0] ),
        .I2(\pixel_addr_reg_n_0_[1] ),
        .I3(\pixel_addr_reg_n_0_[2] ),
        .I4(\pixel_addr_reg_n_0_[5] ),
        .I5(\pixel_addr_reg_n_0_[4] ),
        .O(\FSM_onehot_state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \FSM_onehot_state[1]_i_3 
       (.I0(\pixel_addr_reg_n_0_[8] ),
        .I1(\pixel_addr_reg_n_0_[7] ),
        .I2(\pixel_addr_reg_n_0_[9] ),
        .O(\FSM_onehot_state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0100)) 
    \FSM_onehot_state[5]_i_1 
       (.I0(\FSM_onehot_state[5]_i_2_n_0 ),
        .I1(\FSM_onehot_state[5]_i_3_n_0 ),
        .I2(gen_line[9]),
        .I3(line_done0),
        .I4(\FSM_onehot_state[5]_i_4_n_0 ),
        .I5(state__0[0]),
        .O(\FSM_onehot_state[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h20000004)) 
    \FSM_onehot_state[5]_i_2 
       (.I0(\map_r_addr_reg[13]_0 [6]),
        .I1(\map_r_addr[13]_i_2_n_0 ),
        .I2(\map_r_addr_reg[13]_0 [5]),
        .I3(\map_r_addr_reg[13]_0 [8]),
        .I4(\map_r_addr_reg[13]_0 [7]),
        .O(\FSM_onehot_state[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_state[5]_i_3 
       (.I0(\FSM_onehot_gen_fin_state[2]_i_2_0 [4]),
        .I1(\FSM_onehot_gen_fin_state[2]_i_2_0 [3]),
        .I2(\FSM_onehot_gen_fin_state[2]_i_2_0 [2]),
        .I3(\FSM_onehot_gen_fin_state[2]_i_2_0 [0]),
        .I4(\FSM_onehot_gen_fin_state[2]_i_2_0 [1]),
        .I5(\FSM_onehot_state[5]_i_5_n_0 ),
        .O(\FSM_onehot_state[5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_state[5]_i_4 
       (.I0(\map_x[5]_i_4_n_0 ),
        .I1(data_r_addr),
        .I2(map_r_addr),
        .I3(state[2]),
        .I4(state[4]),
        .O(\FSM_onehot_state[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_state[5]_i_5 
       (.I0(\FSM_onehot_gen_fin_state[2]_i_2_0 [6]),
        .I1(\FSM_onehot_gen_fin_state[2]_i_2_0 [7]),
        .I2(\FSM_onehot_gen_fin_state[2]_i_2_0 [5]),
        .I3(\FSM_onehot_gen_fin_state[2]_i_2_0 [8]),
        .I4(\FSM_onehot_gen_fin_state[2]_i_2_0 [9]),
        .I5(\FSM_onehot_gen_fin_state[2]_i_2_0 [10]),
        .O(\FSM_onehot_state[5]_i_5_n_0 ));
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
        .addrb(data_cpu_addr),
        .clka(s_axi_aclk),
        .clkb(data_cpu_clk),
        .dina(NLW_Tile_DATA_mem_dina_UNCONNECTED[63:0]),
        .dinb(data_cpu_din),
        .douta(data_r_data),
        .doutb(data_cpu_dout),
        .enb(data_cpu_en),
        .wea({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .web(data_cpu_wen));
  (* CHECK_LICENSE_TYPE = "blk_mem_tile_map,blk_mem_gen_v8_4_12,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "blk_mem_gen_v8_4_12,Vivado 2025.2" *) 
  Block_top_VDP_0_0_blk_mem_tile_map Tile_MAP_mem
       (.addra({\map_r_addr_reg_n_0_[13] ,\map_r_addr_reg_n_0_[12] ,\map_r_addr_reg_n_0_[11] ,\map_r_addr_reg_n_0_[10] ,\map_r_addr_reg_n_0_[9] ,\map_r_addr_reg_n_0_[8] ,\map_r_addr_reg_n_0_[7] ,\map_r_addr_reg_n_0_[6] ,\map_r_addr_reg_n_0_[5] ,\map_r_addr_reg_n_0_[4] ,\map_r_addr_reg_n_0_[3] ,\map_r_addr_reg_n_0_[2] ,\map_r_addr_reg_n_0_[1] ,\map_r_addr_reg_n_0_[0] }),
        .addrb(map_cpu_addr),
        .clka(s_axi_aclk),
        .clkb(map_cpu_clk),
        .dina(NLW_Tile_MAP_mem_dina_UNCONNECTED[15:0]),
        .dinb(map_cpu_din),
        .douta({NLW_Tile_MAP_mem_douta_UNCONNECTED[15:10],map_a_dout}),
        .doutb(map_cpu_dout),
        .enb(map_cpu_en),
        .wea({1'b0,1'b0}),
        .web(map_cpu_wen));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \data_r_addr[1]_i_1 
       (.I0(\map_r_addr_reg[13]_0 [1]),
        .O(gen_line[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \data_r_addr[2]_i_1 
       (.I0(\map_r_addr_reg[13]_0 [1]),
        .I1(\map_r_addr_reg[13]_0 [2]),
        .O(gen_line[2]));
  FDRE #(
    .INIT(1'b0)) 
    \data_r_addr_reg[0] 
       (.C(s_axi_aclk),
        .CE(data_r_addr),
        .D(\map_r_addr_reg[13]_0 [0]),
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
        .D(gen_line[2]),
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
        .doutb({line_buf_n_16,line_buf_n_17,line_buf_n_18,line_buf_n_19,D}),
        .ena(\FSM_onehot_state_reg_n_0_[5] ),
        .wea(1'b1),
        .web(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    line_buf_i_1
       (.I0(line_buf_i_8_n_0),
        .I1(line_buf_i_9_n_0),
        .I2(line_buf_i_10_n_0),
        .I3(line_buf_i_11_n_0),
        .I4(line_buf_i_12_n_0),
        .I5(line_buf_i_13_n_0),
        .O(pixel_data_comb[15]));
  MUXF7 line_buf_i_10
       (.I0(line_buf_i_25_n_0),
        .I1(line_buf_i_26_n_0),
        .O(line_buf_i_10_n_0),
        .S(\tile_pixel_reg_n_0_[2] ));
  MUXF7 line_buf_i_11
       (.I0(line_buf_i_27_n_0),
        .I1(line_buf_i_28_n_0),
        .O(line_buf_i_11_n_0),
        .S(\tile_pixel_reg_n_0_[2] ));
  MUXF7 line_buf_i_12
       (.I0(line_buf_i_29_n_0),
        .I1(line_buf_i_30_n_0),
        .O(line_buf_i_12_n_0),
        .S(\tile_pixel_reg_n_0_[2] ));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    line_buf_i_13
       (.I0(line_buf_i_31_n_0),
        .I1(line_buf_i_32_n_0),
        .I2(line_buf_i_33_n_0),
        .I3(\tile_pixel_reg_n_0_[2] ),
        .I4(line_buf_i_34_n_0),
        .O(line_buf_i_13_n_0));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    line_buf_i_14
       (.I0(line_buf_i_29_n_0),
        .I1(line_buf_i_30_n_0),
        .I2(line_buf_i_27_n_0),
        .I3(\tile_pixel_reg_n_0_[2] ),
        .I4(line_buf_i_28_n_0),
        .O(line_buf_i_14_n_0));
  MUXF7 line_buf_i_15
       (.I0(line_buf_i_21_n_0),
        .I1(line_buf_i_22_n_0),
        .O(line_buf_i_15_n_0),
        .S(\tile_pixel_reg_n_0_[2] ));
  MUXF7 line_buf_i_16
       (.I0(line_buf_i_23_n_0),
        .I1(line_buf_i_24_n_0),
        .O(line_buf_i_16_n_0),
        .S(\tile_pixel_reg_n_0_[2] ));
  MUXF7 line_buf_i_17
       (.I0(line_buf_i_33_n_0),
        .I1(line_buf_i_34_n_0),
        .O(line_buf_i_17_n_0),
        .S(\tile_pixel_reg_n_0_[2] ));
  MUXF7 line_buf_i_18
       (.I0(line_buf_i_31_n_0),
        .I1(line_buf_i_32_n_0),
        .O(line_buf_i_18_n_0),
        .S(\tile_pixel_reg_n_0_[2] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    line_buf_i_19
       (.I0(data_r_data[27]),
        .I1(data_r_data[19]),
        .I2(\tile_pixel_reg_n_0_[1] ),
        .I3(data_r_data[11]),
        .I4(\tile_pixel_reg_n_0_[0] ),
        .I5(data_r_data[3]),
        .O(line_buf_i_19_n_0));
  LUT6 #(
    .INIT(64'h000E000600060004)) 
    line_buf_i_2
       (.I0(line_buf_i_8_n_0),
        .I1(line_buf_i_10_n_0),
        .I2(line_buf_i_13_n_0),
        .I3(line_buf_i_14_n_0),
        .I4(line_buf_i_15_n_0),
        .I5(line_buf_i_16_n_0),
        .O(pixel_data_comb[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    line_buf_i_20
       (.I0(data_r_data[59]),
        .I1(data_r_data[51]),
        .I2(\tile_pixel_reg_n_0_[1] ),
        .I3(data_r_data[43]),
        .I4(\tile_pixel_reg_n_0_[0] ),
        .I5(data_r_data[35]),
        .O(line_buf_i_20_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    line_buf_i_21
       (.I0(data_r_data[24]),
        .I1(data_r_data[16]),
        .I2(\tile_pixel_reg_n_0_[1] ),
        .I3(data_r_data[8]),
        .I4(\tile_pixel_reg_n_0_[0] ),
        .I5(data_r_data[0]),
        .O(line_buf_i_21_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    line_buf_i_22
       (.I0(data_r_data[56]),
        .I1(data_r_data[48]),
        .I2(\tile_pixel_reg_n_0_[1] ),
        .I3(data_r_data[40]),
        .I4(\tile_pixel_reg_n_0_[0] ),
        .I5(data_r_data[32]),
        .O(line_buf_i_22_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    line_buf_i_23
       (.I0(data_r_data[26]),
        .I1(data_r_data[18]),
        .I2(\tile_pixel_reg_n_0_[1] ),
        .I3(data_r_data[10]),
        .I4(\tile_pixel_reg_n_0_[0] ),
        .I5(data_r_data[2]),
        .O(line_buf_i_23_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    line_buf_i_24
       (.I0(data_r_data[58]),
        .I1(data_r_data[50]),
        .I2(\tile_pixel_reg_n_0_[1] ),
        .I3(data_r_data[42]),
        .I4(\tile_pixel_reg_n_0_[0] ),
        .I5(data_r_data[34]),
        .O(line_buf_i_24_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    line_buf_i_25
       (.I0(data_r_data[25]),
        .I1(data_r_data[17]),
        .I2(\tile_pixel_reg_n_0_[1] ),
        .I3(data_r_data[9]),
        .I4(\tile_pixel_reg_n_0_[0] ),
        .I5(data_r_data[1]),
        .O(line_buf_i_25_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    line_buf_i_26
       (.I0(data_r_data[57]),
        .I1(data_r_data[49]),
        .I2(\tile_pixel_reg_n_0_[1] ),
        .I3(data_r_data[41]),
        .I4(\tile_pixel_reg_n_0_[0] ),
        .I5(data_r_data[33]),
        .O(line_buf_i_26_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    line_buf_i_27
       (.I0(data_r_data[29]),
        .I1(data_r_data[21]),
        .I2(\tile_pixel_reg_n_0_[1] ),
        .I3(data_r_data[13]),
        .I4(\tile_pixel_reg_n_0_[0] ),
        .I5(data_r_data[5]),
        .O(line_buf_i_27_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    line_buf_i_28
       (.I0(data_r_data[61]),
        .I1(data_r_data[53]),
        .I2(\tile_pixel_reg_n_0_[1] ),
        .I3(data_r_data[45]),
        .I4(\tile_pixel_reg_n_0_[0] ),
        .I5(data_r_data[37]),
        .O(line_buf_i_28_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    line_buf_i_29
       (.I0(data_r_data[28]),
        .I1(data_r_data[20]),
        .I2(\tile_pixel_reg_n_0_[1] ),
        .I3(data_r_data[12]),
        .I4(\tile_pixel_reg_n_0_[0] ),
        .I5(data_r_data[4]),
        .O(line_buf_i_29_n_0));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    line_buf_i_3
       (.I0(line_buf_i_11_n_0),
        .I1(line_buf_i_12_n_0),
        .I2(line_buf_i_17_n_0),
        .I3(line_buf_i_18_n_0),
        .I4(line_buf_i_10_n_0),
        .I5(line_buf_i_8_n_0),
        .O(pixel_data_comb[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    line_buf_i_30
       (.I0(data_r_data[60]),
        .I1(data_r_data[52]),
        .I2(\tile_pixel_reg_n_0_[1] ),
        .I3(data_r_data[44]),
        .I4(\tile_pixel_reg_n_0_[0] ),
        .I5(data_r_data[36]),
        .O(line_buf_i_30_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    line_buf_i_31
       (.I0(data_r_data[30]),
        .I1(data_r_data[22]),
        .I2(\tile_pixel_reg_n_0_[1] ),
        .I3(data_r_data[14]),
        .I4(\tile_pixel_reg_n_0_[0] ),
        .I5(data_r_data[6]),
        .O(line_buf_i_31_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    line_buf_i_32
       (.I0(data_r_data[62]),
        .I1(data_r_data[54]),
        .I2(\tile_pixel_reg_n_0_[1] ),
        .I3(data_r_data[46]),
        .I4(\tile_pixel_reg_n_0_[0] ),
        .I5(data_r_data[38]),
        .O(line_buf_i_32_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    line_buf_i_33
       (.I0(data_r_data[31]),
        .I1(data_r_data[23]),
        .I2(\tile_pixel_reg_n_0_[1] ),
        .I3(data_r_data[15]),
        .I4(\tile_pixel_reg_n_0_[0] ),
        .I5(data_r_data[7]),
        .O(line_buf_i_33_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    line_buf_i_34
       (.I0(data_r_data[63]),
        .I1(data_r_data[55]),
        .I2(\tile_pixel_reg_n_0_[1] ),
        .I3(data_r_data[47]),
        .I4(\tile_pixel_reg_n_0_[0] ),
        .I5(data_r_data[39]),
        .O(line_buf_i_34_n_0));
  LUT6 #(
    .INIT(64'h000000B300000032)) 
    line_buf_i_4
       (.I0(line_buf_i_8_n_0),
        .I1(line_buf_i_15_n_0),
        .I2(line_buf_i_16_n_0),
        .I3(line_buf_i_14_n_0),
        .I4(line_buf_i_13_n_0),
        .I5(line_buf_i_10_n_0),
        .O(pixel_data_comb[7]));
  LUT6 #(
    .INIT(64'h0000000000010302)) 
    line_buf_i_5
       (.I0(line_buf_i_16_n_0),
        .I1(line_buf_i_14_n_0),
        .I2(line_buf_i_13_n_0),
        .I3(line_buf_i_10_n_0),
        .I4(line_buf_i_8_n_0),
        .I5(line_buf_i_15_n_0),
        .O(pixel_data_comb[6]));
  LUT6 #(
    .INIT(64'h000000E9000000C2)) 
    line_buf_i_6
       (.I0(line_buf_i_8_n_0),
        .I1(line_buf_i_15_n_0),
        .I2(line_buf_i_16_n_0),
        .I3(line_buf_i_14_n_0),
        .I4(line_buf_i_13_n_0),
        .I5(line_buf_i_10_n_0),
        .O(pixel_data_comb[3]));
  LUT6 #(
    .INIT(64'h0003000000000102)) 
    line_buf_i_7
       (.I0(line_buf_i_10_n_0),
        .I1(line_buf_i_14_n_0),
        .I2(line_buf_i_13_n_0),
        .I3(line_buf_i_8_n_0),
        .I4(line_buf_i_16_n_0),
        .I5(line_buf_i_15_n_0),
        .O(pixel_data_comb[2]));
  MUXF7 line_buf_i_8
       (.I0(line_buf_i_19_n_0),
        .I1(line_buf_i_20_n_0),
        .O(line_buf_i_8_n_0),
        .S(\tile_pixel_reg_n_0_[2] ));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    line_buf_i_9
       (.I0(line_buf_i_21_n_0),
        .I1(line_buf_i_22_n_0),
        .I2(line_buf_i_23_n_0),
        .I3(\tile_pixel_reg_n_0_[2] ),
        .I4(line_buf_i_24_n_0),
        .O(line_buf_i_9_n_0));
  LUT3 #(
    .INIT(8'h0E)) 
    line_done_i_1
       (.I0(t0_done),
        .I1(state__0[0]),
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
  LUT6 #(
    .INIT(64'hFFFF800000007FFF)) 
    \map_r_addr[10]_i_1 
       (.I0(\map_r_addr_reg[13]_0 [3]),
        .I1(\map_r_addr_reg[13]_0 [4]),
        .I2(\map_r_addr_reg[13]_0 [1]),
        .I3(\map_r_addr_reg[13]_0 [2]),
        .I4(\map_r_addr_reg[13]_0 [5]),
        .I5(\map_r_addr_reg[13]_0 [6]),
        .O(gen_line[6]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hAA9A)) 
    \map_r_addr[11]_i_1 
       (.I0(\map_r_addr_reg[13]_0 [7]),
        .I1(\map_r_addr_reg[13]_0 [6]),
        .I2(\map_r_addr[13]_i_2_n_0 ),
        .I3(\map_r_addr_reg[13]_0 [5]),
        .O(gen_line[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFFD0002)) 
    \map_r_addr[12]_i_1 
       (.I0(\map_r_addr[13]_i_2_n_0 ),
        .I1(\map_r_addr_reg[13]_0 [7]),
        .I2(\map_r_addr_reg[13]_0 [6]),
        .I3(\map_r_addr_reg[13]_0 [5]),
        .I4(\map_r_addr_reg[13]_0 [8]),
        .O(gen_line[8]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAA9A)) 
    \map_r_addr[13]_i_1 
       (.I0(\map_r_addr_reg[13]_0 [9]),
        .I1(\map_r_addr_reg[13]_0 [8]),
        .I2(\map_r_addr[13]_i_2_n_0 ),
        .I3(\map_r_addr_reg[13]_0 [7]),
        .I4(\map_r_addr_reg[13]_0 [6]),
        .I5(\map_r_addr_reg[13]_0 [5]),
        .O(gen_line[9]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \map_r_addr[13]_i_2 
       (.I0(\map_r_addr_reg[13]_0 [2]),
        .I1(\map_r_addr_reg[13]_0 [1]),
        .I2(\map_r_addr_reg[13]_0 [4]),
        .I3(\map_r_addr_reg[13]_0 [3]),
        .O(\map_r_addr[13]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \map_r_addr[7]_i_1 
       (.I0(\map_r_addr_reg[13]_0 [3]),
        .I1(\map_r_addr_reg[13]_0 [2]),
        .I2(\map_r_addr_reg[13]_0 [1]),
        .O(\map_r_addr[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \map_r_addr[8]_i_1 
       (.I0(\map_r_addr_reg[13]_0 [4]),
        .I1(\map_r_addr_reg[13]_0 [3]),
        .I2(\map_r_addr_reg[13]_0 [1]),
        .I3(\map_r_addr_reg[13]_0 [2]),
        .O(\map_r_addr[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h80007FFF)) 
    \map_r_addr[9]_i_1 
       (.I0(\map_r_addr_reg[13]_0 [2]),
        .I1(\map_r_addr_reg[13]_0 [1]),
        .I2(\map_r_addr_reg[13]_0 [4]),
        .I3(\map_r_addr_reg[13]_0 [3]),
        .I4(\map_r_addr_reg[13]_0 [5]),
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
        .D(gen_line[7]),
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
        .D(gen_line[9]),
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
        .D(\map_r_addr[7]_i_1_n_0 ),
        .Q(\map_r_addr_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \map_r_addr_reg[8] 
       (.C(s_axi_aclk),
        .CE(map_r_addr),
        .D(\map_r_addr[8]_i_1_n_0 ),
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
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \map_x[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(map_x[2]),
        .I2(map_x[1]),
        .I3(map_x[0]),
        .O(\map_x[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
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
  LUT5 #(
    .INIT(32'hEEEEEEAE)) 
    \map_x[5]_i_2 
       (.I0(line_done0),
        .I1(\map_x[5]_i_4_n_0 ),
        .I2(\pixel_addr_reg_n_0_[6] ),
        .I3(\FSM_onehot_state[1]_i_2_n_0 ),
        .I4(\FSM_onehot_state[1]_i_3_n_0 ),
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
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \pixel_addr[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(\pixel_addr_reg_n_0_[2] ),
        .I2(\pixel_addr_reg_n_0_[0] ),
        .I3(\pixel_addr_reg_n_0_[1] ),
        .O(\pixel_addr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \pixel_addr[8]_i_3 
       (.I0(\pixel_addr_reg_n_0_[2] ),
        .I1(\pixel_addr_reg_n_0_[1] ),
        .I2(\pixel_addr_reg_n_0_[0] ),
        .I3(\pixel_addr_reg_n_0_[3] ),
        .O(\pixel_addr[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h88882888)) 
    \pixel_addr[9]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(\pixel_addr_reg_n_0_[9] ),
        .I2(\pixel_addr_reg_n_0_[8] ),
        .I3(\pixel_addr_reg_n_0_[7] ),
        .I4(\pixel_addr[9]_i_2_n_0 ),
        .O(\pixel_addr[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hF7FF)) 
    \pixel_addr[9]_i_2 
       (.I0(\pixel_addr_reg_n_0_[4] ),
        .I1(\pixel_addr_reg_n_0_[5] ),
        .I2(\pixel_addr[8]_i_3_n_0 ),
        .I3(\pixel_addr_reg_n_0_[6] ),
        .O(\pixel_addr[9]_i_2_n_0 ));
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
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    v_sync_INST_0_i_1
       (.I0(\map_r_addr_reg[13]_0 [5]),
        .I1(\map_r_addr_reg[13]_0 [6]),
        .I2(\map_r_addr_reg[13]_0 [7]),
        .O(\v_cnt_reg[5] ));
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

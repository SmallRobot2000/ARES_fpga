`timescale 1ns / 1ps
// Fixed VDP revision:
// - palettes implemented as synchronous RAMs instead of exported arrays
// - sprite palette lookup pipelined at one pixel per 100-MHz clock
// - tile palette BRAM latency accounted for
// - sprite line clear/write pipeline fixed
// - sprite palette number widened to 2 bits
// - register/status multiple-driver issues removed
// - layer enable bits honored by final compositor
// External VDP ports are unchanged; existing VDP_wrapper can be reused.
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/16/2026 01:55:50 PM
// Design Name: 
// Module Name: VDP
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module VDP#(
    //Active area (Max 1024x1024)
    parameter VGA_H_ACTIVE = 640,
    parameter VGA_V_ACTIVE = 480,
    //Sync pulse lenght
    parameter VGA_H_SYNC = 96,
    parameter VGA_V_SYNC = 2,
    //Front porch
    parameter VGA_H_FRONT_PORCH = 16,
    parameter VGA_V_FRONT_PORCH = 11,
    //Back porch
    parameter VGA_H_BACK_PORCH = 48,
    parameter VGA_V_BACK_PORCH = 31,
    //Total (Max 2048x2048)
    parameter VGA_H_TOTAL = VGA_H_BACK_PORCH + VGA_H_ACTIVE + VGA_H_FRONT_PORCH + VGA_H_SYNC,
    parameter VGA_V_TOTAL = VGA_V_BACK_PORCH + VGA_V_ACTIVE + VGA_V_FRONT_PORCH + VGA_V_SYNC,

    parameter NUM_GEN = 3,
    parameter T0_GEN_NUM = 0,
    parameter T1_GEN_NUM = 1,
    parameter S0_GEN_NUM = 2,

    parameter REG_CTRL_0     = 8'h00,
    parameter REG_STAT_0     = 8'h01,
    parameter REG_LINE       = 8'h02,

    parameter REG_T0_X_OFF     = 8'h04,
    parameter REG_T0_Y_OFF     = 8'h05,

    parameter REG_T1_X_OFF     = 8'h08,
    parameter REG_T1_Y_OFF     = 8'h09,

    parameter BIT_STAT_H_BLANK  = 0,
    parameter BIT_STAT_V_BLANK  = 1,

    parameter BIT_CTRL_T0_EN    = 0,
    parameter BIT_CTRL_T1_EN    = 1,
    parameter BIT_CTRL_S0_EN    = 2
)(


    // ============================================================
    // TILE 0 MAP CPU BRAM interface
    // ============================================================

    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0_MAP_CPU_BRAM ADDR" *)
    input  wire [14:0] t0_map_cpu_addr,

    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0_MAP_CPU_BRAM DIN" *)
    input  wire [31:0] t0_map_cpu_din,

    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0_MAP_CPU_BRAM DOUT" *)
    output wire [31:0] t0_map_cpu_dout,

    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0_MAP_CPU_BRAM EN" *)
    input  wire        t0_map_cpu_en,

    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0_MAP_CPU_BRAM WE" *)
    input  wire [3:0]  t0_map_cpu_wen,

    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0_MAP_CPU_BRAM CLK" *)
    (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME T0_MAP_CPU_BRAM, MASTER_TYPE BRAM_CTRL, MEM_SIZE 32768, READ_WRITE_MODE READ_WRITE" *)
    input  wire        t0_map_cpu_clk,

    // ============================================================
    // TILE 0 DATA CPU BRAM interface
    // ============================================================

    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0_DATA_CPU_BRAM ADDR" *)
    input  wire [15:0] t0_data_cpu_addr,

    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0_DATA_CPU_BRAM DIN" *)
    input  wire [31:0] t0_data_cpu_din,

    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0_DATA_CPU_BRAM DOUT" *)
    output wire [31:0] t0_data_cpu_dout,

    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0_DATA_CPU_BRAM EN" *)
    input  wire        t0_data_cpu_en,

    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0_DATA_CPU_BRAM WE" *)
    input  wire [3:0]  t0_data_cpu_wen,

    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T0_DATA_CPU_BRAM CLK" *)
    (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME T0_DATA_CPU_BRAM, MASTER_TYPE BRAM_CTRL, MEM_SIZE 65536, READ_WRITE_MODE READ_WRITE" *)
    input  wire        t0_data_cpu_clk,


    // ============================================================
    // TILE 1 MAP CPU BRAM interface
    // ============================================================

    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1_MAP_CPU_BRAM ADDR" *)
    input  wire [14:0] t1_map_cpu_addr,

    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1_MAP_CPU_BRAM DIN" *)
    input  wire [31:0] t1_map_cpu_din,

    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1_MAP_CPU_BRAM DOUT" *)
    output wire [31:0] t1_map_cpu_dout,

    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1_MAP_CPU_BRAM EN" *)
    input  wire        t1_map_cpu_en,

    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1_MAP_CPU_BRAM WE" *)
    input  wire [3:0]  t1_map_cpu_wen,

    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1_MAP_CPU_BRAM CLK" *)
    (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME T1_MAP_CPU_BRAM, MASTER_TYPE BRAM_CTRL, MEM_SIZE 32768, READ_WRITE_MODE READ_WRITE" *)
    input  wire        t1_map_cpu_clk,

    // ============================================================
    // TILE 1 DATA CPU BRAM interface
    // ============================================================

    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1_DATA_CPU_BRAM ADDR" *)
    input  wire [15:0] t1_data_cpu_addr,

    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1_DATA_CPU_BRAM DIN" *)
    input  wire [31:0] t1_data_cpu_din,

    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1_DATA_CPU_BRAM DOUT" *)
    output wire [31:0] t1_data_cpu_dout,

    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1_DATA_CPU_BRAM EN" *)
    input  wire        t1_data_cpu_en,

    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1_DATA_CPU_BRAM WE" *)
    input  wire [3:0]  t1_data_cpu_wen,

    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 T1_DATA_CPU_BRAM CLK" *)
    (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME T1_DATA_CPU_BRAM, MASTER_TYPE BRAM_CTRL, MEM_SIZE 65536, READ_WRITE_MODE READ_WRITE" *)
    input  wire        t1_data_cpu_clk,


    // ============================================================
    // SPRITE 0 ATTRIBUTE CPU BRAM interface
    // ============================================================

    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 S0_ATT_CPU_BRAM ADDR" *)
    input       [8:0]   s0_att_cpu_addr,

    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 S0_ATT_CPU_BRAM DIN" *)
    input       [31:0]  s0_att_cpu_din,

    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 S0_ATT_CPU_BRAM DOUT" *)
    output      [31:0]  s0_att_cpu_dout,

    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 S0_ATT_CPU_BRAM EN" *)
    input               s0_att_cpu_en,

    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 S0_ATT_CPU_BRAM WE" *)
    input       [3:0]   s0_att_cpu_wen,

    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 S0_ATT_CPU_BRAM CLK" *)
    (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S0_ATT_CPU_BRAM, MASTER_TYPE BRAM_CTRL, MEM_SIZE 512, READ_WRITE_MODE READ_WRITE" *)
    input               s0_att_cpu_clk,

    // ============================================================
    // SPRITE 0 DATA CPU BRAM interface
    // ============================================================

    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 S0_DATA_CPU_BRAM ADDR" *)
    input       [14:0]  s0_data_cpu_addr,

    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 S0_DATA_CPU_BRAM DIN" *)
    input       [31:0]  s0_data_cpu_din,

    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 S0_DATA_CPU_BRAM DOUT" *)
    output      [31:0]  s0_data_cpu_dout,

    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 S0_DATA_CPU_BRAM EN" *)
    input               s0_data_cpu_en,

    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 S0_DATA_CPU_BRAM WE" *)
    input       [3:0]   s0_data_cpu_wen,

    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 S0_DATA_CPU_BRAM CLK" *)
    (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S0_DATA_CPU_BRAM, MASTER_TYPE BRAM_CTRL, MEM_SIZE 32768, READ_WRITE_MODE READ_WRITE" *)
    input               s0_data_cpu_clk,


    // ============================================================
    // AXI register interface
    // ============================================================
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 R0_MAP_CPU_BRAM ADDR" *)
    input  wire [12:0] r0_map_cpu_addr,

    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 R0_MAP_CPU_BRAM DIN" *)
    input  wire [31:0] r0_map_cpu_din,

    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 R0_MAP_CPU_BRAM DOUT" *)
    output wire [31:0] r0_map_cpu_dout,

    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 R0_MAP_CPU_BRAM EN" *)
    input  wire        r0_map_cpu_en,

    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 R0_MAP_CPU_BRAM WE" *)
    input  wire [3:0]  r0_map_cpu_wen,

    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 R0_MAP_CPU_BRAM CLK" *)
    (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME R0_MAP_CPU_BRAM, MASTER_TYPE BRAM_CTRL, MEM_SIZE 8192, READ_WRITE_MODE READ_WRITE" *)
    input  wire        r0_map_cpu_clk,

    // ============================================================
    // 100 MHz clock
    // ============================================================
    input wire s_axi_aclk,

  
    input wire s_axi_aresetn,

    //VGA signals
    output wire         h_sync,
    output wire         v_sync,

    output wire [3:0]   vga_r,
    output wire [3:0]   vga_g,
    output wire [3:0]   vga_b
    

);
    wire clk_100;
    wire VGA_clk;
    wire gen_line_start;
    wire draw_line_start;

    assign clk_100 = s_axi_aclk;
    //25Mhz clock generator
    reg [1:0]VGA_clk_cnt = 2'b0;
    assign VGA_clk = VGA_clk_cnt[1];
    always @(posedge clk_100) begin
        VGA_clk_cnt <= VGA_clk_cnt + 1;
    end

    //Timing generator and rgb active logic
    reg [10:0] h_cnt = 11'b0;
    reg [10:0] v_cnt = 11'b0;

    wire h_active;
    wire v_active;
    wire rgb_active;

    assign h_active = (h_cnt >= VGA_H_BACK_PORCH) && (h_cnt < VGA_H_BACK_PORCH + VGA_H_ACTIVE);
    assign v_active = (v_cnt >= VGA_V_BACK_PORCH) && (v_cnt < VGA_V_BACK_PORCH + VGA_V_ACTIVE);

    assign rgb_active = h_active && v_active;

    assign h_sync = (h_cnt >= VGA_H_BACK_PORCH + VGA_H_ACTIVE + VGA_H_FRONT_PORCH) && (h_cnt < VGA_H_BACK_PORCH + VGA_H_ACTIVE + VGA_H_FRONT_PORCH + VGA_H_SYNC);
    assign v_sync = (v_cnt >= VGA_V_BACK_PORCH + VGA_V_ACTIVE + VGA_V_FRONT_PORCH) && (v_cnt < VGA_V_BACK_PORCH + VGA_V_ACTIVE + VGA_V_FRONT_PORCH + VGA_V_SYNC);

    always @(posedge VGA_clk) begin
        if(!s_axi_aresetn) begin
            h_cnt <= 11'b0;
            v_cnt <= 11'b0;
        end else begin
            //count generator
            h_cnt <= h_cnt + 1;
            if(h_cnt == VGA_H_TOTAL - 1) begin
                h_cnt <= 11'b0;
                v_cnt <= v_cnt + 1;
            end
            if(v_cnt == VGA_V_TOTAL - 1) begin
                h_cnt <= 11'b0;
                v_cnt <= 11'b0;
            end
        end
    end

    //Gen logic & draw logic
    wire [9:0] gen_line;
    wire [9:0] draw_line;

    assign gen_line = (v_cnt + 1) - VGA_V_BACK_PORCH;
    assign draw_line = gen_line + 1;

    //25 Mhz pulse signals for draw and gen start
    assign gen_line_start = (h_cnt == 11'b0) && (gen_line < VGA_V_ACTIVE);
    assign draw_line_start = (h_cnt == VGA_H_BACK_PORCH) && v_active;

    //Make output wires nicely packed into vga_rgb
    wire [11:0] vga_rgb;
    
    assign vga_r = rgb_active ? vga_rgb[11:8] : 4'b0;
    assign vga_g = rgb_active ? vga_rgb[7:4]  : 4'b0;
    assign vga_b = rgb_active ? vga_rgb[3:0]  : 4'b0;

    wire [10:0]draw_pixel_addr = (h_cnt - VGA_H_BACK_PORCH) + (v_cnt[0] ? 11'd1024 : 11'd0); //Make ping pong with even of v_cnt
    //Final line buffer definition
    reg [11:0]gen_fin_data = 12'b0;
    reg [9:0]gen_fin_pixel = 10'b0;
    reg [9:0]gen_fin_pixel_reg1 = 10'b0;
    reg [9:0]gen_fin_pixel_reg = 10'b0;
    reg gen_fin_buf_en = 0;
    wire [10:0]gen_fin_addr = gen_fin_pixel_reg1 + (!v_cnt[0] ? 11'd1024 : 11'd0);
    blk_mem_fin_line fin_line_buf
    (
        .addra(draw_pixel_addr),
        .clka(clk_100),
        .dina(12'b0),
        .douta(vga_rgb),
        .wea(1'b0),

        .addrb(gen_fin_addr),
        .clkb(clk_100),
        .dinb(gen_fin_data),
        .doutb(),
        .web(1'b1),
        .enb(gen_fin_buf_en)
    );

    wire [31:0]line_reg;
    assign line_reg = gen_line - 1; //So that changes do actualy count

    reg [31:0] stat_reg; // Some status bits

    // Blanking bits. Use one combinational driver (not multiple wire drivers).
    always @* begin
        stat_reg = 32'b0;
        stat_reg[BIT_STAT_H_BLANK] = ~h_active;
        stat_reg[BIT_STAT_V_BLANK] = ~v_active;
    end

    // ============================================================
    // Register outputs and synchronous palette read ports
    // ============================================================

    wire [31:0] ctrl_reg;
    wire [31:0] t0_x_off_reg;
    wire [31:0] t0_y_off_reg;
    wire [31:0] t1_x_off_reg;
    wire [31:0] t1_y_off_reg;

    wire t0_en = ctrl_reg[BIT_CTRL_T0_EN];
    wire t1_en = ctrl_reg[BIT_CTRL_T1_EN];
    wire s0_en = ctrl_reg[BIT_CTRL_S0_EN];

    wire [7:0]  t0_palette_addr;
    wire [15:0] t0_palette_data;

    // T1 is not instantiated yet. Keep its palette read port idle.
    wire [7:0]  t1_palette_addr;
    wire [15:0] t1_palette_data;

    wire [9:0]  s0_palette_addr;
    wire [15:0] s0_palette_data;

    // ============================================================
    // Register / palette memory block
    // ============================================================

REG_MEMORY #(
    .REG_CTRL_0(REG_CTRL_0),
    .REG_STAT_0(REG_STAT_0),
    .REG_LINE(REG_LINE),
    .REG_T0_X_OFF(REG_T0_X_OFF),
    .REG_T0_Y_OFF(REG_T0_Y_OFF),
    .REG_T1_X_OFF(REG_T1_X_OFF),
    .REG_T1_Y_OFF(REG_T1_Y_OFF)
) reg_mem (
    .r0_map_cpu_addr(r0_map_cpu_addr),
    .r0_map_cpu_din(r0_map_cpu_din),
    .r0_map_cpu_dout(r0_map_cpu_dout),
    .r0_map_cpu_en(r0_map_cpu_en),
    .r0_map_cpu_wen(r0_map_cpu_wen),
    .r0_map_cpu_clk(r0_map_cpu_clk),

    .clk_100(clk_100),

    .t0_palette_addr(t0_palette_addr),
    .t0_palette_data(t0_palette_data),

    .t1_palette_addr(t1_palette_addr),
    .t1_palette_data(t1_palette_data),

    .s0_palette_addr(s0_palette_addr),
    .s0_palette_data(s0_palette_data),

    .ctrl_reg(ctrl_reg),
    .t0_x_off_reg(t0_x_off_reg),
    .t0_y_off_reg(t0_y_off_reg),
    .t1_x_off_reg(t1_x_off_reg),
    .t1_y_off_reg(t1_y_off_reg),

    .line_reg(line_reg),
    .stat_reg(stat_reg)
);

    // ============================================================
    // Tile generator 0
    // ============================================================

    wire [15:0] t0_dout;
    wire [9:0]  t0_addr = gen_fin_pixel;
    wire        t0_done;

VDP_tile_gen #(
    .SCREEN_WIDTH(VGA_H_ACTIVE),
    .SCREEN_HEIGHT(VGA_V_ACTIVE)
) T0_gen (
    .clk_100(clk_100),

    .start(gen_line_start),
    .gen_line(gen_line),

    .x_off(t0_x_off_reg[9:0]),
    .y_off(t0_y_off_reg[9:0]),

    .buf_dout(t0_dout),
    .buf_addr_out(t0_addr),

    .line_done(t0_done),

    .map_cpu_addr(t0_map_cpu_addr),
    .map_cpu_din(t0_map_cpu_din),
    .map_cpu_dout(t0_map_cpu_dout),
    .map_cpu_en(t0_map_cpu_en),
    .map_cpu_wen(t0_map_cpu_wen),
    .map_cpu_clk(t0_map_cpu_clk),

    .data_cpu_addr(t0_data_cpu_addr),
    .data_cpu_din(t0_data_cpu_din),
    .data_cpu_dout(t0_data_cpu_dout),
    .data_cpu_en(t0_data_cpu_en),
    .data_cpu_wen(t0_data_cpu_wen),
    .data_cpu_clk(t0_data_cpu_clk),

    .palette_addr(t0_palette_addr),
    .palette_data(t0_palette_data)
);


    // ============================================================
    // Tile generator 1
    // ============================================================

    wire [15:0] t1_dout;
    wire [9:0]  t1_addr = gen_fin_pixel;
    wire        t1_done;

VDP_tile_gen #(
    .SCREEN_WIDTH(VGA_H_ACTIVE),
    .SCREEN_HEIGHT(VGA_V_ACTIVE)
) T1_gen (
    .clk_100(clk_100),

    .start(gen_line_start),
    .gen_line(gen_line),

    .x_off(t1_x_off_reg[9:0]),
    .y_off(t1_y_off_reg[9:0]),

    .buf_dout(t1_dout),
    .buf_addr_out(t1_addr),

    .line_done(t1_done),

    .map_cpu_addr(t1_map_cpu_addr),
    .map_cpu_din(t1_map_cpu_din),
    .map_cpu_dout(t1_map_cpu_dout),
    .map_cpu_en(t1_map_cpu_en),
    .map_cpu_wen(t1_map_cpu_wen),
    .map_cpu_clk(t1_map_cpu_clk),

    .data_cpu_addr(t1_data_cpu_addr),
    .data_cpu_din(t1_data_cpu_din),
    .data_cpu_dout(t1_data_cpu_dout),
    .data_cpu_en(t1_data_cpu_en),
    .data_cpu_wen(t1_data_cpu_wen),
    .data_cpu_clk(t1_data_cpu_clk),

    .palette_addr(t1_palette_addr),
    .palette_data(t1_palette_data)
);

    // ============================================================
    // Sprite generator 0
    // ============================================================

    wire [15:0] s0_dout;
    wire [9:0]  s0_addr = gen_fin_pixel;
    wire        s0_done;

VDP_sprite_gen #(
    .SCREEN_WIDTH(VGA_H_ACTIVE),
    .SCREEN_HEIGHT(VGA_V_ACTIVE),
    .MAX_SPR_LINE(32)
) S0_gen (
    .clk_100(clk_100),

    .start(gen_line_start),
    .gen_line(gen_line),

    .buf_dout(s0_dout),
    .buf_addr_out(s0_addr),

    .line_done(s0_done),

    .att_cpu_addr(s0_att_cpu_addr),
    .att_cpu_din(s0_att_cpu_din),
    .att_cpu_dout(s0_att_cpu_dout),
    .att_cpu_en(s0_att_cpu_en),
    .att_cpu_wen(s0_att_cpu_wen),
    .att_cpu_clk(s0_att_cpu_clk),

    .data_cpu_addr(s0_data_cpu_addr),
    .data_cpu_din(s0_data_cpu_din),
    .data_cpu_dout(s0_data_cpu_dout),
    .data_cpu_en(s0_data_cpu_en),
    .data_cpu_wen(s0_data_cpu_wen),
    .data_cpu_clk(s0_data_cpu_clk),

    .palette_addr(s0_palette_addr),
    .palette_data(s0_palette_data)
);

    reg [NUM_GEN-1:0] gen_done;
    localparam STATE_WAIT = 12'h001;
    localparam STATE_START = 12'h002;
    localparam STATE_C0 = 12'h004;
    localparam STATE_C1 = 12'h008;
    localparam STATE_C2 = 12'h010;
    reg [11:0]gen_fin_state = STATE_WAIT;
    /*
    We work with:
    reg [11:0]gen_fin_data;
    reg [9:0]gen_fin_pixel;
    reg gen_fin_buf_en;
    wire [9:0] gen_line;
    */
    always @(posedge clk_100) begin
        if(s0_done)
            gen_done[S0_GEN_NUM] <= 1'b1;
        
        if(t0_done)
            gen_done[T0_GEN_NUM] <= 1'b1;

        if(t1_done)
            gen_done[T1_GEN_NUM] <= 1'b1;
        
        case(gen_fin_state)
            STATE_WAIT: begin
                gen_fin_buf_en <= 1'b0;
                gen_fin_pixel <= 10'b0;
                gen_done <= 'b0;
                if(gen_line_start)
                    gen_fin_state <= STATE_START;    
            end
            STATE_START: begin
                if(&gen_done) //if every gen is done
                    gen_fin_state <= STATE_C0;
            end
            STATE_C0: begin
                gen_fin_buf_en <= 1'b1;
                gen_fin_pixel <= gen_fin_pixel + 1;

                if(t1_en && t1_dout[15:12] != 4'h0) begin
                    gen_fin_data <= t1_dout[11:0];
                end else if(s0_en && (s0_dout[15:12] != 4'h0)) begin
                    gen_fin_data <= s0_dout[11:0];
                end else if(t0_en) begin
                    gen_fin_data <= t0_dout[11:0];
                end else begin
                    gen_fin_data <= 12'b0;
                end

                if(gen_fin_pixel == VGA_H_ACTIVE)
                    gen_fin_state <= STATE_WAIT;
            end
            default:
                gen_fin_state <= STATE_WAIT;
        endcase
        gen_fin_pixel_reg <= gen_fin_pixel;
        gen_fin_pixel_reg1 <= gen_fin_pixel_reg;
    end
endmodule

/*
    Genereates output from 128x128 char map and 1024 8x8 defined characters
*/
module VDP_tile_gen #(
    parameter SCREEN_WIDTH = 640,
    parameter SCREEN_HEIGHT = 480,

    parameter CHAR_WIDTH = 8,
    parameter CHAR_HEIGHT = 8
)(
    input  wire         clk_100,

    input  wire         start,
    input  wire [9:0]   gen_line,

    input  wire [9:0]   x_off,
    input  wire [9:0]   y_off,

    output wire [15:0]  buf_dout,
    input  wire [9:0]   buf_addr_out,

    output reg          line_done = 1'b0,

    // CPU side
    input  wire [14:0]  map_cpu_addr,
    input  wire [31:0]  map_cpu_din,
    output wire [31:0]  map_cpu_dout,
    input  wire         map_cpu_en,
    input  wire [3:0]   map_cpu_wen,
    input  wire         map_cpu_clk,

    input  wire [15:0]  data_cpu_addr,
    input  wire [31:0]  data_cpu_din,
    output wire [31:0]  data_cpu_dout,
    input  wire         data_cpu_en,
    input  wire [3:0]   data_cpu_wen,
    input  wire         data_cpu_clk,

    // Synchronous palette read port. palette_data is valid one
    // clk_100 after palette_addr has been presented.
    output wire [7:0]   palette_addr,
    input  wire [15:0]  palette_data
);

    reg  [9:0] pixel_addr = 10'b0;
    wire       pixel_wen;

blk_mem_buf_line line_buf (
    .addra(pixel_addr),
    .clka(clk_100),
    .dina(palette_data),
    .wea(1'b1),
    .ena(pixel_wen),

    .addrb(buf_addr_out),
    .clkb(clk_100),
    .doutb(buf_dout),
    .web(1'b0)
);

    localparam MAP_CHAR_WIDTH = 128;

    // Tile map
    wire [15:0] map_a_dout;
    reg  [13:0] map_r_addr = 14'b0;
    wire [9:0]  map_r_data = map_a_dout[9:0];

blk_mem_tile_map Tile_MAP_mem (
    .addra(map_r_addr),
    .clka(clk_100),
    .douta(map_a_dout),
    .wea(2'b0),

    .addrb(map_cpu_addr[14:2]),
    .clkb(map_cpu_clk),
    .doutb(map_cpu_dout),
    .dinb(map_cpu_din),
    .enb(map_cpu_en),
    .web(map_cpu_wen)
);

    // Tile data
    reg  [12:0] data_r_addr = 13'b0;
    wire [63:0] data_r_data;

blk_mem_tile_data Tile_DATA_mem (
    .addra(data_r_addr),
    .clka(clk_100),
    .douta(data_r_data),
    .wea(8'b0),

    .addrb(data_cpu_addr[15:2]),
    .clkb(data_cpu_clk),
    .doutb(data_cpu_dout),
    .dinb(data_cpu_din),
    .enb(data_cpu_en),
    .web(data_cpu_wen)
);

    localparam STATE_WAIT  = 12'h001;
    localparam STATE_START = 12'h002;
    localparam STATE_C0    = 12'h004;
    localparam STATE_C1    = 12'h008;
    localparam STATE_C2    = 12'h010;
    localparam STATE_C3    = 12'h020; // palette RAM read wait
    localparam STATE_C4    = 12'h040; // write pixel

    reg [11:0] state = STATE_WAIT;

    wire [13:0] map_line_addr_start;
    assign map_line_addr_start = (((gen_line + y_off) >> 3) * MAP_CHAR_WIDTH);

    reg [6:0] map_x = 0;
    reg [2:0] tile_pixel = 0;

    wire [7:0] palette_index;
    assign palette_index = data_r_data[tile_pixel * 8 +: 8];
    assign palette_addr = palette_index;

    // palette_data becomes valid while in STATE_C4.
    assign pixel_wen = (state == STATE_C4);

    always @(posedge clk_100) begin
        case(state)
            STATE_WAIT: begin
                map_x <= x_off >> 3;
                pixel_addr <= 10'b0;
                line_done <= 1'b0;
                tile_pixel <= x_off[2:0];
                if(start)
                    state <= STATE_START;
            end

            STATE_START: begin
                map_r_addr <= map_line_addr_start + map_x;
                state <= STATE_C0;
            end

            STATE_C0: begin
                // Wait for map BRAM.
                state <= STATE_C1;
            end

            STATE_C1: begin
                data_r_addr <= (map_r_data << 3) + ((gen_line + y_off) & 3'b111);
                state <= STATE_C2;
            end

            STATE_C2: begin
                // Wait for tile-data BRAM.
                state <= STATE_C3;
            end

            STATE_C3: begin
                // data_r_data is now valid. palette_addr is therefore
                // valid during this cycle; wait one cycle for palette RAM.
                state <= STATE_C4;
            end

            STATE_C4: begin
                // line_buf writes palette_data on this clock edge.
                if(pixel_addr == SCREEN_WIDTH - 1) begin
                    line_done <= 1'b1;
                    state <= STATE_WAIT;
                end else begin
                    pixel_addr <= pixel_addr + 1'b1;

                    if(tile_pixel == 3'd7) begin
                        tile_pixel <= 3'd0;
                        map_x <= map_x + 1'b1;
                        state <= STATE_START;
                    end else begin
                        tile_pixel <= tile_pixel + 1'b1;
                        state <= STATE_C3;
                    end
                end
            end

            default: state <= STATE_WAIT;
        endcase
    end

endmodule


module VDP_sprite_gen #(
    parameter SCREEN_WIDTH = 640,
    parameter SCREEN_HEIGHT = 480,

    parameter SPRITE_WIDTH = 16,
    parameter SPRITE_HEIGHT = 16,
    parameter SPRITEL_WIDTH = 32,
    parameter SPRITEL_HEIGHT = 32,
    parameter MAX_SPR_LINE = 32
)(
    input  wire         clk_100,

    input  wire         start,
    input  wire [9:0]   gen_line,

    output wire [15:0]  buf_dout,
    input  wire [9:0]   buf_addr_out,

    output reg          line_done = 1'b0,

    // CPU side
    input  wire [8:0]   att_cpu_addr,
    input  wire [31:0]  att_cpu_din,
    output wire [31:0]  att_cpu_dout,
    input  wire         att_cpu_en,
    input  wire [3:0]   att_cpu_wen,
    input  wire         att_cpu_clk,

    input  wire [14:0]  data_cpu_addr,
    input  wire [31:0]  data_cpu_din,
    output wire [31:0]  data_cpu_dout,
    input  wire         data_cpu_en,
    input  wire [3:0]   data_cpu_wen,
    input  wire         data_cpu_clk,

    // Synchronous palette read port.
    // palette_addr[9:8] = sprite palette number
    // palette_addr[7:0] = color index
    output wire [9:0]   palette_addr,
    input  wire [15:0]  palette_data
);

    // ============================================================
    // Sprite line buffer
    // ============================================================

    wire [7:0]  spr_line_vdp_addr;
    wire [7:0]  spr_line_vdp_we;
    wire [63:0] spr_line_vdp_din;

    blk_mem_gen_spr_line spr_line (
        .addra(spr_line_vdp_addr),
        .dina(spr_line_vdp_din),
        .wea(spr_line_vdp_we),
        .clka(clk_100),

        .doutb(buf_dout),
        .dinb(16'b0),
        .web(2'b0),
        .clkb(clk_100),
        .addrb(buf_addr_out)
    );

    // ============================================================
    // Sprite data BRAM
    // VDP port: 128 bits = 16 palette indices
    // ============================================================

    wire [127:0] spr_data_vdp_dout;
    wire [10:0]  spr_data_vdp_addr;

    blk_mem_gen_spr_data spr_data (
        .clka(clk_100),
        .addra(spr_data_vdp_addr),
        .douta(spr_data_vdp_dout),
        .dina(128'b0),
        .wea(16'b0),

        .clkb(data_cpu_clk),
        .addrb(data_cpu_addr[14:2]),
        .doutb(data_cpu_dout),
        .dinb(data_cpu_din),
        .web(data_cpu_wen),
        .enb(data_cpu_en)
    );

    // ============================================================
    // Sprite attribute BRAM
    // ============================================================

    wire [63:0] spr_att_vdp_dout;
    wire [5:0]  spr_att_vdp_addr;

    blk_mem_gen_spr_att spr_att (
        .clka(clk_100),
        .addra(spr_att_vdp_addr),
        .douta(spr_att_vdp_dout),
        .dina(64'b0),
        .wea(8'b0),

        .clkb(att_cpu_clk),
        .addrb(att_cpu_addr[8:2]),
        .doutb(att_cpu_dout),
        .dinb(att_cpu_din),
        .web(att_cpu_wen),
        .enb(att_cpu_en)
    );

    // ============================================================
    // Attribute decode
    // ============================================================

    wire [9:0]  x_pos    = spr_att_vdp_dout[9:0];
    wire [9:0]  y_pos    = spr_att_vdp_dout[25:16];
    wire [10:0] offset   = spr_att_vdp_dout[46:36];
    wire [1:0]  scale    = spr_att_vdp_dout[54:53];
    wire        size     = spr_att_vdp_dout[52];
    wire        v_flip   = spr_att_vdp_dout[51];
    wire        h_flip   = spr_att_vdp_dout[50];
    wire [1:0]  pall_num = spr_att_vdp_dout[49:48];
    wire        active   = spr_att_vdp_dout[63];

    reg [5:0]  att_pos = 6'b0;
    reg [10:0] data_pos = 11'b0;

    wire [5:0] sprite_row = gen_line - y_pos;
    wire [5:0] sprite_width = size ? 6'd32 : 6'd16;

    assign spr_data_vdp_addr = data_pos;
    assign spr_att_vdp_addr  = att_pos;

    // ============================================================
    // Line-buffer write path
    // One line-buffer word contains four ARGB4444 pixels.
    // ============================================================

    reg [7:0]  line_pos;
    reg [7:0]  line_pos_reg;
    reg [1:0]  line_off;
    reg [63:0] line_data;
    reg [7:0]  line_we;

    assign spr_line_vdp_addr = line_pos_reg;
    assign spr_line_vdp_din  = line_data;
    assign spr_line_vdp_we   = line_we;

    // ============================================================
    // Palette pipeline
    //
    // The old design did 16 combinational palette lookups in one cycle.
    // That consumed a very large amount of LUT fabric.
    //
    // This design stores the 8-bit indices first, then streams one
    // synchronous palette lookup every 100-MHz clock.  It is pipelined:
    // after the first lookup, one converted pixel is produced per clock.
    // Therefore a 32-pixel row needs about 33 clocks, not 64 clocks.
    // ============================================================

    reg [7:0]  row_index [0:31];
    reg [15:0] row_buf   [0:31];

    reg [5:0] pal_issue = 6'b0;     // 0..32
    reg [4:0] pal_capture = 5'b0;   // address whose result returns now
    reg       pal_data_valid = 1'b0;

    wire [7:0] palette_index_issue =
        (pal_issue < sprite_width) ? row_index[pal_issue[4:0]] : 8'b0;

    assign palette_addr = {pall_num, palette_index_issue};

    // ============================================================
    // FSM
    // ============================================================

    localparam STATE_WAIT     = 12'h001;
    localparam STATE_START    = 12'h002;
    localparam STATE_C0       = 12'h004;
    localparam STATE_C1       = 12'h008;
    localparam STATE_C2       = 12'h010;
    localparam STATE_C3       = 12'h020;
    localparam STATE_C4       = 12'h040;
    localparam STATE_C5       = 12'h080;
    localparam STATE_PAL_PIPE = 12'h100;
    localparam STATE_NEXT     = 12'h200;
    localparam STATE_CLEAR    = 12'h400;

    reg [11:0] state = STATE_WAIT;

    reg [3:0] line_word;
    integer src_pixel;
    integer i;
    reg [7:0] spr_cnt;
    reg [7:0] clear_pos = 8'b0;

    always @(posedge clk_100) begin
        case(state)

            STATE_WAIT: begin
                line_we <= 8'b0;
                line_done <= 1'b0;
                att_pos <= 6'b0;
                spr_cnt <= 8'b0;
                clear_pos <= 8'b0;
                pal_data_valid <= 1'b0;

                if(start)
                    state <= STATE_CLEAR;
            end

            STATE_CLEAR: begin
                // line_pos_reg is the actual BRAM write address.
                // Because BRAM samples the previous registered values,
                // leaving STATE_CLEAR after 159 still allows word 159
                // to be written on the following STATE_START edge.
                line_pos_reg <= clear_pos;
                line_data <= 64'b0;
                line_we <= 8'hFF;

                if(clear_pos == (SCREEN_WIDTH / 4) - 1)
                    state <= STATE_START;
                else
                    clear_pos <= clear_pos + 1'b1;
            end

            STATE_START: begin
                // Also commits the final pipelined clear/write from the
                // previous state before line_we is dropped here.
                line_we <= 8'b0;

                if((y_pos <= gen_line) &&
                   ((y_pos + (size ? SPRITEL_HEIGHT-1 : SPRITE_HEIGHT-1)) >= gen_line) &&
                   active) begin

                    data_pos <= offset +
                        (size
                            ? ((v_flip ? (SPRITEL_HEIGHT - 1 - sprite_row)
                                       : sprite_row) << 1)
                            :  (v_flip ? (SPRITE_HEIGHT - 1 - sprite_row)
                                       : sprite_row));

                    state <= STATE_C0;
                end else begin
                    att_pos <= att_pos + 1'b1;
                    state <= STATE_NEXT;
                end
            end

            STATE_C0: begin
                // First sprite-data BRAM read is becoming valid.
                line_pos <= x_pos[9:2];
                line_off <= x_pos[1:0];
                line_word <= 4'b0;
                state <= STATE_C1;
            end

            STATE_C1: begin
                // Capture first 16 palette indices.
                // For horizontal flip on a 32-pixel sprite, the first
                // source half becomes destination pixels 31..16.
                for(i = 0; i < 16; i = i + 1) begin
                    if(h_flip)
                        row_index[(size ? 31 : 15) - i] <= spr_data_vdp_dout[i*8 +: 8];
                    else
                        row_index[i] <= spr_data_vdp_dout[i*8 +: 8];
                end

                if(size) begin
                    data_pos <= data_pos + 1'b1;
                    state <= STATE_C2;
                end else begin
                    pal_issue <= 6'b0;
                    pal_capture <= 5'b0;
                    pal_data_valid <= 1'b0;
                    state <= STATE_PAL_PIPE;
                end
            end

            STATE_C2: begin
                // Wait one clock for the second 128-bit sprite-data word.
                state <= STATE_C3;
            end

            STATE_C3: begin
                // Capture second 16 palette indices.
                for(i = 0; i < 16; i = i + 1) begin
                    if(h_flip)
                        row_index[15-i] <= spr_data_vdp_dout[i*8 +: 8];
                    else
                        row_index[i+16] <= spr_data_vdp_dout[i*8 +: 8];
                end

                pal_issue <= 6'b0;
                pal_capture <= 5'b0;
                pal_data_valid <= 1'b0;
                state <= STATE_PAL_PIPE;
            end

            STATE_PAL_PIPE: begin
                // Capture the result of the palette address issued on the
                // previous clock.
                if(pal_data_valid) begin
                    row_buf[pal_capture] <= palette_data;

                    if(pal_capture == (sprite_width - 1'b1)) begin
                        // Last palette result arrived.  row_buf is updated
                        // by this edge and is therefore valid throughout
                        // the following STATE_C4 cycle.
                        line_word <= 4'b0;
                        pal_data_valid <= 1'b0;
                        state <= STATE_C4;
                    end
                end

                // Issue one new palette lookup every clock.  The palette
                // memory samples palette_addr at this edge and returns the
                // corresponding color for the next clock.
                if(pal_issue < sprite_width) begin
                    pal_capture <= pal_issue[4:0];
                    pal_issue <= pal_issue + 1'b1;
                    pal_data_valid <= 1'b1;
                end
            end

            STATE_C4: begin
                // Produce one 64-bit line-buffer word (four pixels).
                // line_pos_reg/data/we are intentionally registered: the
                // Block Memory Generator writes their previous values on
                // this edge, which pipelines consecutive words correctly.
                line_data <= 64'b0;
                line_we <= 8'b0;
                line_pos_reg <= line_pos;

                for(i = 0; i < 4; i = i + 1) begin
                    src_pixel = (line_word * 4) + i - line_off;

                    if((src_pixel >= 0) &&
                       (src_pixel < sprite_width) &&
                       (row_buf[src_pixel][15:12] != 4'h0)) begin

                        line_data[i*16 +: 16] <= row_buf[src_pixel];
                        line_we[i*2 +: 2] <= 2'b11;
                    end
                end

                if(((line_word + 1) * 4) >= (sprite_width + line_off)) begin
                    state <= STATE_C5;
                end else begin
                    line_word <= line_word + 1'b1;
                    line_pos <= line_pos + 1'b1;
                end
            end

            STATE_C5: begin
                // This edge commits the final pipelined line-buffer write.
                line_we <= 8'b0;
                att_pos <= att_pos + 1'b1;
                spr_cnt <= spr_cnt + 1'b1;
                state <= STATE_NEXT;
            end

            STATE_NEXT: begin
                if((att_pos == 6'b0) || (spr_cnt == MAX_SPR_LINE)) begin
                    line_done <= 1'b1;
                    state <= STATE_WAIT;
                end else begin
                    state <= STATE_START;
                end
            end

            default: begin
                line_we <= 8'b0;
                line_done <= 1'b0;
                state <= STATE_WAIT;
            end

        endcase
    end

endmodule


module REG_MEMORY #(
    parameter REG_SPACE_ADDR = 11'h0000,
    parameter REG_SPACE_SIZE = 11'h0100,

    parameter PAL_T0_ADDR    = 11'h0100,
    parameter PAL_T0_SIZE    = 11'h0100,

    parameter PAL_T1_ADDR    = 11'h0200,
    parameter PAL_T1_SIZE    = 11'h0100,

    parameter PAL_S0_ADDR    = 11'h0300,
    parameter PAL_S0_SIZE    = 11'h0400,

    parameter REG_CTRL_0     = 8'h00,
    parameter REG_STAT_0     = 8'h01,
    parameter REG_LINE       = 8'h02,
    parameter REG_T0_X_OFF   = 8'h04,
    parameter REG_T0_Y_OFF   = 8'h05,
    parameter REG_T1_X_OFF   = 8'h08,
    parameter REG_T1_Y_OFF   = 8'h09
)(
    // CPU BRAM-style register interface. r0_map_cpu_addr is byte addressed.
    input  wire [12:0] r0_map_cpu_addr,
    input  wire [31:0] r0_map_cpu_din,
    output wire [31:0] r0_map_cpu_dout,
    input  wire        r0_map_cpu_en,
    input  wire [3:0]  r0_map_cpu_wen,
    input  wire        r0_map_cpu_clk,

    // VDP palette read clock.
    input  wire        clk_100,

    // One synchronous read port per palette memory.
    input  wire [7:0]  t0_palette_addr,
    output reg  [15:0] t0_palette_data,

    input  wire [7:0]  t1_palette_addr,
    output reg  [15:0] t1_palette_data,

    input  wire [9:0]  s0_palette_addr,
    output reg  [15:0] s0_palette_data,

    // Live registers used concurrently by the VDP.
    output reg  [31:0] ctrl_reg,
    output reg  [31:0] t0_x_off_reg,
    output reg  [31:0] t0_y_off_reg,
    output reg  [31:0] t1_x_off_reg,
    output reg  [31:0] t1_y_off_reg,

    input  wire [31:0] line_reg,
    input  wire [31:0] stat_reg
);

    wire [10:0] address = r0_map_cpu_addr[12:2];
    wire [31:0] data_in = r0_map_cpu_din;
    wire        en      = r0_map_cpu_en;
    wire [3:0]  w_en    = r0_map_cpu_wen;

    reg [31:0] data_out;
    assign r0_map_cpu_dout = data_out;

    wire [10:0] t0_pal_offset = address - PAL_T0_ADDR;
    wire [10:0] t1_pal_offset = address - PAL_T1_ADDR;
    wire [10:0] s0_pal_offset = address - PAL_S0_ADDR;

    // These arrays are now real RAM candidates instead of exported arrays.
    // Keeping only address/data ports prevents Vivado from building giant
    // 256:1 / 1024:1 mux trees.
    (* ram_style = "block" *) reg [31:0] reg_space_mem [0:255];
    (* ram_style = "block" *) reg [15:0] palette_t0_mem [0:255];
    (* ram_style = "block" *) reg [15:0] palette_t1_mem [0:255];
    (* ram_style = "block" *) reg [15:0] palette_s0_mem [0:1023];

    integer i_reg;
    integer i_t0;
    integer i_t1;
    integer i_s0;

    // ------------------------------------------------------------
    // CPU read/write port
    // ------------------------------------------------------------
    always @(posedge r0_map_cpu_clk) begin

        if(en && (|w_en)) begin
            if((address >= REG_SPACE_ADDR) &&
               (address < REG_SPACE_ADDR + REG_SPACE_SIZE)) begin

                if(w_en[0]) reg_space_mem[address[7:0]][7:0]   <= data_in[7:0];
                if(w_en[1]) reg_space_mem[address[7:0]][15:8]  <= data_in[15:8];
                if(w_en[2]) reg_space_mem[address[7:0]][23:16] <= data_in[23:16];
                if(w_en[3]) reg_space_mem[address[7:0]][31:24] <= data_in[31:24];

                // Mirror only registers that the VDP needs concurrently.
                case(address[7:0])
                    REG_CTRL_0: begin
                        if(w_en[0]) ctrl_reg[7:0]   <= data_in[7:0];
                        if(w_en[1]) ctrl_reg[15:8]  <= data_in[15:8];
                        if(w_en[2]) ctrl_reg[23:16] <= data_in[23:16];
                        if(w_en[3]) ctrl_reg[31:24] <= data_in[31:24];
                    end

                    REG_T0_X_OFF: begin
                        if(w_en[0]) t0_x_off_reg[7:0]   <= data_in[7:0];
                        if(w_en[1]) t0_x_off_reg[15:8]  <= data_in[15:8];
                        if(w_en[2]) t0_x_off_reg[23:16] <= data_in[23:16];
                        if(w_en[3]) t0_x_off_reg[31:24] <= data_in[31:24];
                    end

                    REG_T0_Y_OFF: begin
                        if(w_en[0]) t0_y_off_reg[7:0]   <= data_in[7:0];
                        if(w_en[1]) t0_y_off_reg[15:8]  <= data_in[15:8];
                        if(w_en[2]) t0_y_off_reg[23:16] <= data_in[23:16];
                        if(w_en[3]) t0_y_off_reg[31:24] <= data_in[31:24];
                    end

                    REG_T1_X_OFF: begin
                        if(w_en[0]) t1_x_off_reg[7:0]   <= data_in[7:0];
                        if(w_en[1]) t1_x_off_reg[15:8]  <= data_in[15:8];
                        if(w_en[2]) t1_x_off_reg[23:16] <= data_in[23:16];
                        if(w_en[3]) t1_x_off_reg[31:24] <= data_in[31:24];
                    end

                    REG_T1_Y_OFF: begin
                        if(w_en[0]) t1_y_off_reg[7:0]   <= data_in[7:0];
                        if(w_en[1]) t1_y_off_reg[15:8]  <= data_in[15:8];
                        if(w_en[2]) t1_y_off_reg[23:16] <= data_in[23:16];
                        if(w_en[3]) t1_y_off_reg[31:24] <= data_in[31:24];
                    end
                endcase

            end else if((address >= PAL_T0_ADDR) &&
                        (address < PAL_T0_ADDR + PAL_T0_SIZE)) begin

                if(w_en[0]) palette_t0_mem[t0_pal_offset[7:0]][7:0]  <= data_in[7:0];
                if(w_en[1]) palette_t0_mem[t0_pal_offset[7:0]][15:8] <= data_in[15:8];

            end else if((address >= PAL_T1_ADDR) &&
                        (address < PAL_T1_ADDR + PAL_T1_SIZE)) begin

                if(w_en[0]) palette_t1_mem[t1_pal_offset[7:0]][7:0]  <= data_in[7:0];
                if(w_en[1]) palette_t1_mem[t1_pal_offset[7:0]][15:8] <= data_in[15:8];

            end else if((address >= PAL_S0_ADDR) &&
                        (address < PAL_S0_ADDR + PAL_S0_SIZE)) begin

                if(w_en[0]) palette_s0_mem[s0_pal_offset[9:0]][7:0]  <= data_in[7:0];
                if(w_en[1]) palette_s0_mem[s0_pal_offset[9:0]][15:8] <= data_in[15:8];
            end

        end else if(en) begin
            if((address >= REG_SPACE_ADDR) &&
               (address < REG_SPACE_ADDR + REG_SPACE_SIZE)) begin

                if(address[7:0] == REG_STAT_0)
                    data_out <= stat_reg;
                else if(address[7:0] == REG_LINE)
                    data_out <= line_reg;
                else
                    data_out <= reg_space_mem[address[7:0]];

            end else if((address >= PAL_T0_ADDR) &&
                        (address < PAL_T0_ADDR + PAL_T0_SIZE)) begin

                data_out <= {16'b0, palette_t0_mem[t0_pal_offset[7:0]]};

            end else if((address >= PAL_T1_ADDR) &&
                        (address < PAL_T1_ADDR + PAL_T1_SIZE)) begin

                data_out <= {16'b0, palette_t1_mem[t1_pal_offset[7:0]]};

            end else if((address >= PAL_S0_ADDR) &&
                        (address < PAL_S0_ADDR + PAL_S0_SIZE)) begin

                data_out <= {16'b0, palette_s0_mem[s0_pal_offset[9:0]]};
            end
        end
    end

    // ------------------------------------------------------------
    // VDP palette read ports -- synchronous, one-cycle latency
    // ------------------------------------------------------------
    always @(posedge clk_100) begin
        t0_palette_data <= palette_t0_mem[t0_palette_addr];
        t1_palette_data <= palette_t1_mem[t1_palette_addr];
        s0_palette_data <= palette_s0_mem[s0_palette_addr];
    end

    // ------------------------------------------------------------
    // Initialization
    // ------------------------------------------------------------
    initial begin
        ctrl_reg = 32'b0;
        t0_x_off_reg = 32'b0;
        t0_y_off_reg = 32'b0;
        t1_x_off_reg = 32'b0;
        t1_y_off_reg = 32'b0;
        data_out = 32'b0;
        t0_palette_data = 16'hF000;
        t1_palette_data = 16'hF000;
        s0_palette_data = 16'hF000;

        for(i_reg = 0; i_reg < 256; i_reg = i_reg + 1)
            reg_space_mem[i_reg] = 32'b0;
    end

    initial begin
        for(i_t0 = 0; i_t0 < 256; i_t0 = i_t0 + 1)
            palette_t0_mem[i_t0] = 16'hF000;

        palette_t0_mem[0]  = 16'h0000;
        palette_t0_mem[1]  = 16'hF000;
        palette_t0_mem[2]  = 16'hFFFF;
        palette_t0_mem[3]  = 16'hFF00;
        palette_t0_mem[4]  = 16'hF0F0;
        palette_t0_mem[5]  = 16'hF00F;
        palette_t0_mem[6]  = 16'hFFF0;
        palette_t0_mem[7]  = 16'hFF0F;
        palette_t0_mem[8]  = 16'hF0FF;
        palette_t0_mem[9]  = 16'hF800;
        palette_t0_mem[10] = 16'hF080;
        palette_t0_mem[11] = 16'hF008;
        palette_t0_mem[12] = 16'hF880;
        palette_t0_mem[13] = 16'hF808;
        palette_t0_mem[14] = 16'hF088;
        palette_t0_mem[15] = 16'hF888;
    end

    initial begin
        for(i_t1 = 0; i_t1 < 256; i_t1 = i_t1 + 1)
            palette_t1_mem[i_t1] = 16'hF000;

        palette_t1_mem[0]  = 16'h0000;
        palette_t1_mem[1]  = 16'hF000;
        palette_t1_mem[2]  = 16'hFFFF;
        palette_t1_mem[3]  = 16'hFF00;
        palette_t1_mem[4]  = 16'hF0F0;
        palette_t1_mem[5]  = 16'hF00F;
        palette_t1_mem[6]  = 16'hFFF0;
        palette_t1_mem[7]  = 16'hFF0F;
        palette_t1_mem[8]  = 16'hF0FF;
        palette_t1_mem[9]  = 16'hF800;
        palette_t1_mem[10] = 16'hF080;
        palette_t1_mem[11] = 16'hF008;
        palette_t1_mem[12] = 16'hF880;
        palette_t1_mem[13] = 16'hF808;
        palette_t1_mem[14] = 16'hF088;
        palette_t1_mem[15] = 16'hF888;
    end

    initial begin
        // All four sprite palettes default to opaque black.
        for(i_s0 = 0; i_s0 < 1024; i_s0 = i_s0 + 1)
            palette_s0_mem[i_s0] = 16'hF000;

        // Palette 0 basic colors.
        palette_s0_mem[0]  = 16'h0000;
        palette_s0_mem[1]  = 16'hF000;
        palette_s0_mem[2]  = 16'hFFFF;
        palette_s0_mem[3]  = 16'hFF00;
        palette_s0_mem[4]  = 16'hF0F0;
        palette_s0_mem[5]  = 16'hF00F;
        palette_s0_mem[6]  = 16'hFFF0;
        palette_s0_mem[7]  = 16'hFF0F;
        palette_s0_mem[8]  = 16'hF0FF;
        palette_s0_mem[9]  = 16'hF800;
        palette_s0_mem[10] = 16'hF080;
        palette_s0_mem[11] = 16'hF008;
        palette_s0_mem[12] = 16'hF880;
        palette_s0_mem[13] = 16'hF808;
        palette_s0_mem[14] = 16'hF088;
        palette_s0_mem[15] = 16'hF888;
    end

endmodule

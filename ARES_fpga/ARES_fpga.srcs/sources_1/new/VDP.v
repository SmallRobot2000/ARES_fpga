`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/10/2026 02:49:04 PM
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

    parameter NUM_GEN = 2,
    parameter T0_GEN_NUM = 0,
    parameter S0_GEN_NUM = 1
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
    assign gen_line_start = (h_cnt == 11'b0) && (gen_line >= 0 && gen_line < VGA_V_ACTIVE);
    assign draw_line_start = (h_cnt == VGA_H_BACK_PORCH) && VGA_V_ACTIVE;

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

    //Tile gen
    wire [15:0]t0_dout;
    wire [9:0]t0_addr = gen_fin_pixel; //Not registerd becaus of timing
    wire t0_done;

VDP_tile_gen  #(
    .SCREEN_WIDTH(VGA_H_ACTIVE),
    .SCREEN_HEIGHT(VGA_V_ACTIVE)
) T0_gen (
    .clk_100(clk_100),

    .start(gen_line_start),
    .gen_line(gen_line),

    .x_off(10'd0),
    .y_off(10'd0),

    .buf_dout(t0_dout),
    .buf_addr_out(t0_addr),

    .line_done(t0_done),

    //CPU side

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
    .data_cpu_clk(t0_data_cpu_clk)
);
    wire [15:0] s0_dout;
    wire [9:0]  s0_addr  = gen_fin_pixel; //Not registerd becaus of timing
    wire s0_done;

VDP_sprite_gen #(
    .SCREEN_WIDTH(VGA_H_ACTIVE),
    .SCREEN_HEIGHT(VGA_V_ACTIVE),

    .MAX_SPR_LINE(32) //Maximum of 32 sprites per line
) S0_gen (
    .clk_100(clk_100),

    .start(gen_line_start),
    .gen_line(gen_line),

    .buf_dout(s0_dout),
    .buf_addr_out(s0_addr),

    .line_done(s0_done),

    //CPU side
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
    .data_cpu_clk(s0_data_cpu_clk)
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

                if(s0_dout[15:12] == 4'h0) begin //S0 transperent
                    gen_fin_data <= t0_dout[11:0];
                end else begin
                    gen_fin_data <= s0_dout[11:0];
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
    
    //X and Y pixel offsets
    input  wire [9:0]   x_off,
    input  wire [9:0]   y_off,

    output wire [15:0]  buf_dout,
    input  wire [9:0]   buf_addr_out,

    output reg          line_done = 1'b0,

    //CPU side
    input       [14:0]  map_cpu_addr,
    input       [31:0]  map_cpu_din,
    output      [31:0]  map_cpu_dout,
    input               map_cpu_en,
    input       [3:0]   map_cpu_wen,
    input               map_cpu_clk,

    input       [15:0]  data_cpu_addr,
    input       [31:0]  data_cpu_din,
    output      [31:0]  data_cpu_dout,
    input               data_cpu_en,
    input       [3:0]   data_cpu_wen,
    input               data_cpu_clk
);

    reg [15:0] palette[255:0];
    //Init palette

    integer i;

initial begin
    // Default everything to opaque black
    for (i = 0; i < 256; i = i + 1)
        palette[i] = 16'hF000;

    // Basic colors
    palette[0]  = 16'h0000; // transparent black
    palette[1]  = 16'hF000; // black
    palette[2]  = 16'hFFFF; // white
    palette[3]  = 16'hFF00; // red
    palette[4]  = 16'hF0F0; // green
    palette[5]  = 16'hF00F; // blue
    palette[6]  = 16'hFFF0; // yellow
    palette[7]  = 16'hFF0F; // magenta
    palette[8]  = 16'hF0FF; // cyan

    // Some intermediate colors
    palette[9]  = 16'hF800; // dark red
    palette[10] = 16'hF080; // dark green
    palette[11] = 16'hF008; // dark blue

    palette[12] = 16'hF880; // olive/brown
    palette[13] = 16'hF808; // purple
    palette[14] = 16'hF088; // teal
    palette[15] = 16'hF888; // gray
end

    reg [9:0] pixel_addr = 10'b0;
    wire pixel_wen; // Make COMB for correct timing

    wire [15:0] pixel_data_comb;
blk_mem_buf_line line_buf
(
    .addra(pixel_addr),
    .clka(clk_100),
    .dina(pixel_data_comb),
    .wea(1'b1),
    .ena(pixel_wen),

    .addrb(buf_addr_out),
    .clkb(clk_100),
    .doutb(buf_dout),
    .web(1'b0)
);

    localparam CHAR_H_CNT = SCREEN_WIDTH / CHAR_WIDTH;
    localparam CHAR_V_CNT = SCREEN_HEIGHT / CHAR_HEIGHT;

    localparam MAP_CHAR_WIDTH = 128;
    localparam MAP_CHAR_HEIGHT = 128;
    //Tile MAP

    //VDP side
    wire[15:0] map_a_dout;
    reg [13:0] map_r_addr = 14'b0;
    wire [9:0] map_r_data;
    assign map_r_data = map_a_dout[9:0];

    //CPU side
   /*
    wire [12:0]map_cpu_addr;
    wire [31:0]map_cpu_din;
    wire [31:0]map_cpu_dout;
    wire map_cpu_en;
    wire [3:0]map_cpu_wen;
    */
blk_mem_tile_map Tile_MAP_mem
(
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

    //Tile DATA
    //VDP side
    reg [12:0]data_r_addr = 13'b0;
    wire [63:0]data_r_data;
    //CPU side
    /*
    wire [13:0]data_cpu_addr;
    wire [31:0]data_cpu_dout;
    wire [31:0]data_cpu_din;
    wire data_cpu_en;
    wire [3:0]data_cpu_wen;
    */
blk_mem_tile_data Tile_DATA_mem
(
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

/*
working with
    reg [9:0] pixel_addr;
    reg [15:0] pixel_data;
    reg write_en;
    input           wire start,
    input [9:0]     wire gen_line,
    output          wire line_done

    parameter CHAR_WIDTH = 8,
    parameter CHAR_HEIGHT = 8,
*/
    

    localparam STATE_WAIT = 12'h001;
    localparam STATE_START = 12'h002;
    localparam STATE_C0 = 12'h004;
    localparam STATE_C1 = 12'h008;
    localparam STATE_C2 = 12'h010;
    localparam STATE_C3 = 12'h020;
    localparam STATE_C4 = 12'h040;
    reg [11:0]state = STATE_WAIT;

    wire [13:0] map_line_addr_start;
    assign map_line_addr_start = (((gen_line + y_off) >> 3) * MAP_CHAR_WIDTH);

    reg [6:0] map_x = 0;
    reg [2:0] tile_pixel = 0;

    wire [7:0] palette_index = data_r_data[tile_pixel * 8 +: 8];

    assign pixel_data_comb = palette[palette_index];
    assign pixel_wen = (state == STATE_C3);

    always @(posedge clk_100) begin
        case(state)
            STATE_WAIT: begin
                map_x <= x_off >> 3;
                pixel_addr <= 1'b0;
                line_done <= 1'b0;
                tile_pixel <= x_off[2:0];
                if(start) begin
                    state <= STATE_START;
                end
            end

            STATE_START: begin
                //Compute start address
                map_r_addr <= map_line_addr_start + map_x;
                state <= STATE_C0;
            end

            STATE_C0: begin
                //Wait for Tile MAP entry
                state <= STATE_C1;
            end
            STATE_C1: begin
                //map_r_data; //Tile index here
                data_r_addr <= (map_r_data << 3) + ((gen_line + y_off) & 3'b111); //Correct tile y row
                state <= STATE_C2;
            end
            STATE_C2: begin
                //Wait for Tile data
                state <= STATE_C3;
            end
           STATE_C3: begin
                // data_r_data contains complete 8-pixel tile row
                if (pixel_addr == SCREEN_WIDTH - 1) begin
                    line_done <= 1'b1;
                    state <= STATE_WAIT;
                end
                else begin
                    pixel_addr <= pixel_addr + 1'b1;

                    if (tile_pixel == 3'd7) begin
                        tile_pixel <= 3'd0;
                        map_x      <= map_x + 1'b1;
                        state      <= STATE_START;
                    end
                    else begin
                        tile_pixel <= tile_pixel + 1'b1;
                    end
                end
            end

        endcase 
    end

endmodule






/*
    Genereates output from 64 attribute entryes of 16x16 sprites and data
*/
module VDP_sprite_gen #(
    parameter SCREEN_WIDTH = 640,
    parameter SCREEN_HEIGHT = 480,

    parameter SPRITE_WIDTH = 16, //(Normal)
    parameter SPRITE_HEIGHT = 16,
    parameter SPRITEL_WIDTH = 32, //(Large)
    parameter SPRITEL_HEIGHT = 32,
    parameter MAX_SPR_LINE = 32 //Maximum of 32 sprites per line
)(
    input  wire         clk_100,

    input  wire         start,
    input  wire [9:0]   gen_line,

    output wire [15:0]  buf_dout,
    input  wire [9:0]   buf_addr_out,
    

    output reg          line_done = 1'b0,

    //CPU side
    input       [8:0]   att_cpu_addr,
    input       [31:0]  att_cpu_din,
    output      [31:0]  att_cpu_dout,
    input               att_cpu_en,
    input       [3:0]   att_cpu_wen,
    input               att_cpu_clk,

    input       [14:0]  data_cpu_addr,
    input       [31:0]  data_cpu_din,
    output      [31:0]  data_cpu_dout,
    input               data_cpu_en,
    input       [3:0]   data_cpu_wen,
    input               data_cpu_clk
);

    reg [15:0] palette [0:3][0:255];
    //Init palette

    integer i;

initial begin
    // Default everything to opaque black
    for (i = 0; i < 256; i = i + 1)
        palette[0][i] = 16'hF000;

    // Basic colors
    palette[0][0]  = 16'h0000; // transparent black
    palette[0][1]  = 16'hF000; // black
    palette[0][2]  = 16'hFFFF; // white
    palette[0][3]  = 16'hFF00; // red
    palette[0][4]  = 16'hF0F0; // green
    palette[0][5]  = 16'hF00F; // blue
    palette[0][6]  = 16'hFFF0; // yellow
    palette[0][7]  = 16'hFF0F; // magenta
    palette[0][8]  = 16'hF0FF; // cyan

    // Some intermediate colors
    palette[0][9]  = 16'hF800; // dark red
    palette[0][10] = 16'hF080; // dark green
    palette[0][11] = 16'hF008; // dark blue

    palette[0][12] = 16'hF880; // olive/brown
    palette[0][13] = 16'hF808; // purple
    palette[0][14] = 16'hF088; // teal
    palette[0][15] = 16'hF888; // gray
end
    wire [7:0] spr_line_vdp_addr;
    wire [7:0] spr_line_vdp_we;
    wire [63:0] spr_line_vdp_din;
blk_mem_gen_spr_line spr_line
(
    .addra(spr_line_vdp_addr),
    .dina(spr_line_vdp_din),
    .wea(spr_line_vdp_we),
    .clka(clk_100),


    .doutb(buf_dout),
    .web(2'b0),

    .clkb(clk_100),
    .addrb(buf_addr_out)

);
    //VDP side
    wire [127:0]    spr_data_vdp_dout;
    wire [10:0]     spr_data_vdp_addr;
blk_mem_gen_spr_data spr_data
(   
    .clka(clk_100),
    .addra(spr_data_vdp_addr),
    .douta(spr_data_vdp_dout),
    .dina(),
    .wea(16'b0),


    .clkb(data_cpu_clk),
    .addrb(data_cpu_addr[14:2]),
    .doutb(data_cpu_dout),
    .dinb(data_cpu_din),
    .web(data_cpu_wen),
    .enb(data_cpu_en)
);

    //VDP side
    wire [63:0]    spr_att_vdp_dout;
    wire [5:0]     spr_att_vdp_addr;
blk_mem_gen_spr_att spr_att
(
    .clka(clk_100),
    .addra(spr_att_vdp_addr),
    .douta(spr_att_vdp_dout),
    .dina(),
    .wea(8'b0),

    .clkb(att_cpu_clk),
    .addrb(att_cpu_addr[8:2]),
    .doutb(att_cpu_dout),
    .dinb(att_cpu_din),
    .web(att_cpu_wen),
    .enb(att_cpu_en)
);

/*
    XX - Not used / undefined

        |15|14|13|12|11|10| 9| 8| 7| 6| 5| 4| 3| 2| 1| 0|
        |                 |             x_pos           |

        |31|30|29|28|27|26|25|24|23|22|21|20|19|18|17|16|
        |                 |             y_pos           |

        |47|46|45|44|43|42|41|40|39|38|37|36|35|34|33|32|
        |XX|                     offset      XX XX XX XX|

        |63|62|61|60|59|58|57|56|55|54|53|52|51|50|49|48|
        |AC|                       |SCALE|SZ|V |H | PAL |


*/
//Transform raw data from att to useful bits
    wire [9:0]  x_pos       = spr_att_vdp_dout[9:0];
    wire [9:0]  y_pos       = spr_att_vdp_dout[25:16];
    wire [10:0] offset      = spr_att_vdp_dout[46:36];
    wire [1:0]  scale       = spr_att_vdp_dout[54:53];
    wire        size        = spr_att_vdp_dout[52];
    wire        v_flip      = spr_att_vdp_dout[51];
    wire        h_flip      = spr_att_vdp_dout[50];
    wire        pall_num    = spr_att_vdp_dout[49:48];
    wire        active      = spr_att_vdp_dout[63];
//Att positin (counter/addr)
    reg [5:0]   att_pos = 6'b0;
//Data position addr
    reg [10:0]  data_pos = 11'b0;
//Current sprite row:
    wire [5:0] sprite_row = gen_line - y_pos;
//Current sprite width
    wire [5:0] sprite_width = size ? 6'd32 : 6'd16;
//Save the correct data for curent row (data size is for 32x32 sprite)
    reg  [63:0] row_data[1:0];
    assign      spr_data_vdp_addr = data_pos;
    assign      spr_att_vdp_addr  = att_pos;
//Line buffer position [one address is 4 pixels]
    reg  [7:0]  line_pos;
    reg  [7:0]  line_pos_reg;
    reg  [1:0]  line_off;   //Offset from perfect alignment
    reg  [63:0] line_data;
    reg  [7:0]  line_we;

    assign      spr_line_vdp_addr = line_pos_reg;
    assign      spr_line_vdp_din = line_data;
    assign      spr_line_vdp_we = line_we;
//Row buffer
    reg  [15:0]row_buf[0:31];

    localparam STATE_WAIT = 12'h001;
    localparam STATE_START = 12'h002;
    localparam STATE_C0 = 12'h004;
    localparam STATE_C1 = 12'h008;
    localparam STATE_C2 = 12'h010;
    localparam STATE_C3 = 12'h020;
    localparam STATE_C4 = 12'h040;
    localparam STATE_C5 = 12'h080;
    localparam STATE_C6 = 12'h100;
    localparam STATE_NEXT = 12'h200;
    localparam STATE_CLEAR = 12'h400;
    reg [11:0]state = STATE_WAIT;

   
    reg [3:0] line_word;   // which 64-bit word of this sprite write
    integer src_pixel;

    reg [7:0] spr_cnt;
    reg [7:0] clear_pos = 0;   // needs 0..159
    always @(posedge clk_100) begin
        case(state)
            STATE_WAIT: begin
                line_we <= 8'b0;
                line_done <= 1'b0;
                att_pos <= 6'b0;
                spr_cnt <= 'b0;
                clear_pos <= 8'b0;
            if(start)
                state <= STATE_CLEAR;
            end

            STATE_CLEAR: begin
                // Write four transparent/black pixels
                line_pos  <= clear_pos;
                line_data <= 64'b0;
                line_we   <= 8'hFF;

                line_pos_reg <= line_pos;
                if (clear_pos == (SCREEN_WIDTH / 4) - 1) begin
                    state <= STATE_START;
                end
                else begin
                    clear_pos <= clear_pos + 1'b1;
                end
            end
            STATE_START: begin
                //Because on 1st addr is valid will make it so its always
                //all att bits are valid here
                line_we <= 8'b0;
                
                if((y_pos <= gen_line) && ((y_pos + (size ? SPRITEL_HEIGHT-1 : SPRITE_HEIGHT-1)) >= gen_line) && active) begin //Chek if a active sprite is on this line
                    data_pos <= offset +
                                (size
                                    ? ((v_flip ? (SPRITEL_HEIGHT - 1 - sprite_row)
                                               : sprite_row) << 1)
                                    :  (v_flip ? (SPRITE_HEIGHT - 1 - sprite_row)
                                               : sprite_row));
                    state <= STATE_C0;
                end else begin
                    att_pos <= att_pos + 1;
                    state <= STATE_NEXT; //Skip this sprite entry we change because we need to wait 1 cycle
                end
            end

            STATE_C0: begin
                //Do some computing and wait for data to be ready
                line_pos = x_pos[9:2]; //Round to 4 pixels
                line_off = x_pos[1:0]; //Offset inside the 4 pixels
                line_word <= 0;
                state <= STATE_C1;
            end
            STATE_C1: begin
                //spr_data_vdp_dout valid first 16 pixels [128 bits] 8bpp

                //Genereate row_buffer(16 pixels)
                for (i = 0; i < 16; i = i + 1) begin
                    if(h_flip)
                        row_buf[(size ? 31 : 15)-i] <= palette[pall_num][spr_data_vdp_dout[i*8 +: 8]];
                    else
                        row_buf[i] <= palette[pall_num][spr_data_vdp_dout[i*8 +: 8]];
                end

                //Depending on size of the sprite calculate if we done reading data or not
                if(size) begin
                    data_pos <= data_pos + 1;
                    state <= STATE_C2;
                end else begin
                    state <= STATE_C4;
                end
            end
            STATE_C2: begin
                //wait another row
                state <= STATE_C3;
            end
            STATE_C3: begin
                //read another row
                for (i = 0; i < 16; i = i + 1) begin
                    if(h_flip)
                        row_buf[15-i] <= palette[pall_num][spr_data_vdp_dout[i*8 +: 8]];
                    else
                        row_buf[i+16] <= palette[pall_num][spr_data_vdp_dout[i*8 +: 8]];
                end
                state <= STATE_C4;
            end
            STATE_C4: begin
                //whole row_buf is valid, need to fill line buffer
                line_data <= 64'b0;
                line_we <= 8'b0;
                //Pipline
                line_pos_reg <= line_pos;
                 for (i = 0; i < 4; i = i + 1) begin

                    // Which sprite pixel corresponds to this
                    // pixel lane of the current 64-bit word?
                    src_pixel = (line_word * 4) + i - line_off;

                    if ((src_pixel >= 0) &&
                        (src_pixel < sprite_width) &&
                        (row_buf[src_pixel][15:12] != 4'h0)) begin
                        
                        line_data[i*16 +: 16] <= row_buf[src_pixel];

                        line_we[i*2 +: 2] <= 2'b11;
                    end
                end

                // Is this the last 64-bit word touched by sprite?
                if (((line_word + 1) * 4) >= (sprite_width + line_off)) begin
                
                    // Finished complete 16/32 pixel sprite row
                    state <= STATE_C5;

                end else begin
                
                    line_word <= line_word + 1'b1;
                    line_pos  <= line_pos + 1'b1;
                end
            end
            STATE_C5: begin
                line_we <= 8'b0;
                att_pos <= att_pos + 1;
                spr_cnt <= spr_cnt + 1;
                state <= STATE_NEXT;
            end
            STATE_NEXT: begin
                if(att_pos == 6'b0 || spr_cnt == MAX_SPR_LINE) begin //Rolled over so we must be done or we did maximum number of sprites on this line
                    line_done <= 1'b1;
                    state <= STATE_WAIT;
                end else    
                    state <= STATE_START; //Else do next one
            end
        endcase 
    end

endmodule



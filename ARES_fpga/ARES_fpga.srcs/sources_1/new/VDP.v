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
    parameter VGA_V_TOTAL = VGA_V_BACK_PORCH + VGA_V_ACTIVE + VGA_V_FRONT_PORCH + VGA_V_SYNC
)(

    // ============================================================
    // TILE MAP CPU BRAM interface
    // ============================================================

    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 MAP_CPU_BRAM ADDR" *)
    input  wire [12:0] map_cpu_addr,

    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 MAP_CPU_BRAM DIN" *)
    input  wire [31:0] map_cpu_din,

    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 MAP_CPU_BRAM DOUT" *)
    output wire [31:0] map_cpu_dout,

    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 MAP_CPU_BRAM EN" *)
    input  wire        map_cpu_en,

    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 MAP_CPU_BRAM WE" *)
    input  wire [3:0]  map_cpu_wen,

    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 MAP_CPU_BRAM CLK" *)
    (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME MAP_CPU_BRAM, MASTER_TYPE BRAM_CTRL, MEM_SIZE 32768, READ_WRITE_MODE READ_WRITE" *)
    input  wire        map_cpu_clk,

    // ============================================================
    // TILE DATA CPU BRAM interface
    // ============================================================

    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 DATA_CPU_BRAM ADDR" *)
    input  wire [13:0] data_cpu_addr,

    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 DATA_CPU_BRAM DIN" *)
    input  wire [31:0] data_cpu_din,

    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 DATA_CPU_BRAM DOUT" *)
    output wire [31:0] data_cpu_dout,

    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 DATA_CPU_BRAM EN" *)
    input  wire        data_cpu_en,

    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 DATA_CPU_BRAM WE" *)
    input  wire [3:0]  data_cpu_wen,

    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 DATA_CPU_BRAM CLK" *)
    (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA_CPU_BRAM, MASTER_TYPE BRAM_CTRL, MEM_SIZE 65536, READ_WRITE_MODE READ_WRITE" *)
    input  wire        data_cpu_clk,

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
    .data_cpu_clk(data_cpu_clk)
);
    
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
        case(gen_fin_state)
            STATE_WAIT: begin
                gen_fin_buf_en <= 1'b0;
                gen_fin_pixel <= 10'b0;
                if(gen_line_start)
                    gen_fin_state <= STATE_START;    
            end
            STATE_START: begin
                if(t0_done)
                    gen_fin_state <= STATE_C0;
            end
            STATE_C0: begin
                gen_fin_buf_en <= 1'b1;
                gen_fin_pixel <= gen_fin_pixel + 1;
                gen_fin_data <= t0_dout[11:0];

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
    input       [12:0]  map_cpu_addr,
    input       [31:0]  map_cpu_din,
    output      [31:0]  map_cpu_dout,
    input               map_cpu_en,
    input       [3:0]   map_cpu_wen,
    input               map_cpu_clk,

    input       [13:0]  data_cpu_addr,
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

    .addrb(map_cpu_addr),
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

    .addrb(data_cpu_addr),
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
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/16/2026 09:02:49 PM
// Design Name: 
// Module Name: VDP_wrapper
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


module VDP_wrapper(

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
    // REGISTER / PALETTE CPU BRAM interface
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



VDP #(
        .VGA_H_ACTIVE(640),
        .VGA_V_ACTIVE(480),

        .VGA_H_SYNC(96),
        .VGA_V_SYNC(2),

        .VGA_H_FRONT_PORCH(16),
        .VGA_V_FRONT_PORCH(11),

        .VGA_H_BACK_PORCH(48),
        .VGA_V_BACK_PORCH(31),

        .NUM_GEN(2),
        .T0_GEN_NUM(0),
        .S0_GEN_NUM(1)


    ) dut (

        // --------------------------------------------------------
        // TILE 0 MAP
        // --------------------------------------------------------

        .t0_map_cpu_addr(t0_map_cpu_addr),
        .t0_map_cpu_din(t0_map_cpu_din),
        .t0_map_cpu_dout(t0_map_cpu_dout),
        .t0_map_cpu_en(t0_map_cpu_en),
        .t0_map_cpu_wen(t0_map_cpu_wen),
        .t0_map_cpu_clk(t0_map_cpu_clk),


        // --------------------------------------------------------
        // TILE 0 DATA
        // --------------------------------------------------------

        .t0_data_cpu_addr(t0_data_cpu_addr),
        .t0_data_cpu_din(t0_data_cpu_din),
        .t0_data_cpu_dout(t0_data_cpu_dout),
        .t0_data_cpu_en(t0_data_cpu_en),
        .t0_data_cpu_wen(t0_data_cpu_wen),
        .t0_data_cpu_clk(t0_data_cpu_clk),


        // --------------------------------------------------------
        // SPRITE 0 ATTRIBUTES
        // --------------------------------------------------------

        .s0_att_cpu_addr(s0_att_cpu_addr),
        .s0_att_cpu_din(s0_att_cpu_din),
        .s0_att_cpu_dout(s0_att_cpu_dout),
        .s0_att_cpu_en(s0_att_cpu_en),
        .s0_att_cpu_wen(s0_att_cpu_wen),
        .s0_att_cpu_clk(s0_att_cpu_clk),


        // --------------------------------------------------------
        // SPRITE 0 DATA
        // --------------------------------------------------------

        .s0_data_cpu_addr(s0_data_cpu_addr),
        .s0_data_cpu_din(s0_data_cpu_din),
        .s0_data_cpu_dout(s0_data_cpu_dout),
        .s0_data_cpu_en(s0_data_cpu_en),
        .s0_data_cpu_wen(s0_data_cpu_wen),
        .s0_data_cpu_clk(s0_data_cpu_clk),

        // --------------------------------------------------------
        // REGISTER / PALETTE MEMORY
        // --------------------------------------------------------

        .r0_map_cpu_addr (r0_map_cpu_addr),
        .r0_map_cpu_din  (r0_map_cpu_din),
        .r0_map_cpu_dout (r0_map_cpu_dout),
        .r0_map_cpu_en   (r0_map_cpu_en),
        .r0_map_cpu_wen  (r0_map_cpu_wen),
        .r0_map_cpu_clk  (r0_map_cpu_clk),

        // --------------------------------------------------------
        // Common VDP
        // --------------------------------------------------------

        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),

        .h_sync(h_sync),
        .v_sync(v_sync),

        .vga_r(vga_r),
        .vga_g(vga_g),
        .vga_b(vga_b)
    );

endmodule

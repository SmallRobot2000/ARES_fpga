`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/11/2026 10:02:04 PM
// Design Name: 
// Module Name: RasterIXwrapper
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


module ARES_RasterIXWrapper #(
    parameter ADDR_WIDTH = 32,
    parameter DATA_WIDTH = 64,
    parameter ID_WIDTH   = 4,
    parameter STRB_WIDTH = DATA_WIDTH / 8
)
(
    input  wire                     aclk,
    input  wire                     resetn,

    // =========================================================
    // RasterIX command AXI-Stream input
    // =========================================================
    input  wire                     s_cmd_axis_tvalid,
    output wire                     s_cmd_axis_tready,
    input  wire                     s_cmd_axis_tlast,
    input  wire [31:0]              s_cmd_axis_tdata,

    // =========================================================
    // RasterIX command response AXI-Stream
    // =========================================================
    output wire                     m_cmd_resp_axis_tvalid,
    input  wire                     m_cmd_resp_axis_tready,
    output wire                     m_cmd_resp_axis_tlast,
    output wire [31:0]              m_cmd_resp_axis_tdata,

    // =========================================================
    // Framebuffer control
    // =========================================================
    output wire                     swap_fb,
    output wire                     swap_fb_enable_vsync,
    output wire [ADDR_WIDTH-1:0]    fb_addr,
    output wire [19:0]              fb_size,
    input  wire                     fb_swapped,

    // =========================================================
    // AXI4 Master -> SmartConnect -> MIG DDR3
    // =========================================================

    // Write address
    output wire [ID_WIDTH-1:0]      m_axi_awid,
    output wire [ADDR_WIDTH-1:0]    m_axi_awaddr,
    output wire [7:0]               m_axi_awlen,
    output wire [2:0]               m_axi_awsize,
    output wire [1:0]               m_axi_awburst,
    output wire                     m_axi_awlock,
    output wire [3:0]               m_axi_awcache,
    output wire [2:0]               m_axi_awprot,
    output wire                     m_axi_awvalid,
    input  wire                     m_axi_awready,

    // Write data
    output wire [DATA_WIDTH-1:0]    m_axi_wdata,
    output wire [STRB_WIDTH-1:0]    m_axi_wstrb,
    output wire                     m_axi_wlast,
    output wire                     m_axi_wvalid,
    input  wire                     m_axi_wready,

    // Write response
    input  wire [ID_WIDTH-1:0]      m_axi_bid,
    input  wire [1:0]               m_axi_bresp,
    input  wire                     m_axi_bvalid,
    output wire                     m_axi_bready,

    // Read address
    output wire [ID_WIDTH-1:0]      m_axi_arid,
    output wire [ADDR_WIDTH-1:0]    m_axi_araddr,
    output wire [7:0]               m_axi_arlen,
    output wire [2:0]               m_axi_arsize,
    output wire [1:0]               m_axi_arburst,
    output wire                     m_axi_arlock,
    output wire [3:0]               m_axi_arcache,
    output wire [2:0]               m_axi_arprot,
    output wire                     m_axi_arvalid,
    input  wire                     m_axi_arready,

    // Read data
    input  wire [ID_WIDTH-1:0]      m_axi_rid,
    input  wire [DATA_WIDTH-1:0]    m_axi_rdata,
    input  wire [1:0]               m_axi_rresp,
    input  wire                     m_axi_rlast,
    input  wire                     m_axi_rvalid,
    output wire                     m_axi_rready,

    // =========================================================
    // Debug / performance
    // =========================================================
    output wire                     perf_busy,
    output wire                     perf_triangle_rendering,
    output wire                     perf_rasterizer_stall
);



//wire fb_swapped_internal;

//assign fb_swapped_internal = ~swap_fb;

    RasterIX #(
        // -----------------------------------------------------
        // Internal framebuffer variant
        // -----------------------------------------------------
        .VARIANT("if"),

        // 2^15 = 32768 pixels: six 64-line strips at 512x384
        .FRAMEBUFFER_SIZE_IN_PIXEL_LG(15),

        // RGB555 internal representation
        .FRAMEBUFFER_SUB_PIXEL_WIDTH(5),

        // No alpha channel -> saves BRAM
        .FRAMEBUFFER_ENABLE_ALPHA_CHANNEL(0),

        // -----------------------------------------------------
        // Rasterizer
        // -----------------------------------------------------
        .SUB_PIXEL_CALC_PRECISION(8),

        .ENABLE_DEPTH_BUFFER(1),
        .ENABLE_STENCIL_BUFFER(1),

        // One texture unit
        .TMU_COUNT(1),

        // Feature set used by the Linux OpenGL runtime
        .ENABLE_MIPMAPPING(0),
        .ENABLE_TEXTURE_FILTERING(0),
        .ENABLE_FOG(1),

        // -----------------------------------------------------
        // Texture memory
        // -----------------------------------------------------
        .TEXTURE_PAGE_SIZE(2048),

        // Store textures in DDR3
        .ENABLE_EXTERNAL_TEXTURE_MEMORY(1),

        // 16 KiB BRAM texture cache
        .CACHE_SIZE(16384),

        .MAX_TEXTURE_SIZE(256),

        // -----------------------------------------------------
        // AXI memory interface
        // -----------------------------------------------------
        .ADDR_WIDTH(ADDR_WIDTH),
        .ID_WIDTH(ID_WIDTH),
        .DATA_WIDTH(DATA_WIDTH),
        .STRB_WIDTH(STRB_WIDTH),

        // Not relevant for IF, but harmless
        .ENABLE_MEMORY_COALESCING(1),

        // -----------------------------------------------------
        // Fixed-point rasterizer
        // -----------------------------------------------------
        .RASTERIZER_ENABLE_FLOAT_INTERPOLATION(0),
        .RASTERIZER_FIXPOINT_PRECISION(25)

    ) rasterix_inst (

        .aclk(aclk),
        .resetn(resetn),

        // Command stream
        .s_cmd_axis_tvalid(s_cmd_axis_tvalid),
        .s_cmd_axis_tready(s_cmd_axis_tready),
        .s_cmd_axis_tlast(s_cmd_axis_tlast),
        .s_cmd_axis_tdata(s_cmd_axis_tdata),

        // Command response
        .m_cmd_resp_axis_tvalid(m_cmd_resp_axis_tvalid),
        .m_cmd_resp_axis_tready(m_cmd_resp_axis_tready),
        .m_cmd_resp_axis_tlast(m_cmd_resp_axis_tlast),
        .m_cmd_resp_axis_tdata(m_cmd_resp_axis_tdata),

        // Framebuffer
        .swap_fb(swap_fb),
        .swap_fb_enable_vsync(swap_fb_enable_vsync),
        .fb_addr(fb_addr),
        .fb_size(fb_size),
        .fb_swapped(fb_swapped),
        //.fb_swapped(fb_swapped_internal),
        

        // AXI write address
        .m_axi_awid(m_axi_awid),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awlock(m_axi_awlock),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_awready(m_axi_awready),

        // AXI write data
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wvalid(m_axi_wvalid),
        .m_axi_wready(m_axi_wready),

        // AXI write response
        .m_axi_bid(m_axi_bid),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_bready(m_axi_bready),

        // AXI read address
        .m_axi_arid(m_axi_arid),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arlen(m_axi_arlen),
        .m_axi_arsize(m_axi_arsize),
        .m_axi_arburst(m_axi_arburst),
        .m_axi_arlock(m_axi_arlock),
        .m_axi_arcache(m_axi_arcache),
        .m_axi_arprot(m_axi_arprot),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_arready(m_axi_arready),

        // AXI read data
        .m_axi_rid(m_axi_rid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_rready(m_axi_rready),

        // Performance
        .perfBusy(perf_busy),
        .perfTriangleRendering(perf_triangle_rendering),
        .perfRasterizerStall(perf_rasterizer_stall)
    );

endmodule

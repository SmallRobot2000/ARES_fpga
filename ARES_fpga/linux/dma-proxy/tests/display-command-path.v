// SPDX-License-Identifier: GPL-2.0-only
// Real FrameStreamingCore + CommandParser + RegisterBank path used by --display.
module DisplayCommandPath (
    input  wire        aclk,
    input  wire        resetn,
    input  wire        s_axis_tvalid,
    output wire        s_axis_tready,
    input  wire        s_axis_tlast,
    input  wire [31:0] s_axis_tdata,
    input  wire        fb_swapped,
    output wire        swap_fb,
    output wire        swap_fb_enable_vsync,
    output wire [31:0] fb_addr,
    output wire [19:0] fb_size,
    output wire        memory_request,
    output wire        unexpected_response
);
    wire        parser_tvalid;
    wire        parser_tready;
    wire        parser_tlast;
    wire [31:0] parser_tdata;

    wire        config_tvalid;
    wire        config_tlast;
    wire [31:0] config_tdata;
    wire [4:0]  config_tuser;
    wire [607:0] registers;

    wire color_apply;
    wire color_commit;
    wire color_memset;
    wire color_swap;
    wire color_read;
    wire depth_apply;
    wire stencil_apply;

    wire mem_awvalid;
    wire mem_wvalid;
    wire mem_arvalid;
    wire response_valid;

    FrameStreamingCore #(
        .STREAM_WIDTH(32), .ADDR_WIDTH(32), .ID_WIDTH(4)
    ) router (
        .aclk(aclk), .resetn(resetn),
        .m_st0_axis_tvalid(response_valid), .m_st0_axis_tready(1'b1),
        .m_st0_axis_tlast(), .m_st0_axis_tdata(),
        .s_st0_axis_tvalid(s_axis_tvalid), .s_st0_axis_tready(s_axis_tready),
        .s_st0_axis_tlast(s_axis_tlast), .s_st0_axis_tdata(s_axis_tdata),
        .m_st1_axis_tvalid(parser_tvalid), .m_st1_axis_tready(parser_tready),
        .m_st1_axis_tlast(parser_tlast), .m_st1_axis_tdata(parser_tdata),
        .s_st1_axis_tvalid(1'b0), .s_st1_axis_tready(),
        .s_st1_axis_tlast(1'b0), .s_st1_axis_tdata(32'b0),
        .m_mem_axi_awid(), .m_mem_axi_awaddr(), .m_mem_axi_awlen(),
        .m_mem_axi_awsize(), .m_mem_axi_awburst(), .m_mem_axi_awlock(),
        .m_mem_axi_awcache(), .m_mem_axi_awprot(), .m_mem_axi_awvalid(mem_awvalid),
        .m_mem_axi_awready(1'b0), .m_mem_axi_wdata(), .m_mem_axi_wstrb(),
        .m_mem_axi_wlast(), .m_mem_axi_wvalid(mem_wvalid), .m_mem_axi_wready(1'b0),
        .m_mem_axi_bid(4'b0), .m_mem_axi_bresp(2'b0), .m_mem_axi_bvalid(1'b0),
        .m_mem_axi_bready(), .m_mem_axi_arid(), .m_mem_axi_araddr(),
        .m_mem_axi_arlen(), .m_mem_axi_arsize(), .m_mem_axi_arburst(),
        .m_mem_axi_arlock(), .m_mem_axi_arcache(), .m_mem_axi_arprot(),
        .m_mem_axi_arvalid(mem_arvalid), .m_mem_axi_arready(1'b0),
        .m_mem_axi_rid(4'b0), .m_mem_axi_rdata(32'b0), .m_mem_axi_rresp(2'b0),
        .m_mem_axi_rlast(1'b0), .m_mem_axi_rvalid(1'b0), .m_mem_axi_rready()
    );

    CommandParser #(.CMD_STREAM_WIDTH(32), .TEXTURE_STREAM_WIDTH(32),
                    .FB_SIZE_IN_PIXEL_LG(20)) parser (
        .aclk(aclk), .resetn(resetn),
        .s_cmd_axis_tvalid(parser_tvalid), .s_cmd_axis_tready(parser_tready),
        .s_cmd_axis_tlast(parser_tlast), .s_cmd_axis_tdata(parser_tdata),
        .m_cmd_xxx_axis_tdata(config_tdata), .m_cmd_xxx_axis_tuser(config_tuser),
        .m_cmd_xxx_axis_tlast(config_tlast), .m_cmd_fog_axis_tvalid(),
        .m_cmd_rasterizer_axis_tvalid(), .m_cmd_tmu0_axis_tvalid(),
        .m_cmd_tmu1_axis_tvalid(), .m_cmd_config_axis_tvalid(config_tvalid),
        .m_cmd_fog_axis_tready(1'b1), .m_cmd_rasterizer_axis_tready(1'b1),
        .m_cmd_tmu0_axis_tready(1'b1), .m_cmd_tmu1_axis_tready(1'b1),
        .m_cmd_config_axis_tready(1'b1), .rasterizerRunning(1'b0),
        .pixelInPipeline(1'b0), .dataInTriangleInterpolator(1'b0),
        .colorBufferApply(color_apply),
        .colorBufferApplied(fb_swapped),
        .colorBufferCmdCommit(color_commit),
        .colorBufferCmdMemset(color_memset),
        .colorBufferCmdSwap(color_swap),
        .colorBufferCmdRead(color_read),
        .colorBufferCmdSwapEnableVsync(swap_fb_enable_vsync),
        .colorBufferSize(fb_size),
        .depthBufferApply(depth_apply), .depthBufferApplied(1'b1),
        .depthBufferCmdCommit(), .depthBufferCmdMemset(),
        .depthBufferCmdRead(), .depthBufferSize(),
        .stencilBufferApply(stencil_apply), .stencilBufferApplied(1'b1),
        .stencilBufferCmdCommit(), .stencilBufferCmdMemset(),
        .stencilBufferCmdRead(), .stencilBufferSize(),
        .perfBusy(), .perfTriangleRendering()
    );

    RegisterBank #(.BANK_SIZE(19), .CMD_STREAM_WIDTH(32), .COMPRESSED(1)) bank (
        .aclk(aclk), .resetn(resetn), .s_axis_tvalid(config_tvalid),
        .s_axis_tlast(config_tlast), .s_axis_tdata(config_tdata),
        .s_axis_tuser(config_tuser), .registers(registers),
        .registers_updated(), .update_acknowledged(1'b1)
    );

    assign fb_addr = registers[16 * 32 +: 32];
    assign swap_fb = color_apply && color_swap;
    assign memory_request = mem_awvalid || mem_wvalid || mem_arvalid;
    assign unexpected_response = response_valid || color_commit || color_memset ||
                                 color_read || depth_apply || stencil_apply;
endmodule

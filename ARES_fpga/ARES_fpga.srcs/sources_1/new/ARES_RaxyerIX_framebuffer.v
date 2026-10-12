`timescale 1ns / 1ps

module ARES_RaxyerIX_framebuffer #(
    parameter ADDR_WIDTH    = 32,
    parameter SCREEN_WIDTH  = 640,
    parameter SCREEN_HEIGHT = 480
)(
    input  wire                     resetn,

    // =========================================================
    // RasterIX framebuffer control
    // =========================================================
    input  wire                     swap_fb,
    input  wire                     swap_fb_enable_vsync,
    input  wire [ADDR_WIDTH-1:0]    fb_addr,
    input  wire [19:0]              fb_size,
    output reg                      fb_swapped,

    // =========================================================
    // AXI4 read-only framebuffer interface
    // 128-bit
    // =========================================================
    output reg                      ram_axi_arvalid,
    input  wire                     ram_axi_arready,
    output reg  [ADDR_WIDTH-1:0]    ram_axi_araddr,
    output reg  [7:0]               ram_axi_arlen,
    output wire [2:0]               ram_axi_arsize,
    output wire [1:0]               ram_axi_arburst,

    input  wire                     ram_axi_rvalid,
    output reg                      ram_axi_rready,
    input  wire [127:0]             ram_axi_rdata,
    input  wire [1:0]               ram_axi_rresp,
    input  wire                     ram_axi_rlast,

    input  wire                     ram_axi_aclk,

    // =========================================================
    // VGA output
    // =========================================================
    output wire [3:0]               vga_r,
    output wire [3:0]               vga_g,
    output wire [3:0]               vga_b,
    output wire                     vga_hsync,
    output wire                     vga_vsync
);

    // =========================================================
    // VGA 640x480 timing
    //
    // 25 MHz instead of exact 25.175 MHz.
    //
    // 800 * 525 pixels/frame
    // 25 MHz / (800 * 525) = ~59.52 Hz
    // =========================================================

    localparam H_ACTIVE = 640;
    localparam H_FRONT  = 16;
    localparam H_SYNC   = 96;
    localparam H_BACK   = 48;
    localparam H_TOTAL  = 800;

    localparam V_ACTIVE = 480;
    localparam V_FRONT  = 10;
    localparam V_SYNC   = 2;
    localparam V_BACK   = 33;
    localparam V_TOTAL  = 525;


    // =========================================================
    // Framebuffer / AXI constants
    // =========================================================

    localparam BYTES_PER_PIXEL = 2;

    localparam LINE_BYTES =
        SCREEN_WIDTH * BYTES_PER_PIXEL;

    // 128-bit AXI = 16 bytes per beat
    localparam AXI_BYTES_PER_BEAT = 16;

    // 16 beats × 16 bytes = 256 bytes
    localparam BURST_BEATS = 16;
    localparam BURST_BYTES = 256;

    // 640xRGB565:
    //
    // 640 * 2 = 1280 bytes
    //
    // 1280 / 256 = 5 bursts
    localparam BURSTS_PER_LINE =
        LINE_BYTES / BURST_BYTES;


    assign ram_axi_arburst = 2'b01;   // INCR
    assign ram_axi_arsize  = 3'b100;  // 16 bytes / AXI beat


    // =========================================================
    // 100 MHz -> 25 MHz pixel enable
    //
    // Do NOT create a separate fabric clock.
    // Everything remains clocked at 100 MHz.
    //
    // pixel_ce is asserted once every four clocks.
    // =========================================================

    reg [1:0] pixel_div;

    wire pixel_ce =
        (pixel_div == 2'd3);

    always @(posedge ram_axi_aclk) begin
        if (!resetn)
            pixel_div <= 2'd0;
        else
            pixel_div <= pixel_div + 1'b1;
    end


    // =========================================================
    // VGA counters
    // =========================================================

    reg [9:0] h_count;
    reg [9:0] v_count;

    always @(posedge ram_axi_aclk) begin
        if (!resetn) begin

            h_count <= 10'd0;
            v_count <= 10'd0;

        end
        else if (pixel_ce) begin

            if (h_count == H_TOTAL - 1) begin

                h_count <= 10'd0;

                if (v_count == V_TOTAL - 1)
                    v_count <= 10'd0;
                else
                    v_count <= v_count + 1'b1;

            end
            else begin

                h_count <= h_count + 1'b1;

            end
        end
    end


    // =========================================================
    // VGA sync
    // Active low
    // =========================================================

    assign vga_hsync =
        ~(
            (h_count >= H_ACTIVE + H_FRONT) &&
            (h_count <  H_ACTIVE + H_FRONT + H_SYNC)
        );

    assign vga_vsync =
        ~(
            (v_count >= V_ACTIVE + V_FRONT) &&
            (v_count <  V_ACTIVE + V_FRONT + V_SYNC)
        );


    wire video_active;

    assign video_active =
        (h_count < SCREEN_WIDTH) &&
        (v_count < SCREEN_HEIGHT);


    // =========================================================
    // RasterIX framebuffer address
    // =========================================================

    reg [ADDR_WIDTH-1:0] current_fb_addr;

    reg                  pending_swap;
    reg [ADDR_WIDTH-1:0] pending_fb_addr;

    reg swap_seen;


    // =========================================================
    // Two line buffers
    //
    // Existing blk_mem_gen_bit_line can be reused:
    //
    // Port A:
    //   128-bit
    //   depth >= 128
    //
    // Port B:
    //   32-bit
    //   depth >= 512
    //
    // One line:
    //
    // 640 pixels * 16 bit = 10240 bits
    //                    = 80 × 128-bit entries
    //
    // =========================================================

    wire [6:0] buf_addr_in;

    wire [8:0] buf_out_addr;

    wire [31:0] buf0_out_data;
    wire [31:0] buf1_out_data;

    wire [15:0] buf0_wen;
    wire [15:0] buf1_wen;


    // Which buffer is currently displayed
    reg display_bank;

    // Buffer contains valid complete line
    reg [1:0] bank_ready;


    // =========================================================
    // AXI read engine state
    // =========================================================

    localparam FETCH_IDLE = 2'd0;
    localparam FETCH_AR   = 2'd1;
    localparam FETCH_DATA = 2'd2;

    reg [1:0] fetch_state;

    reg [2:0] burst_num;
    reg [6:0] write_word;

    reg active_fetch_bank;

    reg [ADDR_WIDTH-1:0] active_line_base;


    wire fetch_busy;

    assign fetch_busy =
        (fetch_state != FETCH_IDLE);


    // =========================================================
    // Fetch request
    // =========================================================

    reg                     fetch_req;
    reg                     fetch_req_bank;
    reg [8:0]               fetch_req_line;
    reg [ADDR_WIDTH-1:0]    fetch_req_base;

    reg fetch_accept;
    reg fetch_accept_bank;

    reg fetch_done;
    reg fetch_done_bank;


    // =========================================================
    // BRAM write
    // =========================================================

    wire r_fire;

    assign r_fire =
        ram_axi_rvalid &&
        ram_axi_rready;


    assign buf_addr_in =
        write_word;


    // Full 128-bit AXI beat is written directly into BRAM.
    //
    // 128 bits = 8 × RGB565 pixels.
    //
    assign buf0_wen =
        (r_fire && !active_fetch_bank)
            ? 16'hFFFF
            : 16'h0000;

    assign buf1_wen =
        (r_fire && active_fetch_bank)
            ? 16'hFFFF
            : 16'h0000;


    // =========================================================
    // Line buffer 0
    // =========================================================

    blk_mem_gen_bit_line line_buf_0
    (
        .addra(buf_addr_in),
        .clka(ram_axi_aclk),
        .dina(ram_axi_rdata),
        .wea(buf0_wen),

        .addrb(buf_out_addr),
        .clkb(ram_axi_aclk),
        .dinb(32'b0),
        .doutb(buf0_out_data),
        .web(4'b0000)
    );


    // =========================================================
    // Line buffer 1
    // =========================================================

    blk_mem_gen_bit_line line_buf_1
    (
        .addra(buf_addr_in),
        .clka(ram_axi_aclk),
        .dina(ram_axi_rdata),
        .wea(buf1_wen),

        .addrb(buf_out_addr),
        .clkb(ram_axi_aclk),
        .dinb(32'b0),
        .doutb(buf1_out_data),
        .web(4'b0000)
    );


    // =========================================================
    // AXI line-fetch engine
    //
    // Each VGA line:
    //
    // 5 bursts
    // × 16 beats
    // × 16 bytes
    // = 1280 bytes
    // =========================================================

    always @(posedge ram_axi_aclk) begin

        if (!resetn) begin

            fetch_state <= FETCH_IDLE;

            ram_axi_arvalid <= 1'b0;
            ram_axi_rready  <= 1'b0;

            ram_axi_araddr <= {ADDR_WIDTH{1'b0}};
            ram_axi_arlen  <= 8'd15;

            burst_num <= 3'd0;
            write_word <= 7'd0;

            active_fetch_bank <= 1'b0;

            active_line_base <= {ADDR_WIDTH{1'b0}};

            fetch_accept <= 1'b0;
            fetch_accept_bank <= 1'b0;

            fetch_done <= 1'b0;
            fetch_done_bank <= 1'b0;

        end
        else begin

            fetch_accept <= 1'b0;
            fetch_done   <= 1'b0;

            case (fetch_state)

                // -------------------------------------------------
                // Wait for line request
                // -------------------------------------------------
                FETCH_IDLE: begin

                    ram_axi_arvalid <= 1'b0;
                    ram_axi_rready  <= 1'b0;

                    if (fetch_req) begin

                        active_fetch_bank <= fetch_req_bank;

                        active_line_base <=
                            fetch_req_base +
                            (fetch_req_line * LINE_BYTES);

                        write_word <= 7'd0;
                        burst_num <= 3'd0;

                        ram_axi_araddr <=
                            fetch_req_base +
                            (fetch_req_line * LINE_BYTES);

                        // 16 beats
                        ram_axi_arlen <= 8'd15;

                        ram_axi_arvalid <= 1'b1;

                        fetch_accept <= 1'b1;
                        fetch_accept_bank <= fetch_req_bank;

                        fetch_state <= FETCH_AR;

                    end
                end


                // -------------------------------------------------
                // AXI address handshake
                // -------------------------------------------------
                FETCH_AR: begin

                    if (ram_axi_arvalid &&
                        ram_axi_arready) begin

                        ram_axi_arvalid <= 1'b0;
                        ram_axi_rready  <= 1'b1;

                        fetch_state <= FETCH_DATA;

                    end
                end


                // -------------------------------------------------
                // Receive AXI burst
                // -------------------------------------------------
                FETCH_DATA: begin

                    if (r_fire) begin

                        write_word <= write_word + 1'b1;

                        if (ram_axi_rlast) begin

                            ram_axi_rready <= 1'b0;

                            // Last burst of this line?
                            if (burst_num ==
                                BURSTS_PER_LINE - 1) begin

                                fetch_done <= 1'b1;
                                fetch_done_bank <= active_fetch_bank;

                                fetch_state <= FETCH_IDLE;

                            end
                            else begin

                                burst_num <= burst_num + 1'b1;

                                // Every burst = 256 bytes
                                ram_axi_araddr <=
                                    active_line_base +
                                    ((burst_num + 1'b1)
                                     * BURST_BYTES);

                                ram_axi_arlen <= 8'd15;

                                ram_axi_arvalid <= 1'b1;

                                fetch_state <= FETCH_AR;

                            end
                        end
                    end
                end


                default: begin

                    fetch_state <= FETCH_IDLE;

                end

            endcase
        end
    end


    // =========================================================
    // Entering vertical blanking
    //
    // Called at end of line 479.
    // =========================================================

    wire entering_vblank;

    assign entering_vblank =
        pixel_ce &&
        (h_count == H_TOTAL - 1) &&
        (v_count == SCREEN_HEIGHT - 1);


    wire end_of_visible_line;

    assign end_of_visible_line =
        pixel_ce &&
        (h_count == H_TOTAL - 1) &&
        (v_count < SCREEN_HEIGHT - 1);


    // =========================================================
    // Line-buffer / framebuffer controller
    // =========================================================

    reg need_line0;
    reg framebuffer_valid;
    reg [ADDR_WIDTH-1:0] line0_base;


    wire current_bank_ready;

    assign current_bank_ready =
        display_bank
            ? bank_ready[1]
            : bank_ready[0];


    wire next_bank_ready;

    assign next_bank_ready =
        display_bank
            ? bank_ready[0]
            : bank_ready[1];


    always @(posedge ram_axi_aclk) begin

        if (!resetn) begin

        current_fb_addr <= {ADDR_WIDTH{1'b0}};
        
        framebuffer_valid <= 1'b0;
        
        pending_swap <= 1'b0;
        pending_fb_addr <= {ADDR_WIDTH{1'b0}};
        
        swap_seen <= 1'b0;
        
        fb_swapped <= 1'b0;
        
        display_bank <= 1'b0;
        
        bank_ready <= 2'b00;
        
        fetch_req <= 1'b0;
        fetch_req_bank <= 1'b0;
        fetch_req_line <= 9'd0;
        fetch_req_base <= {ADDR_WIDTH{1'b0}};
        
        need_line0 <= 1'b0;
        line0_base <= {ADDR_WIDTH{1'b0}};

        end
        else begin

            // Default: framebuffer swap acknowledge is a pulse
            fb_swapped <= 1'b0;


            // -------------------------------------------------
            // Detect a new RasterIX swap request
            // -------------------------------------------------

            if (!swap_fb)
                swap_seen <= 1'b0;
            
            if (swap_fb && !swap_seen) begin
            
                swap_seen <= 1'b1;
            
                if (swap_fb_enable_vsync) begin
            
                    // Save new framebuffer.
                    // Keep displaying the old framebuffer until VSync.
                    pending_swap    <= 1'b1;
                    pending_fb_addr <= fb_addr;
            
                end
                else begin
            
                    // Immediate framebuffer switch.
                    current_fb_addr   <= fb_addr;
                    line0_base        <= fb_addr;
                    framebuffer_valid <= 1'b1;
            
                    fb_swapped <= 1'b1;
            
                    // Start fetching from the new framebuffer.
                    need_line0 <= 1'b1;
            
                    // Do NOT invalidate the currently displayed bank.
                    // That allows the old pixels to remain visible until
                    // new line data has actually arrived.
                    if (display_bank)
                        bank_ready[0] <= 1'b0;
                    else
                        bank_ready[1] <= 1'b0;
            
                end
            end 

            // -------------------------------------------------
            // AXI fetch accepted
            // -------------------------------------------------

            if (fetch_accept) begin

                fetch_req <= 1'b0;

                if (fetch_accept_bank)
                    bank_ready[1] <= 1'b0;
                else
                    bank_ready[0] <= 1'b0;

            end


            // -------------------------------------------------
            // Line completely fetched
            // -------------------------------------------------

            if (fetch_done) begin

                if (fetch_done_bank)
                    bank_ready[1] <= 1'b1;
                else
                    bank_ready[0] <= 1'b1;

            end


            // -------------------------------------------------
            // End of active scanline
            //
            // Switch to the already-prefetched next line.
            // -------------------------------------------------

            if (end_of_visible_line) begin

                if (next_bank_ready) begin

                    // Old displayed bank is now free.
                    if (display_bank)
                        bank_ready[1] <= 1'b0;
                    else
                        bank_ready[0] <= 1'b0;

                    display_bank <= ~display_bank;

                end
            end


            // -------------------------------------------------
            // Start vertical blank
            //
            // This is the ideal time to accept a VSync swap
            // and preload line 0 for the next frame.
            // -------------------------------------------------

            if (entering_vblank) begin
            
                display_bank <= 1'b0;
            
                // We are about to refill the line buffers for the next
                // VGA frame.
                bank_ready <= 2'b00;
            
                if (pending_swap) begin
            
                    // RasterIX has completed a new frame.
                    // Start using it for the next VGA refresh.
                    current_fb_addr   <= pending_fb_addr;
                    line0_base        <= pending_fb_addr;
            
                    framebuffer_valid <= 1'b1;
            
                    pending_swap <= 1'b0;
                    fb_swapped   <= 1'b1;
            
                    need_line0 <= 1'b1;
            
                end
                else if (framebuffer_valid) begin
            
                    // RasterIX has NOT produced a new frame.
                    //
                    // Simply display the current framebuffer again.
                    //
                    // Example:
                    // RasterIX = 30 FPS
                    // VGA      = 60 Hz
                    //
                    // Each RasterIX frame is displayed twice.
                    line0_base <= current_fb_addr;
                    need_line0 <= 1'b1;
            
                end
                else begin
            
                    // RasterIX has never supplied a valid framebuffer.
                    // Don't issue memory reads.
                    need_line0 <= 1'b0;
            
                end
            end


            // -------------------------------------------------
            // Generate line fetch request
            // -------------------------------------------------

            if (framebuffer_valid &&
                !fetch_req &&
                !fetch_busy &&
                !fetch_done) begin

                // Highest priority:
                // preload first line of framebuffer.
                if (need_line0) begin

                    fetch_req <= 1'b1;

                    fetch_req_bank <= 1'b0;
                    fetch_req_line <= 9'd0;
                    fetch_req_base <= line0_base;

                    need_line0 <= 1'b0;

                end

                // During active display, always keep the
                // NEXT scanline prefetched.
                else if (
                    (v_count < SCREEN_HEIGHT - 1) &&
                    (h_count < SCREEN_WIDTH) &&
                    current_bank_ready &&
                    !next_bank_ready
                ) begin

                    fetch_req <= 1'b1;

                    fetch_req_bank <= ~display_bank;

                    fetch_req_line <=
                        v_count[8:0] + 1'b1;

                    fetch_req_base <=
                        current_fb_addr;

                end
            end
        end
    end


    // =========================================================
    // BRAM -> VGA
    //
    // Port B returns 32 bits = two RGB565 pixels.
    // =========================================================

    assign buf_out_addr =
        h_count[9:1];


    wire [31:0] selected_buf_data;

    assign selected_buf_data =
        display_bank
            ? buf1_out_data
            : buf0_out_data;


    // Block RAM has synchronous read latency.
    reg pixel_half_d;
    reg video_active_d;


    always @(posedge ram_axi_aclk) begin

        if (!resetn) begin

            pixel_half_d   <= 1'b0;
            video_active_d <= 1'b0;

        end
        else begin

            pixel_half_d <= h_count[0];

            video_active_d <=
                video_active &&
                current_bank_ready;

        end
    end


    wire [15:0] pixel_rgb565;

    assign pixel_rgb565 =
        pixel_half_d
            ? selected_buf_data[31:16]
            : selected_buf_data[15:0];


    // =========================================================
    // RGB565 -> 4-bit VGA DAC
    //
    // RGB565:
    // R = 15:11
    // G = 10:5
    // B = 4:0
    // =========================================================

    wire display_valid;
    
    assign display_valid =
        framebuffer_valid &&
        video_active_d;
    
    assign vga_r =
        display_valid
            ? pixel_rgb565[15:12]
            : 4'b0000;
    
    assign vga_g =
        display_valid
            ? pixel_rgb565[10:7]
            : 4'b0000;
    
    assign vga_b =
        display_valid
            ? pixel_rgb565[4:1]
            : 4'b0000;


    // fb_size currently unused because this scanout is fixed
    // to SCREEN_WIDTH x SCREEN_HEIGHT.

endmodule
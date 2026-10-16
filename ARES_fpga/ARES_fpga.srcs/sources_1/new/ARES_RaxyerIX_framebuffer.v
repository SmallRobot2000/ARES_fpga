`timescale 1ns / 1ps

module ARES_RaxyerIX_framebuffer #(
    parameter ADDR_WIDTH    = 32,
    parameter SOURCE_WIDTH  = 512,
    parameter SOURCE_HEIGHT = 384
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
        SOURCE_WIDTH * BYTES_PER_PIXEL;

    // 128-bit AXI = 16 bytes per beat
    localparam AXI_BYTES_PER_BEAT = 16;

    // 16 beats × 16 bytes = 256 bytes
    localparam BURST_BEATS = 16;
    localparam BURST_BYTES = 256;

    // 512 RGB565 pixels = 1024 bytes = four 256-byte bursts.
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
        (h_count < H_ACTIVE) &&
        (v_count < V_ACTIVE);


    // =========================================================
    // RasterIX framebuffer address
    // =========================================================

    reg [ADDR_WIDTH-1:0] current_fb_addr;

    reg                  pending_swap;
    reg [ADDR_WIDTH-1:0] pending_fb_addr;

    reg swap_seen;
    reg swap_ack_pending;


    // =========================================================
    // Two line buffers
    //
    // 64 x 128-bit writes / 256 x 32-bit reads per source line.
    // =========================================================

    wire [5:0] buf_addr_in;
    wire [7:0] buf_out_addr;

    wire [31:0] buf0_out_data;
    wire [31:0] buf1_out_data;

    wire         buf0_wen;
    wire         buf1_wen;


    // Which buffer is currently displayed
    reg display_bank;
    reg display_bank_d;

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
    reg [5:0] write_word;

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
        r_fire && !active_fetch_bank;

    assign buf1_wen =
        r_fire && active_fetch_bank;


    // =========================================================
    // Line buffer 0
    // =========================================================

    ares_scanout_line_buffer line_buf_0
    (
        .clk(ram_axi_aclk),
        .reset(!resetn),
        .write_enable(buf0_wen),
        .write_addr(buf_addr_in),
        .write_data(ram_axi_rdata),
        .read_addr(buf_out_addr),
        .read_data(buf0_out_data)
    );


    // =========================================================
    // Line buffer 1
    // =========================================================

    ares_scanout_line_buffer line_buf_1
    (
        .clk(ram_axi_aclk),
        .reset(!resetn),
        .write_enable(buf1_wen),
        .write_addr(buf_addr_in),
        .write_data(ram_axi_rdata),
        .read_addr(buf_out_addr),
        .read_data(buf1_out_data)
    );


    // =========================================================
    // AXI line-fetch engine
    //
    // Each distinct source line:
    //
    // 4 bursts
    // × 16 beats
    // × 16 bytes
    // = 1024 bytes
    // =========================================================

    always @(posedge ram_axi_aclk) begin

        if (!resetn) begin

            fetch_state <= FETCH_IDLE;

            ram_axi_arvalid <= 1'b0;
            ram_axi_rready  <= 1'b0;

            ram_axi_araddr <= {ADDR_WIDTH{1'b0}};
            ram_axi_arlen  <= 8'd15;

            burst_num <= 3'd0;
            write_word <= 6'd0;

            active_fetch_bank <= 1'b0;

            active_line_base <= {ADDR_WIDTH{1'b0}};

            fetch_accept <= 1'b0;

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

                        write_word <= 6'd0;
                        burst_num <= 3'd0;

                        ram_axi_araddr <=
                            fetch_req_base +
                            (fetch_req_line * LINE_BYTES);

                        // 16 beats
                        ram_axi_arlen <= 8'd15;

                        ram_axi_arvalid <= 1'b1;

                        fetch_accept <= 1'b1;

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
                                    (({29'b0, burst_num} + 1)
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
        (v_count == V_ACTIVE - 1);


    wire end_of_visible_line;

    assign end_of_visible_line =
        pixel_ce &&
        (h_count == H_TOTAL - 1) &&
        (v_count < V_ACTIVE - 1);


    // =========================================================
    // Line-buffer / framebuffer controller
    // =========================================================

    reg framebuffer_valid;
    reg restart_pending;
    reg replacement_fetch;
    reg [8:0] bank_line [0:1];
    reg [8:0] source_x;
    reg [8:0] source_y;
    reg [2:0] horizontal_phase;
    reg [2:0] vertical_phase;

    wire current_bank_ready = bank_ready[display_bank];
    wire next_bank_ready = bank_ready[~display_bank];
    wire new_swap = swap_fb && !swap_seen;
    wire immediate_swap = new_swap && !swap_fb_enable_vsync;
    wire advance_y = (vertical_phase != 0);
    wire [8:0] next_source_y = source_y + (advance_y ? 9'd1 : 9'd0);

    // Bresenham-style 4/5 stepping. Clamp during blanking; reset before
    // the first active sample. There is no multiplier in the pixel path.
    always @(posedge ram_axi_aclk) begin
        if (!resetn) begin
            source_x <= 0;
            source_y <= 0;
            horizontal_phase <= 0;
            vertical_phase <= 0;
        end else if (pixel_ce) begin
            if (h_count == H_TOTAL - 1) begin
                source_x <= 0;
                horizontal_phase <= 0;
                if (v_count >= V_ACTIVE - 1) begin
                    source_y <= 0;
                    vertical_phase <= 0;
                end else begin
                    source_y <= next_source_y;
                    vertical_phase <= advance_y ? vertical_phase - 3'd1 : 3'd4;
                end
            end else if (h_count < H_ACTIVE - 1) begin
                if (horizontal_phase == 0)
                    horizontal_phase <= 3'd4;
                else begin
                    horizontal_phase <= horizontal_phase - 3'd1;
                    source_x <= source_x + 1'b1;
                end
            end
        end
    end

    always @(posedge ram_axi_aclk) begin
        if (!resetn) begin
            current_fb_addr <= 0;
            framebuffer_valid <= 0;
            pending_swap <= 0;
            pending_fb_addr <= 0;
            swap_seen <= 0;
            swap_ack_pending <= 0;
            fb_swapped <= 1;
            display_bank <= 0;
            bank_ready <= 0;
            bank_line[0] <= 0;
            bank_line[1] <= 0;
            fetch_req <= 0;
            fetch_req_bank <= 0;
            fetch_req_line <= 0;
            fetch_req_base <= 0;
            restart_pending <= 0;
            replacement_fetch <= 0;
        end else begin
            if (swap_ack_pending) begin
                swap_ack_pending <= 0;
                fb_swapped <= 1;
            end
            if (!swap_fb)
                swap_seen <= 0;
            if (new_swap) begin
                swap_seen <= 1;
                fb_swapped <= 0;
                if (swap_fb_enable_vsync) begin
                    pending_swap <= 1;
                    pending_fb_addr <= fb_addr;
                end
            end

            if (fetch_accept)
                fetch_req <= 0;

            // A restart drains any outstanding AXI transaction first. Its
            // completion must not make a stale prefetched bank valid again.
            if (fetch_done && !restart_pending && !immediate_swap && !entering_vblank) begin
                bank_ready[fetch_done_bank] <= 1;
                if (replacement_fetch) begin
                    bank_ready[display_bank] <= 0;
                    display_bank <= fetch_done_bank;
                    replacement_fetch <= 0;
                end
            end

            // Repeated output rows retain their bank. Underflow retains the
            // previous complete line, never a partially overwritten buffer.
            if (end_of_visible_line && !restart_pending && !replacement_fetch && !immediate_swap) begin
                if (advance_y && next_bank_ready &&
                    bank_line[~display_bank] == next_source_y) begin
                    bank_ready[display_bank] <= 0;
                    display_bank <= ~display_bank;
                end else if (next_bank_ready && bank_line[~display_bank] < next_source_y)
                    bank_ready[~display_bank] <= 0;
            end

            if (framebuffer_valid && !fetch_req && !fetch_busy &&
                !fetch_done && !fetch_accept && !end_of_visible_line &&
                !entering_vblank && !immediate_swap) begin
                if (restart_pending) begin
                    // Always fill the other bank, preserving displayed data.
                    fetch_req <= 1;
                    fetch_req_bank <= ~display_bank;
                    fetch_req_line <= source_y;
                    fetch_req_base <= current_fb_addr;
                    bank_line[~display_bank] <= source_y;
                    bank_ready[~display_bank] <= 0;
                    restart_pending <= 0;
                    replacement_fetch <= 1;
                end else if (!replacement_fetch && current_bank_ready &&
                             !next_bank_ready && source_y < SOURCE_HEIGHT - 1) begin
                    fetch_req <= 1;
                    fetch_req_bank <= ~display_bank;
                    fetch_req_line <= source_y + 1'b1;
                    fetch_req_base <= current_fb_addr;
                    bank_line[~display_bank] <= source_y + 1'b1;
                end
            end

            // Highest priority: discard queued/prefetched work on a frame
            // boundary or immediate swap. In-flight bursts finish normally.
            if (entering_vblank) begin
                fetch_req <= 0;
                replacement_fetch <= 0;
                bank_ready[~display_bank] <= 0;
                restart_pending <= framebuffer_valid || pending_swap;
                // A request arriving on this exact edge stays busy until
                // the next vblank, so the required low level is observable.
                if (pending_swap) begin
                    current_fb_addr <= pending_fb_addr;
                    framebuffer_valid <= 1;
                    pending_swap <= 0;
                    fb_swapped <= 1;
                end
            end
            if (immediate_swap) begin
                current_fb_addr <= fb_addr;
                framebuffer_valid <= 1;
                pending_swap <= 0;
                swap_ack_pending <= 1;
                restart_pending <= 1;
                replacement_fetch <= 0;
                fetch_req <= 0;
                bank_ready[~display_bank] <= 0;
            end
        end
    end


    // =========================================================
    // BRAM -> VGA
    //
    // Port B returns 32 bits = two RGB565 pixels.
    // =========================================================

    assign buf_out_addr =
        source_x[8:1];


    wire [31:0] selected_buf_data;

    assign selected_buf_data =
        display_bank_d
            ? buf1_out_data
            : buf0_out_data;


    // Block RAM has synchronous read latency.
    reg pixel_half_d;
    reg video_active_d;


    always @(posedge ram_axi_aclk) begin

        if (!resetn) begin

            display_bank_d <= 1'b0;
            pixel_half_d   <= 1'b0;
            video_active_d <= 1'b0;

        end
        else begin

            pixel_half_d <= source_x[0];
            display_bank_d <= display_bank;

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
    // to SOURCE_WIDTH x SOURCE_HEIGHT (196608 pixels).

endmodule


// One source scanline is 64 128-bit AXI beats / 256 32-bit read words.
// Physical BRAM use must be measured after synthesis (the write port is wide).
module ares_scanout_line_buffer (
    input  wire         clk,
    input  wire         reset,
    input  wire         write_enable,
    input  wire [5:0]   write_addr,
    input  wire [127:0] write_data,
    input  wire [7:0]   read_addr,
    output wire [31:0]  read_data
);

`ifndef VERILATOR
    xpm_memory_sdpram #(
        .ADDR_WIDTH_A(6),
        .ADDR_WIDTH_B(8),
        .AUTO_SLEEP_TIME(0),
        .BYTE_WRITE_WIDTH_A(128),
        .CASCADE_HEIGHT(0),
        .CLOCKING_MODE("common_clock"),
        .ECC_MODE("no_ecc"),
        .MEMORY_INIT_FILE("none"),
        .MEMORY_INIT_PARAM("0"),
        .MEMORY_OPTIMIZATION("true"),
        .MEMORY_PRIMITIVE("block"),
        .MEMORY_SIZE(8192),
        .MESSAGE_CONTROL(0),
        .READ_DATA_WIDTH_B(32),
        .READ_LATENCY_B(1),
        .READ_RESET_VALUE_B("0"),
        .RST_MODE_A("SYNC"),
        .RST_MODE_B("SYNC"),
        .SIM_ASSERT_CHK(0),
        .USE_EMBEDDED_CONSTRAINT(0),
        .USE_MEM_INIT(0),
        .WAKEUP_TIME("disable_sleep"),
        .WRITE_DATA_WIDTH_A(128),
        .WRITE_MODE_B("read_first")
    ) line_memory (
        .dbiterrb(),
        .doutb(read_data),
        .sbiterrb(),
        .addra(write_addr),
        .addrb(read_addr),
        .clka(clk),
        .clkb(clk),
        .dina(write_data),
        .ena(1'b1),
        .enb(1'b1),
        .injectdbiterra(1'b0),
        .injectsbiterra(1'b0),
        .regceb(1'b1),
        .rstb(reset),
        .sleep(1'b0),
        .wea(write_enable)
    );
`else
    reg [127:0] memory [0:63];
    reg [31:0] read_data_reg;

    assign read_data = read_data_reg;

    always @(posedge clk) begin
        if (write_enable)
            memory[write_addr] <= write_data;
        if (reset)
            read_data_reg <= 32'b0;
        else
            case (read_addr[1:0])
                2'd0: read_data_reg <= memory[read_addr[7:2]][31:0];
                2'd1: read_data_reg <= memory[read_addr[7:2]][63:32];
                2'd2: read_data_reg <= memory[read_addr[7:2]][95:64];
                default: read_data_reg <= memory[read_addr[7:2]][127:96];
            endcase
    end
`endif
endmodule

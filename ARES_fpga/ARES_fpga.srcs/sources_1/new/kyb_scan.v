module axi_keyboard #(
    parameter integer CLK_HZ         = 100_000_000,
    parameter integer COLS           = 8,
    parameter integer ROWS           = 11,
    parameter integer ROW_ADDR_WIDTH = 4,
    parameter integer FULL_SCAN_HZ   = 1000,
    parameter integer FIFO_DEPTH     = 16,

    parameter integer AXI_DATA_WIDTH = 32,
    parameter integer AXI_ADDR_WIDTH = 6
)(
    /*
     * AXI4-Lite clock/reset
     */
    (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s_axi_aclk CLK" *)
    (* X_INTERFACE_PARAMETER =
       "ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET s_axi_aresetn" *)
    input  wire                           s_axi_aclk,

    (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s_axi_aresetn RST" *)
    (* X_INTERFACE_PARAMETER = "POLARITY ACTIVE_LOW" *)
    input  wire                           s_axi_aresetn,

    /*
     * AXI4-Lite write address
     */
    input  wire [AXI_ADDR_WIDTH-1:0]      s_axi_awaddr,
    input  wire                           s_axi_awvalid,
    output wire                           s_axi_awready,

    /*
     * AXI4-Lite write data
     */
    input  wire [AXI_DATA_WIDTH-1:0]      s_axi_wdata,
    input  wire [(AXI_DATA_WIDTH/8)-1:0]  s_axi_wstrb,
    input  wire                           s_axi_wvalid,
    output wire                           s_axi_wready,

    /*
     * AXI4-Lite write response
     */
    output wire [1:0]                     s_axi_bresp,
    output wire                           s_axi_bvalid,
    input  wire                           s_axi_bready,

    /*
     * AXI4-Lite read address
     */
    input  wire [AXI_ADDR_WIDTH-1:0]      s_axi_araddr,
    input  wire                           s_axi_arvalid,
    output wire                           s_axi_arready,

    /*
     * AXI4-Lite read data
     */
    output wire [AXI_DATA_WIDTH-1:0]      s_axi_rdata,
    output wire [1:0]                     s_axi_rresp,
    output wire                           s_axi_rvalid,
    input  wire                           s_axi_rready,

    /*
     * Keyboard matrix
     */
    output wire [ROW_ADDR_WIDTH-1:0]      keyboard_row,
    input  wire [COLS-1:0]                keyboard_col_n,

    /*
     * Keyboard LEDs
     */
    output wire                           caps_led,
    output wire                           kana_led,

    /*
     * Interrupt
     */
    output wire                           irq
);

    /*
     * ============================================================
     * Register addresses
     * ============================================================
     */

    localparam [AXI_ADDR_WIDTH-1:0] REG_STATUS = 6'h00;
    localparam [AXI_ADDR_WIDTH-1:0] REG_EVENT  = 6'h04;
    localparam [AXI_ADDR_WIDTH-1:0] REG_LED    = 6'h08;


    /*
     * ============================================================
     * Keyboard input synchronizer
     * ============================================================
     */

    (* ASYNC_REG = "TRUE" *)
    reg [COLS-1:0] col_sync1;

    (* ASYNC_REG = "TRUE" *)
    reg [COLS-1:0] col_sync2;


    always @(posedge s_axi_aclk) begin

        if (!s_axi_aresetn) begin

            col_sync1 <= {COLS{1'b1}};
            col_sync2 <= {COLS{1'b1}};

        end
        else begin

            col_sync1 <= keyboard_col_n;
            col_sync2 <= col_sync1;

        end
    end


    /*
     * ============================================================
     * Keyboard core
     * ============================================================
     */

    wire        kbd_event_valid;
    wire [15:0] kbd_event_data;

    reg         kbd_event_pop;

    reg         kbd_led_we;
    reg  [1:0]  kbd_led_wdata;


    msx_keyboard #(
        .CLK_HZ         (CLK_HZ),
        .ROWS           (ROWS),
        .COLS           (COLS),
        .ROW_ADDR_WIDTH (ROW_ADDR_WIDTH),
        .FULL_SCAN_HZ   (FULL_SCAN_HZ),
        .FIFO_DEPTH     (FIFO_DEPTH)
    ) keyboard_inst (
        .clk         (s_axi_aclk),
        .reset       (~s_axi_aresetn),

        .row         (keyboard_row),
        .col_n       (col_sync2),

        .irq         (irq),

        .event_valid (kbd_event_valid),
        .event_data  (kbd_event_data),
        .event_pop   (kbd_event_pop),

        .led_we      (kbd_led_we),
        .led_wdata   (kbd_led_wdata),

        .caps_led    (caps_led),
        .kana_led    (kana_led)
    );


    /*
     * ============================================================
     * AXI WRITE
     * ============================================================
     */

    reg [AXI_ADDR_WIDTH-1:0]         axi_awaddr_reg;
    reg                              axi_aw_pending;

    reg [AXI_DATA_WIDTH-1:0]         axi_wdata_reg;
    reg [(AXI_DATA_WIDTH/8)-1:0]     axi_wstrb_reg;
    reg                              axi_w_pending;

    reg                              axi_bvalid_reg;


    assign s_axi_awready =
        !axi_aw_pending &&
        !axi_bvalid_reg;

    assign s_axi_wready =
        !axi_w_pending &&
        !axi_bvalid_reg;

    assign s_axi_bvalid =
        axi_bvalid_reg;

    assign s_axi_bresp =
        2'b00;


    always @(posedge s_axi_aclk) begin

        if (!s_axi_aresetn) begin

            axi_awaddr_reg <= 0;
            axi_aw_pending <= 1'b0;

            axi_wdata_reg  <= 0;
            axi_wstrb_reg  <= 0;
            axi_w_pending  <= 1'b0;

            axi_bvalid_reg <= 1'b0;

            kbd_led_we     <= 1'b0;
            kbd_led_wdata  <= 2'b00;

        end
        else begin

            kbd_led_we <= 1'b0;


            /*
             * Address channel.
             */
            if (s_axi_awvalid &&
                s_axi_awready) begin

                axi_awaddr_reg <= s_axi_awaddr;
                axi_aw_pending <= 1'b1;

            end


            /*
             * Data channel.
             */
            if (s_axi_wvalid &&
                s_axi_wready) begin

                axi_wdata_reg <= s_axi_wdata;
                axi_wstrb_reg <= s_axi_wstrb;
                axi_w_pending <= 1'b1;

            end


            /*
             * Execute write.
             */
            if (axi_aw_pending &&
                axi_w_pending &&
                !axi_bvalid_reg) begin

                if (axi_awaddr_reg == REG_LED) begin

                    if (axi_wstrb_reg[0]) begin

                        kbd_led_wdata <=
                            axi_wdata_reg[1:0];

                        kbd_led_we <=
                            1'b1;

                    end

                end


                axi_aw_pending <= 1'b0;
                axi_w_pending  <= 1'b0;

                axi_bvalid_reg <= 1'b1;

            end


            /*
             * Write response consumed.
             */
            if (axi_bvalid_reg &&
                s_axi_bready) begin

                axi_bvalid_reg <= 1'b0;

            end

        end
    end


    /*
     * ============================================================
     * AXI READ
     * ============================================================
     */

    reg [AXI_DATA_WIDTH-1:0] axi_rdata_reg;
    reg                      axi_rvalid_reg;


    assign s_axi_arready =
        !axi_rvalid_reg;

    assign s_axi_rvalid =
        axi_rvalid_reg;

    assign s_axi_rdata =
        axi_rdata_reg;

    assign s_axi_rresp =
        2'b00;


    always @(posedge s_axi_aclk) begin

        if (!s_axi_aresetn) begin

            axi_rdata_reg  <= 0;
            axi_rvalid_reg <= 1'b0;

            kbd_event_pop  <= 1'b0;

        end
        else begin

            kbd_event_pop <= 1'b0;


            if (s_axi_arvalid &&
                s_axi_arready) begin

                case (s_axi_araddr)

                    REG_STATUS: begin

                        axi_rdata_reg <= {
                            {(AXI_DATA_WIDTH-1){1'b0}},
                            kbd_event_valid
                        };

                    end


                    REG_EVENT: begin

                        axi_rdata_reg <= {
                            {(AXI_DATA_WIDTH-16){1'b0}},
                            kbd_event_data
                        };

                        if (kbd_event_valid)
                            kbd_event_pop <= 1'b1;

                    end


                    REG_LED: begin

                        axi_rdata_reg <= {
                            {(AXI_DATA_WIDTH-2){1'b0}},
                            kana_led,
                            caps_led
                        };

                    end


                    default: begin

                        axi_rdata_reg <=
                            {AXI_DATA_WIDTH{1'b0}};

                    end

                endcase


                axi_rvalid_reg <= 1'b1;

            end


            if (axi_rvalid_reg &&
                s_axi_rready) begin

                axi_rvalid_reg <= 1'b0;

            end

        end
    end

endmodule



/*
 * ========================================================================
 * Timing-optimized keyboard scanner
 * ========================================================================
 */

module msx_keyboard #(
    parameter integer CLK_HZ         = 100_000_000,
    parameter integer ROWS           = 11,
    parameter integer COLS           = 8,
    parameter integer ROW_ADDR_WIDTH = 4,
    parameter integer FULL_SCAN_HZ   = 1000,
    parameter integer FIFO_DEPTH     = 16
)(
    input  wire                         clk,
    input  wire                         reset,

    output wire [ROW_ADDR_WIDTH-1:0]    row,

    input  wire [COLS-1:0]              col_n,

    output wire                         irq,

    output wire                         event_valid,
    output wire [15:0]                  event_data,

    input  wire                         event_pop,

    input  wire                         led_we,
    input  wire [1:0]                   led_wdata,

    output reg                          caps_led,
    output reg                          kana_led
);

    /*
     * ============================================================
     * Constants
     * ============================================================
     */

    localparam integer KEYS =
        ROWS * COLS;

    localparam integer ROW_TICKS_RAW =
        CLK_HZ /
        (FULL_SCAN_HZ * ROWS);

    localparam integer ROW_TICKS =
        (ROW_TICKS_RAW < 1)
        ? 1
        : ROW_TICKS_RAW;

    localparam integer TIMER_W =
        (ROW_TICKS <= 1)
        ? 1
        : $clog2(ROW_TICKS);

    localparam integer FIFO_PTR_W =
        (FIFO_DEPTH <= 2)
        ? 1
        : $clog2(FIFO_DEPTH);

    localparam integer FIFO_COUNT_W =
        $clog2(FIFO_DEPTH + 1);

    localparam [7:0] LAST_KEY =
        KEYS - 1;


    /*
     * ============================================================
     * State machine
     * ============================================================
     */

    localparam [1:0] STATE_SCAN  = 2'd0;
    localparam [1:0] STATE_CHECK = 2'd1;
    localparam [1:0] STATE_EMIT  = 2'd2;
    localparam [1:0] STATE_DRAIN = 2'd3;

    reg [1:0] state;


    /*
     * ============================================================
     * Row scanner
     * ============================================================
     */

    reg [ROW_ADDR_WIDTH-1:0] row_index;

    /*
     * Countdown is better for timing than comparing an up-counter
     * against ROW_TICKS-1 every clock.
     */
    reg [TIMER_W-1:0] row_timer;


    assign row =
        row_index;


    /*
     * Input already synchronized by parent module.
     *
     * Convert:
     *
     *     0 = pressed
     *
     * to:
     *
     *     1 = pressed
     */
    wire [COLS-1:0] sampled_cols;

    assign sampled_cols =
        ~col_n;


    /*
     * ============================================================
     * Debounce matrices
     * ============================================================
     */

    /*
     * Current full scan.
     *
     * Final format remains:
     *
     * bits 7:0   = row 0
     * bits 15:8  = row 1
     * ...
     */
    reg [KEYS-1:0] scan_matrix;


    /*
     * Previous complete scan.
     *
     * During scanning this is shifted right one row at a time.
     *
     * This means the comparison is always against fixed bits:
     *
     *     previous_shift[COLS-1:0]
     *
     * and NOT:
     *
     *     previous_matrix[row_index * COLS +: COLS]
     */
    reg [KEYS-1:0] previous_shift;


    /*
     * Last accepted debounced keyboard state.
     */
    reg [KEYS-1:0] stable_matrix;


    /*
     * Complete-scan comparison accumulator.
     */
    reg scan_same_previous;

    reg completed_same_previous;


    /*
     * Only an 8-bit comparator for default COLS=8.
     */
    wire current_row_same;

    assign current_row_same =
        sampled_cols ==
        previous_shift[COLS-1:0];


    /*
     * ============================================================
     * Event serializer
     * ============================================================
     *
     * No priority encoder.
     *
     * Current key is always bit zero.
     */

    reg [KEYS-1:0] emit_changes;
    reg [KEYS-1:0] emit_state;

    reg [7:0] emit_key;


    wire emit_changed;

    assign emit_changed =
        emit_changes[0];


    /*
     * ============================================================
     * Event staging register
     * ============================================================
     *
     * This is the important timing pipeline stage.
     *
     * Keyboard logic NEVER feeds FIFO data directly.
     */

    reg        event_stage_valid;
    reg [15:0] event_stage_data;


    /*
     * ============================================================
     * FIFO
     * ============================================================
     *
     * Only 16 * 16 = 256 bits.
     *
     * Force implementation in FFs rather than RAMD32 LUT RAM.
     */

    (* ram_style = "registers" *)
    reg [15:0] fifo [0:FIFO_DEPTH-1];


    reg [FIFO_PTR_W-1:0] fifo_wr;
    reg [FIFO_PTR_W-1:0] fifo_rd;

    reg [FIFO_COUNT_W-1:0] fifo_count;


    wire fifo_empty;
    wire fifo_full;


    assign fifo_empty =
        fifo_count == 0;

    assign fifo_full =
        fifo_count == FIFO_DEPTH;


    assign event_valid =
        !fifo_empty;

    assign irq =
        !fifo_empty;


    /*
     * Small register mux only.
     */
    assign event_data =
        fifo[fifo_rd];


    /*
     * ============================================================
     * FIFO control
     * ============================================================
     */

    wire do_pop;
    wire do_push;


    assign do_pop =
        event_pop &&
        !fifo_empty;


    /*
     * FIFO input now comes ONLY from event_stage_data.
     */
    assign do_push =
        event_stage_valid &&
        !fifo_full;


    /*
     * Can event serializer load a new event into stage?
     *
     * Either:
     *
     *   stage is empty
     *
     * or:
     *
     *   old staged event enters FIFO this clock.
     */
    wire event_stage_ready;

    assign event_stage_ready =
        !event_stage_valid ||
        do_push;


    /*
     * An unchanged key can always advance.
     *
     * A changed key waits until the stage is available.
     */
    wire emit_advance;

    assign emit_advance =
        (state == STATE_EMIT) &&
        (
            !emit_changed ||
            event_stage_ready
        );


    /*
     * ============================================================
     * Main logic
     * ============================================================
     */

    always @(posedge clk) begin

        if (reset) begin

            state <=
                STATE_SCAN;


            row_index <=
                0;

            row_timer <=
                ROW_TICKS - 1;


            scan_matrix <=
                0;

            previous_shift <=
                0;

            stable_matrix <=
                0;


            scan_same_previous <=
                1'b1;

            completed_same_previous <=
                1'b0;


            emit_changes <=
                0;

            emit_state <=
                0;

            emit_key <=
                0;


            event_stage_valid <=
                1'b0;

            event_stage_data <=
                0;


            fifo_wr <=
                0;

            fifo_rd <=
                0;

            fifo_count <=
                0;


            caps_led <=
                1'b0;

            kana_led <=
                1'b0;

        end
        else begin

            /*
             * ====================================================
             * LEDs
             * ====================================================
             */

            if (led_we) begin

                caps_led <=
                    led_wdata[0];

                kana_led <=
                    led_wdata[1];

            end


            /*
             * ====================================================
             * FIFO POP
             * ====================================================
             */

            if (do_pop) begin

                if (fifo_rd ==
                    FIFO_DEPTH-1) begin

                    fifo_rd <=
                        0;

                end
                else begin

                    fifo_rd <=
                        fifo_rd + 1'b1;

                end

            end


            /*
             * ====================================================
             * FIFO PUSH
             *
             * Critical improvement:
             *
             * event_stage_data is already registered.
             * ====================================================
             */

            if (do_push) begin

                fifo[fifo_wr] <=
                    event_stage_data;


                if (fifo_wr ==
                    FIFO_DEPTH-1) begin

                    fifo_wr <=
                        0;

                end
                else begin

                    fifo_wr <=
                        fifo_wr + 1'b1;

                end

            end


            /*
             * ====================================================
             * FIFO count
             * ====================================================
             */

            case ({
                do_push,
                do_pop
            })

                2'b10: begin

                    fifo_count <=
                        fifo_count + 1'b1;

                end


                2'b01: begin

                    fifo_count <=
                        fifo_count - 1'b1;

                end


                default: begin

                    fifo_count <=
                        fifo_count;

                end

            endcase


            /*
             * If staged event entered FIFO, stage becomes empty.
             *
             * A new event generated below may set it back to 1 in
             * the same clock.
             */
            if (do_push)
                event_stage_valid <= 1'b0;


            /*
             * ====================================================
             * Main state machine
             * ====================================================
             */

            case (state)

                /*
                 * ------------------------------------------------
                 * SCAN
                 * ------------------------------------------------
                 */
                STATE_SCAN: begin

                    if (row_timer == 0) begin

                        /*
                         * Shift new row into current scan.
                         *
                         * After all rows:
                         *
                         * row0 remains in bits 7:0.
                         */
                        scan_matrix <= {
                            sampled_cols,
                            scan_matrix[
                                KEYS-1:COLS
                            ]
                        };


                        /*
                         * Shift previous matrix in parallel.
                         *
                         * Current previous row is always bits
                         * COLS-1:0.
                         */
                        previous_shift <= {
                            {COLS{1'b0}},
                            previous_shift[
                                KEYS-1:COLS
                            ]
                        };


                        /*
                         * Only a COLS-bit comparison here.
                         */
                        if (!current_row_same)
                            scan_same_previous <=
                                1'b0;


                        /*
                         * Last row?
                         */
                        if (row_index ==
                            ROWS-1) begin

                            /*
                             * Include last row in comparison.
                             */
                            completed_same_previous <=
                                scan_same_previous &&
                                current_row_same;


                            /*
                             * Select row 0 while processing events.
                             */
                            row_index <=
                                0;


                            state <=
                                STATE_CHECK;

                        end
                        else begin

                            row_index <=
                                row_index + 1'b1;


                            row_timer <=
                                ROW_TICKS - 1;

                        end

                    end
                    else begin

                        row_timer <=
                            row_timer - 1'b1;

                    end

                end


                /*
                 * ------------------------------------------------
                 * CHECK
                 * ------------------------------------------------
                 */
                STATE_CHECK: begin

                    /*
                     * Completed scan becomes previous scan.
                     *
                     * scan_matrix contains the final row because the
                     * last row was captured one clock earlier.
                     */
                    previous_shift <=
                        scan_matrix;


                    /*
                     * Prepare next scan.
                     */
                    row_index <=
                        0;

                    row_timer <=
                        ROW_TICKS - 1;

                    scan_same_previous <=
                        1'b1;


                    /*
                     * Require two consecutive identical scans.
                     */
                    if (completed_same_previous) begin

                        /*
                         * Only independent XOR gates here.
                         *
                         * No wide priority encoder.
                         */
                        emit_changes <=
                            scan_matrix ^
                            stable_matrix;


                        emit_state <=
                            scan_matrix;


                        stable_matrix <=
                            scan_matrix;


                        emit_key <=
                            0;


                        state <=
                            STATE_EMIT;

                    end
                    else begin

                        state <=
                            STATE_SCAN;

                    end

                end


                /*
                 * ------------------------------------------------
                 * EMIT
                 * ------------------------------------------------
                 *
                 * One key per FPGA clock.
                 *
                 * 88 keys @ 100 MHz:
                 *
                 *     880 ns
                 *
                 * maximum when FIFO is not full.
                 * ------------------------------------------------
                 */
                STATE_EMIT: begin

                    if (emit_advance) begin

                        /*
                         * Changed key?
                         *
                         * Register event FIRST.
                         */
                        if (emit_changed) begin

                            event_stage_data <= {
                                emit_state[0],
                                7'b0000000,
                                emit_key
                            };


                            event_stage_valid <=
                                1'b1;

                        end


                        /*
                         * Last keyboard position?
                         */
                        if (emit_key ==
                            LAST_KEY) begin

                            emit_key <=
                                0;

                            state <=
                                STATE_DRAIN;

                        end
                        else begin

                            /*
                             * Shift next key to bit zero.
                             */
                            emit_changes <=
                                emit_changes >> 1;


                            emit_state <=
                                emit_state >> 1;


                            emit_key <=
                                emit_key + 1'b1;

                        end

                    end

                end


                /*
                 * ------------------------------------------------
                 * DRAIN
                 * ------------------------------------------------
                 *
                 * Wait until last staged event has entered FIFO.
                 */
                STATE_DRAIN: begin

                    if (!event_stage_valid ||
                        do_push) begin

                        state <=
                            STATE_SCAN;

                    end

                end


                default: begin

                    state <=
                        STATE_SCAN;

                    row_index <=
                        0;

                    row_timer <=
                        ROW_TICKS - 1;

                    scan_same_previous <=
                        1'b1;

                end

            endcase

        end
    end

endmodule
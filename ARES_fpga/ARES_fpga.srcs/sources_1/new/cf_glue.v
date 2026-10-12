`timescale 1ns / 1ps

/*
 * AXI4-Lite -> CompactFlash True-IDE PIO controller
 *
 * Intended system address map (one 128 KiB AXI aperture):
 *
 *   0x1006_0000 .. 0x1006_FFFF : ATA command/task-file block (CS0#)
 *   0x1007_0000 .. 0x1007_FFFF : ATA control block          (CS1#)
 *
 * Within the command block, Linux uses reg-shift = <1>:
 *
 *   +0x00 DATA
 *   +0x02 ERROR / FEATURES
 *   +0x04 SECTOR COUNT
 *   +0x06 LBA LOW
 *   +0x08 LBA MID
 *   +0x0A LBA HIGH
 *   +0x0C DEVICE
 *   +0x0E STATUS / COMMAND
 *
 * The control block always drives CF DA=3'b110, giving
 * Alternate Status / Device Control.
 *
 * This controller intentionally allows only one outstanding AXI
 * transaction.  The AXI response is withheld until the full CF PIO
 * cycle has completed, so no external wait-state signal is needed.
 *
 * PIO mode 2 timing at 100 MHz (10 ns/clock).
 *
 * 16-bit DATA register (CS0#, DA=000):
 *   setup   =  3 clocks =  30 ns
 *   strobe  = 10 clocks = 100 ns
 *   hold    = 11 clocks = 110 ns
 *   total   = 24 clocks = 240 ns
 *
 * 8-bit task-file/control registers:
 *   setup   =  3 clocks =  30 ns
 *   strobe  = 29 clocks = 290 ns
 *   hold    =  2 clocks =  20 ns
 *   total   = 34 clocks = 340 ns
 *
 * The longer register strobe is required for PIO modes 0..2.
 * PIO2 does not require IORDY cycle stretching.
 */

module axi_cf_controller #(
    parameter integer C_S_AXI_DATA_WIDTH = 32,
    parameter integer C_S_AXI_ADDR_WIDTH = 17,

    /* PIO2 timing for the 16-bit ATA DATA register (DA=000). */
    parameter integer DATA_SETUP_CYCLES  = 3,
    parameter integer DATA_STROBE_CYCLES = 10,
    parameter integer DATA_HOLD_CYCLES   = 11,

    /* PIO2 timing for 8-bit task-file/control registers. */
    parameter integer REG_SETUP_CYCLES   = 3,
    parameter integer REG_STROBE_CYCLES  = 29,
    parameter integer REG_HOLD_CYCLES    = 2
)(
    /* AXI clock/reset */
    (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s_axi_aclk CLK" *)
    (* X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET s_axi_aresetn" *)
    input  wire                           s_axi_aclk,

    (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s_axi_aresetn RST" *)
    (* X_INTERFACE_PARAMETER = "POLARITY ACTIVE_LOW" *)
    input  wire                           s_axi_aresetn,

    /* AXI4-Lite write address channel */
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *)
    (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, PROTOCOL AXI4LITE, DATA_WIDTH 32, ADDR_WIDTH 17, HAS_BURST 0, HAS_LOCK 0, HAS_CACHE 0, HAS_REGION 0, HAS_QOS 0, HAS_WSTRB 1" *)
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] s_axi_awaddr,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *)
    input  wire [2:0]                     s_axi_awprot,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *)
    input  wire                           s_axi_awvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *)
    output wire                           s_axi_awready,

    /* AXI4-Lite write data channel */
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *)
    input  wire [C_S_AXI_DATA_WIDTH-1:0] s_axi_wdata,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *)
    input  wire [(C_S_AXI_DATA_WIDTH/8)-1:0] s_axi_wstrb,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *)
    input  wire                           s_axi_wvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *)
    output wire                           s_axi_wready,

    /* AXI4-Lite write response channel */
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *)
    output reg  [1:0]                     s_axi_bresp,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *)
    output reg                            s_axi_bvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *)
    input  wire                           s_axi_bready,

    /* AXI4-Lite read address channel */
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *)
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] s_axi_araddr,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *)
    input  wire [2:0]                     s_axi_arprot,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *)
    input  wire                           s_axi_arvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *)
    output wire                           s_axi_arready,

    /* AXI4-Lite read data channel */
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *)
    output reg  [C_S_AXI_DATA_WIDTH-1:0] s_axi_rdata,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *)
    output reg  [1:0]                     s_axi_rresp,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *)
    output reg                            s_axi_rvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *)
    input  wire                           s_axi_rready,

    /* CompactFlash True-IDE interface */
    output wire [2:0]                     cf_da,
    output wire                           cf_cs0_n,
    output wire                           cf_cs1_n,
    output wire                           cf_iord_n,
    output wire                           cf_iowr_n,
    output wire                           cf_reset_n,
    inout  wire [15:0]                    cf_dq,

    input  wire                           cf_intrq,
    output wire                           irq
);

    localparam [1:0] AXI_RESP_OKAY   = 2'b00;
    localparam [1:0] AXI_RESP_SLVERR = 2'b10;

    localparam [2:0] CF_IDLE   = 3'd0;
    localparam [2:0] CF_SETUP  = 3'd1;
    localparam [2:0] CF_STROBE = 3'd2;
    localparam [2:0] CF_HOLD   = 3'd3;

    reg [2:0] cf_state;
    reg [7:0] cf_count;

    /* AXI write-address/data skid registers. */
    reg                                aw_pending;
    reg [C_S_AXI_ADDR_WIDTH-1:0]       awaddr_reg;

    reg                                w_pending;
    reg [C_S_AXI_DATA_WIDTH-1:0]       wdata_reg;
    reg [(C_S_AXI_DATA_WIDTH/8)-1:0]   wstrb_reg;

    /* Current CF transaction. */
    reg        trans_is_write;
    reg        trans_bank;       /* 0 = CS0 command, 1 = CS1 control */
    reg [2:0]  trans_da;
    reg [15:0] trans_wdata;
    reg [15:0] trans_rdata;

    /*
     * Timing for the current CF transaction.
     *
     * The 16-bit DATA register can use the normal PIO2 100 ns strobe,
     * while 8-bit task-file/control registers require a 290 ns strobe.
     * Latch the appropriate timing when the AXI transaction starts so
     * it remains constant for the complete CF bus cycle.
     */
    reg [7:0] trans_setup_cycles;
    reg [7:0] trans_strobe_cycles;
    reg [7:0] trans_hold_cycles;

    /* Read address is consumed only when a CF transaction can start. */
    wire no_axi_response = !s_axi_bvalid && !s_axi_rvalid;
    wire cf_idle         = (cf_state == CF_IDLE);

    /*
     * Do not accept a read while a partial AXI write (AW or W) is buffered.
     * This keeps ordering simple and permits one outstanding transaction.
     */
    assign s_axi_arready =
        s_axi_aresetn &&
        cf_idle &&
        no_axi_response &&
        !aw_pending &&
        !w_pending &&
        !s_axi_awvalid &&
        !s_axi_wvalid;

    /*
     * AW and W are independent AXI channels, so each may arrive first.
     * Buffer one of each until both are available.
     */
    assign s_axi_awready =
        s_axi_aresetn &&
        !aw_pending &&
        !s_axi_bvalid &&
        !s_axi_rvalid;

    assign s_axi_wready =
        s_axi_aresetn &&
        !w_pending &&
        !s_axi_bvalid &&
        !s_axi_rvalid;

    wire aw_handshake = s_axi_awvalid && s_axi_awready;
    wire w_handshake  = s_axi_wvalid  && s_axi_wready;
    wire ar_handshake = s_axi_arvalid && s_axi_arready;

    /*
     * Address map within the 128 KiB aperture:
     *
     *   addr[16] = 0 -> 0x1006_xxxx -> CS0#
     *   addr[16] = 1 -> 0x1007_xxxx -> CS1#
     *
     * In command space, addr[3:1] maps directly to ATA DA[2:0].
     * In control space ATA requires DA=110.
     */
    function [2:0] address_to_da;
        input [C_S_AXI_ADDR_WIDTH-1:0] addr;
        begin
            if (addr[16])
                address_to_da = 3'b110;
            else
                address_to_da = addr[3:1];
        end
    endfunction

    /* Extract the byte selected by WSTRB. */
    function [7:0] selected_write_byte;
        input [31:0] data;
        input [3:0]  strb;
        begin
            if (strb[0])
                selected_write_byte = data[7:0];
            else if (strb[1])
                selected_write_byte = data[15:8];
            else if (strb[2])
                selected_write_byte = data[23:16];
            else
                selected_write_byte = data[31:24];
        end
    endfunction

    /* Extract a selected 16-bit halfword for the ATA DATA register. */
    function [15:0] selected_write_halfword;
        input [31:0] data;
        input [3:0]  strb;
        begin
            if (strb[1:0] != 2'b00)
                selected_write_halfword = data[15:0];
            else
                selected_write_halfword = data[31:16];
        end
    endfunction

    function write_strobe_valid;
        input [3:0] strb;
        begin
            write_strobe_valid = (strb != 4'b0000);
        end
    endfunction

    /*
     * For reads, replicate 8-bit task-file values to every byte lane.
     * This makes the slave robust to an AXI protocol converter placing
     * a narrow CPU read on any byte lane.  DATA (DA=000) is replicated
     * into both 16-bit halves for the same reason.
     */
    function [31:0] format_read_data;
        input        bank;
        input [2:0]  da;
        input [15:0] cfdata;
        begin
            if (!bank && (da == 3'b000))
                format_read_data = {cfdata, cfdata};
            else
                format_read_data = {4{cfdata[7:0]}};
        end
    endfunction

    /* CF output signals are derived only from the latched transaction. */
    wire cf_transaction_active = (cf_state != CF_IDLE);

    assign cf_da    = trans_da;
    assign cf_cs0_n = (cf_transaction_active && !trans_bank) ? 1'b0 : 1'b1;
    assign cf_cs1_n = (cf_transaction_active &&  trans_bank) ? 1'b0 : 1'b1;

    assign cf_iord_n =
        (cf_state == CF_STROBE && !trans_is_write) ? 1'b0 : 1'b1;

    assign cf_iowr_n =
        (cf_state == CF_STROBE &&  trans_is_write) ? 1'b0 : 1'b1;

    /*
     * CompactFlash 16-bit bidirectional data bus.
     *
     * Use explicit Xilinx IOBUF primitives instead of relying on inferred
     * tri-state logic.  This guarantees that the bidirectional behavior is
     * implemented in the FPGA I/O cells rather than converted to internal
     * logic by synthesis.
     *
     * IOBUF.T = 1 -> output disabled / pin is an input (CF read)
     * IOBUF.T = 0 -> FPGA drives the pin                (CF write)
     */
    wire [15:0] cf_dq_i;
    wire [15:0] cf_dq_o;
    wire        cf_dq_t;

    assign cf_dq_o = trans_wdata;

    /*
     * Drive CF D[15:0] for the complete write setup/strobe/hold interval.
     * Release it at all other times, especially for CF read transactions.
     */
    assign cf_dq_t = !(cf_transaction_active && trans_is_write);

    genvar dq_bit;
    generate
        for (dq_bit = 0; dq_bit < 16; dq_bit = dq_bit + 1) begin : gen_cf_dq_iobuf
            IOBUF cf_dq_iobuf (
                .I  (cf_dq_o[dq_bit]),
                .O  (cf_dq_i[dq_bit]),
                .T  (cf_dq_t),
                .IO (cf_dq[dq_bit])
            );
        end
    endgenerate

    assign cf_reset_n = s_axi_aresetn;

    // CF INTRQ is asynchronous to s_axi_aclk. Preserve its active-high
    // level, and expose only the second synchronizer stage to the PLIC.
    (* ASYNC_REG = "TRUE", SHREG_EXTRACT = "NO" *) reg cf_irq_meta;
    (* ASYNC_REG = "TRUE", SHREG_EXTRACT = "NO" *) reg cf_irq_sync;

    always @(posedge s_axi_aclk) begin
        if (!s_axi_aresetn) begin
            cf_irq_meta <= 1'b0;
            cf_irq_sync <= 1'b0;
        end else begin
            cf_irq_meta <= cf_intrq;
            cf_irq_sync <= cf_irq_meta;
        end
    end

    assign irq = cf_irq_sync;

    /*
     * Start-write condition.  Because AW and W can handshake on the
     * same clock, include the live channel values as well as the
     * already-buffered values.
     */
    wire have_aw = aw_pending || aw_handshake;
    wire have_w  = w_pending  || w_handshake;

    wire [C_S_AXI_ADDR_WIDTH-1:0] next_awaddr =
        aw_pending ? awaddr_reg : s_axi_awaddr;

    wire [31:0] next_wdata =
        w_pending ? wdata_reg : s_axi_wdata;

    wire [3:0] next_wstrb =
        w_pending ? wstrb_reg : s_axi_wstrb;

    wire start_write =
        cf_idle &&
        no_axi_response &&
        have_aw &&
        have_w;

    integer i;

    always @(posedge s_axi_aclk) begin
        if (!s_axi_aresetn) begin
            cf_state       <= CF_IDLE;
            cf_count       <= 8'd0;

            aw_pending     <= 1'b0;
            awaddr_reg     <= {C_S_AXI_ADDR_WIDTH{1'b0}};

            w_pending      <= 1'b0;
            wdata_reg      <= {C_S_AXI_DATA_WIDTH{1'b0}};
            wstrb_reg      <= {(C_S_AXI_DATA_WIDTH/8){1'b0}};

            s_axi_bresp    <= AXI_RESP_OKAY;
            s_axi_bvalid   <= 1'b0;

            s_axi_rdata    <= {C_S_AXI_DATA_WIDTH{1'b0}};
            s_axi_rresp    <= AXI_RESP_OKAY;
            s_axi_rvalid   <= 1'b0;

            trans_is_write <= 1'b0;
            trans_bank     <= 1'b0;
            trans_da       <= 3'b000;
            trans_wdata    <= 16'h0000;
            trans_rdata    <= 16'h0000;

            trans_setup_cycles  <= REG_SETUP_CYCLES;
            trans_strobe_cycles <= REG_STROBE_CYCLES;
            trans_hold_cycles   <= REG_HOLD_CYCLES;
        end
        else begin
            /* Retire AXI responses. */
            if (s_axi_bvalid && s_axi_bready)
                s_axi_bvalid <= 1'b0;

            if (s_axi_rvalid && s_axi_rready)
                s_axi_rvalid <= 1'b0;

            /* Buffer AW if it is accepted and not immediately consumed. */
            if (aw_handshake) begin
                awaddr_reg <= s_axi_awaddr;
                aw_pending <= 1'b1;
            end

            /* Buffer W if it is accepted and not immediately consumed. */
            if (w_handshake) begin
                wdata_reg <= s_axi_wdata;
                wstrb_reg <= s_axi_wstrb;
                w_pending <= 1'b1;
            end

            case (cf_state)
                CF_IDLE: begin
                    cf_count <= 8'd0;

                    /* Writes have priority once both AW and W exist. */
                    if (start_write) begin
                        aw_pending <= 1'b0;
                        w_pending  <= 1'b0;

                        if (!write_strobe_valid(next_wstrb)) begin
                            /* No byte lane selected: reject the AXI write. */
                            s_axi_bresp  <= AXI_RESP_SLVERR;
                            s_axi_bvalid <= 1'b1;
                        end
                        else begin
                            trans_is_write <= 1'b1;
                            trans_bank     <= next_awaddr[16];
                            trans_da       <= address_to_da(next_awaddr);

                            if (!next_awaddr[16] &&
                                (address_to_da(next_awaddr) == 3'b000)) begin
                                /* 16-bit DATA register: full PIO2 timing. */
                                trans_setup_cycles  <= DATA_SETUP_CYCLES;
                                trans_strobe_cycles <= DATA_STROBE_CYCLES;
                                trans_hold_cycles   <= DATA_HOLD_CYCLES;
                                trans_wdata <= selected_write_halfword(
                                    next_wdata,
                                    next_wstrb
                                );
                            end
                            else begin
                                /* 8-bit task-file/control register timing. */
                                trans_setup_cycles  <= REG_SETUP_CYCLES;
                                trans_strobe_cycles <= REG_STROBE_CYCLES;
                                trans_hold_cycles   <= REG_HOLD_CYCLES;

                                trans_wdata <= {
                                    8'h00,
                                    selected_write_byte(next_wdata, next_wstrb)
                                };
                            end

                            s_axi_bresp <= AXI_RESP_OKAY;
                            cf_state    <= CF_SETUP;
                        end
                    end
                    else if (ar_handshake) begin
                        trans_is_write <= 1'b0;
                        trans_bank     <= s_axi_araddr[16];
                        trans_da       <= address_to_da(s_axi_araddr);
                        trans_wdata    <= 16'h0000;

                        if (!s_axi_araddr[16] &&
                            (address_to_da(s_axi_araddr) == 3'b000)) begin
                            /* 16-bit DATA register: full PIO2 timing. */
                            trans_setup_cycles  <= DATA_SETUP_CYCLES;
                            trans_strobe_cycles <= DATA_STROBE_CYCLES;
                            trans_hold_cycles   <= DATA_HOLD_CYCLES;
                        end
                        else begin
                            /* 8-bit task-file/control register timing. */
                            trans_setup_cycles  <= REG_SETUP_CYCLES;
                            trans_strobe_cycles <= REG_STROBE_CYCLES;
                            trans_hold_cycles   <= REG_HOLD_CYCLES;
                        end

                        s_axi_rresp <= AXI_RESP_OKAY;
                        cf_state    <= CF_SETUP;
                    end
                end

                /* Address / chip-select setup before DIOR#/DIOW#. */
                CF_SETUP: begin
                    if (cf_count == trans_setup_cycles - 1'b1) begin
                        cf_count <= 8'd0;
                        cf_state <= CF_STROBE;
                    end
                    else begin
                        cf_count <= cf_count + 1'b1;
                    end
                end

                /* DIOR#/DIOW# asserted for the selected PIO2 width. */
                CF_STROBE: begin
                    if (!trans_is_write)
                        trans_rdata <= cf_dq_i;

                    if (cf_count == trans_strobe_cycles - 1'b1) begin
                        /* Capture read data on the final active-strobe clock. */
                        if (!trans_is_write)
                            trans_rdata <= cf_dq_i;

                        cf_count <= 8'd0;
                        cf_state <= CF_HOLD;
                    end
                    else begin
                        cf_count <= cf_count + 1'b1;
                    end
                end

                /* Keep address/CS (and write data) stable after the strobe. */
                CF_HOLD: begin
                    if (cf_count == trans_hold_cycles - 1'b1) begin
                        cf_count <= 8'd0;
                        cf_state <= CF_IDLE;

                        if (trans_is_write) begin
                            s_axi_bresp  <= AXI_RESP_OKAY;
                            s_axi_bvalid <= 1'b1;
                        end
                        else begin
                            /*
                             * cf_dq_i was sampled into trans_rdata at the end of
                             * CF_STROBE.  During HOLD the registered
                             * trans_rdata already contains that final active-
                             * strobe sample.
                             */
                            s_axi_rdata  <= format_read_data(
                                trans_bank,
                                trans_da,
                                trans_rdata
                            );
                            s_axi_rresp  <= AXI_RESP_OKAY;
                            s_axi_rvalid <= 1'b1;
                        end
                    end
                    else begin
                        cf_count <= cf_count + 1'b1;
                    end
                end

                default: begin
                    cf_state <= CF_IDLE;
                    cf_count <= 8'd0;
                end
            endcase
        end
    end

endmodule

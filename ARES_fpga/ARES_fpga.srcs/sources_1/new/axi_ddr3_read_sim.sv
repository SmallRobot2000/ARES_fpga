`timescale 1ns / 1ps

// ============================================================================
// Behavioral AXI4 read-only DDR3/MIG-like simulation model
//
// Intended for functional simulation of a 128-bit AXI read port.
// Default memory size: 8 MiB
// Default clock assumption: 100 MHz
//
// Timing model:
//   - 40 cycles before first RVALID of every burst  = 400 ns @ 100 MHz
//   - 30-cycle pause after every 64 accepted beats = 300 ns @ 100 MHz
//
// Supported:
//   - One outstanding read burst at a time
//   - AXI4 INCR bursts (ARBURST = 2'b01)
//   - ARLEN 0..255 => 1..256 beats
//   - ARSIZE 0..4  => 1..16 bytes/transfer on a 128-bit bus
//   - RREADY backpressure; RVALID/RDATA remain stable while stalled
//   - Unaligned AXI addresses with AXI-style bus-lane behavior
//
// Notes:
//   - RDATA is always the 128-bit BUS-ALIGNED memory word containing the
//     current transfer address. Therefore, for an unaligned first transfer,
//     valid bytes begin at the lane selected by ARADDR[3:0].
//   - For a VDP that consumes all 128 bits as 16 consecutive bytes, use
//     ARSIZE=3'b100 and 16-byte-aligned ARADDR.
//   - This is NOT a cycle-accurate DDR3/MIG model. It intentionally models
//     the latency/backpressure requested for fast functional simulation.
// ============================================================================

module axi_ddr3_read_sim #(
    parameter logic [31:0] BASE_ADDR = 32'h0000_0000,
    parameter int unsigned MEM_BYTES = 8 * 1024 * 1024,

    // 100 MHz defaults:
    parameter int unsigned INITIAL_LATENCY_CYCLES = 40,
    parameter int unsigned GAP_EVERY_BEATS        = 64,
    parameter int unsigned GAP_LATENCY_CYCLES     = 30,

    // Optional 128-bit-wide $readmemh file.
    // If empty, memory is initialized with an address-byte test pattern.
    parameter string INIT_FILE = ""
)(
    input  logic         aclk,
    input  logic         aresetn,

    // AXI4 read address channel
    input  logic         arvalid,
    output logic         arready,
    input  logic [31:0]  araddr,
    input  logic [7:0]   arlen,
    input  logic [2:0]   arsize,
    input  logic [1:0]   arburst,

    // AXI4 read data channel
    output logic         rvalid,
    input  logic         rready,
    output logic [127:0] rdata,
    output logic [1:0]   rresp,
    output logic         rlast
);

    localparam int unsigned BUS_BYTES = 16;
    localparam int unsigned MEM_WORDS = MEM_BYTES / BUS_BYTES;

    localparam logic [1:0] AXI_OKAY   = 2'b00;
    localparam logic [1:0] AXI_SLVERR = 2'b10;
    localparam logic [1:0] AXI_DECERR = 2'b11;

    localparam logic [1:0] AXI_BURST_INCR = 2'b01;

    // 8 MiB / 16 bytes = 524288 x 128-bit words.
    logic [127:0] mem [0:MEM_WORDS-1];

    integer i;
    integer j;

    // ------------------------------------------------------------------------
    // Initialization
    //
    // Default pattern:
    //   byte at address N = N[7:0]
    //
    // Therefore at address 0x00000000:
    //   byte lanes [0..15] = 00 01 02 ... 0F
    // ------------------------------------------------------------------------
    initial begin
        if (INIT_FILE != "") begin
            $display("[%0t] AXI DDR sim: loading %s", $time, INIT_FILE);
            $readmemh(INIT_FILE, mem);
        end
        else begin
            $display("[%0t] AXI DDR sim: initializing %0d MiB test pattern",
                     $time, MEM_BYTES / (1024*1024));

            for (i = 0; i < MEM_WORDS; i = i + 1) begin
                for (j = 0; j < BUS_BYTES; j = j + 1) begin
                    mem[i][j*8 +: 8] = ((i * BUS_BYTES) + j) & 8'hFF;
                end
            end
        end
    end

    // ------------------------------------------------------------------------
    // Testbench helper tasks.
    //
    // Example:
    //   ddr3_sim.write_byte(32'h00001003, 8'hAA);
    //   ddr3_sim.write128(32'h00002000, 128'h...);
    // ------------------------------------------------------------------------
    task automatic write_byte(
        input logic [31:0] address,
        input logic [7:0]  value
    );
        integer word_index;
        integer byte_lane;
        begin
            if ((address >= BASE_ADDR) &&
                (address < (BASE_ADDR + MEM_BYTES))) begin

                word_index = (address - BASE_ADDR) >> 4;
                byte_lane  = (address - BASE_ADDR) & 32'hF;

                mem[word_index][byte_lane*8 +: 8] = value;
            end
            else begin
                $error("[%0t] AXI DDR sim write_byte out of range: %08h",
                       $time, address);
            end
        end
    endtask

    task automatic write128(
        input logic [31:0]  address,
        input logic [127:0] value
    );
        integer word_index;
        begin
            if (address[3:0] != 4'b0000)
                $warning("[%0t] write128 address is not 16-byte aligned: %08h",
                         $time, address);

            if ((address >= BASE_ADDR) &&
                (address <= (BASE_ADDR + MEM_BYTES - 16))) begin

                word_index = (address - BASE_ADDR) >> 4;
                mem[word_index] = value;
            end
            else begin
                $error("[%0t] AXI DDR sim write128 out of range: %08h",
                       $time, address);
            end
        end
    endtask

    // ------------------------------------------------------------------------
    // Return the complete 128-bit AXI bus word containing "address".
    // This intentionally models AXI byte lanes rather than realigning the
    // requested byte to RDATA[7:0].
    // ------------------------------------------------------------------------
    function automatic logic [127:0] read_bus_word(
        input logic [31:0] address
    );
        logic [31:0] aligned_address;
        integer word_index;
        begin
            aligned_address = {address[31:4], 4'b0000};

            if ((aligned_address >= BASE_ADDR) &&
                (aligned_address <= (BASE_ADDR + MEM_BYTES - 16))) begin

                word_index    = (aligned_address - BASE_ADDR) >> 4;
                read_bus_word = mem[word_index];
            end
            else begin
                read_bus_word = 128'b0;
            end
        end
    endfunction

    function automatic logic address_in_range(
        input logic [31:0] address
    );
        logic [31:0] aligned_address;
        begin
            aligned_address = {address[31:4], 4'b0000};

            address_in_range =
                (aligned_address >= BASE_ADDR) &&
                (aligned_address <= (BASE_ADDR + MEM_BYTES - 16));
        end
    endfunction

    function automatic logic [31:0] transfer_bytes(
        input logic [2:0] size
    );
        begin
            transfer_bytes = 32'd1 << size;
        end
    endfunction

    // AXI INCR addressing:
    //   beat 0 uses the original, possibly unaligned ARADDR.
    //   later beats use the aligned transfer-size boundary and increment.
    function automatic logic [31:0] next_incr_address(
        input logic [31:0] start_address,
        input logic [31:0] current_address,
        input logic [7:0]  current_beat,
        input logic [2:0]  size
    );
        logic [31:0] bytes;
        logic [31:0] aligned_start;
        begin
            bytes         = transfer_bytes(size);
            aligned_start = start_address & ~(bytes - 1);

            if (current_beat == 0)
                next_incr_address = aligned_start + bytes;
            else
                next_incr_address = current_address + bytes;
        end
    endfunction

    function automatic logic [1:0] response_for(
        input logic [31:0] address,
        input logic [2:0]  size,
        input logic [1:0]  burst
    );
        begin
            if (burst != AXI_BURST_INCR)
                response_for = AXI_SLVERR;
            else if (size > 3'b100)
                response_for = AXI_SLVERR;
            else if (!address_in_range(address))
                response_for = AXI_DECERR;
            else
                response_for = AXI_OKAY;
        end
    endfunction

    typedef enum logic [1:0] {
        ST_IDLE,
        ST_INITIAL_WAIT,
        ST_SEND,
        ST_GAP_WAIT
    } state_t;

    state_t state;

    logic [31:0] burst_start_addr;
    logic [31:0] beat_addr;
    logic [7:0]  burst_len;
    logic [2:0]  burst_size;
    logic [1:0]  burst_type;
    logic [7:0]  beat_index;

    integer unsigned wait_count;

    // ------------------------------------------------------------------------
    // AXI read channel
    // ------------------------------------------------------------------------
    always_ff @(posedge aclk) begin
        if (!aresetn) begin
            state            <= ST_IDLE;

            arready          <= 1'b0;

            rvalid           <= 1'b0;
            rdata            <= 128'b0;
            rresp            <= AXI_OKAY;
            rlast            <= 1'b0;

            burst_start_addr <= 32'b0;
            beat_addr        <= 32'b0;
            burst_len        <= 8'b0;
            burst_size       <= 3'b0;
            burst_type       <= 2'b0;
            beat_index       <= 8'b0;

            wait_count       <= 0;
        end
        else begin
            case (state)

                // ------------------------------------------------------------
                // Accept one read burst.
                // Only one outstanding burst is modeled.
                // ------------------------------------------------------------
                ST_IDLE: begin
                    arready <= 1'b1;
                    rvalid  <= 1'b0;
                    rlast   <= 1'b0;

                    if (arvalid && arready) begin
                        arready          <= 1'b0;

                        burst_start_addr <= araddr;
                        beat_addr        <= araddr;
                        burst_len        <= arlen;
                        burst_size       <= arsize;
                        burst_type       <= arburst;
                        beat_index       <= 8'd0;

                        wait_count       <= INITIAL_LATENCY_CYCLES;
                        state            <= ST_INITIAL_WAIT;

                        if (arburst != AXI_BURST_INCR)
                            $warning("[%0t] AXI DDR sim only models INCR bursts. ARBURST=%b",
                                     $time, arburst);

                        if (arsize > 3'b100)
                            $warning("[%0t] AXI DDR sim ARSIZE=%0d exceeds 128-bit bus width",
                                     $time, arsize);

                        if (arsize == 3'b100 && araddr[3:0] != 4'b0000)
                            $display("[%0t] AXI DDR sim: unaligned 128-bit burst ARADDR=%08h; first RDATA uses AXI byte lanes",
                                     $time, araddr);
                    end
                end

                // ------------------------------------------------------------
                // Requested ~400 ns first-data latency.
                // RVALID remains low during this time.
                // ------------------------------------------------------------
                ST_INITIAL_WAIT: begin
                    rvalid <= 1'b0;

                    if (INITIAL_LATENCY_CYCLES == 0 || wait_count <= 1) begin
                        rdata  <= read_bus_word(beat_addr);
                        rresp  <= response_for(beat_addr, burst_size, burst_type);
                        rlast  <= (beat_index == burst_len);
                        rvalid <= 1'b1;
                        state  <= ST_SEND;
                    end
                    else begin
                        wait_count <= wait_count - 1;
                    end
                end

                // ------------------------------------------------------------
                // Hold RVALID/RDATA/RRESP/RLAST stable until RREADY.
                // This allows the master to stop after every beat and spend
                // any number of cycles processing it.
                // ------------------------------------------------------------
                ST_SEND: begin
                    if (rvalid && rready) begin

                        // Last beat of the AXI burst.
                        if (beat_index == burst_len) begin
                            rvalid  <= 1'b0;
                            rlast   <= 1'b0;
                            arready <= 1'b1;
                            state   <= ST_IDLE;
                        end
                        else begin
                            beat_addr <= next_incr_address(
                                burst_start_addr,
                                beat_addr,
                                beat_index,
                                burst_size
                            );

                            beat_index <= beat_index + 1'b1;

                            // Pause AFTER beats 64, 128, 192...
                            if ((GAP_EVERY_BEATS != 0) &&
                                (((beat_index + 1'b1) % GAP_EVERY_BEATS) == 0)) begin

                                rvalid     <= 1'b0;
                                rlast      <= 1'b0;
                                wait_count <= GAP_LATENCY_CYCLES;
                                state      <= ST_GAP_WAIT;
                            end
                            else begin
                                // No bubble: present next beat on next cycle.
                                rdata <= read_bus_word(
                                    next_incr_address(
                                        burst_start_addr,
                                        beat_addr,
                                        beat_index,
                                        burst_size
                                    )
                                );

                                rresp <= response_for(
                                    next_incr_address(
                                        burst_start_addr,
                                        beat_addr,
                                        beat_index,
                                        burst_size
                                    ),
                                    burst_size,
                                    burst_type
                                );

                                rlast <= ((beat_index + 1'b1) == burst_len);
                                rvalid <= 1'b1;
                            end
                        end
                    end
                end

                // ------------------------------------------------------------
                // Requested ~300 ns pause after each group of 64 accepted
                // beats. Backpressure from the master does NOT count toward
                // the 64-beat group; only actual RVALID && RREADY handshakes.
                // ------------------------------------------------------------
                ST_GAP_WAIT: begin
                    rvalid <= 1'b0;

                    if (GAP_LATENCY_CYCLES == 0 || wait_count <= 1) begin
                        rdata  <= read_bus_word(beat_addr);
                        rresp  <= response_for(beat_addr, burst_size, burst_type);
                        rlast  <= (beat_index == burst_len);
                        rvalid <= 1'b1;
                        state  <= ST_SEND;
                    end
                    else begin
                        wait_count <= wait_count - 1;
                    end
                end

                default: begin
                    state   <= ST_IDLE;
                    arready <= 1'b0;
                    rvalid  <= 1'b0;
                    rlast   <= 1'b0;
                end
            endcase
        end
    end

endmodule

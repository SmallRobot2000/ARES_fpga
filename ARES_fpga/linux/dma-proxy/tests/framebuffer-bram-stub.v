// SPDX-License-Identifier: GPL-2.0-only
// Behavioral stand-in for the generated dual-port line BRAM. The handshake
// test does not depend on pixel contents.
module blk_mem_gen_bit_line (
    input wire [6:0] addra,
    input wire clka,
    input wire [127:0] dina,
    input wire [15:0] wea,
    input wire [8:0] addrb,
    input wire clkb,
    input wire [31:0] dinb,
    output reg [31:0] doutb,
    input wire [3:0] web
);
    always @(posedge clkb)
        doutb <= 32'b0;
endmodule

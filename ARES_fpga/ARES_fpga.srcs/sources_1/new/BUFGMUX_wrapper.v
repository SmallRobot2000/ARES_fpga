`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/29/2026 06:56:57 PM
// Design Name: 
// Module Name: BUFGMUX_wrapper
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


module BUFGMUX_wrapper(
    input wire clk_in,
    input wire sel,
    output wire clk_out
    );

wire [5:0] q;

    FDCE ff0 (
        .C(clk_in),
        .CE(1'b1),
        .CLR(rst),
        .D(~q[0]),
        .Q(q[0])
    );

    FDCE ff1 (
        .C(q[0]),
        .CE(1'b1),
        .CLR(rst),
        .D(~q[1]),
        .Q(q[1])
    );

    FDCE ff2 (
        .C(q[1]),
        .CE(1'b1),
        .CLR(rst),
        .D(~q[2]),
        .Q(q[2])
    );

    FDCE ff3 (
        .C(q[2]),
        .CE(1'b1),
        .CLR(rst),
        .D(~q[3]),
        .Q(q[3])
    );

    FDCE ff4 (
        .C(q[3]),
        .CE(1'b1),
        .CLR(rst),
        .D(~q[4]),
        .Q(q[4])
    );

    FDCE ff5 (
        .C(q[4]),
        .CE(1'b1),
        .CLR(rst),
        .D(~q[5]),
        .Q(q[5])
    );

    
BUFGMUX bufgmux_inst (
    .I0(clk_in),
    .I1(q[5]),
    .S(sel),
    .O(clk_out)
);
endmodule

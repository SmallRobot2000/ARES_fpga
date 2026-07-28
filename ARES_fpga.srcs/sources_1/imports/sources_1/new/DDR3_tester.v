`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/24/2026 11:29:44 PM
// Design Name: 
// Module Name: DDR3_tester
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

`ifndef SYNTHESIS
    `define SIMULATION
`endif
module DDR3_tester(
    output reg [27:0] addr = 0,
    output reg [2:0] cmd = 0,
    output reg enable = 0,
    output reg [127:0]wr_data = 0,
    output reg wr_enable = 0,
    output reg [15:0]wr_mask = 0,
    
    input [127:0] rd_data,
    input rd_valid,
    input rdy,
    input wr_rdy, 
    
    input clk,
    input reset,
    output reg [7:0] led
    );
    
    localparam STATE_RCMD =  8'b0000_0001;
    localparam STATE_WCMD =  8'b0000_0010;
    localparam STATE_WRITE = 8'b0000_0100;
    localparam STATE_READ =  8'b0000_1000;
    localparam STATE_WREAD = 8'b0001_0000;
    localparam STATE_DELAY = 8'b0010_0000;
    reg [7:0]state = STATE_WRITE;
    reg [7:0]address;
    reg [23:0]ctr;
    reg [7:0]timer;
    always @(posedge clk) begin

    if(reset) begin
            state <= STATE_WRITE;
            address <= 0;
            ctr <= 0;
            enable <= 0;
            wr_enable <= 0;
            led <= 0;
            wr_mask <= 0;
            cmd <= 0;
    end else begin
        enable <= 0;
        wr_enable <= 0;
        wr_mask <= 0;

        case (state)
            STATE_WRITE: begin  
            if(wr_rdy) begin
                wr_enable <= 1;
                wr_data[7:0] <= address;
                
                    state <= STATE_WCMD;
                end
            end
            
            STATE_WCMD: begin
                enable <= 1;
                if(rdy) begin
                
                cmd <= 3'b0;
                addr <= {16'b0,address,4'b000};
                
                    address <= address + 1;
                    state <= STATE_WRITE;
                    if(address == 8'hFF) begin
                        state <= STATE_RCMD;
                        address <= 0;
                    end
                end
            end
            
            STATE_RCMD: begin
                timer <= timer + 1;
                enable <= 1;
                cmd <= 3'b1;
                addr <= {16'b0,address,4'b000};

                if(rdy && rd_valid)
                    state <= STATE_WREAD;
            end
            
            STATE_WREAD: begin
                if(rd_valid) begin
                    //led <= rd_data[7:0];
                    led <= timer;
                    state <= STATE_DELAY;
                    address <= address + 1;
                end
            end
            
            STATE_DELAY: begin
                ctr <= ctr + 1;
                if(&ctr) begin
                    state <= STATE_RCMD;
                    timer <= 0;
                end
            end

            default:
            begin
                state <= STATE_WRITE;
            end
        endcase
        end
    end
endmodule

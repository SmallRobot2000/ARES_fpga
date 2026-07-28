`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/12/2026 11:46:43 AM
// Design Name: 
// Module Name: FLASH_SPI
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


module FLASH_SPI(
    
    input           axi_sel,
    //AR
    input           s_axi_ar_valid,
    output          s_axi_ar_ready,
    input   [31:0]  s_axi_ar_addr,
    input   [0:0]   s_axi_ar_id,      //ID of the transfer
    
    //R
    output            s_axi_r_valid,
    input             s_axi_r_ready,
    output     [31:0] s_axi_r_dout,
    output     [1:0]  s_axi_r_resp,
    output            s_axi_r_last,
    output     [0:0]  s_axi_r_id,
    
    
    //SPI
    input           spi_miso,
    output reg      spi_mosi = 0,
    output reg      spi_sck = 0,
    output          spi_ce_n,
    
    input           axi_clk,
    input           reset
    );
    
    
    
    //AXI - SPI link logic
    reg [31:0] buf_dout = 0;
    reg spi_cmd_start = 0;  //Start command
    reg buf_valid = 0;
    reg [23:0] spi_addr = 0;
    reg buf_wait = 0;   //Tell SPI to wait to empty buffer
    reg buf_done = 0;   //Tell SPI we are done with the transfer
    reg [2:0] spi_dat_cnt;
    
    
    
    
    //AXI CPU bridge
    wire axi_en = axi_sel; //1 when we are slected the whole time

      
    //AXI logic
    reg axi_ar_ready = 0;
    reg axi_r_valid = 0;
    reg axi_r_last = 0;
    reg axi_r_id = 0;
    
    assign s_axi_ar_ready = axi_en ? axi_ar_ready : 1'bz;
    assign s_axi_r_valid = axi_en ? axi_r_valid : 1'bz;
    assign s_axi_r_last = axi_en ? axi_r_last : 1'bz;
    assign s_axi_r_id = axi_en ? axi_r_id : 1'bz;
    
    assign s_axi_r_dout = axi_en ? buf_dout : 32'bz;
    assign s_axi_r_resp = axi_en ? 2'b0 : 2'bz;
    
    
    localparam AXI_STATE_IDLE   = 4'b0001;
    localparam AXI_STATE_R0     = 4'b0010;
    localparam AXI_STATE_R1     = 4'b0100;
    localparam AXI_STATE_RD     = 4'b1000;
    
    reg [3:0] axi_state = 0;
    reg [7:0] axi_cnt = 0;
    reg [7:0] wait_cnt = 0;
    always @(posedge axi_clk) begin
        if(reset) begin
            spi_cmd_start <= 0;
            spi_dat_cnt <= 0;
            buf_wait <= 0;
            buf_done <= 0;
            wait_cnt <= 0;
        end else begin
            case (axi_state)
            AXI_STATE_IDLE: begin
                //Signals noraml state
                wait_cnt <= 8'b0;
                buf_done <= 0;
                if(s_axi_ar_valid && axi_sel) begin
                    //SPI CMD setup
                    spi_addr <= s_axi_ar_addr[23:0];
                    spi_cmd_start <= 1;

                    
                    axi_ar_ready <= 1;            //We got the addr
                    axi_r_valid <= 0;             //Dout not valid
                    axi_r_last <= 0;              //Not the last transfer
                    axi_cnt <= 8'h0f;
                    axi_r_id <= s_axi_ar_id;      //Save transfer ID
                    axi_state <= AXI_STATE_R0;
            
                end
                  
            end
            AXI_STATE_R0: begin
                axi_ar_ready <= 0;    //We are done getting the address
                if(buf_valid) begin //When buffer is valid its automaticly transfered to dout
                    
                    
                    axi_r_valid <= 1;                         //dout is valid and tell CPU to read it
                    axi_r_last    <= (axi_cnt == 0) ? 1 : 0;  //this is the last transfer
                    buf_wait <= 1;  //Wait before getting next buffer
                    
                    axi_state <= AXI_STATE_R1;
                end
            end
            AXI_STATE_R1: begin
                
                axi_cnt <= axi_cnt - 1;     //Decrement transfer count
                
                axi_r_valid <= 0;         //Cpu read the data so next transfer
                axi_r_last <= 0;
                buf_wait <= 0;          //Tell SPI logic we are ready for the next buffer    
                if(axi_cnt == 0) begin
                    axi_state <= AXI_STATE_RD;  //If this was the last transfer go to read done state
                end else begin
                    axi_state <= AXI_STATE_R0;  //If this wasnt the last transfer go to read loop
                end
 
            end
            AXI_STATE_RD: begin
                //Disable AXI ports
                axi_r_valid <= 0;
                
                //Tell SPI logic we are done
                buf_done <= 1;
                spi_cmd_start <= 0;
                //Go idle after some time
                wait_cnt <= wait_cnt + 1;
                if(wait_cnt == 8'h30)
                    axi_state <= AXI_STATE_IDLE;
            end
            default: axi_state <= AXI_STATE_IDLE;
            endcase
        end
    end
    //SPI logic
    
    localparam SPI_CMD_HSPD_READ = 8'h0B;
   
    reg [7:0] spi_out;
    reg [7:0] spi_in;
    reg [4:0] spi_cnt = 0;
    

    
    //1 when in middle of a transfer
    reg spi_transfer;
    reg spi_cs;

    //Clock active when in transfere
    assign spi_ce_n = ~spi_cs;
    localparam SPI_STATE_IDLE    = 11'b000_0000_0001;
    localparam SPI_STATE_ADD0    = 11'b000_0000_0010;
    localparam SPI_STATE_ADD1    = 11'b000_0000_0100;
    localparam SPI_STATE_ADD2    = 11'b000_0000_1000;
    localparam SPI_STATE_DUMMY   = 11'b000_0001_0000;
    localparam SPI_STATE_DATA_RS = 11'b000_0010_0000;
    localparam SPI_STATE_DATA_R0 = 11'b000_0100_0000;
    localparam SPI_STATE_DATA_R1 = 11'b000_1000_0000;
    localparam SPI_STATE_DATA_R2 = 11'b001_0000_0000;
    localparam SPI_STATE_DATA_R3 = 11'b010_0000_0000;
    localparam SPI_STATE_DATA_RD = 11'b100_0000_0000;
    reg [10:0] spi_state = 0;
    
    always @(negedge axi_clk) begin
        if(reset) begin
            //Reset all of the SPI logic and link logic
            buf_dout <= 0;
            spi_transfer <= 0;
            buf_valid <= 0;
            spi_out <= 0;
            spi_cs <= 0;
        end else begin
            if(spi_state == SPI_STATE_IDLE && spi_cmd_start && !spi_transfer) begin
                //Send SPI command for high speed read and set data count per transfer
                spi_cs <= 1;
                spi_out <= SPI_CMD_HSPD_READ;
                //Add a wait cycle for CS to meet timeing
                if(spi_cs) begin
                    spi_transfer <= 1;
                    spi_state <= SPI_STATE_ADD0;
                end
            end
            if(spi_state == SPI_STATE_ADD0 && !spi_transfer) begin
                //Send address
                spi_out <= spi_addr[23:16];
                spi_transfer <= 1;
                spi_state <= SPI_STATE_ADD1;
            end
            if(spi_state == SPI_STATE_ADD1 && !spi_transfer) begin
                spi_out <= spi_addr[15:8];
                spi_transfer <= 1;
                spi_state <= SPI_STATE_ADD2;
            end
            if(spi_state == SPI_STATE_ADD2 && !spi_transfer) begin
                spi_out <= spi_addr[7:0];
                spi_transfer <= 1;
                spi_state <= SPI_STATE_DUMMY;
            end
            if(spi_state == SPI_STATE_DUMMY && !spi_transfer) begin
                spi_out <= 8'b0;
                spi_transfer <= 1;
                spi_state <= SPI_STATE_DATA_RS;
            end
            if(spi_state == SPI_STATE_DATA_RS && !spi_transfer) begin
                //spi_out does not matter
                //spi_dat_cnt how many bytes per axi transfer
                if(buf_done)
                    spi_state <= SPI_STATE_IDLE;
                    
                if(!buf_wait) begin
                    buf_valid <= 0;
                    spi_transfer <= 1;
                    spi_state <= SPI_STATE_DATA_R0;
                end
            end
            if(spi_state == SPI_STATE_DATA_R0 && !spi_transfer) begin
                buf_dout[7:0] <= spi_in;
                
                if(spi_dat_cnt != 1) begin
                    spi_state <= SPI_STATE_DATA_R1;
                    spi_transfer <= 1;
                end else
                    spi_state <= SPI_STATE_DATA_RD;
            end
            if(spi_state == SPI_STATE_DATA_R1 && !spi_transfer) begin
                buf_dout[15:8] <= spi_in;
                
                if(spi_dat_cnt != 2) begin
                    spi_state <= SPI_STATE_DATA_R2;
                    spi_transfer <= 1;
                end else
                    spi_state <= SPI_STATE_DATA_RD;
            end
            if(spi_state == SPI_STATE_DATA_R2 && !spi_transfer) begin
                buf_dout[23:16] <= spi_in;
                spi_transfer <= 1;
                spi_state <= SPI_STATE_DATA_R3;
            end
            if(spi_state == SPI_STATE_DATA_R3 && !spi_transfer) begin
                buf_dout[31:24] <= spi_in;
                spi_state <= SPI_STATE_DATA_RD;
            end
            if(spi_state == SPI_STATE_DATA_RD && !spi_transfer) begin
                //We got our data in buf_dout, now tell axi logic its valid and wait for more ore done
                buf_valid <= 1;
                spi_state <= SPI_STATE_DATA_RS; //go to wait state (setup state)
                
            end
            
            if(!spi_cmd_start) begin
                    spi_state <= SPI_STATE_IDLE;
                    spi_cs <= 0;
            end
        end
        
        if(spi_cnt == 0)
            spi_transfer <= 0;
    end
    reg sck_en = 0;
    always @(negedge axi_clk) begin
        if(reset) begin
            spi_cnt <= 16;
        end else begin
            
            if(spi_transfer) begin
                sck_en <= 1;
                if(!spi_cnt[0]) begin
                    spi_mosi <= spi_out[spi_cnt[4:1]-1];
                    
                    
                    spi_in[0] <= spi_miso;
                    spi_in[7:1] <= spi_in[6:0];
                end
                spi_cnt <= spi_cnt - 1; 
            end
            if(spi_cnt == 0) begin
                //spi_transfer <= 0;
                sck_en <= 0;
                spi_cnt <= 16;
            end 
        end
    end
    always @(negedge axi_clk) if(sck_en) spi_sck <= ~spi_sck;
    
endmodule
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/24/2026 04:18:46 PM
// Design Name: 
// Module Name: Block_Testbench
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


module Block_Testbench(

    );
    
    reg clk = 0;
    reg rst_n = 0;
    
    wire [7:0]led;
    
    wire [13:0]ddr3_addr;
    wire [2:0]ddr3_ba;
    wire ddr3_cas_n;
    wire [0:0]ddr3_ck_n;
    wire [0:0]ddr3_ck_p;
    wire [0:0]ddr3_cke;
    wire [0:0]ddr3_cs_n;
    wire [1:0]ddr3_dm;
    wire [15:0]ddr3_dq;
    wire [1:0]ddr3_dqs_n;
    wire [1:0]ddr3_dqs_p;
    wire [0:0]ddr3_odt;
    wire ddr3_ras_n;
    wire ddr3_reset_n;
    wire ddr3_we_n;
    
    wire spi_flash_ce_n;
    wire spi_miso;
    wire spi_mosi;
    wire spi_sck;
    
    wire uart_tx;
    wire uart_rx;
    
    Block_top_wrapper top(
        .clk(clk),
        .rst_n(rst_n),
        
        //.led(led),
        //DDR3
        .ddr3_addr(ddr3_addr),
        .ddr3_ba(ddr3_ba),
        .ddr3_cas_n(ddr3_cas_n),
        .ddr3_ck_n(ddr3_ck_n),
        .ddr3_ck_p(ddr3_ck_p),
        .ddr3_cke(ddr3_cke),
        .ddr3_cs_n(ddr3_cs_n),
        .ddr3_dm(ddr3_dm),
        .ddr3_dq(ddr3_dq),
        .ddr3_dqs_n(ddr3_dqs_n),
        .ddr3_dqs_p(ddr3_dqs_p),
        .ddr3_odt(ddr3_odt),
        .ddr3_ras_n(ddr3_ras_n),
        .ddr3_reset_n(ddr3_reset_n),
        .ddr3_we_n(ddr3_we_n),
        
        //SPI
        .spi_flash_ce_n(spi_flash_ce_n),
        .spi_miso(spi_miso),
        .spi_mosi(spi_mosi),
        .spi_sck(spi_sck),
        
        //UART
        .uart_tx(uart_tx),
        .uart_rx(uart_rx)
    );
    
    
    ddr3_model u_mem0 (
    .rst_n   (ddr3_reset_n),
    .ck      (ddr3_ck_p),
    .ck_n    (ddr3_ck_n),
    .cke     (ddr3_cke),
    .cs_n    (ddr3_cs_n),
    .ras_n   (ddr3_ras_n),
    .cas_n   (ddr3_cas_n),
    .we_n    (ddr3_we_n),
    .ba      (ddr3_ba),
    .addr    (ddr3_addr),
    .dm_tdqs (ddr3_dm),
    .dq      (ddr3_dq),
    .dqs     (ddr3_dqs_p),
    .dqs_n   (ddr3_dqs_n),
    .odt     (ddr3_odt),
    .tdqs_n  ()
);
    
    
    
//We are in a simulation, we simulate SPI IC
FLASH_SIM flash_sim_inst (
    .SCLK(spi_sck),
    .CS(spi_flash_ce_n),
    .SI(spi_mosi),
    .SO(spi_miso), 
    .WP(1'b0), 
    .HOLD(1'b1)
);

    // 100 MHz clock
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    
    // active-low reset
    initial begin
        rst_n = 0;
        #10000; //10uS for FLASH
        rst_n = 1;
    end
endmodule

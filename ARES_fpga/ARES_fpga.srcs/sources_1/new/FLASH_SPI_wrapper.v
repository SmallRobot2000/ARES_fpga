`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/25/2026 09:03:49 PM
// Design Name: 
// Module Name: FLASH_SPI_wrapper
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


module FLASH_SPI_wrapper(
    //AR
    (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, PROTOCOL AXI4LITE, ADDR_WIDTH 32, DATA_WIDTH 32" *)
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *)
    input           s_axi_arvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *)
    output          s_axi_arready,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *)
    input   [31:0]  s_axi_araddr,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *)
    input   [2:0]   s_axi_arprot,
    
    //R
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *)
    output            s_axi_rvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *)
    input             s_axi_rready,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *)
    output     [31:0] s_axi_rdata,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *)
    output     [1:0]  s_axi_rresp,
    
    
    //SPI
    input           spi_miso,
    output          spi_mosi,
    output          spi_sck,
    output          spi_ce_n,
    
    (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK CLK" *)
    (* X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET s_axi_areset" *)
    input           s_axi_clk,
    
    (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESET RST" *)
    (* X_INTERFACE_PARAMETER = "POLARITY ACTIVE_HIGH" *)
    input           reset
    );
    
    
    FLASH_SPI flash_inst (
//AXI

    .s_axi_ar_valid(s_axi_arvalid),
    .s_axi_ar_ready(s_axi_arready),
    .s_axi_ar_addr(s_axi_araddr),
    

    .s_axi_r_valid(s_axi_rvalid),
    .s_axi_r_ready(s_axi_rready),
    .s_axi_r_dout(s_axi_rdata),
    .s_axi_r_resp(s_axi_rresp),
    
    
//SPI
    .spi_miso(spi_miso),
    .spi_mosi(spi_mosi),
    .spi_sck(spi_sck),
    .spi_ce_n(spi_ce_n),

    .axi_clk(s_axi_clk),
    .reset(reset)
    );
    
    

endmodule

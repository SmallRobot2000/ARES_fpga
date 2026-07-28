`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/23/2026 09:52:22 PM
// Design Name: 
// Module Name: DDR3_MIG_wrapper
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


/******************************************************************************

   The MIT License (MIT)

   Copyright (c) 2026 Alchitry

   Permission is hereby granted, free of charge, to any person obtaining a copy
   of this software and associated documentation files (the "Software"), to deal
   in the Software without restriction, including without limitation the rights
   to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
   copies of the Software, and to permit persons to whom the Software is
   furnished to do so, subject to the following conditions:

   The above copyright notice and this permission notice shall be included in
   all copies or substantial portions of the Software.

   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
   IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
   FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
   AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
   LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
   OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
   THE SOFTWARE.

   *****************************************************************************

   This is a wrapper for the ddr MIG from Xilinx. It wraps the interface into two
   structs to make assignments easier and interfaces cleaner.

   It requires that you have a MIG generated in your project with the name
   mig_7series_0. This can be created by going to Project->Add Memory Controller.
*/
/*
    Translate3d and changed to verilog by Lovro Lopatic
*/

module DDR3_MIG_wrapper(
    
    input  [27:0]   addr,
    input  [2:0]    cmd,
    input           enable,
    input  [127:0]  wr_data,
    input           wr_enable,
    input  [15:0]   wr_mask,
    
    output [127:0]  rd_data,
    output          rd_valid,
    output          rdy,
    output          wr_rdy,
    
    
    //DDR3 signlas
    inout  [15:0]   ddr3_dq,
    inout  [1:0]    ddr3_dqs_n,
    inout  [1:0]    ddr3_dqs_p,
    output [13:0]   ddr3_addr,
    output [2:0]    ddr3_ba,
    output          ddr3_ras_n,
    output          ddr3_cas_n,
    output          ddr3_we_n,
    output          ddr3_reset_n,
    output          ddr3_ck_p,
    output          ddr3_ck_n,
    output          ddr3_cke,
    output          ddr3_cs_n,
    output [1:0]    ddr3_dm,
    output          ddr3_odt,
    // Inputs
    // Single-ended system clock
    input           sys_clk,
    // Single-ended iodelayctrl clk (reference clock)
    (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK_REF, FREQ_HZ 200000000" *)
    (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK_REF CLK" *)
    input           clk_ref,
    // user interface signals
    output          ui_clk,
    output          sync_rst,
    input           sys_rst
    );
    
DDR3_MIG mig (
    .ddr3_dq(ddr3_dq),
    .ddr3_dqs_n(ddr3_dqs_n),
    .ddr3_dqs_p(ddr3_dqs_p),
    
    .ddr3_addr(ddr3_addr),
    .ddr3_ba(ddr3_ba),
    .ddr3_ras_n(ddr3_ras_n),
    .ddr3_cas_n(ddr3_cas_n),
    .ddr3_we_n(ddr3_we_n),
    .ddr3_reset_n(ddr3_reset_n),
    .ddr3_ck_p(ddr3_ck_p),
    .ddr3_ck_n(ddr3_ck_n),
    .ddr3_cke(ddr3_cke),
    .ddr3_cs_n(ddr3_cs_n),
    .ddr3_dm(ddr3_dm),
    .ddr3_odt(ddr3_odt),
    
    .app_sr_req(1'b0),
    .app_ref_req(1'b0),
    .app_zq_req(1'b0),
    
    .app_wdf_data(wr_data),
    .app_wdf_end(wr_enable),
    .app_wdf_wren(wr_enable),
    .app_wdf_mask(wr_mask),
    .app_cmd(cmd),
    .app_en(enable),
    .app_addr(addr),
    
    .app_rd_data(rd_data),
    .app_rd_data_valid(rd_valid),
    .app_rdy(rdy),
    .app_wdf_rdy(wr_rdy),

    .sys_clk_i(sys_clk),
    .clk_ref_i(clk_ref),
    .sys_rst(sys_rst),

    .ui_clk_sync_rst(sync_rst ),
    .ui_clk(ui_clk )
);
    
    

        
 
endmodule

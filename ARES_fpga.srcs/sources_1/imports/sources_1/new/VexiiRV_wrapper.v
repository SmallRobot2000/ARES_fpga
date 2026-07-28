`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/23/2026 01:58:19 PM
// Design Name: 
// Module Name: VexiiRV_wrapper
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


module VexiiRV_wrapper(
    //Clock and reset
    (* X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF M_AXI_D:M_AXI_I, ASSOCIATED_RESET reset" *)
    (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *)
    input          clk,
    
    (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST RST" *)
    input          reset,

    //Interrupts
    input   [63:0] cpu_rdtime,
    input          cpu_int_timer,
    input          cpu_int_soft,
    input          cpu_int_ext,

    //Data BUS
    (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_D, PROTOCOL AXI4, DATA_WIDTH 32, FREQ_HZ 100000000" *)
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D AWVALID" *)
    output         cpu_axi_d_awvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D AWREADY" *)
    input          cpu_axi_d_awready,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D AWADDR" *)
    output  [31:0] cpu_axi_d_awaddr,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D AWID" *)
    output  [0:0]  cpu_axi_d_awid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D AWLEN" *)
    output  [7:0]  cpu_axi_d_awlen,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D AWSIZE" *)
    output  [2:0]  cpu_axi_d_awsize,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D AWBURST" *)
    output  [1:0]  cpu_axi_d_awburst,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D AWCACHE" *)
    output  [3:0]  cpu_axi_d_awcache,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D AWPROT" *)
    output  [2:0]  cpu_axi_d_awprot,

    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D WVALID" *)
    output         cpu_axi_d_wvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D WREADY" *)
    input          cpu_axi_d_wready,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D WDATA" *)
    output  [31:0] cpu_axi_d_wdata,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D WSTRB" *)
    output  [3:0]  cpu_axi_d_wstrb,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D WLAST" *)
    output         cpu_axi_d_wlast,
    
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D BVALID" *)
    input          cpu_axi_d_bvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D BREADY" *)
    output         cpu_axi_d_bready,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D BID" *)
    input   [0:0]  cpu_axi_d_bid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D BRESP" *)
    input   [1:0]  cpu_axi_d_bresp,
    
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D ARVALID" *)
    output         cpu_axi_d_arvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D ARREADY" *)
    input          cpu_axi_d_arready,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D ARADDR" *)
    output  [31:0] cpu_axi_d_araddr,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D ARID" *)
    output  [0:0]  cpu_axi_d_arid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D ARLEN" *)
    output  [7:0]  cpu_axi_d_arlen,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D ARSIZE" *)
    output  [2:0]  cpu_axi_d_arsize,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D ARBURST" *)
    output  [1:0]  cpu_axi_d_arburst,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D ARCACHE" *)
    output  [3:0]  cpu_axi_d_arcache,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D ARPROT" *)
    output  [2:0]  cpu_axi_d_arprot,

    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D RVALID" *)
    input          cpu_axi_d_rvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D RREADY" *)
    output         cpu_axi_d_rready,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D RDATA" *)
    input   [31:0] cpu_axi_d_rdata,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D RID" *)
    input   [0:0]  cpu_axi_d_rid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D RRESP" *)
    input   [1:0]  cpu_axi_d_rresp,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_D RLAST" *)
    input          cpu_axi_d_rlast,

    //Instruction BUS
    (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_I, PROTOCOL AXI4, DATA_WIDTH 32, FREQ_HZ 100000000" *)
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_I ARVALID" *)
    output         cpu_axi_i_ar_valid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_I ARREADY" *)
    input          cpu_axi_i_ar_ready,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_I ARADDR" *)
    output  [31:0] cpu_axi_i_ar_addr,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_I ARID" *)
    output         cpu_axi_i_ar_id,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_I ARLEN" *)
    output  [7:0]  cpu_axi_i_ar_len,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_I ARSIZE" *)
    output  [2:0]  cpu_axi_i_ar_size,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_I ARBURST" *)
    output  [1:0]  cpu_axi_i_ar_burst,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_I ARCACHE" *)
    output  [3:0]  cpu_axi_i_ar_cache,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_I ARPROT" *)
    output  [2:0]  cpu_axi_i_ar_prot,

    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_I RVALID" *)
    input          cpu_axi_i_r_valid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_I RREADY" *)
    output         cpu_axi_i_r_ready,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_I RDATA" *)
    input   [31:0] cpu_axi_i_r_data,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_I RID" *)
    input          cpu_axi_i_r_id,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_I RRESP" *)
    input   [1:0]  cpu_axi_i_r_resp,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_I RLAST" *)
    input          cpu_axi_i_r_last,

    //IO BUS (AXI converted)
    
    output         cpu_axi_io_cmd_valid,
    input          cpu_axi_io_cmd_ready,
    output         cpu_axi_io_cmd_write,
    output  [31:0] cpu_axi_io_cmd_addr,
    output  [31:0] cpu_axi_io_cmd_dout,
    output  [1:0]  cpu_axi_io_cmd_size,
    output  [3:0]  cpu_axi_io_cmd_mask,
    output         cpu_axi_io_cmd_io,
    output         cpu_axi_io_cmd_fromHart,
    output  [15:0] cpu_axi_io_cmd_uopId,

    input          cpu_axi_io_rsp_valid,
    input          cpu_axi_io_rsp_error,
    input   [31:0] cpu_axi_io_rsp_din
    
    );
    
//CPU wrapper
//interrupts
/*
wire [63:0]cpu_rdtime;
wire cpu_int_timer = 0;
wire cpu_int_soft = 0;
wire cpu_int_ext = 0;

//Data bus AXI

wire        clk;
wire        reset;

wire        cpu_axi_d_awvalid;
wire        cpu_axi_d_awready;
wire [31:0] cpu_axi_d_awaddr;
wire        cpu_axi_d_awid;
wire [7:0]  cpu_axi_d_awlen;
wire [2:0]  cpu_axi_d_awsize;
wire [1:0]  cpu_axi_d_awburst;
wire [3:0]  cpu_axi_d_awcache;
wire [2:0]  cpu_axi_d_awprot;


wire        cpu_axi_d_wvalid;
wire        cpu_axi_d_wready;
wire [31:0] cpu_axi_d_wdout;
wire [3:0]  cpu_axi_d_wstrb;
wire        cpu_axi_d_wlast;

wire        cpu_axi_d_bvalid;
wire        cpu_axi_d_bready;
wire        cpu_axi_d_bid;
wire [1:0]  cpu_axi_d_bresp;

wire        cpu_axi_d_arvalid;
wire        cpu_axi_d_arready;
wire [31:0] cpu_axi_d_araddr;
wire        cpu_axi_d_arid;
wire [7:0]  cpu_axi_d_arlen;
wire [2:0]  cpu_axi_d_arsize;
wire [1:0]  cpu_axi_d_arburst;
wire [3:0]  cpu_axi_d_arcache;
wire [2:0]  cpu_axi_d_arprot;

wire        cpu_axi_d_rvalid;
wire        cpu_axi_d_rready;
wire [31:0] cpu_axi_d_rdin;
wire        cpu_axi_d_rid;
wire [1:0]  cpu_axi_d_rresp;
wire        cpu_axi_d_rlast;

//Instruction(Fetch) bus AXI
wire        cpu_axi_i_ar_valid;
wire        cpu_axi_i_ar_ready;
wire [31:0] cpu_axi_i_ar_addr;
wire        cpu_axi_i_ar_id;
wire [7:0]  cpu_axi_i_ar_len;
wire [2:0]  cpu_axi_i_ar_size;
wire [1:0]  cpu_axi_i_ar_burst;
wire [3:0]  cpu_axi_i_ar_cache;
wire [2:0]  cpu_axi_i_ar_prot;

wire        cpu_axi_i_r_valid;
wire        cpu_axi_i_r_ready;
wire [31:0] cpu_axi_i_r_data;
wire        cpu_axi_i_r_id;
wire [1:0]  cpu_axi_i_r_resp;
wire        cpu_axi_i_r_last;

//IO bus non cached
wire        cpu_axi_io_cmd_valid;
wire        cpu_axi_io_cmd_ready;
wire        cpu_axi_io_cmd_write;
wire [31:0] cpu_axi_io_cmd_addr;
wire [31:0] cpu_axi_io_cmd_dout;
wire [1:0]  cpu_axi_io_cmd_size;
wire [3:0]  cpu_axi_io_cmd_mask;
wire        cpu_axi_io_cmd_io;
wire        cpu_axi_io_cmd_fromHart;
wire [15:0] cpu_axi_io_cmd_uopId;

wire        cpu_axi_io_rsp_valid;
wire        cpu_axi_io_rsp_error;
wire [31:0] cpu_axi_io_rsp_din;


//some standard signals defined somware else
//cpu_clk;
//cpu_reset;
*/

//IO BUS
/*
  wire          LsuPlugin_logic_bus_cmd_valid,
  wire          LsuPlugin_logic_bus_cmd_ready,
  wire          LsuPlugin_logic_bus_cmd_payload_write,
  wire [31:0]   LsuPlugin_logic_bus_cmd_payload_address,
  wire [31:0]   LsuPlugin_logic_bus_cmd_payload_data,
  wire [1:0]    LsuPlugin_logic_bus_cmd_payload_size,
  wire [3:0]    LsuPlugin_logic_bus_cmd_payload_mask,
  wire          LsuPlugin_logic_bus_cmd_payload_io,
  wire          LsuPlugin_logic_bus_cmd_payload_fromHart,
  wire [15:0]   LsuPlugin_logic_bus_cmd_payload_uopId,
  wire          LsuPlugin_logic_bus_rsp_valid,
  wire          LsuPlugin_logic_bus_rsp_payload_error,
  wire [31:0]   LsuPlugin_logic_bus_rsp_payload_data,
  */
//IO BUS (AXI conv)
  
//CPU
VexiiRiscv CPU(
   .PrivilegedPlugin_logic_rdtime(cpu_rdtime),                       //input    wire [63:0]   
   .PrivilegedPlugin_logic_harts_0_int_m_timer(cpu_int_timer),          //input    wire          
   .PrivilegedPlugin_logic_harts_0_int_m_software(cpu_int_soft),       //input    wire          
   .PrivilegedPlugin_logic_harts_0_int_m_external(cpu_int_ext),       //input    wire          
   .LsuL1Axi4Plugin_logic_axi_aw_valid(cpu_axi_d_awvalid),                  //output   wire          
   .LsuL1Axi4Plugin_logic_axi_aw_ready(cpu_axi_d_awready),                  //input    wire          
   .LsuL1Axi4Plugin_logic_axi_aw_payload_addr(cpu_axi_d_awaddr),           //output   wire [31:0]   
   .LsuL1Axi4Plugin_logic_axi_aw_payload_id(cpu_axi_d_awid),             //output   wire [0:0]    
   .LsuL1Axi4Plugin_logic_axi_aw_payload_len(cpu_axi_d_awlen),            //output   wire [7:0]    
   .LsuL1Axi4Plugin_logic_axi_aw_payload_size(cpu_axi_d_awsize),           //output   wire [2:0]    
   .LsuL1Axi4Plugin_logic_axi_aw_payload_burst(cpu_axi_d_awburst),          //output   wire [1:0]    
   .LsuL1Axi4Plugin_logic_axi_aw_payload_cache(cpu_axi_d_awcache),          //output   wire [3:0]    
   .LsuL1Axi4Plugin_logic_axi_aw_payload_prot(cpu_axi_d_awprot),           //output   wire [2:0]    
   .LsuL1Axi4Plugin_logic_axi_w_valid(cpu_axi_d_wvalid),                   //output   wire          
   .LsuL1Axi4Plugin_logic_axi_w_ready(cpu_axi_d_wready),                   //input    wire          
   .LsuL1Axi4Plugin_logic_axi_w_payload_data(cpu_axi_d_wdata),            //output   wire [31:0]   
   .LsuL1Axi4Plugin_logic_axi_w_payload_strb(cpu_axi_d_wstrb),            //output   wire [3:0]    
   .LsuL1Axi4Plugin_logic_axi_w_payload_last(cpu_axi_d_wlast),            //output   wire          
   .LsuL1Axi4Plugin_logic_axi_b_valid(cpu_axi_d_bvalid),                   //input    wire          
   .LsuL1Axi4Plugin_logic_axi_b_ready(cpu_axi_d_bready),                   //output   wire          
   .LsuL1Axi4Plugin_logic_axi_b_payload_id(cpu_axi_d_bid),              //input    wire [0:0]    
   .LsuL1Axi4Plugin_logic_axi_b_payload_resp(cpu_axi_d_bresp),            //input    wire [1:0]    
   .LsuL1Axi4Plugin_logic_axi_ar_valid(cpu_axi_d_arvalid),                  //output   wire          
   .LsuL1Axi4Plugin_logic_axi_ar_ready(cpu_axi_d_arready),                  //input    wire          
   .LsuL1Axi4Plugin_logic_axi_ar_payload_addr(cpu_axi_d_araddr),           //output   wire [31:0]   
   .LsuL1Axi4Plugin_logic_axi_ar_payload_id(cpu_axi_d_arid),             //output   wire [0:0]    
   .LsuL1Axi4Plugin_logic_axi_ar_payload_len(cpu_axi_d_arlen),            //output   wire [7:0]    
   .LsuL1Axi4Plugin_logic_axi_ar_payload_size(cpu_axi_d_arsize),           //output   wire [2:0]    
   .LsuL1Axi4Plugin_logic_axi_ar_payload_burst(cpu_axi_d_arburst),          //output   wire [1:0]    
   .LsuL1Axi4Plugin_logic_axi_ar_payload_cache(cpu_axi_d_arcache),          //output   wire [3:0]    
   .LsuL1Axi4Plugin_logic_axi_ar_payload_prot(cpu_axi_d_arprot),           //output   wire [2:0]    
   .LsuL1Axi4Plugin_logic_axi_r_valid(cpu_axi_d_rvalid),                   //input    wire          
   .LsuL1Axi4Plugin_logic_axi_r_ready(cpu_axi_d_rready),                   //output   wire          
   .LsuL1Axi4Plugin_logic_axi_r_payload_data(cpu_axi_d_rdata),            //input    wire [31:0]   
   .LsuL1Axi4Plugin_logic_axi_r_payload_id(cpu_axi_d_rid),              //input    wire [0:0]    
   .LsuL1Axi4Plugin_logic_axi_r_payload_resp(cpu_axi_d_rresp),            //input    wire [1:0]    
   .LsuL1Axi4Plugin_logic_axi_r_payload_last(cpu_axi_d_rlast),            //input    wire          
   .FetchL1Axi4Plugin_logic_axi_ar_valid(cpu_axi_i_ar_valid),                //output   wire          
   .FetchL1Axi4Plugin_logic_axi_ar_ready(cpu_axi_i_ar_ready),                //input    wire          
   .FetchL1Axi4Plugin_logic_axi_ar_payload_addr(cpu_axi_i_ar_addr),         //output   wire [31:0]   
   .FetchL1Axi4Plugin_logic_axi_ar_payload_id(cpu_axi_i_ar_id),           //output   wire [0:0]    
   .FetchL1Axi4Plugin_logic_axi_ar_payload_len(cpu_axi_i_ar_len),          //output   wire [7:0]    
   .FetchL1Axi4Plugin_logic_axi_ar_payload_size(cpu_axi_i_ar_size),         //output   wire [2:0]    
   .FetchL1Axi4Plugin_logic_axi_ar_payload_burst(cpu_axi_i_ar_burst),        //output   wire [1:0]    
   .FetchL1Axi4Plugin_logic_axi_ar_payload_cache(cpu_axi_i_ar_cache),        //output   wire [3:0]    
   .FetchL1Axi4Plugin_logic_axi_ar_payload_prot(cpu_axi_i_ar_prot),         //output   wire [2:0]    
   .FetchL1Axi4Plugin_logic_axi_r_valid(cpu_axi_i_r_valid),                 //input    wire          
   .FetchL1Axi4Plugin_logic_axi_r_ready(cpu_axi_i_r_ready),                 //output   wire          
   .FetchL1Axi4Plugin_logic_axi_r_payload_data(cpu_axi_i_r_data),          //input    wire [31:0]   
   .FetchL1Axi4Plugin_logic_axi_r_payload_id(cpu_axi_i_r_id),            //input    wire [0:0]    
   .FetchL1Axi4Plugin_logic_axi_r_payload_resp(cpu_axi_i_r_resp),          //input    wire [1:0]    
   .FetchL1Axi4Plugin_logic_axi_r_payload_last(cpu_axi_i_r_last),          //input    wire          
   .LsuPlugin_logic_bus_cmd_valid(cpu_axi_io_cmd_valid),                       //output   wire          
   .LsuPlugin_logic_bus_cmd_ready(cpu_axi_io_cmd_ready),                       //input    wire          
   .LsuPlugin_logic_bus_cmd_payload_write(cpu_axi_io_cmd_write),               //output   wire          
   .LsuPlugin_logic_bus_cmd_payload_address(cpu_axi_io_cmd_addr),             //output   wire [31:0]   
   .LsuPlugin_logic_bus_cmd_payload_data(cpu_axi_io_cmd_dout),                //output   wire [31:0]   
   .LsuPlugin_logic_bus_cmd_payload_size(cpu_axi_io_cmd_size),                //output   wire [1:0]    
   .LsuPlugin_logic_bus_cmd_payload_mask(cpu_axi_io_cmd_mask),                //output   wire [3:0]    
   .LsuPlugin_logic_bus_cmd_payload_io(cpu_axi_io_cmd_io),                  //output   wire          
   .LsuPlugin_logic_bus_cmd_payload_fromHart(cpu_axi_io_cmd_fromHart),            //output   wire          
   .LsuPlugin_logic_bus_cmd_payload_uopId(cpu_axi_io_cmd_uopId),               //output   wire [15:0]   
   .LsuPlugin_logic_bus_rsp_valid(cpu_axi_io_rsp_valid),                       //input    wire          
   .LsuPlugin_logic_bus_rsp_payload_error(cpu_axi_io_rsp_error),               //input    wire          
   .LsuPlugin_logic_bus_rsp_payload_data(cpu_axi_io_rsp_din),                //input    wire [31:0]   
   .clk(clk),                                                 //input    wire          
   .reset(reset)                                                //input    wire
    );
   
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/26/2026 03:13:34 PM
// Design Name: 
// Module Name: CPU_IO_converter
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


module CPU_IO_converter(
//AXI4 lite master interface 
  m00_axi_awaddr,
  m00_axi_awprot,
  m00_axi_awvalid,
  m00_axi_awready,
  m00_axi_wdata,
  m00_axi_wstrb,
  m00_axi_wvalid,
  m00_axi_wready,
  m00_axi_bresp,
  m00_axi_bvalid,
  m00_axi_bready,
  m00_axi_araddr,
  m00_axi_arprot,
  m00_axi_arvalid,
  m00_axi_arready,
  m00_axi_rdata,
  m00_axi_rresp,
  m00_axi_rvalid,
  m00_axi_rready,
  m00_axi_aclk,
  m00_axi_aresetn,
    
//CPU IO interface
  cpu_io_cmd_valid,
  cpu_io_cmd_ready,
  cpu_io_cmd_write,
  cpu_io_cmd_addr,
  cpu_io_cmd_dout,
  cpu_io_cmd_size,
  cpu_io_cmd_mask,
  cpu_io_cmd_io,
  cpu_io_cmd_fromHart,
  cpu_io_cmd_uopId,

  cpu_io_rsp_valid,
  cpu_io_rsp_error,
  cpu_io_rsp_din
);
    //AXI4 lite stuff
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR" *)
    (* X_INTERFACE_MODE = "master" *)
    (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BIT\
    S_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
    output reg [31 : 0] m00_axi_awaddr;
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWPROT" *)
    output wire [2 : 0] m00_axi_awprot;
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWVALID" *)
    output reg m00_axi_awvalid;
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWREADY" *)
    input wire m00_axi_awready;
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WDATA" *)
    output reg [31 : 0] m00_axi_wdata;
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WSTRB" *)
    output reg [3 : 0] m00_axi_wstrb;
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WVALID" *)
    output reg m00_axi_wvalid;
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WREADY" *)
    input wire m00_axi_wready;
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BRESP" *)
    input wire [1 : 0] m00_axi_bresp;
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BVALID" *)
    input wire m00_axi_bvalid;
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BREADY" *)
    output reg m00_axi_bready;
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR" *)
    output reg [31 : 0] m00_axi_araddr;
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARPROT" *)
    output wire [2 : 0] m00_axi_arprot;
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARVALID" *)
    output reg m00_axi_arvalid;
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARREADY" *)
    input wire m00_axi_arready;
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RDATA" *)
    input wire [31 : 0] m00_axi_rdata;
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RRESP" *)
    input wire [1 : 0] m00_axi_rresp;
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RVALID" *)
    input wire m00_axi_rvalid;
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RREADY" *)
    output reg m00_axi_rready;
    (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 M00_AXI_CLK CLK" *)
    (* X_INTERFACE_MODE = "slave" *)
    (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI_CLK, ASSOCIATED_BUSIF M00_AXI, ASSOCIATED_RESET m00_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *)
    input wire m00_axi_aclk;
    (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 M00_AXI_RST RST" *)
    (* X_INTERFACE_MODE = "slave" *)
    (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
    input wire m00_axi_aresetn;
    
/*
PROT[0]
0 = normal access
1 = privileged access

PROT[1]
0 = secure
1 = non-secure

PROT[2]
0 = data access
1 = instruction access
*/
    assign m00_axi_awprot = 3'b010;
    assign m00_axi_arprot = 3'b010;
    
    input  wire         cpu_io_cmd_valid;
    output reg          cpu_io_cmd_ready;
    input  wire         cpu_io_cmd_write;
    input  wire  [31:0] cpu_io_cmd_addr;
    input  wire  [31:0] cpu_io_cmd_dout;
    input  wire  [1:0]  cpu_io_cmd_size;
    input  wire  [3:0]  cpu_io_cmd_mask;
    input  wire         cpu_io_cmd_io;
    input  wire         cpu_io_cmd_fromHart;
    input  wire  [15:0] cpu_io_cmd_uopId;

    output reg         cpu_io_rsp_valid;
    output wire        cpu_io_rsp_error;
    output reg  [31:0] cpu_io_rsp_din;
    
    assign cpu_io_rsp_error = 1'b0;
    
    
    localparam STATE_IDLE   = 16'b1 << 0;
    localparam STATE_AW     = 16'b1 << 1;
    localparam STATE_W      = 16'b1 << 2;
    localparam STATE_B      = 16'b1 << 3;
    localparam STATE_AR     = 16'b1 << 4;
    localparam STATE_R      = 16'b1 << 5;
    reg [15:0] state = STATE_IDLE;
    always @(posedge m00_axi_aclk or negedge m00_axi_aresetn) begin
        if(!m00_axi_aresetn) begin
            //AXI reset
            m00_axi_awaddr <= 32'b0;
            m00_axi_awvalid <= 1'b0;
            m00_axi_wdata <= 32'b0;
            m00_axi_wstrb <= 4'b0;
            m00_axi_wvalid <= 1'b0;
            m00_axi_bready <= 1'b0;
            m00_axi_araddr <= 32'b0;
            m00_axi_arvalid <= 1'b0;
            m00_axi_rready <= 1'b0;
            //CPU IO reset
            cpu_io_cmd_ready <= 1'b0;
            cpu_io_rsp_valid <= 1'b0;
            cpu_io_rsp_din <= 32'b0;
            
            state <= STATE_IDLE;
            
        end else begin
            //Always be deactive 


            cpu_io_cmd_ready <= 1'b0;
            cpu_io_rsp_valid <= 1'b0;

            
            case(state)
                STATE_IDLE: begin
                    cpu_io_cmd_ready <= 1'b1;
                    cpu_io_rsp_valid <= 1'b0;
                    m00_axi_awvalid <= 1'b0;
                    m00_axi_wvalid <= 1'b0;
                    m00_axi_arvalid <= 1'b0;
                    m00_axi_rready <= 1'b0;
                    if(cpu_io_cmd_valid) begin
                        //CPU has a command for us
                        if(cpu_io_cmd_write) begin
                            //Write
                            m00_axi_awaddr <= cpu_io_cmd_addr;
                            m00_axi_awvalid <= 1'b1;    
                            state <= STATE_AW;
                        end else begin
                            //Read
                            m00_axi_araddr <= cpu_io_cmd_addr;
                            m00_axi_arvalid <= 1'b1;
                                
                            state <= STATE_AR;
                        end
                        
                    end
                end
                STATE_AW: begin
                    if(m00_axi_awready) begin
                        m00_axi_awvalid <= 1'b0;
                        
                        m00_axi_wstrb <= cpu_io_cmd_mask;
                        m00_axi_wdata <= cpu_io_cmd_dout;
                        m00_axi_wvalid <= 1'b1;
                        state <= STATE_W;
                    end
                end
                STATE_W: begin
                    if(m00_axi_wready) begin
                        m00_axi_wvalid <= 1'b0;
                        m00_axi_bready <= 1'b1;
                        state <= STATE_B;
                    end
                end
                STATE_B: begin
                    if(m00_axi_bvalid) begin
                         m00_axi_bready <= 1'b0;
                         cpu_io_rsp_valid <= 1'b1;
                         //Dont care
                         state <= STATE_IDLE;
                    end
                end
                STATE_AR: begin
                    if(m00_axi_arready) begin
                        m00_axi_arvalid <= 1'b0;
                        m00_axi_rready <= 1'b1;
                        state <= STATE_R;
                    end
                end
                STATE_R: begin
                    if(m00_axi_rvalid) begin
                        m00_axi_rready <= 1'b0;
                        cpu_io_rsp_din <= m00_axi_rdata;
                        cpu_io_rsp_valid <= 1'b1;
                        state <= STATE_IDLE;
                    end
                end
            endcase
        end
    end
endmodule
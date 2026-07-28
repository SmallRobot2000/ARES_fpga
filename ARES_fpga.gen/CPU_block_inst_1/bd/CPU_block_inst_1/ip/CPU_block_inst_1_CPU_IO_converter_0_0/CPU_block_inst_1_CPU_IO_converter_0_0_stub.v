// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
// Date        : Mon Jul 27 16:30:13 2026
// Host        : lovroRadiona running 64-bit Ubuntu 24.04.4 LTS
// Command     : write_verilog -force -mode synth_stub {/home/lovro/Documents/Alchistry_Labs/DDR3 test/cores/Alchitry
//               AMIX_RISCV/Alchitry
//               AMIX_RISCV.gen/sources_1/bd/Block_top/bd/CPU_block_inst_1/ip/CPU_block_inst_1_CPU_IO_converter_0_0/CPU_block_inst_1_CPU_IO_converter_0_0_stub.v}
// Design      : CPU_block_inst_1_CPU_IO_converter_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tftg256-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "CPU_block_inst_1_CPU_IO_converter_0_0,CPU_IO_converter,{}" *) (* CORE_GENERATION_INFO = "CPU_block_inst_1_CPU_IO_converter_0_0,CPU_IO_converter,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=CPU_IO_converter,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "CPU_IO_converter,Vivado 2025.2" *) 
module CPU_block_inst_1_CPU_IO_converter_0_0(m00_axi_awaddr, m00_axi_awprot, 
  m00_axi_awvalid, m00_axi_awready, m00_axi_wdata, m00_axi_wstrb, m00_axi_wvalid, 
  m00_axi_wready, m00_axi_bresp, m00_axi_bvalid, m00_axi_bready, m00_axi_araddr, 
  m00_axi_arprot, m00_axi_arvalid, m00_axi_arready, m00_axi_rdata, m00_axi_rresp, 
  m00_axi_rvalid, m00_axi_rready, m00_axi_aclk, m00_axi_aresetn, cpu_io_cmd_valid, 
  cpu_io_cmd_ready, cpu_io_cmd_write, cpu_io_cmd_addr, cpu_io_cmd_dout, cpu_io_cmd_size, 
  cpu_io_cmd_mask, cpu_io_cmd_io, cpu_io_cmd_fromHart, cpu_io_cmd_uopId, cpu_io_rsp_valid, 
  cpu_io_rsp_error, cpu_io_rsp_din)
/* synthesis syn_black_box black_box_pad_pin="m00_axi_awaddr[31:0],m00_axi_awprot[2:0],m00_axi_awvalid,m00_axi_awready,m00_axi_wdata[31:0],m00_axi_wstrb[3:0],m00_axi_wvalid,m00_axi_wready,m00_axi_bresp[1:0],m00_axi_bvalid,m00_axi_bready,m00_axi_araddr[31:0],m00_axi_arprot[2:0],m00_axi_arvalid,m00_axi_arready,m00_axi_rdata[31:0],m00_axi_rresp[1:0],m00_axi_rvalid,m00_axi_rready,m00_axi_aresetn,cpu_io_cmd_valid,cpu_io_cmd_ready,cpu_io_cmd_write,cpu_io_cmd_addr[31:0],cpu_io_cmd_dout[31:0],cpu_io_cmd_size[1:0],cpu_io_cmd_mask[3:0],cpu_io_cmd_io,cpu_io_cmd_fromHart,cpu_io_cmd_uopId[15:0],cpu_io_rsp_valid,cpu_io_rsp_error,cpu_io_rsp_din[31:0]" */
/* synthesis syn_force_seq_prim="m00_axi_aclk" */;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI, WIZ_DATA_WIDTH 32, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BIT S_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, CLK_DOMAIN Block_top_mig_axi_wrapper_0_0_ui_clk, RUSER_BITS_PER_BYTE 0" *) output [31:0]m00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWPROT" *) output [2:0]m00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWVALID" *) output m00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWREADY" *) input m00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WDATA" *) output [31:0]m00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WSTRB" *) output [3:0]m00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WVALID" *) output m00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WREADY" *) input m00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BRESP" *) input [1:0]m00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BVALID" *) input m00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BREADY" *) output m00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR" *) output [31:0]m00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARPROT" *) output [2:0]m00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARVALID" *) output m00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARREADY" *) input m00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RDATA" *) input [31:0]m00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RRESP" *) input [1:0]m00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RVALID" *) input m00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RREADY" *) output m00_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 M00_AXI_CLK CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI_CLK, ASSOCIATED_BUSIF M00_AXI, ASSOCIATED_RESET m00_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0, CLK_DOMAIN Block_top_mig_axi_wrapper_0_0_ui_clk" *) input m00_axi_aclk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 M00_AXI_RST RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input m00_axi_aresetn;
  input cpu_io_cmd_valid;
  output cpu_io_cmd_ready;
  input cpu_io_cmd_write;
  input [31:0]cpu_io_cmd_addr;
  input [31:0]cpu_io_cmd_dout;
  input [1:0]cpu_io_cmd_size;
  input [3:0]cpu_io_cmd_mask;
  input cpu_io_cmd_io;
  input cpu_io_cmd_fromHart;
  input [15:0]cpu_io_cmd_uopId;
  output cpu_io_rsp_valid;
  output cpu_io_rsp_error;
  output [31:0]cpu_io_rsp_din;
endmodule

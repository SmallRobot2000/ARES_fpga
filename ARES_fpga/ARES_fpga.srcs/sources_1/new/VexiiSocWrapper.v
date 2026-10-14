module VexiiSocWrapper(

  input  wire          dma_bus_awvalid,
  output wire          dma_bus_awready,
  input  wire [31:0]   dma_bus_awaddr,
  input  wire [3:0]    dma_bus_awid,
  input  wire [3:0]    dma_bus_awregion,
  input  wire [7:0]    dma_bus_awlen,
  input  wire [2:0]    dma_bus_awsize,
  input  wire [1:0]    dma_bus_awburst,
  input  wire [0:0]    dma_bus_awlock,
  input  wire [3:0]    dma_bus_awcache,
  input  wire [3:0]    dma_bus_awqos,
  input  wire [2:0]    dma_bus_awprot,
  input  wire          dma_bus_wvalid,
  output wire          dma_bus_wready,
  input  wire [63:0]   dma_bus_wdata,
  input  wire [7:0]    dma_bus_wstrb,
  input  wire          dma_bus_wlast,
  output wire          dma_bus_bvalid,
  input  wire          dma_bus_bready,
  output wire [3:0]    dma_bus_bid,
  output wire [1:0]    dma_bus_bresp,
  input  wire          dma_bus_arvalid,
  output wire          dma_bus_arready,
  input  wire [31:0]   dma_bus_araddr,
  input  wire [3:0]    dma_bus_arid,
  input  wire [3:0]    dma_bus_arregion,
  input  wire [7:0]    dma_bus_arlen,
  input  wire [2:0]    dma_bus_arsize,
  input  wire [1:0]    dma_bus_arburst,
  input  wire [0:0]    dma_bus_arlock,
  input  wire [3:0]    dma_bus_arcache,
  input  wire [3:0]    dma_bus_arqos,
  input  wire [2:0]    dma_bus_arprot,
  output wire          dma_bus_rvalid,
  input  wire          dma_bus_rready,
  output wire [63:0]   dma_bus_rdata,
  output wire [3:0]    dma_bus_rid,
  output wire [1:0]    dma_bus_rresp,
  output wire          dma_bus_rlast,
  
  
  output wire          mBus_awvalid,
  input  wire          mBus_awready,
  output wire [31:0]   mBus_awaddr,
  output wire [7:0]    mBus_awid,
  output wire [7:0]    mBus_awlen,
  output wire [2:0]    mBus_awsize,
  output wire [1:0]    mBus_awburst,
  //output wire          mBus_awallStrb,
  output wire          mBus_wvalid,
  input  wire          mBus_wready,
  output wire [31:0]   mBus_wdata,
  output wire [3:0]    mBus_wstrb,
  output wire          mBus_wlast,
  input  wire          mBus_bvalid,
  output wire          mBus_bready,
  input  wire [7:0]    mBus_bid,
  input  wire [1:0]    mBus_bresp,
  output wire          mBus_arvalid,
  input  wire          mBus_arready,
  output wire [31:0]   mBus_araddr,
  output wire [7:0]    mBus_arid,
  output wire [7:0]    mBus_arlen,
  output wire [2:0]    mBus_arsize,
  output wire [1:0]    mBus_arburst,
  input  wire          mBus_rvalid,
  output wire          mBus_rready,
  input  wire [31:0]   mBus_rdata,
  input  wire [7:0]    mBus_rid,
  input  wire [1:0]    mBus_rresp,
  input  wire          mBus_rlast,

  output wire          pBus_awvalid,
  input  wire          pBus_awready,
  output wire [31:0]   pBus_awaddr,
  output wire [2:0]    pBus_awprot,
  output wire          pBus_wvalid,
  input  wire          pBus_wready,
  output wire [31:0]   pBus_wdata,
  output wire [3:0]    pBus_wstrb,
  input  wire          pBus_bvalid,
  output wire          pBus_bready,
  input  wire [1:0]    pBus_bresp,
  output wire          pBus_arvalid,
  input  wire          pBus_arready,
  output wire [31:0]   pBus_araddr,
  output wire [2:0]    pBus_arprot,
  input  wire          pBus_rvalid,
  output wire          pBus_rready,
  input  wire [31:0]   pBus_rdata,
  input  wire [1:0]    pBus_rresp,

(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s_axi_aclk CLK" *)
(* X_INTERFACE_PARAMETER =
   "ASSOCIATED_BUSIF mBus:pBus:dma_bus, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000" *)
input wire s_axi_aclk,

(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s_axi_aresetn RST" *)
(* X_INTERFACE_PARAMETER = "POLARITY ACTIVE_LOW" *)
input wire s_axi_aresetn,
  input  wire [31:0]   peripheral_externalInterrupts_port

);

// PLIC source 4 is the external ENC28J60 IRQ. The block design already
// inverts its active-low pin, but it remains asynchronous to s_axi_aclk.
// Source 6 (CF) is synchronized in axi_cf_controller; other sources pass
// through unchanged.
(* ASYNC_REG = "TRUE", SHREG_EXTRACT = "NO" *) reg enc_irq_meta;
(* ASYNC_REG = "TRUE", SHREG_EXTRACT = "NO" *) reg enc_irq_sync;

always @(posedge s_axi_aclk) begin
  if (!s_axi_aresetn) begin
    enc_irq_meta <= 1'b0;
    enc_irq_sync <= 1'b0;
  end else begin
    enc_irq_meta <= peripheral_externalInterrupts_port[4];
    enc_irq_sync <= enc_irq_meta;
  end
end

wire [31:0] plic_interrupts;
assign plic_interrupts = {
  peripheral_externalInterrupts_port[31:5],
  enc_irq_sync,
  peripheral_externalInterrupts_port[3:0]
};

// Passive diagnostics. MARK_DEBUG retains these nets for debug/insert_ila.tcl.
// No monitor output feeds back into the CPU, interrupts, or AXI handshakes.
(* MARK_DEBUG = "TRUE" *) wire [15:0] dbg_dma_flags, dbg_io_flags, dbg_mem_flags;
(* MARK_DEBUG = "TRUE" *) wire [31:0] dbg_dma_araddr, dbg_dma_awaddr;
(* MARK_DEBUG = "TRUE" *) wire [31:0] dbg_io_araddr, dbg_io_awaddr;
(* MARK_DEBUG = "TRUE" *) wire [31:0] dbg_mem_araddr, dbg_mem_awaddr;
(* MARK_DEBUG = "TRUE" *) wire [23:0] dbg_dma_pending, dbg_io_pending, dbg_mem_pending;
(* MARK_DEBUG = "TRUE" *) wire [15:0] dbg_dma_live, dbg_io_live, dbg_mem_live;
(* MARK_DEBUG = "TRUE" *) wire [31:0] dbg_io_wdata = pBus_wdata;
(* MARK_DEBUG = "TRUE" *) wire [31:0] dbg_io_rdata = pBus_rdata;
(* MARK_DEBUG = "TRUE" *) wire [5:0] dbg_irq_levels = plic_interrupts[6:1];
(* MARK_DEBUG = "TRUE" *) wire dbg_fault =
    (|dbg_dma_flags[8:3]) || (|dbg_io_flags[8:3]) || (|dbg_mem_flags[8:3]);

// Count reset reassertions since FPGA configuration (initial reset excluded).
// These two registers intentionally are not cleared by the system reset.
reg dbg_reset_previous = 1'b0;
(* MARK_DEBUG = "TRUE" *) reg [7:0] dbg_reset_count = 8'd0;
always @(posedge s_axi_aclk) begin
  dbg_reset_previous <= s_axi_aresetn;
  if (dbg_reset_previous && !s_axi_aresetn && dbg_reset_count != 8'hff)
    dbg_reset_count <= dbg_reset_count + 1'b1;
end

ares_axi_debug_watch #(.CHECK_DDR(1)) debug_dma (
  .clk(s_axi_aclk), .resetn(s_axi_aresetn),
  .arvalid(dma_bus_arvalid), .arready(dma_bus_arready), .araddr(dma_bus_araddr),
  .rvalid(dma_bus_rvalid), .rready(dma_bus_rready), .rlast(dma_bus_rlast), .rresp(dma_bus_rresp),
  .awvalid(dma_bus_awvalid), .awready(dma_bus_awready), .awaddr(dma_bus_awaddr),
  .wvalid(dma_bus_wvalid), .wready(dma_bus_wready), .wlast(dma_bus_wlast),
  .bvalid(dma_bus_bvalid), .bready(dma_bus_bready), .bresp(dma_bus_bresp),
  .flags(dbg_dma_flags), .read_address(dbg_dma_araddr), .write_address(dbg_dma_awaddr),
  .pending(dbg_dma_pending), .live(dbg_dma_live)
);

ares_axi_debug_watch debug_io (
  .clk(s_axi_aclk), .resetn(s_axi_aresetn),
  .arvalid(pBus_arvalid), .arready(pBus_arready), .araddr(pBus_araddr),
  .rvalid(pBus_rvalid), .rready(pBus_rready), .rlast(1'b1), .rresp(pBus_rresp),
  .awvalid(pBus_awvalid), .awready(pBus_awready), .awaddr(pBus_awaddr),
  .wvalid(pBus_wvalid), .wready(pBus_wready), .wlast(1'b1),
  .bvalid(pBus_bvalid), .bready(pBus_bready), .bresp(pBus_bresp),
  .flags(dbg_io_flags), .read_address(dbg_io_araddr), .write_address(dbg_io_awaddr),
  .pending(dbg_io_pending), .live(dbg_io_live)
);

ares_axi_debug_watch debug_mem (
  .clk(s_axi_aclk), .resetn(s_axi_aresetn),
  .arvalid(mBus_arvalid), .arready(mBus_arready), .araddr(mBus_araddr),
  .rvalid(mBus_rvalid), .rready(mBus_rready), .rlast(mBus_rlast), .rresp(mBus_rresp),
  .awvalid(mBus_awvalid), .awready(mBus_awready), .awaddr(mBus_awaddr),
  .wvalid(mBus_wvalid), .wready(mBus_wready), .wlast(mBus_wlast),
  .bvalid(mBus_bvalid), .bready(mBus_bready), .bresp(mBus_bresp),
  .flags(dbg_mem_flags), .read_address(dbg_mem_araddr), .write_address(dbg_mem_awaddr),
  .pending(dbg_mem_pending), .live(dbg_mem_live)
);

VexiiSoc Soc
(

  .dma_bus_awvalid(dma_bus_awvalid),
  .dma_bus_awready(dma_bus_awready),
  .dma_bus_awaddr(dma_bus_awaddr),
  .dma_bus_awid(dma_bus_awid),
  .dma_bus_awregion(dma_bus_awregion),
  .dma_bus_awlen(dma_bus_awlen),
  .dma_bus_awsize(dma_bus_awsize),
  .dma_bus_awburst(dma_bus_awburst),
  .dma_bus_awlock(dma_bus_awlock),
  .dma_bus_awcache(dma_bus_awcache),
  .dma_bus_awqos(dma_bus_awqos),
  .dma_bus_awprot(dma_bus_awprot),
  .dma_bus_wvalid(dma_bus_wvalid),
  .dma_bus_wready(dma_bus_wready),
  .dma_bus_wdata(dma_bus_wdata),
  .dma_bus_wstrb(dma_bus_wstrb),
  .dma_bus_wlast(dma_bus_wlast),
  .dma_bus_bvalid(dma_bus_bvalid),
  .dma_bus_bready(dma_bus_bready),
  .dma_bus_bid(dma_bus_bid),
  .dma_bus_bresp(dma_bus_bresp),
  .dma_bus_arvalid(dma_bus_arvalid),
  .dma_bus_arready(dma_bus_arready),
  .dma_bus_araddr(dma_bus_araddr),
  .dma_bus_arid(dma_bus_arid),
  .dma_bus_arregion(dma_bus_arregion),
  .dma_bus_arlen(dma_bus_arlen),
  .dma_bus_arsize(dma_bus_arsize),
  .dma_bus_arburst(dma_bus_arburst),
  .dma_bus_arlock(dma_bus_arlock),
  .dma_bus_arcache(dma_bus_arcache),
  .dma_bus_arqos(dma_bus_arqos),
  .dma_bus_arprot(dma_bus_arprot),
  .dma_bus_rvalid(dma_bus_rvalid),
  .dma_bus_rready(dma_bus_rready),
  .dma_bus_rdata(dma_bus_rdata),
  .dma_bus_rid(dma_bus_rid),
  .dma_bus_rresp(dma_bus_rresp),
  .dma_bus_rlast(dma_bus_rlast),
  
  
  .mBus_awvalid(mBus_awvalid),
  .mBus_awready(mBus_awready),
  .mBus_awaddr(mBus_awaddr),
  .mBus_awid(mBus_awid),
  .mBus_awlen(mBus_awlen),
  .mBus_awsize(mBus_awsize),
  .mBus_awburst(mBus_awburst),
  .mBus_awallStrb(),        //Not needed
  .mBus_wvalid(mBus_wvalid),
  .mBus_wready(mBus_wready),
  .mBus_wdata(mBus_wdata),
  .mBus_wstrb(mBus_wstrb),
  .mBus_wlast(mBus_wlast),
  .mBus_bvalid(mBus_bvalid),
  .mBus_bready(mBus_bready),
  .mBus_bid(mBus_bid),
  .mBus_bresp(mBus_bresp),
  .mBus_arvalid(mBus_arvalid),
  .mBus_arready(mBus_arready),
  .mBus_araddr(mBus_araddr),
  .mBus_arid(mBus_arid),
  .mBus_arlen(mBus_arlen),
  .mBus_arsize(mBus_arsize),
  .mBus_arburst(mBus_arburst),
  .mBus_rvalid(mBus_rvalid),
  .mBus_rready(mBus_rready),
  .mBus_rdata(mBus_rdata),
  .mBus_rid(mBus_rid),
  .mBus_rresp(mBus_rresp),
  .mBus_rlast(mBus_rlast),

  .pBus_awvalid(pBus_awvalid),
  .pBus_awready(pBus_awready),
  .pBus_awaddr(pBus_awaddr),
  .pBus_awprot(pBus_awprot),
  .pBus_wvalid(pBus_wvalid),
  .pBus_wready(pBus_wready),
  .pBus_wdata(pBus_wdata),
  .pBus_wstrb(pBus_wstrb),
  .pBus_bvalid(pBus_bvalid),
  .pBus_bready(pBus_bready),
  .pBus_bresp(pBus_bresp),
  .pBus_arvalid(pBus_arvalid),
  .pBus_arready(pBus_arready),
  .pBus_araddr(pBus_araddr),
  .pBus_arprot(pBus_arprot),
  .pBus_rvalid(pBus_rvalid),
  .pBus_rready(pBus_rready),
  .pBus_rdata(pBus_rdata),
  .pBus_rresp(pBus_rresp),

  .litex_reset(~s_axi_aresetn),
  .litex_clk(s_axi_aclk),
  .peripheral_externalInterrupts_port(plic_interrupts),
  .debug() //Not needed
);

endmodule

// A no-progress watchdog, not a complete AXI protocol checker. Track AW and
// completed W bursts independently because AXI permits W to arrive before AW.
// Addresses are the latest presented addresses, frozen on the first anomaly;
// they do not identify the oldest transaction when multiple IDs are active.
module ares_axi_debug_watch #(
  parameter integer STALL_CYCLES = 100000, // 1 ms at 100 MHz
  parameter integer CHECK_DDR = 0
)(
  input wire clk, resetn,
  input wire arvalid, arready,
  input wire [31:0] araddr,
  input wire rvalid, rready, rlast,
  input wire [1:0] rresp,
  input wire awvalid, awready,
  input wire [31:0] awaddr,
  input wire wvalid, wready, wlast,
  input wire bvalid, bready,
  input wire [1:0] bresp,
  output wire [15:0] flags,
  output reg [31:0] read_address, write_address,
  output wire [23:0] pending,
  output wire [15:0] live
);
  localparam integer AGE_WIDTH = (STALL_CYCLES > 1) ? $clog2(STALL_CYCLES) : 1;
  localparam [AGE_WIDTH-1:0] AGE_LIMIT = STALL_CYCLES - 1;
  reg [AGE_WIDTH-1:0] read_age, write_age;
  reg [7:0] reads, writes, write_bursts;
  reg partial_write;
  reg [8:0] sticky;
  wire ar_fire = arvalid && arready;
  wire r_fire = rvalid && rready;
  wire r_done = r_fire && rlast;
  wire aw_fire = awvalid && awready;
  wire w_fire = wvalid && wready;
  wire w_done = w_fire && wlast;
  wire b_fire = bvalid && bready;
  wire read_busy = (reads != 0) || arvalid || rvalid;
  wire write_busy = (writes != 0) || (write_bursts != 0) || partial_write ||
                    awvalid || wvalid || bvalid;
  wire read_progress = ar_fire || r_fire;
  wire write_progress = aw_fire || w_fire || b_fire;
  wire read_stalled = read_busy && !read_progress && (read_age == AGE_LIMIT);
  wire write_stalled = write_busy && !write_progress && (write_age == AGE_LIMIT);

  assign flags = {bvalid && !bready, rvalid && !rready,
                  (write_bursts != 0) || partial_write, writes != 0, reads != 0,
                  write_stalled, read_stalled, sticky};
  assign pending = {write_bursts, writes, reads};
  assign live = {bresp, rresp, wlast, rlast, bready, bvalid, wready, wvalid,
                 awready, awvalid, rready, rvalid, arready, arvalid};

  always @(posedge clk) begin
    if (!resetn) begin
      sticky <= 0;
      reads <= 0;
      writes <= 0;
      write_bursts <= 0;
      partial_write <= 0;
      read_age <= 0;
      write_age <= 0;
      read_address <= 0;
      write_address <= 0;
    end else begin
      if (arvalid) sticky[0] <= 1'b1;
      if (awvalid) sticky[1] <= 1'b1;
      if (wvalid) sticky[2] <= 1'b1;
      if (read_stalled) sticky[3] <= 1'b1;
      if (write_stalled) sticky[4] <= 1'b1;
      if (rvalid && rresp[1]) sticky[5] <= 1'b1;
      if (bvalid && bresp[1]) sticky[6] <= 1'b1;
      if (CHECK_DDR && ((arvalid && araddr[31:28] != 4'h9) ||
                        (awvalid && awaddr[31:28] != 4'h9)))
        sticky[7] <= 1'b1;

      if (!(|sticky[8:3])) begin
        if (arvalid) read_address <= araddr;
        if (awvalid) write_address <= awaddr;
      end

      if (!read_busy || read_progress) read_age <= 0;
      else if (read_age != AGE_LIMIT) read_age <= read_age + 1'b1;
      if (!write_busy || write_progress) write_age <= 0;
      else if (write_age != AGE_LIMIT) write_age <= write_age + 1'b1;

      case ({ar_fire, r_done})
        2'b10: if (reads != 8'hff) reads <= reads + 1'b1; else sticky[8] <= 1'b1;
        2'b01: if (reads != 0) reads <= reads - 1'b1; else sticky[8] <= 1'b1;
        default: ;
      endcase
      case ({aw_fire, b_fire})
        2'b10: if (writes != 8'hff) writes <= writes + 1'b1; else sticky[8] <= 1'b1;
        2'b01: if (writes != 0) writes <= writes - 1'b1; else sticky[8] <= 1'b1;
        default: ;
      endcase
      case ({w_done, b_fire})
        2'b10: if (write_bursts != 8'hff) write_bursts <= write_bursts + 1'b1; else sticky[8] <= 1'b1;
        2'b01: if (write_bursts != 0) write_bursts <= write_bursts - 1'b1; else sticky[8] <= 1'b1;
        default: ;
      endcase
      if (w_fire) partial_write <= !wlast;
    end
  end
endmodule

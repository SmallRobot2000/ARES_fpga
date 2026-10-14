`timescale 1ns/1ps
module tb_axi_debug_watch;
  reg clk = 0;
  always #5 clk = ~clk;
  reg resetn = 0;
  reg arvalid = 0, arready = 0, rvalid = 0, rready = 0, rlast = 0;
  reg awvalid = 0, awready = 0, wvalid = 0, wready = 0, wlast = 0;
  reg bvalid = 0, bready = 0;
  reg [31:0] araddr = 32'h90001000, awaddr = 32'h90002000;
  reg [1:0] rresp = 0, bresp = 0;
  wire [15:0] flags, live;
  wire [23:0] pending;
  wire [31:0] read_address, write_address;
  ares_axi_debug_watch #(.STALL_CYCLES(8), .CHECK_DDR(1)) dut(.*);

  task tick; @(posedge clk); #1; endtask
  task idle;
    arvalid=0; arready=0; rvalid=0; rready=0; rlast=0; rresp=0;
    awvalid=0; awready=0; wvalid=0; wready=0; wlast=0;
    bvalid=0; bready=0; bresp=0;
  endtask
  task restart;
    @(negedge clk); idle(); resetn=0; tick();
    @(negedge clk); resetn=1;
  endtask
  initial begin
    restart();
    repeat(12) tick();
    if (flags != 0 || pending != 0) $fatal(1,"idle produced a fault");

    // Multiple reads and a simultaneous new AR/final response.
    @(negedge clk); arvalid=1; arready=1;
    tick(); tick();
    if (pending[7:0] != 2) $fatal(1,"read accounting");
    @(negedge clk); rvalid=1; rready=1; rlast=1;
    tick();
    if (pending[7:0] != 2) $fatal(1,"simultaneous read issue/completion");
    @(negedge clk); arvalid=0;
    tick(); tick();
    @(negedge clk); idle();
    tick();
    if (pending != 0 || flags[8:3] != 0) $fatal(1,"healthy reads faulted");

    // A W burst may legally finish before AW arrives.
    @(negedge clk); wvalid=1; wready=1; wlast=1;
    tick();
    @(negedge clk); wvalid=0; awvalid=1; awready=1;
    tick();
    @(negedge clk); awvalid=0; bvalid=1; bready=1;
    tick();
    @(negedge clk); idle(); tick();
    if (pending != 0 || flags[8:3] != 0) $fatal(1,"legal W-before-AW faulted");

    // The address itself is blocked: no accepted request is needed to stall.
    restart(); arvalid=1; arready=0;
    repeat(8) tick();
    if (!flags[3] || read_address != araddr) $fatal(1,"missing AR stall");
    @(negedge clk); araddr=32'h90003000; arready=1;
    tick();
    if (read_address != 32'h90001000) $fatal(1,"fault address was overwritten");

    // Accepted request, absent response.
    restart(); arvalid=1; arready=1; tick();
    @(negedge clk); idle(); repeat(8) tick();
    if (!flags[3] || pending[7:0] != 1) $fatal(1,"missing response stall");

    // Partial W before AW must also remain visible as pending work.
    restart(); wvalid=1; wready=1; wlast=0; tick();
    @(negedge clk); idle(); repeat(8) tick();
    if (!flags[4] || !flags[13]) $fatal(1,"partial W disappeared");

    // A valid response error is captured even under response backpressure.
    restart(); rvalid=1; rready=0; rresp=2'b10; tick();
    if (!flags[5] || !flags[14]) $fatal(1,"read error/backpressure lost");
    restart(); bvalid=1; bready=0; bresp=2'b11; tick();
    if (!flags[6] || !flags[15]) $fatal(1,"write error/backpressure lost");

    restart(); arvalid=1; araddr=32'h10080000; tick();
    if (!flags[7] || read_address != araddr) $fatal(1,"non-DDR request lost");
    restart(); rvalid=1; rready=1; rlast=1; tick();
    if (!flags[8] || pending != 0) $fatal(1,"underflow wrapped");
    restart(); araddr=32'h90001000; arvalid=1; arready=1;
    repeat(256) tick();
    if (!flags[8] || pending[7:0] != 255) $fatal(1,"overflow wrapped");
    restart(); tick();
    if (flags != 0 || pending != 0) $fatal(1,"reset did not clear diagnostics");
    $display("PASS: idle, independent channels, outstanding requests, W-before-AW, timeouts, frozen addresses, errors, range, saturation, reset");
    $finish;
  end
  initial begin #100000; $fatal(1,"test timeout"); end
endmodule

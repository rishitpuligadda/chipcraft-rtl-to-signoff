module tb_async;
  reg  clk, rst_n, d;
  /* verilator lint_off UNUSEDSIGNAL */
  wire q;
  /* verilator lint_on UNUSEDSIGNAL */

  always #5 clk = ~clk;

  async dut (.rst_n(rst_n), .d(d), .clk(clk), .q(q));

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb_async);

    rst_n = 0; 
    #10 rst_n = 1; d = 1;
    #10 d = 0;
    #10 d = 1;
    #2  rst_n = 0;
    #20 $finish;
  end
endmodule

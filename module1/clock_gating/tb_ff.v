module tb_ff;
  reg clk = 0;
  reg rst = 0;
  reg d   = 0;
  reg enable = 0;
  wire q_nogate, q_gate;

  always #5 clk = ~clk;

  ff_no_gating dut1 (.q(q_nogate), .d(d), .clk(clk), .rst(rst));
  ff_with_gating dut2 (.q(q_gate), .d(d), .clk(clk), .rst(rst), .enable(enable));

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb_ff);

    rst = 1; d = 1; enable = 0; 
    #10 rst = 0;
    #20 enable = 1;
    #30 enable = 0; d = 0; 
    #30 $finish;
  end
endmodule

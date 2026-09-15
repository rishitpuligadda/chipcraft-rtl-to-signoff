module tb_metastability;
  wire sampled;
  reg  clk = 0;

  reg  async_in = 0;

  always #5 clk = ~clk;

  metastability dut (
    .clk(clk),
    .async_in(async_in),
    .sampled(sampled)
  );

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb_metastability);
    $monitor("time = %t, async_in = %b, sampled = %b", $time, async_in, sampled);
    #12 async_in = 1;
    #7  async_in = 0;
    #6  async_in = 1;
    #9  async_in = 0;
    #50 $finish;
  end
endmodule

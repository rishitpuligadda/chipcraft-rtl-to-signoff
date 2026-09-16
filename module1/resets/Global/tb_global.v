module tb_global;
  reg  d1, d2, clk, rst;
  wire q1, q2;

  always #5 clk = ~clk;

  glob dut(
    .q1(q1),
    .q2(q2),
    .d1(d1),
    .d2(d2),
    .clk(clk),
    .rst(rst)
  );

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb_global);

    rst = 1;
    #10 rst = 0; d1 = 1; d2 = 1;
    #6  rst = 1;
    #20 $finish;
  end
endmodule

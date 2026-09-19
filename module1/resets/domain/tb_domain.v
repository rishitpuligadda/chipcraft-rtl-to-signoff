module tb_domain;
  reg  d1, d2;
  reg  rst1, rst2;
  reg  clk1, clk2;
  wire q1, q2;

  always #5  clk1 = ~clk1;
  always #10 clk2 = ~clk2;

  domain_reset dut (
    .q1(q1),
    .q2(q2),
    .d1(d1),
    .d2(d2),
    .clk1(clk1),
    .clk2(clk2),
    .rst1(rst1),
    .rst2(rst2)
  );

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb_domain);

    rst1 = 1; rst2 = 1;
    #10 rst1 = 0; rst2 = 0;
    #10 d1 = 1; d2 = 1;
    #10 rst1 = 1; rst2 = 1;
    #10 $finish;
  end
endmodule

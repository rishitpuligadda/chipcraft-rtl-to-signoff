`timescale 1ns/1ps

module tb_jk;
  reg  j, k;
  reg  rst;
  reg  clk;
  wire q, qn;

  jk_flipflop dut(.q(q), .qn(qn), .j(j), .k(k), .rst(rst), .clk(clk));

  always #5 clk = ~clk;

  initial begin
        clk = 1'b0; rst = 1'b1; 
        j = 1'b0;   k = 1'b0;
    #10 rst = 1'b0;
    #3  j = 1'b0;   k = 1'b0;
    #10 j = 1'b0;   k = 1'b1;
    #10 j = 1'b1;   k = 1'b0;
    #10 j = 1'b1;   k = 1'b1;
    #15 rst = 1'b1;
    #15 rst = 1'b0;
    #10 $finish;
  end

  initial begin
    $monitor("time = %t, q = %0b, qn = %0b | j = %0b, k = %0b | rst = %0b", $time, q, qn, j, k, rst);
    $dumpfile("jkf.vcd");
    $dumpvars(0, tb_jk);
  end
endmodule

`timescale 1ns/1ps

module tb_rup;
  reg clk, rst_n;
  wire [3:0] y;

  rup dut (.y(y), .clk(clk), .rst_n(rst_n));

  always #5 clk = ~clk;

  initial begin
    $monitor ("time = %t, y = %b, rst_n = %b", $time, y, rst_n);
    rst_n = 0;
    #10 rst_n = 1;
    #200 $finish;
  end

  initial begin
    $dumpfile("rup.vcd");
    $dumpvars();
  end
endmodule

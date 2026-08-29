`timescale 1ns/1ps

module tb_ha;
  reg  a, b;
  wire s, c;

  halfadder dut (s, c, a, b);

  initial begin
    $monitor("Time = %t, s = %0b, c = %0b | a = %0b, b = %0b", $time, s, c, a, b);
    a = 0; b = 0;
    #10 a = 0; b = 1;
    #10 a = 1; b = 0;
    #10 a = 1; b = 1;

    #10 $finish;
  end

  initial begin
    $dumpfile("halfadder.vcd");
    $dumpvars(0, tb_ha);
  end
endmodule

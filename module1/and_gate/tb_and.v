`timescale 1ps/1ps
module tb_and;
  reg  a, b;
  wire y;

  and_gate dut(y, a, b);

  initial begin
    $display("time=%t A = %0b| B = %0b| y = %0b", $time, a, b, y);
    $monitor("time=%t A = %0b| B = %0b| y = %0b", $time, a, b, y);
    $dumpfile("and_wave.vcd");
    $dumpvars(0, tb_and);
        a = 0; b = 0;
    #10 a = 1; b = 0;
    #10 a = 0; b = 1;
    #10 a = 1; b = 1;
    #20 $finish;
  end
endmodule

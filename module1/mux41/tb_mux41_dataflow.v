module tb_mux41_dataflow;
  reg  s1, s0;
  reg  i0, i1, i2, i3;
  wire y;

  mux41_dataflow dut (.y(y),
                      .s1(s1), .s0(s0),
                      .i0(i0), .i1(i1), .i2(i2), .i3(i3)
                      );

  initial begin
        i0 = 1'b0; i1 = 1'b1; i2 = 1'b0; i3 = 1'b1;
        s0 = 1'b0; s1 = 1'b0;
    #10 s0 = 1'b1; s1 = 1'b0;
    #10 s0 = 1'b0; s1 = 1'b1;
    #10 s0 = 1'b1; s1 = 1'b1;
  end

  initial begin
    $monitor("time = %t, y = %0b| s0 = %0b, s1 = %0b| i0 = %0b, i1 = %0b, i2 = %0b, i3 = %0b", $time, y, s0, s1, i0, i1, i2, i3);
    $dumpfile("mux41_dataflow.vcd");
    $dumpvars(0, tb_mux41_dataflow);
  end
endmodule

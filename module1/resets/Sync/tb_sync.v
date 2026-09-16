module tb_sync;
  reg  d, rst, clk;
  wire q;

  always #5 clk = ~clk;

  sync dut (.q(q), .d(d), .clk(clk), .rst(rst));

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb_sync);

    rst = 1;
    #10 rst = 0; d = 1;
    #6  rst = 1;
    #20 $finish;
  end
endmodule

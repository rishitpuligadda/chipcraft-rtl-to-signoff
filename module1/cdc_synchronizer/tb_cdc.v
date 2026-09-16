module tb_cdc;
  reg clk = 0;
  reg async_in = 0;
  wire synced;

  always #5 clk = ~clk;

  cdc dut (
    .clk(clk),
    .async_in(async_in),
    .synced(synced)
  );

  initial begin
    $dumpfile("dumb.vcd");
    $dumpvars(0, tb_cdc);

    #12 async_in = 1;
    #7 async_in = 0;
    #6 async_in = 1;
    #9 async_in = 0;
    #50 $finish;
  end
endmodule

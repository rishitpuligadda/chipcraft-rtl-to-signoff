module tb_upc;
  wire [3:0] y;
  reg clk, rst_n;

  upc dut (.y(y), .clk(clk), .rst_n(rst_n));

  always #5 clk = ~clk;

  initial begin
    $monitor ("time = %t, y = %b, rst_n = %b", $time, y, rst_n);
    rst_n = 1'b0;
    #10 rst_n = 1'b1;
    #200 $finish;
  end

  initial begin
    $dumpfile("upc.vdc");
    $dumpvars();
  end
endmodule

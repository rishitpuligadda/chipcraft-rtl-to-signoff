module tb_downc;
  wire [3:0] y;
  reg        clk; 
  reg        rst_n;

  downc dut (.y(y), .clk(clk), .rst_n(rst_n));

  always #5 clk = ~clk;

  initial begin
         rst_n = 1'b0;
    #10  rst_n = 1'b1;
    #200 $finish;
  end

  initial begin
    $monitor ("time = %t, y = %b, rst_n = %b", $time, y, rst_n);
    $dumpfile("downc.vdc");
    $dumpvars();
  end
endmodule

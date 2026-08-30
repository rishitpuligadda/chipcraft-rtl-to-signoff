module upc(
  output reg [3:0] y,
  input            clk, 
  input            rst_n
);

  always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
      y <= 4'b0000;
    else 
      y <= y + 1;
  end
endmodule

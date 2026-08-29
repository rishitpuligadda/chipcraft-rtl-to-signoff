module downc(
  output reg [3:0] y,
  input clk, rst_n
);

  always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
      y <= 4'b1111;
    else 
      y <= y - 1;
  end
endmodule

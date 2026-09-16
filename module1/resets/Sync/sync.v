module sync(
  output reg q,
  input      d,
  input      clk,
  input      rst
);
  always @(posedge clk) begin
    if (rst)  
      q <= 1'b0;
    else
      q <= d;
  end 
endmodule

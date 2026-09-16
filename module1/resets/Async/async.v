module async(
  output reg q,
  input      d,
  input      clk,
  input      rst_n
);
  always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
      q <= 1'b0;
    else
      q <= d;
  end   
endmodule

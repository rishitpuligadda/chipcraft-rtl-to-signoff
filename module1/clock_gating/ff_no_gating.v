module ff_no_gating (
  output reg q,
  input      d,
  input      rst,
  input      clk
);

  always @(posedge clk) begin
    if (rst) 
      q <= 1'b0;
    else
      q <= d;
  end 
endmodule

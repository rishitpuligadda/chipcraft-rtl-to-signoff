module ff_with_gating (
  output reg q,
  input      d,
  input      enable,
  input      clk,
  input      rst
);
  wire gated_clk;
  assign gated_clk = enable & clk;

  always @(posedge gated_clk) begin
    if (rst)
      q <= 1'b0;
    else 
      q <= d;
  end 
endmodule

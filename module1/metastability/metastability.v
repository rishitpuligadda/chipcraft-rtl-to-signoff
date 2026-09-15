module metastability (
  output reg sampled,
  input      clk,
  input      async_in
);
  always @(posedge clk) begin
    sampled <= async_in;
  end   
endmodule

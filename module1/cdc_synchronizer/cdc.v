module cdc (
  output reg synced,
  input      async_in, 
  input      clk
);
  reg state1;

  always @(posedge clk) begin
    state1 <= async_in;
    synced <= state1;
  end 
endmodule

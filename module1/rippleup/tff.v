`timescale 1ns/1ps

module tff(
  output reg q, 
  input      t,
  input      clk,
  input      rst_n
);

  always @(negedge clk or negedge rst_n) begin
    if (!rst_n) 
      q <= 1'b0;
    else begin
      if (t) 
        q <= ~q;
      else
        q <= q;
    end
  end

endmodule


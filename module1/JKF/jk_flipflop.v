`timescale 1ns/1ps

module jk_flipflop(
  output reg q,
  output qn,
  input j, k,
  input clk, rst
);
  assign qn = ~q;
  always@(posedge clk or posedge rst) begin
    if (rst) 
      q <= 1'b0;
    else begin
      case ({j, k}) 
        2'b00: q <= q;
        2'b01: q <= 1'b0;
        2'b10: q <= 1'b1;
        2'b11: q <= ~q;
      endcase
    end
  end   
endmodule

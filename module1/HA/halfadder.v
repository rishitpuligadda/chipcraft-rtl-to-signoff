`timescale 1ns/1ps

module halfadder(
  output s, c,
  input  a, b
);
  assign s = a ^ b;
  assign c = a & b;
endmodule

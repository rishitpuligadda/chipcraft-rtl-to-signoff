`timescale 1ns/1ps

module rup(
  output reg [3:0] y,
  input            clk,
  input            rst_n
);
  wire [3:0] q;
  assign y = q;

  tff q0(q[0], 1, clk, rst_n);
  tff q1(q[1], 1, q[0], rst_n);
  tff q2(q[2], 1, q[1], rst_n);
  tff q3(q[3], 1, q[2], rst_n);

endmodule

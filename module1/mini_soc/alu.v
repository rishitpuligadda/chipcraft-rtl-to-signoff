module alu(
	output [2:0] result,
	input  [1:0] a,
	input  [1:0] b,
	input        sel
);
	assign result = sel ? (a - b) : (a + b);
endmodule

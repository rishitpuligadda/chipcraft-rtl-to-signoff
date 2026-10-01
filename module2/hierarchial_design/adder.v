module adder #(parameter WIDTH = 8) (
	output [WIDTH-1:0] sum,
	input  [WIDTH-1:0] a,
	input  [WIDTH-1:0] b
);
	assign sum = a + b;
endmodule

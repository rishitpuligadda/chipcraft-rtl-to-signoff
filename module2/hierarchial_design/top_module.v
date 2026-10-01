module top_module (
	output [7:0] result,
	input  [7:0] ext_input,
	input        clk,
	input        en,
	input        rst
);
	wire [7:0] count;

	counter u_counter (
		.clk(clk),
		.rst(rst),
		.en(en),
		.count(count)
	);

	adder u_adder (
		.a(count),
		.b(ext_input),
		.sum(result)
	);
endmodule

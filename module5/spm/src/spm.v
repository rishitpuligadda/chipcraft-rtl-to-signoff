module spm #(
	parameter size = 32
)(
	output            p,
	input  [size-1:0] x,
	input             y,
	input             clk,
	input             rst
);
	wire [size-1:1] pp;
	wire [size-1:0] xy;

	genvar i;

	CSADD csa0 (
		.clk(clk), .rst(rst), .x(x[0]&y), 
		.y(pp[1]), .sum(p)
	);

	generate for (i=1; i<size-1; i=i+1) begin
		CSADD csa (
			.clk(clk), .rst(rst), .x(x[i]&y),
			.y(pp[i+1]), .sum(pp[i])
		);
	end	endgenerate

	TCMP tcmp (
		.clk(clk), .rst(rst), 
		.a(x[size-1]&y), 
		.s(pp[size-1])
	);
endmodule

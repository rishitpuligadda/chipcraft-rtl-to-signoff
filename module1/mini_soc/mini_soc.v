module mini_soc(
	output [1:0] soc_out,
	input        alu_sel,
	input        mux_sel,
	input        clk,
	input        rst
);
	wire [3:0] count;
	wire [2:0] alu_out;

	counter u_counter (.clk(clk), .rst(rst), .count(count));

	alu u_alu (.a(count[3:2]), .b(count[1:0]), .sel(alu_sel), .result(alu_out));

	mux21 u_mux (.in1(alu_out[1:0]), .in0(count[3:2]), .sel(mux_sel), .y(soc_out));
endmodule

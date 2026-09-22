module soc_top(
	output [3:0] alu_out,
	output       tx_done,
	input        tx_en,
	input        sel,
	input  [3:0] in1,
	input  [3:0] in2,
	input        rst_n,
	input        clk
);
	wire [3:0] alu_result;

	alu alu_dut(
		.a(in1),
		.b(in2),
		.sel(sel),
		.y(alu_result)
	);

	uart_stub uart_dut( 
		.clk(clk),
		.rst_n(rst_n),
		.tx_en(tx_en),
		.tx_data(alu_result), // mismatch of size
		.tx_done(tx_done)
	);

	assign alu_out = alu_result;
endmodule

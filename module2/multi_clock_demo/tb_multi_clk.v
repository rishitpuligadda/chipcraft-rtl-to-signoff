module tb_multi_clk;
	reg  clk_fast = 0;
	reg  clk_slow = 0;
	reg  rst      = 1;
	reg  sel      = 1;
	wire muxed_clk;
	wire clk_div4;

	always #5  clk_fast = ~clk_fast;
	always #10 clk_slow = ~clk_slow;

	clk_divider u_div (
		.clk_in(clk_fast),
		.rst(rst),
		.clk_out(clk_div4)
	);

	clk_mux u_mux (
		.clk0(clk_fast),
		.clk1(clk_slow),
		.sel(sel),
		.clk_out(muxed_clk)
	);

	initial begin
		$dumpfile("dump.vcd");
		$dumpvars(0, tb_multi_clk);

		#15 rst = 0;
		#60 sel = 1;
		#60 sel = 0;
		#100 $finish;
	end
endmodule

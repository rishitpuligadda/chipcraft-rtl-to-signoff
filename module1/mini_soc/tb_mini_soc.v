module tb_mini_soc;
	reg clk = 0;
	reg rst = 1;
	reg alu_sel = 0;
	reg mux_sel = 0;
	wire [1:0] soc_out;

	always #5 clk = ~clk;

	mini_soc dut (
		.clk(clk),
		.rst(rst),
		.alu_sel(alu_sel),
		.mux_sel(mux_sel),
		.soc_out(soc_out)
	);

	initial begin
		$dumpfile("dump.vcd");
		$dumpvars(0, tb_mini_soc);

		#10 rst = 0;
		#20 alu_sel = 1;
		#30 mux_sel = 1;
		#40 alu_sel = 0;
		#20 mux_sel = 0;
		#50 $finish;
	end
endmodule

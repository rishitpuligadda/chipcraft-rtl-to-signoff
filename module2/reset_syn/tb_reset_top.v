module tb_reset_top;
	reg clk    = 0;
	reg arst_n = 1;
	wire [7:0] count;
	wire       srst_n;

	reset_top uut (
		.clk(clk),
		.arst_n(arst_n),
		.count(count),
		.srst_n(srst_n)
	);

	always #5 clk = ~clk;

	initial begin
			$dumpfile("dump.vcd");
			$dumpvars(0, tb_reset_top);
			#7   arst_n = 0;
			#11  arst_n = 1;
			#100;
			#3   arst_n = 0;
			#12  arst_n = 1;
			#120 $finish;
	end
endmodule

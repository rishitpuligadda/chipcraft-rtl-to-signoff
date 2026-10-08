module tb_neg_latch_gating;
	reg        clk = 0;
	reg        en  = 0;
	reg        rst = 1;
	wire [3:0] count;
	wire       gated_clk;

	neg_latch_gating uut (
		.clk(clk), .en(en), .rst(rst),
		.count(count), .gated_clk(gated_clk)
	);

	always #5 clk = ~clk;

	initial begin
		$dumpfile("dump.vcd");
		$dumpvars(0, tb_neg_latch_gating);

		#12 rst = 0;
		#10 en  = 1; #30 en = 0;
		#5  en  = 1; #3  en = 0;
		#40 en  = 1; #20 en = 0;
		#30 $finish;
	end
endmodule

module tb_soc;
	reg        clk = 0;
	reg        rst_n = 0;
	reg [3:0]  in1, in2;
	reg        sel;
	reg        tx_en;
	wire       tx_done;
	wire [3:0] alu_out;

	always #5 clk = ~clk;

	soc_top dut (
		.clk(clk),
		.rst_n(rst_n),
		.in1(in1),
		.in2(in2),
		.sel(sel),
		.tx_en(tx_en),
		.tx_done(tx_done),
		.alu_out(alu_out)
	);

	initial begin
		$dumpfile("dump.vcd");
		$dumpvars(0, tb_soc);

		#10 rst_n = 1;
		in1 = 4; in2 = 3; sel = 1; tx_en = 1;
		#10 tx_en = 0;
		#20 in1 = 6; in2 = 5; sel = 0; tx_en = 1;
		#10 tx_en = 0;
		#40 $finish;
	end
endmodule

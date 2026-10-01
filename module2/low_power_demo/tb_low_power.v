module tb_low_power;
	reg clk      = 0;
	reg reset    = 1;
	reg enable   = 0;
	reg power_on = 0;

	wire [3:0] count, count_clk_gate, count_pwr_gate;

	always #5 clk = ~clk;

	counter u1 (
		.clk(clk),
		.reset(reset),
		.count(count)
	);

	counter_clk_gate u2 (
		.clk(clk),
		.reset(reset),
		.enable(enable),
		.count(count_clk_gate)
	);

	counter_pwr_gate u3 (
		.clk(clk),
		.reset(reset),
		.power_on(power_on),
		.count(count_pwr_gate)
	);

	initial begin
		$dumpfile("dump.vcd");
		$dumpvars(0, tb_low_power);
		#10 reset = 0;
		#10 enable = 1; power_on = 1;
		#30 enable = 0;
		#20 power_on = 0;
		#20 enable = 1; power_on = 1;
		#100 $finish;
	end
endmodule

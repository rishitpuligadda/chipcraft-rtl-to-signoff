`timescale 1ns/1ps
module tb_simple_timer;
	reg       clk = 0;
	reg       rst = 1;
	reg       start = 0;
	reg [7:0] load_val = 0;
	/* verilator lint_off UNUSEDSIGNAL */
	wire      done;
	/* verilator lint_on UNUSEDSIGNAL */

	simple_timer #(.WIDTH(8)) dut (
		.done(done),
		.clk(clk),
		.rst(rst),
		.start(start),
		.load_val(load_val)
	);

	always #5 clk = ~clk;

	initial begin
		$dumpfile("dump.vcd");
		$dumpvars(0, tb_simple_timer);

		#10 rst = 0;
		#5 load_val = 8'd5; start = 1;
		#10 start = 0;

		#100;

		#5 load_val = 8'd3; start = 1;
		#10 start = 0;
		#50 $finish;
	end	
endmodule

module counter_pwr_gate (
	output reg  [3:0] count,
	input  wire       clk,
	input  wire       reset,
	input  wire       power_on

);
	always @(posedge clk or posedge reset) begin
		if (reset) begin
			count <= '0;
		end
		else if (power_on) begin
			count <= count + 1;
		end
	end
endmodule

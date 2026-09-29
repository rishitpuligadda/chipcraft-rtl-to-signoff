module counter_clk_gate (
	output reg  [3:0] count,
	input  wire       reset,
	input  wire       clk,
	input  wire       enable
);
	always @(posedge clk or posedge reset) begin
		if (reset) begin
			count <= '0;
		end
		else if (enable) begin
			count <= count + 1;
		end
	end
endmodule

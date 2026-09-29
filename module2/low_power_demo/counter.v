module counter (
	output reg  [3:0] count, 
	input  wire       reset,
	input  wire       clk
);
	always @(posedge clk or posedge reset) begin
		if (reset) begin
			count <= '0;
		end
		else begin
			count <= count + 1;
		end
	end
endmodule

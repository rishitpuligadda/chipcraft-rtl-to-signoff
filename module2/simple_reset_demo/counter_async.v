module counter_async (
	output reg  [3:0] count,
	input  wire       clk,
	input  wire       rst

);
	always @(posedge clk or posedge rst) begin
		if (rst) begin
			count <= 4'b0;
		end
		else begin
			count <= count + 1;
		end
	end	
endmodule

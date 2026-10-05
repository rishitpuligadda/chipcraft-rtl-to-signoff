module counter_sync (
	output reg  [3:0] count,
	input  wire       clk,
	input  wire       rst_sync
);
	always @(posedge clk) begin
		if (rst_sync) begin
			count <= 4'd0;
		end
		else begin
			count <= count + 1;
		end
	end
endmodule

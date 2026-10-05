module reset_sync (
	output reg  rst_sync,
	input  wire rst_async,
	input  wire clk
);
	reg stage1;
	// De-assert reset is sync
	// Assert reset is async
	always @(posedge clk or posedge rst_async) begin
		if (rst_async) begin
			stage1   <= 1'b1;
			rst_sync <= 1'b1;
		end
		else begin
			stage1   <= 1'b0;
			rst_sync <= stage1;
		end
	end	
endmodule

module cdc_sync(
	output reg sync_out,
	input      async_in,
	input      clk
);
	reg stage1_ff;

	always @(posedge clk) begin
		stage1_ff <= async_in;
		sync_out  <= stage1_ff;
	end
endmodule

module top(
	output synced_reset,
	output synced_signal,
	input  async_signal,
	input  async_reset,
	input  clk
);

	reset_sync u_reset_sync (
		.clk(clk),
		.async_reset(async_reset),
		.sync_reset(synced_reset)
	);

	cdc_sync u_cdc_sync(
		.clk(clk),
		.async_in(async_signal),
		.sync_out(synced_signal)
	);
endmodule

module sync2_stage (
	output reg  sync_out,
	input  wire async_in,
	input  wire clk
);
	reg sync_ff1;
	always @(posedge clk) begin
		sync_ff1 <= async_in;
		sync_out <= sync_ff1;
	end
endmodule

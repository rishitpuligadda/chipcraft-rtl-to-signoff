module sync3_stage (
	output reg  sync_out,
	input  wire async_in, 
	input  wire clk
);
	reg sync_ff1, sync_ff2;
	always @(posedge clk) begin
		sync_ff1 <= async_in;
		sync_ff2 <= sync_ff1;
		sync_out <= sync_ff2;
	end	
endmodule

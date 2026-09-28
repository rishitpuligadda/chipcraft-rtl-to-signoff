// This is a simple assign based mux. In real silicon, glitch free muxing
// needs special handling with proper handshakes.
module clk_mux (
	output clk_out,
	input  sel,
	input  clk0,
	input  clk1
);
	assign clk_out = (sel == 1'b0) ? clk0: clk1;
endmodule

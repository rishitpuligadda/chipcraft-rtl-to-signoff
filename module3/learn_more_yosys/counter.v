module counter (
	output reg [15:0] z,
	input      [7:0]  a, b, x, y,
	input			  sel,
	input			  clk
);
	always @(posedge clk) begin
		if (sel == 1'b0) begin
			z = a * b;
		end
		else begin
			z = x * y;
		end
	end
endmodule

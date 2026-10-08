module pos_latch_gating (
	output reg  [3:0] count, 
	output wire       gated_clk,
	input  wire       clk,
	input  wire       rst,
	input  wire       en
);
	reg en_latch;

	always @(clk or en) begin
		if (clk) begin
			en_latch = en;
		end
	end

	assign gated_clk = clk & en_latch;

	always @(posedge gated_clk or posedge rst) begin
		if (rst) begin
			count <= 4'd0;
		end
		else begin
			count <= count + 1;
		end
	end
endmodule

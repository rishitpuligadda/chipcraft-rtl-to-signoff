module reset_stretch (
	output wire srst_n,
	input  wire arst_n,
	input  wire clk
);
	reg [1:0] hold_cnt;
	reg       hold;

	always @(posedge clk or negedge arst_n) begin
		if (!arst_n) begin
			hold     <= 1'b1;
			hold_cnt <= 2'd0;
		end
		else if (hold) begin
			if (hold_cnt == 2) begin
				hold <= 1'b0;
			end
			else begin
				hold_cnt <= hold_cnt + 1'b1;
			end
		end
	end
	assign srst_n = ~hold;
endmodule

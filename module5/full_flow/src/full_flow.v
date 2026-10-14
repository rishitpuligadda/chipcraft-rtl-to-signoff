module full_flow (
	output clk_out,
	input  clk,
	input  rst
);
	reg [1:0] pos_cnt;
	reg [1:0] neg_cnt;

	always @(posedge clk) begin
		if (rst) begin
			pos_cnt <= 0;
		end
		else if (pos_cnt == 2) begin
			pos_cnt <= 0;
		end
		else begin
			pos_cnt <= pos_cnt + 1;
		end
	end

	always @(negedge clk) begin
		if (rst) begin
			neg_cnt <= 0;
		end
		else if (neg_cnt == 2) begin
			neg_cnt <= 0;
		end	
		else begin
			neg_cnt <= neg_cnt + 1;
		end
	end

	assign clk_out = ((pos_cnt == 2) | (neg_cnt == 2));
endmodule

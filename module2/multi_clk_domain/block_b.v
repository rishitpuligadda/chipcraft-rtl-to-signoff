module block_b (
	output reg       rd_en,
	input      [7:0] rd_data,
	input            rd_empty,
	input            rd_rst,
	input            rd_clk
);
	always @(posedge rd_clk or posedge rd_rst) begin
		if (rd_rst) begin
			rd_en <= 0;
		end
		else begin
			rd_en <= !rd_empty;
		end
	end
endmodule

module reset_top (
	output wire [7:0] count,
	output wire       srst_n,
	input  wire       arst_n,
	input  wire       clk
);
	reset_stretch u_rst (
		.clk(clk), .arst_n(arst_n),
		.srst_n(srst_n)
	);

	reg [7:0] cnt_q;

	always @(posedge clk or negedge srst_n) begin
		if (!srst_n) begin
			cnt_q <= 8'h00;
		end
		else begin
			cnt_q <= cnt_q + 1;
		end
	end
	assign count = cnt_q;
endmodule

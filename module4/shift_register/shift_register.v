module shift_register (
	output reg  [7:0] q,
	input  wire       data_in,
	input  wire       clk,
	input  wire       rst
);
	always @(posedge clk or posedge rst) begin
		if (rst) begin
			q <= 8'd0;
		end
		else begin
			q <= {q[6:0], data_in};
		end
	end
endmodule

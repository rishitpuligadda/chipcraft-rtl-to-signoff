module CSADD (
	output reg sum,
	input      x, y,
	input      clk,
	input      rst
);
	reg  sc;
	wire hsum1, hcol1;
	wire hsum2, hcol2;

	assign hsum1 = y ^ sc;
	assign hcol1 = y & sc;
	assign hsum2 = x ^ hsum1;
	assign hcol2 = x & hsum1;

	always @(posedge clk or posedge rst) begin
		if (rst) begin
			sum <= 1'b0;
			sc  <= 1'b0;
		end
		else begin
			sum <= hsum2;
			sc  <= hcol1 ^ hcol2;
		end
	end
endmodule

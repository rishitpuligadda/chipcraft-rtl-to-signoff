module clk_divider (
	output reg clk_out,
	input      clk_in,
	input      rst
);
	reg [1:0] counter;
	always @(posedge clk_in or posedge rst) begin
		if (rst) begin
			counter <= 2'b0;
			clk_out <= 0;
		end
		else begin
			counter <= counter + 1;
			if (counter == 2'b11) begin
				clk_out <= ~clk_out;
			end	
		end
	end
endmodule

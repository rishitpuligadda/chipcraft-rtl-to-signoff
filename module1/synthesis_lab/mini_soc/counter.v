module counter (
	output reg [3:0] count,
	input  wire      clk,
	input  wire      rst
);

	always @(posedge clk) begin
		if (rst) 
			count <= '0;
		else
			count <= count + 1;
	end
endmodule

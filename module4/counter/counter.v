module counter (
	output reg [3:0] count,
	input            clk,
	input            rst
);
	always @(posedge clk) begin
		if (!rst) begin
			count <= 4'd0;
		end
		else begin
			count <= count + 1;	
		end
	end
endmodule

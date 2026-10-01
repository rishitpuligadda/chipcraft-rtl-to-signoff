module counter #(parameter WIDTH = 8) (
	output reg [WIDTH-1:0] count,
	input                  clk,
	input                  rst,
	input                  en
);
	always @(posedge clk or posedge rst) begin
		if (rst) begin
			count <= '0;
		end
		else if (en) begin
			count <= count + 1;
		end
	end
endmodule

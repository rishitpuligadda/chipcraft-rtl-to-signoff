module alu(
	output reg [3:0] y,
	input      [3:0] a,
	input      [3:0] b,
	input            sel
);
	always @(*) begin
		case (sel)
			1'b0:    y = a & b;
			1'b1:    y = a + b;
			default: y = 4'b0000;
		endcase
	end
endmodule

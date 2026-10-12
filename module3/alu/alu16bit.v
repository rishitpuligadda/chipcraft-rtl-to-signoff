module alu16bit (
	output reg [15:0] alu_out,
	output reg        carry_out,
	input      [15:0] a, b,
	input      [3:0]  alu_sel
);
	reg [16:0] tmp;

	always @(*) begin
		tmp       = 17'd0;
		alu_out   = 16'd0;
		carry_out = 1'b0;

		case (alu_sel) 
			4'b0000: tmp = a + b;
			4'b0001: tmp = a - b;
			4'b0010: tmp = a & b;
			4'b0011: tmp = a | b;
			4'b0100: tmp = a ^ b;
			4'b0101: tmp = ~(a | b);
			4'b0110: tmp = ~(a & b);
			4'b0111: tmp = ~(a ^ b);
			4'b1000: tmp = a << 1;
			4'b1001: tmp = a >> 1;
			4'b1010: tmp = {a[14:0], a[15]};
			4'b1011: tmp = {a[0], a[15:1]};
			4'b1100: tmp = (a > b)  ? 16'd1 : 16'd0;
			4'b1101: tmp = (a == b) ? 16'd1 : 16'd0;
			default: tmp = 17'd0;
		endcase
		alu_out   = tmp[15:0];
		carry_out = tmp[16];
	end
endmodule

module decoder (
	output reg [15:0] out,
	input      [3:0]  in
);
	always @(*) begin
		out = 16'h0;
		case (in) 
			4'd0:    out[0]  = 1'b1;
			4'd1:    out[1]  = 1'b1;
			4'd2:    out[2]  = 1'b1;
			4'd3:    out[3]  = 1'b1;
			4'd4:    out[4]  = 1'b1;
			4'd5:    out[5]  = 1'b1;
			4'd6:    out[6]  = 1'b1;
			4'd7:    out[7]  = 1'b1;
			4'd8:    out[8]  = 1'b1;
			4'd9:    out[9]  = 1'b1;
			4'd10:   out[10] = 1'b1;
			4'd11:   out[11] = 1'b1;
			4'd12:   out[12] = 1'b1;
			4'd13:   out[13] = 1'b1;
			4'd14:   out[14] = 1'b1;
			4'd15:   out[15] = 1'b1;
			default: out = 16'd0;
		endcase
	end	
endmodule

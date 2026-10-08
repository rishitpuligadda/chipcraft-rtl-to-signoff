//Even if state and done aren't changing logically, 
//they are still assigned every clock cycle
//leading to unnecessary toggling
module inefficient_fsm (
	output reg [1:0] state,
	output reg       done,
	input            start,
	input            clk,
	input            rst
);
	always @(posedge clk or posedge rst) begin
		if (rst) begin
			state <= 0;
			done  <= 0;
		end
		else begin
			state <= state + 1;
			if (state == 2) begin
				done <= 1;
			end
		end
	end
endmodule

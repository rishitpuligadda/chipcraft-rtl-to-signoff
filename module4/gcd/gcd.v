module gcd (
	output reg [31:0] result,
	output reg        done,
	input      [31:0] A,
	input      [31:0] B,
	input             clk,
	input             rst,
	input             start,
);
	localparam IDLE = 2'd0, 
			   RUN  = 2'd1,
			   DONE = 2'd2;

	reg [1:0]  state;
	reg [31:0] a_reg, b_reg;

	always @(posedge clk or posedge rst) begin
		if (rst) begin
			state  <= IDLE;
			done   <= 0;
			result <= 0;
			a_reg  <= 0;
			b_reg  <= 0;
		end
		else begin
			case (state)
				IDLE: begin
					done <= 0;
					if (start) begin
						a_reg <= A;
						b_reg <= B;
						state <= RUN;
					end
				end

				RUN: begin
					if (b_reg == 0) begin
						result <= a_reg;
						done   <= 1;
						state  <= DONE;
					end
					else if (a_reg > b_reg) begin
						a_reg <= a_reg - b_reg;
					end
					else begin
						b_reg <= b_reg - a_reg;
					end
				end

				DONE: begin
					if (!start) begin
						state <= IDLE;
						done  <= 0;
					end
				end

				default: begin
					state  <= IDLE;
					done   <= 0;
					result <= 0;
				end
			endcase
		end
	end
endmodule

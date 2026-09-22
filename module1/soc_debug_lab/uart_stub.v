module uart_stub(
	output reg       tx_done,
	input      [7:0] tx_data,
	input            tx_en,
	input            rst_n,
	input            clk
);

	always @(posedge clk or negedge rst_n) begin
		if (!rst_n) 
			tx_done <= 1'b0;
		else if (tx_en)
			tx_done <= 1'b1;
		else
			tx_done <= 1'b0;
	end	
endmodule

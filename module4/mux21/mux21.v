module mux21 (
	output      y,
	input [1:0] i,
	input       s
);
	assign y = s ? i[1] : i[0];
endmodule

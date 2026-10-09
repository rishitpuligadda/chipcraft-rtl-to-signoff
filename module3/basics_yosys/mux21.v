module mux21 (
	output out,
	input  sel,
	input  a,
	input  b
);
	assign out = sel ? b : a;
endmodule

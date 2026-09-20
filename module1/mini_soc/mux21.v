module mux21(
	output [1:0] y,
	input  [1:0] in0,
	input  [1:0] in1,
	input       sel
);
	assign y = sel ? in1 : in0;
endmodule

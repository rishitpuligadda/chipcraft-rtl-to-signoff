module fa (
	output cout, sum,
	input  a, b, cin
);
	assign sum  = a ^ b ^ cin;
	assign cout = (a & b) | (b & cin) | (a & cin);
endmodule

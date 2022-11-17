module half_subtracter(
	input a, b,
	output q, c_out
	);
	assign q = a ^ b;
	assign c_out = ~a & b;
endmodule

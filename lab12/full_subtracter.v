module full_subtracter(
	input c_in, a, b,
	output q, c_out
	);
	
	wire temp, carry1, carry2;
	
	half_subtracter(a, b, temp, carry1);
	half_subtracter(temp, c_in, q, carry2);
	assign c_out = carry1 | carry2;
	
endmodule

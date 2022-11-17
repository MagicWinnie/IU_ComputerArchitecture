module adder(
	input [3:0] a, b,
	output [3:0] q,
	output c_out
	);
	wire temp_c_out_1, temp_c_out_2, temp_c_out_3, temp_c_out_4, temp_c_out_5, temp_c_out_6;
	half_adder(a[0], b[0], q[0], temp_c_out_1);
	assign temp_c_out_2 = temp_c_out_1;
	full_adder(temp_c_out_2, a[1], b[1], q[1], temp_c_out_3);
	assign temp_c_out_4 = temp_c_out_3;
	full_adder(temp_c_out_4, a[2], b[2], q[2], temp_c_out_5);
	assign temp_c_out_6 = temp_c_out_5;
	full_adder(temp_c_out_6, a[3], b[3], q[3], c_out);
endmodule

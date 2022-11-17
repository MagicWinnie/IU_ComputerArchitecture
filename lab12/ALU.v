module ALU(
	input [3:0] a, b,
	input opcode,
	output [3:0] q,
	output c_out
	);
	wire c_out_sum, c_out_sub;
	wire [3:0] sum, sub;
	adder(a, b, sum, c_out_sum);
	subtracter(a, b, sub, c_out_sub);
	mux4bit(sum, sub, c_out_sum, c_out_sub, opcode, q, c_out);
endmodule

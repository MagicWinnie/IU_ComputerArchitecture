module mux4bit(
	input [3:0] add, sub,
	input c_in_a, c_in_b, opcode,
	output reg [3:0] q,
	output reg c_out
	);
	always @(*)
	begin
		c_out = (c_in_a & ~opcode) | (c_in_b & opcode);
		q[0] = (add[0] & ~opcode) | (sub[0] & opcode);
		q[1] = (add[1] & ~opcode) | (sub[1] & opcode);
		q[2] = (add[2] & ~opcode) | (sub[2] & opcode);
		q[3] = (add[3] & ~opcode) | (sub[3] & opcode);
	end
endmodule

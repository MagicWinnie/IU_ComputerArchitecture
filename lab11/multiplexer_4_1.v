module multiplexer_4_1
(
	input input0, // input 1 pin
	input input1, // input 1 pin
	input input2, // input 1 pin
	input input3, // input 1 pin
	input [1:0] sel_2, // select bus
	output reg out // output pin
);
	always @(*)
	begin
		// inverted logic => input pin are in reverse order
		case (sel_2)
			2'b00:
				out = input3;
			2'b01:
				out = input2;
			2'b10:
				out = input1;
			2'b11:
				out = input0;
		endcase
	end
endmodule

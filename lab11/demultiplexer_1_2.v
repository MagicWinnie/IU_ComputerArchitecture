module demultiplexer_1_2
(
	input din, // data pin
	input sel, // select pin
	output reg dout0, // output1 pin
	output reg dout1  // output2 pin
);
	reg din_inv, sel_inv, dout0_inv, dout1_inv;
	always @(*)
	begin
		// invert input args
		din_inv = (~din);
		sel_inv = (~sel);
		case (sel_inv)
			1'b0:
			begin
				dout0_inv = din_inv;
				dout1_inv = 0;
			end
			1'b1:
			begin
				dout0_inv = 0;
				dout1_inv = din_inv;
			end
		endcase
	// invert output
	dout0 = (~dout0_inv);
	dout1 = (~dout1_inv);
	end
endmodule

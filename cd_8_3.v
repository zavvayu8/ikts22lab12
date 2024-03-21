module cd_8_3 (
		input [7:0] mng,
		output reg[3:0]addr
);
always @(*) case(mng)
		8'b00000001: addr=3'b000;
		8'b00000010: addr=3'b001;
		8'b00000100: addr=3'b010;
		8'b00001000: addr=3'b011;
		8'b00010000: addr=3'b100;
		8'b00100000: addr=3'b101;
		8'b01000000: addr=3'b110;
		8'b10000000: addr=3'b111;
		default addr=3'b000;
		endcase
endmodule
		
		
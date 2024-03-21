module dc_3_8 (
					input[2:0] addr,
					output reg [7:0] mng
);
always @(*) case(addr)
				3'd0: mng = 8'b00000001;
				3'd1: mng = 8'b00000010;
				3'd2: mng = 8'b00000100;
				3'd3: mng = 8'b00001000;
				3'd4: mng = 8'b00010000;
				3'd5: mng = 8'b00100000;
				3'd6: mng = 8'b01000000;
				3'd7: mng = 8'b10000000;
				default: mng= 8'b00000000;
				endcase
endmodule
module ALU(input [3:0] ALUop,
           input [31:0] ina,inb,
           output zero,
           output reg [31:0] out);

always @(*)
	begin
	if (ALUop == 4'b0010)
		out <= ina + inb;
	else if (ALUop == 4'b0110)
		out <= ina - inb;
	else if (ALUop == 4'b0000)
		out <= ina & inb;
	else if (ALUop == 4'b0001)
		out <= ina | inb;
	else if (ALUop == 4'b0011)
		out <= ina ^ inb;
	if (out == 32'b0)
		zero = 1'b1;
	else
		zero = 1'b0;
	end
end
endmodule




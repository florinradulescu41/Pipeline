module ALUcontrol(input [1:0] ALUop,
                  input [6:0] funct7,
                  input [2:0] funct3,
                  output reg [3:0] ALUinput);

always @(*)
	begin
	if (ALUop == 2'b10)
		begin
		if (funct3 == 3'b000)
			begin
			if (funct7 == 7'b0000000)
				ALUinput = 4'b0010;	//ADD
			else if (funct7 == 7'b0100000)
				ALUinput = 4'b0110;	//SUB
			end
		else if (funct3 == 3'b111)
			ALUinput = 4'b0000;	//AND
		else if (funct3 == 3'b110)
			ALUinput = 4'b0001;	//OR
		else if (funct3 == 3'b100)	
			ALUinput = 4'b0011;	//XOR
		else if (funct3 == 3'b101)
			begin
			if (funct7 == 7'b0000000)
				ALUinput = 4'b0101;	//SRLI, SRL
			else if (funct7 == 7'b0100000)
				ALUinput = 4'b1001;	//SRAI, SRA
			end
		else if (funct3 == 3'b001)
			ALUinput = 4'b0100;	//SLLI, SLL	
		else if (funct3 == 3'b011)
			ALUinput = 4'b0111;	//SLTU
		else if (funct3 == 3'b010)
			ALUinput = 4'b1000;	//SLT
		end
	else if (ALUop == 2'b00)
		ALUinput = 4'b0010;	//LD, SD
	else if (ALUop == 2'b01)
		begin
		if (funct3 == 3'b000 || funct3 == 3'b001)	
			ALUinput = 4'b0110;	//BEQ, BNE
		else if (funct3 == 3'b100 || funct3 == 3'b101)	
			ALUinput == 4'1000;	//BLT, BGE
		else if (funct3 == 3'b110 || funct3 == 3'b111)	
			ALUinput = 4'b0111;	//BLTU, BGEU
		end
end
endmodule

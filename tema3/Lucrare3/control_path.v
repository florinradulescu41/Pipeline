module control_path(input [6:0] opcode,
                    input control_sel,
                    output reg MemRead,MemtoReg,MemWrite,RegWrite,Branch,ALUSrc,
                    output reg [1:0] ALUop);

always @(*)
	begin
	if (control_sel == 1'b1)	//CONTROL_SEL = 1
		begin
		MemRead = 1'b0;
		MemtoReg = 1'b0;
		MemWrite = 1'b0;
		RegWrite = 1'b0;
		Branch = 1'b0;
		ALUSrc = 1'b0;
		ALUop [0] = 1'b0;
		ALUop [1] = 1'b0;
		end
	else if (opcode == 7'b0110011)	//R-format
		begin
		MemRead = 1'b0;
		MemtoReg = 1'b0;
		MemWrite = 1'b0;
		RegWrite = 1'b1;
		Branch = 1'b0;
		ALUSrc = 1'b0;
		ALUop [0] = 1'b0;
		ALUop [1] = 1'b1;
		end
	else if (opcode == 7'b0000011)	//ld
		begin
		MemRead = 1'b1;
		MemtoReg = 1'b1;
		MemWrite = 1'b0;
		RegWrite = 1'b1;
		Branch = 1'b0;
		ALUSrc = 1'b1;
		ALUop [0] = 1'b0;
		ALUop [1] = 1'b0;
		end
	else if (opcode == 7'b0100011)	//sd
		begin
		MemRead = 1'b0;
		MemWrite = 1'b1;
		RegWrite = 1'b0;
		Branch = 1'b0;
		ALUSrc = 1'b1;
		ALUop [0] = 1'b0;
		ALUop [1] = 1'b0;
		end
	else if (opcode == 7'b1100011)	//beq
		begin
		MemRead = 1'b0;
		MemWrite = 1'b0;
		RegWrite = 1'b0;
		Branch = 1'b1;
		ALUSrc = 1'b0;
		ALUop [0] = 1'b1;
		ALUop [1] = 1'b0;
		end
end
endmodule
		
				



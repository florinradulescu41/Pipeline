`include "registers.v"
`include "imm_gen.v"

module ID(input clk, input [31:0] PC_ID, INSTRUCTION_ID, input RegWrite_WB, input [31:0] ALU_DATA_WB, input [4:0] RD_WB, output [31:0] IMM_ID, output [31:0] REG_DATA1_ID, REG_DATA2_ID, output [2:0] FUNCT3_ID, output [6:0] FUNCT7_ID, output [6:0] OPCODE_ID, output [4:0] RD_ID, output [4:0] RS1_ID, output [4:0] RS2_ID);

	wire [31:0] rdo1;
	wire [31:0] rdo2;
	wire [31:0] imo;

	registers R1(clk, RegWrite_WB, INSTRUCTION_ID [19:15], INSTRUCTION_ID [24:20], RD_WB, ALU_DATA_WB, rdo1, rdo2);
	imm_gen im1(INSTRUCTION_ID, imo);

	assign REG_DATA1_ID = rdo1;
	assign REG_DATA2_ID = rdo2;
	assign IMM_ID = imo;
	assign FUNCT3_ID = INSTRUCTION_ID [14:12];
	assign FUNCT7_ID = INSTRUCTION_ID [31:25];
	assign OPCODE_ID = INSTRUCTION_ID [6:0];
	assign RD_ID = INSTRUCTION_ID [11:7];
	assign RS1_ID = INSTRUCTION_ID[19:15];
	assign RS2_ID = INSTRUCTION_ID[24:20];

endmodule

`include "pipeline.v"
`include "IF.v"
`include "ID.v"

module RISC_V_IF_ID(input clk, reset, input IF_ID_write, input PCSrc, PC_write, input [31:0] PC_Branch, input RegWrite_WB, input [31:0] ALU_DATA_WB, input [4:0] RD_WB, output [31:0] PC_ID, output [31:0] INSTRUCTION_ID, output [31:0] IMM_ID, output [31:0] REG_DATA1_ID, REG_DATA2_ID, output [2:0] FUNCT3_ID, output [6:0] FUNCT7_ID, output [6:0] OPCODE_ID, output [4:0] RD_ID, output [4:0] RS1_ID, output [4:0] RS2_ID);

wire [31:0] PC_IF;
wire [31:0] INSTRUCTION_IF;
wire [31:0] PC_IDo;
wire [31:0] INSTRUCTION_IDo;
wire [31:0] IMM_IDo;
wire [31:0] REG_DATA1_IDo;
wire [31:0] REG_DATA2_IDo;
wire [2:0] FUNCT3_IDo;
wire [6:0] FUNCT7_IDo;
wire [6:0] OPCODE_IDo;
wire [4:0] RD_IDo;
wire [4:0] RS1_IDo;
wire [4:0] RS2_IDo;

IF insf(clk, reset, PCSrc, PC_write, PC_Branch, PC_IF, INSTRUCTION_IF);

reg_pipe rp(clk, IF_ID_write, PC_IF, INSTRUCTION_IF, PC_IDo, INSTRUCTION_IDo);

ID insd(clk, PC_IDo, INSTRUCTION_IDo, RegWrite_WB, ALU_DATA_WB, RD_WB, IMM_IDo, REG_DATA1_IDo, REG_DATA2_IDo, FUNCT3_IDo, FUNCT7_IDo, OPCODE_IDo, RD_IDo, RS1_IDo, RS2_IDo);

assign INSTRUCTION_ID = INSTRUCTION_IDo;
assign PC_ID = PC_IDo;
assign IMM_ID = IMM_IDo;
assign REG_DATA1_ID = REG_DATA1_IDo;
assign REG_DATA2_ID = REG_DATA2_IDo;
assign FUNCT3_ID = FUNCT3_IDo;
assign FUNCT7_ID = FUNCT7_IDo;
assign OPCODE_ID = OPCODE_IDo;
assign RD_ID = RD_IDo;
assign RS1_ID = RS1_IDo;
assign RS2_ID = RS2_IDo;

endmodule




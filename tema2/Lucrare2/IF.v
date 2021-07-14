`include "PC.v"
`include "mux2_1.v"
`include "instruction_memory.v"
`include "adder.v"

module IF(input clk, reset, PCSrc, PC_write, input [31:0] PC_Branch, output reg [31:0] PC_IF, output reg [31:0] INSTRUCTION_IF);

wire [31:0] PC_output;
wire [31:0] mux_output;
wire [31:0] adder_output;
wire [31:0] imem_output;
wire [31:0] four = 4;

reg [31:0] INSTRUCTION_IFreg;
reg [31:0] PC_IFreg;

PC pc1(clk, reset, PC_write, mux_output, PC_output);
mux2_1 m21(PC_Branch, adder_output, PCSrc, mux_output);
adder a1(PC_output, four, adder_output);
instruction_memory im1(adder_output [11:2], imem_output);

always @(posedge clk)
	begin
		 INSTRUCTION_IF <= imem_output;
		 PC_IF <= PC_output;
	end

endmodule

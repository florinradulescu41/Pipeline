module reg_pipe(input clk, input IF_ID_write, input [31:0] PC_IF, INSTRUCTION_IF, output reg [31:0] PC_ID, output reg [31:0] INSTRUCTION_ID);

always@(posedge clk) begin

	if (IF_ID_write)
		PC_ID <= PC_IF;
	if (IF_ID_write)
		INSTRUCTION_ID <= INSTRUCTION_IF;
end
endmodule


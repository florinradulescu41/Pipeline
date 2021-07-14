module registers(input clk, input reg_write, input [4:0] read_reg1, read_reg2, write_reg, input [31:0] write_data, output [31:0] read_data1, read_data2);

reg [31:0] Registers [31:0];
integer i;

initial begin
	for (i = 0; i < 32; i = i + 1)
		Registers[i] <= i;
	end

always @(posedge clk)
	begin
		if (reg_write == 1'b1)
			Registers[write_reg] <= write_data;
	end

assign read_data1 = Registers[read_reg1];
assign read_data2 = Registers[read_reg2];

endmodule

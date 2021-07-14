module data_memory(input clk,       
                   input mem_read,
                   input mem_write,
                   input [31:0] address,
                   input [31:0] write_data,
                   output reg [31:0] read_data
                   );

always @(posedge clk)
	begin
	if (mem_read = 1'b1)
		read_data <= address;
	else if (mem_write = 1'b1)
		address <= write_data;
	end
endmodule

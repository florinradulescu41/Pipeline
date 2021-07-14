module PC(input clk, res, write, input [31:0] in, output reg [31:0] out);

always @(posedge clk)
begin
	if (res == 1'b1)
		out <= 32'b0;
	else if (write == 1'b1)
		out <= in;
end
endmodule

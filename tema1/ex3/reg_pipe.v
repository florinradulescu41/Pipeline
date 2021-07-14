module reg_pipe(input clk, input [11:0] in, output reg [11:0] out);

always@(posedge clk) begin
	out <= in;
end
endmodule

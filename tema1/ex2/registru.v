module registru(datain, clk, EN, RESET, INC, DEC, SHR, SHL, dataout);

input clk;
input EN;
input RESET;
input INC;
input DEC;
input SHR;
input SHL;
input [3:0] datain;
output reg [3:0] dataout;

always @(posedge clk)
begin 
	if (RESET)
		dataout <= 4'b0;
	else if (EN)
		dataout <= datain;
	else if (INC)
		dataout <= dataout + 1;
	else if (DEC)
		dataout <= dataout - 1;
	else if (SHR)
		dataout <= dataout >> 1;
	else if (SHL)
		dataout <= dataout << 1;
end

endmodule


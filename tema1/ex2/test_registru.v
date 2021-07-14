`include "registru.v"
module test_registru;

reg clk = 0;
reg EN = 1;
reg INC = 0;
reg DEC = 0;
reg RESET = 0;
reg SHR = 0;
reg SHL = 0;
reg [3:0] datain;
wire [3:0] dataout;

always #1 clk = !clk;

initial $dumpfile("testregistru.vcd");
initial $dumpvars(0, test_registru);

registru r(datain, clk, EN, RESET, INC, DEC, SHR, SHL, dataout);

initial begin

	#5 datain = 1;
	#5 datain = 10;
	#5 EN = 0; datain = 100;
	#5 SHL = 1; datain = 1;
	#5 INC = 1; datain = 10;
	#5 EN = 1; datain = 100;
	#5 RESET = 1; datain = 1;
	#5 SHR = 1; datain = 10;
	#5 RESET = 0; datain = 100;
	#5 DEC = 1; datain = 1;
	#5 EN = 0; datain = 10;
	#10 $finish;

end
endmodule

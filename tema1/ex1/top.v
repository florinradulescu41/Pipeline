`include "mux8_1.v"
`include "and_gate.v"
`include "not_gate.v"
`include "or_gate.v"
module top; 

wire Y;
reg IN0, IN1, IN2, IN3, IN4, IN5, IN6, IN7, S0, S1, S2;

m81 mux(IN0, IN1, IN2, IN3, IN4, IN5, IN6, IN7, S0, S1, S2, Y);

initial $dumpfile("top.vcd");
initial $dumpvars(0, top);

initial 
	begin

	IN0=1'b0;
	IN1=1'b0;
	IN2=1'b0;
	IN3=1'b0;
	IN4=1'b0;
	IN5=1'b0;
	IN6=1'b0;
	IN7=1'b0;
	S0=1'b0;
	S1=1'b0;
	S2=1'b0; 

	#500 $finish; 
end 

	always #1 IN0=~IN0;
	always #2 IN1=~IN1;
	always #3 IN2=~IN2;
	always #4 IN3=~IN3;
	always #5 IN4=~IN4;
	always #6 IN5=~IN5;
	always #7 IN6=~IN6;
	always #8 IN7=~IN7;
	always #9 S0=~S0;
	always #10 S1=~S1;
	always #11 S2=~S2;

endmodule

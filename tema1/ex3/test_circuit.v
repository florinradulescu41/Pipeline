`include "circuit.v"
`include "reg_pipe.v"
`include "multop.v"
`include "divop.v"
`include "subop.v"

module test_circuit;

wire [3:0] test_output;
reg clk = 0;
reg [3:0] test_a, test_b, test_c, test_d, test_e, test_f;

circuit c1(clk, test_a, test_b, test_c, test_d, test_e, test_f, test_output);

initial $dumpfile("test_circuit.vcd");
initial $dumpvars(0, test_circuit);

initial begin
	forever 
		#10 clk = ~clk;
end

initial begin

	#0 test_a <= 4'b0000; test_b <= 4'b0001; test_c <= 4'b1010; test_d <= 4'b1000; test_e <= 4'b0010; test_f <= 4'b1101;
	#20 test_a <= 4'b0010; test_b <= 4'b0101; test_c <= 4'b1110; test_d <= 4'b1001; test_e <= 4'b0000; test_f <= 4'b0101;
	#20 test_a <= 4'b0100; test_b <= 4'b0001; test_c <= 4'b1010; test_d <= 4'b1010; test_e <= 4'b0010; test_f <= 4'b1100;
	#20 test_a <= 4'b0100; test_b <= 4'b0101; test_c <= 4'b1110; test_d <= 4'b1000; test_e <= 4'b0110; test_f <= 4'b1001;
	#20 test_a <= 4'b0100; test_b <= 4'b0101; test_c <= 4'b0010; test_d <= 4'b1100; test_e <= 4'b0110; test_f <= 4'b1001;
	#20 test_a <= 4'b0000; test_b <= 4'b0001; test_c <= 4'b1010; test_d <= 4'b1001; test_e <= 4'b0010; test_f <= 4'b1101;
	#20 test_a <= 4'b1110; test_b <= 4'b1101; test_c <= 4'b1111; test_d <= 4'b1011; test_e <= 4'b1100; test_f <= 4'b1000;
	#20 test_a <= 4'b1100; test_b <= 4'b1001; test_c <= 4'b1010; test_d <= 4'b1010; test_e <= 4'b1010; test_f <= 4'b1001;
	#20 test_a <= 4'b0101; test_b <= 4'b0101; test_c <= 4'b1110; test_d <= 4'b1000; test_e <= 4'b0110; test_f <= 4'b1011;
	#20 test_a <= 4'b0110; test_b <= 4'b1100; test_c <= 4'b0011; test_d <= 4'b1101; test_e <= 4'b0010; test_f <= 4'b1100;
	#20 test_a <= 4'b0100; test_b <= 4'b0101; test_c <= 4'b1011; test_d <= 4'b1010; test_e <= 4'b0011; test_f <= 4'b1101;
	#20 test_a <= 4'b1010; test_b <= 4'b1001; test_c <= 4'b1110; test_d <= 4'b1011; test_e <= 4'b1010; test_f <= 4'b0101;
	#20 test_a <= 4'b1100; test_b <= 4'b0100; test_c <= 4'b1011; test_d <= 4'b1000; test_e <= 4'b0010; test_f <= 4'b0100;
	#20 test_a <= 4'b0111; test_b <= 4'b0101; test_c <= 4'b1010; test_d <= 4'b1100; test_e <= 4'b0110; test_f <= 4'b0001;
	#20 test_a <= 4'b1110; test_b <= 4'b1100; test_c <= 4'b0110; test_d <= 4'b1110; test_e <= 4'b0111; test_f <= 4'b1001;
	#60 $finish;

end

endmodule

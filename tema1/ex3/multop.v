module multop(op_mult1, op_mult2, out_mult);
input [3:0] op_mult1;
input [3:0] op_mult2;
output [3:0] out_mult;
assign #15 out_mult = op_mult1 * op_mult2;
endmodule

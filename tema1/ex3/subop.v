module subop(op_sub1, op_sub2, out_sub);
input [3:0] op_sub1;
input [3:0] op_sub2;
output [3:0] out_sub;
assign #10 out_sub = op_sub1 - op_sub2;
endmodule

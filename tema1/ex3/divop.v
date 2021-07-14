module divop(op_div1, op_div2, out_div);
input [3:0] op_div1;
input [3:0] op_div2;
output [3:0] out_div;
assign #20 out_div = op_div1 / op_div2;
endmodule

module mux2_1(input [31:0] ina, inb, input sel, output [31:0] out);

assign out = (sel) ? ina:inb;

endmodule

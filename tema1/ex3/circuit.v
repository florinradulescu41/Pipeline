module circuit(clk, a, b, c, d, e, f, o);

input clk;
input [3:0] a;
input [3:0] b;
input [3:0] c;
input [3:0] d;
input [3:0] e;
input [3:0] f;
output [3:0] o;

wire [3:0] rez_div1;
divop div1(a, b, rez_div1);
wire [3:0] rez_div2;
divop div2(c, d, rez_div2);
wire [3:0] rez_div3;
divop div3(e, f, rez_div3);

wire [11:0] out1;
reg_pipe rp1(clk, {rez_div3, rez_div2, rez_div1}, out1);

wire [3:0] factor1;
assign factor1 = out1[3:0];
wire [3:0] factor2;
assign factor2 = out1[7:4];
wire [3:0]scazator;
assign scazator = out1[11:8];

wire [3:0] rez_mult1;
multop mult1(factor1, factor2, rez_mult1);

wire [11:0] out2;
reg_pipe rp2(clk, {4'b0000, 4'b0000, rez_mult1}, out2);

wire [3:0] descazut;
assign descazut = out2[3:0];

wire [3:0] rez_sub1;
subop sub1(descazut, scazator, rez_sub1);

assign o = rez_sub1;

endmodule

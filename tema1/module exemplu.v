module exemplu(input clk, input a,
input [3:0] b,
output c);

reg [3:0] r [0:1023];

wire [3:0] w;

assign w = a&b;
assign c = a+b;

initial begin
   r <= 4'd123;

end


always@(a) begin

r <= a&b;

end

always@(posedge clk) begin

//logica comb.

end


endmodule

module testbench();

reg clk;
reg a;
reg [3:0] b;
wire c;

exemplu e(clk, a,b,c);


always
  #5 clk = ~clk;

initial begin

#0 a = 1; clk=0;

#10 b=2;

etc.

end

endmodule
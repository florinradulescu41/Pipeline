module instruction_memory(input [9:0] address, output reg [31:0] instruction);

reg [31:0] memInstr [1023:0];
initial $readmemh("code.mem", memInstr);
  always @(address) 
    begin
        instruction <= memInstr[address];
    end

endmodule




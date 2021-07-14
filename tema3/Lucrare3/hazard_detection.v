module hazard_detection(input [4:0] rd,
                        input [4:0] rs1,
                        input [4:0] rs2,
                        input MemRead,
                        output reg PCwrite,
                        output reg IF_IDwrite,
                        output reg control_sel);

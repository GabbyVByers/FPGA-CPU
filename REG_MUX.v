module REG_MUX (
	input  wire [1:0]  Select,
	input  wire [15:0] THE_REG0,
	input  wire [15:0] THE_REG1,
	input  wire [15:0] THE_REG2,
	input  wire [15:0] THE_REG3,
	output wire [15:0] THE_REG
);

assign THE_REG = (Select == 2'd0)? THE_REG0 :
                 (Select == 2'd1)? THE_REG1 :
                 (Select == 2'd2)? THE_REG2 :
                 (Select == 2'd3)? THE_REG3 : THE_REG0;

endmodule

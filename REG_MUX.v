module REG_MUX (
	input  wire [1:0]  Select,
	input  wire [15:0] R0,
	input  wire [15:0] R1,
	input  wire [15:0] R2,
	input  wire [15:0] R3,
	output wire [15:0] R
);

assign R = (Select == 2'd0)? R0 :
           (Select == 2'd1)? R1 :
           (Select == 2'd2)? R2 :
           (Select == 2'd3)? R3 : R0;

endmodule

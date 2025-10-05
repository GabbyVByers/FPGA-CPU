module SRC_MUX (
	input  wire [1:0]  SRC_SELECTION,
	input  wire [15:0] SRC0,
	input  wire [15:0] SRC1,
	input  wire [15:0] SRC2,
	input  wire [15:0] SRC3,
	output wire [15:0] SRC
);

assign SRC = (SRC_SELECTION == 2'd0)? SRC0 :
             (SRC_SELECTION == 2'd1)? SRC1 :
             (SRC_SELECTION == 2'd2)? SRC2 :
             (SRC_SELECTION == 2'd3)? SRC3 : SRC0;

endmodule

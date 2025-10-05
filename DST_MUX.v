module DST_MUX (
	input  wire [1:0]  DST_SELECTION,
	input  wire [15:0] DST0,
	input  wire [15:0] DST1,
	input  wire [15:0] DST2,
	input  wire [15:0] DST3,
	output wire [15:0] DST
);

assign DST = (DST_SELECTION == 2'd0)? DTS0 :
             (DST_SELECTION == 2'd1)? DTS1 :
             (DST_SELECTION == 2'd2)? DTS2 :
             (DST_SELECTION == 2'd3)? DTS3 : DST0;

endmodule

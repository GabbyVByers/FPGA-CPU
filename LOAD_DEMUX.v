module LOAD_DEMUX (
	input  wire [1:0] Select,
	input  wire       Load_DST,
	output wire       Load_R0,
	output wire       Load_R1,
	output wire       Load_R2,
	output wire       Load_R3
);

assign Load_R0 = (Select == 2'd0)? Load_DST : 0;
assign Load_R1 = (Select == 2'd1)? Load_DST : 0;
assign Load_R2 = (Select == 2'd2)? Load_DST : 0;
assign Load_R3 = (Select == 2'd3)? Load_DST : 0;

endmodule


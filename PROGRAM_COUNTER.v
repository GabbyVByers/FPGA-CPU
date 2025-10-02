module PROGRAM_COUNTER (
	input wire CLK,
	input wire RST,
	input wire INC,
	input wire LOAD,
	input wire EN,
	input wire [15:0] D,
	output wire [15:0] Q
);

reg [15:0] value;
assign Q = (EN)? value : 16'd0;

always @(posedge CLK) begin
	if (RST) begin
		value <= 16'd0;
	end
	else if (INC) begin
		value <= value + 1;
	end
	else if (LOAD) begin
		value <= value;
	end
end

endmodule


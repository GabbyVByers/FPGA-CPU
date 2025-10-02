module STACK_POINTER (
	input wire CLK,
	input wire RST,
	input wire INC,
	input wire DEC,
	input wire EN,
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
	else if (DEC) begin
		value <= value - 1;
	end
end

endmodule


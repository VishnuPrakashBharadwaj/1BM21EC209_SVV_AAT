/*
	Author : Vishnu Prakash Bharadwaj
	Module : stage6.sv
*/

module stage6(
	input [7:0] a0,
	input [7:0] a1,
	input [7:0] a2,
	output [7:0] y0,
	output [7:0] y1,
	output [7:0] y2
);
	wire [7:0] t0;

	// module instances
	tes tes0(a0, a1, y0, t0);
	tes tes1(t0, a2, y1, y2);

endmodule


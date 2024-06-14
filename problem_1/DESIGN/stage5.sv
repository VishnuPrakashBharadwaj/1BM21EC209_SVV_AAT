/*
	Author : Vishnu Prakash Bharadwaj
	Module : stage5.sv
*/

module stage5(
	input [7:0] a0,
	input [7:0] a1,
	input [7:0] a2,
	input [7:0] a3,
	output [7:0] y0,
	output [7:0] y1,
	output [7:0] y2,
	output [7:0] y3
);
	wire [7:0] t0, t1;

	// module instances
	tes tes0(a0, a1, y0, t0);
	tes tes1(t0, a2, y1, t1);
	tes tes2(t1, a3, y2, y3);

endmodule


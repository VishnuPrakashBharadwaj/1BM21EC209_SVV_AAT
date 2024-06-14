/*
	Author : Vishnu Prakash Bharadwaj
	Module : stage2.sv
*/
`include "tes.sv"

module stage2(
	input [7:0] a0,
	input [7:0] a1,
	input [7:0] a2,
	input [7:0] a3,
	input [7:0] a4,
	input [7:0] a5,
	input [7:0] a6,
	output [7:0] y0,
	output [7:0] y1,
	output [7:0] y2,
	output [7:0] y3,
	output [7:0] y4,
	output [7:0] y5,
	output [7:0] y6
);
	wire [7:0] t0, t1, t2, t3, t4, t5;

	// module instances
	tes tes0(a0, a1, y0, t0);
	tes tes1(t0, a2, y1, t1);
	tes tes2(t1, a3, y2, t2);
	tes tes3(t2, a4, y3, t3);
	tes tes4(t3, a5, y4, t4);
	tes tes5(t4, a6, y5, y6);

endmodule


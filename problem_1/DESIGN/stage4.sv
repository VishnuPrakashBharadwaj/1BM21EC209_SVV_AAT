/*
	Author : Vishnu Prakash Bharadwaj
	Module : stage4.sv
*/

module stage4(
	input [7:0] a0,
	input [7:0] a1,
	input [7:0] a2,
	input [7:0] a3,
	input [7:0] a4,
	output [7:0] y0,
	output [7:0] y1,
	output [7:0] y2,
	output [7:0] y3,
	output [7:0] y4
);
	wire [7:0] t0, t1, t2;

	// module instances
	tes tes0(a0, a1, y0, t0);
	tes tes1(t0, a2, y1, t1);
	tes tes2(t1, a3, y2, t2);
	tes tes3(t2, a4, y3, y4);

endmodule


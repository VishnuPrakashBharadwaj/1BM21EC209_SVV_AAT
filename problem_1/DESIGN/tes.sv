/*
	Author : Vishnu Prakash Bharadwaj
	Module : tes.sv
	Description : Compares 2 8-bit element and sorts them.
*/

module tes(
	input [7:0] a,
	input [7:0] b,
	output [7:0] y0,
	output [7:0] y1
);
	assign y0 = (a > b) ? b : a;
	assign y1 = (a > b) ? a : b;
endmodule


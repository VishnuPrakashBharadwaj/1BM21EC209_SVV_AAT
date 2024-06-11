interface sorter_if();
	logic [7:0] a0, a1, a2, a3, a4, a5, a6, a7;
	logic [3:0] y0, y1, y2, y3, y4, y5, y6, y7;

	modport DUT_MP(input a0, a1, a2, a3, a4, a5, a6, a7, output y0, y1, y2, y3, y4, y5, y6, y7);
	modport TEST_MP(output a0, a1, a2, a3, a4, a5, a6, a7, input y0, y1, y2, y3, y4, y5, y6, y7);
	// modport COV_MP(input clk,rst,req,grant);
endinterface


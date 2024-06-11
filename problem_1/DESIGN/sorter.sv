/*
	Author : Vishnu Prakash Bharadwaj
	Module : sorter.sv
	Description : Integrates all the stages
*/

module sorter(sorter_if.DUT_MP sortif);
	wire [7:0] s1y0, s1y1, s1y2, s1y3, s1y4, s1y5, s1y6;
	wire [7:0] s2y0, s2y1, s2y2, s2y3, s2y4, s2y5;
	wire [7:0] s3y0, s3y1, s3y2, s3y3, s3y4;
	wire [7:0] s4y0, s4y1, s4y2, s4y3;
	wire [7:0] s5y0, s5y1, s5y2;
	wire [7:0] s6y0, s6y1;

	// module instances
	stage1 s1(sortif.a0, sortif.a1, sortif.a2, sortif.a3, sortif.a4, sortif.a5, sortif.a6, sortif.a7, s1y0, s1y1, s1y2, s1y3, s1y4, s1y5, s1y6, sortif.y7);
	stage2 s2(s1y0, s1y1, s1y2, s1y3, s1y4, s1y5, s1y6, s2y0, s2y1, s2y2, s2y3, s2y4, s2y5, sortif.y6);
	stage3 s3(s2y0, s2y1, s2y2, s2y3, s2y4, s2y5, s3y0, s3y1, s3y2, s3y3, s3y4, sortif.y5);
	stage4 s4(s3y0, s3y1, s3y2, s3y3, s3y4, s4y0, s4y1, s4y2, s4y3, sortif.y4);
	stage5 s5(s4y0, s4y1, s4y2, s4y3, s5y0, s5y1, s5y2, sortif.y3);
	stage6 s6(s5y0, s5y1, s5y2, s6y0, s6y1, sortif.y2);
	tes tes0(s6y0, s6y1, sortif.y0, sortif.y1);

endmodule


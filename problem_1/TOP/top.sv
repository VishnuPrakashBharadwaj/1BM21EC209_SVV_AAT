`include "sorter_if.sv"
`include "sorter_test.sv"

module top;

	sorter_if sortif();
	sorter DUT_IF(sortif);
	sorter_test TEST_IF(sortif);

endmodule 

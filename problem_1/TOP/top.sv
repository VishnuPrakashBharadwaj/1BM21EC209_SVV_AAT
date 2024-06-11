module top;

	sorter_if sortif();
	sorter DUT_IF(arbif);
	sorter_test TEST_IF(arbif);

endmodule 

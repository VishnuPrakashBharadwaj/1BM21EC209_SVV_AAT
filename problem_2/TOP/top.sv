`include "even_ones_if.sv"
`include "even_ones_test.sv"

module top;
    bit clk;

    initial clk = 0;
    always #1 clk = ~clk;

    even_ones_if evenonesif(clk);
    even_ones DUT_IF(evenonesif);
    even_ones_test TEST_IF(evenonesif);

endmodule

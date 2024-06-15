`include "counter_test.sv"
`include "counter_if.sv"

module top;
    bit clk;

    initial clk = 0;
    always #5 clk = ~clk;

    counter_if counterif(clk);
    cnt_up_down DUT_IF(counterif);
    counter_test TEST_IF(counterif);

endmodule
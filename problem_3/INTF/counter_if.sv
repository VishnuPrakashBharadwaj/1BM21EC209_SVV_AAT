interface counter_if(input bit clk);
    logic en, M;
    logic [2:0] count;
    bit rst;

    modport DUT_MP(input clk, rst, en, M, output count);
    modport TEST_MP(output clk, rst, en, M, input count);
endinterface //counter_if(input bit clk)

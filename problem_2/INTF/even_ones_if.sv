interface even_ones_if(input bit clk);
    logic in, out;
    bit rst;

    modport DUT_MP(input clk, in, rst, output out);
    modport TEST_MP(output rst, clk, in, input out);

endinterface //even_ones_if(input bit clk)

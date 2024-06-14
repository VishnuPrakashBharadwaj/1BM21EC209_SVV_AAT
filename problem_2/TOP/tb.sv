module tb;

    reg x, clk, rst;
    wire y;

    // module instantiation
    even_ones DUT(clk, rst, x, y);

    // clock generation
    always #1 clk = ~clk;

    initial begin
        $dumpfile("output.vcd");
        $dumpvars;
        // 0 0 1 0 1 0 1 1 0 1 0 0 0 0 1 0 1 1
        clk = 0; rst = 1; x = 0;
    #2  rst = 0; x = 0;
    #2  x = 0;
    #2  x = 1;
    #2  x = 0;
    #2  x = 1;
    #2  x = 0;
    #2  x = 1;
    #2  x = 1;
    #2  x = 0;
    #2  x = 1;
    #2  x = 0;
    #2  x = 0;
    #2  x = 0;
    #2  x = 0;
    #2  x = 1;
    #2  x = 0;
    #2  x = 1;
    #2  x = 1;
    #2  x = 0;
    #10 $finish;
    end
    
endmodule
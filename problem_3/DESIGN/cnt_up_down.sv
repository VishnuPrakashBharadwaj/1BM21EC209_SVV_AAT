// module cnt_up_down(input clk, rst, en, M, output [2:0] count);
module cnt_up_down(counter_if.DUT_MP counterif);
   reg[2:0] R;
   assign counterif.count = counterif.M ? R + counterif.en : R - counterif.en;
   always @ (posedge counterif.clk or posedge counterif.rst)
      R <= counterif.rst ? 3’d0 : counterif.count;
endmodule
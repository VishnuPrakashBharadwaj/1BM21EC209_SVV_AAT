module cnt_up_dwn(input clk, rst, en, M, output [2:0] count);
   reg[2:0] R;
   assign count = M ? R + en : R - en;
   always @ (posedge clk or posedge rst)
      R <= rst ? 3’d0 : count;
endmodule
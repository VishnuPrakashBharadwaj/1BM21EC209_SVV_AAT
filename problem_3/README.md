# Problem 3
## Problem Statement
There is a 3-bit up-down counter that is controlled with an enable(en) and mode(M). The verilog behavior described for the design is as given below:
   ```verilog
   module cnt_up_dwn(input clk, rst, en, M, output [2:0] count);
      reg[2:0] R;
      assign count = M ? R + en : R - en;
      always@(posedge clk or posedge rst)
         R <= rst ? 3’d0 : count;
   endmodule
   ```
   - Describe the interface for this DUT and testbench, describe the transactor, receiver and driver.
   - If specification says 'en' is synchronous to clock, identify a test case and the assertion property that identifies this bug.
   
   Waveform for reference:
   ![Screenshot 2024-06-02 210733](https://github.com/VishnuPrakashBharadwaj/1BM21EC209_SVV_AAT/assets/39427770/8601cae3-fa81-484c-84a4-7216b7d63536)

## Solution

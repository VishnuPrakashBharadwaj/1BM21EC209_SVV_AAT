# SystemVerilog and Verification - AAT
Name : Vishnu Prakash Bharadwaj <br>
USN : 1BM21EC209 <br>
Course : SVV <br>
Course Code : 22EC6PE2SV <br>
Faculty Incharge : Dr. Jeeru Dinesh Reddy <br>

## Problem statements
1. Identify a transactor that helps in verifying a DUT that sorts 8 bit values on A,B,C,D,E,F,G and H in ascending order. Implement the test environment that handles all the possible cases.
2. If the logic design has streaming 1 bit input through X , then the logic is to detect past two values along with the present value and give Z as 1 if there are exactly 2 ones otherwise 0. <br>
   Input and Output streams:

   ```
   X : 0 0 1 0 1 0 1 1 0 1 0 0 0 0 1 0 1 1
   Z : 0 0 0 0 1 0 1 1 1 1 0 0 0 0 0 0 1 1
   ```

   - Design a transactor for driving this random input.
   - Apply constraints to the randomized data to verify the required scenarios.
   - How do we verify this property through assertions?
3. There is a 3-bit up-down counter that is controlled with an enable(en) and mode(M). The verilog behavior described for the design is as given below:
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

## Solutions

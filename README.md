# SystemVerilog and Verification - Alternative Assesment Tool
Name : Vishnu Prakash Bharadwaj <br>
USN : 1BM21EC209 <br>
Course : SVV <br>
Course Code : 22EC6PE2SV <br>
Faculty Incharge : Dr. Jeeru Dinesh Reddy <br>

## Problem statements
1. Identify a transactor that helps in verifying a DUT that sorts 8 bit values on A,B,C,D,E,F,G and H in ascending order. Implement the test environment that handles all the possible cases.
2. If the logic design has streaming 1 bit input through X , then the logic is to detect past two values along with the present value and give Z as 1 if there are exactly 2 ones otherwise 0.
   If the input stream is    X : 0 0 1 0 1 0 1 1 0 1 0 0 0 0 1 0 1 1
   Then, required output is  Z : 0 0 0 0 1 0 1 1 1 1 0 0 0 0 0 0 1 1
   - Design a transactor for driving this random input.
   - Apply constraints to the randomized data to verify the required scenarios.
   - How do we verify this property through assertions?

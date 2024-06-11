# Problem 2
## Problem Statement
If the logic design has streaming 1 bit input through X , then the logic is to detect past two values along with the present value and give Z as 1 if there are exactly 2 ones otherwise 0. <br>
   Input and Output streams:

   ```
   X : 0 0 1 0 1 0 1 1 0 1 0 0 0 0 1 0 1 1
   Z : 0 0 0 0 1 0 1 1 1 1 0 0 0 0 0 0 1 1
   ```

   - Design a transactor for driving this random input.
   - Apply constraints to the randomized data to verify the required scenarios.
   - How do we verify this property through assertions?

## Solution

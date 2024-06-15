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

# Solution

## RTL for Even Ones Detector
We can make use of shift register to solve the above problem. A 3-bit shift register is defined. At every posedge of clock, the input bit is pushed to the shift register.

## Verification Environment

## Simulation Results
The verification process is done using Cadence Xcelium tool. A default seed is used for randomizing the inputs. The output of the Xcelium tool is as described below.
```
[2024-06-15 06:34:35 UTC] xrun -Q -unbuffered '-timescale' '1ns/1ns' '-sysv' '-access' '+rw' design.sv testbench.sv  
TOOL:	xrun	23.09-s001: Started on Jun 15, 2024 at 02:34:36 EDT
xrun: 23.09-s001: (c) Copyright 1995-2023 Cadence Design Systems, Inc.
	Top level design units:
		$unit_0x67f934e9
		top
Loading snapshot worklib.top:sv .................... Done
SVSEED default: 1
xcelium> source /xcelium23.09/tools/xcelium/files/xmsimrc
xcelium> run

RESETTING...
RESET DONE.

------------------------------------------------
INPUT SENT TO DUT: 0
OUTPUT RECEIVED from DUT: 0
------------------------------------------------
INPUT SENT TO DUT: 1
OUTPUT RECEIVED from DUT: 0
------------------------------------------------
INPUT SENT TO DUT: 0
OUTPUT RECEIVED from DUT: 0
------------------------------------------------
INPUT SENT TO DUT: 0
OUTPUT RECEIVED from DUT: 0
------------------------------------------------
INPUT SENT TO DUT: 1
OUTPUT RECEIVED from DUT: 0
------------------------------------------------
INPUT SENT TO DUT: 1
OUTPUT RECEIVED from DUT: 1
------------------------------------------------
INPUT SENT TO DUT: 1
OUTPUT RECEIVED from DUT: 0
------------------------------------------------
INPUT SENT TO DUT: 0
OUTPUT RECEIVED from DUT: 1
------------------------------------------------
INPUT SENT TO DUT: 1
OUTPUT RECEIVED from DUT: 1
------------------------------------------------
INPUT SENT TO DUT: 0
OUTPUT RECEIVED from DUT: 0
------------------------------------------------
INPUT SENT TO DUT: 1
OUTPUT RECEIVED from DUT: 1
------------------------------------------------
INPUT SENT TO DUT: 0
OUTPUT RECEIVED from DUT: 0
------------------------------------------------
INPUT SENT TO DUT: 0
OUTPUT RECEIVED from DUT: 0
------------------------------------------------
INPUT SENT TO DUT: 1
OUTPUT RECEIVED from DUT: 0
------------------------------------------------
INPUT SENT TO DUT: 1
OUTPUT RECEIVED from DUT: 1
------------------------------------------------
INPUT SENT TO DUT: 1
OUTPUT RECEIVED from DUT: 0
------------------------------------------------
INPUT SENT TO DUT: 0
OUTPUT RECEIVED from DUT: 1
------------------------------------------------
INPUT SENT TO DUT: 1
OUTPUT RECEIVED from DUT: 1
------------------------------------------------
INPUT SENT TO DUT: 1
OUTPUT RECEIVED from DUT: 1
------------------------------------------------
INPUT SENT TO DUT: 0
OUTPUT RECEIVED from DUT: 1
------------------------------------------------
INPUT SENT TO DUT: 0
OUTPUT RECEIVED from DUT: 0
------------------------------------------------
INPUT SENT TO DUT: 0
OUTPUT RECEIVED from DUT: 0
------------------------------------------------
INPUT SENT TO DUT: 1
OUTPUT RECEIVED from DUT: 0
------------------------------------------------
INPUT SENT TO DUT: 1
OUTPUT RECEIVED from DUT: 1
------------------------------------------------
INPUT SENT TO DUT: 0
OUTPUT RECEIVED from DUT: 1
------------------------------------------------
INPUT SENT TO DUT: 0
OUTPUT RECEIVED from DUT: 0
------------------------------------------------
INPUT SENT TO DUT: 1
OUTPUT RECEIVED from DUT: 0
------------------------------------------------
INPUT SENT TO DUT: 0
OUTPUT RECEIVED from DUT: 0
------------------------------------------------
INPUT SENT TO DUT: 0
OUTPUT RECEIVED from DUT: 0
------------------------------------------------
INPUT SENT TO DUT: 0
OUTPUT RECEIVED from DUT: 0
------------------------------------------------
Simulation complete via $finish(1) at time 327 NS + 1
./even_ones_test.sv:14 		$finish;
xcelium> exit
TOOL:	xrun	23.09-s001: Exiting on Jun 15, 2024 at 02:34:37 EDT  (total: 00:00:01)
Finding VCD file...
./dump.vcd
[2024-06-15 06:34:37 UTC] Opening EPWave...
Done
```

## Conclusion
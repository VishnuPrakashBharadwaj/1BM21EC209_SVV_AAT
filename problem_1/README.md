# Problem 1
## Problem Statement
Identify a transactor that helps in verifying a DUT that sorts 8 bit values on A,B,C,D,E,F,G and H in ascending order. Implement the test environment that handles all the possible cases.

## Solution

### RTL for 8 Input sorter
This is the hardware implementation of bubble-sort containing seven stages of bubbling the highest value. The basic element in this design is a Two Element Sorter (TES) which sorts two 8-bit elements.

<img src="Schematics/tes.png" width="30%" height="30%">

Using the above TES blocks in 7 stages, we can sort 8 8-bit inputs as described below.

<img src="Schematics/eight_input_sorter.png" width="70%" height="70%">

### Verification Environment
- The verification Environment is built around the DUT (Design Under Test), i.e 8-input sorter.
- The Interface is used for sending the stimulus to DUT and receiving the response from DUT.
- The Driver class is used for performing the circular shift on inputs and driving them through the interface to the DUT. The inputs are randomized at the time of transactor initialization and then circular shift is performed 8 times, to verify the sorting functionality of the DUT.
- The Transactor class is used for the generation of stimulus. The inputs are randomized at the start, and then circular shifted 8 times.

### Results
The verification process is done using Cadence Xcelium tool. A default seed is used for randomizing the inputs. The output of the Xcelium tool is as described below.

```
[2024-06-14 17:19:09 UTC] xrun -Q -unbuffered '-timescale' '1ns/1ns' '-sysv' '-access' '+rw' design.sv testbench.sv  
TOOL:	xrun	23.09-s001: Started on Jun 14, 2024 at 13:19:10 EDT
xrun: 23.09-s001: (c) Copyright 1995-2023 Cadence Design Systems, Inc.
	Top level design units:
		$unit_0x7b829aed
		top
Loading snapshot worklib.top:sv .................... Done
SVSEED default: 1
xcelium> source /xcelium23.09/tools/xcelium/files/xmsimrc
xcelium> run
RANDOMIZED THE INPUTS

**********NEW TRANSACTION***************
FROM TRANSACTOR: INPUTS GENERATED =  69  86 136  25  15 167 182 156
FROM DRIVER: SENT INPUTS TO DUT:  69  86 136  25  15 167 182 156
SORTED OUTPUT RECEIVED from DUT:  15  25  69  86 136 156 167 182
**********TRANSACTION DONE***************

**********NEW TRANSACTION***************
FROM TRANSACTOR: INPUTS GENERATED =  86 136  25  15 167 182 156  69
FROM DRIVER: SENT INPUTS TO DUT:  86 136  25  15 167 182 156  69
SORTED OUTPUT RECEIVED from DUT:  15  25  69  86 136 156 167 182
**********TRANSACTION DONE***************

**********NEW TRANSACTION***************
FROM TRANSACTOR: INPUTS GENERATED = 136  25  15 167 182 156  69  86
FROM DRIVER: SENT INPUTS TO DUT: 136  25  15 167 182 156  69  86
SORTED OUTPUT RECEIVED from DUT:  15  25  69  86 136 156 167 182
**********TRANSACTION DONE***************

**********NEW TRANSACTION***************
FROM TRANSACTOR: INPUTS GENERATED =  25  15 167 182 156  69  86 136
FROM DRIVER: SENT INPUTS TO DUT:  25  15 167 182 156  69  86 136
SORTED OUTPUT RECEIVED from DUT:  15  25  69  86 136 156 167 182
**********TRANSACTION DONE***************

**********NEW TRANSACTION***************
FROM TRANSACTOR: INPUTS GENERATED =  15 167 182 156  69  86 136  25
FROM DRIVER: SENT INPUTS TO DUT:  15 167 182 156  69  86 136  25
SORTED OUTPUT RECEIVED from DUT:  15  25  69  86 136 156 167 182
**********TRANSACTION DONE***************

**********NEW TRANSACTION***************
FROM TRANSACTOR: INPUTS GENERATED = 167 182 156  69  86 136  25  15
FROM DRIVER: SENT INPUTS TO DUT: 167 182 156  69  86 136  25  15
SORTED OUTPUT RECEIVED from DUT:  15  25  69  86 136 156 167 182
**********TRANSACTION DONE***************

**********NEW TRANSACTION***************
FROM TRANSACTOR: INPUTS GENERATED = 182 156  69  86 136  25  15 167
FROM DRIVER: SENT INPUTS TO DUT: 182 156  69  86 136  25  15 167
SORTED OUTPUT RECEIVED from DUT:  15  25  69  86 136 156 167 182
**********TRANSACTION DONE***************

**********NEW TRANSACTION***************
FROM TRANSACTOR: INPUTS GENERATED = 156  69  86 136  25  15 167 182
FROM DRIVER: SENT INPUTS TO DUT: 156  69  86 136  25  15 167 182
SORTED OUTPUT RECEIVED from DUT:  15  25  69  86 136 156 167 182
**********TRANSACTION DONE***************

Simulation complete via $finish(1) at time 8 NS + 1
./sorter_test.sv:13 		$finish;
xcelium> exit
TOOL:	xrun	23.09-s001: Exiting on Jun 14, 2024 at 13:19:11 EDT  (total: 00:00:01)
Done
```

### Conclusion
From the above results, it is quite evident that the output is same for the same set of inputs when scrambled. This ensures that the outputs are not stuck for a particular input and the sorted values are correct. Hence, the given design is verified for the above mentioned functionality.
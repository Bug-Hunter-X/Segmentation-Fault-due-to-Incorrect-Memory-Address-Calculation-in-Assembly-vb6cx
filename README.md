# Assembly Memory Access Bug

This repository demonstrates a common yet often overlooked error in assembly programming: accessing memory outside the permitted address space.  The code attempts to read data from an address computed from registers.  If the calculated address is invalid, the program will crash with a segmentation fault or general protection fault. This example focuses on 32-bit x86 assembly.

## Bug Description

The `bug.asm` file contains an instruction that incorrectly calculates a memory address leading to an access violation. The solution, `bugSolution.asm`, demonstrates a safer approach.
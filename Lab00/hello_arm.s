// =============================================================================
// CS 271 Computer Architecture - Lab 00: Getting Started with ARM Assembly
// Purdue University Fort Wayne
// =============================================================================
// STUDENT NAME: Henry Richhart
// DATE:         01-13-2026
// =============================================================================
// OBJECTIVE:
//   This is your first ARM assembly program! The goal is to verify that your
//   development environment is working correctly by loading immediate values
//   into registers and executing the YIELD instruction.
//
// EXPECTED OUTCOME:
//   When the simulation completes successfully, you should see:
//   "[EDUCORE LOG]: Apollo has landed"
//
// INSTRUCTIONS:
//   1. Review the code below to understand the syntax
//   2. Run: make sim_lab00
//   3. Observe the output in the terminal
//   4. Open the .vcd file in Surfer to view waveforms
// =============================================================================

    .text
    .global _start

_start:
    // Load the immediate value 42 (0x2A) into register X0
    MOV     X0, #42

    // Load the immediate value 100 (0x64) into register X1  
    MOV     X1, #100

    // Add X0 and X1, store result in X2
    // Expected: X2 = 42 + 100 = 142 (0x8E)
    ADD     X2, X0, X1

    // Signal successful completion to the testbench
    // The YIELD instruction triggers "Apollo has landed"
    YIELD

    // End of program

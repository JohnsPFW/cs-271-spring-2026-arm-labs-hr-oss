[![Open in Codespaces](https://classroom.github.com/assets/launch-codespace-2972f46106e565e64193e422d61a12cf1da4916b45550586e14ef0a7c637dd04.svg)](https://classroom.github.com/open-in-codespaces?assignment_repo_id=22193723)
# CS 271 Computer Architecture - ARM Labs

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/JaydJohns/CS-Architecture-ARM-Labs)

## Overview

This repository contains the lab assignments for **CS 271 Computer Architecture** at Purdue University Fort Wayne. Students will learn ARM64 assembly programming using the **Arm Education Core (Educore)** processor, simulated in Icarus Verilog.

## Getting Started

### 1. Open in Codespaces

Click the button above or go to **Code → Codespaces → Create codespace on main**.

The environment will automatically install:
- ARM64 cross-compiler (`gcc-aarch64-linux-gnu`)
- Icarus Verilog simulator (`iverilog`)
- Surfer waveform viewer extension

### 2. Verify Your Setup

After the Codespace finishes building (~2 minutes), run:

```bash
make sim_lab00
```

You should see:
```
[EDUCORE LOG]: Test case: Lab00/hello_arm.mem
[EDUCORE LOG]: Apollo has landed
```

## Lab Assignments

| Lab | Topic | File to Edit |
|-----|-------|--------------|
| Lab 00 | Getting Started | `Lab00/hello_arm.s` |
| Lab 01 | String Copy (STRCPY) | `Lab01/test_STRCPY.s` |

## Quick Reference

### Common Commands

```bash
# Build and simulate Lab 00
make sim_lab00

# Build and simulate Lab 01
make sim_lab01

# Clean all build artifacts
make clean

# Show all available commands
make help
```

### Viewing Waveforms

After running a simulation, a `.vcd` file is generated. To view:

1. Click on the `.vcd` file in the Explorer
2. It will open in the Surfer waveform viewer
3. Add signals to trace (e.g., registers, memory)

## Project Structure

```
├── .devcontainer/          # Codespace configuration
├── Lab00/                  # Getting Started lab
│   └── hello_arm.s         # Your first ARM program
├── Lab01/                  # STRCPY lab
│   ├── test_STRCPY.s       # Lab assignment
│   └── Educore-SingleCycle/# Verilog processor
├── Professor_Lab_Templates/# Reference materials (read-only)
├── Makefile                # Build automation
└── README.md               # This file
```

## Getting Help

- Check the **Arm_Education_Core_supported_instructions.xlsx** for instruction reference
- Review the lab documentation in `Professor_Lab_Templates/`
- Use the Surfer extension to debug your code visually

## License

This project uses the ARM Education Introduction to Computer Architecture Education Kit under the [ARM Education Kit EULA](https://www.arm.com/-/media/Files/pdf/education/computer-architecture-education-kit-eula).
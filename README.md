
⚡ BLG242E - Digital Logic Design & FPGA Lab
"Bridging the Gap Between Logic Gates and Computer Architecture" > This repository contains digital design modules and hardware implementations developed as part of the BLG242E Logic Circuits Laboratory at Istanbul Technical University (İTÜ).

🚀 Overview
This laboratory series focuses on designing, simulating, and implementing digital systems using Verilog HDL. The projects range from fundamental combinational logic to complex sequential systems and finite state machines (FSM), all synthesized and tested on Xilinx Artix-7 FPGA hardware.

🛠 Key Modules & Labs
Combinational Logic: Design of Adders, Multipliers, Multiplexers, and Decoders.

Arithmetic Logic Unit (ALU): Implementation of an N-bit ALU supporting arithmetic and bitwise operations.

Sequential Logic: D-type Flip-Flops, Shift Registers, and Synchronous Counters.

Finite State Machines (FSM): Mealy and Moore models for controlling hardware sequences (e.g., Traffic Lights, Sequence Detectors).

Peripheral Integration: Driving 7-Segment Displays and handling Button/Switch debouncing on the Basys3 board.

💻 Tech Stack
Language: Verilog HDL (RTL Design)

Environment: Xilinx Vivado (2023.x / Latest)

Target Hardware: Digilent Basys3 (Artix-7 FPGA)

Verification: Behavioral and Post-Synthesis Simulation using XSim.

📂 Repository Structure
Bash
├── 📁 modules          # .v source files (RTL Design)
├── 📁 testbench        # Simulation files for verification
├── 📁 constraints      # .xdc files for FPGA pin mapping
└── 📁 docs             # Lab reports and schematic diagrams
⚙️ How to Run
Clone the Repository:

Bash
git clone https://github.com/yourusername/BLG242E-LogicLab.git
Open in Vivado: Go to File > Project > Open and select the project file.

Run Simulation: Navigate to the Simulation tab and click Run Behavioral Simulation to observe the waveforms.

Hardware Implementation: * Run Synthesis and Implementation.

Generate Bitstream.

Use the Hardware Manager to program the Basys3 board.

🎯 Learning Objectives
[x] Mastering Structural and Behavioral modeling in Verilog.

[x] Understanding Timing Analysis and Propagation Delays.

[x] Debugging hardware logic using Integrated Logic Analyzers (ILA) and Testbenches.

[x] Translating abstract logic diagrams into physical hardware implementation.

Developed by: [Hüseyin Teke]

Institution: Istanbul Technical University (İTÜ)

Department: Computer Engineering
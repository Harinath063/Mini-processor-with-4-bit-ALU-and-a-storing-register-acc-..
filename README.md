🧠 Basic Processor Design using Verilog (Vivado)
📌 Project Description

This project implements a simple 8-bit basic processor using Verilog HDL. The processor performs fundamental operations like Addition, Subtraction, AND, OR, and uses a MUX-based control unit to select operations based on opcode input.

The design is simulated and verified using Vivado, and includes both RTL schematic and waveform validation.

⚙️ Features
8-bit data processing
Supports multiple operations:
➕ Addition
➖ Subtraction
🔗 AND
🔀 OR
Opcode-based control logic
Accumulator-based architecture
Synchronous design with clock and reset
Testbench for simulation
🧩 Architecture Overview

The processor consists of:

ALU Operations
RTL_ADD
RTL_SUB
RTL_AND
RTL_OR
MUX (RTL_MUX)
Selects operation result based on opcode[2:0]
Register (RTL_REG_ASYNC)
Stores output (Accumulator)
ROM (RTL_ROM)
Provides predefined values (if used)
📊 RTL Schematic

The design includes interconnected modules:

Arithmetic & Logic blocks
Multiplexer
Register

👉 This confirms correct structural implementation in Vivado.

🧪 Simulation Results

Simulation verifies:

Correct opcode execution
Proper accumulator updates
Clock-driven behavior
Signals Observed:
clk – Clock signal
reset – Reset signal
opcode[2:0] – Operation selector
data_in[7:0] – Input data
acc[7:0] – Accumulator output
🧾 Opcode Table
Opcode	Operation
000	NOP / Default
001	ADD
010	SUB
011	AND
100	OR
Others	Custom / Reserved
🚀 How to Run (Vivado)
Open Vivado
Create a new project
Add:
basic_processor.v
basic_processor_tb.v
Set testbench as top module
Run:
Run Simulation → Run Behavioral Simulation
Observe waveform outputs


V.Venkata Harinath
ECE SVGP TIRUPATI
DIPLOMA ECE...

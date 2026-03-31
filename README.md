# Single Port RAM (Verilog HDL)
📌 Project Overview

This project implements a Single Port RAM using Verilog HDL.
The design allows both read and write operations through a single port, controlled using a clock and write enable (WE) signal.

It demonstrates fundamental concepts of memory design and synchronous data access in digital systems.

⚙️ Features
Single address port for both read and write operations
Synchronous design (clock-driven)
Controlled write operation using Write Enable (WE)
Parameterized data width and memory depth (optional if you used it)
Fully verified through simulation


🧠 Design Approach
Memory is implemented using a register array
On every clock edge:
If WE = 1 → Data is written into memory
If WE = 0 → Data is read from memory
always @(posedge clk) begin
    if (we)
        mem[addr] <= din;   // Write operation
    dout <= mem[addr];      // Read operation
end


💡 Technical Insight
Since read and write share the same port, proper control of WE and clock timing is essential to avoid data conflicts
Many designs use read-after-write behavior, where the output reflects updated data in the same cycle
Single-port RAM is resource-efficient but has limited parallel access capability


🧪 Verification
Developed a testbench to validate read and write operations
Tested multiple addresses and data patterns
Verified correct behavior using waveform simulation in Vivado
🛠 Tools Used
Verilog HDL
Xilinx Vivado (Simulation & Synthesis)


🎯 Learning Outcomes
Understanding of memory architecture and storage elements
Hands-on experience with synchronous design principles
Improved knowledge of read/write control logic
Practical exposure to RTL modeling of memory blocks


🚀 Future Improvements
Implement Dual Port RAM
Add asynchronous read support
Extend to FIFO or cache-like structures
FPGA hardware implementation

# 1. Clock Definition (5.0 ns period = 200 MHz)
create_clock -name clk -period 5.0 [get_ports clk]

# 2. Clock Uncertainty and Transition
set_clock_uncertainty 0.20 [get_clocks clk]
set_clock_transition  0.15 [get_clocks clk]

# 3. Input Constraints
# Data inputs (A, B) and control inputs (rst, start)
set_input_delay -max 1.5 [get_ports {A[*] B[*] rst start}] -clock clk
set_input_delay -min 0.3 [get_ports {A[*] B[*] rst start}] -clock clk
set_input_transition 0.10 [get_ports {A[*] B[*] rst start}]

# 4. Output Constraints
# 32-bit result bus and done flag
set_output_delay -max 2.5 [get_ports {result[*] done}] -clock clk
set_output_delay -min 0.5 [get_ports {result[*] done}] -clock clk

# 5. Output Capacitive Load (0.05 pF typical for sky130 standard cells)
set_load -pin_load 0.05 [get_ports {result[*] done}]

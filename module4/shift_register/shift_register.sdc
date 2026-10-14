# 1. Define clock (5.0 ns period = 200 MHz target frequency)
create_clock -name clk -period 10.0 [get_ports clk]

# 2. Clock uncertainty and transition
set_clock_uncertainty 0.2 [get_clocks clk]
set_clock_transition 0.15 [get_clocks clk]

# 3. Input constraints on data_in and rst
set_input_delay -max 3.0 [get_ports {rst data_in}] -clock clk
set_input_delay -min 0.5 [get_ports {rst data_in}] -clock clk
set_input_transition 0.1 [get_ports {rst data_in}]

# 4. Output constraints on the 8-bit q bus
set_output_delay -max 2.5 [get_ports {q[*]}] -clock clk
set_output_delay -min 0.5 [get_ports {q[*]}] -clock clk

# 5. Output load capacitance (0.05 pF)
set_load -pin_load 0.05 [get_ports {q[*]}]

# 1. Define clock
create_clock -name clk -period 5.0 [get_ports clk]

# 2. Clock uncertainty and transition (pre-CTS ideal network)
set_clock_uncertainty 0.2 [get_clocks clk]
set_clock_transition 0.15 [get_clocks clk]

# 3. Input constraints for data and reset (covers max/setup and min/hold)
set_input_delay -max 3.0 [get_ports {d rst}] -clock clk
set_input_delay -min 0.5 [get_ports {d rst}] -clock clk
set_input_transition 0.1 [get_ports {d rst}]

# 4. Output constraints for Q
set_output_delay -max 2.0 [get_ports q] -clock clk
set_output_delay -min 0.5 [get_ports q] -clock clk

# 5. Output load (e.g., 50 fF = 0.05 pF)
set_load -pin_load 0.05 [get_ports q]

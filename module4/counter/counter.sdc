# 1. Define clock
create_clock -name clk -period 5.0 [get_ports clk]

# 2. Clock uncertainty and transition (realistic values)
set_clock_uncertainty 0.2 [get_clocks clk]
set_clock_transition 0.15 [get_clocks clk]

# 3. Input constraints on reset (covers min/max and rise/fall)
set_input_delay -max 3.0 [get_ports rst] -clock clk
set_input_delay -min 0.5 [get_ports rst] -clock clk
set_input_transition 0.1 [get_ports rst]

# 4. Output constraints on count bus
set_output_delay -max 2.5 [get_ports {count[*]}] -clock clk
set_output_delay -min 0.5 [get_ports {count[*]}] -clock clk

# 5. Output load capacitance (adjust value according to your lib units, e.g., 0.05 pF)
set_load -pin_load 0.05 [get_ports {count[*]}]

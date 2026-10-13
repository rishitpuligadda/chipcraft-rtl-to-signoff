# 1. Define virtual clock (no [get_ports clk])
create_clock -name clk -period 5.0

# 2. Input constraints on valid data/select ports
set_input_delay -max 3.0 [get_ports {i[0] i[1] s}] -clock clk
set_input_delay -min 0.5 [get_ports {i[0] i[1] s}] -clock clk

# 3. Input transition / slew (adjust to reasonable values, e.g., 0.1 ns)
set_input_transition 0.1 [get_ports {i[0] i[1] s}]

# 4. Output delay constraints
set_output_delay -max 2.0 [get_ports y] -clock clk
set_output_delay -min 0.5 [get_ports y] -clock clk

# 5. Output load capacitance (in pF or fF depending on liberty units)
set_load -pin_load 0.05 [get_ports y]

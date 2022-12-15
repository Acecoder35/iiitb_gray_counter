###############################################################################
# Created by write_sdc
# Mon Dec 12 09:34:08 2022
###############################################################################
current_design iiitb_gray_cntr
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name clkin -period 10.0000 
set_clock_uncertainty 0.2500 clkin
set_input_delay 2.0000 -clock [get_clocks {clkin}] -add_delay [get_ports {clk}]
set_input_delay 2.0000 -clock [get_clocks {clkin}] -add_delay [get_ports {rst}]
set_output_delay 2.0000 -clock [get_clocks {clkin}] -add_delay [get_ports {bcd_value[0]}]
set_output_delay 2.0000 -clock [get_clocks {clkin}] -add_delay [get_ports {bcd_value[1]}]
set_output_delay 2.0000 -clock [get_clocks {clkin}] -add_delay [get_ports {bcd_value[2]}]
set_output_delay 2.0000 -clock [get_clocks {clkin}] -add_delay [get_ports {bcd_value[3]}]
set_output_delay 2.0000 -clock [get_clocks {clkin}] -add_delay [get_ports {gray_count[0]}]
set_output_delay 2.0000 -clock [get_clocks {clkin}] -add_delay [get_ports {gray_count[1]}]
set_output_delay 2.0000 -clock [get_clocks {clkin}] -add_delay [get_ports {gray_count[2]}]
set_output_delay 2.0000 -clock [get_clocks {clkin}] -add_delay [get_ports {gray_count[3]}]
###############################################################################
# Environment
###############################################################################
set_load -pin_load 0.0334 [get_ports {bcd_value[3]}]
set_load -pin_load 0.0334 [get_ports {bcd_value[2]}]
set_load -pin_load 0.0334 [get_ports {bcd_value[1]}]
set_load -pin_load 0.0334 [get_ports {bcd_value[0]}]
set_load -pin_load 0.0334 [get_ports {gray_count[3]}]
set_load -pin_load 0.0334 [get_ports {gray_count[2]}]
set_load -pin_load 0.0334 [get_ports {gray_count[1]}]
set_load -pin_load 0.0334 [get_ports {gray_count[0]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {clk}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {rst}]
set_timing_derate -early 0.9500
set_timing_derate -late 1.0500
###############################################################################
# Design Rules
###############################################################################
set_max_fanout 10.0000 [current_design]

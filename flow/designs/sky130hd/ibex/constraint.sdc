###############################################################################
# Created by write_sdc
# Wed May  5 18:14:25 2021
###############################################################################
current_design ibex_core
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name core_clock -period 15.1550 -waveform {0.0000 7.5775} [get_ports {clk_i}]
###############################################################################
# Environment
###############################################################################
###############################################################################
# Design Rules
###############################################################################

current_design gcd

set clk_name  core_clock
set clk_port_name clk
set clk_period 0.46 
set clk_port [get_ports $clk_port_name]

create_clock -name $clk_name -period $clk_period $clk_port

set non_clock_inputs [list]
foreach input [all_inputs] {
    if {$clk_port != $input} {
        lappend $non_clock_inputs $input
    }
}


set_input_delay  [expr $clk_period * 0.2] -clock $clk_name $non_clock_inputs 
set_output_delay [expr $clk_period * 0.2] -clock $clk_name [all_outputs]


# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name seven-bit-adder-substractor -dir "/home/chaman/git/CS220/Lab6/Lab6_1/seven-bit-adder-substractor/planAhead_run_5" -part xc3s500efg320-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "/home/chaman/git/CS220/Lab6/Lab6_1/seven-bit-adder-substractor/seven_bit_adder_substractor.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/home/chaman/git/CS220/Lab6/Lab6_1/seven-bit-adder-substractor} }
set_property target_constrs_file "seven_bit_adder_substractor.ucf" [current_fileset -constrset]
add_files [list {seven_bit_adder_substractor.ucf}] -fileset [get_property constrset [current_run]]
link_design

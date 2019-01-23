
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name full_adder -dir "/media/rishabhbt/DADA/CS220Labs/Lab1_1/full_adder/planAhead_run_1" -part xc3s500efg320-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "full_adder.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {full_adder.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top full_adder $srcset
add_files [list {full_adder.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500efg320-4

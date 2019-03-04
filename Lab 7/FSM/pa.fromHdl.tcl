
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name FSM -dir "/media/chamanag/8B9E-BFB0/Lab 7/FSM/planAhead_run_2" -part xc3s500efg320-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "FSM.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {FSM.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top FSM $srcset
add_files [list {FSM.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500efg320-4

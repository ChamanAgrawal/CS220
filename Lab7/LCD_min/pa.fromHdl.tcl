
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name LCD_min -dir "/home/chaman/git/CS220/Lab 7/LCD_min/planAhead_run_2" -part xc3s500efg320-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "LCD_MIN.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {minimum.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {LCD.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {LCD_MIN.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top LCD_MIN $srcset
add_files [list {LCD_MIN.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500efg320-4

transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Allan/OneDrive/Desktop/Coding/CSC 343 quartus and modelsim/Lab 1 Control System for a 4 Floor Elevator/Lab1_elevator.vhd}


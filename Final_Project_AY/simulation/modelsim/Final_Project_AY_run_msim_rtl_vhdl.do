transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Allan/OneDrive/Desktop/Coding/CSC 343 quartus and modelsim/Final_Project_AY/Yunayev_Final_Assignment_Package.vhd}
vcom -93 -work work {C:/Users/Allan/OneDrive/Desktop/Coding/CSC 343 quartus and modelsim/Final_Project_AY/MemAddrAccumulator.vhd}
vcom -93 -work work {C:/Users/Allan/OneDrive/Desktop/Coding/CSC 343 quartus and modelsim/Final_Project_AY/D_FF.vhd}
vcom -93 -work work {C:/Users/Allan/OneDrive/Desktop/Coding/CSC 343 quartus and modelsim/Final_Project_AY/Demux_1to2_32bit.vhd}
vcom -93 -work work {C:/Users/Allan/OneDrive/Desktop/Coding/CSC 343 quartus and modelsim/Final_Project_AY/lpm_ram.vhd}
vcom -93 -work work {C:/Users/Allan/OneDrive/Desktop/Coding/CSC 343 quartus and modelsim/Final_Project_AY/LPM_ADDER_SUBER.vhd}
vcom -93 -work work {C:/Users/Allan/OneDrive/Desktop/Coding/CSC 343 quartus and modelsim/Final_Project_AY/LPM_MUXER.vhd}
vcom -93 -work work {C:/Users/Allan/OneDrive/Desktop/Coding/CSC 343 quartus and modelsim/Final_Project_AY/Register32.vhd}
vcom -93 -work work {C:/Users/Allan/OneDrive/Desktop/Coding/CSC 343 quartus and modelsim/Final_Project_AY/Yunayev_Final_Project.vhd}


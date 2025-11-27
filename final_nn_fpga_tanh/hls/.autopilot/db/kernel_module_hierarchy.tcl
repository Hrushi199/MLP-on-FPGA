set ModuleHierarchy {[{
"Name" : "nn_fpga_top", "RefName" : "nn_fpga_top","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_nn_fpga_top_Pipeline_VITIS_LOOP_63_1_fu_157", "RefName" : "nn_fpga_top_Pipeline_VITIS_LOOP_63_1","ID" : "1","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_63_1","RefName" : "VITIS_LOOP_63_1","ID" : "2","Type" : "pipeline"},]},
	{"Name" : "grp_nn_fpga_top_Pipeline_VITIS_LOOP_45_1_VITIS_LOOP_47_2_fu_165", "RefName" : "nn_fpga_top_Pipeline_VITIS_LOOP_45_1_VITIS_LOOP_47_2","ID" : "3","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_45_1_VITIS_LOOP_47_2","RefName" : "VITIS_LOOP_45_1_VITIS_LOOP_47_2","ID" : "4","Type" : "pipeline"},]},
	{"Name" : "grp_nn_fpga_top_Pipeline_VITIS_LOOP_77_2_fu_196", "RefName" : "nn_fpga_top_Pipeline_VITIS_LOOP_77_2","ID" : "5","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_77_2","RefName" : "VITIS_LOOP_77_2","ID" : "6","Type" : "pipeline"},]},],
"SubLoops" : [
	{"Name" : "VITIS_LOOP_29_1","RefName" : "VITIS_LOOP_29_1","ID" : "7","Type" : "no",
	"SubInsts" : [
	{"Name" : "grp_nn_fpga_top_Pipeline_VITIS_LOOP_32_2_fu_175", "RefName" : "nn_fpga_top_Pipeline_VITIS_LOOP_32_2","ID" : "8","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_32_2","RefName" : "VITIS_LOOP_32_2","ID" : "9","Type" : "pipeline"},]},
	{"Name" : "grp_my_tanh_fu_184", "RefName" : "my_tanh","ID" : "10","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_generic_tanh_float_s_fu_151", "RefName" : "generic_tanh_float_s","ID" : "11","Type" : "sequential",
				"SubInsts" : [
				{"Name" : "grp_exp_generic_double_s_fu_89", "RefName" : "exp_generic_double_s","ID" : "12","Type" : "pipeline"},]},]},]},]
}]}
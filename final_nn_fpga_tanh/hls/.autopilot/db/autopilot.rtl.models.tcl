set SynModuleInfo {
  {SRCNAME nn_fpga_top_Pipeline_VITIS_LOOP_63_1 MODELNAME nn_fpga_top_Pipeline_VITIS_LOOP_63_1 RTLNAME nn_fpga_top_nn_fpga_top_Pipeline_VITIS_LOOP_63_1
    SUBMODULES {
      {MODELNAME nn_fpga_top_nn_fpga_top_Pipeline_VITIS_LOOP_63_1_test_images_ROM_AUTO_1R RTLNAME nn_fpga_top_nn_fpga_top_Pipeline_VITIS_LOOP_63_1_test_images_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME nn_fpga_top_flow_control_loop_pipe_sequential_init RTLNAME nn_fpga_top_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME nn_fpga_top_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME nn_fpga_top_Pipeline_VITIS_LOOP_32_2 MODELNAME nn_fpga_top_Pipeline_VITIS_LOOP_32_2 RTLNAME nn_fpga_top_nn_fpga_top_Pipeline_VITIS_LOOP_32_2
    SUBMODULES {
      {MODELNAME nn_fpga_top_mac_muladd_10s_8s_24s_24_4_1 RTLNAME nn_fpga_top_mac_muladd_10s_8s_24s_24_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME nn_fpga_top_nn_fpga_top_Pipeline_VITIS_LOOP_32_2_W1_ROM_AUTO_1R RTLNAME nn_fpga_top_nn_fpga_top_Pipeline_VITIS_LOOP_32_2_W1_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME exp_generic<double> MODELNAME exp_generic_double_s RTLNAME nn_fpga_top_exp_generic_double_s
    SUBMODULES {
      {MODELNAME nn_fpga_top_mul_13s_71s_71_5_1 RTLNAME nn_fpga_top_mul_13s_71s_71_5_1 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME nn_fpga_top_mul_43ns_36ns_79_3_1 RTLNAME nn_fpga_top_mul_43ns_36ns_79_3_1 BINDTYPE op TYPE mul IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME nn_fpga_top_mul_49ns_44ns_93_5_1 RTLNAME nn_fpga_top_mul_49ns_44ns_93_5_1 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME nn_fpga_top_mul_50ns_50ns_99_5_1 RTLNAME nn_fpga_top_mul_50ns_50ns_99_5_1 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME nn_fpga_top_sparsemux_9_3_64_1_1 RTLNAME nn_fpga_top_sparsemux_9_3_64_1_1 BINDTYPE op TYPE sparsemux IMPL onehotencoding_realdef}
      {MODELNAME nn_fpga_top_mac_muladd_16s_15ns_19s_31_4_1 RTLNAME nn_fpga_top_mac_muladd_16s_15ns_19s_31_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME nn_fpga_top_exp_generic_double_s_table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_arbkb RTLNAME nn_fpga_top_exp_generic_double_s_table_exp_Z1_ap_ufixed_58_1_ap_q_mode_5_ap_o_mode_3_0_arbkb BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME nn_fpga_top_exp_generic_double_s_table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_arracud RTLNAME nn_fpga_top_exp_generic_double_s_table_f_Z3_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_arracud BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME nn_fpga_top_exp_generic_double_s_table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_arradEe RTLNAME nn_fpga_top_exp_generic_double_s_table_f_Z2_ap_ufixed_59_0_ap_q_mode_5_ap_o_mode_3_0_arradEe BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME generic_tanh<float> MODELNAME generic_tanh_float_s RTLNAME nn_fpga_top_generic_tanh_float_s
    SUBMODULES {
      {MODELNAME nn_fpga_top_faddfsub_32ns_32ns_32_7_full_dsp_1 RTLNAME nn_fpga_top_faddfsub_32ns_32ns_32_7_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 6 ALLOW_PRAGMA 1}
      {MODELNAME nn_fpga_top_fmul_32ns_32ns_32_4_max_dsp_1 RTLNAME nn_fpga_top_fmul_32ns_32ns_32_4_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME nn_fpga_top_fdiv_32ns_32ns_32_16_no_dsp_1 RTLNAME nn_fpga_top_fdiv_32ns_32ns_32_16_no_dsp_1 BINDTYPE op TYPE fdiv IMPL fabric LATENCY 15 ALLOW_PRAGMA 1}
      {MODELNAME nn_fpga_top_fptrunc_64ns_32_2_no_dsp_1 RTLNAME nn_fpga_top_fptrunc_64ns_32_2_no_dsp_1 BINDTYPE op TYPE fptrunc IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME nn_fpga_top_fpext_32ns_64_2_no_dsp_1 RTLNAME nn_fpga_top_fpext_32ns_64_2_no_dsp_1 BINDTYPE op TYPE fpext IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME nn_fpga_top_fcmp_32ns_32ns_1_2_no_dsp_1 RTLNAME nn_fpga_top_fcmp_32ns_32ns_1_2_no_dsp_1 BINDTYPE op TYPE fcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME nn_fpga_top_dadd_64ns_64ns_64_8_full_dsp_1 RTLNAME nn_fpga_top_dadd_64ns_64ns_64_8_full_dsp_1 BINDTYPE op TYPE dadd IMPL fulldsp LATENCY 7 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME my_tanh MODELNAME my_tanh RTLNAME nn_fpga_top_my_tanh
    SUBMODULES {
      {MODELNAME nn_fpga_top_dcmp_64ns_64ns_1_2_no_dsp_1 RTLNAME nn_fpga_top_dcmp_64ns_64ns_1_2_no_dsp_1 BINDTYPE op TYPE dcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME nn_fpga_top_ctlz_16_16_1_1 RTLNAME nn_fpga_top_ctlz_16_16_1_1 BINDTYPE op TYPE ctlz IMPL auto}
    }
  }
  {SRCNAME nn_fpga_top_Pipeline_VITIS_LOOP_45_1_VITIS_LOOP_47_2 MODELNAME nn_fpga_top_Pipeline_VITIS_LOOP_45_1_VITIS_LOOP_47_2 RTLNAME nn_fpga_top_nn_fpga_top_Pipeline_VITIS_LOOP_45_1_VITIS_LOOP_47_2
    SUBMODULES {
      {MODELNAME nn_fpga_top_mac_muladd_16s_9s_24ns_24_4_1 RTLNAME nn_fpga_top_mac_muladd_16s_9s_24ns_24_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME nn_fpga_top_nn_fpga_top_Pipeline_VITIS_LOOP_45_1_VITIS_LOOP_47_2_W2_ROM_AUTO_1R RTLNAME nn_fpga_top_nn_fpga_top_Pipeline_VITIS_LOOP_45_1_VITIS_LOOP_47_2_W2_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME nn_fpga_top_nn_fpga_top_Pipeline_VITIS_LOOP_45_1_VITIS_LOOP_47_2_B2_ROM_AUTO_1R RTLNAME nn_fpga_top_nn_fpga_top_Pipeline_VITIS_LOOP_45_1_VITIS_LOOP_47_2_B2_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME nn_fpga_top_Pipeline_VITIS_LOOP_77_2 MODELNAME nn_fpga_top_Pipeline_VITIS_LOOP_77_2 RTLNAME nn_fpga_top_nn_fpga_top_Pipeline_VITIS_LOOP_77_2}
  {SRCNAME nn_fpga_top MODELNAME nn_fpga_top RTLNAME nn_fpga_top IS_TOP 1
    SUBMODULES {
      {MODELNAME nn_fpga_top_mul_4ns_11ns_13_1_1 RTLNAME nn_fpga_top_mul_4ns_11ns_13_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME nn_fpga_top_B1_ROM_AUTO_1R RTLNAME nn_fpga_top_B1_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME nn_fpga_top_output_RAM_AUTO_1R1W RTLNAME nn_fpga_top_output_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME nn_fpga_top_image_RAM_AUTO_1R1W RTLNAME nn_fpga_top_image_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME nn_fpga_top_h1_RAM_AUTO_1R1W RTLNAME nn_fpga_top_h1_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
}

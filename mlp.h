#ifndef MLP_H
#define MLP_H

#include "types.h"
#include <ap_int.h> // Required for ap_uint

// Function Prototypes
// These tell the compiler that these functions exist without defining them twice.

void layer1(img_t in[MLP_INPUT], acc_t out[MLP_HIDDEN]);
void layer2(acc_t in[MLP_HIDDEN], acc_t out[MLP_OUTPUT]);
int mlp_demo_predict(int image_idx);

// Top level function
void nn_fpga_top(int image_idx, ap_uint<4> &led_out);

#endif
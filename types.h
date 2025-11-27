#ifndef TYPES_H
#define TYPES_H

#include <ap_fixed.h>

#define MLP_INPUT 784
#define MLP_HIDDEN 64
#define MLP_OUTPUT 10

// UPDATED PRECISION for Tanh
// Q8.8 format (8 integer bits, 8 fractional bits)
// Range: -128 to +127. Precision: 1/256 (approx 0.0039)
typedef ap_fixed<16, 8> img_t;
typedef ap_fixed<16, 8> acc_t; 
typedef ap_fixed<16, 8> weight_t;
typedef ap_fixed<16, 8> bias_t;

#endif
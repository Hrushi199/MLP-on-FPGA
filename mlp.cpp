#include "mlp.h"
#include "weights.h"
#include "biases.h"
#include "images.h"
#include <hls_math.h> // REQUIRED: This instantiates CORDIC logic automatically

#ifndef NUM_IMAGES
#define NUM_IMAGES 10
#endif

// --- CUSTOM Tanh Function using CORDIC Logic ---
acc_t my_tanh(acc_t x) {
    // 1. Domain Check (Saturation)
    // CORDIC hyperbolic fails if input > ~1.1
    // Tanh(1.5) is ~0.905, so we clamp outputs to +/- 1 beyond that range.
    if (x > 1.5) return (acc_t)1.0;
    if (x < -1.5) return (acc_t)-1.0;

    // 2. Calculate Sinh and Cosh using HLS Math Library
    // HLS will generate CORDIC logic for these calls.
    // Casting to float ensures the standard math core is used.
    acc_t s = hls::tanh((float)x); 

    // 3. Calculate Tanh from hls library, as sin/cos gives negative WNS
    return s;
}

void layer1(img_t in[MLP_INPUT], acc_t out[MLP_HIDDEN]) {
    for (int i = 0; i < MLP_HIDDEN; ++i) {
        acc_t acc = 0;
        // Pipelining the accumulation loop
        for (int j = 0; j < MLP_INPUT; ++j) {
            #pragma HLS PIPELINE
            acc += in[j] * W1[i][j];
        }
        acc += B1[i];
        
        // --- ACTIVATION: Tanh via CORDIC ---
        // The hardware will stall here until the division is complete.
        out[i] = my_tanh(acc); 
    }
}

void layer2(acc_t in[MLP_HIDDEN], acc_t out[MLP_OUTPUT]) {
    for (int i = 0; i < MLP_OUTPUT; ++i) {
        acc_t acc = 0;
        for (int j = 0; j < MLP_HIDDEN; ++j) {
            #pragma HLS PIPELINE
            acc += in[j] * W2[i][j];
        }
        acc += B2[i];
        
        // Output layer: No activation (logits)
        out[i] = acc; 
    }
}

int mlp_demo_predict(int image_idx) {
    acc_t output[MLP_OUTPUT];
    img_t image[MLP_INPUT];

    // Load Image
    for (int i = 0; i < MLP_INPUT; ++i) {
        #pragma HLS PIPELINE
        image[i] = test_images[image_idx][i];
    }

    acc_t h1[MLP_HIDDEN];
    
    // Run Layers
    layer1(image, h1);
    layer2(h1, output);

    // Argmax
    int max_idx = 0;
    acc_t max_val = output[0];
    for (int i = 1; i < MLP_OUTPUT; ++i) {
        if (output[i] > max_val) {
            max_val = output[i];
            max_idx = i;
        }
    }
    return max_idx; 
}

void nn_fpga_top(ap_uint<4> image_idx, ap_uint<4> &led_out) {
    // Interface Pragmas for Block Design
    #pragma HLS INTERFACE ap_none port=image_idx
    #pragma HLS INTERFACE ap_none port=led_out
    #pragma HLS INTERFACE ap_ctrl_none port=return
    
    // Resource constraint to fit on Artix-7
    #pragma HLS ALLOCATION instances=mul limit=80 core

    int class_idx = mlp_demo_predict((int)image_idx);
    led_out = class_idx;
}
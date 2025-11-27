//mlp_tb.cpp
#include "mlp.h"
#include <stdio.h>

#ifndef NUM_IMAGES
#define NUM_IMAGES 10
#endif

int main() {
    printf("Cycle through demo images:\n");
    for (int img_idx = 0; img_idx < NUM_IMAGES; ++img_idx) {
        int predicted = mlp_demo_predict(img_idx);
        printf("Image %d: Predicted digit = %d\n", img_idx, predicted);
    }
    return 0;
}

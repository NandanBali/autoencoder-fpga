#ifndef VAE_CORE_H_
#define VAE_CORE_H_

#include "ap_fixed.h"
#include "ap_int.h"
#include "hls_stream.h"

#include "defines.h"


// Prototype of top level function for C-synthesis
void vae_core(
    input_t x[8],
    result_t layer11_out[8]
);

// hls-fpga-machine-learning insert emulator-defines


#endif

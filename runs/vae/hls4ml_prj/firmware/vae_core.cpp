#include <iostream>

#include "vae_core.h"
#include "parameters.h"


void vae_core(
    input_t x[8],
    result_t layer11_out[8]
) {

    // hls-fpga-machine-learning insert IO
    #pragma HLS ARRAY_RESHAPE variable=x complete dim=0
    #pragma HLS ARRAY_PARTITION variable=layer11_out complete dim=0
    #pragma HLS INTERFACE ap_vld port=x,layer11_out 
    #pragma HLS DATAFLOW

    // hls-fpga-machine-learning insert load weights
#ifndef __SYNTHESIS__
    static bool loaded_weights = false;
    if (!loaded_weights) {
        nnet::load_weights_from_txt<enc1_weight_t, 256>(w2, "w2.txt");
        nnet::load_weights_from_txt<enc1_bias_t, 32>(b2, "b2.txt");
        nnet::load_weights_from_txt<enc2_weight_t, 512>(w4, "w4.txt");
        nnet::load_weights_from_txt<enc2_bias_t, 16>(b4, "b4.txt");
        nnet::load_weights_from_txt<mu_weight_t, 64>(w6, "w6.txt");
        nnet::load_weights_from_txt<mu_bias_t, 4>(b6, "b6.txt");
        nnet::load_weights_from_txt<dec1_weight_t, 64>(w7, "w7.txt");
        nnet::load_weights_from_txt<dec1_bias_t, 16>(b7, "b7.txt");
        nnet::load_weights_from_txt<dec2_weight_t, 512>(w9, "w9.txt");
        nnet::load_weights_from_txt<dec2_bias_t, 32>(b9, "b9.txt");
        nnet::load_weights_from_txt<out_weight_t, 256>(w11, "w11.txt");
        nnet::load_weights_from_txt<out_bias_t, 8>(b11, "b11.txt");
        loaded_weights = true;    }
#endif
    // ****************************************
    // NETWORK INSTANTIATION
    // ****************************************

    // hls-fpga-machine-learning insert layers

    layer2_t layer2_out[32];
    #pragma HLS ARRAY_PARTITION variable=layer2_out complete dim=0

    layer3_t layer3_out[32];
    #pragma HLS ARRAY_PARTITION variable=layer3_out complete dim=0

    layer4_t layer4_out[16];
    #pragma HLS ARRAY_PARTITION variable=layer4_out complete dim=0

    layer5_t layer5_out[16];
    #pragma HLS ARRAY_PARTITION variable=layer5_out complete dim=0

    layer6_t layer6_out[4];
    #pragma HLS ARRAY_PARTITION variable=layer6_out complete dim=0

    layer7_t layer7_out[16];
    #pragma HLS ARRAY_PARTITION variable=layer7_out complete dim=0

    layer8_t layer8_out[16];
    #pragma HLS ARRAY_PARTITION variable=layer8_out complete dim=0

    layer9_t layer9_out[32];
    #pragma HLS ARRAY_PARTITION variable=layer9_out complete dim=0

    layer10_t layer10_out[32];
    #pragma HLS ARRAY_PARTITION variable=layer10_out complete dim=0

    nnet::dense<input_t, layer2_t, config2>(x, layer2_out, w2, b2); // enc1

    nnet::relu<layer2_t, layer3_t, relu_config3>(layer2_out, layer3_out); // relu

    nnet::dense<layer3_t, layer4_t, config4>(layer3_out, layer4_out, w4, b4); // enc2

    nnet::relu<layer4_t, layer5_t, relu_config5>(layer4_out, layer5_out); // relu_1

    nnet::dense<layer5_t, layer6_t, config6>(layer5_out, layer6_out, w6, b6); // mu

    nnet::dense<layer6_t, layer7_t, config7>(layer6_out, layer7_out, w7, b7); // dec1

    nnet::relu<layer7_t, layer8_t, relu_config8>(layer7_out, layer8_out); // relu_2

    nnet::dense<layer8_t, layer9_t, config9>(layer8_out, layer9_out, w9, b9); // dec2

    nnet::relu<layer9_t, layer10_t, relu_config10>(layer9_out, layer10_out); // relu_3

    nnet::dense<layer10_t, result_t, config11>(layer10_out, layer11_out, w11, b11); // out

}


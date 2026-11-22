#ifndef DEFINES_H_
#define DEFINES_H_

#include "ap_fixed.h"
#include "ap_int.h"
#include "nnet_utils/nnet_types.h"
#include <array>
#include <cstddef>
#include <cstdio>
#include <tuple>
#include <tuple>


// hls-fpga-machine-learning insert numbers

// hls-fpga-machine-learning insert layer-precision
typedef ap_fixed<25,9> input_t;
typedef ap_fixed<30,8> enc1_accum_t;
typedef ap_fixed<18,4,AP_RND_CONV,AP_SAT,0> layer2_t;
typedef ap_fixed<18,3,AP_RND_CONV,AP_SAT,0> enc1_weight_t;
typedef ap_fixed<18,2,AP_RND_CONV,AP_SAT,0> enc1_bias_t;
typedef ap_uint<1> layer2_index;
typedef ap_ufixed<18,3,AP_RND_CONV,AP_SAT,0> layer3_t;
typedef ap_fixed<18,8> relu_table_t;
typedef ap_fixed<30,9> enc2_accum_t;
typedef ap_fixed<18,5,AP_RND_CONV,AP_SAT,0> layer4_t;
typedef ap_fixed<18,3,AP_RND_CONV,AP_SAT,0> enc2_weight_t;
typedef ap_fixed<18,2,AP_RND_CONV,AP_SAT,0> enc2_bias_t;
typedef ap_uint<1> layer4_index;
typedef ap_ufixed<18,4,AP_RND_CONV,AP_SAT,0> layer5_t;
typedef ap_fixed<18,8> relu_1_table_t;
typedef ap_fixed<30,9> mu_accum_t;
typedef ap_fixed<18,5,AP_RND_CONV,AP_SAT,0> layer6_t;
typedef ap_fixed<18,3,AP_RND_CONV,AP_SAT,0> mu_weight_t;
typedef ap_fixed<18,2,AP_RND_CONV,AP_SAT,0> mu_bias_t;
typedef ap_uint<1> layer6_index;
typedef ap_fixed<30,9> dec1_accum_t;
typedef ap_fixed<18,5,AP_RND_CONV,AP_SAT,0> layer7_t;
typedef ap_fixed<18,2,AP_RND_CONV,AP_SAT,0> dec1_weight_t;
typedef ap_fixed<18,2,AP_RND_CONV,AP_SAT,0> dec1_bias_t;
typedef ap_uint<1> layer7_index;
typedef ap_ufixed<18,4,AP_RND_CONV,AP_SAT,0> layer8_t;
typedef ap_fixed<18,8> relu_2_table_t;
typedef ap_fixed<30,10> dec2_accum_t;
typedef ap_fixed<18,6,AP_RND_CONV,AP_SAT,0> layer9_t;
typedef ap_fixed<18,3,AP_RND_CONV,AP_SAT,0> dec2_weight_t;
typedef ap_fixed<18,2,AP_RND_CONV,AP_SAT,0> dec2_bias_t;
typedef ap_uint<1> layer9_index;
typedef ap_ufixed<18,5,AP_RND_CONV,AP_SAT,0> layer10_t;
typedef ap_fixed<18,8> relu_3_table_t;
typedef ap_fixed<30,8> out_accum_t;
typedef ap_fixed<18,4,AP_RND_CONV,AP_SAT,0> result_t;
typedef ap_fixed<18,2,AP_RND_CONV,AP_SAT,0> out_weight_t;
typedef ap_fixed<18,2,AP_RND_CONV,AP_SAT,0> out_bias_t;
typedef ap_uint<1> layer11_index;

// hls-fpga-machine-learning insert emulator-defines


#endif

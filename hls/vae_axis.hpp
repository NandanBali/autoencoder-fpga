#pragma once

#include <ap_axi_sdata.h>
#include <hls_stream.h>

// Same beat formats as deep_svdd_axis (inference-hls/inference_axis.hpp).
using vae_feature_beat_t = ap_axiu<32, 0, 0, 0>;
using vae_score_beat_t = ap_axiu<64, 0, 0, 0>;

void vae_axis(hls::stream<vae_feature_beat_t>& s_axis_features,
              hls::stream<vae_score_beat_t>& m_axis_score);

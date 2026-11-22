#pragma once

#include <ap_axi_sdata.h>
#include <ap_int.h>
#include <hls_stream.h>

// Same beat formats as vae_axis / deep_svdd_axis.
using sender_feature_beat_t = ap_axiu<32, 0, 0, 0>;
using sender_score_beat_t = ap_axiu<64, 0, 0, 0>;
using cycle_t = ap_uint<64>;
// One result record per flow: bits [63:0] score code, bits [127:64] receive cycle.
using record_t = ap_uint<128>;

// Streams a whole batch of flows from DDR into vae_axis and writes every score back.
//
//   features[8 * n_flows]  32-bit feature codes (ap_fixed<25,9> in bits 24:0), flow-major
//   t_send[n_flows]        cycle at which beat 0 of each flow was issued
//   results[n_flows]       {receive cycle, score code} per flow, in input order
//   period                 minimum cycles between the starts of consecutive flows
//                          (0 or anything <= 8 = as fast as the stream accepts)
//   cycle_tx, cycle_rx     ap_fifo inputs fed by one free-running cycle counter that is always
//                          "non-empty" (dout = count, empty_n = 1): every read returns the
//                          current cycle. (A volatile ap_none port gets sampled only once.)
void vae_feature_sender(const ap_uint<32>* features, cycle_t* t_send, record_t* results,
                        ap_uint<32> n_flows, ap_uint<32> period,
                        hls::stream<cycle_t>& cycle_tx, hls::stream<cycle_t>& cycle_rx,
                        hls::stream<sender_feature_beat_t>& m_axis_features,
                        hls::stream<sender_score_beat_t>& s_axis_score);

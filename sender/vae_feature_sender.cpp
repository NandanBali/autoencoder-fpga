#include "vae_feature_sender.hpp"

// Four dataflow processes run concurrently for the whole batch:
//
//   load ──words──> pace_send ──m_axis_features──> (vae_axis) ──s_axis_score──> collect ──> results
//                       └──stamps──> store_stamps ──> t_send
//
// Every loop is pipelined at II=1, so the sender can issue one feature beat per cycle
// (one flow per 8 cycles), above the 16-cycle interval of the pipelined vae_axis.
// DDR traffic is in bursts on three independent AXI masters.

namespace {

constexpr int kFeatureCount = 8;
constexpr int kWordFifoDepth = 256;   // covers DDR read latency between bursts
constexpr int kStampFifoDepth = 64;

void load(const ap_uint<32>* features, ap_uint<32> n_flows, hls::stream<ap_uint<32>>& words) {
    const ap_uint<35> n_words = ap_uint<35>(n_flows) * kFeatureCount;
read_ddr:
    for (ap_uint<35> i = 0; i < n_words; ++i) {
#pragma HLS PIPELINE II=1
        words.write(features[i]);
    }
}

void pace_send(hls::stream<ap_uint<32>>& words, ap_uint<32> n_flows, ap_uint<32> period,
               hls::stream<cycle_t>& clk, hls::stream<sender_feature_beat_t>& out,
               hls::stream<cycle_t>& stamps) {
    cycle_t next = clk.read();
    ap_uint<32> flow = 0;
    ap_uint<3> beat = 0;
    ap_uint<32> word = 0;
    bool have_word = false;
send:
    while (flow < n_flows) {
#pragma HLS PIPELINE II=1
        const cycle_t now = clk.read();
        if (!have_word) have_word = words.read_nb(word);
        // Beat 0 of a flow waits for its slot; the other seven beats go back to back.
        if (have_word && (beat != 0 || now >= next)) {
            sender_feature_beat_t b;
            b.data = word;
            b.keep = 0xf;
            b.strb = 0xf;
            b.last = beat == kFeatureCount - 1;
            // Non-blocking, so a flow is stamped in the cycle its first beat is accepted.
            if (out.write_nb(b)) {
                have_word = false;
                if (beat == 0) {
                    stamps.write(now);
                    next = now + period;
                }
                if (beat == kFeatureCount - 1) ++flow;
                ++beat;
            }
        }
    }
}

void store_stamps(hls::stream<cycle_t>& stamps, ap_uint<32> n_flows, cycle_t* t_send) {
write_stamps:
    for (ap_uint<32> i = 0; i < n_flows; ++i) {
#pragma HLS PIPELINE II=1
        t_send[i] = stamps.read();
    }
}

void collect(hls::stream<sender_score_beat_t>& in, ap_uint<32> n_flows, hls::stream<cycle_t>& clk,
             record_t* results) {
write_results:
    for (ap_uint<32> i = 0; i < n_flows; ++i) {
#pragma HLS PIPELINE II=1
        const sender_score_beat_t beat = in.read();
        const cycle_t now = clk.read();
        record_t r;
        r.range(63, 0) = beat.data;
        r.range(127, 64) = now;
        results[i] = r;
    }
}

}  // namespace

void vae_feature_sender(const ap_uint<32>* features, cycle_t* t_send, record_t* results,
                        ap_uint<32> n_flows, ap_uint<32> period,
                        hls::stream<cycle_t>& cycle_tx, hls::stream<cycle_t>& cycle_rx,
                        hls::stream<sender_feature_beat_t>& m_axis_features,
                        hls::stream<sender_score_beat_t>& s_axis_score) {
#pragma HLS INTERFACE m_axi port=features offset=slave bundle=gmem_in depth=2048 \
    max_read_burst_length=64 num_read_outstanding=8 latency=64
#pragma HLS INTERFACE m_axi port=t_send offset=slave bundle=gmem_ts depth=256 \
    max_write_burst_length=64 num_write_outstanding=8
#pragma HLS INTERFACE m_axi port=results offset=slave bundle=gmem_res depth=256 \
    max_write_burst_length=64 num_write_outstanding=8
#pragma HLS INTERFACE s_axilite port=features bundle=control
#pragma HLS INTERFACE s_axilite port=t_send bundle=control
#pragma HLS INTERFACE s_axilite port=results bundle=control
#pragma HLS INTERFACE s_axilite port=n_flows bundle=control
#pragma HLS INTERFACE s_axilite port=period bundle=control
#pragma HLS INTERFACE s_axilite port=return bundle=control
#pragma HLS INTERFACE ap_fifo port=cycle_tx
#pragma HLS INTERFACE ap_fifo port=cycle_rx
#pragma HLS INTERFACE axis port=m_axis_features register_mode=both
#pragma HLS INTERFACE axis port=s_axis_score register_mode=both
#pragma HLS DATAFLOW

    hls::stream<ap_uint<32>, kWordFifoDepth> words;
    hls::stream<cycle_t, kStampFifoDepth> stamps;

    load(features, n_flows, words);
    pace_send(words, n_flows, period, cycle_tx, m_axis_features, stamps);
    store_stamps(stamps, n_flows, t_send);
    collect(s_axis_score, n_flows, cycle_rx, results);
}

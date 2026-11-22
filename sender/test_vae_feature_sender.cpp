// C simulation: sender alone, then sender -> vae_axis end to end, on the 256 golden flows.
#include <cstdint>
#include <iostream>
#include <vector>

#include "golden_vectors.h"
#include "vae_axis.hpp"
#include "vae_feature_sender.hpp"

namespace {
constexpr int kFeatureCount = 8;

int fail(const char* what, int i) {
    std::cerr << "FAIL: " << what << " at " << i << '\n';
    return 1;
}
}  // namespace

int main() {
    const int n = kGoldenCount;
    std::vector<ap_uint<32>> features(n * kFeatureCount);
    for (int r = 0; r < n; ++r)
        for (int i = 0; i < kFeatureCount; ++i)
            features[r * kFeatureCount + i] = static_cast<std::uint32_t>(kGoldenFeatures[r][i]) & 0x1ffffff;

    // Score beats for the sender's input, produced by the real wrapper.
    hls::stream<sender_feature_beat_t> to_core;
    hls::stream<sender_score_beat_t> from_core;
    std::vector<cycle_t> t_send(n, ~cycle_t(0));
    std::vector<record_t> results(n, ~record_t(0));
    // Cycle counters: in hardware every read returns the current cycle; here each read
    // returns the next value of a counter, enough for every read the sender makes.
    hls::stream<cycle_t> clk_tx, clk_rx;
    auto fill_clocks = [&](int n_flows) {
        for (int i = 0; i < n_flows * kFeatureCount + 1; ++i) clk_tx.write(1000 + i);
        for (int i = 0; i < n_flows; ++i) clk_rx.write(100000 + 20 * i);
    };
    auto drain_clocks = [&]() {
        while (!clk_tx.empty()) clk_tx.read();
        while (!clk_rx.empty()) clk_rx.read();
    };
    fill_clocks(n);

    {
        hls::stream<vae_feature_beat_t> in;
        for (int r = 0; r < n; ++r) {
            for (int i = 0; i < kFeatureCount; ++i) {
                vae_feature_beat_t b;
                b.data = features[r * kFeatureCount + i];
                b.keep = 0xf; b.strb = 0xf; b.last = i == kFeatureCount - 1;
                in.write(b);
            }
            vae_axis(in, from_core);
        }
    }

    vae_feature_sender(features.data(), t_send.data(), results.data(), n, 0, clk_tx, clk_rx,
                       to_core, from_core);
    drain_clocks();

    // 1. The sender emitted exactly the DDR words with correct framing.
    for (int r = 0; r < n; ++r) {
        for (int i = 0; i < kFeatureCount; ++i) {
            if (to_core.empty()) return fail("missing feature beat", r);
            const sender_feature_beat_t b = to_core.read();
            if (b.data != features[r * kFeatureCount + i] || b.keep != 0xf || b.strb != 0xf ||
                b.last != (i == kFeatureCount - 1))
                return fail("feature beat", r * kFeatureCount + i);
            // 3. Re-inject into vae_axis for the end-to-end check below.
            vae_feature_beat_t v;
            v.data = b.data; v.keep = b.keep; v.strb = b.strb; v.last = b.last;
            static hls::stream<vae_feature_beat_t> chain_in;
            chain_in.write(v);
            if (b.last) {
                hls::stream<vae_score_beat_t> chain_out;
                vae_axis(chain_in, chain_out);
                if (chain_out.empty() || chain_out.read().data.to_uint64() != kGoldenScores[r])
                    return fail("end-to-end score", r);
            }
        }
    }
    if (!to_core.empty()) return fail("extra feature beats", 0);

    // 2. Every result record holds the right score and the receive stamp; every send stamp written.
    for (int r = 0; r < n; ++r) {
        if (results[r].range(63, 0).to_uint64() != kGoldenScores[r]) return fail("result score", r);
        if (results[r].range(127, 64) != cycle_t(100000 + 20 * r)) return fail("result stamp", r);
        // Read 0 seeds the schedule; flow r's beat 0 goes out on loop iteration 8r.
        if (t_send[r] != cycle_t(1000 + 1 + 8 * r)) return fail("send stamp", r);
    }

    // 4. Pacing: with period 40 the starts of consecutive flows are exactly 40 cycles apart
    //    (the C-sim counter advances one per loop iteration, like the hardware clock).
    {
        const int m = 16;
        for (int i = 0; i < m * 64 + 1; ++i) clk_tx.write(i);
        for (int i = 0; i < m; ++i) clk_rx.write(0);
        hls::stream<sender_score_beat_t> scores;
        for (int r = 0; r < m; ++r) { sender_score_beat_t b; b.data = r; b.keep = 0xff; b.strb = 0xff; b.last = 1; scores.write(b); }
        vae_feature_sender(features.data(), t_send.data(), results.data(), m, 40, clk_tx, clk_rx, to_core, scores);
        drain_clocks();
        while (!to_core.empty()) to_core.read();
        for (int r = 1; r < m; ++r)
            if (t_send[r] - t_send[r - 1] != 40) return fail("pacing", r);
    }

    // 5. An empty batch finishes without touching memory or streams.
    t_send[0] = 7;
    fill_clocks(0);
    vae_feature_sender(features.data(), t_send.data(), results.data(), 0, 0, clk_tx, clk_rx,
                       to_core, from_core);
    drain_clocks();
    if (t_send[0] != 7 || !to_core.empty()) return fail("empty batch", 0);

    std::cout << "vae_feature_sender tests passed (" << n << " flows, end to end through vae_axis)\n";
    return 0;
}

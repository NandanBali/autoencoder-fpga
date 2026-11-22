// System RTL testbench: vae_feature_sender -> pipelined vae_axis -> sender, with DDR models.
//
// Plusargs: +flows=N (default 256)  +period=P (default 0)  +mem_latency=L (default 40 cycles)
//           +csv=path (per-flow tx,rx,score dump)
// Reads features.hex (one 32-bit word per line, flow-major) and expected.hex (64-bit score codes).
`timescale 1ns / 1ps
module tb;
`include "ports.svh"

    localparam longint FEAT_BASE = 64'h1000_0000;
    localparam longint TS_BASE   = 64'h2000_0000;
    localparam longint RES_BASE  = 64'h3000_0000;
    localparam int MAX_FLOWS = 1 << 17;

    int n_flows, period, mem_latency;
    string csv;
    logic [63:0] counter;
    logic [63:0] expected [MAX_FLOWS];

    initial ap_clk = 0;
    always #5 ap_clk = ~ap_clk;  // 100 MHz
    always @(posedge ap_clk) counter <= !ap_rst_n ? 64'd0 : counter + 64'd1;
    // The sender reads the counter through always-non-empty ap_fifo ports.
    assign cycle_tx_dout = counter;
    assign cycle_rx_dout = counter;
    assign cycle_tx_empty_n = 1'b1;
    assign cycle_rx_empty_n = 1'b1;

    vae_feature_sender sender (.*);
    vae_axis vae (.*);

    // sender -> vae_axis
    assign s_axis_features_TDATA  = m_axis_features_TDATA;
    assign s_axis_features_TKEEP  = m_axis_features_TKEEP;
    assign s_axis_features_TSTRB  = m_axis_features_TSTRB;
    assign s_axis_features_TLAST  = m_axis_features_TLAST;
    assign s_axis_features_TVALID = m_axis_features_TVALID;
    assign m_axis_features_TREADY = s_axis_features_TREADY;
    // vae_axis -> sender
    assign s_axis_score_TDATA  = m_axis_score_TDATA;
    assign s_axis_score_TKEEP  = m_axis_score_TKEEP;
    assign s_axis_score_TSTRB  = m_axis_score_TSTRB;
    assign s_axis_score_TLAST  = m_axis_score_TLAST;
    assign s_axis_score_TVALID = m_axis_score_TVALID;
    assign m_axis_score_TREADY = s_axis_score_TREADY;

`define AXI_MEM(B, DWIDTH, BASEADDR, NWORDS) \
    assign m_axi_``B``_RID = 0; assign m_axi_``B``_RUSER = 0; \
    assign m_axi_``B``_BID = 0; assign m_axi_``B``_BUSER = 0; \
    axi_mem #(.DW(DWIDTH), .BASE(BASEADDR), .WORDS(NWORDS)) mem_``B ( \
        .clk(ap_clk), .rst_n(ap_rst_n), .read_latency(mem_latency), \
        .awvalid(m_axi_``B``_AWVALID), .awready(m_axi_``B``_AWREADY), .awaddr(m_axi_``B``_AWADDR), \
        .awlen(m_axi_``B``_AWLEN), .wvalid(m_axi_``B``_WVALID), .wready(m_axi_``B``_WREADY), \
        .wdata(m_axi_``B``_WDATA), .wstrb(m_axi_``B``_WSTRB), .wlast(m_axi_``B``_WLAST), \
        .bvalid(m_axi_``B``_BVALID), .bready(m_axi_``B``_BREADY), .bresp(m_axi_``B``_BRESP), \
        .arvalid(m_axi_``B``_ARVALID), .arready(m_axi_``B``_ARREADY), .araddr(m_axi_``B``_ARADDR), \
        .arlen(m_axi_``B``_ARLEN), .rvalid(m_axi_``B``_RVALID), .rready(m_axi_``B``_RREADY), \
        .rdata(m_axi_``B``_RDATA), .rlast(m_axi_``B``_RLAST), .rresp(m_axi_``B``_RRESP));

    `AXI_MEM(gmem_in, 32, FEAT_BASE, MAX_FLOWS * 8)
    `AXI_MEM(gmem_ts, 64, TS_BASE, MAX_FLOWS)
    `AXI_MEM(gmem_res, 128, RES_BASE, MAX_FLOWS)

    // ---------------- AXI4-Lite master (drives on posedge with NBAs; samples pre-edge values)
    task automatic axil_write(input logic [7:0] addr, input logic [31:0] data);
        bit aw = 0, w = 0;
        s_axi_control_AWADDR <= addr; s_axi_control_AWVALID <= 1;
        s_axi_control_WDATA <= data; s_axi_control_WSTRB <= 4'hf; s_axi_control_WVALID <= 1;
        while (!(aw && w)) begin
            @(posedge ap_clk);
            if (s_axi_control_AWVALID && s_axi_control_AWREADY) begin aw = 1; s_axi_control_AWVALID <= 0; end
            if (s_axi_control_WVALID && s_axi_control_WREADY) begin w = 1; s_axi_control_WVALID <= 0; end
        end
        do @(posedge ap_clk); while (!s_axi_control_BVALID);
    endtask

    task automatic axil_read(input logic [7:0] addr, output logic [31:0] data);
        s_axi_control_ARADDR <= addr; s_axi_control_ARVALID <= 1;
        do @(posedge ap_clk); while (!s_axi_control_ARREADY);
        s_axi_control_ARVALID <= 0;
        while (!s_axi_control_RVALID) @(posedge ap_clk);
        data = s_axi_control_RDATA;
        @(posedge ap_clk);
    endtask

    task automatic axil_write64(input logic [7:0] addr, input longint value);
        axil_write(addr, value[31:0]);
        axil_write(addr + 4, value[63:32]);
    endtask

    // Progress counters (printed every 1000 cycles with +trace, and on timeout).
    longint feat_beats = 0, scores = 0, ar_bursts = 0, r_beats = 0, aw_res = 0, b_res = 0, max_cycles;
    always @(posedge ap_clk) if (ap_rst_n) begin
        feat_beats += m_axis_features_TVALID && m_axis_features_TREADY;
        scores     += s_axis_score_TVALID && s_axis_score_TREADY;
        ar_bursts  += m_axi_gmem_in_ARVALID && m_axi_gmem_in_ARREADY;
        r_beats    += m_axi_gmem_in_RVALID && m_axi_gmem_in_RREADY;
        aw_res     += m_axi_gmem_res_AWVALID && m_axi_gmem_res_AWREADY;
        b_res      += m_axi_gmem_res_BVALID && m_axi_gmem_res_BREADY;
    end
    task automatic progress();
        $display("t=%0d feat_beats=%0d scores=%0d ar=%0d r=%0d aw_res=%0d b_res=%0d", counter,
                 feat_beats, scores, ar_bursts, r_beats, aw_res, b_res);
    endtask
    always @(posedge ap_clk) if ($test$plusargs("trace") && counter % 1000 == 0 && counter > 0) progress();

    initial begin
        logic [31:0] st;
        longint t_start, t_done, lat, lat_min, lat_max, lat_sum, rx_first, rx_last;
        int mism, fd;
        if (!$value$plusargs("flows=%d", n_flows)) n_flows = 256;
        if (!$value$plusargs("period=%d", period)) period = 0;
        if (!$value$plusargs("mem_latency=%d", mem_latency)) mem_latency = 40;
        if (!$value$plusargs("csv=%s", csv)) csv = "";
        if (!$value$plusargs("max_cycles=%d", max_cycles)) max_cycles = 64'd2_000_000;

        {s_axi_control_AWVALID, s_axi_control_WVALID, s_axi_control_ARVALID} = 0;
        s_axi_control_BREADY = 1; s_axi_control_RREADY = 1;
        s_axi_control_AWADDR = 0; s_axi_control_ARADDR = 0; s_axi_control_WDATA = 0; s_axi_control_WSTRB = 0;
        ap_rst_n = 0;
        $readmemh("features.hex", mem_gmem_in.mem);
        $readmemh("expected.hex", expected);
        repeat (20) @(posedge ap_clk);
        ap_rst_n <= 1;
        repeat (20) @(posedge ap_clk);

        axil_write64(8'h10, FEAT_BASE);
        axil_write64(8'h1c, TS_BASE);
        axil_write64(8'h28, RES_BASE);
        axil_write(8'h34, n_flows);
        axil_write(8'h3c, period);
        t_start = counter;
        axil_write(8'h00, 1);
        do begin
            axil_read(8'h00, st);
            if (counter - t_start > max_cycles) begin $display("TIMEOUT"); progress(); $finish; end
        end while (!st[1]);
        t_done = counter;

        mism = 0; lat_min = 1 << 62; lat_max = 0; lat_sum = 0;
        fd = csv != "" ? $fopen(csv, "w") : 0;
        if (fd) $fwrite(fd, "flow,t_send,t_recv,score\n");
        for (int i = 0; i < n_flows; i++) begin
            automatic logic [127:0] r = mem_gmem_res.mem[i];
            automatic longint tx = mem_gmem_ts.mem[i];
            automatic longint rx = r[127:64];
            if (r[63:0] !== expected[i]) begin
                if (mism < 5) $display("MISMATCH flow %0d: got %0d expected %0d", i, r[63:0], expected[i]);
                mism++;
            end
            lat = rx - tx;
            lat_sum += lat;
            if (lat < lat_min) lat_min = lat;
            if (lat > lat_max) lat_max = lat;
            if (i == 0) rx_first = rx;
            rx_last = rx;
            if (fd) $fwrite(fd, "%0d,%0d,%0d,%0d\n", i, tx, rx, r[63:0]);
        end
        if (fd) $fclose(fd);
        $display("RESULT flows=%0d period=%0d mem_latency=%0d mismatches=%0d", n_flows, period, mem_latency, mism);
        $display("RESULT latency_cycles min=%0d mean=%0.2f max=%0d", lat_min, real'(lat_sum) / n_flows, lat_max);
        if (n_flows > 1)
            $display("RESULT output_interval_cycles=%0.3f  start_to_done_cycles=%0d",
                     real'(rx_last - rx_first) / (n_flows - 1), t_done - t_start);
        if (mism == 0) $display("PASS"); else $display("FAIL");
        $finish;
    end
endmodule

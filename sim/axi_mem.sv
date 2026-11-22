// Behavioural AXI4 slave memory for one HLS m_axi bundle: INCR bursts, one outstanding
// write burst at a time, reads answered after a fixed latency (models PS DDR via HP0).
module axi_mem #(parameter int DW = 32, parameter longint BASE = 0, parameter int WORDS = 1 << 16) (
    input  logic          clk,
    input  logic          rst_n,
    input  int            read_latency,
    // write address / data / response
    input  logic          awvalid, output logic awready, input logic [63:0] awaddr, input logic [7:0] awlen,
    input  logic          wvalid,  output logic wready,  input logic [DW-1:0] wdata,
    input  logic [DW/8-1:0] wstrb, input logic wlast,
    output logic          bvalid,  input  logic bready,  output logic [1:0] bresp,
    // read address / data
    input  logic          arvalid, output logic arready, input logic [63:0] araddr, input logic [7:0] arlen,
    output logic          rvalid,  input  logic rready,  output logic [DW-1:0] rdata,
    output logic          rlast,   output logic [1:0] rresp
);
    localparam int BYTES = DW / 8;
    logic [DW-1:0] mem [WORDS];

    function automatic int index(input logic [63:0] addr);
        return int'((addr - BASE) / BYTES);
    endfunction

    // ---------------- writes
    typedef struct { int idx; int left; } burst_t;
    burst_t aw_q[$];
    int w_idx, w_left; bit w_busy;
    int b_pending;
    int aw_count;  // mirrors aw_q.size(); continuous assigns do not track queue methods
    assign awready = 1'b1;
    assign wready  = w_busy || aw_count > 0;
    assign bresp = 2'b00;
    always_ff @(posedge clk) begin
        if (!rst_n) begin
            aw_q.delete(); aw_count <= 0; w_busy <= 0; bvalid <= 0; b_pending = 0;
        end else begin
            if (awvalid) aw_q.push_back('{index(awaddr), int'(awlen) + 1});
            if (wvalid && wready) begin
                automatic int i;
                if (!w_busy) begin
                    automatic burst_t b = aw_q.pop_front();
                    i = b.idx; w_left = b.left;
                end else i = w_idx;
                for (int k = 0; k < BYTES; k++) if (wstrb[k]) mem[i][8*k +: 8] = wdata[8*k +: 8];
                w_left = w_left - 1;
                w_idx = i + 1;
                w_busy <= w_left > 0;
                if (w_left == 0) b_pending++;
                if (wlast != (w_left == 0)) $error("axi_mem: WLAST mismatch");
            end
            aw_count <= aw_q.size();
            if (bvalid && bready) begin bvalid <= 0; end
            else if (!bvalid && b_pending > 0) begin bvalid <= 1; b_pending--; end
        end
    end

    // ---------------- reads
    typedef struct { int idx; int left; longint ready_at; } rburst_t;
    rburst_t ar_q[$];
    longint now;
    assign arready = 1'b1;
    assign rresp = 2'b00;
    always_ff @(posedge clk) begin
        if (!rst_n) begin
            now = 0; ar_q.delete(); rvalid <= 0; rlast <= 0;
        end else begin
            now++;
            if (arvalid) ar_q.push_back('{index(araddr), int'(arlen) + 1, now + read_latency});
            if (rvalid && !rready) begin
                // hold
            end else if (ar_q.size() > 0 && ar_q[0].ready_at <= now) begin
                automatic rburst_t h = ar_q[0];
                rvalid <= 1;
                rdata  <= mem[h.idx];
                rlast  <= h.left == 1;
                h.idx++;
                h.left--;
                if (h.left == 0) void'(ar_q.pop_front());
                else ar_q[0] = h;
            end else begin
                rvalid <= 0; rlast <= 0;
            end
        end
    end
endmodule

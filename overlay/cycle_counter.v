// Free-running 64-bit cycle counter, shared by the sender's TX and RX timestamp ports.
// The sender reads it through ap_fifo ports, so it also drives an always-high "not empty".
// It is cleared by the fabric reset and wraps after 2^64 cycles (5,800 years at 100 MHz).
module cycle_counter (
    (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
    (* X_INTERFACE_PARAMETER = "ASSOCIATED_RESET resetn" *)
    input  wire        clk,
    (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 resetn RST" *)
    (* X_INTERFACE_PARAMETER = "POLARITY ACTIVE_LOW" *)
    input  wire        resetn,
    output reg  [63:0] count,
    output wire        not_empty
);
    assign not_empty = 1'b1;
    always @(posedge clk) begin
        if (!resetn) count <= 64'd0;
        else         count <= count + 64'd1;
    end
endmodule

// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0 - ap_done (Read/TOW)
//        bit 1 - ap_ready (Read/TOW)
//        others - reserved
// 0x10 : Data signal of features
//        bit 31~0 - features[31:0] (Read/Write)
// 0x14 : Data signal of features
//        bit 31~0 - features[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of t_send
//        bit 31~0 - t_send[31:0] (Read/Write)
// 0x20 : Data signal of t_send
//        bit 31~0 - t_send[63:32] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of results
//        bit 31~0 - results[31:0] (Read/Write)
// 0x2c : Data signal of results
//        bit 31~0 - results[63:32] (Read/Write)
// 0x30 : reserved
// 0x34 : Data signal of n_flows
//        bit 31~0 - n_flows[31:0] (Read/Write)
// 0x38 : reserved
// 0x3c : Data signal of period
//        bit 31~0 - period[31:0] (Read/Write)
// 0x40 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONTROL_ADDR_AP_CTRL       0x00
#define CONTROL_ADDR_GIE           0x04
#define CONTROL_ADDR_IER           0x08
#define CONTROL_ADDR_ISR           0x0c
#define CONTROL_ADDR_FEATURES_DATA 0x10
#define CONTROL_BITS_FEATURES_DATA 64
#define CONTROL_ADDR_T_SEND_DATA   0x1c
#define CONTROL_BITS_T_SEND_DATA   64
#define CONTROL_ADDR_RESULTS_DATA  0x28
#define CONTROL_BITS_RESULTS_DATA  64
#define CONTROL_ADDR_N_FLOWS_DATA  0x34
#define CONTROL_BITS_N_FLOWS_DATA  32
#define CONTROL_ADDR_PERIOD_DATA   0x3c
#define CONTROL_BITS_PERIOD_DATA   32

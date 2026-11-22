// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Mon Nov 23 00:54:50 2026
// Host        : fedora running 64-bit unknown
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ vae_sender_cycles_0_sim_netlist.v
// Design      : vae_sender_cycles_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cycle_counter
   (count,
    clk,
    resetn);
  output [63:0]count;
  input clk;
  input resetn;

  wire clear;
  wire clk;
  wire [63:0]count;
  wire \count[3]_i_2_n_0 ;
  wire \count_reg[11]_i_1_n_0 ;
  wire \count_reg[11]_i_1_n_1 ;
  wire \count_reg[11]_i_1_n_2 ;
  wire \count_reg[11]_i_1_n_3 ;
  wire \count_reg[11]_i_1_n_4 ;
  wire \count_reg[11]_i_1_n_5 ;
  wire \count_reg[11]_i_1_n_6 ;
  wire \count_reg[11]_i_1_n_7 ;
  wire \count_reg[15]_i_1_n_0 ;
  wire \count_reg[15]_i_1_n_1 ;
  wire \count_reg[15]_i_1_n_2 ;
  wire \count_reg[15]_i_1_n_3 ;
  wire \count_reg[15]_i_1_n_4 ;
  wire \count_reg[15]_i_1_n_5 ;
  wire \count_reg[15]_i_1_n_6 ;
  wire \count_reg[15]_i_1_n_7 ;
  wire \count_reg[19]_i_1_n_0 ;
  wire \count_reg[19]_i_1_n_1 ;
  wire \count_reg[19]_i_1_n_2 ;
  wire \count_reg[19]_i_1_n_3 ;
  wire \count_reg[19]_i_1_n_4 ;
  wire \count_reg[19]_i_1_n_5 ;
  wire \count_reg[19]_i_1_n_6 ;
  wire \count_reg[19]_i_1_n_7 ;
  wire \count_reg[23]_i_1_n_0 ;
  wire \count_reg[23]_i_1_n_1 ;
  wire \count_reg[23]_i_1_n_2 ;
  wire \count_reg[23]_i_1_n_3 ;
  wire \count_reg[23]_i_1_n_4 ;
  wire \count_reg[23]_i_1_n_5 ;
  wire \count_reg[23]_i_1_n_6 ;
  wire \count_reg[23]_i_1_n_7 ;
  wire \count_reg[27]_i_1_n_0 ;
  wire \count_reg[27]_i_1_n_1 ;
  wire \count_reg[27]_i_1_n_2 ;
  wire \count_reg[27]_i_1_n_3 ;
  wire \count_reg[27]_i_1_n_4 ;
  wire \count_reg[27]_i_1_n_5 ;
  wire \count_reg[27]_i_1_n_6 ;
  wire \count_reg[27]_i_1_n_7 ;
  wire \count_reg[31]_i_1_n_0 ;
  wire \count_reg[31]_i_1_n_1 ;
  wire \count_reg[31]_i_1_n_2 ;
  wire \count_reg[31]_i_1_n_3 ;
  wire \count_reg[31]_i_1_n_4 ;
  wire \count_reg[31]_i_1_n_5 ;
  wire \count_reg[31]_i_1_n_6 ;
  wire \count_reg[31]_i_1_n_7 ;
  wire \count_reg[35]_i_1_n_0 ;
  wire \count_reg[35]_i_1_n_1 ;
  wire \count_reg[35]_i_1_n_2 ;
  wire \count_reg[35]_i_1_n_3 ;
  wire \count_reg[35]_i_1_n_4 ;
  wire \count_reg[35]_i_1_n_5 ;
  wire \count_reg[35]_i_1_n_6 ;
  wire \count_reg[35]_i_1_n_7 ;
  wire \count_reg[39]_i_1_n_0 ;
  wire \count_reg[39]_i_1_n_1 ;
  wire \count_reg[39]_i_1_n_2 ;
  wire \count_reg[39]_i_1_n_3 ;
  wire \count_reg[39]_i_1_n_4 ;
  wire \count_reg[39]_i_1_n_5 ;
  wire \count_reg[39]_i_1_n_6 ;
  wire \count_reg[39]_i_1_n_7 ;
  wire \count_reg[3]_i_1_n_0 ;
  wire \count_reg[3]_i_1_n_1 ;
  wire \count_reg[3]_i_1_n_2 ;
  wire \count_reg[3]_i_1_n_3 ;
  wire \count_reg[3]_i_1_n_4 ;
  wire \count_reg[3]_i_1_n_5 ;
  wire \count_reg[3]_i_1_n_6 ;
  wire \count_reg[3]_i_1_n_7 ;
  wire \count_reg[43]_i_1_n_0 ;
  wire \count_reg[43]_i_1_n_1 ;
  wire \count_reg[43]_i_1_n_2 ;
  wire \count_reg[43]_i_1_n_3 ;
  wire \count_reg[43]_i_1_n_4 ;
  wire \count_reg[43]_i_1_n_5 ;
  wire \count_reg[43]_i_1_n_6 ;
  wire \count_reg[43]_i_1_n_7 ;
  wire \count_reg[47]_i_1_n_0 ;
  wire \count_reg[47]_i_1_n_1 ;
  wire \count_reg[47]_i_1_n_2 ;
  wire \count_reg[47]_i_1_n_3 ;
  wire \count_reg[47]_i_1_n_4 ;
  wire \count_reg[47]_i_1_n_5 ;
  wire \count_reg[47]_i_1_n_6 ;
  wire \count_reg[47]_i_1_n_7 ;
  wire \count_reg[51]_i_1_n_0 ;
  wire \count_reg[51]_i_1_n_1 ;
  wire \count_reg[51]_i_1_n_2 ;
  wire \count_reg[51]_i_1_n_3 ;
  wire \count_reg[51]_i_1_n_4 ;
  wire \count_reg[51]_i_1_n_5 ;
  wire \count_reg[51]_i_1_n_6 ;
  wire \count_reg[51]_i_1_n_7 ;
  wire \count_reg[55]_i_1_n_0 ;
  wire \count_reg[55]_i_1_n_1 ;
  wire \count_reg[55]_i_1_n_2 ;
  wire \count_reg[55]_i_1_n_3 ;
  wire \count_reg[55]_i_1_n_4 ;
  wire \count_reg[55]_i_1_n_5 ;
  wire \count_reg[55]_i_1_n_6 ;
  wire \count_reg[55]_i_1_n_7 ;
  wire \count_reg[59]_i_1_n_0 ;
  wire \count_reg[59]_i_1_n_1 ;
  wire \count_reg[59]_i_1_n_2 ;
  wire \count_reg[59]_i_1_n_3 ;
  wire \count_reg[59]_i_1_n_4 ;
  wire \count_reg[59]_i_1_n_5 ;
  wire \count_reg[59]_i_1_n_6 ;
  wire \count_reg[59]_i_1_n_7 ;
  wire \count_reg[63]_i_2_n_1 ;
  wire \count_reg[63]_i_2_n_2 ;
  wire \count_reg[63]_i_2_n_3 ;
  wire \count_reg[63]_i_2_n_4 ;
  wire \count_reg[63]_i_2_n_5 ;
  wire \count_reg[63]_i_2_n_6 ;
  wire \count_reg[63]_i_2_n_7 ;
  wire \count_reg[7]_i_1_n_0 ;
  wire \count_reg[7]_i_1_n_1 ;
  wire \count_reg[7]_i_1_n_2 ;
  wire \count_reg[7]_i_1_n_3 ;
  wire \count_reg[7]_i_1_n_4 ;
  wire \count_reg[7]_i_1_n_5 ;
  wire \count_reg[7]_i_1_n_6 ;
  wire \count_reg[7]_i_1_n_7 ;
  wire resetn;
  wire [3:3]\NLW_count_reg[63]_i_2_CO_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \count[3]_i_2 
       (.I0(count[0]),
        .O(\count[3]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count[63]_i_1 
       (.I0(resetn),
        .O(clear));
  FDRE \count_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[3]_i_1_n_7 ),
        .Q(count[0]),
        .R(clear));
  FDRE \count_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[11]_i_1_n_5 ),
        .Q(count[10]),
        .R(clear));
  FDRE \count_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[11]_i_1_n_4 ),
        .Q(count[11]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[11]_i_1 
       (.CI(\count_reg[7]_i_1_n_0 ),
        .CO({\count_reg[11]_i_1_n_0 ,\count_reg[11]_i_1_n_1 ,\count_reg[11]_i_1_n_2 ,\count_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[11]_i_1_n_4 ,\count_reg[11]_i_1_n_5 ,\count_reg[11]_i_1_n_6 ,\count_reg[11]_i_1_n_7 }),
        .S(count[11:8]));
  FDRE \count_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[15]_i_1_n_7 ),
        .Q(count[12]),
        .R(clear));
  FDRE \count_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[15]_i_1_n_6 ),
        .Q(count[13]),
        .R(clear));
  FDRE \count_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[15]_i_1_n_5 ),
        .Q(count[14]),
        .R(clear));
  FDRE \count_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[15]_i_1_n_4 ),
        .Q(count[15]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[15]_i_1 
       (.CI(\count_reg[11]_i_1_n_0 ),
        .CO({\count_reg[15]_i_1_n_0 ,\count_reg[15]_i_1_n_1 ,\count_reg[15]_i_1_n_2 ,\count_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[15]_i_1_n_4 ,\count_reg[15]_i_1_n_5 ,\count_reg[15]_i_1_n_6 ,\count_reg[15]_i_1_n_7 }),
        .S(count[15:12]));
  FDRE \count_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[19]_i_1_n_7 ),
        .Q(count[16]),
        .R(clear));
  FDRE \count_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[19]_i_1_n_6 ),
        .Q(count[17]),
        .R(clear));
  FDRE \count_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[19]_i_1_n_5 ),
        .Q(count[18]),
        .R(clear));
  FDRE \count_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[19]_i_1_n_4 ),
        .Q(count[19]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[19]_i_1 
       (.CI(\count_reg[15]_i_1_n_0 ),
        .CO({\count_reg[19]_i_1_n_0 ,\count_reg[19]_i_1_n_1 ,\count_reg[19]_i_1_n_2 ,\count_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[19]_i_1_n_4 ,\count_reg[19]_i_1_n_5 ,\count_reg[19]_i_1_n_6 ,\count_reg[19]_i_1_n_7 }),
        .S(count[19:16]));
  FDRE \count_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[3]_i_1_n_6 ),
        .Q(count[1]),
        .R(clear));
  FDRE \count_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[23]_i_1_n_7 ),
        .Q(count[20]),
        .R(clear));
  FDRE \count_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[23]_i_1_n_6 ),
        .Q(count[21]),
        .R(clear));
  FDRE \count_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[23]_i_1_n_5 ),
        .Q(count[22]),
        .R(clear));
  FDRE \count_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[23]_i_1_n_4 ),
        .Q(count[23]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[23]_i_1 
       (.CI(\count_reg[19]_i_1_n_0 ),
        .CO({\count_reg[23]_i_1_n_0 ,\count_reg[23]_i_1_n_1 ,\count_reg[23]_i_1_n_2 ,\count_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[23]_i_1_n_4 ,\count_reg[23]_i_1_n_5 ,\count_reg[23]_i_1_n_6 ,\count_reg[23]_i_1_n_7 }),
        .S(count[23:20]));
  FDRE \count_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[27]_i_1_n_7 ),
        .Q(count[24]),
        .R(clear));
  FDRE \count_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[27]_i_1_n_6 ),
        .Q(count[25]),
        .R(clear));
  FDRE \count_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[27]_i_1_n_5 ),
        .Q(count[26]),
        .R(clear));
  FDRE \count_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[27]_i_1_n_4 ),
        .Q(count[27]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[27]_i_1 
       (.CI(\count_reg[23]_i_1_n_0 ),
        .CO({\count_reg[27]_i_1_n_0 ,\count_reg[27]_i_1_n_1 ,\count_reg[27]_i_1_n_2 ,\count_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[27]_i_1_n_4 ,\count_reg[27]_i_1_n_5 ,\count_reg[27]_i_1_n_6 ,\count_reg[27]_i_1_n_7 }),
        .S(count[27:24]));
  FDRE \count_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[31]_i_1_n_7 ),
        .Q(count[28]),
        .R(clear));
  FDRE \count_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[31]_i_1_n_6 ),
        .Q(count[29]),
        .R(clear));
  FDRE \count_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[3]_i_1_n_5 ),
        .Q(count[2]),
        .R(clear));
  FDRE \count_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[31]_i_1_n_5 ),
        .Q(count[30]),
        .R(clear));
  FDRE \count_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[31]_i_1_n_4 ),
        .Q(count[31]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[31]_i_1 
       (.CI(\count_reg[27]_i_1_n_0 ),
        .CO({\count_reg[31]_i_1_n_0 ,\count_reg[31]_i_1_n_1 ,\count_reg[31]_i_1_n_2 ,\count_reg[31]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[31]_i_1_n_4 ,\count_reg[31]_i_1_n_5 ,\count_reg[31]_i_1_n_6 ,\count_reg[31]_i_1_n_7 }),
        .S(count[31:28]));
  FDRE \count_reg[32] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[35]_i_1_n_7 ),
        .Q(count[32]),
        .R(clear));
  FDRE \count_reg[33] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[35]_i_1_n_6 ),
        .Q(count[33]),
        .R(clear));
  FDRE \count_reg[34] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[35]_i_1_n_5 ),
        .Q(count[34]),
        .R(clear));
  FDRE \count_reg[35] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[35]_i_1_n_4 ),
        .Q(count[35]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[35]_i_1 
       (.CI(\count_reg[31]_i_1_n_0 ),
        .CO({\count_reg[35]_i_1_n_0 ,\count_reg[35]_i_1_n_1 ,\count_reg[35]_i_1_n_2 ,\count_reg[35]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[35]_i_1_n_4 ,\count_reg[35]_i_1_n_5 ,\count_reg[35]_i_1_n_6 ,\count_reg[35]_i_1_n_7 }),
        .S(count[35:32]));
  FDRE \count_reg[36] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[39]_i_1_n_7 ),
        .Q(count[36]),
        .R(clear));
  FDRE \count_reg[37] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[39]_i_1_n_6 ),
        .Q(count[37]),
        .R(clear));
  FDRE \count_reg[38] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[39]_i_1_n_5 ),
        .Q(count[38]),
        .R(clear));
  FDRE \count_reg[39] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[39]_i_1_n_4 ),
        .Q(count[39]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[39]_i_1 
       (.CI(\count_reg[35]_i_1_n_0 ),
        .CO({\count_reg[39]_i_1_n_0 ,\count_reg[39]_i_1_n_1 ,\count_reg[39]_i_1_n_2 ,\count_reg[39]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[39]_i_1_n_4 ,\count_reg[39]_i_1_n_5 ,\count_reg[39]_i_1_n_6 ,\count_reg[39]_i_1_n_7 }),
        .S(count[39:36]));
  FDRE \count_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[3]_i_1_n_4 ),
        .Q(count[3]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\count_reg[3]_i_1_n_0 ,\count_reg[3]_i_1_n_1 ,\count_reg[3]_i_1_n_2 ,\count_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\count_reg[3]_i_1_n_4 ,\count_reg[3]_i_1_n_5 ,\count_reg[3]_i_1_n_6 ,\count_reg[3]_i_1_n_7 }),
        .S({count[3:1],\count[3]_i_2_n_0 }));
  FDRE \count_reg[40] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[43]_i_1_n_7 ),
        .Q(count[40]),
        .R(clear));
  FDRE \count_reg[41] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[43]_i_1_n_6 ),
        .Q(count[41]),
        .R(clear));
  FDRE \count_reg[42] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[43]_i_1_n_5 ),
        .Q(count[42]),
        .R(clear));
  FDRE \count_reg[43] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[43]_i_1_n_4 ),
        .Q(count[43]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[43]_i_1 
       (.CI(\count_reg[39]_i_1_n_0 ),
        .CO({\count_reg[43]_i_1_n_0 ,\count_reg[43]_i_1_n_1 ,\count_reg[43]_i_1_n_2 ,\count_reg[43]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[43]_i_1_n_4 ,\count_reg[43]_i_1_n_5 ,\count_reg[43]_i_1_n_6 ,\count_reg[43]_i_1_n_7 }),
        .S(count[43:40]));
  FDRE \count_reg[44] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[47]_i_1_n_7 ),
        .Q(count[44]),
        .R(clear));
  FDRE \count_reg[45] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[47]_i_1_n_6 ),
        .Q(count[45]),
        .R(clear));
  FDRE \count_reg[46] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[47]_i_1_n_5 ),
        .Q(count[46]),
        .R(clear));
  FDRE \count_reg[47] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[47]_i_1_n_4 ),
        .Q(count[47]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[47]_i_1 
       (.CI(\count_reg[43]_i_1_n_0 ),
        .CO({\count_reg[47]_i_1_n_0 ,\count_reg[47]_i_1_n_1 ,\count_reg[47]_i_1_n_2 ,\count_reg[47]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[47]_i_1_n_4 ,\count_reg[47]_i_1_n_5 ,\count_reg[47]_i_1_n_6 ,\count_reg[47]_i_1_n_7 }),
        .S(count[47:44]));
  FDRE \count_reg[48] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[51]_i_1_n_7 ),
        .Q(count[48]),
        .R(clear));
  FDRE \count_reg[49] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[51]_i_1_n_6 ),
        .Q(count[49]),
        .R(clear));
  FDRE \count_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[7]_i_1_n_7 ),
        .Q(count[4]),
        .R(clear));
  FDRE \count_reg[50] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[51]_i_1_n_5 ),
        .Q(count[50]),
        .R(clear));
  FDRE \count_reg[51] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[51]_i_1_n_4 ),
        .Q(count[51]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[51]_i_1 
       (.CI(\count_reg[47]_i_1_n_0 ),
        .CO({\count_reg[51]_i_1_n_0 ,\count_reg[51]_i_1_n_1 ,\count_reg[51]_i_1_n_2 ,\count_reg[51]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[51]_i_1_n_4 ,\count_reg[51]_i_1_n_5 ,\count_reg[51]_i_1_n_6 ,\count_reg[51]_i_1_n_7 }),
        .S(count[51:48]));
  FDRE \count_reg[52] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[55]_i_1_n_7 ),
        .Q(count[52]),
        .R(clear));
  FDRE \count_reg[53] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[55]_i_1_n_6 ),
        .Q(count[53]),
        .R(clear));
  FDRE \count_reg[54] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[55]_i_1_n_5 ),
        .Q(count[54]),
        .R(clear));
  FDRE \count_reg[55] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[55]_i_1_n_4 ),
        .Q(count[55]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[55]_i_1 
       (.CI(\count_reg[51]_i_1_n_0 ),
        .CO({\count_reg[55]_i_1_n_0 ,\count_reg[55]_i_1_n_1 ,\count_reg[55]_i_1_n_2 ,\count_reg[55]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[55]_i_1_n_4 ,\count_reg[55]_i_1_n_5 ,\count_reg[55]_i_1_n_6 ,\count_reg[55]_i_1_n_7 }),
        .S(count[55:52]));
  FDRE \count_reg[56] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[59]_i_1_n_7 ),
        .Q(count[56]),
        .R(clear));
  FDRE \count_reg[57] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[59]_i_1_n_6 ),
        .Q(count[57]),
        .R(clear));
  FDRE \count_reg[58] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[59]_i_1_n_5 ),
        .Q(count[58]),
        .R(clear));
  FDRE \count_reg[59] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[59]_i_1_n_4 ),
        .Q(count[59]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[59]_i_1 
       (.CI(\count_reg[55]_i_1_n_0 ),
        .CO({\count_reg[59]_i_1_n_0 ,\count_reg[59]_i_1_n_1 ,\count_reg[59]_i_1_n_2 ,\count_reg[59]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[59]_i_1_n_4 ,\count_reg[59]_i_1_n_5 ,\count_reg[59]_i_1_n_6 ,\count_reg[59]_i_1_n_7 }),
        .S(count[59:56]));
  FDRE \count_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[7]_i_1_n_6 ),
        .Q(count[5]),
        .R(clear));
  FDRE \count_reg[60] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[63]_i_2_n_7 ),
        .Q(count[60]),
        .R(clear));
  FDRE \count_reg[61] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[63]_i_2_n_6 ),
        .Q(count[61]),
        .R(clear));
  FDRE \count_reg[62] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[63]_i_2_n_5 ),
        .Q(count[62]),
        .R(clear));
  FDRE \count_reg[63] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[63]_i_2_n_4 ),
        .Q(count[63]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[63]_i_2 
       (.CI(\count_reg[59]_i_1_n_0 ),
        .CO({\NLW_count_reg[63]_i_2_CO_UNCONNECTED [3],\count_reg[63]_i_2_n_1 ,\count_reg[63]_i_2_n_2 ,\count_reg[63]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[63]_i_2_n_4 ,\count_reg[63]_i_2_n_5 ,\count_reg[63]_i_2_n_6 ,\count_reg[63]_i_2_n_7 }),
        .S(count[63:60]));
  FDRE \count_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[7]_i_1_n_5 ),
        .Q(count[6]),
        .R(clear));
  FDRE \count_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[7]_i_1_n_4 ),
        .Q(count[7]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[7]_i_1 
       (.CI(\count_reg[3]_i_1_n_0 ),
        .CO({\count_reg[7]_i_1_n_0 ,\count_reg[7]_i_1_n_1 ,\count_reg[7]_i_1_n_2 ,\count_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[7]_i_1_n_4 ,\count_reg[7]_i_1_n_5 ,\count_reg[7]_i_1_n_6 ,\count_reg[7]_i_1_n_7 }),
        .S(count[7:4]));
  FDRE \count_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[11]_i_1_n_7 ),
        .Q(count[8]),
        .R(clear));
  FDRE \count_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\count_reg[11]_i_1_n_6 ),
        .Q(count[9]),
        .R(clear));
endmodule

(* CHECK_LICENSE_TYPE = "vae_sender_cycles_0,cycle_counter,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "cycle_counter,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    resetn,
    count,
    not_empty);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET resetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN vae_sender_ps7_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 resetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;
  output [63:0]count;
  output not_empty;

  wire \<const1> ;
  wire clk;
  wire [63:0]count;
  wire resetn;

  assign not_empty = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cycle_counter inst
       (.clk(clk),
        .count(count),
        .resetn(resetn));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif

// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xvae_feature_sender.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XVae_feature_sender_CfgInitialize(XVae_feature_sender *InstancePtr, XVae_feature_sender_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XVae_feature_sender_Start(XVae_feature_sender *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVae_feature_sender_ReadReg(InstancePtr->Control_BaseAddress, XVAE_FEATURE_SENDER_CONTROL_ADDR_AP_CTRL) & 0x80;
    XVae_feature_sender_WriteReg(InstancePtr->Control_BaseAddress, XVAE_FEATURE_SENDER_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XVae_feature_sender_IsDone(XVae_feature_sender *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVae_feature_sender_ReadReg(InstancePtr->Control_BaseAddress, XVAE_FEATURE_SENDER_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XVae_feature_sender_IsIdle(XVae_feature_sender *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVae_feature_sender_ReadReg(InstancePtr->Control_BaseAddress, XVAE_FEATURE_SENDER_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XVae_feature_sender_IsReady(XVae_feature_sender *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVae_feature_sender_ReadReg(InstancePtr->Control_BaseAddress, XVAE_FEATURE_SENDER_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XVae_feature_sender_EnableAutoRestart(XVae_feature_sender *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVae_feature_sender_WriteReg(InstancePtr->Control_BaseAddress, XVAE_FEATURE_SENDER_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XVae_feature_sender_DisableAutoRestart(XVae_feature_sender *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVae_feature_sender_WriteReg(InstancePtr->Control_BaseAddress, XVAE_FEATURE_SENDER_CONTROL_ADDR_AP_CTRL, 0);
}

void XVae_feature_sender_Set_features(XVae_feature_sender *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVae_feature_sender_WriteReg(InstancePtr->Control_BaseAddress, XVAE_FEATURE_SENDER_CONTROL_ADDR_FEATURES_DATA, (u32)(Data));
    XVae_feature_sender_WriteReg(InstancePtr->Control_BaseAddress, XVAE_FEATURE_SENDER_CONTROL_ADDR_FEATURES_DATA + 4, (u32)(Data >> 32));
}

u64 XVae_feature_sender_Get_features(XVae_feature_sender *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVae_feature_sender_ReadReg(InstancePtr->Control_BaseAddress, XVAE_FEATURE_SENDER_CONTROL_ADDR_FEATURES_DATA);
    Data += (u64)XVae_feature_sender_ReadReg(InstancePtr->Control_BaseAddress, XVAE_FEATURE_SENDER_CONTROL_ADDR_FEATURES_DATA + 4) << 32;
    return Data;
}

void XVae_feature_sender_Set_t_send(XVae_feature_sender *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVae_feature_sender_WriteReg(InstancePtr->Control_BaseAddress, XVAE_FEATURE_SENDER_CONTROL_ADDR_T_SEND_DATA, (u32)(Data));
    XVae_feature_sender_WriteReg(InstancePtr->Control_BaseAddress, XVAE_FEATURE_SENDER_CONTROL_ADDR_T_SEND_DATA + 4, (u32)(Data >> 32));
}

u64 XVae_feature_sender_Get_t_send(XVae_feature_sender *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVae_feature_sender_ReadReg(InstancePtr->Control_BaseAddress, XVAE_FEATURE_SENDER_CONTROL_ADDR_T_SEND_DATA);
    Data += (u64)XVae_feature_sender_ReadReg(InstancePtr->Control_BaseAddress, XVAE_FEATURE_SENDER_CONTROL_ADDR_T_SEND_DATA + 4) << 32;
    return Data;
}

void XVae_feature_sender_Set_results(XVae_feature_sender *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVae_feature_sender_WriteReg(InstancePtr->Control_BaseAddress, XVAE_FEATURE_SENDER_CONTROL_ADDR_RESULTS_DATA, (u32)(Data));
    XVae_feature_sender_WriteReg(InstancePtr->Control_BaseAddress, XVAE_FEATURE_SENDER_CONTROL_ADDR_RESULTS_DATA + 4, (u32)(Data >> 32));
}

u64 XVae_feature_sender_Get_results(XVae_feature_sender *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVae_feature_sender_ReadReg(InstancePtr->Control_BaseAddress, XVAE_FEATURE_SENDER_CONTROL_ADDR_RESULTS_DATA);
    Data += (u64)XVae_feature_sender_ReadReg(InstancePtr->Control_BaseAddress, XVAE_FEATURE_SENDER_CONTROL_ADDR_RESULTS_DATA + 4) << 32;
    return Data;
}

void XVae_feature_sender_Set_n_flows(XVae_feature_sender *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVae_feature_sender_WriteReg(InstancePtr->Control_BaseAddress, XVAE_FEATURE_SENDER_CONTROL_ADDR_N_FLOWS_DATA, Data);
}

u32 XVae_feature_sender_Get_n_flows(XVae_feature_sender *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVae_feature_sender_ReadReg(InstancePtr->Control_BaseAddress, XVAE_FEATURE_SENDER_CONTROL_ADDR_N_FLOWS_DATA);
    return Data;
}

void XVae_feature_sender_Set_period(XVae_feature_sender *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVae_feature_sender_WriteReg(InstancePtr->Control_BaseAddress, XVAE_FEATURE_SENDER_CONTROL_ADDR_PERIOD_DATA, Data);
}

u32 XVae_feature_sender_Get_period(XVae_feature_sender *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVae_feature_sender_ReadReg(InstancePtr->Control_BaseAddress, XVAE_FEATURE_SENDER_CONTROL_ADDR_PERIOD_DATA);
    return Data;
}

void XVae_feature_sender_InterruptGlobalEnable(XVae_feature_sender *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVae_feature_sender_WriteReg(InstancePtr->Control_BaseAddress, XVAE_FEATURE_SENDER_CONTROL_ADDR_GIE, 1);
}

void XVae_feature_sender_InterruptGlobalDisable(XVae_feature_sender *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVae_feature_sender_WriteReg(InstancePtr->Control_BaseAddress, XVAE_FEATURE_SENDER_CONTROL_ADDR_GIE, 0);
}

void XVae_feature_sender_InterruptEnable(XVae_feature_sender *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XVae_feature_sender_ReadReg(InstancePtr->Control_BaseAddress, XVAE_FEATURE_SENDER_CONTROL_ADDR_IER);
    XVae_feature_sender_WriteReg(InstancePtr->Control_BaseAddress, XVAE_FEATURE_SENDER_CONTROL_ADDR_IER, Register | Mask);
}

void XVae_feature_sender_InterruptDisable(XVae_feature_sender *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XVae_feature_sender_ReadReg(InstancePtr->Control_BaseAddress, XVAE_FEATURE_SENDER_CONTROL_ADDR_IER);
    XVae_feature_sender_WriteReg(InstancePtr->Control_BaseAddress, XVAE_FEATURE_SENDER_CONTROL_ADDR_IER, Register & (~Mask));
}

void XVae_feature_sender_InterruptClear(XVae_feature_sender *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVae_feature_sender_WriteReg(InstancePtr->Control_BaseAddress, XVAE_FEATURE_SENDER_CONTROL_ADDR_ISR, Mask);
}

u32 XVae_feature_sender_InterruptGetEnabled(XVae_feature_sender *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XVae_feature_sender_ReadReg(InstancePtr->Control_BaseAddress, XVAE_FEATURE_SENDER_CONTROL_ADDR_IER);
}

u32 XVae_feature_sender_InterruptGetStatus(XVae_feature_sender *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XVae_feature_sender_ReadReg(InstancePtr->Control_BaseAddress, XVAE_FEATURE_SENDER_CONTROL_ADDR_ISR);
}


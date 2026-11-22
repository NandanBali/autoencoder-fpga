// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XVAE_FEATURE_SENDER_H
#define XVAE_FEATURE_SENDER_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xvae_feature_sender_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
#ifdef SDT
    char *Name;
#else
    u16 DeviceId;
#endif
    u64 Control_BaseAddress;
} XVae_feature_sender_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XVae_feature_sender;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XVae_feature_sender_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XVae_feature_sender_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XVae_feature_sender_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XVae_feature_sender_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
#ifdef SDT
int XVae_feature_sender_Initialize(XVae_feature_sender *InstancePtr, UINTPTR BaseAddress);
XVae_feature_sender_Config* XVae_feature_sender_LookupConfig(UINTPTR BaseAddress);
#else
int XVae_feature_sender_Initialize(XVae_feature_sender *InstancePtr, u16 DeviceId);
XVae_feature_sender_Config* XVae_feature_sender_LookupConfig(u16 DeviceId);
#endif
int XVae_feature_sender_CfgInitialize(XVae_feature_sender *InstancePtr, XVae_feature_sender_Config *ConfigPtr);
#else
int XVae_feature_sender_Initialize(XVae_feature_sender *InstancePtr, const char* InstanceName);
int XVae_feature_sender_Release(XVae_feature_sender *InstancePtr);
#endif

void XVae_feature_sender_Start(XVae_feature_sender *InstancePtr);
u32 XVae_feature_sender_IsDone(XVae_feature_sender *InstancePtr);
u32 XVae_feature_sender_IsIdle(XVae_feature_sender *InstancePtr);
u32 XVae_feature_sender_IsReady(XVae_feature_sender *InstancePtr);
void XVae_feature_sender_EnableAutoRestart(XVae_feature_sender *InstancePtr);
void XVae_feature_sender_DisableAutoRestart(XVae_feature_sender *InstancePtr);

void XVae_feature_sender_Set_features(XVae_feature_sender *InstancePtr, u64 Data);
u64 XVae_feature_sender_Get_features(XVae_feature_sender *InstancePtr);
void XVae_feature_sender_Set_t_send(XVae_feature_sender *InstancePtr, u64 Data);
u64 XVae_feature_sender_Get_t_send(XVae_feature_sender *InstancePtr);
void XVae_feature_sender_Set_results(XVae_feature_sender *InstancePtr, u64 Data);
u64 XVae_feature_sender_Get_results(XVae_feature_sender *InstancePtr);
void XVae_feature_sender_Set_n_flows(XVae_feature_sender *InstancePtr, u32 Data);
u32 XVae_feature_sender_Get_n_flows(XVae_feature_sender *InstancePtr);
void XVae_feature_sender_Set_period(XVae_feature_sender *InstancePtr, u32 Data);
u32 XVae_feature_sender_Get_period(XVae_feature_sender *InstancePtr);

void XVae_feature_sender_InterruptGlobalEnable(XVae_feature_sender *InstancePtr);
void XVae_feature_sender_InterruptGlobalDisable(XVae_feature_sender *InstancePtr);
void XVae_feature_sender_InterruptEnable(XVae_feature_sender *InstancePtr, u32 Mask);
void XVae_feature_sender_InterruptDisable(XVae_feature_sender *InstancePtr, u32 Mask);
void XVae_feature_sender_InterruptClear(XVae_feature_sender *InstancePtr, u32 Mask);
u32 XVae_feature_sender_InterruptGetEnabled(XVae_feature_sender *InstancePtr);
u32 XVae_feature_sender_InterruptGetStatus(XVae_feature_sender *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif

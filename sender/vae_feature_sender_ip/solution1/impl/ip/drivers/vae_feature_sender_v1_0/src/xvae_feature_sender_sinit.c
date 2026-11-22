// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#ifdef SDT
#include "xparameters.h"
#endif
#include "xvae_feature_sender.h"

extern XVae_feature_sender_Config XVae_feature_sender_ConfigTable[];

#ifdef SDT
XVae_feature_sender_Config *XVae_feature_sender_LookupConfig(UINTPTR BaseAddress) {
	XVae_feature_sender_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XVae_feature_sender_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XVae_feature_sender_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XVae_feature_sender_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XVae_feature_sender_Initialize(XVae_feature_sender *InstancePtr, UINTPTR BaseAddress) {
	XVae_feature_sender_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XVae_feature_sender_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XVae_feature_sender_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XVae_feature_sender_Config *XVae_feature_sender_LookupConfig(u16 DeviceId) {
	XVae_feature_sender_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XVAE_FEATURE_SENDER_NUM_INSTANCES; Index++) {
		if (XVae_feature_sender_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XVae_feature_sender_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XVae_feature_sender_Initialize(XVae_feature_sender *InstancePtr, u16 DeviceId) {
	XVae_feature_sender_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XVae_feature_sender_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XVae_feature_sender_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif


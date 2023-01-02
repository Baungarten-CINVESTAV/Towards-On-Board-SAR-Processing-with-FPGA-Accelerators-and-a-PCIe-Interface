// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1.3 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xreorder_fft.h"

extern XReorder_fft_Config XReorder_fft_ConfigTable[];

XReorder_fft_Config *XReorder_fft_LookupConfig(u16 DeviceId) {
	XReorder_fft_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XREORDER_FFT_NUM_INSTANCES; Index++) {
		if (XReorder_fft_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XReorder_fft_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XReorder_fft_Initialize(XReorder_fft *InstancePtr, u16 DeviceId) {
	XReorder_fft_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XReorder_fft_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XReorder_fft_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif


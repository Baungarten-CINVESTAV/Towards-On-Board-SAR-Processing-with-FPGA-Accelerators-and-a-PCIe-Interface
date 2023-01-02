// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1.3 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xreorder_fft.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XReorder_fft_CfgInitialize(XReorder_fft *InstancePtr, XReorder_fft_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Axilites_BaseAddress = ConfigPtr->Axilites_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XReorder_fft_Start(XReorder_fft *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XReorder_fft_ReadReg(InstancePtr->Axilites_BaseAddress, XREORDER_FFT_AXILITES_ADDR_AP_CTRL) & 0x80;
    XReorder_fft_WriteReg(InstancePtr->Axilites_BaseAddress, XREORDER_FFT_AXILITES_ADDR_AP_CTRL, Data | 0x01);
}

u32 XReorder_fft_IsDone(XReorder_fft *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XReorder_fft_ReadReg(InstancePtr->Axilites_BaseAddress, XREORDER_FFT_AXILITES_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XReorder_fft_IsIdle(XReorder_fft *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XReorder_fft_ReadReg(InstancePtr->Axilites_BaseAddress, XREORDER_FFT_AXILITES_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XReorder_fft_IsReady(XReorder_fft *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XReorder_fft_ReadReg(InstancePtr->Axilites_BaseAddress, XREORDER_FFT_AXILITES_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XReorder_fft_EnableAutoRestart(XReorder_fft *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XReorder_fft_WriteReg(InstancePtr->Axilites_BaseAddress, XREORDER_FFT_AXILITES_ADDR_AP_CTRL, 0x80);
}

void XReorder_fft_DisableAutoRestart(XReorder_fft *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XReorder_fft_WriteReg(InstancePtr->Axilites_BaseAddress, XREORDER_FFT_AXILITES_ADDR_AP_CTRL, 0);
}

void XReorder_fft_InterruptGlobalEnable(XReorder_fft *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XReorder_fft_WriteReg(InstancePtr->Axilites_BaseAddress, XREORDER_FFT_AXILITES_ADDR_GIE, 1);
}

void XReorder_fft_InterruptGlobalDisable(XReorder_fft *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XReorder_fft_WriteReg(InstancePtr->Axilites_BaseAddress, XREORDER_FFT_AXILITES_ADDR_GIE, 0);
}

void XReorder_fft_InterruptEnable(XReorder_fft *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XReorder_fft_ReadReg(InstancePtr->Axilites_BaseAddress, XREORDER_FFT_AXILITES_ADDR_IER);
    XReorder_fft_WriteReg(InstancePtr->Axilites_BaseAddress, XREORDER_FFT_AXILITES_ADDR_IER, Register | Mask);
}

void XReorder_fft_InterruptDisable(XReorder_fft *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XReorder_fft_ReadReg(InstancePtr->Axilites_BaseAddress, XREORDER_FFT_AXILITES_ADDR_IER);
    XReorder_fft_WriteReg(InstancePtr->Axilites_BaseAddress, XREORDER_FFT_AXILITES_ADDR_IER, Register & (~Mask));
}

void XReorder_fft_InterruptClear(XReorder_fft *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XReorder_fft_WriteReg(InstancePtr->Axilites_BaseAddress, XREORDER_FFT_AXILITES_ADDR_ISR, Mask);
}

u32 XReorder_fft_InterruptGetEnabled(XReorder_fft *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XReorder_fft_ReadReg(InstancePtr->Axilites_BaseAddress, XREORDER_FFT_AXILITES_ADDR_IER);
}

u32 XReorder_fft_InterruptGetStatus(XReorder_fft *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XReorder_fft_ReadReg(InstancePtr->Axilites_BaseAddress, XREORDER_FFT_AXILITES_ADDR_ISR);
}


// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1.3 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XREORDER_FFT_H
#define XREORDER_FFT_H

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
#include "xreorder_fft_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Axilites_BaseAddress;
} XReorder_fft_Config;
#endif

typedef struct {
    u32 Axilites_BaseAddress;
    u32 IsReady;
} XReorder_fft;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XReorder_fft_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XReorder_fft_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XReorder_fft_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XReorder_fft_ReadReg(BaseAddress, RegOffset) \
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
int XReorder_fft_Initialize(XReorder_fft *InstancePtr, u16 DeviceId);
XReorder_fft_Config* XReorder_fft_LookupConfig(u16 DeviceId);
int XReorder_fft_CfgInitialize(XReorder_fft *InstancePtr, XReorder_fft_Config *ConfigPtr);
#else
int XReorder_fft_Initialize(XReorder_fft *InstancePtr, const char* InstanceName);
int XReorder_fft_Release(XReorder_fft *InstancePtr);
#endif

void XReorder_fft_Start(XReorder_fft *InstancePtr);
u32 XReorder_fft_IsDone(XReorder_fft *InstancePtr);
u32 XReorder_fft_IsIdle(XReorder_fft *InstancePtr);
u32 XReorder_fft_IsReady(XReorder_fft *InstancePtr);
void XReorder_fft_EnableAutoRestart(XReorder_fft *InstancePtr);
void XReorder_fft_DisableAutoRestart(XReorder_fft *InstancePtr);


void XReorder_fft_InterruptGlobalEnable(XReorder_fft *InstancePtr);
void XReorder_fft_InterruptGlobalDisable(XReorder_fft *InstancePtr);
void XReorder_fft_InterruptEnable(XReorder_fft *InstancePtr, u32 Mask);
void XReorder_fft_InterruptDisable(XReorder_fft *InstancePtr, u32 Mask);
void XReorder_fft_InterruptClear(XReorder_fft *InstancePtr, u32 Mask);
u32 XReorder_fft_InterruptGetEnabled(XReorder_fft *InstancePtr);
u32 XReorder_fft_InterruptGetStatus(XReorder_fft *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif

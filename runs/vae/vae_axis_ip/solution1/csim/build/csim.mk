# ==============================================================
# Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
# Tool Version Limit: 2023.10
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
# 
# ==============================================================
CSIM_DESIGN = 1

__SIM_FPO__ = 1

__SIM_MATHHLS__ = 1

__SIM_FFT__ = 1

__SIM_FIR__ = 1

__SIM_DDS__ = 1

ObjDir = obj

HLS_SOURCES = ../../../../../../hls/test_vae_axis.cpp ../../../../hls4ml_prj/firmware/vae_core.cpp ../../../../../../hls/vae_axis.cpp

override TARGET := csim.exe

AUTOPILOT_ROOT := /opt/AMD/Vitis_HLS/2023.2
AUTOPILOT_MACH := lnx64
ifdef AP_GCC_M32
  AUTOPILOT_MACH := Linux_x86
  IFLAG += -m32
endif
IFLAG += -fPIC
ifndef AP_GCC_PATH
  AP_GCC_PATH := /opt/AMD/Vitis_HLS/2023.2/tps/lnx64/gcc-8.3.0/bin
endif
AUTOPILOT_TOOL := ${AUTOPILOT_ROOT}/${AUTOPILOT_MACH}/tools
AP_CLANG_PATH := ${AUTOPILOT_TOOL}/clang-3.9/bin
AUTOPILOT_TECH := ${AUTOPILOT_ROOT}/common/technology


IFLAG += -I "${AUTOPILOT_ROOT}/include"
IFLAG += -I "${AUTOPILOT_ROOT}/include/ap_sysc"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC/AESL_FP_comp"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC/AESL_comp"
IFLAG += -I "${AUTOPILOT_TOOL}/auto_cc/include"
IFLAG += -D__HLS_COSIM__

IFLAG += -D__HLS_CSIM__

IFLAG += -D__VITIS_HLS__

IFLAG += -D__SIM_FPO__

IFLAG += -D__SIM_FFT__

IFLAG += -D__SIM_FIR__

IFLAG += -D__SIM_DDS__

IFLAG += -D__DSP48E1__
LFLAG += -B/usr/bin/
IFLAG += -g
DFLAG += -D__xilinx_ip_top= -DAESL_TB
CCFLAG += -Werror=return-type
CCFLAG += -Wno-abi
TOOLCHAIN += 



include ./Makefile.rules

all: $(TARGET)



$(ObjDir)/test_vae_axis.o: ../../../../../../hls/test_vae_axis.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../../../hls/test_vae_axis.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD -I/home/nandanbali/programming/deep-svdd/autoencoder/runs/vae/hls4ml_prj/firmware -I/home/nandanbali/programming/deep-svdd/autoencoder/hls -I/home/nandanbali/programming/deep-svdd/autoencoder/runs/vae -std=c++14 -include/home/nandanbali/programming/deep-svdd/autoencoder/runs/vae/weights_dir.h -Wno-unknown-pragmas -Wno-unknown-pragmas  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/test_vae_axis.d

$(ObjDir)/vae_core.o: ../../../../hls4ml_prj/firmware/vae_core.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../hls4ml_prj/firmware/vae_core.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD -I/home/nandanbali/programming/deep-svdd/autoencoder/runs/vae/hls4ml_prj/firmware -I/home/nandanbali/programming/deep-svdd/autoencoder/hls -include/home/nandanbali/programming/deep-svdd/autoencoder/runs/vae/weights_dir.h -std=c++14  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/vae_core.d

$(ObjDir)/vae_axis.o: ../../../../../../hls/vae_axis.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../../../hls/vae_axis.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD -I/home/nandanbali/programming/deep-svdd/autoencoder/runs/vae/hls4ml_prj/firmware -I/home/nandanbali/programming/deep-svdd/autoencoder/hls -include/home/nandanbali/programming/deep-svdd/autoencoder/runs/vae/weights_dir.h -std=c++14  $(IFLAG) $(DFLAG) $< -o $@ ; \

-include $(ObjDir)/vae_axis.d

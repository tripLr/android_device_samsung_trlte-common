#
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# inherit from qcom-common
-include device/samsung/qcom-common/BoardConfigCommon.mk

COMMON_PATH := device/samsung/apq8084-common

# Architecture
TARGET_CPU_VARIANT := krait

# Audio
BOARD_USES_ALSA_AUDIO := true
AUDIO_FEATURE_LOW_LATENCY_PRIMARY := true
AUDIO_FEATURE_ENABLED_LOW_LATENCY_CAPTURE := true
BOARD_USES_ES705 := true

# Binder API
TARGET_USES_64_BIT_BINDER := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := APQ8084

# Kernel
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_CMDLINE := console=null androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x37 dwc3_msm.cpu_to_affin=1 androidboot.selinux=permissive
BOARD_KERNEL_IMAGE_NAME := zImage
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_SEPARATED_DT := true
BOARD_CUSTOM_BOOTIMG := true
BOARD_CUSTOM_BOOTIMG_MK := hardware/samsung/mkbootimg.mk
TARGET_KERNEL_CONFIG := trltexx_defconfig
TARGET_KERNEL_SELINUX_CONFIG := selinux_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/apq8084

# Camera
TARGET_USE_COMPAT_GRALLOC_ALIGN := true
TARGET_HAS_LEGACY_CAMERA_HAL1 := true
USE_DEVICE_SPECIFIC_CAMERA := true
TARGET_SPECIFIC_CAMERA_PARAMETER_LIBRARY := libcamera_parameters_ext

# Display & Render
OVERRIDE_RS_DRIVER:= libRSDriver_adreno.so
MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024
HAVE_ADRENO_SOURCE := false
USE_OPENGL_RENDERER := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3

# Filesystem
TARGET_FS_CONFIG_GEN := $(COMMON_PATH)/config.fs

# HIDL
DEVICE_MANIFEST_FILE += $(COMMON_PATH)/manifest.xml
DEVICE_MATRIX_FILE := $(COMMON_PATH)/compatibility_matrix.xml

# Include path
TARGET_SPECIFIC_HEADER_PATH := $(COMMON_PATH)/include

# Init
TARGET_INIT_VENDOR_LIB := libinit_apq8084
TARGET_RECOVERY_DEVICE_MODULES := libinit_apq8084

# Extended Filesystem Support
TARGET_EXFAT_DRIVER := sdfat

# Legacy BLOB Support
TARGET_NEEDS_PLATFORM_TEXT_RELOCATIONS := true

# Media
TARGET_ENABLE_QC_AV_ENHANCEMENTS := true

# Platform
TARGET_BOARD_PLATFORM := apq8084

# Power HAL
TARGET_HAS_LEGACY_POWER_STATS := true
TARGET_HAS_NO_WIFI_STATS := true
TARGET_USES_INTERACTION_BOOST := true

# Properties
TARGET_SYSTEM_PROP += $(COMMON_PATH)/system.prop

# Qualcomm support
TARGET_USES_QCOM_BSP := true
BOARD_GLOBAL_CFLAGS += -DQCOM_BSP
BOARD_GLOBAL_CPPFLAGS += -DQCOM_BSP

# Radio
BOARD_PROVIDES_LIBRIL := true
TARGET_RIL_VARIANT := caf

# Recovery
LZMA_RAMDISK_TARGETS := recovery

# Sensors
TARGET_NO_SENSOR_PERMISSION_CHECK := true

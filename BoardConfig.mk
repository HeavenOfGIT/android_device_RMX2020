# Copyright (C) 2020 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# DT PATH

DEVICE_PATH := device/realme/RMX2020
BOARD_VENDOR := realme

# Security patch level
VENDOR_SECURITY_PATCH := 2020-10-05

# Platform
TARGET_BOARD_PLATFORM := mt6769v
TARGET_BOARD_PLATFORM_GPU := Mali-G52 2EEMC2

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := mt6769v
TARGET_NO_BOOTLOADER := true

# 64-bits binder
TARGET_USES_64_BIT_BINDER := true

# Audio
USE_XML_AUDIO_POLICY_CONF := 1


# Kernel, DTBO and DTB
BOARD_KERNEL_IMAGE_NAME := Image.gz
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_RAMDISK_OFFSET := 0x14f88000
BOARD_TAGS_OFFSET := 0x13f88000
BOARD_SECOND_OFFSET := 0x00e88000
BOARD_KERNEL_OFFSET = 0x00008000
BOARD_DTB_OFFSET := 0x13f88000
BOARD_BOOT_HEADER_VERSION := 2
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/kernel
BOARD_PREBUILT_DTBOIMAGE := $(LOCAL_PATH)/prebuilt/dtbo.img
BOARD_PREBUILT_DTBIMAGE_DIR := $(LOCAL_PATH)/prebuilt
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 androidboot.selinux=permissive
BOARD_MKBOOTIMG_ARGS := --kernel_offset $(BOARD_KERNEL_OFFSET) --ramdisk_offset $(BOARD_RAMDISK_OFFSET) --second_offset $(BOARD_SECOND_OFFSET) --tags_offset $(BOARD_TAGS_OFFSET) --dtb_offset $(BOARD_DTB_OFFSET) --header_version $(BOARD_BOOT_HEADER_VERSION)
BOARD_INCLUDE_DTB_IN_BOOTIMG := true

# OTA Assert
TARGET_OTA_ASSERT_DEVICE := RMX2020

#Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_CACHEIMAGE_PARTITION_SIZE := 452984832 
BOARD_DTBOIMG_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_USERDATAIMAGE_PARTITION_SIZE := 23396859392
BOARD_FLASH_BLOCK_SIZE := 130072

# Partitions (Dynamic)
BOARD_MAIN_SIZE := 5080969216
BOARD_MAIN_PARTITION_LIST := system
BOARD_SUPER_PARTITION_SIZE := 6979321856
BOARD_SUPER_PARTITION_GROUPS := main
BOARD_SUPER_PARTITION_ERROR_LIMIT := 6979321856

# System Properties
TARGET_SYSTEM_PROP := $(LOCAL_PATH)/system.prop

# Use mke2fs to create ext4 images
TARGET_USES_MKE2FS := true


# Network Routing
TARGET_IGNORES_FTP_PPTP_CONNTRACK_FAILURE := true

# Properties
BOARD_PROPERTY_OVERRIDES_SPLIT_ENABLED := true

# Treble
BOARD_VNDK_VERSION := current
PRODUCT_FULL_TREBLE_OVERRIDE := true

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# Sepolicy
TARGET_HAS_FUSEBLK_SEPOLICY_ON_VENDOR := true
BOARD_PLAT_PRIVATE_SEPOLICY_DIR := $(LOCAL_PATH)/sepolicy/private


# DRM
TARGET_ENABLE_MEDIADRM_64 := true

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := $(LOCAL_PATH)

# Framework Manifest
DEVICE_FRAMEWORK_MANIFEST_FILE := $(LOCAL_PATH)/framework_manifest.xml

MAIN_VBMETA_IN_BOOT := yes

BUILD_BROKEN_DUP_RULES := true

# HIDL
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/manifest.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/android.hardware.cas@1.1-service.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/android.hardware.gpu@1.0-service.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vendor.mediatek.hardware.dplanner@2.0-service.xml
DEVICE_MATRIX_FILE := $(DEVICE_PATH)/compatibility_matrix.xml
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE := $(DEVICE_PATH)/framework_compatibility_matrix.xml

-include vendor/realme/RMX2020/BoardConfigVendor.mk
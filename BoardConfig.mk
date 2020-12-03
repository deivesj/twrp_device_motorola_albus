#
# Copyright (C) 2017 The Android Open Source Project
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
#

LOCAL_PATH := device/motorola/albus


# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

TARGET_CPU_CORTEX_A53 := true

TARGET_BOARD_PLATFORM := msm8953
TARGET_BOARD_PLATFORM_GPU := qcom-adreno506

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8953
TARGET_NO_BOOTLOADER := true

# Kernel
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom user_debug=30 msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1 earlycon=msm_hsl_uart,0x78B0000 vmalloc=400M androidboot.selinux=permissive
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_RAMDISK_OFFSET := 0x01000000
BOARD_KERNEL_SEPARATED_DT := true
BOARD_KERNEL_IMAGE_NAME := Image.gz
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_ARCH := arm64

TARGET_PREBUILT_DTB := $(LOCAL_PATH)/prebuilt/dt.img
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/kernel
BOARD_CUSTOM_BOOTIMG_MK := $(LOCAL_PATH)/mkbootimg.mk

BOARD_MKBOOTIMG_ARGS := --ramdisk_offset $(BOARD_RAMDISK_OFFSET) --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)

# Encryption
TARGET_CRYPTFS_HW_PATH := vendor/qcom/opensource/commonsys/cryptfs_hw
TARGET_HW_DISK_ENCRYPTION := true
TARGET_USES_METADATA_AS_FDE_KEY := true
PLATFORM_SECURITY_PATCH := 2029-10-01

# Keymaster
TARGET_PROVIDES_KEYMASTER := true

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072                  # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216        #    16384 * 1024 mmcblk0p37
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 21073920    #    20580 * 1024 mmcblk0p38
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 5905580032    #  5767168 * 1024 mmcblk0p53
BOARD_USERDATAIMAGE_PARTITION_SIZE := 54668540928 # 53387247 * 1024 mmcblk0p54
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456      #   262144 * 1024 mmcblk0p52
BOARD_OEMIMAGE_PARTITION_SIZE := 1409286144       #  1376256 * 1024 mmcblk0p51
BOARD_PERSISTIMAGE_PARTITION_SIZE := 33554432     #    32768 * 1024 mmcblk0p30
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor

# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
LZMA_RAMDISK_TARGETS := recovery

# Qualcomm support
BOARD_USES_QCOM_HARDWARE := true

# TWRP Configuration
TW_EXTRA_LANGUAGES := true
TW_THEME := portrait_hdpi
TW_HAS_EDL_MODE := true
TW_USE_TOOLBOX := true
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_FUSE_EXFAT := true
TW_INCLUDE_FUSE_NTFS := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery/root/etc/twrp.fstab

# log
#TWRP_INCLUDE_LOGCAT := true
#TARGET_USES_LOGD := true

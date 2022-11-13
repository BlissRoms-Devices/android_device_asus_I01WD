
# Copyright (C) 2019-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#
-include device/asus/sm8150-common/BoardConfigCommon.mk

BOARD_VENDOR := asus

DEVICE_PATH := device/asus/I01WD

# Assertions
TARGET_OTA_ASSERT_DEVICE := WW_I01WD,I01WD,ZS630KL

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Kernel
TARGET_KERNEL_CONFIG := vendor/zs630kl_defconfig
TARGET_KERNEL_CLANG_COMPILE := true
TARGET_KERNEL_SOURCE := kernel/asus/sm8150

# Partitions
BOARD_DTBOIMG_PARTITION_SIZE := 8388608
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3758096384
BOARD_USERDATAIMAGE_PARTITION_SIZE := 118112366592
BOARD_VENDORIMAGE_PARTITION_SIZE := 1073741824

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom

# Inherit from the proprietary version
-include vendor/asus/I01WD/BoardConfigVendor.mk

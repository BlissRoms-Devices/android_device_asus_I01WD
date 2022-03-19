#
# Copyright (C) 2019-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),I01WD)
include $(call all-makefiles-under,$(LOCAL_PATH))
include $(CLEAR_VARS)

ASUSFW_MOUNT_POINT_SYMLINK := $(TARGET_OUT_VENDOR)/asusfw
$(ASUSFW_MOUNT_POINT_SYMLINK): $(LOCAL_INSTALLED_MODULE)
	@echo "Creating $@ link"
	@rm -rf $@
	$(hide) ln -sf /mnt/vendor/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(ASUSFW_MOUNT_POINT_SYMLINK)

endif

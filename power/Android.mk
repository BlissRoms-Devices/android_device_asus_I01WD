LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := power.qcom
LOCAL_MODULE_PATH_32 := $(TARGET_OUT_PRODUCT)/vendor_overlay/$(PRODUCT_TARGET_VNDK_VERSION)/lib
LOCAL_MODULE_PATH_64 := $(TARGET_OUT_PRODUCT)/vendor_overlay/$(PRODUCT_TARGET_VNDK_VERSION)/lib64
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := \
    power-msmnile.c \
    power.c \
    utils.c

LOCAL_SHARED_LIBRARIES := liblog libdl

LOCAL_CFLAGS += -Werror -Wall -Wextra

include $(BUILD_SHARED_LIBRARY)
LOCAL_PATH := $(call my-dir)

ifeq ($(wildcard vendor/codeaurora/telephony/ims/Android.mk),)

include $(CLEAR_VARS)

LOCAL_AIDL_INCLUDES := $(LOCAL_PATH)/src/org
LOCAL_SRC_FILES := $(call all-java-files-under, src/org) \
    $(call all-Iaidl-files-under, src/org) \
    $(call all-logtags-files-under, src/org)

LOCAL_JAVA_LIBRARIES := ims-common
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := ims-ext-common
LOCAL_MODULE_OWNER := qct

include $(BUILD_STATIC_JAVA_LIBRARY)

# Include subdirectory makefiles
# ============================================================
include $(call all-makefiles-under,$(LOCAL_PATH))

endif

### ------------------------------------------------------------- ###

### ------------------------------------------------------------- ###
#################Copy apks to /system/app/###############
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE        := TrichromeLibrary-Stub
LOCAL_MODULE_OWNER  := google
LOCAL_MODULE_TAGS   := optional
LOCAL_MODULE_CLASS  := APPS
LOCAL_CERTIFICATE   := platform
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_DEX_PREOPT    := false
LOCAL_SRC_FILES     := $(LOCAL_MODULE).apk
LOCAL_REPLACE_PREBUILT_APK_INSTALLED := $(LOCAL_PATH)/$(LOCAL_SRC_FILES)
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_PRODUCT)/app
#LOCAL_MODULE_PATH   := $(PRODUCT_OUT)/system/product/app

ifeq ($(shell test $(PLATFORM_SDK_VERSION) -ge 26 && echo OK),OK)
   LOCAL_PRODUCT_MODULE := true
endif
include $(BUILD_PREBUILT)

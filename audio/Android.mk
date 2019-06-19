LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

ifeq ($(TARGET_DEVICE),trltexx)
include $(CLEAR_VARS)
LOCAL_MODULE       := mixer_paths.xml
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := mixer_paths_eur.xml
LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR)
LOCAL_MODULE_RELATIVE_PATH := etc
LOCAL_VENDOR_MODULE := true
include $(BUILD_PREBUILT)
endif

ifneq ($(filter trlte trltecan trltespr trltetmo trlteusc trltevzw,$(TARGET_DEVICE)),)
include $(CLEAR_VARS)
LOCAL_MODULE       := mixer_paths.xml
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := mixer_paths.xml
LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR)
LOCAL_MODULE_RELATIVE_PATH := etc
LOCAL_VENDOR_MODULE := true
include $(BUILD_PREBUILT)
endif

ifeq ($(TARGET_DEVICE),trlteduos)
include $(CLEAR_VARS)
LOCAL_MODULE       := mixer_paths.xml
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := mixer_paths_duos.xml
LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR)
LOCAL_MODULE_RELATIVE_PATH := etc
LOCAL_VENDOR_MODULE := true
include $(BUILD_PREBUILT)
endif

ifeq ($(TARGET_DEVICE),tbltexx)
include $(CLEAR_VARS)
LOCAL_MODULE       := mixer_paths.xml
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := mixer_paths_tblte_eur.xml
LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR)
LOCAL_MODULE_RELATIVE_PATH := etc
LOCAL_VENDOR_MODULE := true
include $(BUILD_PREBUILT)
endif

ifneq ($(filter tblte tbltecan tblteduos tbltespr tbltetmo tblteusc tbltevzw,$(TARGET_DEVICE)),)
include $(CLEAR_VARS)
LOCAL_MODULE       := mixer_paths.xml
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := mixer_paths_tblte.xml
LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR)
LOCAL_MODULE_RELATIVE_PATH := etc
LOCAL_VENDOR_MODULE := true
include $(BUILD_PREBUILT)
endif

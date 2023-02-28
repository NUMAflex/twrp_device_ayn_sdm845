ifneq ($(filter sdm845,$(TARGET_DEVICE)),)
LOCAL_PATH := device/ayn/sdm845
include $(call all-makefiles-under,$(LOCAL_PATH))
endif

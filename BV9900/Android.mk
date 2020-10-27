ifneq ($(filter BV9900,$(TARGET_DEVICE)),)

LOCAL_PATH := device/Blackview/BV9900

include $(call all-makefiles-under,$(LOCAL_PATH))

endif
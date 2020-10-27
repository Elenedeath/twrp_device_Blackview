ifneq ($(filter BV9900_EEA,$(TARGET_DEVICE)),)

LOCAL_PATH := device/Blackview/BV9900_EEA

include $(call all-makefiles-under,$(LOCAL_PATH))

endif

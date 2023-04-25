ifneq ($(filter CRO_U00,$(TARGET_DEVICE)),)

LOCAL_PATH := device/huawei/CRO_U00

include $(call all-makefiles-under,$(LOCAL_PATH))

endif


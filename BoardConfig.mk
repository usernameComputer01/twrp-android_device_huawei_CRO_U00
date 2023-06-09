LOCAL_PATH := device/huawei/CRO_U00

TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := mt6580
TARGET_BOOTLOADER_BOARD_NAME := CRO-U00

TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a7
TARGET_CPU_SMP := true
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a7

ARCH_ARM_HAVE_VFP := true
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_TLS_REGISTER := true

# Kernel
BOARD_KERNEL_CMDLINE  := bootopt=64S3,32S1,32S1 \
  androidboot.selinux=permissive
BOARD_KERNEL_BASE     := 0x80000000
BOARD_KERNEL_OFFSET   := 0x00008000
BOARD_KERNEL_PAGESIZE := 2048

BOARD_TAGS_OFFSET    := 0x0e000000
BOARD_RAMDISK_OFFSET := 0x04000000

BOARD_MKBOOTIMG_ARGS := \
  --tags_offset $(BOARD_TAGS_OFFSET) \
  --kernel_offset $(BOARD_KERNEL_OFFSET) \
  --ramdisk_offset $(BOARD_RAMDISK_OFFSET) \
  --board B122

TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/kernel

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216

FORCE_REAL_PARTITION_SIZE := true
ifeq ($(FORCE_REAL_PARTITION_SIZE),true)
# If finally size LESS THAN real stock size partition,
# set new size with custom mkbootimg.mk
BOARD_CUSTOM_BOOTIMG_MK := $(LOCAL_PATH)/mkbootimg.mk
endif

#TW_NO_USB_STORAGE := true
RECOVERY_SDCARD_ON_DATA := true
BOARD_SUPPRESS_EMMC_WIPE := true

TW_SCREEN_BLANK_ON_BOOT := true

TARGET_SCREEN_WIDTH := 480
TARGET_SCREEN_HEIGHT := 854
TARGET_RECOVERY_PIXEL_FORMAT := RGBA_8888
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"
TW_THEME := portrait_hdpi
TW_MAX_BRIGHTNESS := 255
TW_BRIGHTNESS_PATH := /sys/devices/platform/leds-mt65xx/leds/lcd-backlight/brightness
TW_INCLUDE_FB2PNG := true

BOARD_HAL_STATIC_LIBRARIES := libhealthd.socleds

TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
TW_CUSTOM_CPU_TEMP_PATH := /sys/devices/virtual/thermal/thermal_zone1/temp
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/mt_usb/musb-hdrc.0.auto/gadget/lun%d/file

TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery/root/twrp.fstab
TW_EXCLUDE_DEFAULT_USB_INIT := true

TW_INCLUDE_CRYPTO := true
TW_EXCLUDE_PYTHON := true
TW_EXTRA_LANGUAGES := true

TW_FORCE_USE_BUSYBOX := true
#TW_USE_TOOLBOX := false

# Logcat
#TARGET_USES_LOGD := true
#TWRP_INCLUDE_LOGCAT := true

# Events log
#TWRP_EVENT_LOGGING := true

# Use RECOVERY_GRAPHICS_FORCE_USE_LINELENGTH insetad of RECOVERY_GRAPHICS_USE_LINELENGTH
#RECOVERY_GRAPHICS_FORCE_USE_LINELENGTH := true


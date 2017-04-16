LOCAL_PATH := device/samsung/gts210wifi

# Include path
TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

# Kernel
TARGET_KERNEL_CONFIG := cm_exynos5433-gts210wifi_defconfig

# Recovery
TARGET_OTA_ASSERT_DEVICE := gts210wifi,gts210wifixx
RECOVERY_TOUCHSCREEN_SWAP_XY := true
RECOVERY_TOUCHSCREEN_FLIP_Y := true
TW_THEME := landscape_hdpi

# SELinux
BOARD_SEPOLICY_DIRS := $(LOCAL_PATH)/sepolicy

# Inherit common board flags
include device/samsung/gts2-common/BoardConfigCommon.mk

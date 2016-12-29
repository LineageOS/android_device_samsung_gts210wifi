# Extracted with libbootimg
#BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --dt device/samsung/gts210wifi/dtb.img
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01000000 --tags_offset 0x00000100
#BOARD_KERNEL_SEPARATED_DT := true
BOARD_CUSTOM_BOOTIMG_MK := device/samsung/gts210wifi/mkdtbhbootimg.mk
TARGET_CUSTOM_DTBTOOL := mkdtbhbootimg

# Kernel
TARGET_KERNEL_CONFIG := cm_exynos5433-gts210wifi_defconfig

# Modem
BOARD_MODEM_TYPE := ss333

# Recovery
TARGET_OTA_ASSERT_DEVICE := gts210wifi,gts210wifixx

# Inherit common board flags
include device/samsung/gts2-common/BoardConfigCommon.mk

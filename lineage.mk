# Inherit device configuration
$(call inherit-product, device/samsung/gts210wifi/device.mk)
$(call inherit-product, device/samsung/gts2-common/device-common.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)
#$(call inherit-product, vendor/cm/config/telephony.mk)

## Device identifier. This must come after all inclusions
# New name, to be used per lineage-15 as default
PRODUCT_NAME := lineage_gts210wifi
# Old name for 14.x tree
# Reuse this when automated build isn't adapted for lineage_
# product name before this device goes nightly
#PRODUCT_NAME := cm_gts210wifi
PRODUCT_DEVICE := gts210wifi
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-T810
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=gts210wifi

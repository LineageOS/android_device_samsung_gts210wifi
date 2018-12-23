LOCAL_PATH := device/samsung/gts210wifi

###########################################################
### RAMDISK
###########################################################

PRODUCT_PACKAGES += \
    init.baseband.rc

###########################################################
### BLUETOOTH
###########################################################

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/bluetooth/bt_vendor.conf:system/etc/bluetooth/bt_vendor.conf

# call the proprietary setup
$(call inherit-product-if-exists, vendor/samsung/gts210wifi/gts210wifi-vendor.mk)

#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Enable project quotas and casefolding for emulated storage without sdcardfs
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Enforce generic ramdisk allow list
$(call inherit-product, $(SRC_TARGET_DIR)/product/generic_ramdisk.mk)

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi

# API
BOARD_SHIPPING_API_LEVEL := 31
PRODUCT_SHIPPING_API_LEVEL := 31

# Boot animation
TARGET_SCREEN_HEIGHT := 2340
TARGET_SCREEN_WIDTH := 1080

# Characteristics
PRODUCT_CHARACTERISTICS := nosdcard

# Firmware
PRODUCT_COPY_FILES += \
    vendor/samsung/r0sxxx/proprietary/vendor/firmware/tsp_stm/fts2ba61y_r0.bin:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/firmware/tsp_stm/fts2ba61y_r0.bin \
    vendor/samsung/r0sxxx/proprietary/vendor/firmware/tsp_stm/fts2ba61y_r0.bin:$(TARGET_COPY_OUT_VENDOR_RAMDISK)/vendor/firmware/tsp_stm/fts2ba61y_r0.bin \
    $(LOCAL_PATH)/configs/firmware/vangogh_lite_unified.bin:$(TARGET_COPY_OUT_RECOVERY)/root/lib/firmware/sgpu/vangogh_lite_unified.bin \
    $(LOCAL_PATH)/configs/firmware/vangogh_lite_unified.bin:$(TARGET_COPY_OUT_VENDOR_RAMDISK)/lib/firmware/sgpu/vangogh_lite_unified.bin

# Init
PRODUCT_PACKAGES += \
    fstab.s5e9925 \
    fstab.s5e9925.vendor_ramdisk \
    init.recovery.s5e9925.rc

# Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

PRODUCT_PACKAGES += \
    fastbootd

# Platform
TARGET_BOARD_PLATFORM := universal9925

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit from the proprietary files makefile.
$(call inherit-product, vendor/samsung/r0sxxx/r0sxxx-vendor.mk)

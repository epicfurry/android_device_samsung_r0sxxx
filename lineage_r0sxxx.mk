#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from the custom device configuration.
$(call inherit-product, device/samsung/r0sxxx/device.mk)

# Inherit from the LineageOS configuration.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_BRAND := samsung
PRODUCT_DEVICE := r0sxxx
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SM-S901B
PRODUCT_NAME := lineage_r0sxxx

PRODUCT_SYSTEM_NAME := r0sxxx

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="r0sxxx-user 14 UP1A.231005.007 S901BXXS7DWL1 release-keys" \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := samsung/r0sxxx/r0sxxx:14/UP1A.231005.007/S901BXXS7DWL1:user/release-keys

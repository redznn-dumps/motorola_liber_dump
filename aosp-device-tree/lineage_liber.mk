#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from liber device
$(call inherit-product, device/motorola/liber/device.mk)

PRODUCT_DEVICE := liber
PRODUCT_NAME := lineage_liber
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola one fusion+
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="liber_retail-user 11 RPIS31.Q2-42-25-1 19a8e release-keys"

BUILD_FINGERPRINT := motorola/liber_retail/liber:11/RPIS31.Q2-42-25-1/19a8e:user/release-keys

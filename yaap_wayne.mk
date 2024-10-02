#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from wayne device
$(call inherit-product, device/xiaomi/wayne/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/yaap/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := yaap_wayne
PRODUCT_DEVICE := wayne
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI 6X
PRODUCT_MANUFACTURER := Xiaomi

#YAAP Stuffs
USE_LEGACY_BOOTANIMATION := true
TARGET_BUILD_GAPPS := true
TARGET_BOARD_PLATFORM := sdm660

TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_CHARACTERISTICS := nosdcard

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

BUILD_FINGERPRINT := xiaomi/wayne/wayne:9/PKQ1.180904.001/V12.0.2.0.PDCCNXM:user/release-keys

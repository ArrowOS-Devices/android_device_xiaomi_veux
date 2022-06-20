#
# Copyright (C) 2022 ArrowOS
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common ArrowOS stuff.
$(call inherit-product, vendor/arrow/config/common.mk)

# Inherit from veux device
$(call inherit-product, device/xiaomi/veux/device.mk)

PRODUCT_NAME := arrow_veux
PRODUCT_DEVICE := veux
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO X4 Pro 5G

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="veux-user 11 RKQ1.211001.001 V13.0.10.0.RKCMIXM release-keys"

BUILD_FINGERPRINT := Redmi/veux_global/veux:11/RKQ1.211001.001/V13.0.10.0.RKCMIXM:user/release-keys

# ArrowOS additions
DEVICE_MAINTAINER := kubersharma001

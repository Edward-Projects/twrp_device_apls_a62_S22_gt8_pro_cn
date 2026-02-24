#
# Copyright (C) 2026 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from a62_S22_gt8_pro_cn device
$(call inherit-product, device/alps/a62_S22_gt8_pro_cn/device.mk)

PRODUCT_DEVICE := a62_S22_gt8_pro_cn
PRODUCT_NAME := twrp_a62_S22_gt8_pro_cn
PRODUCT_BRAND := alps
PRODUCT_MODEL := GT8 Pro
PRODUCT_MANUFACTURER := alps

PRODUCT_GMS_CLIENTID_BASE := android-alps

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_a62_S22_gt8_pro_cn-user 12 SP1A.210812.016 mp1V14511 release-keys"

BUILD_FINGERPRINT := alps/full_a62_S22_gt8_pro_cn/a62_S22_gt8_pro_cn:12/SP1A.210812.016/mp1V14511:user/release-keys

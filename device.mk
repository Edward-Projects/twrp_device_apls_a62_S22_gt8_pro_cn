#
# Copyright (C) 2026 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/alps/a62_S22_gt8_pro_cn

# Health HAL
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-service \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-service.rc

# Keymaster HAL
#PRODUCT_PACKAGES += \
    android.hardware.keymaster@4.1-service \
    android.hardware.gatekeeper@1.0-service \
    android.hardware.gatekeeper@1.0-impl \
    libgatekeeper

#
# For local builds only
#
# Custom TWRP Versioning
ifneq ($(USE_CUSTOM_VERSION),)
    ifneq ($(wildcard device/common/version-info/.),)
        # device version is optional - the default value is "0" if nothing is set in device tree
        CUSTOM_TWRP_DEVICE_VERSION := 0
    endif
endif
#
# end local build flags
#

#
# Copyright (C) 2026 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),a62_S22_gt8_pro_cn)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif

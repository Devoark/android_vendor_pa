# Copyright (C) 2015-2017 ParanoidAndroid Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Check for target product
ifeq (pa_oneplus2,$(TARGET_PRODUCT))

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Advanced platform features
TARGET_DISABLE_DASH := false
TARGET_ENABLE_QC_AV_ENHANCEMENTS := true

# Include ParanoidAndroid common configuration
TARGET_BOOT_ANIMATION_RES := 1080

include device/qcom/common/common.mk

# Inherit AOSP device configuration
$(call inherit-product, device/oneplus/oneplus2/oneplus2.mk)

include vendor/pa/main.mk

# Override AOSP build properties
PRODUCT_NAME := pa_oneplus2
PRODUCT_DEVICE := oneplus2
PRODUCT_BRAND := OnePlus
PRODUCT_MANUFACTURER := OnePlus

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

endif

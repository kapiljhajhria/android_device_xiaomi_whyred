# 
# Copyright (C) 2018 The LineageOS Project
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
#

# Release name
PRODUCT_RELEASE_NAME := whyred

$(call inherit-product, build/target/product/embedded.mk)

# Inherit from our custom product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product-if-exists, vendor/MiuiCamera/config.mk)
$(call inherit-product, vendor/carbon/config/common.mk)
$(call inherit-product, vendor/carbon/config/gsm.mk)



# Inherit from whyred device
$(call inherit-product, device/xiaomi/whyred/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := carbon_whyred
PRODUCT_DEVICE := whyred
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 5 Pro
PRODUCT_FULL_TREBLE_OVERRIDE := true

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="whyred" \
    PRODUCT_NAME="whyred" \
    PRIVATE_BUILD_DESC="whyred-user 9 PKQ1.180904.001 V10.3.1.0.PEIMIXM release-keys"

BUILD_FINGERPRINT := "xiaomi/whyred/whyred:9/PKQ1.180904.001/V10.3.1.0.PEIMIXM:user/release-keys"

TARGET_VENDOR := Xiaomi



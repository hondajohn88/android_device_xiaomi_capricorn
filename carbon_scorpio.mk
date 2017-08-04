#
# Copyright (C) 2016 The CyanogenMod Project
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

# Inherit from scorpio device
$(call inherit-product, device/xiaomi/scorpio/full_scorpio.mk)

# Inherit Carbon GSM telephony parts
$(call inherit-product, vendor/carbon/config/gsm.mk)

# Inherit Carbon product configuration
$(call inherit-product, vendor/carbon/config/common.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := carbon_scorpio
PRODUCT_DEVICE := scorpio
PRODUCT_BRAND := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="scorpio-user 6.0.1 MXB48T V8.2.6.0.MADCNDL release-keys" \
    PRIVATE_BUILD_DESC="Xiaomi/scorpio/scorpio:6.0.1/MXB48T/V8.2.6.0.MADCNDL:user/release-keys"

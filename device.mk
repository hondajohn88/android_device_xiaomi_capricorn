#
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# call the proprietary setup
$(call inherit-product, vendor/xiaomi/scorpio/scorpio-vendor.mk)

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.consumerir.xml:system/etc/permissions/android.hardware.consumerir.xml

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_platform_info.xml:system/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/audio/mixer_paths_tasha.xml:system/etc/mixer_paths_tasha.xml

# Consumerir
PRODUCT_PACKAGES += \
    consumerir.msm8996

# ConfigPanel
PRODUCT_PACKAGES += \
    ConfigPanel

# Device init scripts
PRODUCT_PACKAGES += \
    init.target.rc

# Fingerprint Firmware
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/firmware/fingerpr.b00:system/firmware/image/fingerpr.b00 \
    $(LOCAL_PATH)/firmware/fingerpr.b01:system/firmware/image/fingerpr.b01 \
    $(LOCAL_PATH)/firmware/fingerpr.b02:system/firmware/image/fingerpr.b02 \
    $(LOCAL_PATH)/firmware/fingerpr.b03:system/firmware/image/fingerpr.b03 \
    $(LOCAL_PATH)/firmware/fingerpr.b04:system/firmware/image/fingerpr.b04 \
    $(LOCAL_PATH)/firmware/fingerpr.b05:system/firmware/image/fingerpr.b05 \
    $(LOCAL_PATH)/firmware/fingerpr.b06:system/firmware/image/fingerpr.b06 \
    $(LOCAL_PATH)/firmware/fingerpr.mdt:system/firmware/image/fingerpr.mdt \
    $(LOCAL_PATH)/firmware/fpca4.b00:system/firmware/image/fpca4.b00 \
    $(LOCAL_PATH)/firmware/fpca4.b01:system/firmware/image/fpca4.b01 \
    $(LOCAL_PATH)/firmware/fpca4.b02:system/firmware/image/fpca4.b02 \
    $(LOCAL_PATH)/firmware/fpca4.b03:system/firmware/image/fpca4.b03 \
    $(LOCAL_PATH)/firmware/fpca4.b04:system/firmware/image/fpca4.b04 \
    $(LOCAL_PATH)/firmware/fpca4.b05:system/firmware/image/fpca4.b05 \
    $(LOCAL_PATH)/firmware/fpca4.b06:system/firmware/image/fpca4.b06 \
    $(LOCAL_PATH)/firmware/fpca4.mdt:system/firmware/image/fpca4.mdt \
    $(LOCAL_PATH)/firmware/fpca8.b00:system/firmware/image/fpca8.b00 \
    $(LOCAL_PATH)/firmware/fpca8.b01:system/firmware/image/fpca8.b01 \
    $(LOCAL_PATH)/firmware/fpca8.b02:system/firmware/image/fpca8.b02 \
    $(LOCAL_PATH)/firmware/fpca8.b03:system/firmware/image/fpca8.b03 \
    $(LOCAL_PATH)/firmware/fpca8.b04:system/firmware/image/fpca8.b04 \
    $(LOCAL_PATH)/firmware/fpca8.b05:system/firmware/image/fpca8.b05 \
    $(LOCAL_PATH)/firmware/fpca8.b06:system/firmware/image/fpca8.b06 \
    $(LOCAL_PATH)/firmware/fpca8.mdt:system/firmware/image/fpca8.mdt \
    $(LOCAL_PATH)/firmware/fpcb7.b00:system/firmware/image/fpcb7.b00 \
    $(LOCAL_PATH)/firmware/fpcb7.b01:system/firmware/image/fpcb7.b01 \
    $(LOCAL_PATH)/firmware/fpcb7.b02:system/firmware/image/fpcb7.b02 \
    $(LOCAL_PATH)/firmware/fpcb7.b03:system/firmware/image/fpcb7.b03 \
    $(LOCAL_PATH)/firmware/fpcb7.b04:system/firmware/image/fpcb7.b04 \
    $(LOCAL_PATH)/firmware/fpcb7.b05:system/firmware/image/fpcb7.b05 \
    $(LOCAL_PATH)/firmware/fpcb7.b06:system/firmware/image/fpcb7.b06 \
    $(LOCAL_PATH)/firmware/fpcb7.mdt:system/firmware/image/fpcb7.mdt \
    $(LOCAL_PATH)/firmware/fpcta32.b00:system/firmware/image/fpcta32.b00 \
    $(LOCAL_PATH)/firmware/fpcta32.b01:system/firmware/image/fpcta32.b01 \
    $(LOCAL_PATH)/firmware/fpcta32.b02:system/firmware/image/fpcta32.b02 \
    $(LOCAL_PATH)/firmware/fpcta32.b03:system/firmware/image/fpcta32.b03 \
    $(LOCAL_PATH)/firmware/fpcta32.b04:system/firmware/image/fpcta32.b04 \
    $(LOCAL_PATH)/firmware/fpcta32.b05:system/firmware/image/fpcta32.b05 \
    $(LOCAL_PATH)/firmware/fpcta32.b06:system/firmware/image/fpcta32.b06 \
    $(LOCAL_PATH)/firmware/fpcta32.mdt:system/firmware/image/fpcta32.mdt

# Input
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/atmel-maxtouch.kl:system/usr/keylayout/atmel-maxtouch.kl \
    $(LOCAL_PATH)/keylayout/synaptics_dsx.kl:system/usr/keylayout/synaptics_dsx.kl \
    $(LOCAL_PATH)/keylayout/cyttsp_button.kl:system/usr/keylayout/cyttsp_button.kl \
    $(LOCAL_PATH)/keylayout/uinput-fpc.kl:system/usr/keylayout/uinput-fpc.kl

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/idc/usf_tsc.idc:system/usr/idc/usf_tsc.idc \
    $(LOCAL_PATH)/idc/usf_tsc_ext.idc:system/usr/idc/usf_tsc_ext.idc \
    $(LOCAL_PATH)/idc/usf_tsc_ptr.idc:system/usr/idc/usf_tsc_ptr.idc \
    $(LOCAL_PATH)/idc/uinput-fpc.idc:system/usr/idc/uinput-fpc.idc


# NFC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/nfc/libnfc-brcm.conf:system/etc/libnfc-brcm.conf \
    $(LOCAL_PATH)/nfc/libnfc-nxp.conf:system/etc/libnfc-nxp.conf

# Inherit from msm8996-common
$(call inherit-product, device/xiaomi/msm8996-common/msm8996.mk)

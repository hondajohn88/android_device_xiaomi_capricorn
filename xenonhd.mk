$(call inherit-product, device/xiaomi/scorpio/full_scorpio.mk)

# Inherit common product files.
$(call inherit-product, vendor/xenonhd/config/common_full_phone.mk)

PRODUCT_NAME := xenonhd_scorpio
PRODUCT_DEVICE := scorpio
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI Note 2
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR := Xiaomi

# Root options
ROOT_METHOD=magisk

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="scorpio" \
    PRODUCT_NAME="scorpio" \
    BUILD_FINGERPRINT="Xiaomi/scorpio/scorpio:6.0.1/MXB48T/V8.2.6.0.MADCNDL:user/release-keys" \
    PRIVATE_BUILD_DESC="scorpio-user 6.0.1 MXB48T V8.2.6.0.MADCNDL release-keys"

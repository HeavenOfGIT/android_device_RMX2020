# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from RMX2020 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := realme
PRODUCT_DEVICE := RMX2020
PRODUCT_MANUFACTURER := realme
PRODUCT_NAME := lineage_RMX2020
PRODUCT_MODEL := RMX2020

PRODUCT_GMS_CLIENTID_BASE := android-realme

# Build info
BUILD_FINGERPRINT := full_oppo6769-user-10-QP1A.190711.020-68b77aba7cb33275-release-keys
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=RMX2020 \
    PRODUCT_NAME=RMX2020 \
    PRIVATE_BUILD_DESC="full_oppo6769-user 10 QP1A.190711.020 68b77aba7cb33275 release-keys

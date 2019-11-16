# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from A1 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := haier
PRODUCT_DEVICE := A1
PRODUCT_MANUFACTURER := haier
PRODUCT_NAME := lineage_A1
PRODUCT_MODEL := A1

PRODUCT_GMS_CLIENTID_BASE := android-haier
TARGET_VENDOR := haier
TARGET_VENDOR_PRODUCT_NAME := A1
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="A1-user 8.1.0 O11019 1540820604 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Haier/A1/A1:8.1.0/O11019/1540820604:user/release-keys

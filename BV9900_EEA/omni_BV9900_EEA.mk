$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Add this line if your device is 64-bit
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
# Otherwise, If you have 32-bit device, add the below line instead of above line
#$(call inherit-product, $(SRC_TARGET_DIR)/product/core_minimal.mk

# Another common config inclusion
$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)

# If you are building from OmniROM's minimal source, Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_COPY_FILES += device/Blackview/BV9900_EEA/prebuilt/zImage:kernel
# Fles under $(LOCAL_PATH)/recovery/root/ gets automatically copied into recovery
# PRODUCT_COPY_FILES += $(LOCAL_PATH)/recovery/root/*:root/*

PRODUCT_DEVICE := BV9900
PRODUCT_NAME := BV9900_EEA
PRODUCT_BRAND := Blackview
PRODUCT_MODEL := BV9900
PRODUCT_MANUFACTURER := Blackview
PRODUCT_RELEASE_NAME := Blackview BV9900

# Forcefully add mtp support (adb is already there)
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# Add fingerprint from Stock ROM build.prop
PRODUCT_BUILD_PROP_OVERRIDES += \
	BUILD_FINGERPRINT="Blackview/BV9900_EEA/BV9900:9/PPR1.180610.011/1575339964:user/release-keys" \
    PRIVATE_BUILD_DESC="full_k79v1_64-user 9 PPR1.180610.011 eng.releas.20200523.003134 release-keys"

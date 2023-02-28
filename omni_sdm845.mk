$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Add this line if your device is 64-bit
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Another common config inclusion
$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)

# If you are building from OmniROM's minimal source, Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_COPY_FILES += device/ayn/sdm845/prebuilt/kernel:kernel
# Fles under $(LOCAL_PATH)/recovery/root/ gets automatically copied into recovery
# PRODUCT_COPY_FILES += $(LOCAL_PATH)/recovery/root/*:root/*

# Inherit from sdm845 device
$(call inherit-product, device/ayn/sdm845/device.mk)

PRODUCT_DEVICE := sdm845
PRODUCT_NAME := omni_sdm845
PRODUCT_BRAND := qti
PRODUCT_MODEL := SDM845 for arm64
PRODUCT_MANUFACTURER := ayn

# Forcefully add mtp support (adb is already there)
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# Add fingerprint from Stock ROM build.prop
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="qti/sdm845/sdm845:10/QKQ1.200517.002/Odin11161758:user/releasekey-keys" \
    PRIVATE_BUILD_DESC="sdm845-user 10 QKQ1.200517.002 Odin11161758 releasekey-keys"

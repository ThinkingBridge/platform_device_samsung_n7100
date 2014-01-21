# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Inherit some common ThinkingBridge stuff.
$(call inherit-product, vendor/thinkingbridge/config/common.mk)

# Inherit gsm packages
$(call inherit-product, vendor/thinkingbridge/config/gsm.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/n7100/full_n7100.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := n7100
PRODUCT_NAME := thinkingbridge_n7100
PRODUCT_BRAND := samsung
PRODUCT_MODEL := GT-N7100
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=t03gxx TARGET_DEVICE=t03g BUILD_FINGERPRINT="samsung/t03gxx/t03g:4.1.1/JRO03C/N7100XXALJ3:user/release-keys" PRIVATE_BUILD_DESC="t03gxx-user 4.1.1 JRO03C N7100XXALJ3 release-keys"

# Enable Lightbulb
PRODUCT_PACKAGES += Lightbulb

PRODUCT_COPY_FILES += \
    vendor/thinkingbridge/prebuilt/bootanimation/720.zip:system/media/bootanimation.zip
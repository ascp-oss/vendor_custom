WITH_GMS := true
TARGET_INCLUDE_PIXEL_LAUNCHER := true

# SetupWizard
ifneq ($(WITH_GMS), true)
PRODUCT_PRODUCT_PROPERTIES += \
    setupwizard.theme=glif_v4 \
    setupwizard.feature.day_night_mode_enabled=true
endif

ifeq ($(WITH_GMS), true)
PRODUCT_PRODUCT_PROPERTIES += \
    with_google_apps=true

$(call inherit-product, vendor/gms/products/gms.mk)
$(call inherit-product, vendor/pixel/gsans/products/gsans.mk)
endif

# Clocks (SystemUI)
PRODUCT_PACKAGES += \
    SystemUIClocks-BigNum \
    SystemUIClocks-Calligraphy \
    SystemUIClocks-Flex \
    SystemUIClocks-Growth \
    SystemUIClocks-Inflate \
    SystemUIClocks-Metro \
    SystemUIClocks-NumOverlap \
    SystemUIClocks-Weather
CUSTOM_BUILD_DATE := $(shell date -u +%Y%m%d-%H%M)

CUSTOM_PLATFORM_VERSION := 16.2
CUSTOM_VERSION_PROP := sixteen

ASCP_VERSION := 5.5
ASCP_MAINTAINER ?= Unofficial Maintainer
ASCP_OFFICIAL ?= true

ASCP_BUILDTYPE := OFFICIAL


ASCP_PACKAGE_VERSION := ASCP-v$(ASCP_VERSION)-$(CUSTOM_BUILD)-$(ASCP_BUILDTYPE)-$(CUSTOM_BUILD_DATE)

# PixelOS Platform Version
PRODUCT_PRODUCT_PROPERTIES += \
    ro.custom.build.date=$(CUSTOM_BUILD_DATE) \
    ro.custom.device=$(CUSTOM_BUILD) \
    ro.ascp.maintainer=$(ASCP_MAINTAINER) \
    ro.ascp.release.version=$(ASCP_VERSION) \
    ro.custom.version=$(ASCP_PACKAGE_VERSION) \
    ro.ascp.version=$(ASCP_PACKAGE_VERSION) \
    ro.ascp.releasetype=$(ASCP_BUILDTYPE) \
    ro.ascp.ota.test_mode=false

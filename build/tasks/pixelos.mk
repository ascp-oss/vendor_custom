# Copyright (C) 2017 Unlegacy-Android
# Copyright (C) 2017,2020 The LineageOS Project
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

ifndef CUSTOM_BUILD_TASKS_PIXELOS_MK
CUSTOM_BUILD_TASKS_PIXELOS_MK := 1

# -----------------------------------------------------------------
# PixelOS OTA update package

SHA256 := prebuilts/build-tools/path/$(HOST_PREBUILT_TAG)/sha256sum

CUSTOM_TARGET_PACKAGE = $(PRODUCT_OUT)/$(ASCP_PACKAGE_VERSION).zip

.PHONY: ascp
ascp: $(DEFAULT_GOAL) otapackage
	$(hide) mv -f $(INTERNAL_OTA_PACKAGE_TARGET) $(CUSTOM_TARGET_PACKAGE)
	$(hide) $(SHA256) $(CUSTOM_TARGET_PACKAGE) | sed "s|$(PRODUCT_OUT)/||" > $(CUSTOM_TARGET_PACKAGE).sha256sum
ifeq ($(ASCP_BUILDTYPE),OFFICIAL)
	@ASCP_BUILDTYPE=$(ASCP_BUILDTYPE) vendor/custom/build/tools/generate_ota.sh $(TARGET_DEVICE)
else
	@printf "\033[1;34m========================================================================\033[0m\n"
	@printf "\033[1;32m                       ASCP OTA Package Complete                        \033[0m\n"
	@printf "\033[1;34m========================================================================\033[0m\n"
	@printf "\033[1;36m%-15s :\033[1;35m %s\033[0m\n" "Package Zip" "$(CUSTOM_TARGET_PACKAGE)"
	@printf "\033[1;36m%-15s :\033[1;35m %s\033[0m\n" "SHA256" "$$(cat $(CUSTOM_TARGET_PACKAGE).sha256sum | awk '{print $$1}')"
	@printf "\033[1;36m%-15s :\033[1;35m %s\033[0m\n" "Size" "$$(du -h $(CUSTOM_TARGET_PACKAGE) | awk '{print $$1}')"
	@printf "\033[1;34m========================================================================\033[0m\n"
endif

endif

# Copyright (C) 2019 LineageOS
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

$(call inherit-product, device/xiaomi/laurel_sprout/device.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit some common Havoc-OS stuff
$(call inherit-product, vendor/havoc/config/common_full_phone.mk)

TARGET_BOOT_ANIMATION_RES := 720

TARGET_HAS_FOD := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := havoc_laurel_sprout
PRODUCT_DEVICE := laurel_sprout
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi A3
PRODUCT_MANUFACTURER := Xiaomi

BUILD_FINGERPRINT := "Xiaomi/laurel_sprout/laurel_sprout:11/RKQ1.200903.002/V12.0.18.0.RFQMIXM:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="qssi-user 11 RKQ1.200903.002 V12.0.18.0.RFQMIXM release-keys" \
    PRODUCT_NAME="laurel_sprout"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

ALLOW_MISSING_DEPENDENCIES := true

# Havoc

PRODUCT_PROPERTY_OVERRIDES += \
    ro.havoc.device.name=Xiaomi Mi A3 \
    ro.havoc.group.url=https://t.me/havoc_mee_a3 \
    ro.havoc.maintainer=Himanish M. \ 
    ro.havoc.maintainer.username=k_fene_8

HAVOC_BUILD_TYPE := Official
TARGET_GAPPS_ARCH := arm64
WITH_GAPPS=true
TARGET_INCLUDE_LIVE_WALLPAPERS := false

# Use gestures by default
PRODUCT_PRODUCT_PROPERTIES += \
    ro.boot.vendor.overlay.theme=com.android.internal.systemui.navbar.gestural
#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
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
#

# Release name
PRODUCT_RELEASE_NAME := hero2qltechn

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from gemini device
$(call inherit-product, device/samsung/hero2qltechn/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_hero2qltechn
PRODUCT_DEVICE := hero2qltechn
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G9350
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="hero2qltechn" \
    PRODUCT_NAME="hero2qltezh" \
    BUILD_FINGERPRINT="samsung/hero2qltezh/hero2qltechn:7.0/NRD90M/6.12.22:user/release-keys" \
    PRIVATE_BUILD_DESC="hero2qltezh-user 7.0 NRD90M 6.12.22 release-keys"

TARGET_VENDOR := samsung

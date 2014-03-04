# Copyright (C) 2013 OmniROM Project
# Copyright (C) 2012 The CyanogenMod Project
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

# Inherit APNs list
$(call inherit-product, vendor/mahdi/configs/cdma.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/mahdi/configs/common.mk)
$(call inherit-product, vendor/mahdi/configs/common_full_phone.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/lge/vs980/full_vs980.mk)

# Discard inherited values and use our own instead.
PRODUCT_NAME := mahdi_vs980
PRODUCT_DEVICE := vs980
PRODUCT_BRAND := lge
PRODUCT_MANUFACTURER := lge
PRODUCT_MODEL := LG-VS980

# Enable Torch
PRODUCT_PACKAGES += Torch

# Copy device specific prebuilt files.
PRODUCT_COPY_FILES += \
    vendor/mahdi/prebuilt/bootanimations/BOOTANIMATION-1080x1920.zip:system/media/bootanimation.zip

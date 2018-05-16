#
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

LOCAL_PATH := device/samsung/a3y17lte

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# include splitted configs
-include $(LOCAL_PATH)/configs/product/audio.mk
-include $(LOCAL_PATH)/configs/product/fingerprint.mk
-include $(LOCAL_PATH)/configs/product/graphics.mk
-include $(LOCAL_PATH)/configs/product/light.mk
-include $(LOCAL_PATH)/configs/product/nfc.mk
-include $(LOCAL_PATH)/configs/product/permissions.mk
-include $(LOCAL_PATH)/configs/product/snap.mk
-include $(LOCAL_PATH)/configs/product/specific-ramdisk.mk
-include $(LOCAL_PATH)/configs/product/wifi.mk

# Inherit from Exynos7870-common
$(call inherit-product, device/samsung/exynos7870-common/device-common.mk)

# call the proprietary setup
$(call inherit-product, vendor/samsung/a3y17lte/a3y17lte-vendor.mk)

# Dalvik heap
$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk) 

# call the common proprietary setup
$(call inherit-product, vendor/samsung/exynos7870-common/exynos7870-common-vendor.mk)
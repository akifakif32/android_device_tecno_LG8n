#
# Copyright (C) 2023 The Infinity-X Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/tecno/LG8n
KERNEL_PATH := $(DEVICE_PATH)-kernel
COMMON_GKI_PATH := device/millennium/common-kernel

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# Fingerprint
PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint@2.1.vendor:64

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.fingerprint.xml

# Overlays
PRODUCT_PACKAGES += \
    FrameworksResOverlayLG8n \
    SettingsProviderOverlayLG8n \
    SystemUIOverlayLG8n \
    UpdaterResOverlayLG8n

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 31

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator-service.millennium

# Inherit from the common OEM chipset makefile.
$(call inherit-product, device/tecno/mt6789-common/common.mk)

# Inherit the proprietary files
$(call inherit-product, vendor/tecno/LG8n/LG8n-vendor.mk)

#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from berlna device
$(call inherit-product, device/motorola/berlna/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)

PRODUCT_NAME := infinity_berlna
PRODUCT_DEVICE := berlna
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola edge (2021)

TARGET_BOOT_ANIMATION_RES := 1080
INFINITY_MAINTAINER := Viaan_Thakur
INFINITY_BUILD_TYPE := UNOFFICIAL
TARGET_SUPPORTS_BLUR := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_HAS_UDFPS := false

PRODUCT_SYSTEM_PROPERTIES += \
    ro.product.marketname="Motorola Moto Edge (2021)" \
    ro.infinity.soc="Snapdragon 778G 5G" \
    ro.infinity.battery="5000 mAh" \
    ro.infinity.display="1080 x 2400, 120 Hz" \
    ro.infinity.camera="108MP + 8MP + 2MP + 30MP"

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="berlna_global-user 13 T1RMS33.1-110-17-12 f7bcd-35c05 release-keys" \
    BuildFingerprint=motorola/berlna_global/berlna:13/T1RMS33.1-110-17-12/f7bcd-35c05:user/release-keys \
    DeviceProduct=berlna_global

#
# Copyright (C) 2024 Vladislav Smirnov
#
# SPDX-License-Identifier: Apache-2.0
#

# Exclude AAE Car System UI
DO_NOT_INCLUDE_AAE_CAR_SYSTEM_UI := true

# Exclude Car UI Reference Design
DO_NOT_INCLUDE_CAR_UI_REFERENCE_DESIGN := true

# Exclude Car Visual Overlay
DISABLE_CAR_PRODUCT_VISUAL_OVERLAY := true

# Copy additional files
PRODUCT_COPY_FILES += \
    packages/services/Car/car_product/car_ui_portrait/bootanimation/bootanimation.zip:system/media/bootanimation.zip

PRODUCT_PRODUCT_PROPERTIES+= \
    ro.adb.secure=0

$(call inherit-product, packages/services/Car/car_product/car_ui_portrait/apps/car_ui_portrait_apps.mk)
$(call inherit-product, packages/services/Car/car_product/car_ui_portrait/rro/car_ui_portrait_rro.mk)

PRODUCT_COPY_FILES += \
    packages/services/Car/car_product/car_ui_portrait/car_ui_portrait_hardware.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/car_ui_portrait_hardware.xml
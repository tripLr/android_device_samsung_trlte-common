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

PRODUCT_CHARACTERISTICS := phone

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

ifneq ($(RR_BUILD),)
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay-rr
endif

# Audio
PRODUCT_PACKAGES += \
    android.hardware.audio@2.0-impl \
    android.hardware.audio.effect@2.0-impl

# Advanced Display
PRODUCT_PACKAGES += \
    AdvancedDisplay

# Bluetooth
PRODUCT_PACKAGES += \
    android.hardware.bluetooth@1.0-impl \
    libbt-vendor

# Camera
PRODUCT_PACKAGES += \
    android.hardware.camera.provider@2.4-impl \
    camera.device@1.0-impl \
    camera.apq8084 \
    libxml2 \
    snap

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/external_camera_config.xml:$(TARGET_COPY_OUT_VENDOR)/etc/external_camera_config.xml

# DRM
PRODUCT_PACKAGES += \
    android.hardware.drm@1.0-impl \
    android.hardware.drm@1.0-service

# Fingerprint sensor
PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint@2.1-service \
    fingerprint.apq8084

# Graphics
PRODUCT_PACKAGES += \
    android.hardware.configstore@1.0-service \
    android.hardware.graphics.allocator@2.0-impl \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.composer@2.1-impl \
    android.hardware.graphics.mapper@2.0-impl \
    android.hardware.memtrack@1.0-impl \
    android.hardware.memtrack@1.0-service

# GPS
PRODUCT_PACKAGES += \
    android.hardware.gnss@1.0-impl

# GPS
PRODUCT_PACKAGES += \
    android.hardware.gnss@1.0-impl.apq8084 \
    android.hardware.gnss@1.0-service.apq8084

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/flp.conf:/system/etc/flp.conf \
    $(LOCAL_PATH)/configs/gps.conf:/system/etc/gps.conf \
    $(LOCAL_PATH)/configs/izat.conf:/system/etc/izat.conf \
    $(LOCAL_PATH)/configs/sap.conf:/system/etc/sap.conf

# Health
PRODUCT_PACKAGES += \
   android.hardware.health@2.0-service.samsung8084

# IR Blaster
PRODUCT_PACKAGES += \
    android.hardware.ir@1.0-impl \
    consumerir.apq8084

# IRSC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sec_config:$(TARGET_COPY_OUT_VENDOR)/etc/sec_config

# Keymaster
PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0-impl \
    android.hardware.keymaster@3.0-service

# Lights
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-impl \
    lights.APQ8084

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_codecs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media_codecs_performance.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/configs/media_profiles_V1_0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_V1_0.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video.xml

# Netd
PRODUCT_PACKAGES += \
    android.system.net.netd@1.0

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.fingerprint.xml

# Power HAL
PRODUCT_PACKAGES += \
    android.hardware.power@1.1-service-qti

# Radio
PRODUCT_PACKAGES += \
    libsecnativefeature

# RenderScript HAL
PRODUCT_PACKAGES += \
    android.hardware.renderscript@1.0-impl

# RMNET
PRODUCT_PACKAGES += \
    librmnetctl

# Seccomp
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/seccomp/mediacodec.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediacodec.policy \
    $(LOCAL_PATH)/seccomp/mediaextractor.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediaextractor.policy

# Sensors
PRODUCT_PACKAGES += \
    android.hardware.sensors@1.0-impl.samsung8084 \
    android.hardware.sensors@1.0-service.samsung8084

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sensors/_hals.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/_hals.conf

# Touch
PRODUCT_PACKAGES += \
    vendor.lineage.touch@1.0-service.samsung

# Thermal engine
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thermal-engine.conf:$(TARGET_COPY_OUT_SYSTEM)/etc/thermal-engine.conf

# Trust HAL
PRODUCT_PACKAGES += \
    vendor.lineage.trust@1.0-service

# USB
PRODUCT_PACKAGES += \
    android.hardware.usb@1.0-service.basic

# Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator@1.0-service.lineage

# Wifi
PRODUCT_PACKAGES += \
    android.hardware.wifi@1.0-service

# Common Qualcomm
$(call inherit-product, device/samsung/qcom-common/qcom-common.mk)

# Treble packages
$(call inherit-product, device/samsung/apq8084-common/treble.mk)


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

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

ifneq ($(RR_BUILD),)
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay-rr
endif

# Advanced Display
PRODUCT_PACKAGES += \
    AdvancedDisplay

# Camera
PRODUCT_PACKAGES += \
    camera.apq8084 \
    libxml2

# Fingerprint sensor
PRODUCT_PACKAGES += \
    fingerprint.apq8084

# GPS
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/flp.conf:/system/etc/flp.conf \
    $(LOCAL_PATH)/configs/gps.conf:/system/etc/gps.conf \
    $(LOCAL_PATH)/configs/izat.conf:/system/etc/izat.conf \
    $(LOCAL_PATH)/configs/sap.conf:/system/etc/sap.conf

# IR Blaster
PRODUCT_PACKAGES += \
    consumerir.apq8084

# IRSC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sec_config:system/vendor/etc/sec_config

# Lights
PRODUCT_PACKAGES += \
    lights.APQ8084

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_codecs.xml:system/vendor/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media_codecs_performance.xml:system/vendor/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/configs/media_profiles_V1_0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_V1_0.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/vendor/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/vendor/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/vendor/etc/media_codecs_google_video.xml

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:system/vendor/etc/permissions/android.hardware.fingerprint.xml

# Radio
PRODUCT_PACKAGES += \
    libsecnativefeature

# RMNET
PRODUCT_PACKAGES += \
    librmnetctl

# Seccomp
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/seccomp/mediacodec.policy:system/vendor/etc/seccomp_policy/mediacodec.policy \
    $(LOCAL_PATH)/seccomp/mediaextractor.policy:system/vendor/etc/seccomp_policy/mediaextractor.policy

# Sensors
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sensors/_hals.conf:system/vendor/etc/sensors/_hals.conf

PRODUCT_PACKAGES += \
    sensors.apq8084

# Thermal engine
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thermal-engine.conf:system/etc/thermal-engine.conf

# Common Qualcomm
$(call inherit-product, device/samsung/qcom-common/qcom-common.mk)

# Treble packages
$(call inherit-product, device/samsung/apq8084-common/treble.mk)

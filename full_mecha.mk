#
# Copyright (C) 2011 The CyanogenMod Project
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

# common msm7x30 configs
$(call inherit-product, device/htc/msm7x30-common/msm7x30.mk)

# The gps config appropriate for this device
PRODUCT_COPY_FILES += \
    device/htc/mecha/prebuilt/etc/gps.conf:system/etc/gps.conf

PRODUCT_COPY_FILES += \
    device/htc/mecha/ramdisk/init.mecha.rc:root/init.mecha.rc \
    device/htc/mecha/ramdisk/init.mecha.usb.rc:root/init.mecha.usb.rc \
    device/htc/mecha/ramdisk/fstab.mecha:root/fstab.mecha \
    device/htc/mecha/ramdisk/ueventd.mecha.rc:root/ueventd.mecha.rc

PRODUCT_PROPERTY_OVERRIDES += \
    ro.ril.oem.ecclist=112,911 \
    ro.ril.enable.a52=0 \
    ro.ril.enable.a53=1 \
    ro.ril.def.agps.mode=6 \
    ro.com.google.clientidbase=android-htc \
    ro.com.google.clientidbase.yt=android-htc \
    ro.com.google.clientidbase.am=android-verizon \
    ro.com.google.clientidbase.vs=android-verizon \
    ro.com.google.clientidbase.gmm=android-verizon \
    ro.com.google.clientidbase.ms=android-verizon \
    ro.com.google.locationfeatures=1 \
    ro.com.google.networklocation=1 \
    ro.setupwizard.enable_bypass=1 \
    dalvik.vm.lockprof.threshold=500 \
    dalvik.vm.dexopt-flags=m=y \
    ro.telephony.call_ring.multiple=false \
    persist.telephony.support_ipv6=true \
    persist.telephony.support_ipv4=true

DEVICE_PACKAGE_OVERLAYS += device/htc/mecha/overlay

# Permission xmls
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml

# Misc
PRODUCT_PACKAGES += \
    gps.mecha

# config xml file
PRODUCT_COPY_FILES += \
    device/htc/mecha/prebuilt/etc/voicemail-conf.xml:system/etc/voicemail-conf.xml \
    device/htc/mecha/prebuilt/etc/apns-conf.xml:system/etc/apns-conf.xml \

PRODUCT_COPY_FILES += \
    device/htc/mecha/prebuilt/etc/vold.fstab:system/etc/vold.fstab

# Touchscreen
PRODUCT_COPY_FILES += \
    device/htc/mecha/prebuilt/usr/idc/atmel-touchscreen.idc:system/usr/idc/atmel-touchscreen.idc \
    device/htc/mecha/prebuilt/usr/idc/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc

# Keylayouts
PRODUCT_COPY_FILES += \
    device/htc/mecha/prebuilt/usr/keylayout/atmel-touchscreen.kl:system/usr/keylayout/atmel-touchscreen.kl \
    device/htc/mecha/prebuilt/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/htc/mecha/prebuilt/usr/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
    device/htc/mecha/prebuilt/usr/keylayout/mecha-keypad-v0.kl:system/usr/keylayout/mecha-keypad-v0.kl \
    device/htc/mecha/prebuilt/usr/keylayout/mecha-keypad.kl:system/usr/keylayout/mecha-keypad.kl

# Firmware
PRODUCT_COPY_FILES += \
    device/htc/mecha/prebuilt/etc/firmware/bcm4329.hcd:system/vendor/firmware/bcm4329.hcd \
    device/htc/mecha/prebuilt/etc/firmware/default.acdb:system/etc/firmware/default.acdb \
    device/htc/mecha/prebuilt/etc/firmware/default_org.acdb:system/etc/firmware/default_org.acdb \
    device/htc/mecha/prebuilt/etc/firmware/default_mfg.acdb:system/etc/firmware/default_mfg.acdb \

# Audio DSP Profiles
PRODUCT_COPY_FILES += \
    device/htc/mecha/prebuilt/etc/dsp/AIC3254_REG.csv:system/etc/AIC3254_REG.csv \
    device/htc/mecha/prebuilt/etc/dsp/AIC3254_REG_DualMic.csv:system/etc/AIC3254_REG_DualMic.csv \
    device/htc/mecha/prebuilt/etc/dsp/AIC3254_REG_DualMicXD01.csv:system/etc/AIC3254_REG_DualMicXD01.csv \
    device/htc/mecha/prebuilt/etc/dsp/AIC3254_REG_DualMicXD02.csv:system/etc/AIC3254_REG_DualMicXD02.csv \
    device/htc/mecha/prebuilt/etc/dsp/AdieHWCodec.csv:system/etc/AdieHWCodec.csv \
    device/htc/mecha/prebuilt/etc/dsp/AudioBTID.csv:system/etc/AudioBTID.csv \
    device/htc/mecha/prebuilt/etc/dsp/CodecDSPID.txt:system/etc/CodecDSPID.txt \
    device/htc/mecha/prebuilt/etc/dsp/CodecDSPID_BCLK.txt:system/etc/CodecDSPID_BCLK.txt \
    device/htc/mecha/prebuilt/etc/dsp/HP_Audio.csv:system/etc/HP_Audio.csv \
    device/htc/mecha/prebuilt/etc/dsp/HP_Video.csv:system/etc/HP_Video.csv \
    device/htc/mecha/prebuilt/etc/dsp/SPK_Combination.csv:system/etc/SPK_Combination.csv \
    device/htc/mecha/prebuilt/etc/dsp/TPA2051_CFG.csv:system/etc/TPA2051_CFG.csv

$(call inherit-product-if-exists, vendor/htc/mecha/mecha-vendor.mk)

# htc audio settings
$(call inherit-product, device/htc/mecha/media_htcaudio.mk)
$(call inherit-product, device/htc/mecha/media_a1026.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)


PRODUCT_NAME := htc_mecha
PRODUCT_DEVICE := mecha

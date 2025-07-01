# RILD Related
PRODUCT_COPY_FILES += \
    vendor/Quectel_RIL/libril/32/librilquectel.so:$(TARGET_COPY_OUT_VENDOR)/lib/librilquectel.so \
    vendor/Quectel_RIL/libril/64/librilquectel.so:$(TARGET_COPY_OUT_VENDOR)/lib64/librilquectel.so \
    vendor/Quectel_RIL/libreference-ril/32/libreference-rilquectel.so:$(TARGET_COPY_OUT_VENDOR)/lib/libreference-rilquectel.so \
    vendor/Quectel_RIL/libreference-ril/64/libreference-rilquectel.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libreference-rilquectel.so

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.audio.low_latency.xml

PRODUCT_PACKAGES += \
    android.hardware.radio.config-V1-ndk.vendor \
    android.hardware.radio.data-V1-ndk.vendor \
    android.hardware.radio.messaging-V1-ndk.vendor \
    android.hardware.radio.modem-V1-ndk.vendor \
    android.hardware.radio.network-V1-ndk.vendor \
    android.hardware.radio.sim-V1-ndk.vendor \
    android.hardware.radio.voice-V1-ndk.vendor \
    android.hardware.radio.config-V2-ndk.vendor \
    android.hardware.radio.data-V2-ndk.vendor \
    android.hardware.radio.messaging-V2-ndk.vendor \
    android.hardware.radio.modem-V2-ndk.vendor \
    android.hardware.radio.network-V2-ndk.vendor \
    android.hardware.radio.sim-V2-ndk.vendor \
    android.hardware.radio.voice-V2-ndk.vendor \
    android.hardware.secure_element-V1-ndk.vendor

PRODUCT_PACKAGES += \
    rild \
    librilutils \
    ril-quectel.xml

PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.get_imsi_from_sim=true \
    ro.telephony.default_network=10 \
    persist.telephony.support.ipv6=1 \
    persists.telephony.support.ipv4=1 \
    telephony.lteOnGsmDevice=1 \
    telephony.lteOnCdmaDevice=0 \
    vendor.rild.libpath=/vendor/lib64/libreference-rilquectel.so \
    vendor.rild.libargs=-d/dev/ttyUSB2 \
    ril.function.dataonly=0

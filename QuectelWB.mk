# RILD Related
PRODUCT_COPY_FILES += \
    vendor/Quectel_RIL/libril/32/libril.so:$(TARGET_COPY_OUT_VENDOR)/lib/libril.so \
    vendor/Quectel_RIL/libril/64/libril.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libril.so \
    vendor/Quectel_RIL/libreference-ril/32/libreference-ril.so:$(TARGET_COPY_OUT_VENDOR)/lib/libreference-ril.so \
    vendor/Quectel_RIL/libreference-ril/64/libreference-ril.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libreference-ril.so

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
    vendor.rild.libpath=/vendor/lib64/libril.so \
    vendor.rild.libargs=-d/dev/ttyUSB2 \
    ril.function.dataonly=0

# GPS Related
PRODUCT_PACKAGES += \
    android.hardware.gnss-V1-ndk.vendor

PRODUCT_PACKAGES += \
    gnss-quectel.xml

PRODUCT_COPY_FILES += \
    vendor/Quectel_RIL/libgps/64/android.hardware.gnss-service.example:$(TARGET_COPY_OUT_VENDOR)/bin/hw/android.hardware.gnss-service.example \
    vendor/Quectel_RIL/libgps/32/gps.default.so:$(TARGET_COPY_OUT_VENDOR)/lib/hw/gps.default.so \
    vendor/Quectel_RIL/libgps/64/gps.default.so:$(TARGET_COPY_OUT_VENDOR)/lib64/hw/gps.default.so \
    vendor/Quectel_RIL/libgps/64/gps_cfg.inf:$(TARGET_COPY_OUT_VENDOR)/etc/gps_cfg.inf \
    vendor/Quectel_RIL/libgps/64/gnss-default.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/gnss-quectel.rc \
    frameworks/native/data/etc/android.hardware.location.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.location.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.location.gps.xml

PRODUCT_PROPERTY_OVERRIDES += \
    ro.kernel.android.gps=ttyUSB1 \
    ro.kernel.android.gps.speed=115200 \
    ro.kernel.android.gps.max_rate=1

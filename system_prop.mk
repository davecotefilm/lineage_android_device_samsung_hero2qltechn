# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    af.fast_track_multiplier=1 \
    audio_hal.period_size=192 \
    audio.deep_buffer.media=true \
    audio.offload.buffer.size.kb=32 \
    audio.offload.gapless.enabled=false \
    audio.offload.min.duration.secs=15 \
    audio.offload.multiaac.enable=true \
    audio.offload.multiple.enabled=false \
    audio.offload.passthrough=false \
    audio.offload.pcm.16bit.enable=true \
    audio.offload.pcm.24bit.enable=true \
    audio.offload.track.enable=false \
    audio.offload.video=true \
    audio.safx.pbe.enabled=true \
    audio.parser.ip.buffer.size=262144 \
    audio.dolby.ds2.enabled=false \
    audio.dolby.ds2.hardbypass=false \
    ro.audio.flinger_standbytime_ms=300 \
    tunnel.audio.encode=true \
    use.voice.path.for.pcm.voip=true

PRODUCT_PROPERTY_OVERRIDES += \
    ro.qc.sdk.audio.ssr=false \
    ro.qc.sdk.audio.fluencetype=none \
    qcom.hw.aac.encoder=true \
    persist.audio.fluence.voicecall=true \
    persist.audio.fluence.voicerec=false \
    persist.audio.fluence.speaker=true

# Bluetooth
    ro.bt.bdaddr_path="/efs/bluetooth/bt_addr

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    persist.camera.gyro.disable=0 \
    persist.camera.imglib.fddsp=1

# CNE
PRODUCT_PROPERTY_OVERRIDES += \
    persist.cne.feature=1

# Data modules
PRODUCT_PROPERTY_OVERRIDES += \
    persist.data.mode=concurrent \
    persist.data.netmgrd.qos.enable=true \
    ro.use_data_netmgrd=true

# Display (Qualcomm AD)
PRODUCT_PROPERTY_OVERRIDES += \
    ro.qualcomm.cabl=1 \
    ro.qcom.ad=1 \
    ro.qcom.ad.sensortype=2

# Display feature (bit0-ColorPrefer bit1-EyeCare bit2-AD bit3-CE bit4-CABC bit5-SRGB)
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sys.display.support=63

# DRM
PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true

# Fingerprint
PRODUCT_PROPERTY_OVERRIDES += \
    persist.qfp=false \
    ro.hardware.fingerprint=fpc \
    sys.fpc.tu.disabled=0

# FRP
PRODUCT_PROPERTY_OVERRIDES += \
    ro.frp.pst=/dev/block/persistent

# Graphics
PRODUCT_PROPERTY_OVERRIDES += \
    debug.egl.hw=1 \
    debug.gralloc.enable_fb_ubwc=1 \
    debug.sf.hw=1 \
    dev.pm.dyn_samplingrate=1 \
    persist.demo.hdmirotationlock=false \
    persist.hwc.enable_vds=1 \
    persist.debug.wfd.enable=1 \
    persist.sys.wfd.virtual=0 \
    ro.opengles.version=196610 \
    ro.sf.lcd_density=640 \
    sdm.debug.disable_rotator_split=1 \
    sdm.perf_hint_window=50

# GPS
PRODUCT_PROPERTY_OVERRIDES += \
    persist.gps.qc_nlp_in_use=1 \
    persist.loc.nlp_name=com.qualcomm.location \
    ro.gps.agps_provider=1

# Media
PRODUCT_PROPERTY_OVERRIDES += \
    media.aac_51_output_enabled=true \
    mm.enable.qcom_parser=3314291 \
    persist.mm.enable.prefetch=true \
    mm.enable.smoothstreaming=true

# NFC
PRODUCT_PROPERTY_OVERRIDES += \
    ro.nfc.port=I2C \
    persist.nfc.smartcard.config=SIM1,SIM2,eSE1

# Perf
PRODUCT_PROPERTY_OVERRIDES += \
    ro.am.reschedule_service=true \
    ro.min_freq_0=307200 \
    ro.min_freq_4=307200 \
    ro.sys.fw.bg_apps_limit=60 \
    ro.vendor.extension_library=libqti-perfd-client.so

# Qualcomm
PRODUCT_PROPERTY_OVERRIDES += \
    com.qc.hardware=true \
    ro.qc.sdk.sensors.gestures=true

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
    DEVICE_PROVISIONED=1 \
    rild.libpath=/system/lib64/libsec-ril.so \
    ril.subscription.types=NV,RUIM \
    ro.telephony.default_network=9,1 \
    ro.telephony.default_cdma_sub=0 \
    ro.telephony.call_ring.multiple=false \
    ro.telephony.ril_class=S7edgeRIL \
    persist.data.qmi.adb_logmask=0 \
    persist.dbg.volte_avail_ovr=1 \
    persist.dbg.vt_avail_ovr=1 \
    persist.net.doxlat=true \
    persist.radio.apm_sim_not_pwdn=1 \
    persist.radio.force_on_dc=true \
    persist.radio.rat_on=combine \
    persist.radio.multisim.config=dsds \
    persist.radio.custom_ecc=1 \
    persist.radio.sib16_support=0 \
    persist.radio.NO_STAPA=1 \
    persist.radio.tdscdma_present=1 \
    persist.radio.VT_HYBRID_ENABLE=1

# RmNet Data
PRODUCT_PROPERTY_OVERRIDES += \
    persist.rmnet.data.enable=true \
    persist.data.wda.enable=true \
    persist.data.df.dl_mode=5 \
    persist.data.df.ul_mode=5 \
    persist.data.df.agg.dl_pkt=10 \
    persist.data.df.agg.dl_size=4096 \
    persist.data.df.mux_count=8 \
    persist.data.df.iwlan_mux=9 \
    persist.data.df.dev_name=rmnet_usb0

# Storage
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sys.sdcardfs=true \

# TimeService
PRODUCT_PROPERTY_OVERRIDES += \
    persist.timed.enable=true

# USB
PRODUCT_PROPERTY_OVERRIDES += \
    sys.usb.controller=15400000.dwc3

# Default USB mode
    persist.service.adb.enable=1 \                                                  
    persist.service.debuggable=1 \
    persist.sys.usb.config=adb
# Wifi
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0

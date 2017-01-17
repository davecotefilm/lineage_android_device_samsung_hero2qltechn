#
# Copyright 2017 The LineageOS Project
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

# This contains the module build definitions for the hardware-specific
# components for this device.
#
# As much as possible, those components should be built unconditionally,
# with device-specific names to avoid collisions, to avoid device-specific
# bitrot and build breakages. Building a component unconditionally does
# *not* include it on all devices, so it is safe even with hardware-specific
# components.

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),hero2qltechn)

include $(call all-makefiles-under,$(LOCAL_PATH))

include $(CLEAR_VARS)

#ADSP
ADSP_IMAGES := \
    adsp.b00 adsp.b01 adsp.b02 adsp.b03 adsp.b04 adsp.b05 adsp.b06 adsp.b07 \
    adsp.b08 adsp.b09 adsp.mdt

ADSP_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR)/firmware-modem/,$(notdir $(ADSP_IMAGES)))
$(ADSP_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "ADSP firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware-modem/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(ADSP_SYMLINKS)

#Cmnlib
CMN_IMAGES := \
    cmnlib.b00 cmnlib.b01 cmnlib.b02 cmnlib.b03 cmnlib.b04 cmnlib.b05 cmnlib.mdt

CMN_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR)/firmware/,$(notdir $(CMN_IMAGES)))
$(CMN_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "CMN firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(CMN_SYMLINKS)

#Cmnlib64
CMN64_IMAGES := \
    cmnlib64.b00 cmnlib64.b01 cmnlib64.b02 cmnlib64.b03 cmnlib64.b04 cmnlib64.b05 cmnlib.mdt

CMN64_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR)/firmware/,$(notdir $(CMN64_IMAGES)))
$(CMN64_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "CMN64 firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(CMN64_SYMLINKS)

#CPPF
CPPF_IMAGES := \
    cppf.b00 cppf.b01 cppf.b02 cppf.b03 cppf.b04 cppf.b05 cppf.b06 cppf.mdt

CPPF_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR)/firmware/,$(notdir $(CPPF_IMAGES)))
$(CPPF_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "CPPF firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(CPPF_SYMLINKS)

#Dm-Verity
DMV_IMAGES := \
    dmverity.b00 dmverity.b01 dmverity.b02 dmverity.b03 dmverity.b04 dmverity.b05 dmverity.b06 dmverity.mdt

DMV_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR)/firmware/,$(notdir $(DMV_IMAGES)))
$(DMV_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "DMV firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(DMV_SYMLINKS)

#Fingerprint
FPR_IMAGES := \
    fingerpr.b00 fingerpr.b01 fingerpr.b02 fingerpr.b03 fingerpr.b04 fingerpr.b05 fingerpr.b06 fingerpr.mdt

FPR_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR)/firmware/,$(notdir $(FPR_IMAGES)))
$(FPR_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "FPR firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(FPR_SYMLINKS)

#ISDB
ISDB_IMAGES := \
    isdbtmm.b00 isdbtmm.b01 isdbtmm.b02 isdbtmm.b03 isdbtmm.b04 isdbtmm.b05 isdbtmm.b06 isdbtmm.mdt

ISDB_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR)/firmware/,$(notdir $(ISDB_IMAGES)))
$(ISDB_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "ISDB firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(ISDB_SYMLINKS)

#MBA
MBA_IMAGES := \
    mba.mbn

MBA_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR)/firmware-modem/,$(notdir $(MBA_IMAGES)))
$(MBA_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "MBA firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware-modem/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(MBA_SYMLINKS)

#Modem
MODEM_IMAGES := \
    modem.b00 modem.b01 modem.b02 modem.b03 modem.b04 modem.b05 \
    modem.b06 modem.b07 modem.b08 modem.b09 modem.b10 modem.b11 \
    modem.b12 modem.b13 modem.b15 modem.b16 modem.b17 modem.b18 \
    modem.b19 modem.b20 modem.mdt

MODEM_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR)/firmware-modem/,$(notdir $(MODEM_IMAGES)))
$(MODEM_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Modem firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware-modem/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(MODEM_SYMLINKS)

#Prov
PROV_IMAGES := \
    prov.b00 prov.b01 prov.b02 prov.b03 prov.b04 prov.b05 prov.b06 prov.mdt

PROV_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR)/firmware/,$(notdir $(PROV_IMAGES)))
$(PROV_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Prov firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(PROV_SYMLINKS)

#QCA6174_FW_3_0
BDWLAN_IMAGES := \
    bdwlan30.bin

BDWLAN_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR)/firmware/,$(notdir $(BDWLAN_IMAGES)))
$(BDWLAN_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "BDWLAN firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(BDWLAN_SYMLINKS)

#SEM
SEM_IMAGES := \
    sem.b00 sem.b01 sem.b02 sem.b03 sem.b04 sem.b05 sem.b06 sem.mdt

SEM_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR)/firmware/,$(notdir $(SEM_IMAGES)))
$(SEM_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "SEM firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(SEM_SYMLINKS)

#Skeymast
SKEYMAST_IMAGES := \
    skeymast.b00 skeymast.b01 skeymast.b02 skeymast.b03 skeymast.b04 skeymast.b05 skeymast.b06 skeymast.mdt

SKM_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR)/firmware/,$(notdir $(SKEYMAST_IMAGES)))
$(SKEYMAST_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "SKEYMAST firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(SKEYMAST_SYMLINKS)

#SKM
SKM_IMAGES := \
    skm.b00 skm.b01 skm.b02 skm.b03 skm.b04 skm.b05 skm.b06 skm.mdt

SKM_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR)/firmware/,$(notdir $(SKM_IMAGES)))
$(SKM_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "SKM firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(SKM_SYMLINKS)

#SKMM
SKMMTA_IMAGES := \
    skmm_ta.b00 skmm_ta.b01 skmm_ta.b02 skmm_ta.b03 skmm_ta.b04 skmm_ta.b05 skmm_ta.b06 skmm_ta.mdt

SKMMTA_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR)/firmware/,$(notdir $(SKMMTA_IMAGES)))
$(SKMMTA_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "SKMMTA firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(SKMMTA_SYMLINKS)

#SLPI
SLPI_IMAGES := \
    slpi.b00 slpi.b01 slpi.b02 slpi.b03 slpi.b04 slpi.b05 slpi.b06 \
    slpi.b07 slpi.b08 slpi.b09 slpi.b10 slpi.b11 slpi.b12 slpi.b13 \
    slpi.b14 slpi.b15 slpi.mdt

SLPI_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR)/firmware/,$(notdir $(SLPI_IMAGES)))
$(SLPI_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "SLPI firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(SLPI_SYMLINKS)

#Softsim
SOFTSIM_IMAGES := \
    softsim.b00 softsim.b01 softsim.b02 softsim.b03 softsim.b04 \
    softsim.b05 softsim.b06 softsim.mdt

SOFTSIM_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR)/firmware/,$(notdir $(SOFTSIM_IMAGES)))
$(SOFTSIM_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "SOFTSIM firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(SOFTSIM_SYMLINKS)

#SMPLAP32
SMPLAP32_IMAGES := \
    smplap32.b00 smplap32.b01 smplap32.b02 smplap32.b03 smplap32.b04 smplap32.b05 \
    smplap32.b06 smplap32.mdt

SPLAP32_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR)/firmware/,$(notdir $(SMPLAP32_IMAGES)))
$(SMPLAP32_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "SMPLAP32 firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(SMPLAP32_SYMLINKS)

#SMPLAP64
SMPLAP64_IMAGES := \
    smplap64.b00 smplap64.b01 smplap64.b02 smplap64.b03 smplap64.b04 smplap64.b05 \
    smplap64.b06 smplap64.mdt

SMPLAP64_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR)/firmware/,$(notdir $(SMPLAP64_IMAGES)))
$(SMPLAP64_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "SMPLAP64 firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(SMPLAP64_SYMLINKS)

#SSHDcap
SSHDCPAP_IMAGES := \
    sshdcpap.b00 sshdcpap.b01 sshdcpap.b02 sshdcpap.b03 sshdcpap.b04 sshdcpap.b05 sshdcpap.b06 sshdcpap.mdt

SSHDCPAP_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR)/firmware/,$(notdir $(SSHDCPAP_IMAGES)))
$(SSHDCPAP_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "SSHDCPAP firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(SSHDCPAP_SYMLINKS)

#Tasha Codec
CPE_IMAGES := \
    cpe_9335.b08 cpe_9335.b09 cpe_9335.b11 cpe_9335.b14 cpe_9335.b16 cpe_9335.b18 cpe_9335.b19 \
    cpe_9335.b20 cpe_9335.b22 cpe_9335.b24 cpe_9335.b26 cpe_9335.b28 cpe_9335.b29 cpe_9335.mdt

CPE_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR)/firmware/,$(notdir $(CPE_IMAGES)))
$(CPE_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "CPE firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(CPE_SYMLINKS)

#TBASE
TBASE_IMAGES := \
    tbase.b00 tbase.b01 tbase.b02 tbase.b03 tbase.b04 tbase.b05 tbase.b06 tbase.mdt

TBASE_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR)/firmware/,$(notdir $(TBASE_IMAGES)))
$(TBASE_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "TBASE firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(TBASE_SYMLINKS)

#TIMA
TIMA_IMAGES := \
    tima_atn.b00 tima_atn.b01 tima_atn.b02 tima_atn.b03 tima_atn.b04 tima_atn.b05 tima_atn.b06 tima_atn.mdt \
    tima_key.b00 tima_key.b01 tima_key.b02 tima_key.b03 tima_key.b04 tima_key.b05 tima_key.b06 tima_key.mdt \
    tima_lkm.b00 tima_lkm.b01 tima_lkm.b02 tima_lkm.b03 tima_lkm.b04 tima_lkm.b05 tima_lkm.b06 tima_lkm.mdt \
    tima_pkm.b00 tima_pkm.b01 tima_pkm.b02 tima_pkm.b03 tima_pkm.b04 tima_pkm.b05 tima_pkm.b06 tima_pkm.mdt

TIMA_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR)/firmware/,$(notdir $(TIMA_IMAGES)))
$(TIMA_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Tima firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(TIMA_SYMLINKS)

#TZ
TZ_IMAGES := \
    tz_ccm.b00 tz_ccm.b01 tz_ccm.b02 tz_ccm.b03 tz_ccm.b04 tz_ccm.b05 tz_ccm.b06 tz_ccm.mdt \
    tz_iccc.b00 tz_iccc.b01 tz_iccc.b02 tz_iccc.b03 tz_iccc.b04 tz_iccc.b05 tz_iccc.b06 tz_iccc.mdt \
    tz_otp.b00 tz_otp.b01 tz_otp.b02 tz_otp.b03 tz_otp.b04 tz_otp.b05 tz_otp.b06 tz_otp.mdt

TZ_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR)/firmware/,$(notdir $(TZ_IMAGES)))
$(TZ_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "TZ firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(TZ_SYMLINKS)

#UTF30
UTF30_IMAGES := \
    utf30.bin

UTF30_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR)/firmware/,$(notdir $(UTF30_IMAGES)))
$(UTF30_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "UTF30 firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(UTF30_SYMLINKS)

#VENUS
VENUS_IMAGES := \
    venus.b00 venus.b01 venus.b02 venus.b03 venus.b04 venus.mdt

VENUS_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR)/firmware/,$(notdir $(VENUS_IMAGES)))
$(VENUS_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "VENUS firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(VENUS_SYMLINKS)

#Widevine
WIDEVINE_IMAGES := \
    windevine.b00 windevine.b01 windevine.b02 windevine.b03 windevine.b04 \
    windevine.b05 windevine.b06 windevine.mdt

WIDEVINE_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR)/firmware/,$(notdir $(WIDEVINE_IMAGES)))
$(WIDEVINE_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "WIDEVINE firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(WIDEVINE_SYMLINKS)

#Wilocity Wifi
WIL6210_IMAGES := \
    wil6210.brd wil6210.fw

WIL6210_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR)/firmware/,$(notdir $(WIL6210_IMAGES)))
$(WIL6210_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "WIL6210 firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(WIL6210_SYMLINKS)

.PHONY: RFS_LINK_PROCESSING
RFS_LINK_PROCESSING: $(LOCAL_INSTALLED_MODULE)
	mkdir -p $(TARGET_OUT)/rfs/apq/gnss/readonly
	mkdir -p $(TARGET_OUT)/rfs/msm/adsp/readonly
	mkdir -p $(TARGET_OUT)/rfs/msm/mpss/readonly
	mkdir -p $(TARGET_OUT)/rfs/mdm/adsp/readonly
	mkdir -p $(TARGET_OUT)/rfs/mdm/mpss/readonly
	mkdir -p $(TARGET_OUT)/rfs/mdm/sparrow/readonly
	ln -sf /persist/hlos_rfs/shared $(TARGET_OUT)/rfs/apq/gnss/hlos
	ln -sf /data/tombstones/modem $(TARGET_OUT)/rfs/apq/gnss/ramdumps
	ln -sf /firmware $(TARGET_OUT)/rfs/apq/gnss/readonly/firmware
	ln -sf /persist/rfs/apq/gnss $(TARGET_OUT)/rfs/apq/gnss/readwrite
	ln -sf /persist/rfs/shared $(TARGET_OUT)/rfs/apq/gnss/shared
	ln -sf /persist/hlos_rfs/shared $(TARGET_OUT)/rfs/mdm/adsp/hlos
	ln -sf /data/tombstones/lpass $(TARGET_OUT)/rfs/mdm/adsp/ramdumps
	ln -sf /firmware $(TARGET_OUT)/rfs/mdm/adsp/readonly/firmware
	ln -sf /persist/rfs/mdm/adsp $(TARGET_OUT)/rfs/mdm/adsp/readwrite
	ln -sf /persist/rfs/shared $(TARGET_OUT)/rfs/mdm/adsp/shared
	ln -sf /persist/hlos_rfs/shared $(TARGET_OUT)/rfs/mdm/mpss/hlos
	ln -sf /data/tombstones/modem $(TARGET_OUT)/rfs/mdm/mpss/ramdumps
	ln -sf /firmware $(TARGET_OUT)/rfs/mdm/mpss/readonly/firmware
	ln -sf /persist/rfs/mdm/mpss $(TARGET_OUT)/rfs/mdm/mpss/readwrite
	ln -sf /persist/rfs/shared $(TARGET_OUT)/rfs/mdm/mpss/shared
	ln -sf /persist/hlos_rfs/shared $(TARGET_OUT)/rfs/mdm/sparrow/hlos
	ln -sf /data/tombstones/sparrow $(TARGET_OUT)/rfs/mdm/sparrow/ramdumps
	ln -sf /firmware $(TARGET_OUT)/rfs/mdm/sparrow/readonly/firmware
	ln -sf /persist/rfs/mdm/sparrow $(TARGET_OUT)/rfs/mdm/sparrow/readwrite
	ln -sf /persist/rfs/shared $(TARGET_OUT)/rfs/mdm/sparrow/shared
	ln -sf /persist/hlos_rfs/shared $(TARGET_OUT)/rfs/msm/adsp/hlos
	ln -sf /data/tombstones/lpass $(TARGET_OUT)/rfs/msm/adsp/ramdumps
	ln -sf /firmware $(TARGET_OUT)/rfs/msm/adsp/readonly/firmware
	ln -sf /persist/rfs/msm/adsp $(TARGET_OUT)/rfs/msm/adsp/readwrite
	ln -sf /persist/rfs/shared $(TARGET_OUT)/rfs/msm/adsp/shared
	ln -sf /persist/hlos_rfs/shared $(TARGET_OUT)/rfs/msm/mpss/hlos
	ln -sf /data/tombstones/modem $(TARGET_OUT)/rfs/msm/mpss/ramdumps
	ln -sf /firmware $(TARGET_OUT)/rfs/msm/mpss/readonly/firmware
	ln -sf /firmware/wsd $(TARGET_OUT)/rfs/msm/mpss/readonly/wsd
	ln -sf /persist/rfs/msm/mpss $(TARGET_OUT)/rfs/msm/mpss/readwrite
	ln -sf /persist/rfs/shared $(TARGET_OUT)/rfs/msm/mpss/shared

ALL_DEFAULT_INSTALLED_MODULES += RFS_LINK_PROCESSING

endif

#
# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

ifneq ($(filter montana,$(TARGET_DEVICE)),)

LOCAL_PATH := $(call my-dir)

FIRMWARE_ADSP_IMAGES += \
    adsp.b14

FIRMWARE_CMNLIB_IMAGES := \
    cmnlib.b00 cmnlib.b01 cmnlib.b02 cmnlib.b03 cmnlib.b04 cmnlib.b05 cmnlib.mdt

FIRMWARE_CMNLIB_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(FIRMWARE_CMNLIB_IMAGES)))
$(FIRMWARE_CMNLIB_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Cmnlib Firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(FIRMWARE_CMNLIB_SYMLINKS)

FIRMWARE_CMNLIB64_IMAGES := \
    cmnlib64.b00 cmnlib64.b01 cmnlib64.b02 cmnlib64.b03 cmnlib64.b04 cmnlib64.b05 cmnlib64.mdt

FIRMWARE_CMNLIB64_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(FIRMWARE_CMNLIB64_IMAGES)))
$(FIRMWARE_CMNLIB64_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Cmnlib64 Firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(FIRMWARE_CMNLIB64_SYMLINKS)

FIRMWARE_CPE_IMAGES := \
    cpe_9335.b08 cpe_9335.b09 cpe_9335.b11 cpe_9335.b14 cpe_9335.b16 cpe_9335.b18 cpe_9335.b19 \
    cpe_9335.b20 cpe_9335.b22 cpe_9335.b24 cpe_9335.b26 cpe_9335.b28 cpe_9335.b29 cpe_9335.mdt

FIRMWARE_CPE_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(FIRMWARE_CPE_IMAGES)))
$(FIRMWARE_CPE_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "CPE Firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(FIRMWARE_CPE_SYMLINKS)

FIRMWARE_DHSECAPP_IMAGES := \
    dhsecapp.b00 dhsecapp.b01 dhsecapp.b02 dhsecapp.b03 dhsecapp.b04 dhsecapp.b05 dhsecapp.b06 dhsecapp.mdt

FIRMWARE_DHSECAPP_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(FIRMWARE_DHSECAPP_IMAGES)))
$(FIRMWARE_DHSECAPP_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "DHSECAPP Firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(FIRMWARE_DHSECAPP_SYMLINKS)

GPTEST_IMAGES := \
    gptest.b00 gptest.b01 gptest.b02 gptest.b03 gptest.b04 gptest.b05 gptest.b06 gptest.mdt

GPTEST_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(GPTEST_IMAGES)))
$(GPTEST_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "GPTEST firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(GPTEST_SYMLINKS)

ISDB_IMAGES := \
    isdbtmm.b00 isdbtmm.b01 isdbtmm.b02 isdbtmm.b03 isdbtmm.b04 isdbtmm.b05 \
    isdbtmm.b06 isdbtmm.mdt

ISDB_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(ISDB_IMAGES)))
$(ISDB_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "ISDB firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(ISDB_SYMLINKS)

MBA_IMAGES := mba.mbn

MBA_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(MBA_IMAGES)))
$(MBA_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "MBA firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(MBA_SYMLINKS)

MDTP_IMAGES := \
    mdtp.b00 mdtp.b01 mdtp.b02 mdtp.b03 mdtp.b04 mdtp.b05 mdtp.b06 mdtp.mdt

MDTP_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(MDTP_IMAGES)))
$(MDTP_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "MDTP firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(MDTP_SYMLINKS)

FIRMWARE_MODEM_IMAGES += \
    modem.b21 modem.b22 modem.b23 modem.b24 modem.mdt

QMPSECAP_IMAGES := \
    qmpsecap.b00 qmpsecap.b01 qmpsecap.b02 qmpsecap.b03 qmpsecap.b04 qmpsecap.b05 qmpsecap.b06 qmpsecap.mdt

QMPSECAP_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(QMPSECAP_IMAGES)))
$(QMPSECAP_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "QMPSECAP firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(QMPSECAP_SYMLINKS)

SECUREMM_IMAGES := \
    securemm.b00 securemm.b01 securemm.b02 securemm.b03 securemm.b04 securemm.b05 securemm.b06 securemm.mdt

SECUREMM_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(SECUREMM_IMAGES)))
$(SECUREMM_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "SECUREMM firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(SECUREMM_SYMLINKS)

SAMPLE_IMAGES := \
    smplap32.b00 smplap32.b01 smplap32.b02 smplap32.b03 smplap32.b04 smplap32.b05 smplap32.b06 \
    smplap32.mdt smplap64.b00 smplap64.b01 smplap64.b02 smplap64.b03 smplap64.b04 smplap64.b05 \
    smplap64.b06 smplap64.mdt

SAMPLE_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(SAMPLE_IMAGES)))
$(SAMPLE_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "SAMPLE firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(SAMPLE_SYMLINKS)

VENUS_IMAGES := \
    venus.b00 venus.b01 venus.b02 venus.b03 venus.b04 venus.mdt

VENUS_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(VENUS_IMAGES)))
$(VENUS_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Venus firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware/image/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(VENUS_SYMLINKS)

include device/motorola/montana/tftp.mk
include device/motorola/montana/expat.mk

include $(call all-makefiles-under,$(LOCAL_PATH))

endif

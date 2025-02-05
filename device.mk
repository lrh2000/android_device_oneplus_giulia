#
# Copyright 2014 The Android Open-Source Project
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

# API
PRODUCT_SHIPPING_API_LEVEL := 34
PRODUCT_EXTRA_VNDK_VERSIONS += 34

# Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true
PRODUCT_BUILD_SUPER_PARTITION := false

# Overlay
PRODUCT_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Soong
PRODUCT_SOONG_NAMESPACES += \
	$(LOCAL_PATH) \
	hardware/oplus

# Recovery
PRODUCT_PACKAGES += \
	init.recovery.qcom.rc
PRODUCT_PACKAGES += \
	fastbootd \
	android.hardware.boot-service.default_recovery

# Telephony
PRODUCT_PACKAGES += \
	qti-telephony-hidl-wrapper \
	qti_telephony_hidl_wrapper.xml
PRODUCT_PACKAGES += \
	privapp-permissions-telephony.xml

# IMS
PRODUCT_PACKAGES += \
	qti-telephony-utils \
	qti_telephony_utils.xml \
	ims-ext-common \
	ims_ext_common.xml
PRODUCT_PACKAGES += \
	privapp-permissions-ims.xml
$(call inherit-product, hardware/oplus/oplus-fwk/oplus-fwk.mk)

# Virtual A/B
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

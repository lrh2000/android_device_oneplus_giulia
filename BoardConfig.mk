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

LOCAL_PATH := device/oneplus/giulia
IMAGE_PATH := vendor/oneplus/giulia-images

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv9-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := kryo300

# Boot
BOARD_BOOTIMAGE_PARTITION_SIZE := 201326592
BOARD_INIT_BOOT_IMAGE_PARTITION_SIZE := 8388608
BOARD_DTBOIMG_PARTITION_SIZE := 25165824
TARGET_PREBUILT_KERNEL := $(IMAGE_PATH)/kernel
BOARD_PREBUILT_DTBOIMAGE := $(IMAGE_PATH)/dtbo.img
BOARD_BOOT_HEADER_VERSION := 4
BOARD_MKBOOTIMG_ARGS := --header_version $(BOARD_BOOT_HEADER_VERSION)
BOARD_MKBOOTIMG_INIT_ARGS := --header_version $(BOARD_BOOT_HEADER_VERSION)

# Recovery
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 104857600
BOARD_EXCLUDE_KERNEL_FROM_RECOVERY_IMAGE := true
BOARD_RAMDISK_USE_LZ4 := true
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery/fstab.qcom
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888
TARGET_USERIMAGES_USE_F2SF := true

# Vendor
TARGET_COPY_OUT_VENDOR := vendor
TARGET_COPY_OUT_VENDOR_DLKM := vendor_dlkm
TARGET_COPY_OUT_ODM := odm
TARGET_COPY_OUT_SYSTEM_DLKM := system_dlkm
BOARD_PREBUILT_VENDORIMAGE := $(IMAGE_PATH)/vendor.img
BOARD_PREBUILT_VENDOR_BOOTIMAGE := $(IMAGE_PATH)/vendor_boot.img
BOARD_PREBUILT_VENDOR_DLKMIMAGE := $(IMAGE_PATH)/vendor_dlkm.img
BOARD_PREBUILT_ODMIMAGE := $(IMAGE_PATH)/odm.img
BOARD_PREBUILT_SYSTEM_DLKMIMAGE := $(IMAGE_PATH)/system_dlkm.img

# Partitions
TARGET_COPY_OUT_SYSTEM_EXT := system_ext
TARGET_COPY_OUT_PRODUCT := product
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := erofs
BOARD_SYSTEM_EXTIMAGE_FILE_SYSTEM_TYPE := erofs
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := erofs
BOARD_SUPER_PARTITION_SIZE := 14578294784
BOARD_SUPER_PARTITION_GROUPS := qti_dynamic_partitions
BOARD_QTI_DYNAMIC_PARTITIONS_SIZE := 14574100480
BOARD_QTI_DYNAMIC_PARTITIONS_PARTITION_LIST := \
	system system_ext system_dlkm product vendor vendor_dlkm odm
BOARD_USES_METADATA_PARTITION := true

# AVB
BOARD_AVB_ENABLE := true
BOARD_AVB_VBMETA_SYSTEM := product system system_ext
BOARD_AVB_VBMETA_SYSTEM_KEY_PATH := external/avb/test/data/testkey_rsa2048.pem
BOARD_AVB_VBMETA_SYSTEM_ALGORITHM := SHA256_RSA2048
BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)
BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX_LOCATION := 1
BOARD_AVB_VBMETA_VENDOR := vendor
BOARD_AVB_VBMETA_VENDOR_KEY_PATH := external/avb/test/data/testkey_rsa2048.pem
BOARD_AVB_VBMETA_VENDOR_ALGORITHM := SHA256_RSA2048
BOARD_AVB_VBMETA_VENDOR_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)
BOARD_AVB_VBMETA_VENDOR_ROLLBACK_INDEX_LOCATION := 2

# A/B
AB_OTA_PARTITIONS += \
	boot \
	dtbo \
	init_boot \
	odm \
	product \
	recovery \
	system \
	system_dlkm \
	system_ext \
	vbmeta \
	vbmeta_system \
	vbmeta_vendor \
	vendor \
	vendor_boot \
	vendor_dlkm

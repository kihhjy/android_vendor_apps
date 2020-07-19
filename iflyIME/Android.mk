# Copyright (C) 2018 The LineageOS Project
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

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := iflyIME

LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := $(LOCAL_MODULE).apk

LOCAL_PREBUILT_JNI_LIBS:= \
@lib/arm64/libBugly.so \
@lib/arm64/libcom_iflytek_inputmethod_mmp.so \
@lib/arm64/libcom_iflytek_inputmethod_ocr.so \
@lib/arm64/libcom_iflytek_inputmethod_setting.so \
@lib/arm64/libcom_iflytek_inputmethod_thirdbkservices.so \
@lib/arm64/libcom_iflytek_inputmethod_translate.so \
@lib/arm64/libdexopt.so \
@lib/arm64/libhangul.so \
@lib/arm64/libiflytek-opus.so \
@lib/arm64/liblwl.so \
@lib/arm64/libMetaVAD-v1.so \
@lib/arm64/libmsc-v9.so \
@lib/arm64/libsmartaiwrite-jni-v31.so \
@lib/arm64/libspeex_fyj2.so \
@lib/arm64/libvadLib-v5.so \
@lib/arm64/libwnndict.so \
@lib/arm64/libWnnJpnDic.so

LOCAL_CERTIFICATE := PRESIGNED

#LOCAL_PRIVILEGED_MODULE := true

LOCAL_MODULE_CLASS := APPS

LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)

LOCAL_DEX_PREOPT := true

LOCAL_OVERRIDES_PACKAGES := inputmethod

include $(BUILD_PREBUILT)

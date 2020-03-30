# Copyright (C) 2009 The Android Open Source Project
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
#
#
LOCAL_PATH := $(call my-dir)

TARGET_ARCH_ABI := arm64-v8a

include $(CLEAR_VARS)


# include $(CLEAR_VARS)

# LOCAL_MODULE    := cryptopp
# LOCAL_SRC_FILES := cryptopp/cryptopp.cpp cryptopp/hex.cpp cryptopp/sha.cpp
# LOCAL_CPPFLAGS  := -std=c++2a -frtti -fexceptions

# include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := hook

#include $(CLEAR_VARS)
#LOCAL_MODULE := testil2cpp
#LOCAL_SRC_FILES := libil2cpp.so
#LOCAL_EXPORT_C_INCLUDES := ../beatsaber-hook/shared/libil2cpp
#include $(PREBUILT_SHARED_LIBRARY)

#LOCAL_SRC_FILES := $(LOCAL_PATH)/../obj/local/armeabi-v7a/libhook.a
#LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/../include

include $(CLEAR_VARS)

rwildcard=$(wildcard $1$2) $(foreach d,$(wildcard $1*),$(call rwildcard,$d/,$2))

LOCAL_LDLIBS    := -llog
LOCAL_CFLAGS    := -D"MOD_ID=\"BurnMarksMod\"" -D"VERSION=\"1.0.0\"" -I"C:\Program Files\Unity\Editor\Data\il2cpp\libil2cpp"
LOCAL_MODULE    := BurnMarksMod
LOCAL_CPPFLAGS  := -std=c++2a -fno-rtti -Os

LOCAL_C_INCLUDES := beatsaber-hook/shared/
LOCAL_SRC_FILES  += $(call rwildcard,../beatsaber-hook/shared/,*.cpp) $(call rwildcard,../beatsaber-hook/shared/,*.c) main.cpp 



# LOCAL_STATIC_LIBRARIES += cryptopp

include $(BUILD_SHARED_LIBRARY)
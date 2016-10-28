#
# Copyright (C) 2011 The Android Open Source Project
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

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := ion-gson
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MAVEN_REPO := https://repo1.maven.org/maven2
LOCAL_MAVEN_GROUP := com.google.code.gson
LOCAL_MAVEN_ARTIFACT := gson
LOCAL_MAVEN_PACKAGING := jar
LOCAL_MAVEN_VERSION := 2.7
LOCAL_UNINSTALLABLE_MODULE := true
include $(BUILD_MAVEN_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := ion-androidasync
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MAVEN_REPO := https://repo1.maven.org/maven2
LOCAL_MAVEN_GROUP := com.koushikdutta.async
LOCAL_MAVEN_ARTIFACT := androidasync
LOCAL_MAVEN_PACKAGING := aar
LOCAL_MAVEN_VERSION := 2.1.9
LOCAL_UNINSTALLABLE_MODULE := true
include $(BUILD_MAVEN_PREBUILT)

include $(CLEAR_VARS)
LOCAL_STATIC_JAVA_AAR_LIBRARIES := \
    ion-androidasync

LOCAL_STATIC_JAVA_LIBRARIES := \
    android-support-v4 \
    ion-gson

LOCAL_MODULE := ion
LOCAL_SDK_VERSION := 23
LOCAL_SRC_FILES := $(call all-java-files-under, src)

include $(BUILD_STATIC_JAVA_LIBRARY)

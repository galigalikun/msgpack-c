LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE     := msgpack_static
LOCAL_MODULE_FILENAME := libmsgpack

LOCAL_C_INCLUDES := $(LOCAL_PATH)/src
LOCAL_C_INCLUDES += $(LOCAL_PATH)/include
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/src
LOCAL_EXPORT_C_INCLUDES += $(LOCAL_PATH)/include
LOCAL_CPPFLAGS   += -fexceptions
LOCAL_SRC_FILES  := \
	src/objectc.c \
	src/unpack.c \
	src/version.c \
	src/vrefbuffer.c \
	src/zone.c 

include $(BUILD_STATIC_LIBRARY)
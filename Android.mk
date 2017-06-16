LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := libjson

LOCAL_SRC_FILES := \
    arraylist.c \
    debug.c \
    json_c_version.c \
    json_object.c \
    json_object_iterator.c \
    json_tokener.c \
    json_util.c \
    libjson.c \
    linkhash.c \
    printbuf.c \
    random_seed.c

LOCAL_SHARED_LIBRARIES := libcutils libutils
LOCAL_MODULE_TAG := optional

LOCAL_COPY_HEADERS_TO := libjson/inc
LOCAL_COPY_HEADERS := \
    arraylist.h \
    debug.h \
    json.h \
    json_c_version.h \
    json_config.h \
    json_inttypes.h \
    json_object.h \
    json_object_iterator.h \
    json_pointer.h \
    json_tokener.h \
    json_util.h \
    linkhash.h \

include $(BUILD_SHARED_LIBRARY)

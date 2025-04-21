LOCAL_PATH := $(LOCAL_PATH)
FILE_PREFIX_MAP := $(FILE_PREFIX_MAP)

APP_ABI := armeabi-v7a arm64-v8a x86 x86_64
APP_PLATFORM := android-26
APP_CFLAGS := -Wall -Oz -fomit-frame-pointer -flto -ffile-prefix-map=$LOCAL_PATH=$FILE_PREFIX_MAP
APP_LDFLAGS := -flto -Wl,--gc-sections -Wl,--build-id=none -Wl,--hash-style=both

ifeq ($(OS),Windows_NT)
APP_SHORT_COMMANDS := true
endif

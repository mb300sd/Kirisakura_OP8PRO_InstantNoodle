#!/bin/bash

mkdir -p out
export ARCH=arm64
export SUBARCH=arm64
export CLANG_PATH=~/oneplus_kernel/toolchain/clang11/bin
export CLANG_BIN_PATH=~/oneplus_kernel/toolchain/clang11/bin
export PATH=${CLANG_PATH}:${PATH}
export DTC_EXT=~/oneplus_kernel/toolchain/dtc/dtc
export CLANG_TRIPLE=aarch64-linux-gnu-
export CROSS_COMPILE=~/oneplus_kernel/toolchain/gcc/bin/aarch64-linux-android-

export CLANG_AR=$CLANG_BIN_PATH/llvm-ar
export CLANG_CC=$CLANG_BIN_PATH/clang
export CLANG_LD=$CLANG_BIN_PATH/ld.lld
export CLANG_LDLTO=$CLANG_BIN_PATH/ld.lld
export CLANG_NM=$CLANG_BIN_PATH/llvm-nm

make CC=$CLANG_CC LD=$CLANG_LD LDLTO=$CLANG_LD AR=$CLANG_AR NM=$CLANG_NM OBJCOPY=llvm-objcopy OBJDUMP=llvm-objdump STRIP=llvm-strip O=out menuconfig

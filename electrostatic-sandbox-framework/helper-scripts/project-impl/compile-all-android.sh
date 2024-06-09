#!/bin/bash
source "./helper-scripts/project-impl/variables.sh"

./helper-scripts/project-impl/compile-electrostatic.sh \
        "${CLANG_BIN}" "${CLANGPP_BIN}" \
        "${ARM_64}" "${NDK_TOOLCHAIN_INCLUDES}" "android" "${ARM_64}"

./helper-scripts/project-impl/compile-electrostatic.sh \
        "${CLANG_BIN}" "${CLANGPP_BIN}" \
        "${ARM_32}" "${NDK_TOOLCHAIN_INCLUDES}" "android" "${ARM_32}"

./helper-scripts/project-impl/compile-electrostatic.sh \
        "${CLANG_BIN}" "${CLANGPP_BIN}" \
        "${ANDROID_x86}" "${NDK_TOOLCHAIN_INCLUDES}" "android" "${ANDROID_x86}"

./helper-scripts/project-impl/compile-electrostatic.sh \
        "${CLANG_BIN}" "${CLANGPP_BIN}" \
        "${ANDROID_x86_64}" "${NDK_TOOLCHAIN_INCLUDES}" "android" "${ANDROID_x86_64}"
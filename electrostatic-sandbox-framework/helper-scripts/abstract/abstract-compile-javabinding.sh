#!/bin/bash

function compile() {
    local GCC_BIN=${1}
    local GPP_BIN=${2}
    local INPUT_COMPILER_OPTIONS=${3}
    local TARGET=${4}
    local TOOLCHAIN_INCLUDES=${5}
    local JAVA_HOME=${6}
    local ELECTROSTATIC_CORE=${7}
    local source_dir=${8}
    
    local temp=$(pwd)
    cd ${source_dir}
    
    cmake-3.19 "-DGCC_BIN=${GCC_BIN}" \
            "-DGPP_BIN=${GPP_BIN}" \
            "-DINPUT_COMPILER_OPTIONS=${INPUT_COMPILER_OPTIONS}" \
            "-DTARGET=${TARGET}" \
            "-DTOOLCHAIN_INCLUDES=${TOOLCHAIN_INCLUDES}" \
            "-DJAVA_HOME=${JAVA_HOME}" \
            "-DELECTROSTATIC_CORE=${ELECTROSTATIC_CORE}" \
            -S . -B "./cmake-build/${TARGET}"
        
    cmake --build "./cmake-build/${TARGET}"
    cd ${temp}
}


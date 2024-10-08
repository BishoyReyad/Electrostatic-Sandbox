#!/bin/bash
source "./common-variables.sh"
source "./helper-scripts/project-impl/variables.sh"

cd ./electrostatic4j

echo -e "${ORANGE_C} Compiling and Assembling serial4j-core"
./gradlew :arithmos4j:arithmos4j-core:build \
          :arithmos4j:arithmos4j-core:generateSourcesJar 
        # :serial4j:serial4j-core:generateJavadocJar 

cd ..
echo -e "${ORANGE_C} Compiling arithmos4j-native"

./helper-scripts/project-impl/compile-electrostatic4j.sh \
       "electrostatic4j/arithmos4j/arithmos4j-native" "arithmos4j" "${GCC_BIN_x86}" "${GPP_BIN_x86}" "${TOOLCHAIN_INCLUDES_x86}" \
        "${JAVA_HOME}" "${TARGET_x86_64}" "linux" "${x86_64}"

./helper-scripts/project-impl/compile-electrostatic4j.sh \
       "electrostatic4j/arithmos4j/arithmos4j-native" "arithmos4j" "${GCC_BIN_x86}" "${GPP_BIN_x86}" "${TOOLCHAIN_INCLUDES_x86}" \
        "${JAVA_HOME}" "${TARGET_x86}" "linux" "${x86}"

cd ./electrostatic4j
echo -e "${ORANGE_C} Bundling arithmos4j-native"
./gradlew :arithmos4j:arithmos4j-native:copyBinaries && \
./gradlew :arithmos4j:arithmos4j-native:build && \
./gradlew :arithmos4j:arithmos4j-native:copyToExamples

echo -e "${ORANGE_C} Building Examples"
./gradlew :arithmos4j:arithmos4j-examples:build


# SPDX-License-Identifier: Apache-2.0
# Copyright Contributors to the ASWF Sample Project

add_executable(hello hello.cpp)

target_include_directories(hello
        PRIVATE ${CMAKE_BINARY_DIR}
)

# use the C++14 standard for VFX Reference Platform 2020
target_compile_features(hello PUBLIC cxx_std_14)

# does the application run
add_test (HelloRuns hello)
# does it print what you expect
add_test (HelloPrints hello)
set_tests_properties (HelloPrints PROPERTIES PASS_REGULAR_EXPRESSION "Hello, World!")


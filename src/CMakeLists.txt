# SPDX-License-Identifier: Apache-2.0
# Copyright Contributors to the ASWF Sample Project

add_executable(hello hello.cpp)

target_include_directories(hello
        PRIVATE ${CMAKE_BINARY_DIR}
)

# does the application run
add_test (HelloRuns hello)
# does it print what you expect
add_test (HelloPrints hello)
set_tests_properties (HelloPrints PROPERTIES PASS_REGULAR_EXPRESSION "Hello, World!")


# SPDX-License-Identifier: Apache-2.0
# Copyright Contributors to the ASWF Sample Project

cmake_minimum_required (VERSION 3.11)

project (aswf-sample-project
    VERSION 0.0.0
    LANGUAGES CXX C)
include(CTest)
add_subdirectory(include)
add_subdirectory(src)

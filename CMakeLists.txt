# SPDX-License-Identifier: Apache-2.0
# Copyright Contributors to the ASWF Sample Project

cmake_minimum_required (VERSION 3.15)

# specify the C++ standard, C++14 for VFX Reference Platform 2020
set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED True)

project (aswf-sample-project
    VERSION 0.0.0
    LANGUAGES CXX C)
include(CTest)
add_subdirectory(include)
add_subdirectory(src)

# SPDX-License-Identifier: Apache-2.0
# Copyright Contributors to the ASWF Sample Projec

# Example CTest script which runs the test suite and sends the results to a CDash dashboard.
# Depends on the following environment variables, which should be set in your CI environment:
#
# CTEST_SOURCE_DIRECTORY: the directory where your source tree is checked out by the CI system
# CTEST_BUILD_NAME: the name of the build from the CI environment
# CTEST_SITE: the name of the machine the build is running on
# CTEST_CDASH_TOKEN: the authorization token created for the CDash dashboard, likely stored as a secret in GitHub

set(CTEST_SOURCE_DIRECTORY "$ENV{CTEST_SOURCE_DIRECTORY}")
set(CTEST_BINARY_DIRECTORY "$ENV{CTEST_SOURCE_DIRECTORY}/build")
set(CTEST_BUILD_NAME "$ENV{CTEST_BUILD_NAME}")
set(CTEST_SITE "$ENV{CTEST_SITE}")
ctest_start("Continuous")
ctest_test()

# CTEST_CDASH_AUTH_TOKEN should be set as an environment variable containing your CDash authorization token
# Skip upload if it is not set (could happen for PR build in a fork for instance)
if (DEFINED ENV{CTEST_CDASH_AUTH_TOKEN})
	ctest_submit(HTTPHEADER "Authorization: Bearer $ENV{CTEST_CDASH_AUTH_TOKEN}")
else()
	message(STATUS "CTEST_CDASH_AUTH_TOKEN not set, skipping upload to CDash")
endif()

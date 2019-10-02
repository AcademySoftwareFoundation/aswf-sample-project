# SPDX-License-Identifier: Apache-2.0
# Copyright Contributors to the ASWF Sample Projec

# Name used by CDash to refer to the project
set(CTEST_PROJECT_NAME "aswf-sample-project")
# Time to use for the start of each day. Used by CDash to group results by day,
# usually set to midnight in the local timezone of the CDash server.
set(CTEST_NIGHTLY_START_TIME "01:00:00 UTC")
# Details of the CDash server to submit to
set(CTEST_DROP_METHOD "http")
set(CTEST_DROP_SITE "my.cdash.org")
set(CTEST_DROP_LOCATION "/submit.php?project=${CTEST_PROJECT_NAME}")
set(CTEST_DROP_SITE_CDASH YES)


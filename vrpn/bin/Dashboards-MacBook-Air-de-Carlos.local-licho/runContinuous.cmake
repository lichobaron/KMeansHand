# - Dashboard driver script for use with ctest.
#
# Generated file processed by CreateDashboardScripts.cmake
# Run it like:
#  ctest -S nameofthisfile
# with -V or -V -VV if you want more feedback.
#
# Generally you do not need to edit this file by hand!
#
# If this file isn't named DashboardScript.cmake.in and located
# in the same directory as CreateDashboardScripts.cmake, it has been
# auto-generated and will be overwritten every time CMake configures
# itself.  (This may be every build!)
#
# Original Author:
# 2009-2010 Ryan Pavlik <rpavlik@iastate.edu> <abiryan@ryand.net>
# http://academic.cleardefinition.com
# Iowa State University HCI Graduate Program/VRAC

cmake_minimum_required(VERSION 2.8 FATAL_ERROR)

set(CTEST_CMAKE_GENERATOR "Unix Makefiles")
set(CTEST_PROJECT_NAME "VRPN")

set(CTEST_DASHBOARD_ROOT "/Users/licho/Downloads/bin/Dashboards-MacBook-Air-de-Carlos.local-licho")
set(CTEST_SOURCE_DIRECTORY "/Users/licho/Downloads/vrpn")
set(DASH_TYPE "Continuous")
set(CTEST_BINARY_DIRECTORY "${CTEST_DASHBOARD_ROOT}/build-${DASH_TYPE}")

set(CTEST_NOTES_FILES
	"${CTEST_SCRIPT_DIRECTORY}/${CTEST_SCRIPT_NAME}"
	"${CTEST_DASHBOARD_ROOT}/GeneratedCombinedCache.${CTEST_SCRIPT_NAME}")

set(CTEST_BUILD_NAME "Darwin-18.2.0-x86_64-Clang:generator:Unix_Makefiles")
set(CTEST_SITE "licho@MacBook-Air-de-Carlos.local")

set(CTEST_USE_LAUNCHERS TRUE)

set(CTEST_COMMAND "/Applications/CMake.app/Contents/bin/ctest")
set(CTEST_CMAKE_COMMAND "/Applications/CMake.app/Contents/bin/cmake")
set(CTEST_UPDATE_TYPE "git")
set(CTEST_UPDATE_COMMAND "/usr/bin/git")
set(CTEST_UPDATE_OPTIONS "")

if((NOT CTEST_CONFIGURATION_TYPE) OR (NOT CTEST_BUILD_CONFIGURATION))
	set(CTEST_BUILD_CONFIGURATION "RelWithDebInfo")
	set(CTEST_CONFIGURATION_TYPE "RelWithDebInfo")
endif()


# Avoid non-ascii characters in tool output.
set(ENV{LC_ALL} C)

if(EXISTS "${CTEST_DASHBOARD_ROOT}/GeneratedInitialCache.${CTEST_SCRIPT_NAME}")
	file(READ "${CTEST_DASHBOARD_ROOT}/GeneratedInitialCache.${CTEST_SCRIPT_NAME}" _initcache)
else()
	set(_initcache)
endif()

if(EXISTS "${CTEST_DASHBOARD_ROOT}/CustomInitialCache.cmake")
	file(READ "${CTEST_DASHBOARD_ROOT}/CustomInitialCache.cmake" _customcache)
	set(_initcache "${_initcache}
${_customcache}")
endif()
set(_initcache "# This file is automatically regenerated every dashboard build -
# Do not edit it directly!
# If you want to add initial cache values, you can create/modify
# the CustomInitialCache.cmake file in this directory.

# Pretty typical settings to preseve from the generating cache
set(BUILD_TESTING ON CACHE BOOL docstring)
set(IN_DASHBOARD_SCRIPT ON CACHE BOOL docstring)
set(CTEST_USE_LAUNCHERS ON CACHE BOOL docstring)
set(CMAKE_PREFIX_PATH \"\" CACHE STRING docstring)
set(CMAKE_BUILD_TYPE \"RelWithDebInfo\" CACHE STRING docstring)
set(CTEST_CONFIGURATION_TYPE \"RelWithDebInfo\" CACHE STRING docstring)

# testing tool locations
# Saved here because the tools in the path might be outdated
set(CPPCHECK_EXECUTABLE \"CPPCHECK_EXECUTABLE-NOTFOUND\" CACHE FILEPATH docstring)
set(DOXYGEN_EXECUTABLE \"DOXYGEN_EXECUTABLE-NOTFOUND\" CACHE FILEPATH docstring)

${_initcache}")

file(WRITE "${CTEST_DASHBOARD_ROOT}/GeneratedCombinedCache.${CTEST_SCRIPT_NAME}" "${_initcache}")

ctest_empty_binary_directory("${CTEST_BINARY_DIRECTORY}")

ctest_start(${DASH_TYPE})

if(CTEST_UPDATE_COMMAND AND NOT DASH_TYPE STREQUAL "Experimental")
	ctest_update(SOURCE "${CTEST_SOURCE_DIRECTORY}" RETURN_VALUE res)
endif()

# Only proceed if we updated a file or if we're not a continuous build
set(PROCEED NO)
if(res GREATER 0)
	message(STATUS "One or more files were updated, so we will proceed to "
		"and build")
	set(PROCEED YES)
endif()

if(NOT DASH_TYPE STREQUAL "Continuous")
	message(STATUS "We are not a continuous dashboard, so continuing regardless "
		"of whether any files were updated")
	set(PROCEED YES)
endif()

if(PROCEED)
	ctest_configure(BUILD "${CTEST_BINARY_DIRECTORY}" RETURN_VALUE res
		OPTIONS "-C${CTEST_DASHBOARD_ROOT}/GeneratedCombinedCache.${CTEST_SCRIPT_NAME}")
	if(${res} EQUAL 0)
		# Only try to build if we could configure
		ctest_build(BUILD "${CTEST_BINARY_DIRECTORY}" RETURN_VALUE res)

		# Some tests, like cppcheck tests, don't depend on a successful build
		ctest_test(BUILD "${CTEST_BINARY_DIRECTORY}" RETURN_VALUE res)
	endif()
endif()

# Always submit results
ctest_submit(RETURN_VALUE res)

# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Applications/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /Applications/CMake.app/Contents/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/licho/Downloads/vrpn

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/licho/Downloads/bin

# Include any dependencies generated for this target.
include client_src/CMakeFiles/forcedevice_test_client.dir/depend.make

# Include the progress variables for this target.
include client_src/CMakeFiles/forcedevice_test_client.dir/progress.make

# Include the compile flags for this target's objects.
include client_src/CMakeFiles/forcedevice_test_client.dir/flags.make

client_src/CMakeFiles/forcedevice_test_client.dir/forcedevice_test_client.cpp.o: client_src/CMakeFiles/forcedevice_test_client.dir/flags.make
client_src/CMakeFiles/forcedevice_test_client.dir/forcedevice_test_client.cpp.o: /Users/licho/Downloads/vrpn/client_src/forcedevice_test_client.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/licho/Downloads/bin/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object client_src/CMakeFiles/forcedevice_test_client.dir/forcedevice_test_client.cpp.o"
	cd /Users/licho/Downloads/bin/client_src && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/forcedevice_test_client.dir/forcedevice_test_client.cpp.o -c /Users/licho/Downloads/vrpn/client_src/forcedevice_test_client.cpp

client_src/CMakeFiles/forcedevice_test_client.dir/forcedevice_test_client.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/forcedevice_test_client.dir/forcedevice_test_client.cpp.i"
	cd /Users/licho/Downloads/bin/client_src && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/licho/Downloads/vrpn/client_src/forcedevice_test_client.cpp > CMakeFiles/forcedevice_test_client.dir/forcedevice_test_client.cpp.i

client_src/CMakeFiles/forcedevice_test_client.dir/forcedevice_test_client.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/forcedevice_test_client.dir/forcedevice_test_client.cpp.s"
	cd /Users/licho/Downloads/bin/client_src && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/licho/Downloads/vrpn/client_src/forcedevice_test_client.cpp -o CMakeFiles/forcedevice_test_client.dir/forcedevice_test_client.cpp.s

# Object files for target forcedevice_test_client
forcedevice_test_client_OBJECTS = \
"CMakeFiles/forcedevice_test_client.dir/forcedevice_test_client.cpp.o"

# External object files for target forcedevice_test_client
forcedevice_test_client_EXTERNAL_OBJECTS =

client_src/forcedevice_test_client: client_src/CMakeFiles/forcedevice_test_client.dir/forcedevice_test_client.cpp.o
client_src/forcedevice_test_client: client_src/CMakeFiles/forcedevice_test_client.dir/build.make
client_src/forcedevice_test_client: libvrpn.a
client_src/forcedevice_test_client: quat/libquat.a
client_src/forcedevice_test_client: client_src/CMakeFiles/forcedevice_test_client.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/licho/Downloads/bin/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable forcedevice_test_client"
	cd /Users/licho/Downloads/bin/client_src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/forcedevice_test_client.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
client_src/CMakeFiles/forcedevice_test_client.dir/build: client_src/forcedevice_test_client

.PHONY : client_src/CMakeFiles/forcedevice_test_client.dir/build

client_src/CMakeFiles/forcedevice_test_client.dir/clean:
	cd /Users/licho/Downloads/bin/client_src && $(CMAKE_COMMAND) -P CMakeFiles/forcedevice_test_client.dir/cmake_clean.cmake
.PHONY : client_src/CMakeFiles/forcedevice_test_client.dir/clean

client_src/CMakeFiles/forcedevice_test_client.dir/depend:
	cd /Users/licho/Downloads/bin && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/licho/Downloads/vrpn /Users/licho/Downloads/vrpn/client_src /Users/licho/Downloads/bin /Users/licho/Downloads/bin/client_src /Users/licho/Downloads/bin/client_src/CMakeFiles/forcedevice_test_client.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : client_src/CMakeFiles/forcedevice_test_client.dir/depend


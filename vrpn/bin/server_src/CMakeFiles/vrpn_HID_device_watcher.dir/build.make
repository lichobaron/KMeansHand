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
include server_src/CMakeFiles/vrpn_HID_device_watcher.dir/depend.make

# Include the progress variables for this target.
include server_src/CMakeFiles/vrpn_HID_device_watcher.dir/progress.make

# Include the compile flags for this target's objects.
include server_src/CMakeFiles/vrpn_HID_device_watcher.dir/flags.make

server_src/CMakeFiles/vrpn_HID_device_watcher.dir/vrpn_HID_device_watcher.cpp.o: server_src/CMakeFiles/vrpn_HID_device_watcher.dir/flags.make
server_src/CMakeFiles/vrpn_HID_device_watcher.dir/vrpn_HID_device_watcher.cpp.o: /Users/licho/Downloads/vrpn/server_src/vrpn_HID_device_watcher.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/licho/Downloads/bin/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object server_src/CMakeFiles/vrpn_HID_device_watcher.dir/vrpn_HID_device_watcher.cpp.o"
	cd /Users/licho/Downloads/bin/server_src && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/vrpn_HID_device_watcher.dir/vrpn_HID_device_watcher.cpp.o -c /Users/licho/Downloads/vrpn/server_src/vrpn_HID_device_watcher.cpp

server_src/CMakeFiles/vrpn_HID_device_watcher.dir/vrpn_HID_device_watcher.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/vrpn_HID_device_watcher.dir/vrpn_HID_device_watcher.cpp.i"
	cd /Users/licho/Downloads/bin/server_src && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/licho/Downloads/vrpn/server_src/vrpn_HID_device_watcher.cpp > CMakeFiles/vrpn_HID_device_watcher.dir/vrpn_HID_device_watcher.cpp.i

server_src/CMakeFiles/vrpn_HID_device_watcher.dir/vrpn_HID_device_watcher.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/vrpn_HID_device_watcher.dir/vrpn_HID_device_watcher.cpp.s"
	cd /Users/licho/Downloads/bin/server_src && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/licho/Downloads/vrpn/server_src/vrpn_HID_device_watcher.cpp -o CMakeFiles/vrpn_HID_device_watcher.dir/vrpn_HID_device_watcher.cpp.s

# Object files for target vrpn_HID_device_watcher
vrpn_HID_device_watcher_OBJECTS = \
"CMakeFiles/vrpn_HID_device_watcher.dir/vrpn_HID_device_watcher.cpp.o"

# External object files for target vrpn_HID_device_watcher
vrpn_HID_device_watcher_EXTERNAL_OBJECTS =

server_src/vrpn_HID_device_watcher: server_src/CMakeFiles/vrpn_HID_device_watcher.dir/vrpn_HID_device_watcher.cpp.o
server_src/vrpn_HID_device_watcher: server_src/CMakeFiles/vrpn_HID_device_watcher.dir/build.make
server_src/vrpn_HID_device_watcher: libvrpnserver.a
server_src/vrpn_HID_device_watcher: quat/libquat.a
server_src/vrpn_HID_device_watcher: /usr/local/lib/libusb-1.0.dylib
server_src/vrpn_HID_device_watcher: atmellib/libvrpn_atmel.a
server_src/vrpn_HID_device_watcher: gpsnmealib/libgpsnmea.a
server_src/vrpn_HID_device_watcher: server_src/CMakeFiles/vrpn_HID_device_watcher.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/licho/Downloads/bin/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable vrpn_HID_device_watcher"
	cd /Users/licho/Downloads/bin/server_src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/vrpn_HID_device_watcher.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
server_src/CMakeFiles/vrpn_HID_device_watcher.dir/build: server_src/vrpn_HID_device_watcher

.PHONY : server_src/CMakeFiles/vrpn_HID_device_watcher.dir/build

server_src/CMakeFiles/vrpn_HID_device_watcher.dir/clean:
	cd /Users/licho/Downloads/bin/server_src && $(CMAKE_COMMAND) -P CMakeFiles/vrpn_HID_device_watcher.dir/cmake_clean.cmake
.PHONY : server_src/CMakeFiles/vrpn_HID_device_watcher.dir/clean

server_src/CMakeFiles/vrpn_HID_device_watcher.dir/depend:
	cd /Users/licho/Downloads/bin && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/licho/Downloads/vrpn /Users/licho/Downloads/vrpn/server_src /Users/licho/Downloads/bin /Users/licho/Downloads/bin/server_src /Users/licho/Downloads/bin/server_src/CMakeFiles/vrpn_HID_device_watcher.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : server_src/CMakeFiles/vrpn_HID_device_watcher.dir/depend


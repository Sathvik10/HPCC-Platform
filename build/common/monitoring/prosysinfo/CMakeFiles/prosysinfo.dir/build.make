# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/sathvik/hpcc/HPCC-Platform

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/sathvik/hpcc/HPCC-Platform/build

# Include any dependencies generated for this target.
include common/monitoring/prosysinfo/CMakeFiles/prosysinfo.dir/depend.make

# Include the progress variables for this target.
include common/monitoring/prosysinfo/CMakeFiles/prosysinfo.dir/progress.make

# Include the compile flags for this target's objects.
include common/monitoring/prosysinfo/CMakeFiles/prosysinfo.dir/flags.make

common/monitoring/prosysinfo/CMakeFiles/prosysinfo.dir/main.cpp.o: common/monitoring/prosysinfo/CMakeFiles/prosysinfo.dir/flags.make
common/monitoring/prosysinfo/CMakeFiles/prosysinfo.dir/main.cpp.o: ../common/monitoring/prosysinfo/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sathvik/hpcc/HPCC-Platform/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object common/monitoring/prosysinfo/CMakeFiles/prosysinfo.dir/main.cpp.o"
	cd /home/sathvik/hpcc/HPCC-Platform/build/common/monitoring/prosysinfo && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/prosysinfo.dir/main.cpp.o -c /home/sathvik/hpcc/HPCC-Platform/common/monitoring/prosysinfo/main.cpp

common/monitoring/prosysinfo/CMakeFiles/prosysinfo.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/prosysinfo.dir/main.cpp.i"
	cd /home/sathvik/hpcc/HPCC-Platform/build/common/monitoring/prosysinfo && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sathvik/hpcc/HPCC-Platform/common/monitoring/prosysinfo/main.cpp > CMakeFiles/prosysinfo.dir/main.cpp.i

common/monitoring/prosysinfo/CMakeFiles/prosysinfo.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/prosysinfo.dir/main.cpp.s"
	cd /home/sathvik/hpcc/HPCC-Platform/build/common/monitoring/prosysinfo && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sathvik/hpcc/HPCC-Platform/common/monitoring/prosysinfo/main.cpp -o CMakeFiles/prosysinfo.dir/main.cpp.s

# Object files for target prosysinfo
prosysinfo_OBJECTS = \
"CMakeFiles/prosysinfo.dir/main.cpp.o"

# External object files for target prosysinfo
prosysinfo_EXTERNAL_OBJECTS =

Debug/bin/prosysinfo: common/monitoring/prosysinfo/CMakeFiles/prosysinfo.dir/main.cpp.o
Debug/bin/prosysinfo: common/monitoring/prosysinfo/CMakeFiles/prosysinfo.dir/build.make
Debug/bin/prosysinfo: common/monitoring/prosysinfo/CMakeFiles/prosysinfo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sathvik/hpcc/HPCC-Platform/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../Debug/bin/prosysinfo"
	cd /home/sathvik/hpcc/HPCC-Platform/build/common/monitoring/prosysinfo && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/prosysinfo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
common/monitoring/prosysinfo/CMakeFiles/prosysinfo.dir/build: Debug/bin/prosysinfo

.PHONY : common/monitoring/prosysinfo/CMakeFiles/prosysinfo.dir/build

common/monitoring/prosysinfo/CMakeFiles/prosysinfo.dir/clean:
	cd /home/sathvik/hpcc/HPCC-Platform/build/common/monitoring/prosysinfo && $(CMAKE_COMMAND) -P CMakeFiles/prosysinfo.dir/cmake_clean.cmake
.PHONY : common/monitoring/prosysinfo/CMakeFiles/prosysinfo.dir/clean

common/monitoring/prosysinfo/CMakeFiles/prosysinfo.dir/depend:
	cd /home/sathvik/hpcc/HPCC-Platform/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sathvik/hpcc/HPCC-Platform /home/sathvik/hpcc/HPCC-Platform/common/monitoring/prosysinfo /home/sathvik/hpcc/HPCC-Platform/build /home/sathvik/hpcc/HPCC-Platform/build/common/monitoring/prosysinfo /home/sathvik/hpcc/HPCC-Platform/build/common/monitoring/prosysinfo/CMakeFiles/prosysinfo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : common/monitoring/prosysinfo/CMakeFiles/prosysinfo.dir/depend

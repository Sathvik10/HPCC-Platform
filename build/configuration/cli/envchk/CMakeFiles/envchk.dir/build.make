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
include configuration/cli/envchk/CMakeFiles/envchk.dir/depend.make

# Include the progress variables for this target.
include configuration/cli/envchk/CMakeFiles/envchk.dir/progress.make

# Include the compile flags for this target's objects.
include configuration/cli/envchk/CMakeFiles/envchk.dir/flags.make

configuration/cli/envchk/CMakeFiles/envchk.dir/envchk.cpp.o: configuration/cli/envchk/CMakeFiles/envchk.dir/flags.make
configuration/cli/envchk/CMakeFiles/envchk.dir/envchk.cpp.o: ../configuration/cli/envchk/envchk.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sathvik/hpcc/HPCC-Platform/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object configuration/cli/envchk/CMakeFiles/envchk.dir/envchk.cpp.o"
	cd /home/sathvik/hpcc/HPCC-Platform/build/configuration/cli/envchk && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/envchk.dir/envchk.cpp.o -c /home/sathvik/hpcc/HPCC-Platform/configuration/cli/envchk/envchk.cpp

configuration/cli/envchk/CMakeFiles/envchk.dir/envchk.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/envchk.dir/envchk.cpp.i"
	cd /home/sathvik/hpcc/HPCC-Platform/build/configuration/cli/envchk && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sathvik/hpcc/HPCC-Platform/configuration/cli/envchk/envchk.cpp > CMakeFiles/envchk.dir/envchk.cpp.i

configuration/cli/envchk/CMakeFiles/envchk.dir/envchk.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/envchk.dir/envchk.cpp.s"
	cd /home/sathvik/hpcc/HPCC-Platform/build/configuration/cli/envchk && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sathvik/hpcc/HPCC-Platform/configuration/cli/envchk/envchk.cpp -o CMakeFiles/envchk.dir/envchk.cpp.s

# Object files for target envchk
envchk_OBJECTS = \
"CMakeFiles/envchk.dir/envchk.cpp.o"

# External object files for target envchk
envchk_EXTERNAL_OBJECTS =

Debug/bin/envchk: configuration/cli/envchk/CMakeFiles/envchk.dir/envchk.cpp.o
Debug/bin/envchk: configuration/cli/envchk/CMakeFiles/envchk.dir/build.make
Debug/bin/envchk: Debug/libs/libconfigmgr.so
Debug/bin/envchk: Debug/libs/libjlib.so
Debug/bin/envchk: Debug/libs/liblzma.a
Debug/bin/envchk: Debug/libs/liblz4.a
Debug/bin/envchk: Debug/libs/liblibbase58.a
Debug/bin/envchk: /usr/lib/x86_64-linux-gnu/libssl.so
Debug/bin/envchk: /usr/lib/x86_64-linux-gnu/libcrypto.so
Debug/bin/envchk: configuration/cli/envchk/CMakeFiles/envchk.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sathvik/hpcc/HPCC-Platform/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../Debug/bin/envchk"
	cd /home/sathvik/hpcc/HPCC-Platform/build/configuration/cli/envchk && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/envchk.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
configuration/cli/envchk/CMakeFiles/envchk.dir/build: Debug/bin/envchk

.PHONY : configuration/cli/envchk/CMakeFiles/envchk.dir/build

configuration/cli/envchk/CMakeFiles/envchk.dir/clean:
	cd /home/sathvik/hpcc/HPCC-Platform/build/configuration/cli/envchk && $(CMAKE_COMMAND) -P CMakeFiles/envchk.dir/cmake_clean.cmake
.PHONY : configuration/cli/envchk/CMakeFiles/envchk.dir/clean

configuration/cli/envchk/CMakeFiles/envchk.dir/depend:
	cd /home/sathvik/hpcc/HPCC-Platform/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sathvik/hpcc/HPCC-Platform /home/sathvik/hpcc/HPCC-Platform/configuration/cli/envchk /home/sathvik/hpcc/HPCC-Platform/build /home/sathvik/hpcc/HPCC-Platform/build/configuration/cli/envchk /home/sathvik/hpcc/HPCC-Platform/build/configuration/cli/envchk/CMakeFiles/envchk.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : configuration/cli/envchk/CMakeFiles/envchk.dir/depend

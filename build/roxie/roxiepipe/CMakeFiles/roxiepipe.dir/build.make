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
include roxie/roxiepipe/CMakeFiles/roxiepipe.dir/depend.make

# Include the progress variables for this target.
include roxie/roxiepipe/CMakeFiles/roxiepipe.dir/progress.make

# Include the compile flags for this target's objects.
include roxie/roxiepipe/CMakeFiles/roxiepipe.dir/flags.make

roxie/roxiepipe/CMakeFiles/roxiepipe.dir/roxiepipe.cpp.o: roxie/roxiepipe/CMakeFiles/roxiepipe.dir/flags.make
roxie/roxiepipe/CMakeFiles/roxiepipe.dir/roxiepipe.cpp.o: ../roxie/roxiepipe/roxiepipe.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sathvik/hpcc/HPCC-Platform/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object roxie/roxiepipe/CMakeFiles/roxiepipe.dir/roxiepipe.cpp.o"
	cd /home/sathvik/hpcc/HPCC-Platform/build/roxie/roxiepipe && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/roxiepipe.dir/roxiepipe.cpp.o -c /home/sathvik/hpcc/HPCC-Platform/roxie/roxiepipe/roxiepipe.cpp

roxie/roxiepipe/CMakeFiles/roxiepipe.dir/roxiepipe.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/roxiepipe.dir/roxiepipe.cpp.i"
	cd /home/sathvik/hpcc/HPCC-Platform/build/roxie/roxiepipe && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sathvik/hpcc/HPCC-Platform/roxie/roxiepipe/roxiepipe.cpp > CMakeFiles/roxiepipe.dir/roxiepipe.cpp.i

roxie/roxiepipe/CMakeFiles/roxiepipe.dir/roxiepipe.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/roxiepipe.dir/roxiepipe.cpp.s"
	cd /home/sathvik/hpcc/HPCC-Platform/build/roxie/roxiepipe && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sathvik/hpcc/HPCC-Platform/roxie/roxiepipe/roxiepipe.cpp -o CMakeFiles/roxiepipe.dir/roxiepipe.cpp.s

# Object files for target roxiepipe
roxiepipe_OBJECTS = \
"CMakeFiles/roxiepipe.dir/roxiepipe.cpp.o"

# External object files for target roxiepipe
roxiepipe_EXTERNAL_OBJECTS =

Debug/bin/roxiepipe: roxie/roxiepipe/CMakeFiles/roxiepipe.dir/roxiepipe.cpp.o
Debug/bin/roxiepipe: roxie/roxiepipe/CMakeFiles/roxiepipe.dir/build.make
Debug/bin/roxiepipe: Debug/libs/libsecuresocket.so
Debug/bin/roxiepipe: Debug/libs/libjlib.so
Debug/bin/roxiepipe: Debug/libs/liblzma.a
Debug/bin/roxiepipe: Debug/libs/liblz4.a
Debug/bin/roxiepipe: Debug/libs/liblibbase58.a
Debug/bin/roxiepipe: /usr/lib/x86_64-linux-gnu/libssl.so
Debug/bin/roxiepipe: /usr/lib/x86_64-linux-gnu/libcrypto.so
Debug/bin/roxiepipe: roxie/roxiepipe/CMakeFiles/roxiepipe.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sathvik/hpcc/HPCC-Platform/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../Debug/bin/roxiepipe"
	cd /home/sathvik/hpcc/HPCC-Platform/build/roxie/roxiepipe && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/roxiepipe.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
roxie/roxiepipe/CMakeFiles/roxiepipe.dir/build: Debug/bin/roxiepipe

.PHONY : roxie/roxiepipe/CMakeFiles/roxiepipe.dir/build

roxie/roxiepipe/CMakeFiles/roxiepipe.dir/clean:
	cd /home/sathvik/hpcc/HPCC-Platform/build/roxie/roxiepipe && $(CMAKE_COMMAND) -P CMakeFiles/roxiepipe.dir/cmake_clean.cmake
.PHONY : roxie/roxiepipe/CMakeFiles/roxiepipe.dir/clean

roxie/roxiepipe/CMakeFiles/roxiepipe.dir/depend:
	cd /home/sathvik/hpcc/HPCC-Platform/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sathvik/hpcc/HPCC-Platform /home/sathvik/hpcc/HPCC-Platform/roxie/roxiepipe /home/sathvik/hpcc/HPCC-Platform/build /home/sathvik/hpcc/HPCC-Platform/build/roxie/roxiepipe /home/sathvik/hpcc/HPCC-Platform/build/roxie/roxiepipe/CMakeFiles/roxiepipe.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : roxie/roxiepipe/CMakeFiles/roxiepipe.dir/depend

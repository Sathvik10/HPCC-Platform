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
include system/xmllibtest/CMakeFiles/xmllibtest.dir/depend.make

# Include the progress variables for this target.
include system/xmllibtest/CMakeFiles/xmllibtest.dir/progress.make

# Include the compile flags for this target's objects.
include system/xmllibtest/CMakeFiles/xmllibtest.dir/flags.make

system/xmllibtest/CMakeFiles/xmllibtest.dir/xmllibtest.cpp.o: system/xmllibtest/CMakeFiles/xmllibtest.dir/flags.make
system/xmllibtest/CMakeFiles/xmllibtest.dir/xmllibtest.cpp.o: ../system/xmllibtest/xmllibtest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sathvik/hpcc/HPCC-Platform/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object system/xmllibtest/CMakeFiles/xmllibtest.dir/xmllibtest.cpp.o"
	cd /home/sathvik/hpcc/HPCC-Platform/build/system/xmllibtest && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/xmllibtest.dir/xmllibtest.cpp.o -c /home/sathvik/hpcc/HPCC-Platform/system/xmllibtest/xmllibtest.cpp

system/xmllibtest/CMakeFiles/xmllibtest.dir/xmllibtest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/xmllibtest.dir/xmllibtest.cpp.i"
	cd /home/sathvik/hpcc/HPCC-Platform/build/system/xmllibtest && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sathvik/hpcc/HPCC-Platform/system/xmllibtest/xmllibtest.cpp > CMakeFiles/xmllibtest.dir/xmllibtest.cpp.i

system/xmllibtest/CMakeFiles/xmllibtest.dir/xmllibtest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/xmllibtest.dir/xmllibtest.cpp.s"
	cd /home/sathvik/hpcc/HPCC-Platform/build/system/xmllibtest && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sathvik/hpcc/HPCC-Platform/system/xmllibtest/xmllibtest.cpp -o CMakeFiles/xmllibtest.dir/xmllibtest.cpp.s

# Object files for target xmllibtest
xmllibtest_OBJECTS = \
"CMakeFiles/xmllibtest.dir/xmllibtest.cpp.o"

# External object files for target xmllibtest
xmllibtest_EXTERNAL_OBJECTS =

Debug/bin/xmllibtest: system/xmllibtest/CMakeFiles/xmllibtest.dir/xmllibtest.cpp.o
Debug/bin/xmllibtest: system/xmllibtest/CMakeFiles/xmllibtest.dir/build.make
Debug/bin/xmllibtest: Debug/libs/libxmllib.so
Debug/bin/xmllibtest: Debug/libs/libjlib.so
Debug/bin/xmllibtest: Debug/libs/liblzma.a
Debug/bin/xmllibtest: Debug/libs/liblz4.a
Debug/bin/xmllibtest: Debug/libs/liblibbase58.a
Debug/bin/xmllibtest: /usr/lib/x86_64-linux-gnu/libssl.so
Debug/bin/xmllibtest: /usr/lib/x86_64-linux-gnu/libcrypto.so
Debug/bin/xmllibtest: /usr/lib/x86_64-linux-gnu/libxslt.so
Debug/bin/xmllibtest: /usr/lib/x86_64-linux-gnu/libexslt.so
Debug/bin/xmllibtest: /usr/lib/x86_64-linux-gnu/libxml2.so
Debug/bin/xmllibtest: system/xmllibtest/CMakeFiles/xmllibtest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sathvik/hpcc/HPCC-Platform/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../Debug/bin/xmllibtest"
	cd /home/sathvik/hpcc/HPCC-Platform/build/system/xmllibtest && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/xmllibtest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
system/xmllibtest/CMakeFiles/xmllibtest.dir/build: Debug/bin/xmllibtest

.PHONY : system/xmllibtest/CMakeFiles/xmllibtest.dir/build

system/xmllibtest/CMakeFiles/xmllibtest.dir/clean:
	cd /home/sathvik/hpcc/HPCC-Platform/build/system/xmllibtest && $(CMAKE_COMMAND) -P CMakeFiles/xmllibtest.dir/cmake_clean.cmake
.PHONY : system/xmllibtest/CMakeFiles/xmllibtest.dir/clean

system/xmllibtest/CMakeFiles/xmllibtest.dir/depend:
	cd /home/sathvik/hpcc/HPCC-Platform/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sathvik/hpcc/HPCC-Platform /home/sathvik/hpcc/HPCC-Platform/system/xmllibtest /home/sathvik/hpcc/HPCC-Platform/build /home/sathvik/hpcc/HPCC-Platform/build/system/xmllibtest /home/sathvik/hpcc/HPCC-Platform/build/system/xmllibtest/CMakeFiles/xmllibtest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : system/xmllibtest/CMakeFiles/xmllibtest.dir/depend

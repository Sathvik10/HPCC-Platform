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
include esp/logging/test/CMakeFiles/logging_test.dir/depend.make

# Include the progress variables for this target.
include esp/logging/test/CMakeFiles/logging_test.dir/progress.make

# Include the compile flags for this target's objects.
include esp/logging/test/CMakeFiles/logging_test.dir/flags.make

esp/logging/test/CMakeFiles/logging_test.dir/logging_test.cpp.o: esp/logging/test/CMakeFiles/logging_test.dir/flags.make
esp/logging/test/CMakeFiles/logging_test.dir/logging_test.cpp.o: ../esp/logging/test/logging_test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sathvik/hpcc/HPCC-Platform/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object esp/logging/test/CMakeFiles/logging_test.dir/logging_test.cpp.o"
	cd /home/sathvik/hpcc/HPCC-Platform/build/esp/logging/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/logging_test.dir/logging_test.cpp.o -c /home/sathvik/hpcc/HPCC-Platform/esp/logging/test/logging_test.cpp

esp/logging/test/CMakeFiles/logging_test.dir/logging_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/logging_test.dir/logging_test.cpp.i"
	cd /home/sathvik/hpcc/HPCC-Platform/build/esp/logging/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sathvik/hpcc/HPCC-Platform/esp/logging/test/logging_test.cpp > CMakeFiles/logging_test.dir/logging_test.cpp.i

esp/logging/test/CMakeFiles/logging_test.dir/logging_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/logging_test.dir/logging_test.cpp.s"
	cd /home/sathvik/hpcc/HPCC-Platform/build/esp/logging/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sathvik/hpcc/HPCC-Platform/esp/logging/test/logging_test.cpp -o CMakeFiles/logging_test.dir/logging_test.cpp.s

esp/logging/test/CMakeFiles/logging_test.dir/main.cpp.o: esp/logging/test/CMakeFiles/logging_test.dir/flags.make
esp/logging/test/CMakeFiles/logging_test.dir/main.cpp.o: ../esp/logging/test/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sathvik/hpcc/HPCC-Platform/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object esp/logging/test/CMakeFiles/logging_test.dir/main.cpp.o"
	cd /home/sathvik/hpcc/HPCC-Platform/build/esp/logging/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/logging_test.dir/main.cpp.o -c /home/sathvik/hpcc/HPCC-Platform/esp/logging/test/main.cpp

esp/logging/test/CMakeFiles/logging_test.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/logging_test.dir/main.cpp.i"
	cd /home/sathvik/hpcc/HPCC-Platform/build/esp/logging/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sathvik/hpcc/HPCC-Platform/esp/logging/test/main.cpp > CMakeFiles/logging_test.dir/main.cpp.i

esp/logging/test/CMakeFiles/logging_test.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/logging_test.dir/main.cpp.s"
	cd /home/sathvik/hpcc/HPCC-Platform/build/esp/logging/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sathvik/hpcc/HPCC-Platform/esp/logging/test/main.cpp -o CMakeFiles/logging_test.dir/main.cpp.s

# Object files for target logging_test
logging_test_OBJECTS = \
"CMakeFiles/logging_test.dir/logging_test.cpp.o" \
"CMakeFiles/logging_test.dir/main.cpp.o"

# External object files for target logging_test
logging_test_EXTERNAL_OBJECTS =

Debug/bin/logging_test: esp/logging/test/CMakeFiles/logging_test.dir/logging_test.cpp.o
Debug/bin/logging_test: esp/logging/test/CMakeFiles/logging_test.dir/main.cpp.o
Debug/bin/logging_test: esp/logging/test/CMakeFiles/logging_test.dir/build.make
Debug/bin/logging_test: Debug/libs/libloggingmanager.so
Debug/bin/logging_test: Debug/libs/liblogginglib.so
Debug/bin/logging_test: Debug/libs/libesphttp.so
Debug/bin/logging_test: Debug/libs/libxmllib.so
Debug/bin/logging_test: /usr/lib/x86_64-linux-gnu/libxslt.so
Debug/bin/logging_test: /usr/lib/x86_64-linux-gnu/libexslt.so
Debug/bin/logging_test: /usr/lib/x86_64-linux-gnu/libxml2.so
Debug/bin/logging_test: /usr/lib/x86_64-linux-gnu/libmemcached.so
Debug/bin/logging_test: /usr/lib/x86_64-linux-gnu/libmemcachedutil.so
Debug/bin/logging_test: Debug/libs/libLdapSecurity.so
Debug/bin/logging_test: Debug/libs/libworkunit.so
Debug/bin/logging_test: Debug/libs/libdllserver.so
Debug/bin/logging_test: Debug/libs/libenvironment.so
Debug/bin/logging_test: Debug/libs/libdalibase.so
Debug/bin/logging_test: Debug/libs/libhrpc.a
Debug/bin/logging_test: Debug/libs/libdafsclient.so
Debug/bin/logging_test: Debug/libs/libremote.so
Debug/bin/logging_test: Debug/libs/libsecuresocket.so
Debug/bin/logging_test: Debug/libs/libmp.so
Debug/bin/logging_test: Debug/libs/libjhtree.so
Debug/bin/logging_test: Debug/libs/libhql.so
Debug/bin/logging_test: Debug/libs/libdeftype.so
Debug/bin/logging_test: Debug/libs/libzcrypt.so
Debug/bin/logging_test: /usr/lib/x86_64-linux-gnu/libz.so
Debug/bin/logging_test: Debug/libs/libeclrtl.so
Debug/bin/logging_test: Debug/libs/libnbcd.so
Debug/bin/logging_test: /usr/lib/x86_64-linux-gnu/libboost_regex.so
Debug/bin/logging_test: Debug/libs/libroxiemem.so
Debug/bin/logging_test: Debug/libs/libjlib.so
Debug/bin/logging_test: Debug/libs/liblzma.a
Debug/bin/logging_test: Debug/libs/liblz4.a
Debug/bin/logging_test: Debug/libs/liblibbase58.a
Debug/bin/logging_test: /usr/lib/x86_64-linux-gnu/libssl.so
Debug/bin/logging_test: /usr/lib/x86_64-linux-gnu/libcrypto.so
Debug/bin/logging_test: system/tbb_sm/linux_intel64_gcc_cc7_libc2.27_kernel4.15.0_release/libtbb.so.2
Debug/bin/logging_test: /usr/lib/x86_64-linux-gnu/libicui18n.so
Debug/bin/logging_test: /usr/lib/x86_64-linux-gnu/libicuuc.so
Debug/bin/logging_test: /usr/lib/x86_64-linux-gnu/libicudata.so
Debug/bin/logging_test: /usr/lib/x86_64-linux-gnu/libldap_r.so
Debug/bin/logging_test: /usr/lib/x86_64-linux-gnu/liblber.so
Debug/bin/logging_test: esp/logging/test/CMakeFiles/logging_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sathvik/hpcc/HPCC-Platform/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable ../../../Debug/bin/logging_test"
	cd /home/sathvik/hpcc/HPCC-Platform/build/esp/logging/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/logging_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
esp/logging/test/CMakeFiles/logging_test.dir/build: Debug/bin/logging_test

.PHONY : esp/logging/test/CMakeFiles/logging_test.dir/build

esp/logging/test/CMakeFiles/logging_test.dir/clean:
	cd /home/sathvik/hpcc/HPCC-Platform/build/esp/logging/test && $(CMAKE_COMMAND) -P CMakeFiles/logging_test.dir/cmake_clean.cmake
.PHONY : esp/logging/test/CMakeFiles/logging_test.dir/clean

esp/logging/test/CMakeFiles/logging_test.dir/depend:
	cd /home/sathvik/hpcc/HPCC-Platform/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sathvik/hpcc/HPCC-Platform /home/sathvik/hpcc/HPCC-Platform/esp/logging/test /home/sathvik/hpcc/HPCC-Platform/build /home/sathvik/hpcc/HPCC-Platform/build/esp/logging/test /home/sathvik/hpcc/HPCC-Platform/build/esp/logging/test/CMakeFiles/logging_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : esp/logging/test/CMakeFiles/logging_test.dir/depend

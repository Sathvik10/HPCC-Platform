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
include thorlcr/slave/CMakeFiles/thorslave_lcr.dir/depend.make

# Include the progress variables for this target.
include thorlcr/slave/CMakeFiles/thorslave_lcr.dir/progress.make

# Include the compile flags for this target's objects.
include thorlcr/slave/CMakeFiles/thorslave_lcr.dir/flags.make

thorlcr/slave/CMakeFiles/thorslave_lcr.dir/backup.cpp.o: thorlcr/slave/CMakeFiles/thorslave_lcr.dir/flags.make
thorlcr/slave/CMakeFiles/thorslave_lcr.dir/backup.cpp.o: ../thorlcr/slave/backup.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sathvik/hpcc/HPCC-Platform/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object thorlcr/slave/CMakeFiles/thorslave_lcr.dir/backup.cpp.o"
	cd /home/sathvik/hpcc/HPCC-Platform/build/thorlcr/slave && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/thorslave_lcr.dir/backup.cpp.o -c /home/sathvik/hpcc/HPCC-Platform/thorlcr/slave/backup.cpp

thorlcr/slave/CMakeFiles/thorslave_lcr.dir/backup.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/thorslave_lcr.dir/backup.cpp.i"
	cd /home/sathvik/hpcc/HPCC-Platform/build/thorlcr/slave && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sathvik/hpcc/HPCC-Platform/thorlcr/slave/backup.cpp > CMakeFiles/thorslave_lcr.dir/backup.cpp.i

thorlcr/slave/CMakeFiles/thorslave_lcr.dir/backup.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/thorslave_lcr.dir/backup.cpp.s"
	cd /home/sathvik/hpcc/HPCC-Platform/build/thorlcr/slave && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sathvik/hpcc/HPCC-Platform/thorlcr/slave/backup.cpp -o CMakeFiles/thorslave_lcr.dir/backup.cpp.s

thorlcr/slave/CMakeFiles/thorslave_lcr.dir/slavmain.cpp.o: thorlcr/slave/CMakeFiles/thorslave_lcr.dir/flags.make
thorlcr/slave/CMakeFiles/thorslave_lcr.dir/slavmain.cpp.o: ../thorlcr/slave/slavmain.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sathvik/hpcc/HPCC-Platform/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object thorlcr/slave/CMakeFiles/thorslave_lcr.dir/slavmain.cpp.o"
	cd /home/sathvik/hpcc/HPCC-Platform/build/thorlcr/slave && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/thorslave_lcr.dir/slavmain.cpp.o -c /home/sathvik/hpcc/HPCC-Platform/thorlcr/slave/slavmain.cpp

thorlcr/slave/CMakeFiles/thorslave_lcr.dir/slavmain.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/thorslave_lcr.dir/slavmain.cpp.i"
	cd /home/sathvik/hpcc/HPCC-Platform/build/thorlcr/slave && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sathvik/hpcc/HPCC-Platform/thorlcr/slave/slavmain.cpp > CMakeFiles/thorslave_lcr.dir/slavmain.cpp.i

thorlcr/slave/CMakeFiles/thorslave_lcr.dir/slavmain.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/thorslave_lcr.dir/slavmain.cpp.s"
	cd /home/sathvik/hpcc/HPCC-Platform/build/thorlcr/slave && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sathvik/hpcc/HPCC-Platform/thorlcr/slave/slavmain.cpp -o CMakeFiles/thorslave_lcr.dir/slavmain.cpp.s

thorlcr/slave/CMakeFiles/thorslave_lcr.dir/slwatchdog.cpp.o: thorlcr/slave/CMakeFiles/thorslave_lcr.dir/flags.make
thorlcr/slave/CMakeFiles/thorslave_lcr.dir/slwatchdog.cpp.o: ../thorlcr/slave/slwatchdog.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sathvik/hpcc/HPCC-Platform/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object thorlcr/slave/CMakeFiles/thorslave_lcr.dir/slwatchdog.cpp.o"
	cd /home/sathvik/hpcc/HPCC-Platform/build/thorlcr/slave && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/thorslave_lcr.dir/slwatchdog.cpp.o -c /home/sathvik/hpcc/HPCC-Platform/thorlcr/slave/slwatchdog.cpp

thorlcr/slave/CMakeFiles/thorslave_lcr.dir/slwatchdog.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/thorslave_lcr.dir/slwatchdog.cpp.i"
	cd /home/sathvik/hpcc/HPCC-Platform/build/thorlcr/slave && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sathvik/hpcc/HPCC-Platform/thorlcr/slave/slwatchdog.cpp > CMakeFiles/thorslave_lcr.dir/slwatchdog.cpp.i

thorlcr/slave/CMakeFiles/thorslave_lcr.dir/slwatchdog.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/thorslave_lcr.dir/slwatchdog.cpp.s"
	cd /home/sathvik/hpcc/HPCC-Platform/build/thorlcr/slave && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sathvik/hpcc/HPCC-Platform/thorlcr/slave/slwatchdog.cpp -o CMakeFiles/thorslave_lcr.dir/slwatchdog.cpp.s

thorlcr/slave/CMakeFiles/thorslave_lcr.dir/thslavemain.cpp.o: thorlcr/slave/CMakeFiles/thorslave_lcr.dir/flags.make
thorlcr/slave/CMakeFiles/thorslave_lcr.dir/thslavemain.cpp.o: ../thorlcr/slave/thslavemain.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sathvik/hpcc/HPCC-Platform/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object thorlcr/slave/CMakeFiles/thorslave_lcr.dir/thslavemain.cpp.o"
	cd /home/sathvik/hpcc/HPCC-Platform/build/thorlcr/slave && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/thorslave_lcr.dir/thslavemain.cpp.o -c /home/sathvik/hpcc/HPCC-Platform/thorlcr/slave/thslavemain.cpp

thorlcr/slave/CMakeFiles/thorslave_lcr.dir/thslavemain.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/thorslave_lcr.dir/thslavemain.cpp.i"
	cd /home/sathvik/hpcc/HPCC-Platform/build/thorlcr/slave && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sathvik/hpcc/HPCC-Platform/thorlcr/slave/thslavemain.cpp > CMakeFiles/thorslave_lcr.dir/thslavemain.cpp.i

thorlcr/slave/CMakeFiles/thorslave_lcr.dir/thslavemain.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/thorslave_lcr.dir/thslavemain.cpp.s"
	cd /home/sathvik/hpcc/HPCC-Platform/build/thorlcr/slave && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sathvik/hpcc/HPCC-Platform/thorlcr/slave/thslavemain.cpp -o CMakeFiles/thorslave_lcr.dir/thslavemain.cpp.s

# Object files for target thorslave_lcr
thorslave_lcr_OBJECTS = \
"CMakeFiles/thorslave_lcr.dir/backup.cpp.o" \
"CMakeFiles/thorslave_lcr.dir/slavmain.cpp.o" \
"CMakeFiles/thorslave_lcr.dir/slwatchdog.cpp.o" \
"CMakeFiles/thorslave_lcr.dir/thslavemain.cpp.o"

# External object files for target thorslave_lcr
thorslave_lcr_EXTERNAL_OBJECTS =

Debug/bin/thorslave_lcr: thorlcr/slave/CMakeFiles/thorslave_lcr.dir/backup.cpp.o
Debug/bin/thorslave_lcr: thorlcr/slave/CMakeFiles/thorslave_lcr.dir/slavmain.cpp.o
Debug/bin/thorslave_lcr: thorlcr/slave/CMakeFiles/thorslave_lcr.dir/slwatchdog.cpp.o
Debug/bin/thorslave_lcr: thorlcr/slave/CMakeFiles/thorslave_lcr.dir/thslavemain.cpp.o
Debug/bin/thorslave_lcr: thorlcr/slave/CMakeFiles/thorslave_lcr.dir/build.make
Debug/bin/thorslave_lcr: Debug/libs/libactivityslaves_lcr.so
Debug/bin/thorslave_lcr: Debug/libs/libgraphslave_lcr.so
Debug/bin/thorslave_lcr: Debug/libs/libthorcodectx_lcr.so
Debug/bin/thorslave_lcr: Debug/libs/libthorsort_lcr.so
Debug/bin/thorslave_lcr: Debug/libs/libgraph_lcr.so
Debug/bin/thorslave_lcr: Debug/libs/libworkunit.so
Debug/bin/thorslave_lcr: Debug/libs/libdllserver.so
Debug/bin/thorslave_lcr: Debug/libs/libenvironment.so
Debug/bin/thorslave_lcr: Debug/libs/libthorhelper.so
Debug/bin/thorslave_lcr: Debug/libs/libdalibase.so
Debug/bin/thorslave_lcr: Debug/libs/libdafsclient.so
Debug/bin/thorslave_lcr: Debug/libs/libhrpc.a
Debug/bin/thorslave_lcr: Debug/libs/libremote.so
Debug/bin/thorslave_lcr: Debug/libs/libhql.so
Debug/bin/thorslave_lcr: Debug/libs/libdeftype.so
Debug/bin/thorslave_lcr: Debug/libs/libzcrypt.so
Debug/bin/thorslave_lcr: /usr/lib/x86_64-linux-gnu/libz.so
Debug/bin/thorslave_lcr: Debug/libs/libjhtree.so
Debug/bin/thorslave_lcr: Debug/libs/libeclrtl.so
Debug/bin/thorslave_lcr: Debug/libs/libnbcd.so
Debug/bin/thorslave_lcr: /usr/lib/x86_64-linux-gnu/libboost_regex.so
Debug/bin/thorslave_lcr: /usr/lib/x86_64-linux-gnu/libicui18n.so
Debug/bin/thorslave_lcr: /usr/lib/x86_64-linux-gnu/libicuuc.so
Debug/bin/thorslave_lcr: /usr/lib/x86_64-linux-gnu/libicudata.so
Debug/bin/thorslave_lcr: Debug/libs/libmp.so
Debug/bin/thorslave_lcr: Debug/libs/libsecuresocket.so
Debug/bin/thorslave_lcr: Debug/libs/libroxiemem.so
Debug/bin/thorslave_lcr: Debug/libs/libjlib.so
Debug/bin/thorslave_lcr: Debug/libs/liblzma.a
Debug/bin/thorslave_lcr: Debug/libs/liblz4.a
Debug/bin/thorslave_lcr: Debug/libs/liblibbase58.a
Debug/bin/thorslave_lcr: /usr/lib/x86_64-linux-gnu/libssl.so
Debug/bin/thorslave_lcr: /usr/lib/x86_64-linux-gnu/libcrypto.so
Debug/bin/thorslave_lcr: system/tbb_sm/linux_intel64_gcc_cc7_libc2.27_kernel4.15.0_release/libtbb.so.2
Debug/bin/thorslave_lcr: thorlcr/slave/CMakeFiles/thorslave_lcr.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sathvik/hpcc/HPCC-Platform/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable ../../Debug/bin/thorslave_lcr"
	cd /home/sathvik/hpcc/HPCC-Platform/build/thorlcr/slave && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/thorslave_lcr.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
thorlcr/slave/CMakeFiles/thorslave_lcr.dir/build: Debug/bin/thorslave_lcr

.PHONY : thorlcr/slave/CMakeFiles/thorslave_lcr.dir/build

thorlcr/slave/CMakeFiles/thorslave_lcr.dir/clean:
	cd /home/sathvik/hpcc/HPCC-Platform/build/thorlcr/slave && $(CMAKE_COMMAND) -P CMakeFiles/thorslave_lcr.dir/cmake_clean.cmake
.PHONY : thorlcr/slave/CMakeFiles/thorslave_lcr.dir/clean

thorlcr/slave/CMakeFiles/thorslave_lcr.dir/depend:
	cd /home/sathvik/hpcc/HPCC-Platform/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sathvik/hpcc/HPCC-Platform /home/sathvik/hpcc/HPCC-Platform/thorlcr/slave /home/sathvik/hpcc/HPCC-Platform/build /home/sathvik/hpcc/HPCC-Platform/build/thorlcr/slave /home/sathvik/hpcc/HPCC-Platform/build/thorlcr/slave/CMakeFiles/thorslave_lcr.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : thorlcr/slave/CMakeFiles/thorslave_lcr.dir/depend


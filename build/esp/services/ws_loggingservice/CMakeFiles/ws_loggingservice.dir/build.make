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
include esp/services/ws_loggingservice/CMakeFiles/ws_loggingservice.dir/depend.make

# Include the progress variables for this target.
include esp/services/ws_loggingservice/CMakeFiles/ws_loggingservice.dir/progress.make

# Include the compile flags for this target's objects.
include esp/services/ws_loggingservice/CMakeFiles/ws_loggingservice.dir/flags.make

esp/services/ws_loggingservice/CMakeFiles/ws_loggingservice.dir/__/__/__/generated/ws_loggingservice_esp.cpp.o: esp/services/ws_loggingservice/CMakeFiles/ws_loggingservice.dir/flags.make
esp/services/ws_loggingservice/CMakeFiles/ws_loggingservice.dir/__/__/__/generated/ws_loggingservice_esp.cpp.o: generated/ws_loggingservice_esp.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sathvik/hpcc/HPCC-Platform/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object esp/services/ws_loggingservice/CMakeFiles/ws_loggingservice.dir/__/__/__/generated/ws_loggingservice_esp.cpp.o"
	cd /home/sathvik/hpcc/HPCC-Platform/build/esp/services/ws_loggingservice && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ws_loggingservice.dir/__/__/__/generated/ws_loggingservice_esp.cpp.o -c /home/sathvik/hpcc/HPCC-Platform/build/generated/ws_loggingservice_esp.cpp

esp/services/ws_loggingservice/CMakeFiles/ws_loggingservice.dir/__/__/__/generated/ws_loggingservice_esp.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ws_loggingservice.dir/__/__/__/generated/ws_loggingservice_esp.cpp.i"
	cd /home/sathvik/hpcc/HPCC-Platform/build/esp/services/ws_loggingservice && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sathvik/hpcc/HPCC-Platform/build/generated/ws_loggingservice_esp.cpp > CMakeFiles/ws_loggingservice.dir/__/__/__/generated/ws_loggingservice_esp.cpp.i

esp/services/ws_loggingservice/CMakeFiles/ws_loggingservice.dir/__/__/__/generated/ws_loggingservice_esp.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ws_loggingservice.dir/__/__/__/generated/ws_loggingservice_esp.cpp.s"
	cd /home/sathvik/hpcc/HPCC-Platform/build/esp/services/ws_loggingservice && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sathvik/hpcc/HPCC-Platform/build/generated/ws_loggingservice_esp.cpp -o CMakeFiles/ws_loggingservice.dir/__/__/__/generated/ws_loggingservice_esp.cpp.s

esp/services/ws_loggingservice/CMakeFiles/ws_loggingservice.dir/loggingservice.cpp.o: esp/services/ws_loggingservice/CMakeFiles/ws_loggingservice.dir/flags.make
esp/services/ws_loggingservice/CMakeFiles/ws_loggingservice.dir/loggingservice.cpp.o: ../esp/services/ws_loggingservice/loggingservice.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sathvik/hpcc/HPCC-Platform/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object esp/services/ws_loggingservice/CMakeFiles/ws_loggingservice.dir/loggingservice.cpp.o"
	cd /home/sathvik/hpcc/HPCC-Platform/build/esp/services/ws_loggingservice && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ws_loggingservice.dir/loggingservice.cpp.o -c /home/sathvik/hpcc/HPCC-Platform/esp/services/ws_loggingservice/loggingservice.cpp

esp/services/ws_loggingservice/CMakeFiles/ws_loggingservice.dir/loggingservice.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ws_loggingservice.dir/loggingservice.cpp.i"
	cd /home/sathvik/hpcc/HPCC-Platform/build/esp/services/ws_loggingservice && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sathvik/hpcc/HPCC-Platform/esp/services/ws_loggingservice/loggingservice.cpp > CMakeFiles/ws_loggingservice.dir/loggingservice.cpp.i

esp/services/ws_loggingservice/CMakeFiles/ws_loggingservice.dir/loggingservice.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ws_loggingservice.dir/loggingservice.cpp.s"
	cd /home/sathvik/hpcc/HPCC-Platform/build/esp/services/ws_loggingservice && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sathvik/hpcc/HPCC-Platform/esp/services/ws_loggingservice/loggingservice.cpp -o CMakeFiles/ws_loggingservice.dir/loggingservice.cpp.s

esp/services/ws_loggingservice/CMakeFiles/ws_loggingservice.dir/loggingserviceplugin.cpp.o: esp/services/ws_loggingservice/CMakeFiles/ws_loggingservice.dir/flags.make
esp/services/ws_loggingservice/CMakeFiles/ws_loggingservice.dir/loggingserviceplugin.cpp.o: ../esp/services/ws_loggingservice/loggingserviceplugin.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sathvik/hpcc/HPCC-Platform/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object esp/services/ws_loggingservice/CMakeFiles/ws_loggingservice.dir/loggingserviceplugin.cpp.o"
	cd /home/sathvik/hpcc/HPCC-Platform/build/esp/services/ws_loggingservice && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ws_loggingservice.dir/loggingserviceplugin.cpp.o -c /home/sathvik/hpcc/HPCC-Platform/esp/services/ws_loggingservice/loggingserviceplugin.cpp

esp/services/ws_loggingservice/CMakeFiles/ws_loggingservice.dir/loggingserviceplugin.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ws_loggingservice.dir/loggingserviceplugin.cpp.i"
	cd /home/sathvik/hpcc/HPCC-Platform/build/esp/services/ws_loggingservice && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sathvik/hpcc/HPCC-Platform/esp/services/ws_loggingservice/loggingserviceplugin.cpp > CMakeFiles/ws_loggingservice.dir/loggingserviceplugin.cpp.i

esp/services/ws_loggingservice/CMakeFiles/ws_loggingservice.dir/loggingserviceplugin.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ws_loggingservice.dir/loggingserviceplugin.cpp.s"
	cd /home/sathvik/hpcc/HPCC-Platform/build/esp/services/ws_loggingservice && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sathvik/hpcc/HPCC-Platform/esp/services/ws_loggingservice/loggingserviceplugin.cpp -o CMakeFiles/ws_loggingservice.dir/loggingserviceplugin.cpp.s

# Object files for target ws_loggingservice
ws_loggingservice_OBJECTS = \
"CMakeFiles/ws_loggingservice.dir/__/__/__/generated/ws_loggingservice_esp.cpp.o" \
"CMakeFiles/ws_loggingservice.dir/loggingservice.cpp.o" \
"CMakeFiles/ws_loggingservice.dir/loggingserviceplugin.cpp.o"

# External object files for target ws_loggingservice
ws_loggingservice_EXTERNAL_OBJECTS =

Debug/libs/libws_loggingservice.so: esp/services/ws_loggingservice/CMakeFiles/ws_loggingservice.dir/__/__/__/generated/ws_loggingservice_esp.cpp.o
Debug/libs/libws_loggingservice.so: esp/services/ws_loggingservice/CMakeFiles/ws_loggingservice.dir/loggingservice.cpp.o
Debug/libs/libws_loggingservice.so: esp/services/ws_loggingservice/CMakeFiles/ws_loggingservice.dir/loggingserviceplugin.cpp.o
Debug/libs/libws_loggingservice.so: esp/services/ws_loggingservice/CMakeFiles/ws_loggingservice.dir/build.make
Debug/libs/libws_loggingservice.so: Debug/libs/liblogginglib.so
Debug/libs/libws_loggingservice.so: Debug/libs/libesphttp.so
Debug/libs/libws_loggingservice.so: /usr/lib/x86_64-linux-gnu/libmemcached.so
Debug/libs/libws_loggingservice.so: /usr/lib/x86_64-linux-gnu/libmemcachedutil.so
Debug/libs/libws_loggingservice.so: Debug/libs/libLdapSecurity.so
Debug/libs/libws_loggingservice.so: Debug/libs/libworkunit.so
Debug/libs/libws_loggingservice.so: Debug/libs/libdllserver.so
Debug/libs/libws_loggingservice.so: Debug/libs/libenvironment.so
Debug/libs/libws_loggingservice.so: Debug/libs/libdalibase.so
Debug/libs/libws_loggingservice.so: Debug/libs/libhrpc.a
Debug/libs/libws_loggingservice.so: Debug/libs/libdafsclient.so
Debug/libs/libws_loggingservice.so: Debug/libs/libremote.so
Debug/libs/libws_loggingservice.so: Debug/libs/libmp.so
Debug/libs/libws_loggingservice.so: Debug/libs/libjhtree.so
Debug/libs/libws_loggingservice.so: Debug/libs/libhql.so
Debug/libs/libws_loggingservice.so: Debug/libs/libdeftype.so
Debug/libs/libws_loggingservice.so: Debug/libs/libzcrypt.so
Debug/libs/libws_loggingservice.so: /usr/lib/x86_64-linux-gnu/libz.so
Debug/libs/libws_loggingservice.so: Debug/libs/libsecuresocket.so
Debug/libs/libws_loggingservice.so: Debug/libs/libeclrtl.so
Debug/libs/libws_loggingservice.so: Debug/libs/libnbcd.so
Debug/libs/libws_loggingservice.so: /usr/lib/x86_64-linux-gnu/libboost_regex.so
Debug/libs/libws_loggingservice.so: Debug/libs/libroxiemem.so
Debug/libs/libws_loggingservice.so: system/tbb_sm/linux_intel64_gcc_cc7_libc2.27_kernel4.15.0_release/libtbb.so.2
Debug/libs/libws_loggingservice.so: /usr/lib/x86_64-linux-gnu/libicui18n.so
Debug/libs/libws_loggingservice.so: /usr/lib/x86_64-linux-gnu/libicuuc.so
Debug/libs/libws_loggingservice.so: /usr/lib/x86_64-linux-gnu/libicudata.so
Debug/libs/libws_loggingservice.so: /usr/lib/x86_64-linux-gnu/libldap_r.so
Debug/libs/libws_loggingservice.so: /usr/lib/x86_64-linux-gnu/liblber.so
Debug/libs/libws_loggingservice.so: Debug/libs/libxmllib.so
Debug/libs/libws_loggingservice.so: Debug/libs/libjlib.so
Debug/libs/libws_loggingservice.so: Debug/libs/liblzma.a
Debug/libs/libws_loggingservice.so: Debug/libs/liblz4.a
Debug/libs/libws_loggingservice.so: Debug/libs/liblibbase58.a
Debug/libs/libws_loggingservice.so: /usr/lib/x86_64-linux-gnu/libssl.so
Debug/libs/libws_loggingservice.so: /usr/lib/x86_64-linux-gnu/libcrypto.so
Debug/libs/libws_loggingservice.so: /usr/lib/x86_64-linux-gnu/libxslt.so
Debug/libs/libws_loggingservice.so: /usr/lib/x86_64-linux-gnu/libexslt.so
Debug/libs/libws_loggingservice.so: /usr/lib/x86_64-linux-gnu/libxml2.so
Debug/libs/libws_loggingservice.so: esp/services/ws_loggingservice/CMakeFiles/ws_loggingservice.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sathvik/hpcc/HPCC-Platform/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX shared library ../../../Debug/libs/libws_loggingservice.so"
	cd /home/sathvik/hpcc/HPCC-Platform/build/esp/services/ws_loggingservice && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ws_loggingservice.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
esp/services/ws_loggingservice/CMakeFiles/ws_loggingservice.dir/build: Debug/libs/libws_loggingservice.so

.PHONY : esp/services/ws_loggingservice/CMakeFiles/ws_loggingservice.dir/build

esp/services/ws_loggingservice/CMakeFiles/ws_loggingservice.dir/clean:
	cd /home/sathvik/hpcc/HPCC-Platform/build/esp/services/ws_loggingservice && $(CMAKE_COMMAND) -P CMakeFiles/ws_loggingservice.dir/cmake_clean.cmake
.PHONY : esp/services/ws_loggingservice/CMakeFiles/ws_loggingservice.dir/clean

esp/services/ws_loggingservice/CMakeFiles/ws_loggingservice.dir/depend:
	cd /home/sathvik/hpcc/HPCC-Platform/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sathvik/hpcc/HPCC-Platform /home/sathvik/hpcc/HPCC-Platform/esp/services/ws_loggingservice /home/sathvik/hpcc/HPCC-Platform/build /home/sathvik/hpcc/HPCC-Platform/build/esp/services/ws_loggingservice /home/sathvik/hpcc/HPCC-Platform/build/esp/services/ws_loggingservice/CMakeFiles/ws_loggingservice.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : esp/services/ws_loggingservice/CMakeFiles/ws_loggingservice.dir/depend

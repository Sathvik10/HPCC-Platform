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
include esp/services/ws_config/CMakeFiles/ws_config.dir/depend.make

# Include the progress variables for this target.
include esp/services/ws_config/CMakeFiles/ws_config.dir/progress.make

# Include the compile flags for this target's objects.
include esp/services/ws_config/CMakeFiles/ws_config.dir/flags.make

esp/services/ws_config/CMakeFiles/ws_config.dir/__/__/__/generated/ws_config_esp.cpp.o: esp/services/ws_config/CMakeFiles/ws_config.dir/flags.make
esp/services/ws_config/CMakeFiles/ws_config.dir/__/__/__/generated/ws_config_esp.cpp.o: generated/ws_config_esp.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sathvik/hpcc/HPCC-Platform/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object esp/services/ws_config/CMakeFiles/ws_config.dir/__/__/__/generated/ws_config_esp.cpp.o"
	cd /home/sathvik/hpcc/HPCC-Platform/build/esp/services/ws_config && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ws_config.dir/__/__/__/generated/ws_config_esp.cpp.o -c /home/sathvik/hpcc/HPCC-Platform/build/generated/ws_config_esp.cpp

esp/services/ws_config/CMakeFiles/ws_config.dir/__/__/__/generated/ws_config_esp.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ws_config.dir/__/__/__/generated/ws_config_esp.cpp.i"
	cd /home/sathvik/hpcc/HPCC-Platform/build/esp/services/ws_config && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sathvik/hpcc/HPCC-Platform/build/generated/ws_config_esp.cpp > CMakeFiles/ws_config.dir/__/__/__/generated/ws_config_esp.cpp.i

esp/services/ws_config/CMakeFiles/ws_config.dir/__/__/__/generated/ws_config_esp.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ws_config.dir/__/__/__/generated/ws_config_esp.cpp.s"
	cd /home/sathvik/hpcc/HPCC-Platform/build/esp/services/ws_config && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sathvik/hpcc/HPCC-Platform/build/generated/ws_config_esp.cpp -o CMakeFiles/ws_config.dir/__/__/__/generated/ws_config_esp.cpp.s

esp/services/ws_config/CMakeFiles/ws_config.dir/ws_configPlugin.cpp.o: esp/services/ws_config/CMakeFiles/ws_config.dir/flags.make
esp/services/ws_config/CMakeFiles/ws_config.dir/ws_configPlugin.cpp.o: ../esp/services/ws_config/ws_configPlugin.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sathvik/hpcc/HPCC-Platform/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object esp/services/ws_config/CMakeFiles/ws_config.dir/ws_configPlugin.cpp.o"
	cd /home/sathvik/hpcc/HPCC-Platform/build/esp/services/ws_config && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ws_config.dir/ws_configPlugin.cpp.o -c /home/sathvik/hpcc/HPCC-Platform/esp/services/ws_config/ws_configPlugin.cpp

esp/services/ws_config/CMakeFiles/ws_config.dir/ws_configPlugin.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ws_config.dir/ws_configPlugin.cpp.i"
	cd /home/sathvik/hpcc/HPCC-Platform/build/esp/services/ws_config && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sathvik/hpcc/HPCC-Platform/esp/services/ws_config/ws_configPlugin.cpp > CMakeFiles/ws_config.dir/ws_configPlugin.cpp.i

esp/services/ws_config/CMakeFiles/ws_config.dir/ws_configPlugin.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ws_config.dir/ws_configPlugin.cpp.s"
	cd /home/sathvik/hpcc/HPCC-Platform/build/esp/services/ws_config && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sathvik/hpcc/HPCC-Platform/esp/services/ws_config/ws_configPlugin.cpp -o CMakeFiles/ws_config.dir/ws_configPlugin.cpp.s

esp/services/ws_config/CMakeFiles/ws_config.dir/ws_configService.cpp.o: esp/services/ws_config/CMakeFiles/ws_config.dir/flags.make
esp/services/ws_config/CMakeFiles/ws_config.dir/ws_configService.cpp.o: ../esp/services/ws_config/ws_configService.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sathvik/hpcc/HPCC-Platform/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object esp/services/ws_config/CMakeFiles/ws_config.dir/ws_configService.cpp.o"
	cd /home/sathvik/hpcc/HPCC-Platform/build/esp/services/ws_config && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ws_config.dir/ws_configService.cpp.o -c /home/sathvik/hpcc/HPCC-Platform/esp/services/ws_config/ws_configService.cpp

esp/services/ws_config/CMakeFiles/ws_config.dir/ws_configService.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ws_config.dir/ws_configService.cpp.i"
	cd /home/sathvik/hpcc/HPCC-Platform/build/esp/services/ws_config && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sathvik/hpcc/HPCC-Platform/esp/services/ws_config/ws_configService.cpp > CMakeFiles/ws_config.dir/ws_configService.cpp.i

esp/services/ws_config/CMakeFiles/ws_config.dir/ws_configService.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ws_config.dir/ws_configService.cpp.s"
	cd /home/sathvik/hpcc/HPCC-Platform/build/esp/services/ws_config && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sathvik/hpcc/HPCC-Platform/esp/services/ws_config/ws_configService.cpp -o CMakeFiles/ws_config.dir/ws_configService.cpp.s

# Object files for target ws_config
ws_config_OBJECTS = \
"CMakeFiles/ws_config.dir/__/__/__/generated/ws_config_esp.cpp.o" \
"CMakeFiles/ws_config.dir/ws_configPlugin.cpp.o" \
"CMakeFiles/ws_config.dir/ws_configService.cpp.o"

# External object files for target ws_config
ws_config_EXTERNAL_OBJECTS =

Debug/libs/libws_config.so: esp/services/ws_config/CMakeFiles/ws_config.dir/__/__/__/generated/ws_config_esp.cpp.o
Debug/libs/libws_config.so: esp/services/ws_config/CMakeFiles/ws_config.dir/ws_configPlugin.cpp.o
Debug/libs/libws_config.so: esp/services/ws_config/CMakeFiles/ws_config.dir/ws_configService.cpp.o
Debug/libs/libws_config.so: esp/services/ws_config/CMakeFiles/ws_config.dir/build.make
Debug/libs/libws_config.so: Debug/libs/libhrpc.a
Debug/libs/libws_config.so: Debug/libs/libesphttp.so
Debug/libs/libws_config.so: Debug/libs/libxmllib.so
Debug/libs/libws_config.so: /usr/lib/x86_64-linux-gnu/libxslt.so
Debug/libs/libws_config.so: /usr/lib/x86_64-linux-gnu/libexslt.so
Debug/libs/libws_config.so: /usr/lib/x86_64-linux-gnu/libxml2.so
Debug/libs/libws_config.so: /usr/lib/x86_64-linux-gnu/libmemcached.so
Debug/libs/libws_config.so: /usr/lib/x86_64-linux-gnu/libmemcachedutil.so
Debug/libs/libws_config.so: Debug/libs/libLdapSecurity.so
Debug/libs/libws_config.so: Debug/libs/libworkunit.so
Debug/libs/libws_config.so: Debug/libs/libdllserver.so
Debug/libs/libws_config.so: Debug/libs/libenvironment.so
Debug/libs/libws_config.so: Debug/libs/libdalibase.so
Debug/libs/libws_config.so: Debug/libs/libhrpc.a
Debug/libs/libws_config.so: Debug/libs/libdafsclient.so
Debug/libs/libws_config.so: Debug/libs/libremote.so
Debug/libs/libws_config.so: Debug/libs/libmp.so
Debug/libs/libws_config.so: Debug/libs/libjhtree.so
Debug/libs/libws_config.so: Debug/libs/libhql.so
Debug/libs/libws_config.so: Debug/libs/libdeftype.so
Debug/libs/libws_config.so: Debug/libs/libeclrtl.so
Debug/libs/libws_config.so: /usr/lib/x86_64-linux-gnu/libboost_regex.so
Debug/libs/libws_config.so: Debug/libs/libroxiemem.so
Debug/libs/libws_config.so: system/tbb_sm/linux_intel64_gcc_cc7_libc2.27_kernel4.15.0_release/libtbb.so.2
Debug/libs/libws_config.so: /usr/lib/x86_64-linux-gnu/libicui18n.so
Debug/libs/libws_config.so: /usr/lib/x86_64-linux-gnu/libicuuc.so
Debug/libs/libws_config.so: /usr/lib/x86_64-linux-gnu/libicudata.so
Debug/libs/libws_config.so: Debug/libs/libnbcd.so
Debug/libs/libws_config.so: Debug/libs/libzcrypt.so
Debug/libs/libws_config.so: Debug/libs/libsecuresocket.so
Debug/libs/libws_config.so: Debug/libs/libjlib.so
Debug/libs/libws_config.so: Debug/libs/liblzma.a
Debug/libs/libws_config.so: Debug/libs/liblz4.a
Debug/libs/libws_config.so: Debug/libs/liblibbase58.a
Debug/libs/libws_config.so: /usr/lib/x86_64-linux-gnu/libssl.so
Debug/libs/libws_config.so: /usr/lib/x86_64-linux-gnu/libcrypto.so
Debug/libs/libws_config.so: /usr/lib/x86_64-linux-gnu/libz.so
Debug/libs/libws_config.so: /usr/lib/x86_64-linux-gnu/libldap_r.so
Debug/libs/libws_config.so: /usr/lib/x86_64-linux-gnu/liblber.so
Debug/libs/libws_config.so: esp/services/ws_config/CMakeFiles/ws_config.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sathvik/hpcc/HPCC-Platform/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX shared library ../../../Debug/libs/libws_config.so"
	cd /home/sathvik/hpcc/HPCC-Platform/build/esp/services/ws_config && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ws_config.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
esp/services/ws_config/CMakeFiles/ws_config.dir/build: Debug/libs/libws_config.so

.PHONY : esp/services/ws_config/CMakeFiles/ws_config.dir/build

esp/services/ws_config/CMakeFiles/ws_config.dir/clean:
	cd /home/sathvik/hpcc/HPCC-Platform/build/esp/services/ws_config && $(CMAKE_COMMAND) -P CMakeFiles/ws_config.dir/cmake_clean.cmake
.PHONY : esp/services/ws_config/CMakeFiles/ws_config.dir/clean

esp/services/ws_config/CMakeFiles/ws_config.dir/depend:
	cd /home/sathvik/hpcc/HPCC-Platform/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sathvik/hpcc/HPCC-Platform /home/sathvik/hpcc/HPCC-Platform/esp/services/ws_config /home/sathvik/hpcc/HPCC-Platform/build /home/sathvik/hpcc/HPCC-Platform/build/esp/services/ws_config /home/sathvik/hpcc/HPCC-Platform/build/esp/services/ws_config/CMakeFiles/ws_config.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : esp/services/ws_config/CMakeFiles/ws_config.dir/depend

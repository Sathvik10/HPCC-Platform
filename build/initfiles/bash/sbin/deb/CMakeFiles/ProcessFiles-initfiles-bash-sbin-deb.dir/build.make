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

# Utility rule file for ProcessFiles-initfiles-bash-sbin-deb.

# Include the progress variables for this target.
include initfiles/bash/sbin/deb/CMakeFiles/ProcessFiles-initfiles-bash-sbin-deb.dir/progress.make

initfiles/bash/sbin/deb/CMakeFiles/ProcessFiles-initfiles-bash-sbin-deb: initfiles/bash/sbin/deb/postinst
initfiles/bash/sbin/deb/CMakeFiles/ProcessFiles-initfiles-bash-sbin-deb: initfiles/bash/sbin/deb/postrm


initfiles/bash/sbin/deb/postinst: ../initfiles/bash/sbin/deb/postinst.in
initfiles/bash/sbin/deb/postinst: Debug/bin/processor
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/sathvik/hpcc/HPCC-Platform/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating: /home/sathvik/hpcc/HPCC-Platform/build/initfiles/bash/sbin/deb/postinst"
	cd /home/sathvik/hpcc/HPCC-Platform/build/initfiles/bash/sbin/deb && ../../../../Debug/bin/processor /home/sathvik/hpcc/HPCC-Platform/build/bash-vars /home/sathvik/hpcc/HPCC-Platform/initfiles/bash/sbin/deb/postinst.in /home/sathvik/hpcc/HPCC-Platform/build/initfiles/bash/sbin/deb/postinst
	cd /home/sathvik/hpcc/HPCC-Platform/build/initfiles/bash/sbin/deb && chmod 0755 /home/sathvik/hpcc/HPCC-Platform/build/initfiles/bash/sbin/deb/postinst

initfiles/bash/sbin/deb/postrm: ../initfiles/bash/sbin/deb/postrm.in
initfiles/bash/sbin/deb/postrm: Debug/bin/processor
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/sathvik/hpcc/HPCC-Platform/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating: /home/sathvik/hpcc/HPCC-Platform/build/initfiles/bash/sbin/deb/postrm"
	cd /home/sathvik/hpcc/HPCC-Platform/build/initfiles/bash/sbin/deb && ../../../../Debug/bin/processor /home/sathvik/hpcc/HPCC-Platform/build/bash-vars /home/sathvik/hpcc/HPCC-Platform/initfiles/bash/sbin/deb/postrm.in /home/sathvik/hpcc/HPCC-Platform/build/initfiles/bash/sbin/deb/postrm
	cd /home/sathvik/hpcc/HPCC-Platform/build/initfiles/bash/sbin/deb && chmod 0755 /home/sathvik/hpcc/HPCC-Platform/build/initfiles/bash/sbin/deb/postrm

ProcessFiles-initfiles-bash-sbin-deb: initfiles/bash/sbin/deb/CMakeFiles/ProcessFiles-initfiles-bash-sbin-deb
ProcessFiles-initfiles-bash-sbin-deb: initfiles/bash/sbin/deb/postinst
ProcessFiles-initfiles-bash-sbin-deb: initfiles/bash/sbin/deb/postrm
ProcessFiles-initfiles-bash-sbin-deb: initfiles/bash/sbin/deb/CMakeFiles/ProcessFiles-initfiles-bash-sbin-deb.dir/build.make

.PHONY : ProcessFiles-initfiles-bash-sbin-deb

# Rule to build all files generated by this target.
initfiles/bash/sbin/deb/CMakeFiles/ProcessFiles-initfiles-bash-sbin-deb.dir/build: ProcessFiles-initfiles-bash-sbin-deb

.PHONY : initfiles/bash/sbin/deb/CMakeFiles/ProcessFiles-initfiles-bash-sbin-deb.dir/build

initfiles/bash/sbin/deb/CMakeFiles/ProcessFiles-initfiles-bash-sbin-deb.dir/clean:
	cd /home/sathvik/hpcc/HPCC-Platform/build/initfiles/bash/sbin/deb && $(CMAKE_COMMAND) -P CMakeFiles/ProcessFiles-initfiles-bash-sbin-deb.dir/cmake_clean.cmake
.PHONY : initfiles/bash/sbin/deb/CMakeFiles/ProcessFiles-initfiles-bash-sbin-deb.dir/clean

initfiles/bash/sbin/deb/CMakeFiles/ProcessFiles-initfiles-bash-sbin-deb.dir/depend:
	cd /home/sathvik/hpcc/HPCC-Platform/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sathvik/hpcc/HPCC-Platform /home/sathvik/hpcc/HPCC-Platform/initfiles/bash/sbin/deb /home/sathvik/hpcc/HPCC-Platform/build /home/sathvik/hpcc/HPCC-Platform/build/initfiles/bash/sbin/deb /home/sathvik/hpcc/HPCC-Platform/build/initfiles/bash/sbin/deb/CMakeFiles/ProcessFiles-initfiles-bash-sbin-deb.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : initfiles/bash/sbin/deb/CMakeFiles/ProcessFiles-initfiles-bash-sbin-deb.dir/depend


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

# Utility rule file for docbook-xsl-expand.

# Include the progress variables for this target.
include docs/resources/CMakeFiles/docbook-xsl-expand.dir/progress.make

docs/resources/CMakeFiles/docbook-xsl-expand: docs/resources/docbook-xsl.sentinel


docs/resources/docbook-xsl.sentinel: ../docs/resources/docbook-xsl.tar.bz2
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/sathvik/hpcc/HPCC-Platform/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating docbook-xsl.sentinel"
	cd /home/sathvik/hpcc/HPCC-Platform/build/docs/resources && /usr/local/bin/cmake -E tar xjf /home/sathvik/hpcc/HPCC-Platform/docs/resources/docbook-xsl.tar.bz2
	cd /home/sathvik/hpcc/HPCC-Platform/build/docs/resources && /usr/local/bin/cmake -E copy /home/sathvik/hpcc/HPCC-Platform/docs/resources/../BuildTools/pagesetup.xsl /home/sathvik/hpcc/HPCC-Platform/build/docs/resources/docbook-xsl/fo/pagesetup.xsl
	cd /home/sathvik/hpcc/HPCC-Platform/build/docs/resources && /usr/local/bin/cmake -E touch /home/sathvik/hpcc/HPCC-Platform/build/docs/resources/docbook-xsl.sentinel

docbook-xsl-expand: docs/resources/CMakeFiles/docbook-xsl-expand
docbook-xsl-expand: docs/resources/docbook-xsl.sentinel
docbook-xsl-expand: docs/resources/CMakeFiles/docbook-xsl-expand.dir/build.make

.PHONY : docbook-xsl-expand

# Rule to build all files generated by this target.
docs/resources/CMakeFiles/docbook-xsl-expand.dir/build: docbook-xsl-expand

.PHONY : docs/resources/CMakeFiles/docbook-xsl-expand.dir/build

docs/resources/CMakeFiles/docbook-xsl-expand.dir/clean:
	cd /home/sathvik/hpcc/HPCC-Platform/build/docs/resources && $(CMAKE_COMMAND) -P CMakeFiles/docbook-xsl-expand.dir/cmake_clean.cmake
.PHONY : docs/resources/CMakeFiles/docbook-xsl-expand.dir/clean

docs/resources/CMakeFiles/docbook-xsl-expand.dir/depend:
	cd /home/sathvik/hpcc/HPCC-Platform/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sathvik/hpcc/HPCC-Platform /home/sathvik/hpcc/HPCC-Platform/docs/resources /home/sathvik/hpcc/HPCC-Platform/build /home/sathvik/hpcc/HPCC-Platform/build/docs/resources /home/sathvik/hpcc/HPCC-Platform/build/docs/resources/CMakeFiles/docbook-xsl-expand.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : docs/resources/CMakeFiles/docbook-xsl-expand.dir/depend

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

# Utility rule file for Metaphone3-ecl.

# Include the progress variables for this target.
include ecllibrary/std/CMakeFiles/Metaphone3-ecl.dir/progress.make

ecllibrary/std/CMakeFiles/Metaphone3-ecl: ecllibrary/std/Metaphone3.ecl


ecllibrary/std/Metaphone3.ecl: ../ecllibrary/std/Metaphone3.ecl
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/sathvik/hpcc/HPCC-Platform/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Adding unsigned Metaphone3.ecl to project"
	cd /home/sathvik/hpcc/HPCC-Platform/ecllibrary/std && /usr/local/bin/cmake -E copy /home/sathvik/hpcc/HPCC-Platform/ecllibrary/std/Metaphone3.ecl /home/sathvik/hpcc/HPCC-Platform/build/ecllibrary/std/Metaphone3.ecl

Metaphone3-ecl: ecllibrary/std/CMakeFiles/Metaphone3-ecl
Metaphone3-ecl: ecllibrary/std/Metaphone3.ecl
Metaphone3-ecl: ecllibrary/std/CMakeFiles/Metaphone3-ecl.dir/build.make

.PHONY : Metaphone3-ecl

# Rule to build all files generated by this target.
ecllibrary/std/CMakeFiles/Metaphone3-ecl.dir/build: Metaphone3-ecl

.PHONY : ecllibrary/std/CMakeFiles/Metaphone3-ecl.dir/build

ecllibrary/std/CMakeFiles/Metaphone3-ecl.dir/clean:
	cd /home/sathvik/hpcc/HPCC-Platform/build/ecllibrary/std && $(CMAKE_COMMAND) -P CMakeFiles/Metaphone3-ecl.dir/cmake_clean.cmake
.PHONY : ecllibrary/std/CMakeFiles/Metaphone3-ecl.dir/clean

ecllibrary/std/CMakeFiles/Metaphone3-ecl.dir/depend:
	cd /home/sathvik/hpcc/HPCC-Platform/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sathvik/hpcc/HPCC-Platform /home/sathvik/hpcc/HPCC-Platform/ecllibrary/std /home/sathvik/hpcc/HPCC-Platform/build /home/sathvik/hpcc/HPCC-Platform/build/ecllibrary/std /home/sathvik/hpcc/HPCC-Platform/build/ecllibrary/std/CMakeFiles/Metaphone3-ecl.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ecllibrary/std/CMakeFiles/Metaphone3-ecl.dir/depend


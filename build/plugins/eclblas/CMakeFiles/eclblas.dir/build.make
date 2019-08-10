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
include plugins/eclblas/CMakeFiles/eclblas.dir/depend.make

# Include the progress variables for this target.
include plugins/eclblas/CMakeFiles/eclblas.dir/progress.make

# Include the compile flags for this target's objects.
include plugins/eclblas/CMakeFiles/eclblas.dir/flags.make

plugins/eclblas/CMakeFiles/eclblas.dir/dasum.cpp.o: plugins/eclblas/CMakeFiles/eclblas.dir/flags.make
plugins/eclblas/CMakeFiles/eclblas.dir/dasum.cpp.o: ../plugins/eclblas/dasum.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sathvik/hpcc/HPCC-Platform/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object plugins/eclblas/CMakeFiles/eclblas.dir/dasum.cpp.o"
	cd /home/sathvik/hpcc/HPCC-Platform/build/plugins/eclblas && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/eclblas.dir/dasum.cpp.o -c /home/sathvik/hpcc/HPCC-Platform/plugins/eclblas/dasum.cpp

plugins/eclblas/CMakeFiles/eclblas.dir/dasum.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/eclblas.dir/dasum.cpp.i"
	cd /home/sathvik/hpcc/HPCC-Platform/build/plugins/eclblas && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sathvik/hpcc/HPCC-Platform/plugins/eclblas/dasum.cpp > CMakeFiles/eclblas.dir/dasum.cpp.i

plugins/eclblas/CMakeFiles/eclblas.dir/dasum.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/eclblas.dir/dasum.cpp.s"
	cd /home/sathvik/hpcc/HPCC-Platform/build/plugins/eclblas && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sathvik/hpcc/HPCC-Platform/plugins/eclblas/dasum.cpp -o CMakeFiles/eclblas.dir/dasum.cpp.s

plugins/eclblas/CMakeFiles/eclblas.dir/daxpy.cpp.o: plugins/eclblas/CMakeFiles/eclblas.dir/flags.make
plugins/eclblas/CMakeFiles/eclblas.dir/daxpy.cpp.o: ../plugins/eclblas/daxpy.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sathvik/hpcc/HPCC-Platform/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object plugins/eclblas/CMakeFiles/eclblas.dir/daxpy.cpp.o"
	cd /home/sathvik/hpcc/HPCC-Platform/build/plugins/eclblas && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/eclblas.dir/daxpy.cpp.o -c /home/sathvik/hpcc/HPCC-Platform/plugins/eclblas/daxpy.cpp

plugins/eclblas/CMakeFiles/eclblas.dir/daxpy.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/eclblas.dir/daxpy.cpp.i"
	cd /home/sathvik/hpcc/HPCC-Platform/build/plugins/eclblas && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sathvik/hpcc/HPCC-Platform/plugins/eclblas/daxpy.cpp > CMakeFiles/eclblas.dir/daxpy.cpp.i

plugins/eclblas/CMakeFiles/eclblas.dir/daxpy.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/eclblas.dir/daxpy.cpp.s"
	cd /home/sathvik/hpcc/HPCC-Platform/build/plugins/eclblas && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sathvik/hpcc/HPCC-Platform/plugins/eclblas/daxpy.cpp -o CMakeFiles/eclblas.dir/daxpy.cpp.s

plugins/eclblas/CMakeFiles/eclblas.dir/dgemm.cpp.o: plugins/eclblas/CMakeFiles/eclblas.dir/flags.make
plugins/eclblas/CMakeFiles/eclblas.dir/dgemm.cpp.o: ../plugins/eclblas/dgemm.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sathvik/hpcc/HPCC-Platform/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object plugins/eclblas/CMakeFiles/eclblas.dir/dgemm.cpp.o"
	cd /home/sathvik/hpcc/HPCC-Platform/build/plugins/eclblas && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/eclblas.dir/dgemm.cpp.o -c /home/sathvik/hpcc/HPCC-Platform/plugins/eclblas/dgemm.cpp

plugins/eclblas/CMakeFiles/eclblas.dir/dgemm.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/eclblas.dir/dgemm.cpp.i"
	cd /home/sathvik/hpcc/HPCC-Platform/build/plugins/eclblas && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sathvik/hpcc/HPCC-Platform/plugins/eclblas/dgemm.cpp > CMakeFiles/eclblas.dir/dgemm.cpp.i

plugins/eclblas/CMakeFiles/eclblas.dir/dgemm.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/eclblas.dir/dgemm.cpp.s"
	cd /home/sathvik/hpcc/HPCC-Platform/build/plugins/eclblas && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sathvik/hpcc/HPCC-Platform/plugins/eclblas/dgemm.cpp -o CMakeFiles/eclblas.dir/dgemm.cpp.s

plugins/eclblas/CMakeFiles/eclblas.dir/dgetf2.cpp.o: plugins/eclblas/CMakeFiles/eclblas.dir/flags.make
plugins/eclblas/CMakeFiles/eclblas.dir/dgetf2.cpp.o: ../plugins/eclblas/dgetf2.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sathvik/hpcc/HPCC-Platform/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object plugins/eclblas/CMakeFiles/eclblas.dir/dgetf2.cpp.o"
	cd /home/sathvik/hpcc/HPCC-Platform/build/plugins/eclblas && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/eclblas.dir/dgetf2.cpp.o -c /home/sathvik/hpcc/HPCC-Platform/plugins/eclblas/dgetf2.cpp

plugins/eclblas/CMakeFiles/eclblas.dir/dgetf2.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/eclblas.dir/dgetf2.cpp.i"
	cd /home/sathvik/hpcc/HPCC-Platform/build/plugins/eclblas && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sathvik/hpcc/HPCC-Platform/plugins/eclblas/dgetf2.cpp > CMakeFiles/eclblas.dir/dgetf2.cpp.i

plugins/eclblas/CMakeFiles/eclblas.dir/dgetf2.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/eclblas.dir/dgetf2.cpp.s"
	cd /home/sathvik/hpcc/HPCC-Platform/build/plugins/eclblas && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sathvik/hpcc/HPCC-Platform/plugins/eclblas/dgetf2.cpp -o CMakeFiles/eclblas.dir/dgetf2.cpp.s

plugins/eclblas/CMakeFiles/eclblas.dir/dpotf2.cpp.o: plugins/eclblas/CMakeFiles/eclblas.dir/flags.make
plugins/eclblas/CMakeFiles/eclblas.dir/dpotf2.cpp.o: ../plugins/eclblas/dpotf2.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sathvik/hpcc/HPCC-Platform/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object plugins/eclblas/CMakeFiles/eclblas.dir/dpotf2.cpp.o"
	cd /home/sathvik/hpcc/HPCC-Platform/build/plugins/eclblas && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/eclblas.dir/dpotf2.cpp.o -c /home/sathvik/hpcc/HPCC-Platform/plugins/eclblas/dpotf2.cpp

plugins/eclblas/CMakeFiles/eclblas.dir/dpotf2.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/eclblas.dir/dpotf2.cpp.i"
	cd /home/sathvik/hpcc/HPCC-Platform/build/plugins/eclblas && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sathvik/hpcc/HPCC-Platform/plugins/eclblas/dpotf2.cpp > CMakeFiles/eclblas.dir/dpotf2.cpp.i

plugins/eclblas/CMakeFiles/eclblas.dir/dpotf2.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/eclblas.dir/dpotf2.cpp.s"
	cd /home/sathvik/hpcc/HPCC-Platform/build/plugins/eclblas && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sathvik/hpcc/HPCC-Platform/plugins/eclblas/dpotf2.cpp -o CMakeFiles/eclblas.dir/dpotf2.cpp.s

plugins/eclblas/CMakeFiles/eclblas.dir/dscal.cpp.o: plugins/eclblas/CMakeFiles/eclblas.dir/flags.make
plugins/eclblas/CMakeFiles/eclblas.dir/dscal.cpp.o: ../plugins/eclblas/dscal.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sathvik/hpcc/HPCC-Platform/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object plugins/eclblas/CMakeFiles/eclblas.dir/dscal.cpp.o"
	cd /home/sathvik/hpcc/HPCC-Platform/build/plugins/eclblas && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/eclblas.dir/dscal.cpp.o -c /home/sathvik/hpcc/HPCC-Platform/plugins/eclblas/dscal.cpp

plugins/eclblas/CMakeFiles/eclblas.dir/dscal.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/eclblas.dir/dscal.cpp.i"
	cd /home/sathvik/hpcc/HPCC-Platform/build/plugins/eclblas && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sathvik/hpcc/HPCC-Platform/plugins/eclblas/dscal.cpp > CMakeFiles/eclblas.dir/dscal.cpp.i

plugins/eclblas/CMakeFiles/eclblas.dir/dscal.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/eclblas.dir/dscal.cpp.s"
	cd /home/sathvik/hpcc/HPCC-Platform/build/plugins/eclblas && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sathvik/hpcc/HPCC-Platform/plugins/eclblas/dscal.cpp -o CMakeFiles/eclblas.dir/dscal.cpp.s

plugins/eclblas/CMakeFiles/eclblas.dir/dsyrk.cpp.o: plugins/eclblas/CMakeFiles/eclblas.dir/flags.make
plugins/eclblas/CMakeFiles/eclblas.dir/dsyrk.cpp.o: ../plugins/eclblas/dsyrk.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sathvik/hpcc/HPCC-Platform/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object plugins/eclblas/CMakeFiles/eclblas.dir/dsyrk.cpp.o"
	cd /home/sathvik/hpcc/HPCC-Platform/build/plugins/eclblas && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/eclblas.dir/dsyrk.cpp.o -c /home/sathvik/hpcc/HPCC-Platform/plugins/eclblas/dsyrk.cpp

plugins/eclblas/CMakeFiles/eclblas.dir/dsyrk.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/eclblas.dir/dsyrk.cpp.i"
	cd /home/sathvik/hpcc/HPCC-Platform/build/plugins/eclblas && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sathvik/hpcc/HPCC-Platform/plugins/eclblas/dsyrk.cpp > CMakeFiles/eclblas.dir/dsyrk.cpp.i

plugins/eclblas/CMakeFiles/eclblas.dir/dsyrk.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/eclblas.dir/dsyrk.cpp.s"
	cd /home/sathvik/hpcc/HPCC-Platform/build/plugins/eclblas && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sathvik/hpcc/HPCC-Platform/plugins/eclblas/dsyrk.cpp -o CMakeFiles/eclblas.dir/dsyrk.cpp.s

plugins/eclblas/CMakeFiles/eclblas.dir/dtrsm.cpp.o: plugins/eclblas/CMakeFiles/eclblas.dir/flags.make
plugins/eclblas/CMakeFiles/eclblas.dir/dtrsm.cpp.o: ../plugins/eclblas/dtrsm.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sathvik/hpcc/HPCC-Platform/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object plugins/eclblas/CMakeFiles/eclblas.dir/dtrsm.cpp.o"
	cd /home/sathvik/hpcc/HPCC-Platform/build/plugins/eclblas && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/eclblas.dir/dtrsm.cpp.o -c /home/sathvik/hpcc/HPCC-Platform/plugins/eclblas/dtrsm.cpp

plugins/eclblas/CMakeFiles/eclblas.dir/dtrsm.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/eclblas.dir/dtrsm.cpp.i"
	cd /home/sathvik/hpcc/HPCC-Platform/build/plugins/eclblas && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sathvik/hpcc/HPCC-Platform/plugins/eclblas/dtrsm.cpp > CMakeFiles/eclblas.dir/dtrsm.cpp.i

plugins/eclblas/CMakeFiles/eclblas.dir/dtrsm.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/eclblas.dir/dtrsm.cpp.s"
	cd /home/sathvik/hpcc/HPCC-Platform/build/plugins/eclblas && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sathvik/hpcc/HPCC-Platform/plugins/eclblas/dtrsm.cpp -o CMakeFiles/eclblas.dir/dtrsm.cpp.s

plugins/eclblas/CMakeFiles/eclblas.dir/eclblas.cpp.o: plugins/eclblas/CMakeFiles/eclblas.dir/flags.make
plugins/eclblas/CMakeFiles/eclblas.dir/eclblas.cpp.o: ../plugins/eclblas/eclblas.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sathvik/hpcc/HPCC-Platform/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object plugins/eclblas/CMakeFiles/eclblas.dir/eclblas.cpp.o"
	cd /home/sathvik/hpcc/HPCC-Platform/build/plugins/eclblas && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/eclblas.dir/eclblas.cpp.o -c /home/sathvik/hpcc/HPCC-Platform/plugins/eclblas/eclblas.cpp

plugins/eclblas/CMakeFiles/eclblas.dir/eclblas.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/eclblas.dir/eclblas.cpp.i"
	cd /home/sathvik/hpcc/HPCC-Platform/build/plugins/eclblas && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sathvik/hpcc/HPCC-Platform/plugins/eclblas/eclblas.cpp > CMakeFiles/eclblas.dir/eclblas.cpp.i

plugins/eclblas/CMakeFiles/eclblas.dir/eclblas.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/eclblas.dir/eclblas.cpp.s"
	cd /home/sathvik/hpcc/HPCC-Platform/build/plugins/eclblas && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sathvik/hpcc/HPCC-Platform/plugins/eclblas/eclblas.cpp -o CMakeFiles/eclblas.dir/eclblas.cpp.s

plugins/eclblas/CMakeFiles/eclblas.dir/extract_tri.cpp.o: plugins/eclblas/CMakeFiles/eclblas.dir/flags.make
plugins/eclblas/CMakeFiles/eclblas.dir/extract_tri.cpp.o: ../plugins/eclblas/extract_tri.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sathvik/hpcc/HPCC-Platform/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object plugins/eclblas/CMakeFiles/eclblas.dir/extract_tri.cpp.o"
	cd /home/sathvik/hpcc/HPCC-Platform/build/plugins/eclblas && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/eclblas.dir/extract_tri.cpp.o -c /home/sathvik/hpcc/HPCC-Platform/plugins/eclblas/extract_tri.cpp

plugins/eclblas/CMakeFiles/eclblas.dir/extract_tri.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/eclblas.dir/extract_tri.cpp.i"
	cd /home/sathvik/hpcc/HPCC-Platform/build/plugins/eclblas && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sathvik/hpcc/HPCC-Platform/plugins/eclblas/extract_tri.cpp > CMakeFiles/eclblas.dir/extract_tri.cpp.i

plugins/eclblas/CMakeFiles/eclblas.dir/extract_tri.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/eclblas.dir/extract_tri.cpp.s"
	cd /home/sathvik/hpcc/HPCC-Platform/build/plugins/eclblas && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sathvik/hpcc/HPCC-Platform/plugins/eclblas/extract_tri.cpp -o CMakeFiles/eclblas.dir/extract_tri.cpp.s

plugins/eclblas/CMakeFiles/eclblas.dir/make_diag.cpp.o: plugins/eclblas/CMakeFiles/eclblas.dir/flags.make
plugins/eclblas/CMakeFiles/eclblas.dir/make_diag.cpp.o: ../plugins/eclblas/make_diag.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sathvik/hpcc/HPCC-Platform/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object plugins/eclblas/CMakeFiles/eclblas.dir/make_diag.cpp.o"
	cd /home/sathvik/hpcc/HPCC-Platform/build/plugins/eclblas && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/eclblas.dir/make_diag.cpp.o -c /home/sathvik/hpcc/HPCC-Platform/plugins/eclblas/make_diag.cpp

plugins/eclblas/CMakeFiles/eclblas.dir/make_diag.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/eclblas.dir/make_diag.cpp.i"
	cd /home/sathvik/hpcc/HPCC-Platform/build/plugins/eclblas && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sathvik/hpcc/HPCC-Platform/plugins/eclblas/make_diag.cpp > CMakeFiles/eclblas.dir/make_diag.cpp.i

plugins/eclblas/CMakeFiles/eclblas.dir/make_diag.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/eclblas.dir/make_diag.cpp.s"
	cd /home/sathvik/hpcc/HPCC-Platform/build/plugins/eclblas && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sathvik/hpcc/HPCC-Platform/plugins/eclblas/make_diag.cpp -o CMakeFiles/eclblas.dir/make_diag.cpp.s

# Object files for target eclblas
eclblas_OBJECTS = \
"CMakeFiles/eclblas.dir/dasum.cpp.o" \
"CMakeFiles/eclblas.dir/daxpy.cpp.o" \
"CMakeFiles/eclblas.dir/dgemm.cpp.o" \
"CMakeFiles/eclblas.dir/dgetf2.cpp.o" \
"CMakeFiles/eclblas.dir/dpotf2.cpp.o" \
"CMakeFiles/eclblas.dir/dscal.cpp.o" \
"CMakeFiles/eclblas.dir/dsyrk.cpp.o" \
"CMakeFiles/eclblas.dir/dtrsm.cpp.o" \
"CMakeFiles/eclblas.dir/eclblas.cpp.o" \
"CMakeFiles/eclblas.dir/extract_tri.cpp.o" \
"CMakeFiles/eclblas.dir/make_diag.cpp.o"

# External object files for target eclblas
eclblas_EXTERNAL_OBJECTS =

Debug/libs/libeclblas.so: plugins/eclblas/CMakeFiles/eclblas.dir/dasum.cpp.o
Debug/libs/libeclblas.so: plugins/eclblas/CMakeFiles/eclblas.dir/daxpy.cpp.o
Debug/libs/libeclblas.so: plugins/eclblas/CMakeFiles/eclblas.dir/dgemm.cpp.o
Debug/libs/libeclblas.so: plugins/eclblas/CMakeFiles/eclblas.dir/dgetf2.cpp.o
Debug/libs/libeclblas.so: plugins/eclblas/CMakeFiles/eclblas.dir/dpotf2.cpp.o
Debug/libs/libeclblas.so: plugins/eclblas/CMakeFiles/eclblas.dir/dscal.cpp.o
Debug/libs/libeclblas.so: plugins/eclblas/CMakeFiles/eclblas.dir/dsyrk.cpp.o
Debug/libs/libeclblas.so: plugins/eclblas/CMakeFiles/eclblas.dir/dtrsm.cpp.o
Debug/libs/libeclblas.so: plugins/eclblas/CMakeFiles/eclblas.dir/eclblas.cpp.o
Debug/libs/libeclblas.so: plugins/eclblas/CMakeFiles/eclblas.dir/extract_tri.cpp.o
Debug/libs/libeclblas.so: plugins/eclblas/CMakeFiles/eclblas.dir/make_diag.cpp.o
Debug/libs/libeclblas.so: plugins/eclblas/CMakeFiles/eclblas.dir/build.make
Debug/libs/libeclblas.so: Debug/libs/libeclrtl.so
Debug/libs/libeclblas.so: /usr/lib/x86_64-linux-gnu/libcblas.so
Debug/libs/libeclblas.so: /usr/lib/x86_64-linux-gnu/libboost_regex.so
Debug/libs/libeclblas.so: Debug/libs/libnbcd.so
Debug/libs/libeclblas.so: Debug/libs/libroxiemem.so
Debug/libs/libeclblas.so: Debug/libs/libjlib.so
Debug/libs/libeclblas.so: Debug/libs/liblzma.a
Debug/libs/libeclblas.so: Debug/libs/liblz4.a
Debug/libs/libeclblas.so: Debug/libs/liblibbase58.a
Debug/libs/libeclblas.so: /usr/lib/x86_64-linux-gnu/libssl.so
Debug/libs/libeclblas.so: /usr/lib/x86_64-linux-gnu/libcrypto.so
Debug/libs/libeclblas.so: system/tbb_sm/linux_intel64_gcc_cc7_libc2.27_kernel4.15.0_release/libtbb.so.2
Debug/libs/libeclblas.so: /usr/lib/x86_64-linux-gnu/libicui18n.so
Debug/libs/libeclblas.so: /usr/lib/x86_64-linux-gnu/libicuuc.so
Debug/libs/libeclblas.so: /usr/lib/x86_64-linux-gnu/libicudata.so
Debug/libs/libeclblas.so: plugins/eclblas/CMakeFiles/eclblas.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sathvik/hpcc/HPCC-Platform/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Linking CXX shared library ../../Debug/libs/libeclblas.so"
	cd /home/sathvik/hpcc/HPCC-Platform/build/plugins/eclblas && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/eclblas.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
plugins/eclblas/CMakeFiles/eclblas.dir/build: Debug/libs/libeclblas.so

.PHONY : plugins/eclblas/CMakeFiles/eclblas.dir/build

plugins/eclblas/CMakeFiles/eclblas.dir/clean:
	cd /home/sathvik/hpcc/HPCC-Platform/build/plugins/eclblas && $(CMAKE_COMMAND) -P CMakeFiles/eclblas.dir/cmake_clean.cmake
.PHONY : plugins/eclblas/CMakeFiles/eclblas.dir/clean

plugins/eclblas/CMakeFiles/eclblas.dir/depend:
	cd /home/sathvik/hpcc/HPCC-Platform/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sathvik/hpcc/HPCC-Platform /home/sathvik/hpcc/HPCC-Platform/plugins/eclblas /home/sathvik/hpcc/HPCC-Platform/build /home/sathvik/hpcc/HPCC-Platform/build/plugins/eclblas /home/sathvik/hpcc/HPCC-Platform/build/plugins/eclblas/CMakeFiles/eclblas.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : plugins/eclblas/CMakeFiles/eclblas.dir/depend

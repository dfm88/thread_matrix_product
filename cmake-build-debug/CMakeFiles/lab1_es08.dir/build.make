# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

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
CMAKE_COMMAND = /usr/share/cmake-3.15/bin/cmake

# The command to remove a file.
RM = /usr/share/cmake-3.15/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /mnt/c/Users/diego/CLionProjects/lab1_es08

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/c/Users/diego/CLionProjects/lab1_es08/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/lab1_es08.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/lab1_es08.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/lab1_es08.dir/flags.make

CMakeFiles/lab1_es08.dir/main.c.o: CMakeFiles/lab1_es08.dir/flags.make
CMakeFiles/lab1_es08.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/diego/CLionProjects/lab1_es08/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/lab1_es08.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/lab1_es08.dir/main.c.o   -c /mnt/c/Users/diego/CLionProjects/lab1_es08/main.c

CMakeFiles/lab1_es08.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lab1_es08.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/Users/diego/CLionProjects/lab1_es08/main.c > CMakeFiles/lab1_es08.dir/main.c.i

CMakeFiles/lab1_es08.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lab1_es08.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/Users/diego/CLionProjects/lab1_es08/main.c -o CMakeFiles/lab1_es08.dir/main.c.s

# Object files for target lab1_es08
lab1_es08_OBJECTS = \
"CMakeFiles/lab1_es08.dir/main.c.o"

# External object files for target lab1_es08
lab1_es08_EXTERNAL_OBJECTS =

lab1_es08: CMakeFiles/lab1_es08.dir/main.c.o
lab1_es08: CMakeFiles/lab1_es08.dir/build.make
lab1_es08: CMakeFiles/lab1_es08.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/c/Users/diego/CLionProjects/lab1_es08/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable lab1_es08"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lab1_es08.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/lab1_es08.dir/build: lab1_es08

.PHONY : CMakeFiles/lab1_es08.dir/build

CMakeFiles/lab1_es08.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/lab1_es08.dir/cmake_clean.cmake
.PHONY : CMakeFiles/lab1_es08.dir/clean

CMakeFiles/lab1_es08.dir/depend:
	cd /mnt/c/Users/diego/CLionProjects/lab1_es08/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/Users/diego/CLionProjects/lab1_es08 /mnt/c/Users/diego/CLionProjects/lab1_es08 /mnt/c/Users/diego/CLionProjects/lab1_es08/cmake-build-debug /mnt/c/Users/diego/CLionProjects/lab1_es08/cmake-build-debug /mnt/c/Users/diego/CLionProjects/lab1_es08/cmake-build-debug/CMakeFiles/lab1_es08.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/lab1_es08.dir/depend


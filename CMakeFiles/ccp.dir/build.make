# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.0

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /hshare

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /hshare

# Include any dependencies generated for this target.
include CMakeFiles/ccp.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ccp.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ccp.dir/flags.make

CMakeFiles/ccp.dir/ccp.c.o: CMakeFiles/ccp.dir/flags.make
CMakeFiles/ccp.dir/ccp.c.o: ccp.c
	$(CMAKE_COMMAND) -E cmake_progress_report /hshare/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/ccp.dir/ccp.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/ccp.dir/ccp.c.o   -c /hshare/ccp.c

CMakeFiles/ccp.dir/ccp.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ccp.dir/ccp.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /hshare/ccp.c > CMakeFiles/ccp.dir/ccp.c.i

CMakeFiles/ccp.dir/ccp.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ccp.dir/ccp.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /hshare/ccp.c -o CMakeFiles/ccp.dir/ccp.c.s

CMakeFiles/ccp.dir/ccp.c.o.requires:
.PHONY : CMakeFiles/ccp.dir/ccp.c.o.requires

CMakeFiles/ccp.dir/ccp.c.o.provides: CMakeFiles/ccp.dir/ccp.c.o.requires
	$(MAKE) -f CMakeFiles/ccp.dir/build.make CMakeFiles/ccp.dir/ccp.c.o.provides.build
.PHONY : CMakeFiles/ccp.dir/ccp.c.o.provides

CMakeFiles/ccp.dir/ccp.c.o.provides.build: CMakeFiles/ccp.dir/ccp.c.o

# Object files for target ccp
ccp_OBJECTS = \
"CMakeFiles/ccp.dir/ccp.c.o"

# External object files for target ccp
ccp_EXTERNAL_OBJECTS =

ccp: CMakeFiles/ccp.dir/ccp.c.o
ccp: CMakeFiles/ccp.dir/build.make
ccp: CMakeFiles/ccp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable ccp"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ccp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ccp.dir/build: ccp
.PHONY : CMakeFiles/ccp.dir/build

CMakeFiles/ccp.dir/requires: CMakeFiles/ccp.dir/ccp.c.o.requires
.PHONY : CMakeFiles/ccp.dir/requires

CMakeFiles/ccp.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ccp.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ccp.dir/clean

CMakeFiles/ccp.dir/depend:
	cd /hshare && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /hshare /hshare /hshare /hshare /hshare/CMakeFiles/ccp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ccp.dir/depend


# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/alain/flatbuffers

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/alain/flatbuffers

# Include any dependencies generated for this target.
include CMakeFiles/flathash.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/flathash.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/flathash.dir/flags.make

CMakeFiles/flathash.dir/src/flathash.cpp.o: CMakeFiles/flathash.dir/flags.make
CMakeFiles/flathash.dir/src/flathash.cpp.o: src/flathash.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/alain/flatbuffers/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/flathash.dir/src/flathash.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/flathash.dir/src/flathash.cpp.o -c /home/alain/flatbuffers/src/flathash.cpp

CMakeFiles/flathash.dir/src/flathash.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/flathash.dir/src/flathash.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/alain/flatbuffers/src/flathash.cpp > CMakeFiles/flathash.dir/src/flathash.cpp.i

CMakeFiles/flathash.dir/src/flathash.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/flathash.dir/src/flathash.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/alain/flatbuffers/src/flathash.cpp -o CMakeFiles/flathash.dir/src/flathash.cpp.s

CMakeFiles/flathash.dir/src/flathash.cpp.o.requires:

.PHONY : CMakeFiles/flathash.dir/src/flathash.cpp.o.requires

CMakeFiles/flathash.dir/src/flathash.cpp.o.provides: CMakeFiles/flathash.dir/src/flathash.cpp.o.requires
	$(MAKE) -f CMakeFiles/flathash.dir/build.make CMakeFiles/flathash.dir/src/flathash.cpp.o.provides.build
.PHONY : CMakeFiles/flathash.dir/src/flathash.cpp.o.provides

CMakeFiles/flathash.dir/src/flathash.cpp.o.provides.build: CMakeFiles/flathash.dir/src/flathash.cpp.o


# Object files for target flathash
flathash_OBJECTS = \
"CMakeFiles/flathash.dir/src/flathash.cpp.o"

# External object files for target flathash
flathash_EXTERNAL_OBJECTS =

flathash: CMakeFiles/flathash.dir/src/flathash.cpp.o
flathash: CMakeFiles/flathash.dir/build.make
flathash: CMakeFiles/flathash.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/alain/flatbuffers/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable flathash"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/flathash.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/flathash.dir/build: flathash

.PHONY : CMakeFiles/flathash.dir/build

CMakeFiles/flathash.dir/requires: CMakeFiles/flathash.dir/src/flathash.cpp.o.requires

.PHONY : CMakeFiles/flathash.dir/requires

CMakeFiles/flathash.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/flathash.dir/cmake_clean.cmake
.PHONY : CMakeFiles/flathash.dir/clean

CMakeFiles/flathash.dir/depend:
	cd /home/alain/flatbuffers && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/alain/flatbuffers /home/alain/flatbuffers /home/alain/flatbuffers /home/alain/flatbuffers /home/alain/flatbuffers/CMakeFiles/flathash.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/flathash.dir/depend


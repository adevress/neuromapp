# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.3

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
CMAKE_COMMAND = /usr/local/cmake/3.3.0/bin/cmake

# The command to remove a file.
RM = /usr/local/cmake/3.3.0/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/ewart/Desktop/LICENCE/neuromapp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/ewart/Desktop/LICENCE/neuromapp/bc

# Include any dependencies generated for this target.
include neuromapp/hello/CMakeFiles/hello.dir/depend.make

# Include the progress variables for this target.
include neuromapp/hello/CMakeFiles/hello.dir/progress.make

# Include the compile flags for this target's objects.
include neuromapp/hello/CMakeFiles/hello.dir/flags.make

neuromapp/hello/CMakeFiles/hello.dir/main.cpp.o: neuromapp/hello/CMakeFiles/hello.dir/flags.make
neuromapp/hello/CMakeFiles/hello.dir/main.cpp.o: ../neuromapp/hello/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/ewart/Desktop/LICENCE/neuromapp/bc/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object neuromapp/hello/CMakeFiles/hello.dir/main.cpp.o"
	cd /Users/ewart/Desktop/LICENCE/neuromapp/bc/neuromapp/hello && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/hello.dir/main.cpp.o -c /Users/ewart/Desktop/LICENCE/neuromapp/neuromapp/hello/main.cpp

neuromapp/hello/CMakeFiles/hello.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hello.dir/main.cpp.i"
	cd /Users/ewart/Desktop/LICENCE/neuromapp/bc/neuromapp/hello && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/ewart/Desktop/LICENCE/neuromapp/neuromapp/hello/main.cpp > CMakeFiles/hello.dir/main.cpp.i

neuromapp/hello/CMakeFiles/hello.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hello.dir/main.cpp.s"
	cd /Users/ewart/Desktop/LICENCE/neuromapp/bc/neuromapp/hello && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/ewart/Desktop/LICENCE/neuromapp/neuromapp/hello/main.cpp -o CMakeFiles/hello.dir/main.cpp.s

neuromapp/hello/CMakeFiles/hello.dir/main.cpp.o.requires:

.PHONY : neuromapp/hello/CMakeFiles/hello.dir/main.cpp.o.requires

neuromapp/hello/CMakeFiles/hello.dir/main.cpp.o.provides: neuromapp/hello/CMakeFiles/hello.dir/main.cpp.o.requires
	$(MAKE) -f neuromapp/hello/CMakeFiles/hello.dir/build.make neuromapp/hello/CMakeFiles/hello.dir/main.cpp.o.provides.build
.PHONY : neuromapp/hello/CMakeFiles/hello.dir/main.cpp.o.provides

neuromapp/hello/CMakeFiles/hello.dir/main.cpp.o.provides.build: neuromapp/hello/CMakeFiles/hello.dir/main.cpp.o


# Object files for target hello
hello_OBJECTS = \
"CMakeFiles/hello.dir/main.cpp.o"

# External object files for target hello
hello_EXTERNAL_OBJECTS =

neuromapp/hello/libhello.a: neuromapp/hello/CMakeFiles/hello.dir/main.cpp.o
neuromapp/hello/libhello.a: neuromapp/hello/CMakeFiles/hello.dir/build.make
neuromapp/hello/libhello.a: neuromapp/hello/CMakeFiles/hello.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/ewart/Desktop/LICENCE/neuromapp/bc/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libhello.a"
	cd /Users/ewart/Desktop/LICENCE/neuromapp/bc/neuromapp/hello && $(CMAKE_COMMAND) -P CMakeFiles/hello.dir/cmake_clean_target.cmake
	cd /Users/ewart/Desktop/LICENCE/neuromapp/bc/neuromapp/hello && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/hello.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
neuromapp/hello/CMakeFiles/hello.dir/build: neuromapp/hello/libhello.a

.PHONY : neuromapp/hello/CMakeFiles/hello.dir/build

neuromapp/hello/CMakeFiles/hello.dir/requires: neuromapp/hello/CMakeFiles/hello.dir/main.cpp.o.requires

.PHONY : neuromapp/hello/CMakeFiles/hello.dir/requires

neuromapp/hello/CMakeFiles/hello.dir/clean:
	cd /Users/ewart/Desktop/LICENCE/neuromapp/bc/neuromapp/hello && $(CMAKE_COMMAND) -P CMakeFiles/hello.dir/cmake_clean.cmake
.PHONY : neuromapp/hello/CMakeFiles/hello.dir/clean

neuromapp/hello/CMakeFiles/hello.dir/depend:
	cd /Users/ewart/Desktop/LICENCE/neuromapp/bc && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/ewart/Desktop/LICENCE/neuromapp /Users/ewart/Desktop/LICENCE/neuromapp/neuromapp/hello /Users/ewart/Desktop/LICENCE/neuromapp/bc /Users/ewart/Desktop/LICENCE/neuromapp/bc/neuromapp/hello /Users/ewart/Desktop/LICENCE/neuromapp/bc/neuromapp/hello/CMakeFiles/hello.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : neuromapp/hello/CMakeFiles/hello.dir/depend


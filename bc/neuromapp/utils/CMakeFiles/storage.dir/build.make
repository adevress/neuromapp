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
include neuromapp/utils/CMakeFiles/storage.dir/depend.make

# Include the progress variables for this target.
include neuromapp/utils/CMakeFiles/storage.dir/progress.make

# Include the compile flags for this target's objects.
include neuromapp/utils/CMakeFiles/storage.dir/flags.make

neuromapp/utils/CMakeFiles/storage.dir/storage/neuromapp_data.cpp.o: neuromapp/utils/CMakeFiles/storage.dir/flags.make
neuromapp/utils/CMakeFiles/storage.dir/storage/neuromapp_data.cpp.o: ../neuromapp/utils/storage/neuromapp_data.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/ewart/Desktop/LICENCE/neuromapp/bc/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object neuromapp/utils/CMakeFiles/storage.dir/storage/neuromapp_data.cpp.o"
	cd /Users/ewart/Desktop/LICENCE/neuromapp/bc/neuromapp/utils && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/storage.dir/storage/neuromapp_data.cpp.o -c /Users/ewart/Desktop/LICENCE/neuromapp/neuromapp/utils/storage/neuromapp_data.cpp

neuromapp/utils/CMakeFiles/storage.dir/storage/neuromapp_data.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/storage.dir/storage/neuromapp_data.cpp.i"
	cd /Users/ewart/Desktop/LICENCE/neuromapp/bc/neuromapp/utils && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/ewart/Desktop/LICENCE/neuromapp/neuromapp/utils/storage/neuromapp_data.cpp > CMakeFiles/storage.dir/storage/neuromapp_data.cpp.i

neuromapp/utils/CMakeFiles/storage.dir/storage/neuromapp_data.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/storage.dir/storage/neuromapp_data.cpp.s"
	cd /Users/ewart/Desktop/LICENCE/neuromapp/bc/neuromapp/utils && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/ewart/Desktop/LICENCE/neuromapp/neuromapp/utils/storage/neuromapp_data.cpp -o CMakeFiles/storage.dir/storage/neuromapp_data.cpp.s

neuromapp/utils/CMakeFiles/storage.dir/storage/neuromapp_data.cpp.o.requires:

.PHONY : neuromapp/utils/CMakeFiles/storage.dir/storage/neuromapp_data.cpp.o.requires

neuromapp/utils/CMakeFiles/storage.dir/storage/neuromapp_data.cpp.o.provides: neuromapp/utils/CMakeFiles/storage.dir/storage/neuromapp_data.cpp.o.requires
	$(MAKE) -f neuromapp/utils/CMakeFiles/storage.dir/build.make neuromapp/utils/CMakeFiles/storage.dir/storage/neuromapp_data.cpp.o.provides.build
.PHONY : neuromapp/utils/CMakeFiles/storage.dir/storage/neuromapp_data.cpp.o.provides

neuromapp/utils/CMakeFiles/storage.dir/storage/neuromapp_data.cpp.o.provides.build: neuromapp/utils/CMakeFiles/storage.dir/storage/neuromapp_data.cpp.o


neuromapp/utils/CMakeFiles/storage.dir/storage/storage.cpp.o: neuromapp/utils/CMakeFiles/storage.dir/flags.make
neuromapp/utils/CMakeFiles/storage.dir/storage/storage.cpp.o: ../neuromapp/utils/storage/storage.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/ewart/Desktop/LICENCE/neuromapp/bc/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object neuromapp/utils/CMakeFiles/storage.dir/storage/storage.cpp.o"
	cd /Users/ewart/Desktop/LICENCE/neuromapp/bc/neuromapp/utils && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/storage.dir/storage/storage.cpp.o -c /Users/ewart/Desktop/LICENCE/neuromapp/neuromapp/utils/storage/storage.cpp

neuromapp/utils/CMakeFiles/storage.dir/storage/storage.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/storage.dir/storage/storage.cpp.i"
	cd /Users/ewart/Desktop/LICENCE/neuromapp/bc/neuromapp/utils && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/ewart/Desktop/LICENCE/neuromapp/neuromapp/utils/storage/storage.cpp > CMakeFiles/storage.dir/storage/storage.cpp.i

neuromapp/utils/CMakeFiles/storage.dir/storage/storage.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/storage.dir/storage/storage.cpp.s"
	cd /Users/ewart/Desktop/LICENCE/neuromapp/bc/neuromapp/utils && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/ewart/Desktop/LICENCE/neuromapp/neuromapp/utils/storage/storage.cpp -o CMakeFiles/storage.dir/storage/storage.cpp.s

neuromapp/utils/CMakeFiles/storage.dir/storage/storage.cpp.o.requires:

.PHONY : neuromapp/utils/CMakeFiles/storage.dir/storage/storage.cpp.o.requires

neuromapp/utils/CMakeFiles/storage.dir/storage/storage.cpp.o.provides: neuromapp/utils/CMakeFiles/storage.dir/storage/storage.cpp.o.requires
	$(MAKE) -f neuromapp/utils/CMakeFiles/storage.dir/build.make neuromapp/utils/CMakeFiles/storage.dir/storage/storage.cpp.o.provides.build
.PHONY : neuromapp/utils/CMakeFiles/storage.dir/storage/storage.cpp.o.provides

neuromapp/utils/CMakeFiles/storage.dir/storage/storage.cpp.o.provides.build: neuromapp/utils/CMakeFiles/storage.dir/storage/storage.cpp.o


# Object files for target storage
storage_OBJECTS = \
"CMakeFiles/storage.dir/storage/neuromapp_data.cpp.o" \
"CMakeFiles/storage.dir/storage/storage.cpp.o"

# External object files for target storage
storage_EXTERNAL_OBJECTS =

neuromapp/utils/libstorage.a: neuromapp/utils/CMakeFiles/storage.dir/storage/neuromapp_data.cpp.o
neuromapp/utils/libstorage.a: neuromapp/utils/CMakeFiles/storage.dir/storage/storage.cpp.o
neuromapp/utils/libstorage.a: neuromapp/utils/CMakeFiles/storage.dir/build.make
neuromapp/utils/libstorage.a: neuromapp/utils/CMakeFiles/storage.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/ewart/Desktop/LICENCE/neuromapp/bc/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library libstorage.a"
	cd /Users/ewart/Desktop/LICENCE/neuromapp/bc/neuromapp/utils && $(CMAKE_COMMAND) -P CMakeFiles/storage.dir/cmake_clean_target.cmake
	cd /Users/ewart/Desktop/LICENCE/neuromapp/bc/neuromapp/utils && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/storage.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
neuromapp/utils/CMakeFiles/storage.dir/build: neuromapp/utils/libstorage.a

.PHONY : neuromapp/utils/CMakeFiles/storage.dir/build

neuromapp/utils/CMakeFiles/storage.dir/requires: neuromapp/utils/CMakeFiles/storage.dir/storage/neuromapp_data.cpp.o.requires
neuromapp/utils/CMakeFiles/storage.dir/requires: neuromapp/utils/CMakeFiles/storage.dir/storage/storage.cpp.o.requires

.PHONY : neuromapp/utils/CMakeFiles/storage.dir/requires

neuromapp/utils/CMakeFiles/storage.dir/clean:
	cd /Users/ewart/Desktop/LICENCE/neuromapp/bc/neuromapp/utils && $(CMAKE_COMMAND) -P CMakeFiles/storage.dir/cmake_clean.cmake
.PHONY : neuromapp/utils/CMakeFiles/storage.dir/clean

neuromapp/utils/CMakeFiles/storage.dir/depend:
	cd /Users/ewart/Desktop/LICENCE/neuromapp/bc && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/ewart/Desktop/LICENCE/neuromapp /Users/ewart/Desktop/LICENCE/neuromapp/neuromapp/utils /Users/ewart/Desktop/LICENCE/neuromapp/bc /Users/ewart/Desktop/LICENCE/neuromapp/bc/neuromapp/utils /Users/ewart/Desktop/LICENCE/neuromapp/bc/neuromapp/utils/CMakeFiles/storage.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : neuromapp/utils/CMakeFiles/storage.dir/depend

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
CMAKE_COMMAND = /snap/clion/82/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /snap/clion/82/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/raopei/Documents/myProject/LocalNetDisk

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/raopei/Documents/myProject/LocalNetDisk/cmake-build-debug

# Include any dependencies generated for this target.
include src/CMakeFiles/LND_server.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/LND_server.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/LND_server.dir/flags.make

src/CMakeFiles/LND_server.dir/LND_server.cpp.o: src/CMakeFiles/LND_server.dir/flags.make
src/CMakeFiles/LND_server.dir/LND_server.cpp.o: ../src/LND_server.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/raopei/Documents/myProject/LocalNetDisk/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/LND_server.dir/LND_server.cpp.o"
	cd /home/raopei/Documents/myProject/LocalNetDisk/cmake-build-debug/src && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LND_server.dir/LND_server.cpp.o -c /home/raopei/Documents/myProject/LocalNetDisk/src/LND_server.cpp

src/CMakeFiles/LND_server.dir/LND_server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LND_server.dir/LND_server.cpp.i"
	cd /home/raopei/Documents/myProject/LocalNetDisk/cmake-build-debug/src && g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/raopei/Documents/myProject/LocalNetDisk/src/LND_server.cpp > CMakeFiles/LND_server.dir/LND_server.cpp.i

src/CMakeFiles/LND_server.dir/LND_server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LND_server.dir/LND_server.cpp.s"
	cd /home/raopei/Documents/myProject/LocalNetDisk/cmake-build-debug/src && g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/raopei/Documents/myProject/LocalNetDisk/src/LND_server.cpp -o CMakeFiles/LND_server.dir/LND_server.cpp.s

# Object files for target LND_server
LND_server_OBJECTS = \
"CMakeFiles/LND_server.dir/LND_server.cpp.o"

# External object files for target LND_server
LND_server_EXTERNAL_OBJECTS =

../bin/LND_server: src/CMakeFiles/LND_server.dir/LND_server.cpp.o
../bin/LND_server: src/CMakeFiles/LND_server.dir/build.make
../bin/LND_server: ../lib/libmuduo_base.a
../bin/LND_server: ../lib/libmuduo_net.a
../bin/LND_server: ../lib/libmuduo_base.a
../bin/LND_server: src/CMakeFiles/LND_server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/raopei/Documents/myProject/LocalNetDisk/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/LND_server"
	cd /home/raopei/Documents/myProject/LocalNetDisk/cmake-build-debug/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/LND_server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/LND_server.dir/build: ../bin/LND_server

.PHONY : src/CMakeFiles/LND_server.dir/build

src/CMakeFiles/LND_server.dir/clean:
	cd /home/raopei/Documents/myProject/LocalNetDisk/cmake-build-debug/src && $(CMAKE_COMMAND) -P CMakeFiles/LND_server.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/LND_server.dir/clean

src/CMakeFiles/LND_server.dir/depend:
	cd /home/raopei/Documents/myProject/LocalNetDisk/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/raopei/Documents/myProject/LocalNetDisk /home/raopei/Documents/myProject/LocalNetDisk/src /home/raopei/Documents/myProject/LocalNetDisk/cmake-build-debug /home/raopei/Documents/myProject/LocalNetDisk/cmake-build-debug/src /home/raopei/Documents/myProject/LocalNetDisk/cmake-build-debug/src/CMakeFiles/LND_server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/LND_server.dir/depend


# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /home/kai/catkin_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kai/catkin_ws/build

# Include any dependencies generated for this target.
include Fast-3D-Pointcloud-Segmentation/CMakeFiles/clustering.dir/depend.make

# Include the progress variables for this target.
include Fast-3D-Pointcloud-Segmentation/CMakeFiles/clustering.dir/progress.make

# Include the compile flags for this target's objects.
include Fast-3D-Pointcloud-Segmentation/CMakeFiles/clustering.dir/flags.make

Fast-3D-Pointcloud-Segmentation/CMakeFiles/clustering.dir/src/clustering.cpp.o: Fast-3D-Pointcloud-Segmentation/CMakeFiles/clustering.dir/flags.make
Fast-3D-Pointcloud-Segmentation/CMakeFiles/clustering.dir/src/clustering.cpp.o: /home/kai/catkin_ws/src/Fast-3D-Pointcloud-Segmentation/src/clustering.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kai/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object Fast-3D-Pointcloud-Segmentation/CMakeFiles/clustering.dir/src/clustering.cpp.o"
	cd /home/kai/catkin_ws/build/Fast-3D-Pointcloud-Segmentation && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/clustering.dir/src/clustering.cpp.o -c /home/kai/catkin_ws/src/Fast-3D-Pointcloud-Segmentation/src/clustering.cpp

Fast-3D-Pointcloud-Segmentation/CMakeFiles/clustering.dir/src/clustering.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/clustering.dir/src/clustering.cpp.i"
	cd /home/kai/catkin_ws/build/Fast-3D-Pointcloud-Segmentation && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kai/catkin_ws/src/Fast-3D-Pointcloud-Segmentation/src/clustering.cpp > CMakeFiles/clustering.dir/src/clustering.cpp.i

Fast-3D-Pointcloud-Segmentation/CMakeFiles/clustering.dir/src/clustering.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/clustering.dir/src/clustering.cpp.s"
	cd /home/kai/catkin_ws/build/Fast-3D-Pointcloud-Segmentation && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kai/catkin_ws/src/Fast-3D-Pointcloud-Segmentation/src/clustering.cpp -o CMakeFiles/clustering.dir/src/clustering.cpp.s

# Object files for target clustering
clustering_OBJECTS = \
"CMakeFiles/clustering.dir/src/clustering.cpp.o"

# External object files for target clustering
clustering_EXTERNAL_OBJECTS =

/home/kai/catkin_ws/devel/lib/libclustering.so: Fast-3D-Pointcloud-Segmentation/CMakeFiles/clustering.dir/src/clustering.cpp.o
/home/kai/catkin_ws/devel/lib/libclustering.so: Fast-3D-Pointcloud-Segmentation/CMakeFiles/clustering.dir/build.make
/home/kai/catkin_ws/devel/lib/libclustering.so: Fast-3D-Pointcloud-Segmentation/CMakeFiles/clustering.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kai/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library /home/kai/catkin_ws/devel/lib/libclustering.so"
	cd /home/kai/catkin_ws/build/Fast-3D-Pointcloud-Segmentation && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/clustering.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Fast-3D-Pointcloud-Segmentation/CMakeFiles/clustering.dir/build: /home/kai/catkin_ws/devel/lib/libclustering.so

.PHONY : Fast-3D-Pointcloud-Segmentation/CMakeFiles/clustering.dir/build

Fast-3D-Pointcloud-Segmentation/CMakeFiles/clustering.dir/clean:
	cd /home/kai/catkin_ws/build/Fast-3D-Pointcloud-Segmentation && $(CMAKE_COMMAND) -P CMakeFiles/clustering.dir/cmake_clean.cmake
.PHONY : Fast-3D-Pointcloud-Segmentation/CMakeFiles/clustering.dir/clean

Fast-3D-Pointcloud-Segmentation/CMakeFiles/clustering.dir/depend:
	cd /home/kai/catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kai/catkin_ws/src /home/kai/catkin_ws/src/Fast-3D-Pointcloud-Segmentation /home/kai/catkin_ws/build /home/kai/catkin_ws/build/Fast-3D-Pointcloud-Segmentation /home/kai/catkin_ws/build/Fast-3D-Pointcloud-Segmentation/CMakeFiles/clustering.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Fast-3D-Pointcloud-Segmentation/CMakeFiles/clustering.dir/depend

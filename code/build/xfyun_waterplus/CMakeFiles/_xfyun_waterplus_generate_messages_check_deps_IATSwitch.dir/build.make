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
CMAKE_SOURCE_DIR = /home/watsonyang/Team203_1/code/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/watsonyang/Team203_1/code/build

# Utility rule file for _xfyun_waterplus_generate_messages_check_deps_IATSwitch.

# Include the progress variables for this target.
include xfyun_waterplus/CMakeFiles/_xfyun_waterplus_generate_messages_check_deps_IATSwitch.dir/progress.make

xfyun_waterplus/CMakeFiles/_xfyun_waterplus_generate_messages_check_deps_IATSwitch:
	cd /home/watsonyang/Team203_1/code/build/xfyun_waterplus && ../catkin_generated/env_cached.sh /usr/bin/python2 /opt/ros/kinetic/share/genmsg/cmake/../../../lib/genmsg/genmsg_check_deps.py xfyun_waterplus /home/watsonyang/Team203_1/code/src/xfyun_waterplus/srv/IATSwitch.srv 

_xfyun_waterplus_generate_messages_check_deps_IATSwitch: xfyun_waterplus/CMakeFiles/_xfyun_waterplus_generate_messages_check_deps_IATSwitch
_xfyun_waterplus_generate_messages_check_deps_IATSwitch: xfyun_waterplus/CMakeFiles/_xfyun_waterplus_generate_messages_check_deps_IATSwitch.dir/build.make

.PHONY : _xfyun_waterplus_generate_messages_check_deps_IATSwitch

# Rule to build all files generated by this target.
xfyun_waterplus/CMakeFiles/_xfyun_waterplus_generate_messages_check_deps_IATSwitch.dir/build: _xfyun_waterplus_generate_messages_check_deps_IATSwitch

.PHONY : xfyun_waterplus/CMakeFiles/_xfyun_waterplus_generate_messages_check_deps_IATSwitch.dir/build

xfyun_waterplus/CMakeFiles/_xfyun_waterplus_generate_messages_check_deps_IATSwitch.dir/clean:
	cd /home/watsonyang/Team203_1/code/build/xfyun_waterplus && $(CMAKE_COMMAND) -P CMakeFiles/_xfyun_waterplus_generate_messages_check_deps_IATSwitch.dir/cmake_clean.cmake
.PHONY : xfyun_waterplus/CMakeFiles/_xfyun_waterplus_generate_messages_check_deps_IATSwitch.dir/clean

xfyun_waterplus/CMakeFiles/_xfyun_waterplus_generate_messages_check_deps_IATSwitch.dir/depend:
	cd /home/watsonyang/Team203_1/code/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/watsonyang/Team203_1/code/src /home/watsonyang/Team203_1/code/src/xfyun_waterplus /home/watsonyang/Team203_1/code/build /home/watsonyang/Team203_1/code/build/xfyun_waterplus /home/watsonyang/Team203_1/code/build/xfyun_waterplus/CMakeFiles/_xfyun_waterplus_generate_messages_check_deps_IATSwitch.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : xfyun_waterplus/CMakeFiles/_xfyun_waterplus_generate_messages_check_deps_IATSwitch.dir/depend

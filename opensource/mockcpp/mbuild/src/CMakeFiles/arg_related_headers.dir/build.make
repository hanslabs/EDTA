# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.19

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /mnt/d/CodeProject/001_CProject/EDTA/opensource/mockcpp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/d/CodeProject/001_CProject/EDTA/opensource/mockcpp/mbuild

# Utility rule file for arg_related_headers.

# Include the progress variables for this target.
include src/CMakeFiles/arg_related_headers.dir/progress.make

src/CMakeFiles/arg_related_headers: ../include/mockcpp/DelegatedMethodDef.h
src/CMakeFiles/arg_related_headers: ../include/mockcpp/ArgumentsListDef.h
src/CMakeFiles/arg_related_headers: ../include/mockcpp/MethodTypeTraitsDef.h


../include/mockcpp/DelegatedMethodDef.h:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/mnt/d/CodeProject/001_CProject/EDTA/opensource/mockcpp/mbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating ../../include/mockcpp/DelegatedMethodDef.h"
	cd /mnt/d/CodeProject/001_CProject/EDTA/opensource/mockcpp/mbuild/src && /home/linhan/anaconda3/envs/gtest/bin/python /mnt/d/CodeProject/001_CProject/EDTA/opensource/mockcpp/src/generate_arg_related_files.py --max-parameters=12 --include-path=/mnt/d/CodeProject/001_CProject/EDTA/opensource/mockcpp/include/mockcpp DelegatedMethodDef.h

../include/mockcpp/ArgumentsListDef.h:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/mnt/d/CodeProject/001_CProject/EDTA/opensource/mockcpp/mbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating ../../include/mockcpp/ArgumentsListDef.h"
	cd /mnt/d/CodeProject/001_CProject/EDTA/opensource/mockcpp/mbuild/src && /home/linhan/anaconda3/envs/gtest/bin/python /mnt/d/CodeProject/001_CProject/EDTA/opensource/mockcpp/src/generate_arg_related_files.py --max-parameters=12 --include-path=/mnt/d/CodeProject/001_CProject/EDTA/opensource/mockcpp/include/mockcpp ArgumentsListDef.h

../include/mockcpp/MethodTypeTraitsDef.h:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/mnt/d/CodeProject/001_CProject/EDTA/opensource/mockcpp/mbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Generating ../../include/mockcpp/MethodTypeTraitsDef.h"
	cd /mnt/d/CodeProject/001_CProject/EDTA/opensource/mockcpp/mbuild/src && /home/linhan/anaconda3/envs/gtest/bin/python /mnt/d/CodeProject/001_CProject/EDTA/opensource/mockcpp/src/generate_arg_related_files.py --max-parameters=12 --include-path=/mnt/d/CodeProject/001_CProject/EDTA/opensource/mockcpp/include/mockcpp MethodTypeTraitsDef.h

arg_related_headers: ../include/mockcpp/ArgumentsListDef.h
arg_related_headers: ../include/mockcpp/DelegatedMethodDef.h
arg_related_headers: ../include/mockcpp/MethodTypeTraitsDef.h
arg_related_headers: src/CMakeFiles/arg_related_headers
arg_related_headers: src/CMakeFiles/arg_related_headers.dir/build.make

.PHONY : arg_related_headers

# Rule to build all files generated by this target.
src/CMakeFiles/arg_related_headers.dir/build: arg_related_headers

.PHONY : src/CMakeFiles/arg_related_headers.dir/build

src/CMakeFiles/arg_related_headers.dir/clean:
	cd /mnt/d/CodeProject/001_CProject/EDTA/opensource/mockcpp/mbuild/src && $(CMAKE_COMMAND) -P CMakeFiles/arg_related_headers.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/arg_related_headers.dir/clean

src/CMakeFiles/arg_related_headers.dir/depend:
	cd /mnt/d/CodeProject/001_CProject/EDTA/opensource/mockcpp/mbuild && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/d/CodeProject/001_CProject/EDTA/opensource/mockcpp /mnt/d/CodeProject/001_CProject/EDTA/opensource/mockcpp/src /mnt/d/CodeProject/001_CProject/EDTA/opensource/mockcpp/mbuild /mnt/d/CodeProject/001_CProject/EDTA/opensource/mockcpp/mbuild/src /mnt/d/CodeProject/001_CProject/EDTA/opensource/mockcpp/mbuild/src/CMakeFiles/arg_related_headers.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/arg_related_headers.dir/depend


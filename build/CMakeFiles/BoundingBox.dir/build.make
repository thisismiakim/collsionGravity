# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.26

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.26.3/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.26.3/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/mk/Desktop/NGL_Project/BoundingBox_prt3

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/mk/Desktop/NGL_Project/BoundingBox_prt3/build

# Include any dependencies generated for this target.
include CMakeFiles/BoundingBox.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/BoundingBox.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/BoundingBox.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/BoundingBox.dir/flags.make

CMakeFiles/BoundingBox.dir/BoundingBox_autogen/mocs_compilation.cpp.o: CMakeFiles/BoundingBox.dir/flags.make
CMakeFiles/BoundingBox.dir/BoundingBox_autogen/mocs_compilation.cpp.o: BoundingBox_autogen/mocs_compilation.cpp
CMakeFiles/BoundingBox.dir/BoundingBox_autogen/mocs_compilation.cpp.o: CMakeFiles/BoundingBox.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/mk/Desktop/NGL_Project/BoundingBox_prt3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/BoundingBox.dir/BoundingBox_autogen/mocs_compilation.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/BoundingBox.dir/BoundingBox_autogen/mocs_compilation.cpp.o -MF CMakeFiles/BoundingBox.dir/BoundingBox_autogen/mocs_compilation.cpp.o.d -o CMakeFiles/BoundingBox.dir/BoundingBox_autogen/mocs_compilation.cpp.o -c /Users/mk/Desktop/NGL_Project/BoundingBox_prt3/build/BoundingBox_autogen/mocs_compilation.cpp

CMakeFiles/BoundingBox.dir/BoundingBox_autogen/mocs_compilation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BoundingBox.dir/BoundingBox_autogen/mocs_compilation.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/mk/Desktop/NGL_Project/BoundingBox_prt3/build/BoundingBox_autogen/mocs_compilation.cpp > CMakeFiles/BoundingBox.dir/BoundingBox_autogen/mocs_compilation.cpp.i

CMakeFiles/BoundingBox.dir/BoundingBox_autogen/mocs_compilation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BoundingBox.dir/BoundingBox_autogen/mocs_compilation.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/mk/Desktop/NGL_Project/BoundingBox_prt3/build/BoundingBox_autogen/mocs_compilation.cpp -o CMakeFiles/BoundingBox.dir/BoundingBox_autogen/mocs_compilation.cpp.s

CMakeFiles/BoundingBox.dir/src/main.cpp.o: CMakeFiles/BoundingBox.dir/flags.make
CMakeFiles/BoundingBox.dir/src/main.cpp.o: /Users/mk/Desktop/NGL_Project/BoundingBox_prt3/src/main.cpp
CMakeFiles/BoundingBox.dir/src/main.cpp.o: CMakeFiles/BoundingBox.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/mk/Desktop/NGL_Project/BoundingBox_prt3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/BoundingBox.dir/src/main.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/BoundingBox.dir/src/main.cpp.o -MF CMakeFiles/BoundingBox.dir/src/main.cpp.o.d -o CMakeFiles/BoundingBox.dir/src/main.cpp.o -c /Users/mk/Desktop/NGL_Project/BoundingBox_prt3/src/main.cpp

CMakeFiles/BoundingBox.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BoundingBox.dir/src/main.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/mk/Desktop/NGL_Project/BoundingBox_prt3/src/main.cpp > CMakeFiles/BoundingBox.dir/src/main.cpp.i

CMakeFiles/BoundingBox.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BoundingBox.dir/src/main.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/mk/Desktop/NGL_Project/BoundingBox_prt3/src/main.cpp -o CMakeFiles/BoundingBox.dir/src/main.cpp.s

CMakeFiles/BoundingBox.dir/src/NGLScene.cpp.o: CMakeFiles/BoundingBox.dir/flags.make
CMakeFiles/BoundingBox.dir/src/NGLScene.cpp.o: /Users/mk/Desktop/NGL_Project/BoundingBox_prt3/src/NGLScene.cpp
CMakeFiles/BoundingBox.dir/src/NGLScene.cpp.o: CMakeFiles/BoundingBox.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/mk/Desktop/NGL_Project/BoundingBox_prt3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/BoundingBox.dir/src/NGLScene.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/BoundingBox.dir/src/NGLScene.cpp.o -MF CMakeFiles/BoundingBox.dir/src/NGLScene.cpp.o.d -o CMakeFiles/BoundingBox.dir/src/NGLScene.cpp.o -c /Users/mk/Desktop/NGL_Project/BoundingBox_prt3/src/NGLScene.cpp

CMakeFiles/BoundingBox.dir/src/NGLScene.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BoundingBox.dir/src/NGLScene.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/mk/Desktop/NGL_Project/BoundingBox_prt3/src/NGLScene.cpp > CMakeFiles/BoundingBox.dir/src/NGLScene.cpp.i

CMakeFiles/BoundingBox.dir/src/NGLScene.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BoundingBox.dir/src/NGLScene.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/mk/Desktop/NGL_Project/BoundingBox_prt3/src/NGLScene.cpp -o CMakeFiles/BoundingBox.dir/src/NGLScene.cpp.s

CMakeFiles/BoundingBox.dir/src/Sphere.cpp.o: CMakeFiles/BoundingBox.dir/flags.make
CMakeFiles/BoundingBox.dir/src/Sphere.cpp.o: /Users/mk/Desktop/NGL_Project/BoundingBox_prt3/src/Sphere.cpp
CMakeFiles/BoundingBox.dir/src/Sphere.cpp.o: CMakeFiles/BoundingBox.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/mk/Desktop/NGL_Project/BoundingBox_prt3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/BoundingBox.dir/src/Sphere.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/BoundingBox.dir/src/Sphere.cpp.o -MF CMakeFiles/BoundingBox.dir/src/Sphere.cpp.o.d -o CMakeFiles/BoundingBox.dir/src/Sphere.cpp.o -c /Users/mk/Desktop/NGL_Project/BoundingBox_prt3/src/Sphere.cpp

CMakeFiles/BoundingBox.dir/src/Sphere.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BoundingBox.dir/src/Sphere.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/mk/Desktop/NGL_Project/BoundingBox_prt3/src/Sphere.cpp > CMakeFiles/BoundingBox.dir/src/Sphere.cpp.i

CMakeFiles/BoundingBox.dir/src/Sphere.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BoundingBox.dir/src/Sphere.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/mk/Desktop/NGL_Project/BoundingBox_prt3/src/Sphere.cpp -o CMakeFiles/BoundingBox.dir/src/Sphere.cpp.s

CMakeFiles/BoundingBox.dir/src/NGLSceneMouseControls.cpp.o: CMakeFiles/BoundingBox.dir/flags.make
CMakeFiles/BoundingBox.dir/src/NGLSceneMouseControls.cpp.o: /Users/mk/Desktop/NGL_Project/BoundingBox_prt3/src/NGLSceneMouseControls.cpp
CMakeFiles/BoundingBox.dir/src/NGLSceneMouseControls.cpp.o: CMakeFiles/BoundingBox.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/mk/Desktop/NGL_Project/BoundingBox_prt3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/BoundingBox.dir/src/NGLSceneMouseControls.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/BoundingBox.dir/src/NGLSceneMouseControls.cpp.o -MF CMakeFiles/BoundingBox.dir/src/NGLSceneMouseControls.cpp.o.d -o CMakeFiles/BoundingBox.dir/src/NGLSceneMouseControls.cpp.o -c /Users/mk/Desktop/NGL_Project/BoundingBox_prt3/src/NGLSceneMouseControls.cpp

CMakeFiles/BoundingBox.dir/src/NGLSceneMouseControls.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BoundingBox.dir/src/NGLSceneMouseControls.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/mk/Desktop/NGL_Project/BoundingBox_prt3/src/NGLSceneMouseControls.cpp > CMakeFiles/BoundingBox.dir/src/NGLSceneMouseControls.cpp.i

CMakeFiles/BoundingBox.dir/src/NGLSceneMouseControls.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BoundingBox.dir/src/NGLSceneMouseControls.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/mk/Desktop/NGL_Project/BoundingBox_prt3/src/NGLSceneMouseControls.cpp -o CMakeFiles/BoundingBox.dir/src/NGLSceneMouseControls.cpp.s

CMakeFiles/BoundingBox.dir/src/Grid.cpp.o: CMakeFiles/BoundingBox.dir/flags.make
CMakeFiles/BoundingBox.dir/src/Grid.cpp.o: /Users/mk/Desktop/NGL_Project/BoundingBox_prt3/src/Grid.cpp
CMakeFiles/BoundingBox.dir/src/Grid.cpp.o: CMakeFiles/BoundingBox.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/mk/Desktop/NGL_Project/BoundingBox_prt3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/BoundingBox.dir/src/Grid.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/BoundingBox.dir/src/Grid.cpp.o -MF CMakeFiles/BoundingBox.dir/src/Grid.cpp.o.d -o CMakeFiles/BoundingBox.dir/src/Grid.cpp.o -c /Users/mk/Desktop/NGL_Project/BoundingBox_prt3/src/Grid.cpp

CMakeFiles/BoundingBox.dir/src/Grid.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BoundingBox.dir/src/Grid.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/mk/Desktop/NGL_Project/BoundingBox_prt3/src/Grid.cpp > CMakeFiles/BoundingBox.dir/src/Grid.cpp.i

CMakeFiles/BoundingBox.dir/src/Grid.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BoundingBox.dir/src/Grid.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/mk/Desktop/NGL_Project/BoundingBox_prt3/src/Grid.cpp -o CMakeFiles/BoundingBox.dir/src/Grid.cpp.s

# Object files for target BoundingBox
BoundingBox_OBJECTS = \
"CMakeFiles/BoundingBox.dir/BoundingBox_autogen/mocs_compilation.cpp.o" \
"CMakeFiles/BoundingBox.dir/src/main.cpp.o" \
"CMakeFiles/BoundingBox.dir/src/NGLScene.cpp.o" \
"CMakeFiles/BoundingBox.dir/src/Sphere.cpp.o" \
"CMakeFiles/BoundingBox.dir/src/NGLSceneMouseControls.cpp.o" \
"CMakeFiles/BoundingBox.dir/src/Grid.cpp.o"

# External object files for target BoundingBox
BoundingBox_EXTERNAL_OBJECTS =

BoundingBox: CMakeFiles/BoundingBox.dir/BoundingBox_autogen/mocs_compilation.cpp.o
BoundingBox: CMakeFiles/BoundingBox.dir/src/main.cpp.o
BoundingBox: CMakeFiles/BoundingBox.dir/src/NGLScene.cpp.o
BoundingBox: CMakeFiles/BoundingBox.dir/src/Sphere.cpp.o
BoundingBox: CMakeFiles/BoundingBox.dir/src/NGLSceneMouseControls.cpp.o
BoundingBox: CMakeFiles/BoundingBox.dir/src/Grid.cpp.o
BoundingBox: CMakeFiles/BoundingBox.dir/build.make
BoundingBox: /Users/mk/vcpkg/installed/x64-osx/debug/lib/libOpenImageIO_d.a
BoundingBox: /Users/mk/vcpkg/installed/x64-osx/debug/lib/libOpenImageIO_Util_d.a
BoundingBox: /Users/mk/vcpkg/installed/x64-osx/debug/lib/libfreetyped.a
BoundingBox: /Users/mk/vcpkg/installed/x64-osx/debug/lib/libgl3w.a
BoundingBox: /Users/mk/vcpkg/installed/x64-osx/debug/lib/libfmtd.a
BoundingBox: /Users/mk/vcpkg/installed/x64-osx/debug/lib/libOpenEXR-3_1_d.a
BoundingBox: /Users/mk/vcpkg/installed/x64-osx/debug/lib/libImath-3_1_d.a
BoundingBox: /Users/mk/vcpkg/installed/x64-osx/debug/lib/libIlmThread-3_1_d.a
BoundingBox: /Users/mk/vcpkg/installed/x64-osx/debug/lib/libIex-3_1_d.a
BoundingBox: /Users/mk/vcpkg/installed/x64-osx/debug/lib/libOpenEXRCore-3_1_d.a
BoundingBox: /Users/mk/vcpkg/installed/x64-osx/debug/lib/libtiffd.a
BoundingBox: /Users/mk/vcpkg/installed/x64-osx/debug/lib/libjpeg.a
BoundingBox: /Users/mk/vcpkg/installed/x64-osx/debug/lib/liblzma.a
BoundingBox: /Users/mk/vcpkg/installed/x64-osx/debug/lib/libbz2d.a
BoundingBox: /Users/mk/vcpkg/installed/x64-osx/debug/lib/libpng16d.a
BoundingBox: /Users/mk/vcpkg/installed/x64-osx/debug/lib/libz.a
BoundingBox: /Users/mk/vcpkg/installed/x64-osx/debug/lib/libbz2d.a
BoundingBox: /Users/mk/vcpkg/installed/x64-osx/debug/lib/libbrotlidec-static.a
BoundingBox: /Users/mk/vcpkg/installed/x64-osx/debug/lib/libbrotlicommon-static.a
BoundingBox: /usr/local/Cellar/qt@5/5.15.8_3/lib/QtOpenGL.framework/QtOpenGL
BoundingBox: /usr/local/Cellar/qt@5/5.15.8_3/lib/QtWidgets.framework/QtWidgets
BoundingBox: /usr/local/Cellar/qt@5/5.15.8_3/lib/QtGui.framework/QtGui
BoundingBox: /usr/local/Cellar/qt@5/5.15.8_3/lib/QtCore.framework/QtCore
BoundingBox: CMakeFiles/BoundingBox.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/mk/Desktop/NGL_Project/BoundingBox_prt3/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX executable BoundingBox"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/BoundingBox.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/BoundingBox.dir/build: BoundingBox
.PHONY : CMakeFiles/BoundingBox.dir/build

CMakeFiles/BoundingBox.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/BoundingBox.dir/cmake_clean.cmake
.PHONY : CMakeFiles/BoundingBox.dir/clean

CMakeFiles/BoundingBox.dir/depend:
	cd /Users/mk/Desktop/NGL_Project/BoundingBox_prt3/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/mk/Desktop/NGL_Project/BoundingBox_prt3 /Users/mk/Desktop/NGL_Project/BoundingBox_prt3 /Users/mk/Desktop/NGL_Project/BoundingBox_prt3/build /Users/mk/Desktop/NGL_Project/BoundingBox_prt3/build /Users/mk/Desktop/NGL_Project/BoundingBox_prt3/build/CMakeFiles/BoundingBox.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/BoundingBox.dir/depend

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
CMAKE_SOURCE_DIR = /Users/mk/Desktop/NGL_Project/Finals/collision_codeDone

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/mk/Desktop/NGL_Project/Finals/collision_codeDone/build

# Include any dependencies generated for this target.
include CMakeFiles/SphereCollision.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/SphereCollision.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/SphereCollision.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/SphereCollision.dir/flags.make

CMakeFiles/SphereCollision.dir/SphereCollision_autogen/mocs_compilation.cpp.o: CMakeFiles/SphereCollision.dir/flags.make
CMakeFiles/SphereCollision.dir/SphereCollision_autogen/mocs_compilation.cpp.o: SphereCollision_autogen/mocs_compilation.cpp
CMakeFiles/SphereCollision.dir/SphereCollision_autogen/mocs_compilation.cpp.o: CMakeFiles/SphereCollision.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/mk/Desktop/NGL_Project/Finals/collision_codeDone/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/SphereCollision.dir/SphereCollision_autogen/mocs_compilation.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SphereCollision.dir/SphereCollision_autogen/mocs_compilation.cpp.o -MF CMakeFiles/SphereCollision.dir/SphereCollision_autogen/mocs_compilation.cpp.o.d -o CMakeFiles/SphereCollision.dir/SphereCollision_autogen/mocs_compilation.cpp.o -c /Users/mk/Desktop/NGL_Project/Finals/collision_codeDone/build/SphereCollision_autogen/mocs_compilation.cpp

CMakeFiles/SphereCollision.dir/SphereCollision_autogen/mocs_compilation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SphereCollision.dir/SphereCollision_autogen/mocs_compilation.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/mk/Desktop/NGL_Project/Finals/collision_codeDone/build/SphereCollision_autogen/mocs_compilation.cpp > CMakeFiles/SphereCollision.dir/SphereCollision_autogen/mocs_compilation.cpp.i

CMakeFiles/SphereCollision.dir/SphereCollision_autogen/mocs_compilation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SphereCollision.dir/SphereCollision_autogen/mocs_compilation.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/mk/Desktop/NGL_Project/Finals/collision_codeDone/build/SphereCollision_autogen/mocs_compilation.cpp -o CMakeFiles/SphereCollision.dir/SphereCollision_autogen/mocs_compilation.cpp.s

CMakeFiles/SphereCollision.dir/src/main.cpp.o: CMakeFiles/SphereCollision.dir/flags.make
CMakeFiles/SphereCollision.dir/src/main.cpp.o: /Users/mk/Desktop/NGL_Project/Finals/collision_codeDone/src/main.cpp
CMakeFiles/SphereCollision.dir/src/main.cpp.o: CMakeFiles/SphereCollision.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/mk/Desktop/NGL_Project/Finals/collision_codeDone/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/SphereCollision.dir/src/main.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SphereCollision.dir/src/main.cpp.o -MF CMakeFiles/SphereCollision.dir/src/main.cpp.o.d -o CMakeFiles/SphereCollision.dir/src/main.cpp.o -c /Users/mk/Desktop/NGL_Project/Finals/collision_codeDone/src/main.cpp

CMakeFiles/SphereCollision.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SphereCollision.dir/src/main.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/mk/Desktop/NGL_Project/Finals/collision_codeDone/src/main.cpp > CMakeFiles/SphereCollision.dir/src/main.cpp.i

CMakeFiles/SphereCollision.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SphereCollision.dir/src/main.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/mk/Desktop/NGL_Project/Finals/collision_codeDone/src/main.cpp -o CMakeFiles/SphereCollision.dir/src/main.cpp.s

CMakeFiles/SphereCollision.dir/src/NGLScene.cpp.o: CMakeFiles/SphereCollision.dir/flags.make
CMakeFiles/SphereCollision.dir/src/NGLScene.cpp.o: /Users/mk/Desktop/NGL_Project/Finals/collision_codeDone/src/NGLScene.cpp
CMakeFiles/SphereCollision.dir/src/NGLScene.cpp.o: CMakeFiles/SphereCollision.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/mk/Desktop/NGL_Project/Finals/collision_codeDone/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/SphereCollision.dir/src/NGLScene.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SphereCollision.dir/src/NGLScene.cpp.o -MF CMakeFiles/SphereCollision.dir/src/NGLScene.cpp.o.d -o CMakeFiles/SphereCollision.dir/src/NGLScene.cpp.o -c /Users/mk/Desktop/NGL_Project/Finals/collision_codeDone/src/NGLScene.cpp

CMakeFiles/SphereCollision.dir/src/NGLScene.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SphereCollision.dir/src/NGLScene.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/mk/Desktop/NGL_Project/Finals/collision_codeDone/src/NGLScene.cpp > CMakeFiles/SphereCollision.dir/src/NGLScene.cpp.i

CMakeFiles/SphereCollision.dir/src/NGLScene.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SphereCollision.dir/src/NGLScene.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/mk/Desktop/NGL_Project/Finals/collision_codeDone/src/NGLScene.cpp -o CMakeFiles/SphereCollision.dir/src/NGLScene.cpp.s

CMakeFiles/SphereCollision.dir/src/Sphere.cpp.o: CMakeFiles/SphereCollision.dir/flags.make
CMakeFiles/SphereCollision.dir/src/Sphere.cpp.o: /Users/mk/Desktop/NGL_Project/Finals/collision_codeDone/src/Sphere.cpp
CMakeFiles/SphereCollision.dir/src/Sphere.cpp.o: CMakeFiles/SphereCollision.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/mk/Desktop/NGL_Project/Finals/collision_codeDone/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/SphereCollision.dir/src/Sphere.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SphereCollision.dir/src/Sphere.cpp.o -MF CMakeFiles/SphereCollision.dir/src/Sphere.cpp.o.d -o CMakeFiles/SphereCollision.dir/src/Sphere.cpp.o -c /Users/mk/Desktop/NGL_Project/Finals/collision_codeDone/src/Sphere.cpp

CMakeFiles/SphereCollision.dir/src/Sphere.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SphereCollision.dir/src/Sphere.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/mk/Desktop/NGL_Project/Finals/collision_codeDone/src/Sphere.cpp > CMakeFiles/SphereCollision.dir/src/Sphere.cpp.i

CMakeFiles/SphereCollision.dir/src/Sphere.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SphereCollision.dir/src/Sphere.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/mk/Desktop/NGL_Project/Finals/collision_codeDone/src/Sphere.cpp -o CMakeFiles/SphereCollision.dir/src/Sphere.cpp.s

CMakeFiles/SphereCollision.dir/src/NGLSceneMouseControls.cpp.o: CMakeFiles/SphereCollision.dir/flags.make
CMakeFiles/SphereCollision.dir/src/NGLSceneMouseControls.cpp.o: /Users/mk/Desktop/NGL_Project/Finals/collision_codeDone/src/NGLSceneMouseControls.cpp
CMakeFiles/SphereCollision.dir/src/NGLSceneMouseControls.cpp.o: CMakeFiles/SphereCollision.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/mk/Desktop/NGL_Project/Finals/collision_codeDone/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/SphereCollision.dir/src/NGLSceneMouseControls.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SphereCollision.dir/src/NGLSceneMouseControls.cpp.o -MF CMakeFiles/SphereCollision.dir/src/NGLSceneMouseControls.cpp.o.d -o CMakeFiles/SphereCollision.dir/src/NGLSceneMouseControls.cpp.o -c /Users/mk/Desktop/NGL_Project/Finals/collision_codeDone/src/NGLSceneMouseControls.cpp

CMakeFiles/SphereCollision.dir/src/NGLSceneMouseControls.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SphereCollision.dir/src/NGLSceneMouseControls.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/mk/Desktop/NGL_Project/Finals/collision_codeDone/src/NGLSceneMouseControls.cpp > CMakeFiles/SphereCollision.dir/src/NGLSceneMouseControls.cpp.i

CMakeFiles/SphereCollision.dir/src/NGLSceneMouseControls.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SphereCollision.dir/src/NGLSceneMouseControls.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/mk/Desktop/NGL_Project/Finals/collision_codeDone/src/NGLSceneMouseControls.cpp -o CMakeFiles/SphereCollision.dir/src/NGLSceneMouseControls.cpp.s

CMakeFiles/SphereCollision.dir/src/Grid.cpp.o: CMakeFiles/SphereCollision.dir/flags.make
CMakeFiles/SphereCollision.dir/src/Grid.cpp.o: /Users/mk/Desktop/NGL_Project/Finals/collision_codeDone/src/Grid.cpp
CMakeFiles/SphereCollision.dir/src/Grid.cpp.o: CMakeFiles/SphereCollision.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/mk/Desktop/NGL_Project/Finals/collision_codeDone/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/SphereCollision.dir/src/Grid.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SphereCollision.dir/src/Grid.cpp.o -MF CMakeFiles/SphereCollision.dir/src/Grid.cpp.o.d -o CMakeFiles/SphereCollision.dir/src/Grid.cpp.o -c /Users/mk/Desktop/NGL_Project/Finals/collision_codeDone/src/Grid.cpp

CMakeFiles/SphereCollision.dir/src/Grid.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SphereCollision.dir/src/Grid.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/mk/Desktop/NGL_Project/Finals/collision_codeDone/src/Grid.cpp > CMakeFiles/SphereCollision.dir/src/Grid.cpp.i

CMakeFiles/SphereCollision.dir/src/Grid.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SphereCollision.dir/src/Grid.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/mk/Desktop/NGL_Project/Finals/collision_codeDone/src/Grid.cpp -o CMakeFiles/SphereCollision.dir/src/Grid.cpp.s

# Object files for target SphereCollision
SphereCollision_OBJECTS = \
"CMakeFiles/SphereCollision.dir/SphereCollision_autogen/mocs_compilation.cpp.o" \
"CMakeFiles/SphereCollision.dir/src/main.cpp.o" \
"CMakeFiles/SphereCollision.dir/src/NGLScene.cpp.o" \
"CMakeFiles/SphereCollision.dir/src/Sphere.cpp.o" \
"CMakeFiles/SphereCollision.dir/src/NGLSceneMouseControls.cpp.o" \
"CMakeFiles/SphereCollision.dir/src/Grid.cpp.o"

# External object files for target SphereCollision
SphereCollision_EXTERNAL_OBJECTS =

SphereCollision: CMakeFiles/SphereCollision.dir/SphereCollision_autogen/mocs_compilation.cpp.o
SphereCollision: CMakeFiles/SphereCollision.dir/src/main.cpp.o
SphereCollision: CMakeFiles/SphereCollision.dir/src/NGLScene.cpp.o
SphereCollision: CMakeFiles/SphereCollision.dir/src/Sphere.cpp.o
SphereCollision: CMakeFiles/SphereCollision.dir/src/NGLSceneMouseControls.cpp.o
SphereCollision: CMakeFiles/SphereCollision.dir/src/Grid.cpp.o
SphereCollision: CMakeFiles/SphereCollision.dir/build.make
SphereCollision: /Users/mk/vcpkg/installed/x64-osx/debug/lib/libOpenImageIO_d.a
SphereCollision: /Users/mk/vcpkg/installed/x64-osx/debug/lib/libOpenImageIO_Util_d.a
SphereCollision: /Users/mk/vcpkg/installed/x64-osx/debug/lib/libfreetyped.a
SphereCollision: /Users/mk/vcpkg/installed/x64-osx/debug/lib/libgl3w.a
SphereCollision: /Users/mk/vcpkg/installed/x64-osx/debug/lib/libfmtd.a
SphereCollision: /Users/mk/vcpkg/installed/x64-osx/debug/lib/libOpenEXR-3_1_d.a
SphereCollision: /Users/mk/vcpkg/installed/x64-osx/debug/lib/libImath-3_1_d.a
SphereCollision: /Users/mk/vcpkg/installed/x64-osx/debug/lib/libIlmThread-3_1_d.a
SphereCollision: /Users/mk/vcpkg/installed/x64-osx/debug/lib/libIex-3_1_d.a
SphereCollision: /Users/mk/vcpkg/installed/x64-osx/debug/lib/libOpenEXRCore-3_1_d.a
SphereCollision: /Users/mk/vcpkg/installed/x64-osx/debug/lib/libtiffd.a
SphereCollision: /Users/mk/vcpkg/installed/x64-osx/debug/lib/libjpeg.a
SphereCollision: /Users/mk/vcpkg/installed/x64-osx/debug/lib/liblzma.a
SphereCollision: /Users/mk/vcpkg/installed/x64-osx/debug/lib/libbz2d.a
SphereCollision: /Users/mk/vcpkg/installed/x64-osx/debug/lib/libpng16d.a
SphereCollision: /Users/mk/vcpkg/installed/x64-osx/debug/lib/libz.a
SphereCollision: /Users/mk/vcpkg/installed/x64-osx/debug/lib/libbz2d.a
SphereCollision: /Users/mk/vcpkg/installed/x64-osx/debug/lib/libbrotlidec-static.a
SphereCollision: /Users/mk/vcpkg/installed/x64-osx/debug/lib/libbrotlicommon-static.a
SphereCollision: /usr/local/Cellar/qt@5/5.15.8_3/lib/QtOpenGL.framework/QtOpenGL
SphereCollision: /usr/local/Cellar/qt@5/5.15.8_3/lib/QtWidgets.framework/QtWidgets
SphereCollision: /usr/local/Cellar/qt@5/5.15.8_3/lib/QtGui.framework/QtGui
SphereCollision: /usr/local/Cellar/qt@5/5.15.8_3/lib/QtCore.framework/QtCore
SphereCollision: CMakeFiles/SphereCollision.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/mk/Desktop/NGL_Project/Finals/collision_codeDone/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX executable SphereCollision"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/SphereCollision.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/SphereCollision.dir/build: SphereCollision
.PHONY : CMakeFiles/SphereCollision.dir/build

CMakeFiles/SphereCollision.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/SphereCollision.dir/cmake_clean.cmake
.PHONY : CMakeFiles/SphereCollision.dir/clean

CMakeFiles/SphereCollision.dir/depend:
	cd /Users/mk/Desktop/NGL_Project/Finals/collision_codeDone/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/mk/Desktop/NGL_Project/Finals/collision_codeDone /Users/mk/Desktop/NGL_Project/Finals/collision_codeDone /Users/mk/Desktop/NGL_Project/Finals/collision_codeDone/build /Users/mk/Desktop/NGL_Project/Finals/collision_codeDone/build /Users/mk/Desktop/NGL_Project/Finals/collision_codeDone/build/CMakeFiles/SphereCollision.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/SphereCollision.dir/depend


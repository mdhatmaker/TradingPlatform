# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.7

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/michael/CLionProjects/TradingPlatform

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/michael/CLionProjects/TradingPlatform/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/TradingPlatform.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/TradingPlatform.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/TradingPlatform.dir/flags.make

CMakeFiles/TradingPlatform.dir/main.cpp.o: CMakeFiles/TradingPlatform.dir/flags.make
CMakeFiles/TradingPlatform.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/michael/CLionProjects/TradingPlatform/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/TradingPlatform.dir/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TradingPlatform.dir/main.cpp.o -c /Users/michael/CLionProjects/TradingPlatform/main.cpp

CMakeFiles/TradingPlatform.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TradingPlatform.dir/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/michael/CLionProjects/TradingPlatform/main.cpp > CMakeFiles/TradingPlatform.dir/main.cpp.i

CMakeFiles/TradingPlatform.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TradingPlatform.dir/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/michael/CLionProjects/TradingPlatform/main.cpp -o CMakeFiles/TradingPlatform.dir/main.cpp.s

CMakeFiles/TradingPlatform.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/TradingPlatform.dir/main.cpp.o.requires

CMakeFiles/TradingPlatform.dir/main.cpp.o.provides: CMakeFiles/TradingPlatform.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/TradingPlatform.dir/build.make CMakeFiles/TradingPlatform.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/TradingPlatform.dir/main.cpp.o.provides

CMakeFiles/TradingPlatform.dir/main.cpp.o.provides.build: CMakeFiles/TradingPlatform.dir/main.cpp.o


CMakeFiles/TradingPlatform.dir/CircularArray.cpp.o: CMakeFiles/TradingPlatform.dir/flags.make
CMakeFiles/TradingPlatform.dir/CircularArray.cpp.o: ../CircularArray.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/michael/CLionProjects/TradingPlatform/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/TradingPlatform.dir/CircularArray.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TradingPlatform.dir/CircularArray.cpp.o -c /Users/michael/CLionProjects/TradingPlatform/CircularArray.cpp

CMakeFiles/TradingPlatform.dir/CircularArray.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TradingPlatform.dir/CircularArray.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/michael/CLionProjects/TradingPlatform/CircularArray.cpp > CMakeFiles/TradingPlatform.dir/CircularArray.cpp.i

CMakeFiles/TradingPlatform.dir/CircularArray.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TradingPlatform.dir/CircularArray.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/michael/CLionProjects/TradingPlatform/CircularArray.cpp -o CMakeFiles/TradingPlatform.dir/CircularArray.cpp.s

CMakeFiles/TradingPlatform.dir/CircularArray.cpp.o.requires:

.PHONY : CMakeFiles/TradingPlatform.dir/CircularArray.cpp.o.requires

CMakeFiles/TradingPlatform.dir/CircularArray.cpp.o.provides: CMakeFiles/TradingPlatform.dir/CircularArray.cpp.o.requires
	$(MAKE) -f CMakeFiles/TradingPlatform.dir/build.make CMakeFiles/TradingPlatform.dir/CircularArray.cpp.o.provides.build
.PHONY : CMakeFiles/TradingPlatform.dir/CircularArray.cpp.o.provides

CMakeFiles/TradingPlatform.dir/CircularArray.cpp.o.provides.build: CMakeFiles/TradingPlatform.dir/CircularArray.cpp.o


CMakeFiles/TradingPlatform.dir/GenericTrading.cpp.o: CMakeFiles/TradingPlatform.dir/flags.make
CMakeFiles/TradingPlatform.dir/GenericTrading.cpp.o: ../GenericTrading.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/michael/CLionProjects/TradingPlatform/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/TradingPlatform.dir/GenericTrading.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TradingPlatform.dir/GenericTrading.cpp.o -c /Users/michael/CLionProjects/TradingPlatform/GenericTrading.cpp

CMakeFiles/TradingPlatform.dir/GenericTrading.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TradingPlatform.dir/GenericTrading.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/michael/CLionProjects/TradingPlatform/GenericTrading.cpp > CMakeFiles/TradingPlatform.dir/GenericTrading.cpp.i

CMakeFiles/TradingPlatform.dir/GenericTrading.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TradingPlatform.dir/GenericTrading.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/michael/CLionProjects/TradingPlatform/GenericTrading.cpp -o CMakeFiles/TradingPlatform.dir/GenericTrading.cpp.s

CMakeFiles/TradingPlatform.dir/GenericTrading.cpp.o.requires:

.PHONY : CMakeFiles/TradingPlatform.dir/GenericTrading.cpp.o.requires

CMakeFiles/TradingPlatform.dir/GenericTrading.cpp.o.provides: CMakeFiles/TradingPlatform.dir/GenericTrading.cpp.o.requires
	$(MAKE) -f CMakeFiles/TradingPlatform.dir/build.make CMakeFiles/TradingPlatform.dir/GenericTrading.cpp.o.provides.build
.PHONY : CMakeFiles/TradingPlatform.dir/GenericTrading.cpp.o.provides

CMakeFiles/TradingPlatform.dir/GenericTrading.cpp.o.provides.build: CMakeFiles/TradingPlatform.dir/GenericTrading.cpp.o


CMakeFiles/TradingPlatform.dir/Instrument.cpp.o: CMakeFiles/TradingPlatform.dir/flags.make
CMakeFiles/TradingPlatform.dir/Instrument.cpp.o: ../Instrument.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/michael/CLionProjects/TradingPlatform/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/TradingPlatform.dir/Instrument.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TradingPlatform.dir/Instrument.cpp.o -c /Users/michael/CLionProjects/TradingPlatform/Instrument.cpp

CMakeFiles/TradingPlatform.dir/Instrument.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TradingPlatform.dir/Instrument.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/michael/CLionProjects/TradingPlatform/Instrument.cpp > CMakeFiles/TradingPlatform.dir/Instrument.cpp.i

CMakeFiles/TradingPlatform.dir/Instrument.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TradingPlatform.dir/Instrument.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/michael/CLionProjects/TradingPlatform/Instrument.cpp -o CMakeFiles/TradingPlatform.dir/Instrument.cpp.s

CMakeFiles/TradingPlatform.dir/Instrument.cpp.o.requires:

.PHONY : CMakeFiles/TradingPlatform.dir/Instrument.cpp.o.requires

CMakeFiles/TradingPlatform.dir/Instrument.cpp.o.provides: CMakeFiles/TradingPlatform.dir/Instrument.cpp.o.requires
	$(MAKE) -f CMakeFiles/TradingPlatform.dir/build.make CMakeFiles/TradingPlatform.dir/Instrument.cpp.o.provides.build
.PHONY : CMakeFiles/TradingPlatform.dir/Instrument.cpp.o.provides

CMakeFiles/TradingPlatform.dir/Instrument.cpp.o.provides.build: CMakeFiles/TradingPlatform.dir/Instrument.cpp.o


CMakeFiles/TradingPlatform.dir/Order.cpp.o: CMakeFiles/TradingPlatform.dir/flags.make
CMakeFiles/TradingPlatform.dir/Order.cpp.o: ../Order.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/michael/CLionProjects/TradingPlatform/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/TradingPlatform.dir/Order.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TradingPlatform.dir/Order.cpp.o -c /Users/michael/CLionProjects/TradingPlatform/Order.cpp

CMakeFiles/TradingPlatform.dir/Order.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TradingPlatform.dir/Order.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/michael/CLionProjects/TradingPlatform/Order.cpp > CMakeFiles/TradingPlatform.dir/Order.cpp.i

CMakeFiles/TradingPlatform.dir/Order.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TradingPlatform.dir/Order.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/michael/CLionProjects/TradingPlatform/Order.cpp -o CMakeFiles/TradingPlatform.dir/Order.cpp.s

CMakeFiles/TradingPlatform.dir/Order.cpp.o.requires:

.PHONY : CMakeFiles/TradingPlatform.dir/Order.cpp.o.requires

CMakeFiles/TradingPlatform.dir/Order.cpp.o.provides: CMakeFiles/TradingPlatform.dir/Order.cpp.o.requires
	$(MAKE) -f CMakeFiles/TradingPlatform.dir/build.make CMakeFiles/TradingPlatform.dir/Order.cpp.o.provides.build
.PHONY : CMakeFiles/TradingPlatform.dir/Order.cpp.o.provides

CMakeFiles/TradingPlatform.dir/Order.cpp.o.provides.build: CMakeFiles/TradingPlatform.dir/Order.cpp.o


CMakeFiles/TradingPlatform.dir/PriceLevel.cpp.o: CMakeFiles/TradingPlatform.dir/flags.make
CMakeFiles/TradingPlatform.dir/PriceLevel.cpp.o: ../PriceLevel.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/michael/CLionProjects/TradingPlatform/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/TradingPlatform.dir/PriceLevel.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TradingPlatform.dir/PriceLevel.cpp.o -c /Users/michael/CLionProjects/TradingPlatform/PriceLevel.cpp

CMakeFiles/TradingPlatform.dir/PriceLevel.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TradingPlatform.dir/PriceLevel.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/michael/CLionProjects/TradingPlatform/PriceLevel.cpp > CMakeFiles/TradingPlatform.dir/PriceLevel.cpp.i

CMakeFiles/TradingPlatform.dir/PriceLevel.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TradingPlatform.dir/PriceLevel.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/michael/CLionProjects/TradingPlatform/PriceLevel.cpp -o CMakeFiles/TradingPlatform.dir/PriceLevel.cpp.s

CMakeFiles/TradingPlatform.dir/PriceLevel.cpp.o.requires:

.PHONY : CMakeFiles/TradingPlatform.dir/PriceLevel.cpp.o.requires

CMakeFiles/TradingPlatform.dir/PriceLevel.cpp.o.provides: CMakeFiles/TradingPlatform.dir/PriceLevel.cpp.o.requires
	$(MAKE) -f CMakeFiles/TradingPlatform.dir/build.make CMakeFiles/TradingPlatform.dir/PriceLevel.cpp.o.provides.build
.PHONY : CMakeFiles/TradingPlatform.dir/PriceLevel.cpp.o.provides

CMakeFiles/TradingPlatform.dir/PriceLevel.cpp.o.provides.build: CMakeFiles/TradingPlatform.dir/PriceLevel.cpp.o


CMakeFiles/TradingPlatform.dir/SampleCode.cpp.o: CMakeFiles/TradingPlatform.dir/flags.make
CMakeFiles/TradingPlatform.dir/SampleCode.cpp.o: ../SampleCode.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/michael/CLionProjects/TradingPlatform/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/TradingPlatform.dir/SampleCode.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TradingPlatform.dir/SampleCode.cpp.o -c /Users/michael/CLionProjects/TradingPlatform/SampleCode.cpp

CMakeFiles/TradingPlatform.dir/SampleCode.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TradingPlatform.dir/SampleCode.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/michael/CLionProjects/TradingPlatform/SampleCode.cpp > CMakeFiles/TradingPlatform.dir/SampleCode.cpp.i

CMakeFiles/TradingPlatform.dir/SampleCode.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TradingPlatform.dir/SampleCode.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/michael/CLionProjects/TradingPlatform/SampleCode.cpp -o CMakeFiles/TradingPlatform.dir/SampleCode.cpp.s

CMakeFiles/TradingPlatform.dir/SampleCode.cpp.o.requires:

.PHONY : CMakeFiles/TradingPlatform.dir/SampleCode.cpp.o.requires

CMakeFiles/TradingPlatform.dir/SampleCode.cpp.o.provides: CMakeFiles/TradingPlatform.dir/SampleCode.cpp.o.requires
	$(MAKE) -f CMakeFiles/TradingPlatform.dir/build.make CMakeFiles/TradingPlatform.dir/SampleCode.cpp.o.provides.build
.PHONY : CMakeFiles/TradingPlatform.dir/SampleCode.cpp.o.provides

CMakeFiles/TradingPlatform.dir/SampleCode.cpp.o.provides.build: CMakeFiles/TradingPlatform.dir/SampleCode.cpp.o


CMakeFiles/TradingPlatform.dir/StackedOrderBook.cpp.o: CMakeFiles/TradingPlatform.dir/flags.make
CMakeFiles/TradingPlatform.dir/StackedOrderBook.cpp.o: ../StackedOrderBook.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/michael/CLionProjects/TradingPlatform/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/TradingPlatform.dir/StackedOrderBook.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TradingPlatform.dir/StackedOrderBook.cpp.o -c /Users/michael/CLionProjects/TradingPlatform/StackedOrderBook.cpp

CMakeFiles/TradingPlatform.dir/StackedOrderBook.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TradingPlatform.dir/StackedOrderBook.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/michael/CLionProjects/TradingPlatform/StackedOrderBook.cpp > CMakeFiles/TradingPlatform.dir/StackedOrderBook.cpp.i

CMakeFiles/TradingPlatform.dir/StackedOrderBook.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TradingPlatform.dir/StackedOrderBook.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/michael/CLionProjects/TradingPlatform/StackedOrderBook.cpp -o CMakeFiles/TradingPlatform.dir/StackedOrderBook.cpp.s

CMakeFiles/TradingPlatform.dir/StackedOrderBook.cpp.o.requires:

.PHONY : CMakeFiles/TradingPlatform.dir/StackedOrderBook.cpp.o.requires

CMakeFiles/TradingPlatform.dir/StackedOrderBook.cpp.o.provides: CMakeFiles/TradingPlatform.dir/StackedOrderBook.cpp.o.requires
	$(MAKE) -f CMakeFiles/TradingPlatform.dir/build.make CMakeFiles/TradingPlatform.dir/StackedOrderBook.cpp.o.provides.build
.PHONY : CMakeFiles/TradingPlatform.dir/StackedOrderBook.cpp.o.provides

CMakeFiles/TradingPlatform.dir/StackedOrderBook.cpp.o.provides.build: CMakeFiles/TradingPlatform.dir/StackedOrderBook.cpp.o


CMakeFiles/TradingPlatform.dir/StackedOrderLevel.cpp.o: CMakeFiles/TradingPlatform.dir/flags.make
CMakeFiles/TradingPlatform.dir/StackedOrderLevel.cpp.o: ../StackedOrderLevel.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/michael/CLionProjects/TradingPlatform/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/TradingPlatform.dir/StackedOrderLevel.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TradingPlatform.dir/StackedOrderLevel.cpp.o -c /Users/michael/CLionProjects/TradingPlatform/StackedOrderLevel.cpp

CMakeFiles/TradingPlatform.dir/StackedOrderLevel.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TradingPlatform.dir/StackedOrderLevel.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/michael/CLionProjects/TradingPlatform/StackedOrderLevel.cpp > CMakeFiles/TradingPlatform.dir/StackedOrderLevel.cpp.i

CMakeFiles/TradingPlatform.dir/StackedOrderLevel.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TradingPlatform.dir/StackedOrderLevel.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/michael/CLionProjects/TradingPlatform/StackedOrderLevel.cpp -o CMakeFiles/TradingPlatform.dir/StackedOrderLevel.cpp.s

CMakeFiles/TradingPlatform.dir/StackedOrderLevel.cpp.o.requires:

.PHONY : CMakeFiles/TradingPlatform.dir/StackedOrderLevel.cpp.o.requires

CMakeFiles/TradingPlatform.dir/StackedOrderLevel.cpp.o.provides: CMakeFiles/TradingPlatform.dir/StackedOrderLevel.cpp.o.requires
	$(MAKE) -f CMakeFiles/TradingPlatform.dir/build.make CMakeFiles/TradingPlatform.dir/StackedOrderLevel.cpp.o.provides.build
.PHONY : CMakeFiles/TradingPlatform.dir/StackedOrderLevel.cpp.o.provides

CMakeFiles/TradingPlatform.dir/StackedOrderLevel.cpp.o.provides.build: CMakeFiles/TradingPlatform.dir/StackedOrderLevel.cpp.o


CMakeFiles/TradingPlatform.dir/TradingEngine.cpp.o: CMakeFiles/TradingPlatform.dir/flags.make
CMakeFiles/TradingPlatform.dir/TradingEngine.cpp.o: ../TradingEngine.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/michael/CLionProjects/TradingPlatform/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/TradingPlatform.dir/TradingEngine.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TradingPlatform.dir/TradingEngine.cpp.o -c /Users/michael/CLionProjects/TradingPlatform/TradingEngine.cpp

CMakeFiles/TradingPlatform.dir/TradingEngine.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TradingPlatform.dir/TradingEngine.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/michael/CLionProjects/TradingPlatform/TradingEngine.cpp > CMakeFiles/TradingPlatform.dir/TradingEngine.cpp.i

CMakeFiles/TradingPlatform.dir/TradingEngine.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TradingPlatform.dir/TradingEngine.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/michael/CLionProjects/TradingPlatform/TradingEngine.cpp -o CMakeFiles/TradingPlatform.dir/TradingEngine.cpp.s

CMakeFiles/TradingPlatform.dir/TradingEngine.cpp.o.requires:

.PHONY : CMakeFiles/TradingPlatform.dir/TradingEngine.cpp.o.requires

CMakeFiles/TradingPlatform.dir/TradingEngine.cpp.o.provides: CMakeFiles/TradingPlatform.dir/TradingEngine.cpp.o.requires
	$(MAKE) -f CMakeFiles/TradingPlatform.dir/build.make CMakeFiles/TradingPlatform.dir/TradingEngine.cpp.o.provides.build
.PHONY : CMakeFiles/TradingPlatform.dir/TradingEngine.cpp.o.provides

CMakeFiles/TradingPlatform.dir/TradingEngine.cpp.o.provides.build: CMakeFiles/TradingPlatform.dir/TradingEngine.cpp.o


# Object files for target TradingPlatform
TradingPlatform_OBJECTS = \
"CMakeFiles/TradingPlatform.dir/main.cpp.o" \
"CMakeFiles/TradingPlatform.dir/CircularArray.cpp.o" \
"CMakeFiles/TradingPlatform.dir/GenericTrading.cpp.o" \
"CMakeFiles/TradingPlatform.dir/Instrument.cpp.o" \
"CMakeFiles/TradingPlatform.dir/Order.cpp.o" \
"CMakeFiles/TradingPlatform.dir/PriceLevel.cpp.o" \
"CMakeFiles/TradingPlatform.dir/SampleCode.cpp.o" \
"CMakeFiles/TradingPlatform.dir/StackedOrderBook.cpp.o" \
"CMakeFiles/TradingPlatform.dir/StackedOrderLevel.cpp.o" \
"CMakeFiles/TradingPlatform.dir/TradingEngine.cpp.o"

# External object files for target TradingPlatform
TradingPlatform_EXTERNAL_OBJECTS =

TradingPlatform: CMakeFiles/TradingPlatform.dir/main.cpp.o
TradingPlatform: CMakeFiles/TradingPlatform.dir/CircularArray.cpp.o
TradingPlatform: CMakeFiles/TradingPlatform.dir/GenericTrading.cpp.o
TradingPlatform: CMakeFiles/TradingPlatform.dir/Instrument.cpp.o
TradingPlatform: CMakeFiles/TradingPlatform.dir/Order.cpp.o
TradingPlatform: CMakeFiles/TradingPlatform.dir/PriceLevel.cpp.o
TradingPlatform: CMakeFiles/TradingPlatform.dir/SampleCode.cpp.o
TradingPlatform: CMakeFiles/TradingPlatform.dir/StackedOrderBook.cpp.o
TradingPlatform: CMakeFiles/TradingPlatform.dir/StackedOrderLevel.cpp.o
TradingPlatform: CMakeFiles/TradingPlatform.dir/TradingEngine.cpp.o
TradingPlatform: CMakeFiles/TradingPlatform.dir/build.make
TradingPlatform: CMakeFiles/TradingPlatform.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/michael/CLionProjects/TradingPlatform/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Linking CXX executable TradingPlatform"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/TradingPlatform.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/TradingPlatform.dir/build: TradingPlatform

.PHONY : CMakeFiles/TradingPlatform.dir/build

CMakeFiles/TradingPlatform.dir/requires: CMakeFiles/TradingPlatform.dir/main.cpp.o.requires
CMakeFiles/TradingPlatform.dir/requires: CMakeFiles/TradingPlatform.dir/CircularArray.cpp.o.requires
CMakeFiles/TradingPlatform.dir/requires: CMakeFiles/TradingPlatform.dir/GenericTrading.cpp.o.requires
CMakeFiles/TradingPlatform.dir/requires: CMakeFiles/TradingPlatform.dir/Instrument.cpp.o.requires
CMakeFiles/TradingPlatform.dir/requires: CMakeFiles/TradingPlatform.dir/Order.cpp.o.requires
CMakeFiles/TradingPlatform.dir/requires: CMakeFiles/TradingPlatform.dir/PriceLevel.cpp.o.requires
CMakeFiles/TradingPlatform.dir/requires: CMakeFiles/TradingPlatform.dir/SampleCode.cpp.o.requires
CMakeFiles/TradingPlatform.dir/requires: CMakeFiles/TradingPlatform.dir/StackedOrderBook.cpp.o.requires
CMakeFiles/TradingPlatform.dir/requires: CMakeFiles/TradingPlatform.dir/StackedOrderLevel.cpp.o.requires
CMakeFiles/TradingPlatform.dir/requires: CMakeFiles/TradingPlatform.dir/TradingEngine.cpp.o.requires

.PHONY : CMakeFiles/TradingPlatform.dir/requires

CMakeFiles/TradingPlatform.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/TradingPlatform.dir/cmake_clean.cmake
.PHONY : CMakeFiles/TradingPlatform.dir/clean

CMakeFiles/TradingPlatform.dir/depend:
	cd /Users/michael/CLionProjects/TradingPlatform/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/michael/CLionProjects/TradingPlatform /Users/michael/CLionProjects/TradingPlatform /Users/michael/CLionProjects/TradingPlatform/cmake-build-debug /Users/michael/CLionProjects/TradingPlatform/cmake-build-debug /Users/michael/CLionProjects/TradingPlatform/cmake-build-debug/CMakeFiles/TradingPlatform.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/TradingPlatform.dir/depend


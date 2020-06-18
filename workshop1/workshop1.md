# Conan Training Basics

## Introduction

Clone git repository

```
git clone https://github.com/conan-io/training
```

## Consume Conan packages

### Exercise 1 - Consume With CMake

Go into training/consumer directory

```
$ mkdir build && cd build
$ conan install ..
# check the generated conanbuildinfo.cmake
$ vim conanbuildinfo.cmake
$ cmake .. -DCMAKE_BUILD_TYPE=Release
$ cmake --build . # or make
$ bin/timer
```

Fix the typo!


### Exercise 2 - Consume (debug mode)

Go into training/consumer directory

```
$ conan search
$ conan search zlib/1.2.11@
...
# check build_type: Release
```

```
$ conan search zlib/1.2.11@ # check build_type: Release
$ conan install .. -s build_type=Debug
# note that new packages are installed
$ cmake .. -DCMAKE_BUILD_TYPE=Debug
$ cmake --build .
$ bin/timer
> ... 
$ conan search zlib/1.2.11@ # check 2 pkgs with different build_type
```


### Exercise 3 - Consume (gcc)

Go into training/consumer_gcc directory

```
$ cd training/consumer_gcc
$ ls # Look Ma, no build system!
$ conan install . -g compiler_args
# check conanbuildinfo.args
$ g++ timer.cpp @conanbuildinfo.args -o timer -std=c++11
$ ./timer
> ...
```

### Exercise 4 - Consume (Cmake Find)

Go into training/consumer_cmake_find directory

```
$ cd consumer_cmake_find
$ mkdir build && cd build
$ conan install ..
# check the generated Findxxxx.cmake
$ cmake .. -DCMAKE_BUILD_TYPE=Release
$ cmake --build . # or make
$ ./timer
> ...
```

Fix the typo!

## Create Conan packages

### Exercise 5 - Create package (from Github source)

Create empty directory 	training/create

Clone git repository

```
git clone https://github.com/conan-io/hello.git
```

```
$ cd ../create
$ conan new hello/0.1 # just a template
# check the conanfile.py
$ conan create . user/testing
> ...
$ conan search
$ conan search hello/0.1@user/testing
$ conan create . user/testing -s build_type=Debug
> ...
$ conan search hello/0.1@user/testing
```

### Exercise 6 - Consume "hello" package

```
$ cd consumer
# modify conanfile.txt to account for new dependency
# modify CMakeLists.txt to account for new CONAN_PKG::hello
# modify timer.cpp to include "hello.h" and call the hello() function
# conan install to update dependency graph and conanbuildinfo.cmake
# run cmake, build and run timer
```

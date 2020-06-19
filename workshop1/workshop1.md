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

### Exercise 7 - Create & test package

```
$ cd training/create
$ conan new hello/0.1 -t # -t generates test_package
$ conan create . user/testing
> ... # check output
> Hello World Release!
$ conan create . user/testing -s build_type=Debug
> ... # check output
> Hello World Debug!
```

### Exercise 8 - Create with source

```
$ cd training/create_sources
$ conan new hello/0.1 -t -s # The -s generates example src
$ conan create . user/testing
> ... # check output
> Hello World Release!
$ conan create . user/testing -s build_type=Debug
> Hello World Debug!
```

## Uploading packages to Artifactory

### Exercise 9a - Upload to Artifactory

```
$ conan remote add artifactory <URL from SetMeUp>
$ conan remote list
$ conan upload "hello*" -r artifactory --all
# search remote repositories
$ conan search "*" -r=artifactory
$ conan search hello/0.1@user/testing -r=artifactory
# Navigate to Artifactory WebUI and check!
```

### Exercise 9b - Upload ALL packages to Artifactory

```
$ conan upload "*" -r artifactory --all --confirm
$ conan search "*" -r=artifactory
# Navigate to Artifactory WebUI and check!
# We could: $ conan remote remove conan-center
# Can re-add with: $ conan remote add conan-center https://conan.bintray.com
```

### Exercise 10 - Exploring the Conan Cache

```
$ ls ~/.conan # look inside your conan home
$ ls ~/.conan/data # look inside your conan cache
$ ls ~/.conan/data/hello/0.1/user/testing
$ ls ~/.conan/data/hello/0.1/user/testing/package/<id>/include
$ ls ~/.conan/data/hello/0.1/user/testing/package/<id>/lib
$ conan remove "*" -f
$ conan search # local
```

### Exercise 11 - Use packages from Artifactory

```
$ cd consumer
$ mkdir build && cd build
$ conan install .. -r=artifactory
$ cmake .. -DCMAKE_BUILD_TYPE=Release
$ cmake --build . # or make
$ cd bin
$ ./timer
> ...
```

## Build configuration & cross-build

### Exercise 12 - Options for shared/static

```
$ cd training/create_sources
$ conan create . user/testing -o hello:shared=True
$ conan create . user/testing -o hello:shared=True -s build_type=Debug
$ conan search hello/0.1@user/testing
```

### Exercise 13 - Define and use custom options

```
$ cd training/create_options
$ conan create . user/testing -o greet:language=English
$ conan create . user/testing -o greet:language=Spanish
```

### Exercise 14 - Config values and errors

```
$ conan create . user/testing -o greet:language=Italian # Error
# and to check available options?
$ conan inspect greet/0.1@user/testing
$ conan inspect zlib/1.2.11@
$ conan get zlib/1.2.11@
# and for settings?
$ conan create . user/testing -s compiler=unknown # Error
$ conan create . user/testing -s compiler.version=200 # Error
```


### Exercise 15 - Profiles and cross-compiling

```
$ conan profile list
$ conan profile show default
$ conan create . user/testing
# equal to
$ conan create . user/testing -pr=default
```

```
$ cd cross_build
$ less rpi_armv7
# press "q" to exit less
$ conan create . user/testing -pr=rpi_armv7
> ...
$ conan search
$ conan search hello/0.1@user/testing
```






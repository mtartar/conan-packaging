# Packaging Hello World

## Create package

See [here](https://docs.conan.io/en/latest/creating_packages/getting_started.html#) for details

and [sources](https://github.com/conan-io/hello)

```
mkdir mypkg && cd mypkg
```

Then, create a working package recipe

```
conan new Hello/0.1 -t
```

this will generate following files

```
conanfile.py
test_package
  CMakeLists.txt
  conanfile.py
  example.cpp
```

In conanfile.py, we found:

- settings variable
- source() method
- build() method
- package() method
- package_info() method


# The test_package folder

In conanfile.py, we found:

- build() method
- imports() method
- test() method


# Creating and Testing Packages

```
conan create . demo/testing
```

it is equivalent to

```
conan export . demo/testing
conan install Hello/0.1@demo/testing --build=Hello
# package is created now, use test to test it
conan test test_package Hello/0.1@demo/testing
```

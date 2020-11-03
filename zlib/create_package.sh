#!/bin/bash

git clone git@github.com:conan-community/conan-zlib.git
cd conan-zlib
conan create . demo/testing

conan search zlib

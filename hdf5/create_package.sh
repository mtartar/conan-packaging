#!/bin/bash

git clone https://github.com/darcamo/conan-hdf5
cd conan-hdf5
conan create . demo/testing

conan search hdf5

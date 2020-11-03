#!/bin/bash

git clone git@github.com:bincrafters/conan-openmpi.git
cd conan-openmpi
conan create . demo/testing

conan search openmpi

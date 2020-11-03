#!/bin/bash

git clone git@github.com:bincrafters/conan-gtest.git
cd conan-gtest
conan create . demo/testing

conan search gtest

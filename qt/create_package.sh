#!/bin/bash

git clone git@github.com:bincrafters/conan-qt.git
cd conan-qt
conan create . qt/5.15.1@demo/testing

conan search qt

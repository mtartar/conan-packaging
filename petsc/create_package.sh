#!/bin/bash

git clone git@github.com:bilke/conan-petsc.git
cd conan-petsc
conan create . demo/testing

conan search petsc

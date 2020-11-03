#!/bin/bash

git clone git@github.com:darcamo/conan-vtk.git
cd conan-vtk
conan create . demo/testing

conan search vtk

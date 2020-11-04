#!/bin/bash

git clone git@github.com:vthiery/conan-nlopt.git
cd conan-nlopt
conan create . demo/testing

conan search nlopt

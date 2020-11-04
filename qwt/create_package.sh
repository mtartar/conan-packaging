#!/bin/bash

git clone git@github.com:kenfred/conan-qwt.git
cd conan-qwt
conan create . demo/testing

conan search qwt

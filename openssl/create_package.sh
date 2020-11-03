#!/bin/bash

git clone https://github.com/conan-community/conan-openssl
cd conan-openssl
conan create . OpenSSL/1.1.1a@demo/testing

conan search OpenSSL

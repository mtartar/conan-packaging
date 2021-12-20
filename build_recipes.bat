:: Build dependencies using recipes for Windows

set CWD=%CD%
echo "CWD=%CWD%"

:: User
set USER=demo
set CHANNEL=testing
echo "USER=%USER%"
echo "CHANNEL=%CHANNEL%"


:: 
set ARGS_CREATE=""
set ARGS_CREATE="--settings:build build_type=Debug"


:: TODO: Use profile

:: TODO: Push to Artifactory

:: ...


:: eigen
set NAME=eigen

:: eigen 3.3.7 or 3.3.9
set VERSION=3.3.7
cd %CWD%\recipes\%NAME%\all
conan create %ARGS_CREATE% . %NAME%/%VERSION%@%USER%/%CHANNEL% 
conan search %NAME%/%VERSION%@%USER%/%CHANNEL%




:: jom
set NAME=jom

:: jom 1.1.3
set VERSION=1.1.3
cd %CWD%\recipes\%NAME%\all
conan create %ARGS_CREATE% . %NAME%/%VERSION%@%USER%/%CHANNEL% 
conan search %NAME%/%VERSION%@%USER%/%CHANNEL%
:: ???





:: zlib
set NAME=zlib


:: zlib 1.2.11
set VERSION=1.2.11
cd %CWD%\recipes\%NAME%\%VERSION%
conan create %ARGS_CREATE% . %NAME%/%VERSION%@%USER%/%CHANNEL% 
conan search %NAME%/%VERSION%@%USER%/%CHANNEL%


:: Finally, return to current working directory
cd %CWD%

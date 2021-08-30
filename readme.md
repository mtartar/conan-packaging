# Conan packaging

Manage third party dependencies with [conan](https://conan.io/)

See [documentation](https://docs.conan.io/en/latest/) for more details.

## Installation

See [installation](https://docs.conan.io/en/latest/installation.html) for more details.

Install conan with:

```
pip install conan
```

Update with:

```
pip install conan --upgrade
```

## Workflow

See [here](https://bincrafters.github.io/2017/11/10/Updated-Conan-Package-Flow/) for more details

### conan source

```
$ conan source . --source-folder=tmp/source
```

### conan install

```
$ conan install . --install-folder=tmp/build [--profile XXXX]
```

### conan build

```
$ conan build . --source-folder=tmp/source --build-folder=tmp/build
```

### conan package

```
$ conan package . --build_folder=tmp/build --package_folder=tmp/package
```

### conan create

```
$ conan create user/channel
```

### conan test

```
$ conan test test_package package/version@user/channel
```


## Reference
   
See [here](https://docs.conan.io/en/latest/reference.html)

### Commands

### Files (conanfile.txt, conanfile.py)	

### Generators

Set of [generators](https://docs.conan.io/en/latest/reference/generators.html)

### Profiles

### Build helpers

### Tools

### Configuration files

### Environment variables

### Hooks


## Package references

<package_name>/<version>@<user_name>/<channel>:<package_id>

<package_name>/<version>@<user_name>/<channel>#<RREV>:<package_id>#<PREV>

with:

- Recipe revision (RREV): A unique ID using the latest VCS hash or a checksum of the recipe manifest (conanfile.py with files exported if any).
- Package revision (PREV): A unique ID using the checksum of the package manifest (all files stored in a binary package).


## Settings

[Settings](https://docs.conan.io/en/latest/extending/custom_settings.html)


## Packaging

### CMake

Integration with [cmake](https://docs.conan.io/en/latest/integrations/build_system/cmake.html)

Using [cmake_multi](https://docs.conan.io/en/latest/reference/generators/cmakemulti.html)
Using [find_package](https://docs.conan.io/en/latest/reference/generators/cmake_find_package.html)

[Transparent cmake integration](https://blog.conan.io/2018/06/11/Transparent-CMake-Integration.html)

### Packaging binaries

[Packaging Existing Binaries](https://docs.conan.io/en/latest/creating_packages/existing_binaries.html)


### Conan center

[Conan Center](https://github.com/conan-io/conan-center-index)

See [wiki](https://github.com/conan-io/conan-center-index/wiki)

Search [here](https://conan.io/center/)



## Usage in Visual Studio

For more details, see
- [Visual Studio](https://docs.conan.io/en/latest/integrations/ide/visual_studio.html)
- [MSBuild](https://docs.conan.io/en/latest/integrations/build_system/msbuild.html)


### Extension

There's an [extension](https://github.com/conan-io/conan-vs-extension) for VS 2017/2019


## Continuous Integration

[doc](https://docs.conan.io/en/latest/howtos/generic_ci_artifactory.html)


## Tutorials

[Getting started](https://docs.conan.io/en/latest/getting_started.html)

## Advanced usage

[Hooks](https://docs.conan.io/en/latest/extending/hooks.html) and [git repo](https://github.com/conan-io/hooks)

[Git tool](https://docs.conan.io/en/latest/reference/tools.html#tools-git)

## Dependencies

### Binaries ? Sources ?

- ceetron components
- cm2
- occ
- qtitanribbon



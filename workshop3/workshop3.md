# CI/CD in C/C++ Projects with conan and Artifactory

## Recap from Advanced Training

```
git clone git@github.com:conan-io/training-ci.git
```

See slides in document ci_cd_training.pdf



Revisions
Lock files

## Introduction




hook

Package pipeline

feature branch

Merge


## Phase 1

### Lab 1

```
docker exec -it jenkins /bin/bash
cd /workdir/libB
git checkout -b cool_feature
echo "// modify libB source" >> src/libB.cpp
git commit -a -m "commit cool feature"
git push origin cool_feature
```

Jenkins
Artifactory

## Phase 2

### Lab 2

```
git checkout -b PR-01
echo "#Comments in conanfile.py" >> conanfile.py
git commit -a -m "Simulating a PR to develop"
git push origin PR-01
```

### Lab 3

```

```


### Lab 4

```

```

## Phase 3

### Lab 5



## Build info


### Lab 6


```
```

### Lab 7


```
```

### Lab 8


```
```

### Lab 9


```
```

### Lab 10


```
```




# microants

A tiny shell script to create tiny container images of [ANTs](https://github.com/ANTsX/ANTs) programs.

Usage

```shell
docker buildx build -t docker.io/fnndsc/n4biasfieldcorrection:2.5.0 --build-arg prog=N4BiasFieldCorrection --push --platform linux/amd64,linux/arm64,linux/ppc64le .
```

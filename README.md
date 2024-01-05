# microants

A tiny shell script to create tiny container images of [ANTs](https://github.com/ANTsX/ANTs) programs.

## Build It Yourself

```shell
docker buildx build -t docker.io/fnndsc/n4biasfieldcorrection:2.5.0 --build-arg prog=N4BiasFieldCorrection --push --platform linux/amd64,linux/arm64,linux/ppc64le .
```

## Images We Provide

- `N4BiasFieldCorrection`: see [FNNDSC/pl-N4BiasFieldCorrection](https://github.com/FNNDSC/pl-N4BiasFieldCorrection)

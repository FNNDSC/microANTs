# microants

A tiny shell script to create tiny container images of [ANTs](https://github.com/ANTsX/ANTs) programs.

## Build It Yourself

```shell
./create.sh N4BiasFieldCorrection > Dockerfile
docker buildx build --platform linux/amd64,linux/arm64 -t docker.io/fnndsc/n4biasfieldcorrection:2.5.0 -t docker.io/fnndsc/n4biasfieldcorrection:latest --push .
```

## Images We Provide

- `N4BiasFieldCorrection`: see [FNNDSC/pl-N4BiasFieldCorrection](https://github.com/FNNDSC/pl-N4BiasFieldCorrection)

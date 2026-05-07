# microants

A tiny shell script to create tiny container images of [ANTs](https://github.com/ANTsX/ANTs) programs.

## Build It Yourself

```shell
./create.sh N4BiasFieldCorrection > Containerfile
version="$(grep -oP '(?<=ants:)\d+\.\d+\.\d+(?=-notshared)' Containerfile)"
podman build --platform linux/amd64,linux/arm64 --manifest docker.io/fnndsc/n4biasfieldcorrection:$version .

podman manifest push docker.io/fnndsc/n4biasfieldcorrection:$version
skopeo copy docker://docker.io/fnndsc/n4biasfieldcorrection:$version docker://docker.io/fnndsc/n4biasfieldcorrection:latest
skopeo copy docker://docker.io/fnndsc/n4biasfieldcorrection:$version docker://ghcr.io/fnndsc/n4biasfieldcorrection:$version
skopeo copy docker://docker.io/fnndsc/n4biasfieldcorrection:latest docker://ghcr.io/fnndsc/n4biasfieldcorrection:latest
```

## Images We Provide

- `N4BiasFieldCorrection`: see [FNNDSC/pl-N4BiasFieldCorrection](https://github.com/FNNDSC/pl-N4BiasFieldCorrection)

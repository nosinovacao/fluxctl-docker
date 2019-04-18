# Flux Client

## Supported tags and respective `Dockerfile` links

* `1.12.0-k13`, `latest`    [(1.12.0/Dockerfile)](https://github.com/nosinovacao/fluxctl-docker/blob/1.12.0-k13/Dockerfile)
* `1.12.0`    [(1.12.0/Dockerfile)](https://github.com/nosinovacao/fluxctl-docker/blob/1.12.0/Dockerfile)

## Overview

This container provides the Flux client fluxctl which can be used to interact with the Flux operator.

It is based on the kubectl client container located here: <https://github.com/lachie83/k8s-kubectl>.

For more information regarding Flux, please visit <https://github.com/weaveworks/flux>.

## Build

`make docker_build`

## Run

`docker run --rm nosinovacao/fluxctl:latest --help`
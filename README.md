# Flux Client

## Overview

This container provides the Flux client fluxctl which can be used to interact with the Flux operator.

It is based on the kubectl client container located here: <https://github.com/lachie83/k8s-kubectl>.

For more information regarding Flux, please visit <https://github.com/weaveworks/flux>.

## Build

`make docker_build`

## Run

`docker run --rm ghcr.io/nosinovacao/fluxctl:latest --help`

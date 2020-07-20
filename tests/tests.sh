#!/bin/bash

set -euo pipefail

docker run --rm "${DOCKER_IMAGE}:${TAG}" plantuml -version
docker run --rm "${DOCKER_IMAGE}:${TAG}" asciidoctor -v
docker run --rm "${DOCKER_IMAGE}:${TAG}" make -v
docker run --rm "${DOCKER_IMAGE}:${TAG}" rsync --version
docker run --rm "${DOCKER_IMAGE}:${TAG}" curl --version
docker run --rm "${DOCKER_IMAGE}:${TAG}" pandoc --version
docker run --rm "${DOCKER_IMAGE}:${TAG}" git --version

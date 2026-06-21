#!/usr/bin/env bash

set -euo pipefail

docker.alpine.start() {
    local image="${1:-alpine:latest}"
    local cmd=("${@:2}")

    if [ ${#cmd[@]} -eq 0 ]; then
        cmd=(sleep infinity)
    fi

    docker run -d --rm --name alpine "$image" "${cmd[@]}"
}

docker.alpine.remove() {
  docker rm -f alpine
}

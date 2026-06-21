#!/usr/bin/env bash

set -euo pipefail

docker.run() {
  local image="$1"
  local cmd=("${@:2}")

  docker run --rm -t "$image" "${cmd[@]}"
}

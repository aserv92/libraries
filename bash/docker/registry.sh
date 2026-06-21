#!/usr/bin/env bash

set -euo pipefail

docker.registry.tag.exists.for.arch() {
  local registry="$1"
  local tag="$2"
  local arch="$3"

  if docker buildx imagetools inspect "${registry}:${tag}" | grep "$arch" >/dev/null 2>&1; then
    echo 'yes'
    return 0
  fi
  echo 'no'
}

#!/usr/bin/env bash

set -euo pipefail

docker.alpine.apk() {
  docker exec -t alpine apk "$@"
}

docker.alpine.apk.update() {
  local target_arch="${1:-$(uname -m)}"

  docker.alpine.apk --arch="$target_arch" --allow-untrusted update
}

docker.alpine.apk.query.version() {
  local arch="$1"
  local name="$2"

  docker.alpine.apk \
    --allow-untrusted \
    --arch="${arch}" \
    query \
    --fields=version \
    --format json \
    --match name \
    "${name}" \
    | jq -Mr '.[0].version'?
}

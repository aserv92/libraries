#!/usr/bin/env bash

set -euo pipefail

source "${BASH_LIBRARIES_DIR}/docker/alpine.sh"

docker.alpine.apk() {
  docker.alpine.exec apk "$@"
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

#!/usr/bin/env bash

set -euo pipefail

env.load() {
  local env="${1:-}"

  set +a
  source "./$env.env"
  set -a
}

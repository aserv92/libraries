#!/usr/bin/env bash

set -euo pipefail

declare -A DOCKER_ARCHS_TO_LINUX_ARCHS=(
  [linux/amd64]=x86_64
  [linux/arm64]=aarch64
)

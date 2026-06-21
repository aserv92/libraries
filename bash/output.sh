#!/usr/bin/env bash

# ANSI colors
readonly OUTPUT_RESET='\033[0m'
readonly OUTPUT_BLUE='\033[0;34m'
readonly OUTPUT_YELLOW='\033[0;33m'
readonly OUTPUT_RED='\033[0;31m'
readonly OUTPUT_GREEN='\033[0;32m'

output.info() {
  printf "${OUTPUT_BLUE}[INFO]${OUTPUT_RESET} %s\n" "$@"
}

output.warning() {
  printf "${OUTPUT_YELLOW}[WARN]${OUTPUT_RESET} %s\n" "$@" >&2
}

output.error() {
  printf "${OUTPUT_RED}[ERROR]${OUTPUT_RESET} %s\n" "$@" >&2
}

output.success() {
  printf "${OUTPUT_GREEN}[SUCCESS]${OUTPUT_RESET} %s\n" "$@"
}

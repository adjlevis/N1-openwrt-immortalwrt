#!/bin/bash
set -euxo pipefail

SCRIPT_DIR=$(cd "$(dirname "$0")" && pwd)
WORKDIR="$SCRIPT_DIR"

docker run --rm \
  --user root \
  -v "$WORKDIR/bin:/home/build/openwrt/bin" \
  -v "$WORKDIR/files:/home/build/openwrt/files" \
  -v "$WORKDIR/build.sh:/home/build/openwrt/build.sh" \
  openwrt/imagebuilder:armsr-armv8 \
  /home/build/openwrt/build.sh

#!/bin/bash
set -euxo pipefail

WORKDIR=$(pwd)

docker run --rm \
  --user root \
  -v "$WORKDIR/bin:/home/build/openwrt/bin" \
  -v "$WORKDIR/files:/home/build/openwrt/files" \
  -v "$WORKDIR/build.sh:/home/build/openwrt/build.sh" \
openwrt/imagebuilder:armsr-armv8 \
  /home/build/openwrt/build.sh








#!/bin/bash
set -e

# 确保输出目录存在
mkdir -p ./bin

docker run --rm \
  -v "$(pwd)/bin:/home/build/immortalwrt/bin" \
  -v "$(pwd)/files:/home/build/immortalwrt/files" \
  -v "$(pwd)/build.sh:/home/build/immortalwrt/build.sh" \
  immortalwrt/imagebuilder:layerscape-armv8_64b-openwrt-24.10 \
  /home/build/immortalwrt/build.sh



#!/bin/bash
set -e

# 确保输出目录存在并可写
mkdir -p ./bin
chmod -R 777 ./bin || true

docker run --rm \
  --user $(id -u):$(id -g) \
  -v "$(pwd)/bin:/home/build/immortalwrt/bin" \
  -v "$(pwd)/files:/home/build/immortalwrt/files" \
  -v "$(pwd)/build.sh:/home/build/immortalwrt/build.sh" \
  immortalwrt/imagebuilder:layerscape-armv8_64b-openwrt-24.10 \
  /home/build/immortalwrt/build.sh




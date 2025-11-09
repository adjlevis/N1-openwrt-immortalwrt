#!/bin/bash
set -euxo pipefail

[ -x ./setup.sh ] && ./setup.sh

PACKAGES=""
PACKAGES="$PACKAGES -dnsmasq"
PACKAGES="$PACKAGES dnsmasq-full"
PACKAGES="$PACKAGES luci"
PACKAGES="$PACKAGES ca-bundle"
PACKAGES="$PACKAGES curl"
PACKAGES="$PACKAGES yq"
PACKAGES="$PACKAGES ip-full"
PACKAGES="$PACKAGES kmod-tun"
PACKAGES="$PACKAGES kmod-inet-diag"
PACKAGES="$PACKAGES kmod-nft-tproxy"
PACKAGES="$PACKAGES luci-i18n-base-zh-cn"
PACKAGES="$PACKAGES luci-i18n-firewall-zh-cn"
PACKAGES="$PACKAGES luci-i18n-package-manager-zh-cn"

# ✅ 明确指定输出目录
make image PROFILE="generic" PACKAGES="$PACKAGES" ROOTFS_PARTSIZE="512" BIN_DIR="./bin"


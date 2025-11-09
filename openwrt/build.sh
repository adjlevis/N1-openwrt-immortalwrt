#!/bin/bash

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

# ✅ 指定构建目标（比如 generic 或 onecloud）
make image PROFILE="N1" PACKAGES="$PACKAGES" ROOTFS_PARTSIZE="512"

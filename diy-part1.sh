#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#git clone https://github.com/fw876/helloworld.git package/helloworld
echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
sed -i 's/mac_addr = of_get_mac_address(rt2x00dev->dev->of_node)/mac_addr = of_get_mac_address(rt2x00dev->dev->of_node, eeprom_mac_addr)/' /workdir/openwrt/build_dir/target-x86_64_musl/linux-x86_64/backports-5.10.42-1/drivers/net/wireless/ralink/rt2x00/rt2x00dev.c
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default

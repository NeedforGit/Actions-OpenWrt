#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#


# 修改openwrt登陆地址,把下面的192.168.2.2修改成你想要的就可以了
#sed -i 's/192.168.1.1/192.168.2.2/g' package/base-files/files/bin/config_generate

# 修改主机名字，把OpenWrt-123修改你喜欢的就行（不能纯数字或者使用中文）
#sed -i '/uci commit system/i\uci set system.@system[0].hostname='OpenWrt-123' package/lean/default-settings/files/zzz-default-settings

# 版本号里显示一个自己的名字（281677160 build $(TZ=UTC-8 date "+%Y.%m.%d") @ 这些都是后增加的）
sed -i 's/OpenWrt /LZ build $(TZ=UTC-8 date "+%Y.%m.%d") @ OpenWrt /g' package/lean/default-settings/files/zzz-default-settings


#移除不用软件包
#rm -rf package/lean/luci-app-dockerman
#rm -rf package/lean/luci-app-wrtbwmon
#rm -rf package/lean/luci-theme-argon
#rm -rf feeds/luci/applications/luci-app-mosdns
rm -rf feeds/packages/lang/golang


# 修改 argon 为默认主题,可根据你喜欢的修改成其他的（不选择那些会自动改变为默认主题的主题才有效果）
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# JD签到
#git clone https://github.com/jerrykuku/luci-app-jd-dailybonus.git


#添加额外软件包
#git clone https://github.com/jerrykuku/luci-app-jd-dailybonus.git package/luci-app-jd-dailybonus
git clone https://github.com/jerrykuku/lua-maxminddb.git package/lua-maxminddb
#git clone https://github.com/jerrykuku/luci-app-vssr.git package/luci-app-vssr
#git clone https://github.com/kongfl888/luci-app-adguardhome.git package/luci-app-adguardhome
#git clone https://github.com/garypang13/luci-app-bypass package/luci-app-bypass
#git clone https://github.com/Cneupa/luci-app-bypass package/luci-app-bypass
#git clone https://github.com/wxfyes/luci-app-ttnode.git package/luci-app-ttnode
#git clone https://github.com/ophub/luci-app-amlogic.git package/luci-app-amlogic
#git clone https://github.com/lisaac/luci-app-dockerman.git package/luci-app-dockerman
#git clone https://github.com/xiaozhuai/luci-app-filebrowser.git package/luci-app-filebrowser
#git clone https://github.com/tty228/luci-app-serverchan.git package/luci-app-serverchan
#git clone https://github.com/godros/luci-app-godproxy.git package/luci-app-godproxy
#git clone https://github.com/kuoruan/openwrt-upx.git package/openwrt-upx
#git clone https://github.com/kenzok8/small.git package/small
#git clone https://github.com/kenzok8/openwrt-packages.git package/openwrt-packages
#git clone https://github.com/QiuSimons/openwrt-mos.git package/openwrt-mos
git clone https://github.com/destan19/OpenAppFilter.git package/OpenAppFilter
#git clone https://github.com/linkease/istore-ui
#git clone https://github.com/linkease/istore
#git clone https://github.com/sbwml/packages_lang_golang -b 22.x feeds/packages/lang/golang
git clone https://github.com/kenzok8/golang feeds/packages/lang/golang
#git clone https://github.com/sbwml/packages_lang_golang -b 20.x feeds/packages/lang/golang

 
#svn co https://github.com/vernesong/OpenClash/trunk/luci-app-openclash package/luci-app-openclash

# 编译 po2lmo (如果有po2lmo可跳过)
#pushd package/luci-app-openclash/tools/po2lmo
#make && sudo make install
popd
svn co https://github.com/xiaorouji/openwrt-passwall/trunk/brook package/brook
svn co https://github.com/xiaorouji/openwrt-passwall/trunk/chinadns-ng package/chinadns-ng
svn co https://github.com/xiaorouji/openwrt-passwall/trunk/tcping package/tcping
svn co https://github.com/xiaorouji/openwrt-passwall/trunk/trojan-go package/trojan-go
svn co https://github.com/xiaorouji/openwrt-passwall/trunk/trojan-plus package/trojan-plus
svn co https://github.com/xiaorouji/openwrt-passwall/trunk/luci-app-passwall package/luci-app-passwall
svn co https://github.com/xiaorouji/openwrt-passwall/trunk/ssocks package/ssocks
svn co https://github.com/xiaorouji/openwrt-passwall/trunk/hysteria package/hysteria
svn co https://github.com/fw876/helloworld/tree/master/xray-core package/xray-core
svn co https://github.com/fw876/helloworld/tree/master/xray-plugin package/xray-plugin
svn co https://github.com/fw876/helloworld/tree/master/shadowsocks-rust package/shadowsocks-rust
svn co https://github.com/fw876/helloworld/tree/master/v2ray-plugin package/v2ray-plugin
svn co https://github.com/fw876/helloworld/tree/master/v2ray-core package/v2ray-core
svn co https://github.com/fw876/helloworld/tree/master/shadowsocksr-libev package/shadowsocksr-libev
svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-eqos package/luci-app-eqos
svn co https://github.com/fw876/helloworld/tree/master/luci-app-ssr-plus package/luci-app-ssr-plus
svn co https://github.com/fw876/helloworld/tree/master/naiveproxy package/naiveproxy

# themes
#svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-theme-edge package/luci-theme-edge
#git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon
#git clone https://github.com/jerrykuku/luci-app-argon-config package/luci-app-argon-config


#添加smartdns
svn co https://github.com/kiddin9/smartdns-le
#svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-smartdns package/luci-app-smartdns
svn co https://github.com/kenzok8/openwrt-packages/branches/main/luci-app-smartdns package/luci-app-smartdns
#sed -i 's/PKG_VERSION:=.*/PKG_VERSION:=1.2021.34/' feeds/packages/net/smartdns/Makefile
#sed -i 's/PKG_SOURCE_VERSION:=.*/PKG_SOURCE_VERSION:=756029f5e9879075c042030bd3aa3db06d700270/' feeds/packages/net/smartdns/Makefile
#sed -i 's/PKG_MIRROR_HASH:=.*/PKG_MIRROR_HASH:=c2979d956127946861977781beb3323ad9a614ae55014bc99ad39beb7a27d481/' feeds/packages/net/smartdns/Makefile

# 修改默认主题
#sed -i '/set luci.main.mediaurlbase=\/luci-static\/bootstrap/d' feeds/luci/themes/luci-theme-bootstrap/root/etc/uci-defaults/30_luci-theme-bootstrap
#sed -i 's/luci-theme-bootstrap/luci-theme-edge/g' ./feeds/luci/collections/luci/Makefile

#修改makefile
#find package/*/ -maxdepth 2 -path "*/Makefile" | xargs -i sed -i 's/include\ \.\.\/\.\.\/luci\.mk/include \$(TOPDIR)\/feeds\/luci\/luci\.mk/g' {}
#find package/*/ -maxdepth 2 -path "*/Makefile" | xargs -i sed -i 's/include\ \.\.\/\.\.\/lang\/golang\/golang\-package\.mk/include \$(TOPDIR)\/feeds\/packages\/lang\/golang\/golang\-package\.mk/g' {}
#find package/*/ -maxdepth 2 -path "*/Makefile" | xargs -i sed -i 's/PKG_SOURCE_URL:=\@GHREPO/PKG_SOURCE_URL:=https:\/\/github\.com/g' {}
#find package/*/ -maxdepth 2 -path "*/Makefile" | xargs -i sed -i 's/PKG_SOURCE_URL:=\@GHCODELOAD/PKG_SOURCE_URL:=https:\/\/codeload\.github\.com/g' {}
#sed -i 's/PKG_VERSION:=.*/PKG_VERSION:=1.0.2/g' feeds/packages/utils/runc/Makefile
#sed -i 's/PKG_HASH:=.*/PKG_HASH:=6c3cca4bbeb5d9b2f5e3c0c401c9d27bc8a5d2a0db8a2f6a06efd03ad3c38a33/g' feeds/packages/utils/runc/Makefile
#sed -i 's/PKG_SOURCE_VERSION:=.*/PKG_SOURCE_VERSION:=52b36a2dd837e8462de8e01458bf02cf9eea47dd/g' feeds/packages/utils/runc/Makefile
sed -i 's/stripped/release/g' feeds/packages/multimedia/aliyundrive-webdav/Makefile
sed -i 's#GO_PKG_TARGET_VARS.*# #g' feeds/packages/utils/v2dat/Makefile
sed -i 's/golang/host/golang/host fuse/g' package/luci-app-alist/alist/Makefile


# xray-plugin
sed -i 's/PKG_HASH:=.*/PKG_HASH:=4a178a2bacffcc2fd374c57e47b71eb0cb5667bfe747690a16501092c0618707/' package/xray-plugin/Makefile
./scripts/feeds update -a
./scripts/feeds install -a

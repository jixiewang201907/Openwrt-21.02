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

echo 'src-git kiddin9 https://github.com/kiddin9/openwrt-packages' >>feeds.conf.default

git clone https://github.com/0118Add/luci-app-unblockneteasemusic package/luci-app-unblockneteasemusic
sed -i 's/解除网易云音乐播放限制/音乐解锁/g' package/luci-app-unblockneteasemusic/luasrc/controller/unblockneteasemusic.lua
svn co https://github.com/coolsnowwolf/packages/trunk/net/redsocks2 package/redsocks2

./scripts/feeds update -a
./scripts/feeds install -a

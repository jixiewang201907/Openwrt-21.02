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

# Modify default IP
sed -i 's/192.168.1.1/192.168.2.10/g' package/base-files/files/bin/config_generate


# 设置密码为空（安装固件时无需密码登陆，然后自己修改想要的密码）
#sed -i 's@.*CYXluq4wUazHjmCDBCqXF*@#&@g' package/lean/default-settings/files/zzz-default-settings

#添加额外软件包
#rm -rf feeds/luci/applications/luci-app-frpc
#rm -rf feeds/luci/applications/luci-app-vssr
rm -rf feeds/luci/applications/luci-app-netdata
#rm -rf feeds/luci/applications/luci-app-unblockneteasemusic
rm -rf feeds/luci/applications/luci-app-ssr-plus
#svn co https://github.com/kiddin9/openwrt-packages/trunk/luci-app-frpc package/luci-app-frpc
svn co https://github.com/sirpdboy/sirpdboy-package/trunk/luci-app-netdata package/luci-app-netdata
#rm -rf feeds/luci/applications/luci-app-v2ray-server
#svn co https://github.com/coolsnowwolf/luci/trunk/applications/luci-app-v2ray-server package/luci-app-v2ray-server
#git clone https://github.com/0118Add/luci-app-v2ray-server.git package/luci-app-v2ray-server
git clone https://github.com/kiddin9/openwrt-bypass.git package/luci-app-bypass
#git clone https://github.com/jerrykuku/luci-app-vssr.git package/luci-app-vssr
#git clone https://github.com/tuanqing/install-program.git package/install-program
git clone https://github.com/ophub/luci-app-amlogic.git package/luci-app-amlogic
#git clone https://github.com/0118Add/luci-app-unblockneteasemusic.git package/luci-app-unblockneteasemusic
git clone https://github.com/0118Add/pass-ssrp.git package/luci-app-ssr-plus
#sed -i 's/ShadowSocksR Plus+/SSR Plus+/g' package/luci-app-ssr-plus/helloworld/luci-app-ssr-plus/luasrc/controller/shadowsocksr.lua

#sed -i 's/V2ray 服务器/V2ray 服务/g' package/luci-app-v2ray-server/po/zh-cn/v2ray_server.po
# 调整 V2ray服务 到 VPN 菜单"
#sed -i 's/services/vpn/g' package/luci-app-v2ray-server/luasrc/controller/*.lua
#sed -i 's/services/vpn/g' package/luci-app-v2ray-server/luasrc/model/cbi/v2ray_server/*.lua
#sed -i 's/services/vpn/g' package/luci-app-v2ray-server/luasrc/view/v2ray_server/*.htm

#sed -i '175i\  --with-sandbox=rlimit \\' feeds/packages/net/openssh/Makefile

#find package/*/ feeds/*/ -maxdepth 2 -path "*luci-app-vssr/Makefile" | xargs -i sed -i 's/shadowsocksr-libev-alt/shadowsocksr-libev-ssr-redir/g' {}
#find package/*/ feeds/*/ -maxdepth 2 -path "*luci-app-vssr/Makefile" | xargs -i sed -i 's/shadowsocksr-libev-server/shadowsocksr-libev-ssr-server/g' {}

./scripts/feeds update -a
./scripts/feeds install -a

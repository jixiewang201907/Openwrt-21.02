# 版本号里显示一个自己的名字（BGG build $(TZ=UTC-8 date "+%Y.%m.%d") @ 这些都是后增加的）
#sed -i "s/OpenWrt /BGG build $(TZ=UTC-8 date "+%Y.%m.%d") @ OpenWrt /g" package/lean/default-settings/files/zzz-default-settings

#sed -i 's/PATCHVER:=4.9/PATCHVER:=4.14/g' target/linux/x86/Makefile

rm -rf package/feeds/kenzo/bpytop
rm -rf package/feeds/kenzo/luci-app-easymesh
rm -rf package/feeds/kenzo/luci-app-openclash
echo 'src-git kenzo https://github.com/kenzok8/small-package' >>feeds.conf.default
echo 'src-git small https://github.com/kenzok8/small' >>feeds.conf.default

#使用源码自带ShadowSocksR Plus+出国软件
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default
#sed -i '$a src-git helloworld https://github.com/fw876/helloworld' feeds.conf.default

#sed -i 's/PATCHVER:=5.10/PATCHVER:=5.4/g' target/linux/x86/Makefile

#sed -i 's/KERNEL_PATCHVER:=5.10/KERNEL_PATCHVER:=5.4/g' target/linux/x86/Makefile
#sed -i 's/KERNEL_TESTING_PATCHVER:=5.10/KERNEL_TESTING_PATCHVER:=5.4/g' target/linux/x86/Makefile

#rm -rf package/lean/luci-lib-docker
#git clone https://github.com/lisaac/luci-lib-docker.git package/luci-lib-docker
#git clone https://github.com/lisaac/luci-app-dockerman.git package/luci-app-dockerman
#git clone https://github.com/jerrykuku/luci-app-vssr.git package/luci-app-vssr
#git clone https://github.com/jerrykuku/lua-maxminddb.git package/lua-maxminddb
#git clone https://github.com/Mattraks/helloworld.git package/lean/luci-app-ssr-plus
#rm -rf feeds/packages/utils/runc
#rm -rf package/lean/automount
#svn co https://github.com/Lienol/openwrt/branches/19.07/package/lean/automount package/lean/automount
#svn co https://github.com/immortalwrt/packages/branches/openwrt-18.06/utils/runc feeds/packages/utils/runc
#git clone https://github.com/0118Add/sirpdboy-package.git package/sirpdboy-package
#svn co https://github.com/garypang13/openwrt-packages/trunk/smartdns-le package/smartdns-le
#git clone https://github.com/garypang13/luci-app-bypass.git package/luci-app-bypass
#svn co https://github.com/xiaorouji/openwrt-passwall/trunk/brook package/brook
#svn co https://github.com/xiaorouji/openwrt-passwall/trunk/chinadns-ng package/chinadns-ng
#svn co https://github.com/xiaorouji/openwrt-passwall/trunk/trojan package/trojan
#svn co https://github.com/xiaorouji/openwrt-passwall/trunk/trojan-go package/trojan-go
#svn co https://github.com/xiaorouji/openwrt-passwall/trunk/trojan-plus package/trojan-plus
#svn co https://github.com/xiaorouji/openwrt-passwall/trunk/ssocks package/ssocks
#svn co https://github.com/xiaorouji/openwrt-passwall/trunk/dns2socks package/dns2socks
#svn co https://github.com/xiaorouji/openwrt-passwall/trunk/ipt2socks package/ipt2socks
#svn co https://github.com/xiaorouji/openwrt-passwall/trunk/microsocks package/microsocks 
#svn co https://github.com/xiaorouji/openwrt-passwall/trunk/pdnsd-alt package/pdnsd-alt
#svn co https://github.com/xiaorouji/openwrt-passwall/trunk/luci-app-passwall package/luci-app-passwall
#svn co https://github.com/xiaorouji/openwrt-passwall/trunk/xray-core package/xray-core
#svn co https://github.com/xiaorouji/openwrt-passwall/trunk/xray-plugin package/xray-plugin
#svn co https://github.com/fw876/helloworld/trunk/shadowsocks-rust package/shadowsocks-rust
#svn co https://github.com/fw876/helloworld/trunk/shadowsocksr-libev package/shadowsocksr-libev
#svn co https://github.com/fw876/helloworld/trunk/v2ray-plugin package/v2ray-plugin
#svn co https://github.com/xiaorouji/openwrt-passwall/trunk/tcping package/tcping
#svn co https://github.com/xiaorouji/openwrt-passwall/trunk/naiveproxy package/naiveproxy
#svn co https://github.com/fw876/helloworld/trunk/luci-app-ssr-plus package/luci-app-ssr-plus
#git clone https://github.com/xiaorouji/openwrt-passwall.git package/openwrt-passwall
#git clone https://github.com/Lienol/openwrt-package.git package/openwrt-package
#git clone https://github.com/8688Add/luci-app-vssr-plus.git package/luci-app-vssr-plus
#git clone https://github.com/8688Add/luci-app-koolproxyR.git package/luci-app-koolproxyR
#svn co https://github.com/vernesong/OpenClash/trunk/luci-app-openclash package/luci-app-openclash
#git clone https://github.com/frainzy1477/luci-app-clash.git package/luci-app-clash
#svn co https://github.com/xiaoqingfengATGH/luci-theme-infinityfreedom/trunk/luci-theme-infinityfreedom package/luci-theme-infinityfreedom
#git clone https://github.com/ElonH/Rclone-OpenWrt.git package/luci-app-rclone
#git clone https://github.com/8688Add/luci-theme-opentomato.git package/luci-theme-opentomato
#rm -rf feeds/luci/themes/luci-theme-argon
#rm -rf package/lean/luci-theme-argon
#git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon
#git clone https://github.com/jerrykuku/luci-app-argon-config.git package/luci-app-argon-config
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/luci-app-v2ray-server package/luci-app-v2ray-server

#rm -rf package/lean/luci-app-frpc
#git clone https://github.com/8688Add/luci-app-frpc-mod.git package/lean/luci-app-frpc
#chmod 0755 package/lean/luci-app-frpc/root/etc/init.d/frp
git clone https://github.com/0118Add/luci-app-frpc-mod.git package/luci-app-frp
chmod 0755 package/luci-app-frp/root/etc/init.d/frp

#赋予koolddns权限
#chmod 0755 package/luci-app-koolddns/root/etc/init.d/koolddns
#chmod 0755 package/luci-app-koolddns/root/usr/share/koolddns/aliddns

# 修改openwrt登陆地址,把下面的192.168.2.2修改成你想要的就可以了
#sed -i 's/192.168.1.1/192.168.2.2/g' package/base-files/files/bin/config_generate

# 修改主机名字，把OpenWrt-123修改你喜欢的就行（不能纯数字或者使用中文）
#sed -i '/uci commit system/i\uci set system.@system[0].hostname='OpenWrt-123'' package/lean/default-settings/files/zzz-default-settings

# 版本号里显示一个自己的名字（281677160 build $(TZ=UTC-8 date "+%Y.%m.%d") @ 这些都是后增加的）
#sed -i "s/OpenWrt /281677160 build $(TZ=UTC-8 date "+%Y.%m.%d") @ OpenWrt /g" package/lean/default-settings/files/zzz-default-settings

# 修改 argon 为默认主题,可根据你喜欢的修改成其他的（不选择那些会自动改变为默认主题的主题才有效果）
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# 设置密码为空（安装固件时无需密码登陆，然后自己修改想要的密码）
#sed -i 's@.*CYXluq4wUazHjmCDBCqXF*@#&@g' package/lean/default-settings/files/zzz-default-settings

#sed -i "/uci commit fstab/a\uci commit network" $ZZZ
#sed -i "/uci commit network/i\uci set network.lan.ipaddr='192.168.2.2'" $ZZZ              # IPv4 地址(openwrt后台地址)
#sed -i "/uci commit network/i\uci set network.lan.netmask='255.255.255.0'" $ZZZ           # IPv4 子网掩码
#sed -i "/uci commit network/i\uci set network.lan.gateway='192.168.2.1'" $ZZZ             # IPv4 网关
#sed -i "/uci commit network/i\uci set network.lan.broadcast='192.168.2.255'" $ZZZ         # IPv4 广播
#sed -i "/uci commit network/i\uci set network.lan.dns='223.5.5.5 114.114.114.114'" $ZZZ   # DNS(多个DNS要用空格分开)
#sed -i "/uci commit network/i\uci set network.lan.delegate='0'" $ZZZ                      # 去掉LAN口使用内置的 IPv6 管理

#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile   # 强制选择argon为默认主题选项
#sed -i "/uci commit luci/i\uci set luci.main.mediaurlbase=/luci-static/argon" $ZZZ        # 选择argon为默认主题

#sed -i "/uci commit system/i\uci set system.@system[0].hostname='OpenWrt-123'" $ZZZ       # 修改主机名称为OpenWrt-123

#sed -i "s/OpenWrt /281677160 build $(TZ=UTC-8 date "+%Y.%m.%d") @ OpenWrt /g" $ZZZ        # 增加自己个性名称281677160

#sed -i '/CYXluq4wUazHjmCDBCqXF/d' $ZZZ                                                    # 设置密码为空

#sed -i 's/PATCHVER:=5.4/PATCHVER:=4.19/g' target/linux/x86/Makefile                      # 修改内核版本为4.19

# 修改插件名字（修改名字后不知道会不会对插件功能有影响，自己多测试）
#sed -i 's/"BaiduPCS Web"/"百度网盘"/g' package/lean/luci-app-baidupcs-web/luasrc/controller/baidupcs-web.lua
#sed -i 's/cbi("qbittorrent"),_("qBittorrent")/cbi("qbittorrent"),_("BT下载")/g' package/lean/luci-app-qbittorrent/luasrc/controller/qbittorrent.lua
#sed -i 's/"aMule设置"/"电驴下载"/g' package/lean/luci-app-amule/po/zh-cn/amule.po
#sed -i 's/"网络存储"/"存储"/g' package/lean/luci-app-amule/po/zh-cn/amule.po
#sed -i 's/"网络存储"/"存储"/g' package/lean/luci-app-vsftpd/po/zh-cn/vsftpd.po
#sed -i 's/"Turbo ACC 网络加速"/"网络加速"/g' package/lean/luci-app-flowoffload/po/zh-cn/flowoffload.po
#sed -i 's/"Turbo ACC 网络加速"/"网络加速"/g' package/lean/luci-app-sfe/po/zh-cn/sfe.po
#sed -i 's/"解锁网易云灰色歌曲"/"网易云音乐"/g' package/lean/luci-app-unblockmusic/po/zh-cn/unblockmusic.po
#sed -i 's/"实时流量监测"/"流量"/g' package/lean/luci-app-wrtbwmon/po/zh-cn/wrtbwmon.po
#sed -i 's/"KMS 服务器"/"KMS激活"/g' package/lean/luci-app-vlmcsd/po/zh-cn/vlmcsd.zh-cn.po
#sed -i 's/"TTYD 终端"/"命令窗"/g' package/lean/luci-app-ttyd/po/zh-cn/terminal.po
#sed -i 's/"USB 打印服务器"/"打印服务"/g' package/lean/luci-app-usb-printer/po/zh-cn/usb-printer.po
#sed -i 's/"网络存储"/"存储"/g' package/lean/luci-app-usb-printer/po/zh-cn/usb-printer.po
#sed -i 's/"Web 管理"/"Web"/g' package/lean/luci-app-webadmin/po/zh-cn/webadmin.po
#sed -i 's/"管理权"/"改密码"/g' feeds/luci/modules/luci-base/po/zh-cn/base.po
#sed -i 's/"带宽监控"/"监视"/g' feeds/luci/applications/luci-app-nlbwmon/po/zh-cn/nlbwmon.po

#修改bypass的makefile
#find package/*/ feeds/*/ -maxdepth 2 -path "*luci-app-bypass/Makefile" | xargs -i sed -i 's/shadowsocksr-libev-ssr-redir/shadowsocksr-libev-alt/g' {}
#find package/*/ feeds/*/ -maxdepth 2 -path "*luci-app-bypass/Makefile" | xargs -i sed -i 's/shadowsocksr-libev-ssr-server/shadowsocksr-libev-server/g' {}

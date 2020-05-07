#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
sed -i 's/192.168.1.1/192.168.100.2/g' package/base-files/files/bin/config_generate
mkdir package/base-files/files/config
echo 0xDEADBEEF > package/base-files/files/config/google_fu_mode
# echo "src-git helloworld https://github.com/fw876/helloworld" >> feeds.conf.default
git clone https://github.com/z826540272/openwrt-smartdns.git package/smartdns
# git clone -b lede https://github.com/pymumu/luci-app-smartdns.git feeds/luci/applications/luci-app-smartdns
git clone https://github.com/kenzok8/openwrt-packages.git package/openwrt-packages
rm -rf package/openwrt-packages/luci-app-ssr-plus
git clone https://github.com/kenzok8/small.git package/small
git clone https://github.com/fw876/helloworld.git package/luci-app-ssr-plus

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

# 设置密码为空
sed -i '/CYXluq4wUazHjmCDBCqXF/d' package/lean/default-settings/files/zzz-default-settings    

# 修改默认管理IP
sed -i 's/192.168.1.1/192.168.100.10/g' package/base-files/files/bin/config_generate

# 修改默认系统名称
sed -i 's/OpenWrt/DianerWRT/g' package/base-files/files/bin/config_generate

# 修改默认主题（FROM uci-theme-bootstrap CHANGE TO luci-theme-material）
sed -i 's/luci-theme-bootstrap/luci-theme-argone/g' ./feeds/luci/collections/luci/Makefile

# 修复部分插件自启动脚本丢失可执行权限问题
sed -i '/exit 0/i\chmod +x /etc/init.d/*' package/lean/default-settings/files/zzz-default-settings

# golang版本修复
rm -rf feeds/packages/lang/golang
git clone https://github.com/sbwml/packages_lang_golang -b 22.x feeds/packages/lang/golang

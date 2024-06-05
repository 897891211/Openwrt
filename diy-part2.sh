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
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' ./feeds/luci/collections/luci/Makefile

rm -rf feeds/luci/applications/luci-app-acme
rm -rf feeds/luci/applications/luci-app-adblock
rm -rf feeds/luci/applications/luci-app-adbyby-plus
rm -rf feeds/luci/applications/luci-app-ahcp
rm -rf feeds/luci/applications/luci-app-airplay2
rm -rf feeds/luci/applications/luci-app-aliyundrive-fuse
rm -rf feeds/luci/applications/luci-app-aliyundrive-webdav
rm -rf feeds/luci/applications/luci-app-amule
rm -rf feeds/luci/applications/luci-app-argon-config
rm -rf feeds/luci/applications/luci-app-aria2
rm -rf feeds/luci/applications/luci-app-arpbind
rm -rf feeds/luci/applications/luci-app-asterisk
rm -rf feeds/luci/applications/luci-app-attendedsysupgrade
rm -rf feeds/luci/applications/luci-app-baidupcs-web
rm -rf feeds/luci/applications/luci-app-bcp38
rm -rf feeds/luci/applications/luci-app-cifsd
rm -rf feeds/luci/applications/luci-app-cifs-mount
rm -rf feeds/luci/applications/luci-app-clamav
rm -rf feeds/luci/applications/luci-app-commands
rm -rf feeds/luci/applications/luci-app-coovachilli
rm -rf feeds/luci/applications/luci-app-cpufreq
rm -rf feeds/luci/applications/luci-app-cshark
rm -rf feeds/luci/applications/luci-app-dawn
rm -rf feeds/luci/applications/luci-app-ddns
rm -rf feeds/luci/applications/luci-app-design-config
rm -rf feeds/luci/applications/luci-app-diag-core
rm -rf feeds/luci/applications/luci-app-diskman
rm -rf feeds/luci/applications/luci-app-dnscrypt-proxy
rm -rf feeds/luci/applications/luci-app-dnsforwarder
rm -rf feeds/luci/applications/luci-app-dump1090
rm -rf feeds/luci/applications/luci-app-dynapoint
rm -rf feeds/luci/applications/luci-app-e2guardian
rm -rf feeds/luci/applications/luci-app-easymesh
rm -rf feeds/luci/applications/luci-app-eqos
rm -rf feeds/luci/applications/luci-app-frpc
rm -rf feeds/luci/applications/luci-app-frps
rm -rf feeds/luci/applications/luci-app-fwknopd
rm -rf feeds/luci/applications/luci-app-guest-wifi
rm -rf feeds/luci/applications/luci-app-haproxy-tcp
rm -rf feeds/luci/applications/luci-app-hd-idle
rm -rf feeds/luci/applications/luci-app-https-dns-proxy
rm -rf feeds/luci/applications/luci-app-ipsec-server
rm -rf feeds/luci/applications/luci-app-ipsec-vpnd
rm -rf feeds/luci/applications/luci-app-kodexplorer
rm -rf feeds/luci/applications/luci-app-ltqtapi
rm -rf feeds/luci/applications/luci-app-lxc
rm -rf feeds/luci/applications/luci-app-minidlna
rm -rf feeds/luci/applications/luci-app-mjpg-streamer
rm -rf feeds/luci/applications/luci-app-mosdns
rm -rf feeds/luci/applications/luci-app-music-remote-center
rm -rf feeds/luci/applications/luci-app-mwan3
rm -rf feeds/luci/applications/luci-app-mwan3helper
rm -rf feeds/luci/applications/luci-app-n2n
rm -rf feeds/luci/applications/luci-app-netdata
rm -rf feeds/luci/applications/luci-app-nft-qos
rm -rf feeds/luci/applications/luci-app-nlbwmon
rm -rf feeds/luci/applications/luci-app-noddos
rm -rf feeds/luci/applications/luci-app-nps
rm -rf feeds/luci/applications/luci-app-ntpc
rm -rf feeds/luci/applications/luci-app-ocserv
rm -rf feeds/luci/applications/luci-app-olsr
rm -rf feeds/luci/applications/luci-app-olsr-services
rm -rf feeds/luci/applications/luci-app-olsr-viz
rm -rf feeds/luci/applications/luci-app-omcproxy
rm -rf feeds/luci/applications/luci-app-openvpn
rm -rf feeds/luci/applications/luci-app-openvpn-server
rm -rf feeds/luci/applications/luci-app-p910nd
rm -rf feeds/luci/applications/luci-app-pagekitec
rm -rf feeds/luci/applications/luci-app-pgyvpn
rm -rf feeds/luci/applications/luci-app-phtunnel
rm -rf feeds/luci/applications/luci-app-polipo
rm -rf feeds/luci/applications/luci-app-pppoe-relay
rm -rf feeds/luci/applications/luci-app-pppwn
rm -rf feeds/luci/applications/luci-app-pptp-server
rm -rf feeds/luci/applications/luci-app-privoxy
rm -rf feeds/luci/applications/luci-app-ps3netsrv
rm -rf feeds/luci/applications/luci-app-pushbot
rm -rf feeds/luci/applications/luci-app-qbittorrent
rm -rf feeds/luci/applications/luci-app-radicale
rm -rf feeds/luci/applications/luci-app-ramfree
rm -rf feeds/luci/applications/luci-app-rclone
rm -rf feeds/luci/applications/luci-app-rp-pppoe-server
rm -rf feeds/luci/applications/luci-app-shadowsocks-libev
rm -rf feeds/luci/applications/luci-app-shairplay
rm -rf feeds/luci/applications/luci-app-siitwizard
rm -rf feeds/luci/applications/luci-app-simple-adblock
rm -rf feeds/luci/applications/luci-app-smartdns
rm -rf feeds/luci/applications/luci-app-socat
rm -rf feeds/luci/applications/luci-app-softethervpn
rm -rf feeds/luci/applications/luci-app-splash
rm -rf feeds/luci/applications/luci-app-sqm
rm -rf feeds/luci/applications/luci-app-squid
rm -rf feeds/luci/applications/luci-app-ssrserver-python
rm -rf feeds/luci/applications/luci-app-statistics
rm -rf feeds/luci/applications/luci-app-syncdial
rm -rf feeds/luci/applications/luci-app-tinyproxy
rm -rf feeds/luci/applications/luci-app-transmission
rm -rf feeds/luci/applications/luci-app-travelmate
rm -rf feeds/luci/applications/luci-app-udpxy
rm -rf feeds/luci/applications/luci-app-uhttpd
rm -rf feeds/luci/applications/luci-app-unbound
rm -rf feeds/luci/applications/luci-app-usb-printer
rm -rf feeds/luci/applications/luci-app-uugamebooster
rm -rf feeds/luci/applications/luci-app-v2ray-server
rm -rf feeds/luci/applications/luci-app-verysync
rm -rf feeds/luci/applications/luci-app-vlmcsd
rm -rf feeds/luci/applications/luci-app-vnstat
rm -rf feeds/luci/applications/luci-app-vpnbypass
rm -rf feeds/luci/applications/luci-app-vsftpd
rm -rf feeds/luci/applications/luci-app-watchcat
rm -rf feeds/luci/applications/luci-app-webdav
rm -rf feeds/luci/applications/luci-app-wifischedule
rm -rf feeds/luci/applications/luci-app-wireguard
rm -rf feeds/luci/applications/luci-app-wol
rm -rf feeds/luci/applications/luci-app-wrtbwmon
rm -rf feeds/luci/applications/luci-app-xlnetacc
rm -rf feeds/luci/applications/luci-app-zerotier

rm -rf feeds/small/luci-app-ssr-plus
rm -rf feeds/small/v2dat
rm -rf feeds/small/v2raya
rm -rf feeds/small/v2ray-core
rm -rf feeds/small/v2ray-geodata
rm -rf feeds/small/v2ray-plugin
rm -rf feeds/small/xray-core
rm -rf feeds/small/xray-plugin

rm -rf feeds/kenzo/{alist,aliyundrive-webdav,lua-maxminddb,luci-app-adguardhome,luci-app-aliddns,luci-app-alist,luci-app-aliyundrive-webdav,luci-app-amlogic}
rm -rf feeds/kenzo/{luci-theme-tomato,luci-theme-opentopd,luci-theme-ifit,luci-theme-design,luci-theme-atmaterial_new,luci-theme-argon,luci-theme-alpha,luci-lib-xterm}
rm -rf feeds/kenzo/{luci-app-store,luci-app-smartdns,luci-app-partexp,luci-app-lucky,luci-app-koolproxyR,luci-app-istorex,luci-app-ikoolproxy,luci-app-homeproxy}
rm -rf feeds/kenzo/{luci-app-gost,luci-app-eqos,luci-app-easymesh,luci-app-design-config,luci-app-clash,luci-app-argon-config}

rm -rf feeds/packages/net/{adblock,adblock-fast,addrwatch,adguardhome,aggregate,aircrack-ng,amule,announce,apinger,aria2,ariang,arp-scan,atftp,atlas-probe,atlas-sw-probe,autossh,baidupcs-go,baidupcs-web,banip,basicstation,bcp38,beanstalkd,bfdd,bind,bitlbee,bmon,boinc,boinc-wrapper,bonding,bridge-utils,bwm-ng,bwping,daemonlogger,dante,darkstat,davfs2,dawn,dcstad,dcwapd,ddns-scripts,dhcpcd,esniper,external-protocol,fail2ban,fakeidentd,fakepop,family-dnsm,fastd,foolsm,fping,freeradius3,wavemon,webui-aria2,wifidog,wifi-presence,wifischedule,yggdrasil,zerotier,boinc,boinc-wrapper,bonding,bridge-utils,bwm-ng,bwping,daemonlogger,dante,darkstat,davfs2,dawn,dcstad,dcwapd,ddns-scripts,,dhcpcd,esniper,external-protocol,fail2ban,fakeidentd,fakepop,family-dns,fastd,foolsm,fping,freeradius3,wavemon,webui-aria2,wifidog,wifi-presence,wifischedule,yggdrasil,zerotier}
rm -rf feeds/packages/utils/v2dat
rm -rf feeds/packages/lang/golang

# golang版本修复
rm -rf feeds/packages/lang/golang
git clone https://github.com/sbwml/packages_lang_golang -b 22.x feeds/packages/lang/golang

# find ./ | grep Makefile | grep v2ray-geodata | xargs rm -f
# find ./ | grep Makefile | grep mosdns | xargs rm -f
# git clone https://github.com/sbwml/luci-app-mosdns package/mosdns
# git clone https://github.com/sbwml/v2ray-geodata package/geodata

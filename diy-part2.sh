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
sed -i 's/192.168.1.1/192.168.251.11/g' package/base-files/files/bin/config_generate

# Add default gateway, delegate
sed -i "/set network.\$1.netmask='\$netm'/a\ \t\t\t\tset network.\$1.delegate='0'" package/base-files/files/bin/config_generate
sed -i "/set network.\$1.netmask='\$netm'/a\ \t\t\t\tset network.\$1.gateway='192.168.251.10'" package/base-files/files/bin/config_generate

# Turn off DHCP Server

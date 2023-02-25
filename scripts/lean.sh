#!/bin/bash
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#

# 添加自定义组件
git clone https://github.com/kenzok8/openwrt-packages package/kenzok8
git clone https://github.com/liuran001/openwrt-packages package/liuran001
git clone https://github.com/xiaorouji/openwrt-passwall package/xiaorouji
git clone https://github.com/kenzok8/small package/smal

# 设置空密码
sed -i 's/$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.//g' package/lean/default-settings/files/zzz-default-settings

# 修改插件名字
sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate
sed -i 's/"TTYD 终端"/"TTYD"/g' feeds/luci/applications/luci-app-ttyd/po/zh-cn/terminal.po
sed -i 's/"带宽监控"/"监控"/g' feeds/luci/applications/luci-app-nlbwmon/po/zh-cn/nlbwmon.po
sed -i 's/"Turbo ACC 网络加速"/"网络加速"/g' feeds/luci/applications/luci-app-turboacc/po/zh-cn/turboacc.po

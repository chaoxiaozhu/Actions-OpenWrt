#!/bin/bash
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#

# 添加组件
git clone https://github.com/chaoxiaozhu/chao package/chao

# 删除组件
rm -rf feeds/luci/applications/luci-app-ttyd
rm -rf feeds/luci/applications/luci-app-nlbwmon
rm -rf feeds/lienol/luci-app-fileassistant
rm -rf feeds/luci/applications/luci-app-advanced-reboot
rm -rf feeds/luci/collections/luci/Makefile

# 复制组件
mv package/chao/luci-app-ttyd feeds/luci/applications
mv package/chao/luci-app-nlbwmon feeds/luci/applications
mv package/chao/luci-app-advanced-reboot feeds/luci/applications
mv package/chao/luci-app-fileassistant feeds/lienol
mv package/chao/Makefile feeds/luci/collections/luci

# 空密码
sed -i 's/$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.//g' package/lean/default-settings/files/zzz-default-settings

sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate
sed -i 's/"TTYD 终端"/"TTYD"/g' feeds/luci/applications/luci-app-ttyd/po/zh-cn/terminal.po
sed -i 's/"带宽监控"/"监控"/g' feeds/luci/applications/luci-app-nlbwmon/po/zh-cn/nlbwmon.po
sed -i 's/"Turbo ACC 网络加速"/"网络加速"/g' feeds/luci/applications/luci-app-turboacc/po/zh-cn/turboacc.po

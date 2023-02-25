#!/bin/bash
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#

# 添加组件
git clone https://github.com/kenzok8/openwrt-packages package/kenzok8
git clone https://github.com/liuran001/openwrt-packages package/liuran001
git clone https://github.com/xiaorouji/openwrt-passwall package/xiaorouji
git clone https://github.com/kenzok8/small package/smal
git clone https://github.com/chaoxiaozhu/diy package/diy

# 删除文件
rm -rf feeds/luci/applications/luci-app-ttyd/root/usr/share/luci/menu.d/luci-app-ttyd.json
rm -rf feeds/luci/applications/luci-app-nlbwmon/root/usr/share/luci/menu.d/luci-app-nlbwmon.json
rm -rf feeds/lienol/luci-app-fileassistant/htdocs/luci-static/resources/fileassistant/fb.js
rm -rf feeds/lienol/luci-app-fileassistant/luasrc/controller/fileassistant.lua
rm -rf feeds/luci/applications/luci-app-advanced-reboot/po/zh_Hans/advanced-reboot.po
rm -rf feeds/luci/collections/luci/Makefile

# 复制文件
mv package/diy/luci-app-ttyd.json feeds/luci/applications/luci-app-ttyd/root/usr/share/luci/menu.d
mv package/diy/luci-app-nlbwmon.json feeds/luci/applications/luci-app-nlbwmon/root/usr/share/luci/menu.d
mv package/diy/fb.js feeds/lienol/luci-app-fileassistant/htdocs/luci-static/resources/fileassistant
mv package/diy/fileassistant.lua feeds/lienol/luci-app-fileassistant/luasrc/controller
mv package/diy/advanced-reboot.po feeds/luci/applications/luci-app-advanced-reboot/po/zh_Hans
mv package/diy/Makefile feeds/luci/collections/luci

# 修改openwrt登陆地址,把下面的192.168.10.1修改成你想要的就可以了，其它不要动
sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate

# 修改插件名字
sed -i 's/"Turbo ACC 网络加速"/"网络加速"/g' feeds/other/lean/luci-app-turboacc/po/zh-cn/turboacc.po

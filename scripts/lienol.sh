#!/bin/bash
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#

# 添加组件
git clone https://github.com/kenzok8/openwrt-packages package/kenzok8
git clone https://github.com/liuran001/openwrt-packages package/liuran001
git clone https://github.com/xiaorouji/openwrt-passwall package/xiaorouji
git clone https://github.com/kenzok8/small package/smal

# 修改openwrt登陆地址,把下面的192.168.10.1修改成你想要的就可以了，其它不要动
sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate

# 修改插件名字（修改名字后不知道会不会对插件功能有影响，自己多测试）
sed -i 's/"Turbo ACC 网络加速"/"网络加速"/g' feeds/other/lean/luci-app-turboacc/po/zh-cn/turboacc.po

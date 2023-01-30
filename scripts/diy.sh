#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#

# 添加自定义组件
git clone https://github.com/kenzok8/small package/small
git clone https://github.com/kenzok8/openwrt-packages package/kenzok8
git clone https://github.com/liuran001/openwrt-packages package/liuran001
git clone https://github.com/xiaorouji/openwrt-passwall package/xiaorouji
#git clone https://github.com/siropboy/sirpdboy-package package/sirpdboy

#sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default
#sed -i '$a src-git kenzok8 https://github.com/kenzok8/openwrt-packages' feeds.conf.default
#sed -i '$a src-git liuran001 https://github.com/liuran001/openwrt-packages' feeds.conf.default
#sed -i '$a src-git xiaorouji https://github.com/xiaorouji/openwrt-passwall' feeds.conf.default

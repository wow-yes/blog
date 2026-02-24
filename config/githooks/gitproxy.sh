#!/bin/bash
# 如果代理是 http 类型 (如 Clash 默认)
git config --global http.proxy http：//127.0.0.1：7890
git config --global https.proxy http：//127.0.0.1：7890

# 如果代理是 socks5 类型 (如某些机场)
# git config --global http.proxy socks5：//127.0.0.1：7890
# git config --global https.proxy socks5：//127.0.0.1：7890

# 查看当前仓库的代理设置
git config --local --list | grep proxy

# 取消当前仓库的代理
git config --unset http.proxy
git config --unset https.proxy

#!/bin/sh

# --- 配置区域 ---
TOKEN="xxxx"
DOMAIN="aa.bb.cc"
# 指定获取 IPv6 的网口，通常是 eth0 或 pppoe-wan
INTERFACE="br-lan" 
# --- 配置结束 ---

# 获取当前的公网 IPv6 地址 (过滤掉内网 fe80 地址)
CURRENT_IPV6=$(ip -6 addr show dev "$INTERFACE" | grep 'scope global' | grep '/128' | awk '{print $2}' | cut -d'/' -f1 | head -n 1)

# 检查是否获取到了地址
if [ -z "$CURRENT_IPV6" ]; then
    echo "$(date): 错误 - 无法在 $INTERFACE 上找到公网 IPv6 地址"
    exit 1
fi

# 检查上次运行记录，避免重复请求（减少服务器压力）
CACHE_FILE="/tmp/dynv6_last_ip"
if [ -f "$CACHE_FILE" ]; then
    LAST_IP=$(cat "$CACHE_FILE")
    if [ "$CURRENT_IPV6" == "$LAST_IP" ]; then
        echo "$(date): IP $CURRENT_IPV6 未改变，无需更新。"
        exit 0
    fi
fi

# 发送更新请求到 dynv6
URL="https://dynv6.com/api/update?hostname=$DOMAIN&token=$TOKEN&ipv6=$CURRENT_IPV6"
RESPONSE=$(curl -s -k "$URL")

# 处理结果
if [ "$RESPONSE" == "addresses updated" ] || [ "$RESPONSE" == "addresses unchanged" ]; then
    echo "$CURRENT_IPV6" > "$CACHE_FILE"
    echo "$(date): 更新成功! 当前 IP: $CURRENT_IPV6"
else
    echo "$(date): 更新失败! 响应: $RESPONSE"
    exit 1
fi





#'http://dynv6.com/api/update?hostname=xshrim.dns.navy&token=3KBdeMCZKUAmLKw6z2zS4F-bcCjWHk&ipv6=240e:036f:0dd0:35a0:0000:0000:0000:05cc'

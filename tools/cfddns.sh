#!/bin/bash

# --- 配置区 ---
# cloudflare api token
API_TOKEN="xxxx"
# cloudflare zones
declare -A ZONES
ZONES["aa.bb"]="xxxx"
ZONES["cc.dd"]="xxxx"

# ipv6地址所在网口
INTERFACE="br-lan"
# 获取当前的公网 IPv6 地址 (过滤掉内网 fe80 地址)
NEW_IP=$(ip -6 addr show dev "$INTERFACE" | grep 'scope global' | grep '/128' | awk '{print $2}' | cut -d'/' -f1 | head -n 1)

# 检查是否获取到了地址
if [ -z "$NEW_IP" ]; then
    echo "$(date "+%Y-%m-%d %H:%M:%S") ERROR 无法在 $INTERFACE 上找到公网 IPv6 地址"
    exit 1
fi

# 检查上次运行记录，避免重复请求（减少服务器压力）
CACHE_FILE="/tmp/cf_last_ip"
if [ -f "$CACHE_FILE" ]; then
    LAST_IP=$(cat "$CACHE_FILE")
    if [ "$NEW_IP" == "$LAST_IP" ]; then
        echo "$(date "+%Y-%m-%d %H:%M:%S") INFO IPv6 $NEW_IP 地址未变, 无需更新"
        exit 0
    fi
fi

echo "$(date "+%Y-%m-%d %H:%M:%S") INFO 获取到新的IPv6地址 $NEW_IP"

for ZONE_NAME in "${!ZONES[@]}"; do
    # --- 1. 获取该 Zone 下的所有 DNS 记录 ---
    ZONE_ID=${ZONES[$ZONE_NAME]}
    echo "$(date "+%Y-%m-%d %H:%M:%S") INFO 尝试更新 $ZONE_NAME ($ZONE_ID)"

    records=$(curl -s -X GET "https://api.cloudflare.com/client/v4/zones/$ZONE_ID/dns_records" -H "Authorization: Bearer $API_TOKEN" -H "Content-Type: application/json")

    # --- 2. 遍历并更新每一条记录 ---
    # 使用 jq 处理 JSON。如果没有安装，请先 sudo apt install jq
    echo "$records" | jq -c '.result[]' | while read -r row; do
        record_id=$(echo "$row" | jq -r '.id')
        record_name=$(echo "$row" | jq -r '.name')
        record_type=$(echo "$row" | jq -r '.type')
	    record_proxied=$(echo "$row" | jq -r '.proxied')
        old_ip=$(echo "$row" | jq -r '.content')

        # 只更新 AAAA 记录（针对 IPv6）或 A 记录（针对 IPv4）
        if [ "$record_type" == "AAAA" ]; then
            if [ "$old_ip" != "$NEW_IP" ]; then
                echo -n "$(date "+%Y-%m-%d %H:%M:%S") INFO 正在更新 $record_name ($record_id) ..."
            
                update_resp=$(curl -s -X PUT "https://api.cloudflare.com/client/v4/zones/$ZONE_ID/dns_records/$record_id" -H "Authorization: Bearer $API_TOKEN" -H "Content-Type: application/json" --data "{\"type\":\"$record_type\",\"name\":\"$record_name\",\"content\":\"$NEW_IP\",\"ttl\":120,\"proxied\":$record_proxied}")
            
                update_result=$(echo "$update_resp" | jq -r '.success')
			    if [ "$update_result" == "true" ]; then
			        echo "$NEW_IP" > "$CACHE_FILE"
                    echo " ✅ ($old_ip -> $NEW_IP)"
                else
                    error_msg=$(echo "$update_resp" | jq -r '.errors[0].message')
                    echo "❌ $error_msg"
                fi
            else
			    echo "$NEW_IP" > "$CACHE_FILE"
                echo "$(date "+%Y-%m-%d %H:%M:%S") INFO $record_name 地址未变, 跳过"
            fi
        fi
    done
done

#!/bin/bash

# 确保以 root 权限运行
if [ "$EUID" -ne 0 ]; then
  echo "❌ 错误: 请使用 sudo 运行此脚本！"
  exit 1
fi

# 自动检测 Typora 安装路径（支持标准路径和自定义路径）
TYPORA_DIR="/usr/share/typora"
if [ ! -d "$TYPORA_DIR" ]; then
    echo "🔍 未在默认路径 /usr/share/typora 找到 Typora。"
    read -p "请输入你的 Typora 实际安装路径 (例如 /opt/typora): " custom_path
    TYPORA_DIR=$custom_path
fi

# 检查路径是否有效
if [ ! -d "$TYPORA_DIR" ]; then
    echo "❌ 路径不存在，脚本退出。"
    exit 1
fi

echo "🚀 开始激活 Typora，基准路径: $TYPORA_DIR"
echo "----------------------------------------"

# 1. 激活主程序
JS_FILE=$(find "$TYPORA_DIR/resources/page-dist/static/js" -name "LicenseIndex.*.chunk.js" 2>/dev/null | head -n 1)

if [ -f "$JS_FILE" ]; then
    echo "📦 找到主程序 JS: $JS_FILE"
    # 备份
    cp "$JS_FILE" "${JS_FILE}.bak"
    # 替换 (使用 @ 作为 sed 分隔符防止冲突)
    sed -i 's@e.hasActivated="true"==e.hasActivated@e.hasActivated="true"=="true"@g' "$JS_FILE"
    echo "✅ 主程序逻辑修改完成。"
else
    echo "❌ 未找到 LicenseIndex.*.chunk.js 文件，跳过步骤 1。"
fi

# 2. 隐藏左下角“未激活”文字
JSON_FILE="$TYPORA_DIR/resources/locales/zh-Hans.lproj/Panel.json"

if [ -f "$JSON_FILE" ]; then
    echo "📦 找到语言包: $JSON_FILE"
    cp "$JSON_FILE" "${JSON_FILE}.bak"
    # 替换 "UNREGISTERED":"未激活" 为 "UNREGISTERED":" "
    sed -i 's@"UNREGISTERED":"未激活"@"UNREGISTERED":" "@g' "$JSON_FILE"
    echo "✅ 汉化隐藏修改完成。"
else
    echo "⚠️ 未找到中文语言包 Panel.json，可能你使用的是英文版，跳过步骤 2。"
fi

# 3. 关闭已激活弹窗
HTML_FILE="$TYPORA_DIR/resources/page-dist/license.html"

if [ -f "$HTML_FILE" ]; then
    echo "📦 找到弹窗 HTML: $HTML_FILE"
    cp "$HTML_FILE" "${HTML_FILE}.bak"
    # 注入自动关闭的 script 脚本
    INJECT_SCRIPT='<\/body><script>window.onload=function(){setTimeout(()=>{window.close();},500);}<\/script><\/html>'
    sed -i "s@<\/body><\/html>@$INJECT_SCRIPT@g" "$HTML_FILE"
    echo "✅ 弹窗自动关闭脚本注入完成 (已默认调整为 500ms 延迟，如有必要可适当增减)。"
else
    echo "❌ 未找到 license.html 文件，跳过步骤 3。"
fi

# 4. 启用插件支持
HTML_FILE="$TYPORA_DIR/resources/window.html"

if [ -f "$HTML_FILE" ]; then
    echo "📦 找到窗口 HTML: $HTML_FILE"
    cp "$HTML_FILE" "${HTML_FILE}.bak"
    # 注入自动关闭的 script 脚本
    INJECT_SCRIPT='<\/body><script src="typora://app/userData/plugins/loader.js" type="module"><\/script><\/html>'
    sed -i "s@<\/body><\/html>@$INJECT_SCRIPT@g" "$HTML_FILE"
    echo "✅ 修改主界面启用插件功能完成。"
else
    echo "❌ 未找到 window.html 文件，跳过步骤 4。"
fi

echo "----------------------------------------"
echo "🎉 恭喜！脚本执行完毕。如果软件处于打开状态，请完全重启 Typora 查看效果。"
echo "💡 提示：如果更新了软件，只需重新运行此脚本即可。"
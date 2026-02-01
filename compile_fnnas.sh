#!/bin/bash

echo "开始编译FnNAS固件..."
echo "目标设备: nanopi-r5c"
echo "内核版本: 6.12.y"
echo ""

# 清理之前的编译输出
rm -rf fnnas/out/*

# 执行编译命令
echo 'pi' | sudo -S ./renas -b nanopi-r5c -k 6.12.y

# 检查编译结果
if [ $? -eq 0 ]; then
    echo ""
    echo "✅ 编译成功！"
    echo "生成的固件文件："
    ls -la fnnas/out/
else
    echo ""
    echo "❌ 编译失败！"
    echo "请检查错误信息。"
fi
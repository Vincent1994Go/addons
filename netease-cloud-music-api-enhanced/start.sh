#!/bin/bash

# 设置严格模式
set -e

# 输出初始化日志
echo "[INFO] 初始化网易云音乐API增强版服务..."

# 启动服务
exec /app/run.sh

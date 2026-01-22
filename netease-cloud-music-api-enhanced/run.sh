#!/bin/bash

# 设置严格模式
set -e

# 输出启动日志
echo "[INFO] 启动网易云音乐API增强版服务..."

# 启动应用
exec node app.js

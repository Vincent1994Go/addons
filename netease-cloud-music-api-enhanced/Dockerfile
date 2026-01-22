FROM node:18-alpine

# 强制重新构建的时间戳 - 2026-01-22
RUN echo "Forcing rebuild - 2026-01-22"

# 创建非root用户
RUN addgroup -g 1001 -S appgroup && \
    adduser -u 1001 -S appuser -G appgroup

# 设置工作目录
WORKDIR /app

# 复制package.json和pnpm-lock.yaml
COPY package.json pnpm-lock.yaml ./

# 安装依赖，直接在pnpm命令中添加--ignore-scripts
RUN npm install -g pnpm && pnpm install --prod --ignore-scripts

# 复制项目文件
COPY . .

# 更改文件所有者
RUN chown -R appuser:appgroup /app

# 暴露端口
EXPOSE 3000

# 健康检查
HEALTHCHECK --interval=30s --timeout=10s --start-period=5s --retries=3 \
    CMD wget --no-verbose --tries=1 --spider http://localhost:3000 || exit 1

# 切换到非root用户
USER appuser

# 设置启动脚本
CMD ["node", "app.js"]

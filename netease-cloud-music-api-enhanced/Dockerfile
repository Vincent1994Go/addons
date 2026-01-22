FROM node:18-alpine

# 设置工作目录
WORKDIR /app

# 复制package.json和pnpm-lock.yaml
COPY package.json pnpm-lock.yaml ./

# 安装依赖
RUN npm install -g pnpm && pnpm install --prod

# 复制项目文件
COPY . .

# 暴露端口
EXPOSE 3000

# 设置启动脚本
CMD ["node", "app.js"]

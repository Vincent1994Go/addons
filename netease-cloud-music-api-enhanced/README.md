# 网易云音乐API增强版

全网最全的网易云音乐API接口，作为Home Assistant Add-on运行。

## 功能特性

- ✅ 支持几乎所有网易云音乐API接口
- ✅ 支持音乐搜索、播放、下载
- ✅ 支持歌单、专辑、艺术家信息获取
- ✅ 支持用户登录和个人信息管理
- ✅ 支持音乐解锁功能
- ✅ 支持CORS跨域请求
- ✅ 支持音乐匹配和识别
- ✅ 支持歌词获取和同步
- ✅ 支持MV播放和下载
- ✅ 支持广播电台功能

## 安装

1. 确保您已经添加了本存储库：`https://github.com/Vincent1994Go/addons`
2. 在Home Assistant中，进入 **Supervisor** > **加载项商店**
3. 找到并点击 **网易云音乐API增强版**
4. 点击 **安装** 按钮
5. 等待安装完成

## 配置

### 基本配置

安装完成后，您可以在配置选项中设置以下参数：

| 选项 | 类型 | 默认值 | 描述 |
|------|------|--------|------|
| `port` | 端口 | 3002 | API服务监听的端口 |
| `log_level` | 字符串 | info | 日志级别：trace, debug, info, warning, error, fatal |

### 启动服务

1. 配置完成后，点击 **启动** 按钮
2. 等待服务启动完成（状态变为 "运行中"）
3. 点击 **打开Web UI** 访问API文档和测试界面

## 使用方法

### API访问

服务启动后，您可以通过以下URL访问API：

```
http://<home-assistant-ip>:<configured-port>/
```

### 主要API端点

- `GET /search` - 搜索音乐
- `GET /song/url` - 获取音乐URL
- `GET /song/detail` - 获取歌曲详情
- `GET /playlist/detail` - 获取歌单详情
- `GET /album/detail` - 获取专辑详情
- `GET /artist/detail` - 获取艺术家详情

### 完整API文档

访问Web UI可以查看完整的API文档和测试各个端点。

## 示例集成

您可以在Home Assistant中使用此API创建自动化或自定义组件，例如：

- 创建音乐播放器卡片
- 实现语音控制音乐播放
- 自动创建每日推荐歌单
- 与智能家居设备联动（例如音乐灯光同步）

## 已知问题

- 某些API功能可能需要登录才能使用
- 部分版权受限的歌曲可能无法播放
- 服务重启后，登录状态会丢失

## 注意事项

- 本服务仅供个人学习和研究使用
- 请勿将本服务用于商业用途
- 请遵守网易云音乐的服务条款
- 服务默认不开启HTTPS，建议在内部网络使用

## 支持

如果您遇到问题或有功能请求，请在GitHub仓库提交issue：

[https://github.com/Vincent1994Go/addons/issues](https://github.com/Vincent1994Go/addons/issues)

## 许可证

本加载项采用 MIT 许可证。

```
MIT License

Copyright (c) 2026 Vincent1994Go

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

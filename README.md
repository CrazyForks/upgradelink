# Upgradelink

[![GitHub Repo stars](https://img.shields.io/github/stars/toolsetlink/upgradelink)](https://github.com/toolsetlink/upgradelink)
![star](https://gitcode.com/toolsetlink/upgradelink/star/badge.svg)
![star](https://gitee.com/toolsetlink/upgradelink/badge/star.svg)

[English](README_en.md) |  [中文](README.md)

## 它是做什么的
UpgradeLink 是**全端支持的应用升级系统与应用分发平台**，
专为独立开发者和企业级应用设计，提供一站式应用升级及分发解决方案。不管是小工具还是复杂应用，都能快速接入全端升级能力，无需从零搭建升级服务。

核心价值：
- 🚀 降低技术门槛：无需深耕升级逻辑，开箱即用
- 💰 减少研发成本：省去服务器搭建、多端适配开发
- 🔒 稳定可靠：企业级安全防护，全端覆盖无死角

# 介绍

## 1、全端应用升级支持
覆盖主流开发框架/系统，提供针对性升级能力，精准匹配不同场景需求：

| 支持类型        | 核心功能描述                  | 适用场景           |
|-------------|-------------------------|----------------|
| Windows应用   | 专属Windows应用升级策略管理模块     | PC端桌面应用        |
| Linux应用     | 专属Linux应用升级策略管理模块       | 服务器端、Linux桌面应用 |
| Mac应用       | 专属Mac应用升级策略管理模块         | Mac桌面应用        |
| 安卓应用升级      | 专属安卓应用升级策略管理模块          | 手机APP          |
| Tauri 应用升级  | 兼容Tauri官方升级组件接口，无缝升级    | Tauri跨端应用      |
| Electron 升级 | 兼容Electron官方升级组件接口，无缝升级 | Electron跨端应用   |
| 配置升级        | 自定义JSON配置，支持在线更新        | 需动态调整配置的应用     |
| 文件升级        | 上传自定义文件，支持应用所需文件更新      | 需补充/替换资源文件的应用  |
| URL升级       | 自定义文件URL地址，可自行维护下载链接    | 已有文件存储服务的应用    |



## 2、企业级安全防护（🔐）
- API服务内置多重安全机制，采用签名验证、防重放攻击、请求频率限制等技术。
- 接入时只需配置签名密钥，自动生效所有安全机制，保障升级过程零风险。

## 3、开箱即用 API-SDK（📦）
🐹 [Go](https://github.com/toolsetlink/upgradelink-api-go) | ☕ [Java](https://github.com/toolsetlink/upgradelink-api-java) | 🐍 [Python](https://github.com/toolsetlink/upgradelink-api-python) | 🦋 [Dart](https://github.com/toolsetlink/upgradelink-api-dart) | 🤖 [Android](https://github.com/toolsetlink/upgradelink-api-android) | 🟦 [TypeScript](https://github.com/toolsetlink/upgradelink-api-ts)

- 支持6种主流开发语言，覆盖大部分应用开发场景。
- 提供便捷的SDK接入方式，无需复杂配置，快速实现升级功能。

## 4、灵活升级策略（📁）
- 支持按设备、机型等多维度精准分发升级包。
- 可视化控制台操作，轻松管理升级规则，适配灰度发布、定向升级等场景。


#  快速开始只需4步。

### 1. 环境准备
安装 [Docker](https://www.docker.com/)，安装后验证是否成功：
```shell
docker --version  # 显示版本号即安装成功
```

### 2. 下载项目
选择任意一个仓库地址克隆：
```shell
# GitHub
git clone https://github.com/toolsetlink/upgradelink.git

# 或 GitCode
git clone https://gitcode.com/toolsetlink/upgradelink.git
```

### 3. 启动依赖服务（mysql + redis）
若已有独立的mysql和redis环境，可参考「自行build文档」配置。

#### 3.1 启动 mysql

```shell
cd upgradelink/development/mysql-8.4.3
```
```shell
docker-compose up -d
```


#### 3.2 启动 redis

```shell
cd upgradelink/development/redis-6.0.20
```
```shell
docker-compose up -d
```

### 4. 启动UpgradeLink
首次执行会自动下载Docker镜像，等待时长取决于网络速度：

```shell
docker run -d --add-host=host.docker.internal:host-gateway -p 8081:8080 -p 8888:8888 toolsetlink/upgradelink-standalone:v2.1.0
```

#### 验证启动成功
访问 `http://localhost:8081`，能正常打开Web控制台即部署成功。
- 8081端口：Web管理控制台
- 8888端口：API服务端口（供应用接入SDK使用）


# 其他部署方式
- [standalone 快速启动文档](https://www.toolsetlink.com/upgrade/deploy/quick-start-docker2.html)
- [docker-compose 快速启动文档](https://www.toolsetlink.com/upgrade/deploy/docker-compose.html)
- [集群化部署](https://www.toolsetlink.com/upgrade/deploy/cluster-docker.html)


# 文档
您可以从 [UpgradeLink](https://www.toolsetlink.com/upgrade/) 网站查看完整文档。

所有最新和长期通知也可以在此处找到 [UpgradeLink 通知问题](https://github.com/toolsetlink/upgradelink/issues)。

# 贡献
欢迎贡献者加入 UpgradeLink 项目！请通过 [官方交流群](https://www.toolsetlink.com/upgrade/communication-group.html) 了解贡献流程和规范。

> 本项目基于 [Go Zero](https://go-zero.dev/) 与 [simple-admin](https://doc.ryansu.tech/) 开发。

# 相关资源
## SDK 仓库
- [upgradelink-api-go](https://github.com/toolsetlink/upgradelink-api-go) - GO SDK
- [upgradelink-api-java](https://github.com/toolsetlink/upgradelink-api-java) - Java SDK
- [upgradelink-api-python](https://github.com/toolsetlink/upgradelink-api-python) - Python SDK
- [upgradelink-api-dart](https://github.com/toolsetlink/upgradelink-api-dart) - Dart SDK
- [upgradelink-api-android](https://github.com/toolsetlink/upgradelink-api-android) - Android SDK
- [upgradelink-api-ts](https://github.com/toolsetlink/upgradelink-api-ts) - TypeScript SDK

### 已接入的开源项目

- [note-gen（AI笔记软件）](https://notegen.top/en) - 跨平台笔记工具
- [BongoCat（桌宠）](https://github.com/ayangweb/BongoCat) - 趣味桌面宠物
- [MarkFlowy（MD编辑器）](https://github.com/drl990114/MarkFlowy) - 轻量Markdown编辑工具
- [lazyeat (手势控制)](https://github.com/lanxiuyun/lazyeat) - 手势控制

## 企业版开源计划
免费提供企业级服务，详情查看 [开源计划链接](https://www.toolsetlink.com/upgrade/open-source/plan.html)

# Contributors

<a href="https://github.com/toolsetlink/upgradelink/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=toolsetlink/upgradelink" />
</a>

# Star History

[![Star History Chart](https://api.star-history.com/svg?repos=toolsetlink/upgradelink&type=Date)](https://www.star-history.com/#toolsetlink/upgradelink&Date)


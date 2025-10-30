# UpgradeLink

[![GitHub Repo stars](https://img.shields.io/github/stars/toolsetlink/upgradelink)](https://github.com/toolsetlink/upgradelink)
![star](https://gitcode.com/toolsetlink/upgradelink/star/badge.svg)
![star](https://gitee.com/toolsetlink/upgradelink/badge/star.svg)

[English](README_en.md) | [中文](README.md)

## What is it?
UpgradeLink is a **full-end supported application upgrade system and distribution platform**
designed specifically for individual developers and enterprise-level applications. It provides a one-stop solution for application upgrades and distribution. Whether it's a small tool or a complex application, you can quickly integrate full-end upgrade capabilities without building an upgrade service from scratch.

Core Values:
- 🚀 Lower Technical Threshold: No need to delve into upgrade logic; ready to use out of the box
- 💰 Reduce R&D Costs: Eliminate the need for server setup and cross-end adaptation development
- 🔒 Stable and Reliable: Enterprise-level security protection with full-end coverage

# Introduction

## 1. Full-End Application Upgrade Support
Covers mainstream development frameworks/systems, providing targeted upgrade capabilities to accurately match different scenario requirements:

| Supported Types       | Core Function Description                                  | Application Scenarios          |
|----------------------|-----------------------------------------------------------|--------------------------------|
| Windows Applications | Dedicated Windows application upgrade strategy management module | PC desktop applications        |
| Linux Applications   | Dedicated Linux application upgrade strategy management module   | Server-side, Linux desktop applications |
| Mac Applications     | Dedicated Mac application upgrade strategy management module     | Mac desktop applications        |
| Android App Upgrades | Dedicated Android application upgrade strategy management module  | Mobile APPs                    |
| Tauri App Upgrades   | Compatible with Tauri's official upgrade component interface for seamless upgrades | Tauri cross-end applications    |
| Electron Upgrades    | Compatible with Electron's official upgrade component interface for seamless upgrades | Electron cross-end applications |
| Configuration Upgrades | Custom JSON configuration with support for online updates       | Applications requiring dynamic configuration adjustments |
| File Upgrades        | Upload custom files to support updates of application-required files | Applications needing supplementary/replaced resource files |
| URL Upgrades         | Custom file URL addresses for self-maintained download links    | Applications with existing file storage services |

## 2. Enterprise-Grade Security Protection (🔐)
- The API service has built-in multiple security mechanisms, adopting technologies such as signature verification, anti-replay attacks, and request rate limiting.
- Simply configure the signature key during integration to automatically activate all security mechanisms, ensuring zero-risk upgrade processes.

## 3. Ready-to-Use API-SDK (📦)
🐹 [Go](https://github.com/toolsetlink/upgradelink-api-go) | ☕ [Java](https://github.com/toolsetlink/upgradelink-api-java) | 🐍 [Python](https://github.com/toolsetlink/upgradelink-api-python) | 🦋 [Dart](https://github.com/toolsetlink/upgradelink-api-dart) | 🤖 [Android](https://github.com/toolsetlink/upgradelink-api-android) | 🟦 [TypeScript](https://github.com/toolsetlink/upgradelink-api-ts)

- Supports 6 mainstream development languages, covering most application development scenarios.
- Provides a convenient SDK integration method with no complex configuration, enabling quick implementation of upgrade functions.

## 4. Flexible Upgrade Strategies (📁)
- Supports precise distribution of upgrade packages based on multiple dimensions such as devices and models.
- Visual console operation for easy management of upgrade rules, adapting to scenarios like gray release and targeted upgrades.

# Quick Start in Just 4 Steps

### 1. Environment Preparation
Install [Docker](https://www.docker.com/), and verify the installation after completion:
```shell
docker --version  # Installation is successful if the version number is displayed
```

### 2. Download the Project
Clone from any of the repository addresses:
```shell
# GitHub
git clone https://github.com/toolsetlink/upgradelink.git

# Or GitCode
git clone https://gitcode.com/toolsetlink/upgradelink.git
```

### 3. Start Dependent Services (mysql + redis)
If you already have independent mysql and redis environments, refer to the "Self-build Documentation" for configuration.

#### 3.1 Start mysql
```shell
cd upgradelink/development/mysql-8.4.3
```
```shell
docker-compose up -d
```

#### 3.2 Start redis
```shell
cd upgradelink/development/redis-6.0.20
```
```shell
docker-compose up -d
```

### 4. Start UpgradeLink
The first execution will automatically download the Docker image; the waiting time depends on network speed:
```shell
docker run -d --add-host=host.docker.internal:host-gateway -p 8081:8080 -p 8888:8888 toolsetlink/upgradelink-standalone:v2.0.6
```

#### Verify Successful Startup
Visit `http://localhost:8081`; the deployment is successful if the Web console opens normally.
- Port 8081: Web management console
- Port 8888: API service port (for applications to integrate SDK)

# Other Deployment Methods
- [Standalone Quick Start Documentation](https://www.toolsetlink.com/upgrade/deploy/quick-start-docker2.html)
- [Docker-Compose Quick Start Documentation](https://www.toolsetlink.com/upgrade/deploy/docker-compose.html)
- [Cluster Deployment](https://www.toolsetlink.com/upgrade/deploy/cluster-docker.html)

# Documentation
You can view the complete documentation on the [UpgradeLink](https://www.toolsetlink.com/upgrade/) website.

All latest and long-term notifications can also be found here: [UpgradeLink Notification Issues](https://github.com/toolsetlink/upgradelink/issues)

# Contribution
> This project is developed based on [Go Zero](https://go-zero.dev/) and [simple-admin](https://doc.ryansu.tech/).

# Related Resources
## SDK Repositories
- [upgradelink-api-go](https://github.com/toolsetlink/upgradelink-api-go) - GO SDK
- [upgradelink-api-java](https://github.com/toolsetlink/upgradelink-api-java) - Java SDK
- [upgradelink-api-python](https://github.com/toolsetlink/upgradelink-api-python) - Python SDK
- [upgradelink-api-dart](https://github.com/toolsetlink/upgradelink-api-dart) - Dart SDK
- [upgradelink-api-android](https://github.com/toolsetlink/upgradelink-api-android) - Android SDK
- [upgradelink-api-ts](https://github.com/toolsetlink/upgradelink-api-ts) - TypeScript SDK

### Open Source Projects Already Integrated
- [note-gen (AI Note-Taking Software)](https://notegen.top/en) - Cross-platform note-taking tool
- [BongoCat (Desktop Pet)](https://github.com/ayangweb/BongoCat) - Fun desktop pet
- [MarkFlowy (MD Editor)](https://github.com/drl990114/MarkFlowy) - Lightweight Markdown editing tool
- [lazyeat (Gesture Control)](https://github.com/lanxiuyun/lazyeat) - Gesture control tool

## Enterprise Edition Open Source Plan
Free enterprise-level services are provided. For details, check the [Open Source Plan Link](https://www.toolsetlink.com/upgrade/open-source/plan.html)

# Contributors

<a href="https://github.com/toolsetlink/upgradelink/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=toolsetlink/upgradelink" />
</a>

# Star History

[![Star History Chart](https://api.star-history.com/svg?repos=toolsetlink/upgradelink&type=Date)](https://www.star-history.com/#toolsetlink/upgradelink&Date)


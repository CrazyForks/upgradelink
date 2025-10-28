# Upgradelink

![](https://img.shields.io/badge/free-pricing?logo=free&color=%20%23155EEF&label=pricing&labelColor=%20%23528bff)
[![GitHub Repo stars](https://img.shields.io/github/stars/toolsetlink/upgradelink)](https://github.com/toolsetlink/upgradelink)
![](https://github.com/toolsetlink/upgradelink/actions/workflows/release.yml/badge.svg?branch=release)
![star](https://gitcode.com/toolsetlink/upgradelink/star/badge.svg)
![star](https://gitee.com/toolsetlink/upgradelink/badge/star.svg)

## Language

- [English](README.md)
- [中文](README_zh.md)

## What is it
UpgradeLink is a **full-platform supported application upgrade system and application distribution platform** that provides one-stop application upgrade and distribution solutions. Whether you develop ​​Android native, Tauri lightweight cross-platform, or Electron desktop applications, you can use UpgradeLink to implement unified upgrade logic.

Core values include:
- Effectively lowering technical barriers
- Reducing R&D costs
- Helping businesses quickly build stable and high-quality applications

# Introduction

## 1. Full-platform Application Upgrade Support
Covers mainstream application development frameworks/systems and provides targeted upgrade capabilities:

| Supported Type | Core Function Description |
|-------------|---------------------------------------|
| Android App Upgrade | Supports APK file upload and management, provides dedicated upgrade strategies for application updates |
| Tauri App Upgrade | Fully compatible with Tauri official upgrade component interface, provides standardized upgrade strategies and process management |
| Electron Upgrade | Fully compatible with Electron official upgrade component interface, provides standardized upgrade strategies and process management |


## 2. Core Functional Modules

#### Enterprise-level Security Protection (🔐)
- API services have multiple built-in security mechanisms, adopting technologies such as **signature verification, anti-replay attacks, and request frequency limiting**
- Ensuring zero risks during the application upgrade process
#### Out-of-the-box API-SDK (📦)
| [Go](https://github.com/toolsetlink/upgradelink-api-go) 
| [Java](https://github.com/toolsetlink/upgradelink-api-java) 
| [Python](https://github.com/toolsetlink/upgradelink-api-python) 
| [Dart](https://github.com/toolsetlink/upgradelink-api-dart) 
| [Android](https://github.com/toolsetlink/upgradelink-api-android) 
| [TypeScript](https://github.com/toolsetlink/upgradelink-api-ts) |

- Supports mainstream development languages: Go, Java, Python, Dart, Android, TypeScript
- Advantage: Provides convenient SDK integration methods to help quickly implement application upgrade functions
#### Flexible Upgrade Strategies (📁)
- Supported dimensions: devices, models, etc.
- Management method: Accurate management of upgrade package distribution through the visual console


# Quick Start in Just 4 Steps.

### 1. Environment Preparation
You need to install [Docker](https://www.docker.com/).
### 2. Download the Project
#### 2.1
Download from GitHub
```shell
git clone https://github.com/toolsetlink/upgradelink.git
```
Download from GitCode
```shell
git clone https://gitcode.com/toolsetlink/upgradelink.git
```

### 3. Enter the Project and Start mysql and redis in the development Directory
> Note: If you have independent mysql and redis environments, refer to the self-build documentation.

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

When executing the command for the first time, the required Docker images will be automatically downloaded. The waiting time depends on the network speed. You can also download the relevant images in advance to shorten the waiting time for deployment commands.

```shell
docker run -d --add-host=host.docker.internal:host-gateway -p 8081:8080 -p 8888:8888 toolsetlink/upgradelink-standalone:v2.0.6
```

## Other Quick Start Methods:
- [Standalone build documentation](https://www.toolsetlink.com/upgrade/deploy/quick-start-docker2.html)
- [docker-compose quick start documentation](https://www.toolsetlink.com/upgrade/deploy/docker-compose.html)
- [Clustered deployment](https://www.toolsetlink.com/upgrade/deploy/cluster-docker.html)


# Documentation
You can view the complete documentation from the [UpgradeLink](https://www.toolsetlink.com/upgrade/) website.

All latest and long-term notifications can also be found here [UpgradeLink Notification Issues](https://github.com/toolsetlink/upgradelink/issues).

# Contribution
Contributors are welcome to join the UpgradeLink project. Please [join the group](https://www.toolsetlink.com/upgrade/communication-group.html) to learn how to contribute to this project.

> This project is developed based on [Go Zero](https://go-zero.dev/) and [simple-admin](https://doc.ryansu.tech/).


# Other Related Project Repositories
## SDK
- [upgradelink-api-go](https://github.com/toolsetlink/upgradelink-api-go)   GO SDK
- [upgradelink-api-java](https://github.com/toolsetlink/upgradelink-api-java)   Java SDK
- [upgradelink-api-python](https://github.com/toolsetlink/upgradelink-api-python)   Python SDK
- [upgradelink-api-dart](https://github.com/toolsetlink/upgradelink-api-dart)     Dart SDK
- [upgradelink-api-android](https://github.com/toolsetlink/upgradelink-api-android)  Android SDK
- [upgradelink-api-ts](https://github.com/toolsetlink/upgradelink-api-ts) TypeScript SDK

# Who is Using
- Managed applications: 100+
- Managed application versions: 900+

### Managed Open Source Projects

Enterprise Edition Open Source Plan - Free Service [Plan Link](https://www.toolsetlink.com/upgrade/open-source/plan.html)

[note-gen (AI Note Software)](https://notegen.top/en)         | [BongoCat (Desktop Pet)](https://github.com/ayangweb/BongoCat)   | [MarkFlowy (MD Editor)](https://github.com/drl990114/MarkFlowy)    | [lazyeat (Gesture Control)](https://github.com/lanxiuyun/lazyeat)  |


# Contributors

<a href="https://github.com/toolsetlink/upgradelink/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=toolsetlink/upgradelink" />
</a>

# Star History

[![Star History Chart](https://api.star-history.com/svg?repos=toolsetlink/upgradelink&type=Date)](https://www.star-history.com/#toolsetlink/upgradelink&Date)



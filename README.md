# 老满跑胡子

从已授权的皮皮跑胡子 APK 提取并整理的 Android 重打包工程。应用显示名为“老满跑胡子”，包名为 `com.longge.hengyangphz`，当前工程版本 `1.0.7`（versionCode `26`）。

## 工程结构

- `apktool-project/`：Apktool 工程，包含 Android 资源、Cocos 页面素材、跑胡子字节码和可编辑补丁。
- `apktool-project/assets/src/REA_ModPatch.js`：本地游客启动、单卡大厅和离线跑胡子控制逻辑。
- `branding/`：应用图标和品牌素材。
- `build-and-sign.ps1`：构建、对齐并用本地调试证书签名。
- `build-info.json`：最近一次构建产物和补丁的版本、哈希信息。

## 修改范围与限制

- 当前保留跑胡子玩法代码；斗地主、打筒子和麻将玩法的独立脚本与专属素材已从可构建工程移除。
- `res/hzmj/ppplay/` 内有跑胡子牌桌共用素材，必须保留；`pdk/fonts/FZZY.TTF` 被大厅页面共用，已移到 `res/common/`。
- APK 原有 471 个 `.jsc` 是编译字节码，没有对应的原始 `.js`。字节码继续用于复用皮皮原有的牌面、规则和牌桌行为；本地补丁可编辑，缺失的原始游戏源码无法从字节码完整还原。
- `apktool-project/assets/aLiDunKey.txt` 是 APK 中一个疑似密钥的 Base64 数据块，GitHub 版本会排除它；本机原工程仍保留该文件。若后续确认它是构建或运行必需的非敏感资源，再通过安全方式补充。
- 本地单人加三名电脑人的发牌和回合调度代码已经写入；本工程的冷启动完全断网运行尚未通过设备/模拟器验收。原包启动及远程配置链路仍需继续核实，不能据此声称当前版本已完全脱离服务器。
- 本次修复了 `round-start-deal` 队列回调里的未定义变量引用。该修复已静态检查并打包，未能在 Android 设备或模拟器上做运行验收。

## 构建

需要 JDK 21、Apktool 2.12.1 和 Android Build Tools（含 `aapt2`、`zipalign`、`apksigner`）。构建脚本默认使用本机配置的工具路径；换电脑时请先调整 `build-and-sign.ps1` 中的工具路径。

```powershell
cd <仓库目录>
.\build-and-sign.ps1
```

APK、日志和签名校验文本输出到 `dist/`。首次构建会在 `signing/` 下生成本地调试证书。调试证书和 APK 不提交到 Git；使用不同证书构建的版本可能无法覆盖安装。

## 产物

最近一次跑胡子精简包：`longge-run-huzi-20261114-203326.apk`

- SHA-256：`0a2356c837ea2d872a97d1120e0f545e81965bdaa73139556dabcb453b1c7916`
- 大小：`123362728` bytes（约 `117.65 MiB`）
- APK 签名校验：v1、v2、v3 通过
- 运行验收：未完成；当前电脑没有已配置的 Android 虚拟设备，ADB 也没有连接设备

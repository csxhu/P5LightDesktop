# 来源与授权

本仓库是 2026-11-14 对本地 P5 轻桌面工程的整理快照。

- app/smali：当前 p5-phone-smali 的复制，包含热点修复和 Navigator 启动修复。
- app/smali_classes2、资源和 assets：从 p5home-phone-music.apk 用 Apktool 恢复。
- Manifest：热点版新增 ACCESS_WIFI_STATE，版本 0.4.5 / 11。
- src/hotspot：当前热点 Java 修改源码；src/voice：本地保留的四个语音/音乐 Java 文件。
- reference-java：decomp-p5-current 中本应用包的反编译源码，不宣称为原作者完整源码。
- docs/artifact-inventory.json：历史 APK 元数据与 SHA256，不包含 APK 本体；不代表可恢复每一个历史版本源码。

尚无足够资料确认原始应用、图标资源及所有恢复代码的版权授权，因此未添加开源许可证。项目所有者应确认来源/授权、补充第三方声明并选择合适许可证；有权公开的内容才适合公开发布。工具及 Android/Xposed API 的许可证遵循各上游项目。

未复制车机系统 APK、第三方音乐/导航 APK、设备框架 JAR、数据库、截图、日志、APK、签名密钥或用户配置。自动文本扫描不等于完整安全/授权审计。

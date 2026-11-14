# 模块导航

| 模块 | 主要类/目录 | 说明 |
| --- | --- | --- |
| 桌面和设置 | HomeActivity、HomeEntry、SettingsActivity、Ui | Java 阅读参考在 reference-java，构建以主 Smali 为准 |
| 导航 | Navigator、NavAutoSession、NavConversation、P5SpeechBridge | 包名选择、自动打开、语音请求桥接 |
| 音乐 | MusicRouter、MusicPolicy、LunaMusicHook、PhoneMusic | 车机/手机版适配，依赖目标应用版本 |
| 语音与问答 | SpeechHook、ArkClient、AssistantService、SpeechOutput | API Key 由用户配置；不要提交实际用户配置 |
| 顶部应用栏 | TopBar* | 自定义入口与系统栏 hook |
| 转向影像 | TurnCamera* | 与车机服务适配相关 |
| 车辆观察 | VehicleObservation*、VehicleBridge* | 观察/桥接模块，不代表所有状态均已实车验证 |
| 热点 | src/hotspot、HotspotManualToggleChange、HotspotToggleChange | UI 保存配置，root app_process 调用 Wi-Fi Binder |

Xposed 入口由 app/assets/xposed_init 定义。两个 DEX 的内容分别来自 app/smali 和 app/smali_classes2。

热点链路：HomeActivity/SettingsActivity → HotspotController → su/app_process → HotspotRootCommand → IWifiManager → startSoftAp/stopSoftAp。名称密码查询使用 getWifiApConfiguration；最终状态 13 才是已开启，12 是启动中。

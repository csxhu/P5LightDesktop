# 版本与功能记录

## 0.4.5（versionCode 11）— 当前整理基线

- 自动开启 Wi-Fi 热点设置；手动开关；热点名称和密码显示。
- root helper 优先使用 Android 10 `startSoftAp` / `stopSoftAp`，仅在方法不存在时回退旧接口。
- 添加 `ACCESS_WIFI_STATE`；配置查询受限时由 root helper 读取。
- 对“热点已经开启”时服务返回 false 的情况，根据实际状态处理。
- 保留 Navigator.label 的 Smali 寄存器类型修复，解决启动 VerifyError。

验证边界：用户确认上一版启动不再闪退；独立运行修复后的 helper，在车机取得 STATE=13，系统日志记录热点启动和重复调用时 Tethering is already active。完整 0.4.5 APK 因 ADB 传输不稳定未确认安装；尚未验证完整 UI 开关往返、名称密码显示、其他设备连接和互联网转发。不能把 helper 成功等同完整版本验收。

已知限制：状态/配置的 root 回退查询目前同步执行，root 授权慢时可能阻塞设置页；控制成功提示不等待热点最终稳定；开关快速连续点击存在并发请求风险。后续优先改为异步状态刷新、串行控制和明确失败反馈。

## 0.4.4（versionCode 10）— 多个本地迭代共用版本号

以下不是正式逐版发布日志。多数 APK 使用相同版本号，且没有 Git 历史，不能仅凭文件名认定先后顺序、完整差异或实测完成情况。原文件指纹见 `docs/artifact-inventory.json`；APK 本体未纳入仓库。

| 本地文件/阶段 | 功能方向及证据 | 确认范围 |
| --- | --- | --- |
| p5home-label-test.apk | 显示名称改为 P5；包名仍为 com.local.g3home | APK 元数据与重命名脚本 |
| p5home.apk / p5home-wake-test.apk | 唤醒词、语音桥接迭代 | 两文件 SHA256 相同，不是两个独立版本 |
| p5home-native-toggle.apk | 原生唤醒相关切换实验 | 文件名和现有设置逻辑；具体差异待恢复 |
| p5home-qa-flow.apk | 模型问答流程实验 | 文件名和当前问答模块；具体差异待恢复 |
| p5home-tts-test.apk | 语音输出/TTS 实验 | 文件名和 SpeechOutput；具体差异待恢复 |
| p5home-six.apk / p5home-seven.apk | 顶部栏槽位布局迭代 | 历史命名与顶部栏模块，具体容量/行为差异待核对 |
| p5home-nav.apk / p5home-nav-voice.apk | 导航选择、语音导航桥接 | 当前 Navigator 与 P5SpeechBridge；每个包差异未逐项验收 |
| p5home-nav-fixed.apk / p5home-music-fixed.apk | 导航/音乐修复阶段 | 两文件 SHA256 相同，不能称为两个不同修复版本 |
| p5home-music.apk | 音乐路由迭代 | 当前 MusicRouter；历史差异待核对 |
| p5home-phone-music.apk | 手机版汽水音乐搜索/播放适配 | PhoneMusic.java 与对应构建脚本；当前热点版本的基底 |
| 早期 p5home-hotspot.apk（已被覆盖） | 自动热点、手动开关、名称密码；先修复 Navigator 启动错误 | 用户确认不再闪退；车机日志确认旧热点接口 NoSuchMethodException |

后续每次发布应递增 versionCode，记录提交号、APK SHA256、功能变化、验证设备与未通过项。不要继续依赖同名 APK 区分版本。

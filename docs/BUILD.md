# 构建与修改

环境：Windows PowerShell 7、JDK 17、Apktool 2.10.0。签名需要 Android SDK Build Tools（验证环境使用 28.0.3）。工具不随仓库分发。

下载来源：https://apktool.org/ 、https://adoptium.net/ 、https://developer.android.com/tools 。

在仓库根目录执行（替换为自己的工具路径）：

```powershell
./scripts/build.ps1 -ApktoolJar 'D:/tools/apktool.jar' -Java 'D:/jdk/bin/java.exe'
```

输出 `out/p5home-unsigned.apk`。不需要原始 APK，完整构建输入来自 app/。

需要签名时：

```powershell
./scripts/build.ps1 -ApktoolJar 'D:/tools/apktool.jar' -Java 'D:/jdk/bin/java.exe' -Zipalign 'D:/sdk/build-tools/28.0.3/zipalign.exe' -ApksignerJar 'D:/sdk/build-tools/28.0.3/lib/apksigner.jar' -Keystore 'D:/private/release.jks' -KeyAlias release
```

输出 out/p5home.apk，密码由工具交互询问。不随项目分发原私钥；新签名不能直接覆盖不同签名的旧应用，不要自动卸载用户数据。

修改热点 Java 后，先运行 compile-hotspot.ps1，再构建 APK：

```powershell
./scripts/compile-hotspot.ps1 -AndroidJar 'D:/sdk/platforms/android-28/android.jar' -D8Jar 'D:/sdk/build-tools/28.0.3/lib/d8.jar' -BaksmaliClasspath 'D:/tools/baksmali.jar;D:/tools/dexlib2.jar;D:/tools/util.jar;D:/tools/guava.jar;D:/tools/jcommander.jar' -Java 'D:/jdk/bin/java.exe' -Javac 'D:/jdk/bin/javac.exe'
```

baksmali/dexlib2/util 使用 2.5.2，完整依赖按该版本分发配置。脚本编译 src/hotspot 并更新 app/smali 中对应类。Java 和生成的 Smali 一起提交。

src/voice 依赖 Android API 和 Xposed API 82；当前构建使用已经存在的 app/smali_classes2。修改这些 Java 后，需要通过 javac、D8 和 baksmali 生成对应第二 DEX 的 Smali，再更新 app/smali_classes2。不要覆盖不相关类。

reference-java 不参与构建：含合成 lambda、反编译还原不完整及与最新 Smali 不同步的代码。直接修改它不会改变 APK。

本次整理已在独立目录实际执行 Apktool 构建成功；未签名构建验证不代表车机安装/启动验收。逐类迁移到原生 Gradle 工程建议另开分支，避免一次性编译反编译目录。

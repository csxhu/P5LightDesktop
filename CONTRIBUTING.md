# 开发与发布

1. 阅读 README、CHANGELOG 和 docs/BUILD.md，确认修改实际构建输入，而非仅修改 reference-java。
2. 热点修改同步 Java/Smali；其他模块当前以 app/smali、app/smali_classes2 为准。
3. 修改后构建；车机上验证启动、原有导航/音乐/语音入口以及受影响设置。
4. 热点回归：自动开启配置开/关、手动开启/关闭、重复开启、快速点击、root 拒绝、配置读取失败、界面状态一致性、客户端连接与网络转发。记录结果，不能仅看请求返回值。
5. 发布时同步 AndroidManifest.xml 与 apktool.yml 的版本号，更新 CHANGELOG，使用自己的密钥签名。APK 放 GitHub Releases，不提交编译工具或输出目录。

## 上传 GitHub

本目录是独立导出的源码快照，不包含原 Git 历史。确认 docs/PROVENANCE.md 中授权事项后，在本目录运行：

```powershell
git init
git add .
git status --short
# 确认没有密钥/日志/私有配置后提交
git commit -m "Import P5 light desktop 0.4.5 source snapshot"
git branch -M main
git remote add origin https://github.com/YOUR_ACCOUNT/YOUR_REPOSITORY.git
git push -u origin main
```

可先使用私有仓库整理授权。这里未自动创建远端仓库或推送。

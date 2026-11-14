package com.local.p5home;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* loaded from: classes.dex */
public final class DeviceActions {
    private static final String GUARD = "[ \"$(getprop ro.product.device)\" = d20 ] && [ \"$(getprop ro.build.version.sdk)\" = 28 ] && [ \"$(getprop ro.build.fingerprint)\" = 'XPENG/d20/d20:9/PQ3B.190801.002/root11250001:user/release-keys' ] || exit 41\n";
    private static final String HOME = "com.local.p5home/.HomeEntry";
    static final String MIGRATE = "set -eu\n[ \"$(getprop ro.product.device)\" = d55 ] && [ \"$(getprop ro.build.version.sdk)\" = 29 ] || exit 41\npm enable --user 0 com.local.p5home/.HomeEntry\ncmd package set-home-activity --user 0 com.local.p5home/.HomeEntry\nam start -W --display 0 --activityType 2 -a android.intent.action.MAIN -c android.intent.category.HOME -n com.local.p5home/.HomeEntry\n";
    private static final String OEM = "com.xiaopeng.montecarlo/.MainActivity";
    private static final String RELOAD_BARS = "BB=/data/adb/magisk/busybox\nfor p in $(pidof com.android.systemui 2>/dev/null || true); do\n if [ \"$($BB awk '/^Uid:/{print $2}' /proc/$p/status 2>/dev/null)\" = 10012 ] && $BB tr '\\000' '\\n' < /proc/$p/cmdline | $BB grep -Fxq com.android.systemui; then kill -TERM \"$p\" 2>/dev/null || true; fi\ndone\n";
    private static final String RESTORE = "set -eu\n[ \"$(getprop ro.product.device)\" = d55 ] && [ \"$(getprop ro.build.version.sdk)\" = 29 ] || exit 41\npm enable --user 0 com.xiaopeng.montecarlo/.MainActivity\ncmd package set-home-activity --user 0 com.xiaopeng.montecarlo/.MainActivity\nam start -W --display 0 --activityType 2 -a android.intent.action.MAIN -c android.intent.category.HOME -n com.xiaopeng.montecarlo/.MainActivity\npm disable --user 0 com.local.p5home/.HomeEntry\n";
    private static final String STOP_NATIVE = "";
    private static final ExecutorService WORK = Executors.newSingleThreadExecutor();

    public interface Callback {
        void done(boolean z, String str);
    }

    public static boolean isDefaultHome(Context context) {
        ResolveInfo resolveInfoResolveActivity = context.getPackageManager().resolveActivity(new Intent("android.intent.action.MAIN").addCategory("android.intent.category.HOME"), 0);
        if (resolveInfoResolveActivity == null || resolveInfoResolveActivity.activityInfo == null || !context.getPackageName().equals(resolveInfoResolveActivity.activityInfo.packageName)) {
            return false;
        }
        return "com.local.p5home.HomeEntry".equals(resolveInfoResolveActivity.activityInfo.name) || "com.local.p5home.HomeActivity".equals(resolveInfoResolveActivity.activityInfo.name);
    }

    public static void checkRoot(final Activity activity, final Callback callback) {
        BridgeStore.rootUpdate(activity, "正在检测 Root 授权", STOP_NATIVE);
        run(activity, "id -u", 30, new Callback() { // from class: com.local.p5home.DeviceActions$$ExternalSyntheticLambda4
            @Override // com.local.p5home.DeviceActions.Callback
            public final void done(boolean z, String str) {
                DeviceActions.lambda$checkRoot$0(activity, callback, z, str);
            }
        });
    }

    static /* synthetic */ void lambda$checkRoot$0(Activity activity, Callback callback, boolean z, String str) {
        boolean z2 = z && str.trim().equals("0");
        String str2 = z2 ? "Root 已授权（uid=0）" : "Root 尚未授权，请在超级用户管理器允许 G3轻桌面";
        BridgeStore.rootUpdate(activity, str2, z2 ? STOP_NATIVE : str2);
        callback.done(z2, str2);
    }

    static /* synthetic */ void lambda$setDefaultHome$1(Activity activity, Callback callback, boolean z, String str) {
        boolean z2 = z && isDefaultHome(activity);
        BridgeStore.rootUpdate(activity, z2 ? "轻桌面已设为默认" : "桌面切换未完成", z2 ? STOP_NATIVE : str);
        callback.done(z2, z2 ? "轻桌面已设为默认。旧扩展已停用并关闭自启；原车地图保留按需打开与回退入口。" : "未确认默认桌面，请检查 Root 与恢复状态。\n" + str);
    }

    public static void setDefaultHome(final Activity activity, final Callback callback) {
        run(activity, MIGRATE + (Navigator.NATIVE.equals(ConfigStore.load(activity).navPackage) ? STOP_NATIVE : STOP_NATIVE), 280, new Callback() { // from class: com.local.p5home.DeviceActions$$ExternalSyntheticLambda2
            @Override // com.local.p5home.DeviceActions.Callback
            public final void done(boolean z, String str) {
                DeviceActions.lambda$setDefaultHome$1(activity, callback, z, str);
            }
        });
    }

    static /* synthetic */ void lambda$restoreOemHome$2(Activity activity, Callback callback, boolean z, String str) {
        ResolveInfo resolveInfoResolveActivity = activity.getPackageManager().resolveActivity(new Intent("android.intent.action.MAIN").addCategory("android.intent.category.HOME"), 0);
        boolean z2 = z && resolveInfoResolveActivity != null && resolveInfoResolveActivity.activityInfo != null && Navigator.NATIVE.equals(resolveInfoResolveActivity.activityInfo.packageName);
        if (z2) {
            AppConfig appConfigLoad = ConfigStore.load(activity);
            appConfigLoad.autoLaunchNav = false;
            ConfigStore.save(activity, appConfigLoad);
        }
        String str2 = z2 ? "已恢复原车默认桌面；轻桌面自动打开导航已关闭。" : str.contains("原地图") ? "原地图未能稳定启动，已保留轻桌面。请先修复当前移植地图，再恢复原车桌面。" : "恢复未确认：\n" + str;
        BridgeStore.rootUpdate(activity, z2 ? "已恢复原车默认桌面" : "原车回退未完成", z2 ? STOP_NATIVE : str2);
        callback.done(z2, str2);
    }

    public static void restoreOemHome(final Activity activity, final Callback callback) {
        run(activity, RESTORE, 40, new Callback() { // from class: com.local.p5home.DeviceActions$$ExternalSyntheticLambda3
            @Override // com.local.p5home.DeviceActions.Callback
            public final void done(boolean z, String str) {
                DeviceActions.lambda$restoreOemHome$2(activity, callback, z, str);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:11:0x005f A[Catch: Exception -> 0x009a, all -> 0x00c5, TryCatch #1 {all -> 0x00c5, blocks: (B:9:0x001c, B:11:0x005f, B:12:0x0064, B:15:0x006e, B:17:0x0074, B:29:0x008e, B:30:0x008f, B:31:0x0099, B:38:0x00a1, B:41:0x00aa), top: B:56:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x008f A[Catch: Exception -> 0x009a, all -> 0x00c5, TryCatch #1 {all -> 0x00c5, blocks: (B:9:0x001c, B:11:0x005f, B:12:0x0064, B:15:0x006e, B:17:0x0074, B:29:0x008e, B:30:0x008f, B:31:0x0099, B:38:0x00a1, B:41:0x00aa), top: B:56:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00aa A[Catch: all -> 0x00c5, TRY_LEAVE, TryCatch #1 {all -> 0x00c5, blocks: (B:9:0x001c, B:11:0x005f, B:12:0x0064, B:15:0x006e, B:17:0x0074, B:29:0x008e, B:30:0x008f, B:31:0x0099, B:38:0x00a1, B:41:0x00aa), top: B:56:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00b5 A[Catch: Exception -> 0x008a, TRY_ENTER, TRY_LEAVE, TryCatch #2 {Exception -> 0x008a, blocks: (B:23:0x0082, B:45:0x00b5), top: B:56:0x0005 }] */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v18, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r7v19 */
    /* JADX WARN: Type inference failed for: r7v20 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static /* synthetic */ void lambda$run$5(final int r7, java.lang.String r8, final android.app.Activity r9, final com.local.p5home.DeviceActions.Callback r10) throws java.lang.Throwable {
        /*
            r0 = 60
            r1 = 0
            r2 = 0
            if (r7 > r0) goto L12
            java.lang.String r0 = "set -eu\n[ \"$(getprop ro.product.device)\" = d55 ] && [ \"$(getprop ro.build.version.sdk)\" = 29 ] || exit 41\npm enable --user 0 com.xiaopeng.montecarlo/.MainActivity\ncmd package set-home-activity --user 0 com.xiaopeng.montecarlo/.MainActivity\nam start -W --display 0 --activityType 2 -a android.intent.action.MAIN -c android.intent.category.HOME -n com.xiaopeng.montecarlo/.MainActivity\npm disable --user 0 com.local.p5home/.HomeEntry\n"
            boolean r0 = r8.equals(r0)     // Catch: java.lang.Throwable -> L9c java.lang.Exception -> L9f
            if (r0 == 0) goto L10
            goto L12
        L10:
            r0 = r2
            goto L1c
        L12:
            android.content.Context r0 = r9.getApplicationContext()     // Catch: java.lang.Throwable -> L9c java.lang.Exception -> L9f
            int r3 = r7 + 20
            java.lang.String r0 = com.local.p5home.AssistantService.hold(r0, r3)     // Catch: java.lang.Throwable -> L9c java.lang.Exception -> L9f
        L1c:
            java.lang.ProcessBuilder r3 = new java.lang.ProcessBuilder     // Catch: java.lang.Exception -> L9a java.lang.Throwable -> Lc5
            r4 = 3
            java.lang.String[] r4 = new java.lang.String[r4]     // Catch: java.lang.Exception -> L9a java.lang.Throwable -> Lc5
            java.lang.String r5 = "su"
            r4[r1] = r5     // Catch: java.lang.Exception -> L9a java.lang.Throwable -> Lc5
            java.lang.String r5 = "-c"
            r6 = 1
            r4[r6] = r5     // Catch: java.lang.Exception -> L9a java.lang.Throwable -> Lc5
            r5 = 2
            r4[r5] = r8     // Catch: java.lang.Exception -> L9a java.lang.Throwable -> Lc5
            r3.<init>(r4)     // Catch: java.lang.Exception -> L9a java.lang.Throwable -> Lc5
            java.lang.ProcessBuilder r8 = r3.redirectErrorStream(r6)     // Catch: java.lang.Exception -> L9a java.lang.Throwable -> Lc5
            java.lang.Process r2 = r8.start()     // Catch: java.lang.Exception -> L9a java.lang.Throwable -> Lc5
            java.io.OutputStream r8 = r2.getOutputStream()     // Catch: java.lang.Exception -> L9a java.lang.Throwable -> Lc5
            r8.close()     // Catch: java.lang.Exception -> L9a java.lang.Throwable -> Lc5
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L9a java.lang.Throwable -> Lc5
            r8.<init>()     // Catch: java.lang.Exception -> L9a java.lang.Throwable -> Lc5
            java.lang.Thread r3 = new java.lang.Thread     // Catch: java.lang.Exception -> L9a java.lang.Throwable -> Lc5
            com.local.p5home.DeviceActions$$ExternalSyntheticLambda0 r4 = new com.local.p5home.DeviceActions$$ExternalSyntheticLambda0     // Catch: java.lang.Exception -> L9a java.lang.Throwable -> Lc5
            r4.<init>()     // Catch: java.lang.Exception -> L9a java.lang.Throwable -> Lc5
            java.lang.String r5 = "G3-RootOutput"
            r3.<init>(r4, r5)     // Catch: java.lang.Exception -> L9a java.lang.Throwable -> Lc5
            r3.setDaemon(r6)     // Catch: java.lang.Exception -> L9a java.lang.Throwable -> Lc5
            r3.start()     // Catch: java.lang.Exception -> L9a java.lang.Throwable -> Lc5
            long r4 = (long) r7     // Catch: java.lang.Exception -> L9a java.lang.Throwable -> Lc5
            java.util.concurrent.TimeUnit r7 = java.util.concurrent.TimeUnit.SECONDS     // Catch: java.lang.Exception -> L9a java.lang.Throwable -> Lc5
            boolean r7 = r2.waitFor(r4, r7)     // Catch: java.lang.Exception -> L9a java.lang.Throwable -> Lc5
            if (r7 == 0) goto L8f
            r4 = 1000(0x3e8, double:4.94E-321)
            r3.join(r4)     // Catch: java.lang.Exception -> L9a java.lang.Throwable -> Lc5
            monitor-enter(r8)     // Catch: java.lang.Exception -> L9a java.lang.Throwable -> Lc5
            java.lang.String r7 = r8.toString()     // Catch: java.lang.Throwable -> L8c
            java.lang.String r7 = r7.trim()     // Catch: java.lang.Throwable -> L8c
            monitor-exit(r8)     // Catch: java.lang.Throwable -> L8c
            int r8 = r2.exitValue()     // Catch: java.lang.Exception -> L9a java.lang.Throwable -> Lc5
            if (r8 != 0) goto L7b
            boolean r8 = r3.isAlive()     // Catch: java.lang.Exception -> L9a java.lang.Throwable -> Lc5
            if (r8 != 0) goto L7b
            r1 = r6
        L7b:
            if (r2 == 0) goto L80
            r2.destroy()
        L80:
            if (r0 == 0) goto Lbc
            android.content.Context r8 = r9.getApplicationContext()     // Catch: java.lang.Exception -> L8a
            com.local.p5home.AssistantService.releaseHold(r8, r0)     // Catch: java.lang.Exception -> L8a
            goto Lbc
        L8a:
            r8 = move-exception
            goto Lbc
        L8c:
            r7 = move-exception
            monitor-exit(r8)     // Catch: java.lang.Throwable -> L8c
            throw r7     // Catch: java.lang.Exception -> L9a java.lang.Throwable -> Lc5
        L8f:
            r2.destroyForcibly()     // Catch: java.lang.Exception -> L9a java.lang.Throwable -> Lc5
            java.io.IOException r7 = new java.io.IOException     // Catch: java.lang.Exception -> L9a java.lang.Throwable -> Lc5
            java.lang.String r8 = "等待授权或桌面恢复超时，请读取实际状态后重试"
            r7.<init>(r8)     // Catch: java.lang.Exception -> L9a java.lang.Throwable -> Lc5
            throw r7     // Catch: java.lang.Exception -> L9a java.lang.Throwable -> Lc5
        L9a:
            r7 = move-exception
            goto La1
        L9c:
            r7 = move-exception
            r0 = r2
            goto Lc6
        L9f:
            r7 = move-exception
            r0 = r2
        La1:
            java.lang.String r8 = r7.getMessage()     // Catch: java.lang.Throwable -> Lc5
            if (r8 != 0) goto Laa
            java.lang.String r7 = "Root 操作未完成"
            goto Lae
        Laa:
            java.lang.String r7 = r7.getMessage()     // Catch: java.lang.Throwable -> Lc5
        Lae:
            if (r2 == 0) goto Lb3
            r2.destroy()
        Lb3:
            if (r0 == 0) goto Lbc
            android.content.Context r8 = r9.getApplicationContext()     // Catch: java.lang.Exception -> L8a
            com.local.p5home.AssistantService.releaseHold(r8, r0)     // Catch: java.lang.Exception -> L8a
        Lbc:
            com.local.p5home.DeviceActions$$ExternalSyntheticLambda1 r8 = new com.local.p5home.DeviceActions$$ExternalSyntheticLambda1
            r8.<init>()
            r9.runOnUiThread(r8)
            return
        Lc5:
            r7 = move-exception
        Lc6:
            if (r2 == 0) goto Lcb
            r2.destroy()
        Lcb:
            if (r0 == 0) goto Ld6
            android.content.Context r8 = r9.getApplicationContext()     // Catch: java.lang.Exception -> Ld5
            com.local.p5home.AssistantService.releaseHold(r8, r0)     // Catch: java.lang.Exception -> Ld5
            goto Ld6
        Ld5:
            r8 = move-exception
        Ld6:
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.local.p5home.DeviceActions.lambda$run$5(int, java.lang.String, android.app.Activity, com.local.p5home.DeviceActions$Callback):void");
    }

    private static void run(final Activity activity, final String str, final int i, final Callback callback) {
        WORK.execute(new Runnable() { // from class: com.local.p5home.DeviceActions$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                DeviceActions.lambda$run$5(i, str, activity, callback);
            }
        });
    }

    static /* synthetic */ void lambda$run$3(Process process, StringBuilder sb, Activity activity) throws IOException {
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(process.getInputStream(), "UTF-8"));
            while (true) {
                try {
                    String line = bufferedReader.readLine();
                    if (line == null) {
                        bufferedReader.close();
                        return;
                    }
                    synchronized (sb) {
                        if (sb.length() < 30000) {
                            sb.append(line).append('\n');
                        }
                    }
                    if (line.startsWith("G3_STAGE ")) {
                        BridgeStore.rootUpdate(activity.getApplicationContext(), line.substring(9), STOP_NATIVE);
                    }
                } finally {
                }
            }
        } catch (Exception e) {
        }
    }

    public static void openLsposed(Context context) {
        Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage("org.lsposed.manager");
        if (launchIntentForPackage != null) {
            launchIntentForPackage.addFlags(268435456);
            context.startActivity(launchIntentForPackage);
        } else if (context instanceof Activity) {
            Ui.dialog(context).setTitle("启用小P模块").setMessage("请从 LSPosed 通知或已有快捷方式打开管理器，启用“G3轻桌面”，作用域只勾选小P语音服务，然后重启小P。安装应用本身不会自动启用模块。").setPositiveButton("知道了", null).show();
        }
    }

    public static void openOemSettings(Context context) {
        try {
            context.startActivity(new Intent("android.settings.SETTINGS").addFlags(268435456));
        } catch (Exception e) {
            if (context instanceof Activity) {
                Ui.dialog(context).setMessage("系统设置入口不可用").setPositiveButton("关闭", null).show();
            }
        }
    }

    private DeviceActions() {
    }
}

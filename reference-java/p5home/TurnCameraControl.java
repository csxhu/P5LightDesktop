package com.local.p5home;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import android.os.SystemClock;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Arrays;
import java.util.UUID;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
final class TurnCameraControl {

    static final class Result {
        final boolean accepted;
        final String autoCapability;
        final String message;
        final String nativeBuild;

        Result(boolean z, String str) {
            this(z, str, "unknown", "");
        }

        Result(boolean z, String str, String str2, String str3) {
            this.accepted = z;
            this.message = str;
            this.autoCapability = str2;
            this.nativeBuild = str3;
        }
    }

    static Result request(Context context, String str) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            return new Result(false, "请在后台处理原车请求");
        }
        if (!Arrays.asList("probe", "repair", "left", "right", "close").contains(str)) {
            return new Result(false, "操作无效");
        }
        if (!supported(context)) {
            return new Result(false, "原车影像身份未通过验证，未发送操作");
        }
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        final AtomicReference atomicReference = new AtomicReference(new Result(false, "原车桥接未响应：请检查 LSPosed 作用域和进程重载；若原车应用已升级，仍需确认相机接口兼容性"));
        try {
            context.sendOrderedBroadcast(new Intent("com.local.p5home.TURN_CAMERA_NATIVE").setPackage("com.xiaopeng.drivingimageassist").putExtra("operation", str).putExtra("requestId", UUID.randomUUID().toString()).putExtra("sentAt", SystemClock.elapsedRealtime()), null, new BroadcastReceiver() { // from class: com.local.p5home.TurnCameraControl.1
                @Override // android.content.BroadcastReceiver
                public void onReceive(Context context2, Intent intent) {
                    Bundle resultExtras = getResultExtras(false);
                    String string = resultExtras == null ? "" : resultExtras.getString("code", "");
                    int resultCode = getResultCode();
                    String string2 = resultExtras == null ? "unknown" : resultExtras.getString("lampMetadata", "unknown");
                    String string3 = resultExtras == null ? "" : resultExtras.getString("nativeBuild", "");
                    atomicReference.set(new Result(resultCode == 200 || resultCode == 202, TurnCameraControl.describe(resultCode, string, resultExtras), Arrays.asList("available", "not_exposed", "unknown").contains(string2) ? string2 : "unknown", string3.matches("[A-Za-z0-9_.-]{0,64}") ? string3 : ""));
                    countDownLatch.countDown();
                }
            }, new Handler(Looper.getMainLooper()), 0, null, null);
            return !countDownLatch.await(4L, TimeUnit.SECONDS) ? (Result) atomicReference.get() : (Result) atomicReference.get();
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            return new Result(false, "操作已取消");
        } catch (Exception e2) {
            return new Result(false, "原车接入请求失败，请检查权限和作用域");
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:38:0x007c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static java.lang.String describe(int r1, java.lang.String r2, android.os.Bundle r3) {
        /*
            Method dump skipped, instructions count: 326
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.local.p5home.TurnCameraControl.describe(int, java.lang.String, android.os.Bundle):java.lang.String");
    }

    static boolean supported(Context context) {
        try {
            return TurnCameraStatusIdentity.verified(context, context.getPackageManager().getApplicationInfo("com.xiaopeng.drivingimageassist", 0).uid);
        } catch (Exception e) {
            return false;
        }
    }

    static Result startNative(Context context) {
        if (!supported(context)) {
            return new Result(false, "原车影像身份未通过验证，未启动服务");
        }
        Process process = null;
        try {
            try {
                final Process processStart = new ProcessBuilder("su", "-c", "am startservice --user " + (Process.myUid() / 100000) + " -n com.xiaopeng.drivingimageassist/.ForegroundService").redirectErrorStream(true).start();
                processStart.getOutputStream().close();
                final StringBuilder sb = new StringBuilder();
                Thread thread = new Thread(new Runnable() { // from class: com.local.p5home.TurnCameraControl$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() throws IOException {
                        TurnCameraControl.lambda$startNative$0(processStart, sb);
                    }
                }, "G3TurnStart");
                thread.setDaemon(true);
                thread.start();
                if (!processStart.waitFor(20L, TimeUnit.SECONDS)) {
                    processStart.destroyForcibly();
                    Result result = new Result(false, "Root 授权或原车服务启动超时");
                    if (processStart != null) {
                        processStart.destroy();
                    }
                    return result;
                }
                thread.join(500L);
                if (processStart.exitValue() == 0 && !thread.isAlive() && !sb.toString().contains("Error")) {
                    Result resultRequest = request(context, "probe");
                    Result result2 = new Result(resultRequest.accepted, (resultRequest.accepted ? new StringBuilder().append("原车进程已启动。").append(resultRequest.message) : new StringBuilder().append("启动命令已完成，但接入尚未确认。").append(resultRequest.message)).toString(), resultRequest.autoCapability, resultRequest.nativeBuild);
                    if (processStart != null) {
                        processStart.destroy();
                    }
                    return result2;
                }
                Result result3 = new Result(false, "原车服务未确认启动，请检查 Root 授权和原车包状态");
                if (processStart != null) {
                    processStart.destroy();
                }
                return result3;
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                Result result4 = new Result(false, "操作已取消");
                if (0 != 0) {
                    process.destroy();
                }
                return result4;
            } catch (Exception e2) {
                Result result5 = new Result(false, "Root 操作未完成，请在超级用户管理中授权 G3轻桌面");
                if (0 != 0) {
                    process.destroy();
                }
                return result5;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                process.destroy();
            }
            throw th;
        }
    }

    static /* synthetic */ void lambda$startNative$0(Process process, StringBuilder sb) throws IOException {
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(process.getInputStream(), "UTF-8"));
            while (true) {
                try {
                    String line = bufferedReader.readLine();
                    if (line == null) {
                        bufferedReader.close();
                        return;
                    } else if (sb.length() < 4096) {
                        sb.append(line).append('\n');
                    }
                } finally {
                }
            }
        } catch (Exception e) {
        }
    }

    private TurnCameraControl() {
    }
}

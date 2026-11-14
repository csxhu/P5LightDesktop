package com.local.p5home;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Parcel;
import android.os.Process;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

/* loaded from: classes.dex */
public final class OemVoiceWake implements AutoCloseable {
    private static final String ENGINE = "com.xiaopeng.speech.ISpeechEngine";
    private static final String PACKAGE = "com.xiaopeng.carspeechservice";
    private static final String SERVICE = "com.xiaopeng.carspeechservice.speechui.daemon.DaemonService";
    private static final long TIMEOUT_MS = 15000;
    private static final String WAKE = "com.xiaopeng.speech.coreapi.IWakeupEngine";
    private volatile boolean active;
    private final Context app;
    private boolean bound;
    private Callback callback;
    private volatile boolean closed;
    private ServiceConnection connection;
    private boolean dispatchedToWorker;
    private volatile long generation;
    private IBinder pendingEngine;
    private Runnable timeout;
    private volatile boolean wakeTransactionStarted;
    private final Handler main = new Handler(Looper.getMainLooper());
    private final ExecutorService worker = Executors.newSingleThreadExecutor(new ThreadFactory() { // from class: com.local.p5home.OemVoiceWake$$ExternalSyntheticLambda2
        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            return OemVoiceWake.lambda$new$0(runnable);
        }
    });

    public interface Callback {
        void onResult(boolean z, String str);
    }

    static /* synthetic */ Thread lambda$new$0(Runnable runnable) {
        Thread thread = new Thread(runnable, "G3OemVoiceWake");
        thread.setDaemon(true);
        return thread;
    }

    public OemVoiceWake(Context context) {
        if (context == null) {
            throw new IllegalArgumentException("context");
        }
        this.app = context.getApplicationContext();
    }

    public void start(Callback callback) {
        requireMain();
        if (callback == null) {
            throw new IllegalArgumentException("callback");
        }
        if (this.closed) {
            callback.onResult(false, "语音入口已关闭，请重新打开页面");
            return;
        }
        if (this.active) {
            callback.onResult(false, "正在请求原车语音，请稍候");
            return;
        }
        final long j = this.generation + 1;
        this.generation = j;
        this.active = true;
        this.callback = callback;
        this.bound = false;
        this.dispatchedToWorker = false;
        this.pendingEngine = null;
        this.wakeTransactionStarted = false;
        final ServiceConnection serviceConnection = new ServiceConnection() { // from class: com.local.p5home.OemVoiceWake.1
            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                if (!OemVoiceWake.this.current(j) || OemVoiceWake.this.connection != this) {
                    return;
                }
                if (componentName == null || !OemVoiceWake.PACKAGE.equals(componentName.getPackageName()) || !OemVoiceWake.SERVICE.equals(componentName.getClassName()) || iBinder == null) {
                    OemVoiceWake.this.m60lambda$dispatchIfBound$5$comlocalg3homeOemVoiceWake(j, false, "原车语音连接无效，请手动唤醒小P");
                } else {
                    OemVoiceWake.this.pendingEngine = iBinder;
                    OemVoiceWake.this.dispatchIfBound(j, this);
                }
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
                if (OemVoiceWake.this.current(j) && OemVoiceWake.this.connection == this) {
                    OemVoiceWake oemVoiceWake = OemVoiceWake.this;
                    oemVoiceWake.m60lambda$dispatchIfBound$5$comlocalg3homeOemVoiceWake(j, false, oemVoiceWake.uncertain("原车语音连接已断开"));
                }
            }

            @Override // android.content.ServiceConnection
            public void onBindingDied(ComponentName componentName) {
                if (OemVoiceWake.this.current(j) && OemVoiceWake.this.connection == this) {
                    OemVoiceWake oemVoiceWake = OemVoiceWake.this;
                    oemVoiceWake.m60lambda$dispatchIfBound$5$comlocalg3homeOemVoiceWake(j, false, oemVoiceWake.uncertain("原车语音连接已失效"));
                }
            }

            @Override // android.content.ServiceConnection
            public void onNullBinding(ComponentName componentName) {
                if (OemVoiceWake.this.current(j) && OemVoiceWake.this.connection == this) {
                    OemVoiceWake.this.m60lambda$dispatchIfBound$5$comlocalg3homeOemVoiceWake(j, false, "原车语音未提供接口，请手动唤醒小P");
                }
            }
        };
        this.connection = serviceConnection;
        Runnable runnable = new Runnable() { // from class: com.local.p5home.OemVoiceWake$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m62lambda$start$1$comlocalg3homeOemVoiceWake(j);
            }
        };
        this.timeout = runnable;
        this.main.postDelayed(runnable, TIMEOUT_MS);
        this.worker.execute(new Runnable() { // from class: com.local.p5home.OemVoiceWake$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() throws PackageManager.NameNotFoundException {
                this.f$0.m65lambda$start$4$comlocalg3homeOemVoiceWake(j, serviceConnection);
            }
        });
    }

    /* renamed from: lambda$start$1$com-local-g3home-OemVoiceWake, reason: not valid java name */
    /* synthetic */ void m62lambda$start$1$comlocalg3homeOemVoiceWake(long j) {
        m60lambda$dispatchIfBound$5$comlocalg3homeOemVoiceWake(j, false, uncertain("原车语音请求超时"));
    }

    /* renamed from: lambda$start$4$com-local-g3home-OemVoiceWake, reason: not valid java name */
    /* synthetic */ void m65lambda$start$4$comlocalg3homeOemVoiceWake(final long j, final ServiceConnection serviceConnection) throws PackageManager.NameNotFoundException {
        final String strPreflight = preflight();
        if (current(j)) {
            if (strPreflight != null) {
                this.main.post(new Runnable() { // from class: com.local.p5home.OemVoiceWake$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m63lambda$start$2$comlocalg3homeOemVoiceWake(j, strPreflight);
                    }
                });
                return;
            }
            boolean zBindService = false;
            try {
                Intent intent = new Intent("carspeechservice.SpeechServer");
                intent.setComponent(new ComponentName(PACKAGE, SERVICE));
                zBindService = this.app.bindService(intent, serviceConnection, 0);
            } catch (RuntimeException e) {
            }
            final boolean z = zBindService;
            this.main.post(new Runnable() { // from class: com.local.p5home.OemVoiceWake$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m64lambda$start$3$comlocalg3homeOemVoiceWake(j, serviceConnection, z);
                }
            });
        }
    }

    /* renamed from: lambda$start$2$com-local-g3home-OemVoiceWake, reason: not valid java name */
    /* synthetic */ void m63lambda$start$2$comlocalg3homeOemVoiceWake(long j, String str) {
        m60lambda$dispatchIfBound$5$comlocalg3homeOemVoiceWake(j, false, str);
    }

    /* renamed from: lambda$start$3$com-local-g3home-OemVoiceWake, reason: not valid java name */
    /* synthetic */ void m64lambda$start$3$comlocalg3homeOemVoiceWake(long j, ServiceConnection serviceConnection, boolean z) {
        if (!current(j) || this.connection != serviceConnection) {
            if (z) {
                safeUnbind(serviceConnection);
            }
        } else if (!z) {
            m60lambda$dispatchIfBound$5$comlocalg3homeOemVoiceWake(j, false, "原车语音服务未运行，请手动唤醒小P");
        } else {
            this.bound = true;
            dispatchIfBound(j, serviceConnection);
        }
    }

    public void cancel() {
        requireMain();
        clear();
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        requireMain();
        if (this.closed) {
            return;
        }
        this.closed = true;
        clear();
        this.worker.shutdownNow();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchIfBound(final long j, ServiceConnection serviceConnection) {
        final IBinder iBinder;
        if (!current(j) || this.connection != serviceConnection || !this.bound || (iBinder = this.pendingEngine) == null || this.dispatchedToWorker) {
            return;
        }
        this.dispatchedToWorker = true;
        this.worker.execute(new Runnable() { // from class: com.local.p5home.OemVoiceWake$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m61lambda$dispatchIfBound$6$comlocalg3homeOemVoiceWake(j, iBinder);
            }
        });
    }

    /* renamed from: lambda$dispatchIfBound$6$com-local-g3home-OemVoiceWake, reason: not valid java name */
    /* synthetic */ void m61lambda$dispatchIfBound$6$comlocalg3homeOemVoiceWake(final long j, IBinder iBinder) {
        String strUncertain;
        boolean zStartDialog = false;
        try {
            strUncertain = preflight();
            if (strUncertain == null) {
                if (!current(j)) {
                    return;
                }
                if (ENGINE.equals(iBinder.getInterfaceDescriptor())) {
                    IBinder wake = getWake(iBinder);
                    if (wake == null || !WAKE.equals(wake.getInterfaceDescriptor())) {
                        strUncertain = "原车唤醒接口不可用，请手动唤醒小P";
                    } else {
                        if (!current(j)) {
                            return;
                        }
                        this.wakeTransactionStarted = true;
                        zStartDialog = startDialog(wake);
                        strUncertain = zStartDialog ? "唤醒请求已提交，请对小P说已设置的豆包前缀和问题" : "原车未接受唤醒请求，请手动唤醒小P";
                    }
                } else {
                    strUncertain = "原车语音接口版本不匹配，请手动唤醒小P";
                }
            }
        } catch (Exception | LinkageError e) {
            strUncertain = uncertain("原车语音请求未完成");
        }
        final boolean z = zStartDialog;
        final String str = strUncertain;
        this.main.post(new Runnable() { // from class: com.local.p5home.OemVoiceWake$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m60lambda$dispatchIfBound$5$comlocalg3homeOemVoiceWake(j, z, str);
            }
        });
    }

    private static IBinder getWake(IBinder iBinder) throws Exception {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken(ENGINE);
            if (iBinder.transact(4, parcelObtain, parcelObtain2, 0)) {
                parcelObtain2.readException();
                return parcelObtain2.readStrongBinder();
            }
            parcelObtain.recycle();
            parcelObtain2.recycle();
            return null;
        } finally {
            parcelObtain.recycle();
            parcelObtain2.recycle();
        }
    }

    private static boolean startDialog(IBinder iBinder) throws Exception {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken(WAKE);
            if (!iBinder.transact(1, parcelObtain, parcelObtain2, 0)) {
                return false;
            }
            parcelObtain2.readException();
            return true;
        } finally {
            parcelObtain.recycle();
            parcelObtain2.recycle();
        }
    }

    private String preflight() throws PackageManager.NameNotFoundException {
        try {
            Bundle bundleStatus = BridgeStore.status(this.app);
            if (bundleStatus.getBoolean("hookReady", false) && bundleStatus.getBoolean("asrHook", false) && bundleStatus.getBoolean("sessionHook", false) && bundleStatus.getBoolean("ttsHook", false) && bundleStatus.getInt("hookPid", 0) > 0) {
                AppConfig appConfigLoad = ConfigStore.load(this.app);
                if (appConfigLoad.voiceEnabled && appConfigLoad.doubaoEnabled && ConfigStore.hasApiKey(this.app) && !appConfigLoad.modelId.trim().isEmpty()) {
                    PackageManager packageManager = this.app.getPackageManager();
                    PackageInfo packageInfo = packageManager.getPackageInfo(PACKAGE, 0);
                    if (packageInfo.applicationInfo != null && OemSpeechIdentity.trusted(this.app, packageInfo.applicationInfo.uid)) {
                        if (!OemSpeechIdentity.knownCode(this.app)) {
                            return "原车语音已升级，私有唤醒接口尚未确认兼容，请手动唤醒小P";
                        }
                        ServiceInfo serviceInfo = packageManager.getServiceInfo(new ComponentName(PACKAGE, SERVICE), 0);
                        if (serviceInfo.enabled && serviceInfo.exported && serviceInfo.applicationInfo != null && serviceInfo.applicationInfo.enabled && serviceInfo.applicationInfo.uid == packageInfo.applicationInfo.uid) {
                            if (serviceInfo.permission != null && !serviceInfo.permission.isEmpty()) {
                                if (this.app.checkPermission(serviceInfo.permission, Process.myPid(), Process.myUid()) != 0) {
                                    return "原车语音服务不可访问，请手动唤醒小P";
                                }
                                return null;
                            }
                            return null;
                        }
                        return "原车语音服务不可访问，请手动唤醒小P";
                    }
                    return "原车语音身份未通过验证，请手动唤醒小P";
                }
                return "请先启用小P与豆包并完成模型配置";
            }
            return "原车语音模块未就绪，请先手动唤醒小P或检查接入状态";
        } catch (Exception | LinkageError e) {
            return "无法检查原车语音状态，请手动唤醒小P";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean current(long j) {
        return !this.closed && this.active && this.generation == j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String uncertain(String str) {
        return str + (this.wakeTransactionStarted ? "；请求可能仍由原车处理，请留意小P状态" : "，请手动唤醒小P");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: finish, reason: merged with bridge method [inline-methods] */
    public void m60lambda$dispatchIfBound$5$comlocalg3homeOemVoiceWake(long j, boolean z, String str) {
        if (current(j)) {
            Callback callback = this.callback;
            clear();
            if (callback != null) {
                if (str == null) {
                    str = "原车语音请求未完成";
                }
                callback.onResult(z, str);
            }
        }
    }

    private void clear() {
        this.generation++;
        this.active = false;
        Runnable runnable = this.timeout;
        if (runnable != null) {
            this.main.removeCallbacks(runnable);
        }
        this.timeout = null;
        this.callback = null;
        this.pendingEngine = null;
        this.dispatchedToWorker = false;
        ServiceConnection serviceConnection = this.connection;
        this.connection = null;
        if (this.bound && serviceConnection != null) {
            safeUnbind(serviceConnection);
        }
        this.bound = false;
    }

    private void safeUnbind(ServiceConnection serviceConnection) {
        try {
            this.app.unbindService(serviceConnection);
        } catch (RuntimeException e) {
        }
    }

    private static void requireMain() {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            throw new IllegalStateException("Call on main thread");
        }
    }
}

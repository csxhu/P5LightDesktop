package com.local.p5home;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.SystemClock;
import com.local.p5home.ArkClient;
import com.local.p5home.Navigator;
import com.local.p5home.SpeechOutput;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.function.BooleanSupplier;

/* loaded from: classes.dex */
public final class AssistantService extends Service {
    private static final String CHANNEL = "p5home.assistant";
    private volatile boolean destroyed;
    private final ExecutorService network = Executors.newSingleThreadExecutor();
    private final ExecutorService commands = Executors.newSingleThreadExecutor();
    private final ConcurrentHashMap<String, Runnable> holds = new ConcurrentHashMap<>();
    private final AtomicInteger jobs = new AtomicInteger();
    private final AtomicInteger generation = new AtomicInteger();
    private final AtomicInteger musicGeneration = new AtomicInteger();
    private final Handler main = new Handler(Looper.getMainLooper());
    private final ArkClient ark = new ArkClient();
    private final String speechOwner = "service-" + UUID.randomUUID();

    static void askFromVoice(Context context, String str, String str2) {
        start(context, new Intent(context, (Class<?>) AssistantService.class).putExtra("mode", "ask").putExtra("text", str).putExtra("requestId", str2));
    }

    public static void ask(Context context, String str) {
        start(context, new Intent(context, (Class<?>) AssistantService.class).putExtra("mode", "ask").putExtra("text", str));
    }

    public static void testSpeech(Context context) {
        start(context, new Intent(context, (Class<?>) AssistantService.class).putExtra("mode", "speech_test"));
    }

    public static void testConnection(Context context) {
        start(context, new Intent(context, (Class<?>) AssistantService.class).putExtra("mode", "test"));
    }

    static void navigate(Context context, String str, String str2, String str3) {
        navigate(context, str, str2, str3, "g3.asr.navigate".equals(str) || "g3.asr.nav.control".equals(str));
    }

    static void navigate(Context context, String str, String str2, String str3, boolean z) {
        start(context, new Intent(context, (Class<?>) AssistantService.class).putExtra("mode", "nav").putExtra("event", str).putExtra("data", str2).putExtra("requestId", str3).putExtra("externalTurn", z));
    }

    static String hold(Context context, int i) {
        String string = UUID.randomUUID().toString();
        start(context, new Intent(context, (Class<?>) AssistantService.class).putExtra("mode", "hold").putExtra("id", string).putExtra("seconds", i));
        return string;
    }

    static void releaseHold(Context context, String str) {
        if (str != null) {
            start(context, new Intent(context, (Class<?>) AssistantService.class).putExtra("mode", "release").putExtra("id", str));
        }
    }

    private static void start(Context context, Intent intent) {
        context.startForegroundService(intent);
    }

    static void music(Context context, String str, String str2, String str3) {
        start(context, new Intent(context, (Class<?>) AssistantService.class).putExtra("mode", "music").putExtra("musicProvider", str).putExtra("data", str2).putExtra("requestId", str3).putExtra("queuedAt", SystemClock.elapsedRealtime()));
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        ((NotificationManager) getSystemService(NotificationManager.class)).createNotificationChannel(new NotificationChannel(CHANNEL, "G3 小P助手", 2));
    }

    private Notification notification() {
        return new Notification.Builder(this, CHANNEL).setSmallIcon(R.drawable.ic_home).setContentTitle("G3 小P助手").setContentText("正在处理请求，可在设置查看结果").setContentIntent(PendingIntent.getActivity(this, 0, new Intent(this, (Class<?>) SettingsActivity.class), 201326592)).setOngoing(true).build();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        startForeground(37, notification());
        if (intent == null) {
            stopSelf();
            return 2;
        }
        String stringExtra = intent.getStringExtra("mode");
        boolean z = true;
        if ("release".equals(stringExtra)) {
            Runnable runnableRemove = this.holds.remove(intent.getStringExtra("id"));
            if (runnableRemove != null) {
                this.main.removeCallbacks(runnableRemove);
                finishJob();
            } else if (this.jobs.get() == 0) {
                stopForeground(true);
                stopSelf();
            }
            return 2;
        }
        this.jobs.incrementAndGet();
        if ("hold".equals(stringExtra)) {
            final String stringExtra2 = intent.getStringExtra("id");
            Runnable runnable = new Runnable() { // from class: com.local.p5home.AssistantService$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m3lambda$onStartCommand$0$comlocalg3homeAssistantService(stringExtra2);
                }
            };
            this.holds.put(stringExtra2, runnable);
            this.main.postDelayed(runnable, Math.min(320, Math.max(10, intent.getIntExtra("seconds", 300))) * 1000);
            return 2;
        }
        if ("speech_test".equals(stringExtra)) {
            final int iIncrementAndGet = this.generation.incrementAndGet();
            this.ark.cancel();
            BridgeStore.update(this, "正在测试系统播报", null, "");
            SpeechOutput.get(this).speak("语音播报测试，系统语音已连接。", this.speechOwner, new BooleanSupplier() { // from class: com.local.p5home.AssistantService$$ExternalSyntheticLambda1
                @Override // java.util.function.BooleanSupplier
                public final boolean getAsBoolean() {
                    return this.f$0.m4lambda$onStartCommand$1$comlocalg3homeAssistantService(iIncrementAndGet);
                }
            }, new SpeechOutput.Callback() { // from class: com.local.p5home.AssistantService$$ExternalSyntheticLambda2
                @Override // com.local.p5home.SpeechOutput.Callback
                public final void done(boolean z2, String str) {
                    this.f$0.m5lambda$onStartCommand$2$comlocalg3homeAssistantService(iIncrementAndGet, z2, str);
                }
            });
            return 2;
        }
        if ("music".equals(stringExtra)) {
            final int iIncrementAndGet2 = this.musicGeneration.incrementAndGet();
            final String stringExtra3 = intent.getStringExtra("musicProvider");
            final String stringExtra4 = intent.getStringExtra("data");
            final String stringExtra5 = intent.getStringExtra("requestId");
            final long longExtra = intent.getLongExtra("queuedAt", 0L);
            this.commands.execute(new Runnable() { // from class: com.local.p5home.AssistantService$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m7lambda$onStartCommand$4$comlocalg3homeAssistantService(longExtra, stringExtra3, stringExtra4, iIncrementAndGet2, stringExtra5);
                }
            });
        } else if ("nav".equals(stringExtra)) {
            final String stringExtra6 = intent.getStringExtra("event");
            final String stringExtra7 = intent.getStringExtra("data");
            final String stringExtra8 = intent.getStringExtra("requestId");
            if (!"g3.asr.navigate".equals(stringExtra6) && !"g3.asr.nav.control".equals(stringExtra6)) {
                z = false;
            }
            final boolean booleanExtra = intent.getBooleanExtra("externalTurn", z);
            this.commands.execute(new Runnable() { // from class: com.local.p5home.AssistantService$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m8lambda$onStartCommand$5$comlocalg3homeAssistantService(stringExtra6, stringExtra7, booleanExtra, stringExtra8);
                }
            });
        } else if ("ask".equals(stringExtra) || "test".equals(stringExtra)) {
            final String stringExtra9 = intent.getStringExtra("requestId");
            final boolean zEquals = "test".equals(stringExtra);
            final String stringExtra10 = zEquals ? "请只回复：连接正常。" : intent.getStringExtra("text");
            final int iIncrementAndGet3 = this.generation.incrementAndGet();
            this.ark.cancel();
            if (!zEquals) {
                SpeechOutput.get(this).cancel();
            }
            BridgeStore.update(this, zEquals ? "正在测试大模型连接" : "正在等待模型回答", null, "");
            this.network.execute(new Runnable() { // from class: com.local.p5home.AssistantService$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m9lambda$onStartCommand$6$comlocalg3homeAssistantService(iIncrementAndGet3, stringExtra10, zEquals, stringExtra9);
                }
            });
        } else {
            finishJob();
        }
        return 2;
    }

    /* renamed from: lambda$onStartCommand$0$com-local-g3home-AssistantService, reason: not valid java name */
    /* synthetic */ void m3lambda$onStartCommand$0$comlocalg3homeAssistantService(String str) {
        if (this.holds.remove(str) != null) {
            finishJob();
        }
    }

    /* renamed from: lambda$onStartCommand$1$com-local-g3home-AssistantService, reason: not valid java name */
    /* synthetic */ boolean m4lambda$onStartCommand$1$comlocalg3homeAssistantService(int i) {
        return !this.destroyed && i == this.generation.get();
    }

    /* renamed from: lambda$onStartCommand$2$com-local-g3home-AssistantService, reason: not valid java name */
    /* synthetic */ void m5lambda$onStartCommand$2$comlocalg3homeAssistantService(int i, boolean z, String str) {
        if (!this.destroyed && i == this.generation.get()) {
            String str2 = z ? "系统播报测试完成" : str;
            if (z) {
                str = "";
            }
            BridgeStore.update(this, str2, null, str);
        }
        finishJob();
    }

    /* renamed from: lambda$onStartCommand$4$com-local-g3home-AssistantService, reason: not valid java name */
    /* synthetic */ void m7lambda$onStartCommand$4$comlocalg3homeAssistantService(long j, final String str, String str2, final int i, String str3) {
        AppConfig appConfigLoad;
        long jElapsedRealtime;
        try {
            try {
                appConfigLoad = ConfigStore.load(this);
                jElapsedRealtime = SystemClock.elapsedRealtime() - j;
            } catch (Exception e) {
                if (!this.destroyed) {
                    BridgeStore.update(this, "点歌未完成", null, e instanceof IllegalStateException ? e.getMessage() : "请检查音乐应用状态、登录及网络");
                }
                if (!this.destroyed) {
                }
            }
            if (!this.destroyed && jElapsedRealtime >= 0 && jElapsedRealtime <= 15000 && appConfigLoad.voiceEnabled && str.equals(appConfigLoad.musicProvider)) {
                String strPlay = MusicRouter.play(this, str, str2, new BooleanSupplier() { // from class: com.local.p5home.AssistantService$$ExternalSyntheticLambda7
                    @Override // java.util.function.BooleanSupplier
                    public final boolean getAsBoolean() {
                        return this.f$0.m6lambda$onStartCommand$3$comlocalg3homeAssistantService(i, str);
                    }
                });
                if (!this.destroyed && i == this.musicGeneration.get()) {
                    BridgeStore.update(this, strPlay, null, "");
                }
                if (!this.destroyed) {
                    turnReceipt("turn_complete", str3);
                }
                finishJob();
                return;
            }
            if (!this.destroyed) {
                turnReceipt("turn_complete", str3);
            }
            finishJob();
        } catch (Throwable th) {
            if (!this.destroyed) {
                turnReceipt("turn_complete", str3);
            }
            finishJob();
            throw th;
        }
    }

    /* renamed from: lambda$onStartCommand$3$com-local-g3home-AssistantService, reason: not valid java name */
    /* synthetic */ boolean m6lambda$onStartCommand$3$comlocalg3homeAssistantService(int i, String str) {
        AppConfig appConfigLoad = ConfigStore.load(this);
        return !this.destroyed && i == this.musicGeneration.get() && appConfigLoad.voiceEnabled && str.equals(appConfigLoad.musicProvider);
    }

    /* renamed from: lambda$onStartCommand$5$com-local-g3home-AssistantService, reason: not valid java name */
    /* synthetic */ void m8lambda$onStartCommand$5$comlocalg3homeAssistantService(String str, String str2, boolean z, String str3) {
        try {
            try {
            } catch (Exception e) {
                BridgeStore.update(this, "导航转接未完成", null, "请检查默认地图与模块状态");
                if (!this.destroyed && z) {
                }
            }
            if (this.destroyed) {
                if (!this.destroyed && z) {
                    turnReceipt("turn_complete", str3);
                }
                finishJob();
                return;
            }
            AppConfig appConfigLoad = ConfigStore.load(this);
            if (!appConfigLoad.voiceEnabled) {
                BridgeStore.update(this, "导航转接已关闭，本次排队指令已取消", null, "");
                if (!this.destroyed && z) {
                    turnReceipt("turn_complete", str3);
                }
                finishJob();
                return;
            }
            Navigator.Result resultHandle = Navigator.handle(this, appConfigLoad.navPackage, str, str2);
            if (this.destroyed) {
                if (!this.destroyed && z) {
                    turnReceipt("turn_complete", str3);
                }
                finishJob();
                return;
            }
            BridgeStore.update(this, resultHandle.message, null, resultHandle.accepted ? "" : resultHandle.message);
            if ("support".equals(resultHandle.replyKind) && "native://navi.select.route.count".equals(resultHandle.replyEvent)) {
                BridgeStore.enqueueRouteCountReply(this, resultHandle.replyEvent, resultHandle.replyData, resultHandle.message, resultHandle.conversationEpoch);
            } else if (resultHandle.replyKind != null && !resultHandle.replyKind.isEmpty()) {
                BridgeStore.enqueueReply(this, resultHandle.replyKind, resultHandle.replyEvent, resultHandle.replyData, resultHandle.message);
            } else if (!resultHandle.accepted) {
                BridgeStore.enqueueReply(this, "notice", "", "", resultHandle.message);
            }
            if (!this.destroyed && z) {
                turnReceipt("turn_complete", str3);
            }
            finishJob();
        } catch (Throwable th) {
            if (!this.destroyed && z) {
                turnReceipt("turn_complete", str3);
            }
            finishJob();
            throw th;
        }
    }

    /* renamed from: lambda$onStartCommand$6$com-local-g3home-AssistantService, reason: not valid java name */
    /* synthetic */ void m9lambda$onStartCommand$6$comlocalg3homeAssistantService(int i, String str, boolean z, String str2) {
        try {
        } catch (Exception e) {
            if (i != this.generation.get()) {
                return;
            } else {
                deliver(i, z, null, e instanceof ArkClient.ApiException ? e.getMessage() : "请求未完成，请检查网络、模型配置或设备解锁状态", str2);
            }
        } finally {
            finishJob();
        }
        if (i == this.generation.get() && !this.destroyed) {
            AppConfig appConfigLoad = ConfigStore.load(this);
            deliver(i, z, this.ark.ask(appConfigLoad.apiProtocol, appConfigLoad.endpoint, appConfigLoad.modelId, ConfigStore.apiKey(this, appConfigLoad.endpoint), str), null, str2);
        }
    }

    private void deliver(final int i, final boolean z, final String str, final String str2, final String str3) {
        this.main.post(new Runnable() { // from class: com.local.p5home.AssistantService$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m1lambda$deliver$8$comlocalg3homeAssistantService(i, str2, z, str, str3);
            }
        });
    }

    /* renamed from: lambda$deliver$8$com-local-g3home-AssistantService, reason: not valid java name */
    /* synthetic */ void m1lambda$deliver$8$comlocalg3homeAssistantService(final int i, final String str, boolean z, String str2, final String str3) {
        if (this.destroyed || i != this.generation.get()) {
            return;
        }
        BridgeStore.update(this, str == null ? z ? "大模型连接正常" : "回答已生成，正在准备播报" : "模型请求未完成", str2, str == null ? "" : str);
        if (!z) {
            this.jobs.incrementAndGet();
            if (str != null) {
                str2 = "模型请求未完成。" + str + "。";
            }
            SpeechOutput.get(this).speak(str2, this.speechOwner, new BooleanSupplier() { // from class: com.local.p5home.AssistantService$$ExternalSyntheticLambda9
                @Override // java.util.function.BooleanSupplier
                public final boolean getAsBoolean() {
                    return this.f$0.m0lambda$deliver$7$comlocalg3homeAssistantService(i);
                }
            }, new SpeechOutput.Callback() { // from class: com.local.p5home.AssistantService.1
                @Override // com.local.p5home.SpeechOutput.Callback
                public void started() {
                    if (AssistantService.this.destroyed || i != AssistantService.this.generation.get()) {
                        return;
                    }
                    AssistantService.this.turnReceipt("turn_started", str3);
                }

                @Override // com.local.p5home.SpeechOutput.Callback
                public void done(boolean z2, String str4) {
                    if (!AssistantService.this.destroyed && i == AssistantService.this.generation.get()) {
                        if (str == null) {
                            BridgeStore.update(AssistantService.this, str4, null, z2 ? "" : str4);
                        } else {
                            BridgeStore.update(AssistantService.this, "模型请求未完成", null, str + (z2 ? "" : "；" + str4));
                        }
                        AssistantService.this.turnReceipt("turn_complete", str3);
                    }
                    AssistantService.this.finishJob();
                }
            });
        }
    }

    /* renamed from: lambda$deliver$7$com-local-g3home-AssistantService, reason: not valid java name */
    /* synthetic */ boolean m0lambda$deliver$7$comlocalg3homeAssistantService(int i) {
        return !this.destroyed && i == this.generation.get();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void turnReceipt(String str, String str2) {
        if (str2 == null || !str2.matches("[A-Za-z0-9._-]{1,100}")) {
            return;
        }
        BridgeStore.enqueueReply(this, str, "", "", "", str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finishJob() {
        if (this.jobs.decrementAndGet() != 0 || this.destroyed) {
            return;
        }
        this.main.postDelayed(new Runnable() { // from class: com.local.p5home.AssistantService$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m2lambda$finishJob$9$comlocalg3homeAssistantService();
            }
        }, 20000L);
    }

    /* renamed from: lambda$finishJob$9$com-local-g3home-AssistantService, reason: not valid java name */
    /* synthetic */ void m2lambda$finishJob$9$comlocalg3homeAssistantService() {
        if (this.jobs.get() == 0) {
            stopForeground(true);
            stopSelf();
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        this.destroyed = true;
        SpeechOutput.get(this).cancelOwner(this.speechOwner);
        this.generation.incrementAndGet();
        this.ark.cancel();
        this.network.shutdownNow();
        this.commands.shutdownNow();
        this.main.removeCallbacksAndMessages(null);
        super.onDestroy();
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }
}

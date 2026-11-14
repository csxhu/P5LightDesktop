package com.local.p5home;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.media.MediaMetadata;
import android.media.session.MediaController;
import android.media.session.MediaSessionManager;
import android.media.session.PlaybackState;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import android.os.SystemClock;
import android.provider.Settings;
import com.local.g3bridge.sdk.G3Bridge;
import com.local.p5home.VehicleBridgePushPolicy;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.TreeSet;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
final class VehicleBridgeClient {
    private static final String PREFS = "vehicle-bridge-client";
    private static VehicleBridgeClient instance;
    private volatile String apiStatus;
    private final Context app;
    private final G3Bridge bridge;
    private volatile MediaController controller;
    private String displayGeneration;
    private final AtomicBoolean inboundQueued;
    private final AtomicReference<Inbound> incoming;
    private long lastApiCheck;
    private long lastMediaCheck;
    private final ComponentName listener;
    private final Handler main = new Handler(Looper.getMainLooper());
    private MediaController.Callback mediaCallback;
    private MediaSessionManager mediaManager;
    private final AtomicLong musicEpoch;
    private long musicGeneration;
    private boolean musicOn;
    private final AtomicBoolean musicQueued;
    private final VehicleBridgePushPolicy.Slot musicSlot;
    private volatile String musicStatus;
    private final AtomicLong navEpoch;
    private long navGeneration;
    private boolean navOn;
    private boolean navRegistered;
    private final VehicleBridgePushPolicy.Slot navSlot;
    private volatile String navStatus;
    private final BroadcastReceiver navigation;
    private long ownedNavAt;
    private String selectedMusicId;
    private String selectedMusicPackage;
    private MediaSessionManager.OnActiveSessionsChangedListener sessionsChanged;
    private ScheduledFuture<?> ticker;
    private final ScheduledThreadPoolExecutor worker;

    static /* synthetic */ Thread lambda$new$0(Runnable runnable) {
        Thread thread = new Thread(runnable, "G3BridgeDisplay");
        thread.setDaemon(true);
        return thread;
    }

    private static final class Inbound {
        final long epoch;
        final Intent intent;
        final long time;

        Inbound(Intent intent, long j, long j2) {
            this.intent = intent;
            this.epoch = j;
            this.time = j2;
        }
    }

    private VehicleBridgeClient(Context context) {
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1, new ThreadFactory() { // from class: com.local.p5home.VehicleBridgeClient$$ExternalSyntheticLambda2
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                return VehicleBridgeClient.lambda$new$0(runnable);
            }
        });
        this.worker = scheduledThreadPoolExecutor;
        this.navEpoch = new AtomicLong();
        this.musicEpoch = new AtomicLong();
        this.incoming = new AtomicReference<>();
        this.inboundQueued = new AtomicBoolean();
        this.musicQueued = new AtomicBoolean();
        this.navSlot = new VehicleBridgePushPolicy.Slot();
        this.musicSlot = new VehicleBridgePushPolicy.Slot();
        this.navStatus = "导航自动推送关闭";
        this.musicStatus = "音乐自动推送关闭";
        this.apiStatus = "尚未检查桥接授权";
        this.navGeneration = -1L;
        this.musicGeneration = -1L;
        this.ownedNavAt = -1L;
        this.lastMediaCheck = -1L;
        this.lastApiCheck = -1L;
        this.selectedMusicId = "";
        this.selectedMusicPackage = "";
        this.displayGeneration = "";
        this.navigation = new BroadcastReceiver() { // from class: com.local.p5home.VehicleBridgeClient.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                if (VehicleBridgeClient.navEnabled(VehicleBridgeClient.this.app) && intent != null && "AUTONAVI_STANDARD_BROADCAST_SEND".equals(intent.getAction())) {
                    VehicleBridgeClient.this.incoming.set(new Inbound(new Intent(intent), VehicleBridgeClient.this.navEpoch.get(), SystemClock.elapsedRealtime()));
                    VehicleBridgeClient.this.queueInbound();
                }
            }
        };
        this.app = context;
        this.bridge = new G3Bridge(context);
        this.listener = new ComponentName(context, (Class<?>) BridgeMusicListener.class);
        scheduledThreadPoolExecutor.setKeepAliveTime(30L, TimeUnit.SECONDS);
        scheduledThreadPoolExecutor.allowCoreThreadTimeOut(true);
    }

    private static SharedPreferences preferences(Context context) {
        return context.getSharedPreferences(PREFS, 0);
    }

    static boolean navEnabled(Context context) {
        return preferences(context).getBoolean("nav", false);
    }

    static boolean musicEnabled(Context context) {
        return preferences(context).getBoolean("music", false);
    }

    static void start(Context context) {
        VehicleBridgeClient vehicleBridgeClientOwner = owner(context);
        if (vehicleBridgeClientOwner != null) {
            Objects.requireNonNull(vehicleBridgeClientOwner);
            vehicleBridgeClientOwner.work(new VehicleBridgeClient$$ExternalSyntheticLambda3(vehicleBridgeClientOwner));
        }
    }

    private static synchronized VehicleBridgeClient owner(Context context) {
        if (context != null) {
            if (TopBarStore.PACKAGE.equals(context.getPackageName()) && context.getApplicationInfo().uid == Process.myUid()) {
                if (instance == null) {
                    Context applicationContext = context.getApplicationContext();
                    if (applicationContext != null) {
                        context = applicationContext;
                    }
                    instance = new VehicleBridgeClient(context);
                }
                return instance;
            }
        }
        return null;
    }

    static void setNavEnabled(Context context, boolean z) {
        preferences(context).edit().putBoolean("nav", z).apply();
        VehicleBridgeClient vehicleBridgeClientOwner = owner(context);
        if (vehicleBridgeClientOwner != null) {
            vehicleBridgeClientOwner.navEpoch.incrementAndGet();
            vehicleBridgeClientOwner.incoming.set(null);
            Objects.requireNonNull(vehicleBridgeClientOwner);
            vehicleBridgeClientOwner.work(new VehicleBridgeClient$$ExternalSyntheticLambda3(vehicleBridgeClientOwner));
        }
    }

    static void setMusicEnabled(Context context, boolean z) {
        preferences(context).edit().putBoolean("music", z).apply();
        VehicleBridgeClient vehicleBridgeClientOwner = owner(context);
        if (vehicleBridgeClientOwner != null) {
            vehicleBridgeClientOwner.musicEpoch.incrementAndGet();
            Objects.requireNonNull(vehicleBridgeClientOwner);
            vehicleBridgeClientOwner.work(new VehicleBridgeClient$$ExternalSyntheticLambda3(vehicleBridgeClientOwner));
        }
    }

    static String status(Context context) {
        VehicleBridgeClient vehicleBridgeClient;
        synchronized (VehicleBridgeClient.class) {
            vehicleBridgeClient = instance;
        }
        if (vehicleBridgeClient == null) {
            return "自动推送尚未启动";
        }
        return (navEnabled(context) ? "导航来源：未认证的高德标准广播，仅用于仪表显示\n" : "") + vehicleBridgeClient.navStatus + "\n" + vehicleBridgeClient.musicStatus + "\n" + vehicleBridgeClient.apiStatus;
    }

    static void openMusicAccess(Activity activity) {
        activity.startActivity(new Intent("android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS"));
    }

    static void musicAccessChanged(Context context) {
        VehicleBridgeClient vehicleBridgeClientOwner = owner(context);
        if (vehicleBridgeClientOwner != null) {
            vehicleBridgeClientOwner.musicEpoch.incrementAndGet();
            Objects.requireNonNull(vehicleBridgeClientOwner);
            vehicleBridgeClientOwner.work(new VehicleBridgeClient$$ExternalSyntheticLambda3(vehicleBridgeClientOwner));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void work(final Runnable runnable) {
        try {
            this.worker.execute(new Runnable() { // from class: com.local.p5home.VehicleBridgeClient$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m213lambda$work$1$comlocalg3homeVehicleBridgeClient(runnable);
                }
            });
        } catch (RejectedExecutionException e) {
        }
    }

    /* renamed from: lambda$work$1$com-local-g3home-VehicleBridgeClient, reason: not valid java name */
    /* synthetic */ void m213lambda$work$1$comlocalg3homeVehicleBridgeClient(Runnable runnable) {
        try {
            runnable.run();
        } catch (RuntimeException e) {
            this.apiStatus = "显示推送未完成：" + Ui.error(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reconcile() {
        boolean zNavEnabled = navEnabled(this.app);
        boolean zMusicEnabled = musicEnabled(this.app);
        long j = this.navEpoch.get();
        long j2 = this.musicEpoch.get();
        if (j != this.navGeneration || zNavEnabled != this.navOn) {
            this.navGeneration = j;
            this.navOn = zNavEnabled;
            this.navSlot.reset(j);
            this.ownedNavAt = -1L;
            this.incoming.set(null);
            this.navStatus = zNavEnabled ? "导航等待高德标准广播（发送者未认证，仅用于仪表显示）" : "导航自动推送关闭";
            if (zNavEnabled) {
                registerNavigation();
            } else {
                unregisterNavigation();
            }
        }
        if (j2 != this.musicGeneration || zMusicEnabled != this.musicOn) {
            this.musicGeneration = j2;
            this.musicOn = zMusicEnabled;
            this.musicSlot.reset(j2);
            stopMedia();
            this.selectedMusicId = "";
            this.selectedMusicPackage = "";
            this.lastMediaCheck = -1L;
            this.musicStatus = zMusicEnabled ? "音乐等待通知访问及实际播放会话" : "音乐自动推送关闭";
        }
        if (zNavEnabled || zMusicEnabled) {
            ScheduledFuture<?> scheduledFuture = this.ticker;
            if (scheduledFuture == null || scheduledFuture.isCancelled()) {
                this.ticker = this.worker.scheduleWithFixedDelay(new Runnable() { // from class: com.local.p5home.VehicleBridgeClient$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.m212lambda$reconcile$2$comlocalg3homeVehicleBridgeClient();
                    }
                }, 0L, 500L, TimeUnit.MILLISECONDS);
            }
        } else {
            ScheduledFuture<?> scheduledFuture2 = this.ticker;
            if (scheduledFuture2 != null) {
                scheduledFuture2.cancel(false);
                this.ticker = null;
            }
        }
        if (zMusicEnabled) {
            checkMedia();
        }
    }

    /* renamed from: lambda$reconcile$2$com-local-g3home-VehicleBridgeClient, reason: not valid java name */
    /* synthetic */ void m212lambda$reconcile$2$comlocalg3homeVehicleBridgeClient() {
        try {
            tick();
        } catch (RuntimeException e) {
            this.apiStatus = "显示推送检查未完成：" + Ui.error(e);
        }
    }

    private void tick() {
        if (this.navOn != navEnabled(this.app) || this.musicOn != musicEnabled(this.app) || this.navGeneration != this.navEpoch.get() || this.musicGeneration != this.musicEpoch.get()) {
            reconcile();
            return;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (this.musicOn) {
            long j = this.lastMediaCheck;
            if (j < 0 || jElapsedRealtime - j >= 2000) {
                this.lastMediaCheck = jElapsedRealtime;
                checkMedia();
            }
        }
        long j2 = this.lastApiCheck;
        if (j2 < 0 || jElapsedRealtime - j2 >= 5000) {
            this.lastApiCheck = jElapsedRealtime;
            G3Bridge.Response responseHello = this.bridge.hello();
            this.apiStatus = !responseHello.ok() ? responseHello.code() + " · " + responseHello.message() : !responseHello.data().getBoolean("authorized", false) ? "车辆接口等待客户端授权" : !responseHello.data().getBoolean("writeAuthorized", false) ? "车辆接口当前仅只读授权" : "车辆接口已有读写授权；具体能力按提交时检查";
            if (responseHello.ok() && responseHello.data().getBoolean("authorized", false)) {
                G3Bridge.Response responseCapabilities = this.bridge.capabilities();
                if (responseCapabilities.ok()) {
                    observeDisplayGeneration(responseCapabilities.data());
                }
            }
        }
        flush(true);
        flush(false);
    }

    private void registerNavigation() {
        if (this.navRegistered) {
            return;
        }
        try {
            this.app.registerReceiver(this.navigation, new IntentFilter("AUTONAVI_STANDARD_BROADCAST_SEND"));
            this.navRegistered = true;
        } catch (RuntimeException e) {
            this.navStatus = "高德广播订阅失败：" + Ui.error(e);
        }
    }

    private void unregisterNavigation() {
        if (this.navRegistered) {
            try {
                this.app.unregisterReceiver(this.navigation);
            } catch (RuntimeException e) {
            }
            this.navRegistered = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void queueInbound() {
        if (this.inboundQueued.compareAndSet(false, true)) {
            work(new Runnable() { // from class: com.local.p5home.VehicleBridgeClient$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m209lambda$queueInbound$3$comlocalg3homeVehicleBridgeClient();
                }
            });
        }
    }

    /* renamed from: lambda$queueInbound$3$com-local-g3home-VehicleBridgeClient, reason: not valid java name */
    /* synthetic */ void m209lambda$queueInbound$3$comlocalg3homeVehicleBridgeClient() {
        try {
            Inbound andSet = this.incoming.getAndSet(null);
            if (andSet != null) {
                navigationData(andSet);
            }
        } finally {
            this.inboundQueued.set(false);
            if (this.incoming.get() != null) {
                queueInbound();
            }
        }
    }

    private boolean navigationCurrent(long j) {
        return navEnabled(this.app) && this.navOn && this.navEpoch.get() == j && this.navGeneration == j;
    }

    private void navigationData(Inbound inbound) {
        if (!navigationCurrent(inbound.epoch) || SystemClock.elapsedRealtime() - inbound.time >= 2500) {
            return;
        }
        if (!Navigator.AMAP_AUTO.equals(ConfigStore.load(this.app).navPackage) || !Navigator.verifiedAuto(this.app)) {
            this.navSlot.reset(inbound.epoch);
            this.ownedNavAt = -1L;
            this.navStatus = "导航等待已验证且被设为默认的高德车机";
            return;
        }
        try {
            Intent intent = inbound.intent;
            Object obj = intent.getExtras() == null ? null : intent.getExtras().get("KEY_TYPE");
            if (obj instanceof Integer) {
                if (((Integer) obj).intValue() == 10019) {
                    Object obj2 = intent.getExtras().get("EXTRA_STATE");
                    if ((obj2 instanceof Integer) && ((Integer) obj2).intValue() == 9) {
                        this.navSlot.reset(inbound.epoch);
                        if (!VehicleBridgePushPolicy.owns(this.ownedNavAt, SystemClock.elapsedRealtime())) {
                            this.navStatus = "收到导航退出广播，但没有近期本客户端推送，不清除仪表";
                            return;
                        }
                        Bundle bundle = new Bundle();
                        bundle.putBoolean("active", false);
                        this.navSlot.offer(inbound.epoch, "clear", bundle, inbound.time);
                        flush(true);
                        return;
                    }
                    return;
                }
                if (((Integer) obj).intValue() != 10001) {
                    return;
                }
                Bundle extras = intent.getExtras();
                String strString = string(extras, "CUR_ROAD_NAME");
                String strString2 = string(extras, "NEXT_ROAD_NAME");
                int iIcmIcon = VehicleBridgePushPolicy.icmIcon(integer(extras, "ICON", 0, 1000));
                int iInteger = integer(extras, "ROUTE_REMAIN_DIS", 0, 50000000);
                int iInteger2 = integer(extras, "ROUTE_REMAIN_TIME", 0, 604800);
                int iInteger3 = integer(extras, "SEG_REMAIN_DIS", 0, 50000000);
                if (!VehicleBridgePushPolicy.navigation(strString, strString2, iInteger, iInteger2, iInteger3, iIcmIcon)) {
                    this.navStatus = "导航字段或图标未适配，未猜测发送（广播发送者未认证）";
                    return;
                }
                Bundle bundle2 = new Bundle();
                bundle2.putBoolean("active", true);
                bundle2.putString("currentRoad", strString);
                bundle2.putString("nextRoad", strString2);
                bundle2.putInt("remainingMeters", iInteger);
                bundle2.putInt("remainingSeconds", iInteger2);
                bundle2.putInt("turnMeters", iInteger3);
                bundle2.putInt("icmIcon", iIcmIcon);
                if (this.navSlot.offer(inbound.epoch, fingerprint(bundle2), bundle2, inbound.time)) {
                    this.navStatus = "收到高德标准导航数据（发送者未认证，图标显示待实车验证）";
                }
                flush(true);
            }
        } catch (RuntimeException e) {
            this.navStatus = "高德广播字段缺失或类型无效，未发送";
        }
    }

    private void checkMedia() {
        if (!musicEnabled(this.app) || !this.musicOn) {
            return;
        }
        if (!musicAccess()) {
            stopMedia();
            this.musicStatus = "音乐等待“允许读取正在播放的音乐”通知访问授权";
            return;
        }
        AppConfig appConfigLoad = ConfigStore.load(this.app);
        String strPackageName = MusicRouter.packageName(this.app, appConfigLoad.musicProvider);
        if (!appConfigLoad.musicProvider.equals(this.selectedMusicId) || !strPackageName.equals(this.selectedMusicPackage)) {
            this.musicEpoch.incrementAndGet();
            long j = this.musicEpoch.get();
            this.musicGeneration = j;
            this.musicSlot.reset(j);
            stopMedia();
            this.selectedMusicId = appConfigLoad.musicProvider;
            this.selectedMusicPackage = strPackageName;
        }
        if (strPackageName.isEmpty()) {
            this.musicStatus = "当前默认音乐应用未安装或尚未选择";
            return;
        }
        try {
            if (this.mediaManager == null) {
                this.mediaManager = (MediaSessionManager) this.app.getSystemService("media_session");
            }
            if (this.mediaManager == null) {
                this.musicStatus = "本机MediaSession服务不可用";
                return;
            }
            if (this.sessionsChanged == null) {
                MediaSessionManager.OnActiveSessionsChangedListener onActiveSessionsChangedListener = new MediaSessionManager.OnActiveSessionsChangedListener() { // from class: com.local.p5home.VehicleBridgeClient$$ExternalSyntheticLambda7
                    @Override // android.media.session.MediaSessionManager.OnActiveSessionsChangedListener
                    public final void onActiveSessionsChanged(List list) {
                        this.f$0.m208lambda$checkMedia$4$comlocalg3homeVehicleBridgeClient(list);
                    }
                };
                this.sessionsChanged = onActiveSessionsChangedListener;
                this.mediaManager.addOnActiveSessionsChangedListener(onActiveSessionsChangedListener, this.listener, this.main);
            }
            List<MediaController> activeSessions = this.mediaManager.getActiveSessions(this.listener);
            MediaController mediaController = null;
            if (activeSessions != null) {
                Iterator<MediaController> it = activeSessions.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    MediaController next = it.next();
                    if (next != null && strPackageName.equals(next.getPackageName())) {
                        if (mediaController == null) {
                            mediaController = next;
                        }
                        PlaybackState playbackState = next.getPlaybackState();
                        if (playbackState != null && playbackState.getState() == 3) {
                            mediaController = next;
                            break;
                        }
                    }
                }
            }
            if (mediaController == null) {
                detachController();
                this.musicStatus = "等待默认音乐应用的实际MediaSession：" + strPackageName;
                return;
            }
            if (this.controller == null || !this.controller.getSessionToken().equals(mediaController.getSessionToken())) {
                detachController();
                this.controller = mediaController;
                this.mediaCallback = new AnonymousClass2(this.musicEpoch.get(), mediaController);
                this.controller.registerCallback(this.mediaCallback, this.main);
            }
            musicData(this.musicEpoch.get(), this.controller);
        } catch (SecurityException e) {
            stopMedia();
            this.musicStatus = "系统未授予当前MediaSession读取权限，请检查通知访问";
        } catch (RuntimeException e2) {
            stopMedia();
            this.musicStatus = "音乐会话读取未完成：" + Ui.error(e2);
        }
    }

    /* renamed from: lambda$checkMedia$4$com-local-g3home-VehicleBridgeClient, reason: not valid java name */
    /* synthetic */ void m208lambda$checkMedia$4$comlocalg3homeVehicleBridgeClient(List list) {
        queueMusic();
    }

    /* renamed from: com.local.p5home.VehicleBridgeClient$2, reason: invalid class name */
    class AnonymousClass2 extends MediaController.Callback {
        final /* synthetic */ long val$generation;
        final /* synthetic */ MediaController val$source;

        AnonymousClass2(long j, MediaController mediaController) {
            this.val$generation = j;
            this.val$source = mediaController;
        }

        @Override // android.media.session.MediaController.Callback
        public void onMetadataChanged(MediaMetadata mediaMetadata) {
            VehicleBridgeClient.this.queueMusic(this.val$generation, this.val$source);
        }

        @Override // android.media.session.MediaController.Callback
        public void onPlaybackStateChanged(PlaybackState playbackState) {
            VehicleBridgeClient.this.queueMusic(this.val$generation, this.val$source);
        }

        @Override // android.media.session.MediaController.Callback
        public void onSessionDestroyed() {
            if (this.val$source == VehicleBridgeClient.this.controller) {
                AtomicLong atomicLong = VehicleBridgeClient.this.musicEpoch;
                long j = this.val$generation;
                if (atomicLong.compareAndSet(j, 1 + j)) {
                    final VehicleBridgeClient vehicleBridgeClient = VehicleBridgeClient.this;
                    vehicleBridgeClient.work(new Runnable() { // from class: com.local.p5home.VehicleBridgeClient$2$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            vehicleBridgeClient.reconcile();
                        }
                    });
                }
            }
        }
    }

    private boolean musicAccess() {
        String string = Settings.Secure.getString(this.app.getContentResolver(), "enabled_notification_listeners");
        if (string == null) {
            return false;
        }
        for (String str : string.split(":")) {
            if (this.listener.equals(ComponentName.unflattenFromString(str))) {
                return true;
            }
        }
        return false;
    }

    private void queueMusic() {
        if (this.musicQueued.compareAndSet(false, true)) {
            work(new Runnable() { // from class: com.local.p5home.VehicleBridgeClient$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m210lambda$queueMusic$5$comlocalg3homeVehicleBridgeClient();
                }
            });
        }
    }

    /* renamed from: lambda$queueMusic$5$com-local-g3home-VehicleBridgeClient, reason: not valid java name */
    /* synthetic */ void m210lambda$queueMusic$5$comlocalg3homeVehicleBridgeClient() {
        try {
            if (musicEnabled(this.app)) {
                checkMedia();
            }
        } finally {
            this.musicQueued.set(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void queueMusic(final long j, final MediaController mediaController) {
        if (musicEnabled(this.app) && j == this.musicEpoch.get() && this.musicQueued.compareAndSet(false, true)) {
            work(new Runnable() { // from class: com.local.p5home.VehicleBridgeClient$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m211lambda$queueMusic$6$comlocalg3homeVehicleBridgeClient(j, mediaController);
                }
            });
        }
    }

    /* renamed from: lambda$queueMusic$6$com-local-g3home-VehicleBridgeClient, reason: not valid java name */
    /* synthetic */ void m211lambda$queueMusic$6$comlocalg3homeVehicleBridgeClient(long j, MediaController mediaController) {
        try {
            if (j == this.musicEpoch.get() && mediaController == this.controller) {
                musicData(j, mediaController);
            }
        } finally {
            this.musicQueued.set(false);
        }
    }

    private void musicData(long j, MediaController mediaController) {
        if (!musicEnabled(this.app) || !this.musicOn || j != this.musicEpoch.get() || mediaController == null || mediaController != this.controller || !this.selectedMusicPackage.equals(mediaController.getPackageName())) {
            return;
        }
        PlaybackState playbackState = mediaController.getPlaybackState();
        MediaMetadata metadata = mediaController.getMetadata();
        if (playbackState == null || metadata == null || !VehicleBridgePushPolicy.stablePlayback(playbackState.getState())) {
            this.musicStatus = "默认音乐会话尚无稳定播放状态或元数据";
            return;
        }
        String string = metadata.getString("android.media.metadata.TITLE");
        String string2 = metadata.getString("android.media.metadata.ARTIST");
        if (string2 == null) {
            string2 = metadata.getString("android.media.metadata.ALBUM_ARTIST");
        }
        if (string2 == null) {
            string2 = "";
        }
        if (string == null || string.trim().isEmpty() || !VehicleBridgePushPolicy.text(string) || !VehicleBridgePushPolicy.text(string2)) {
            this.musicStatus = "默认音乐会话缺少可用曲名，未使用点歌文本代替";
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString("title", string);
        bundle.putString("artist", string2);
        bundle.putBoolean("playing", playbackState.getState() == 3);
        bundle.putInt("durationMs", 0);
        bundle.putInt("positionMs", 0);
        bundle.putInt("oemSource", 0);
        if (this.musicSlot.offer(j, this.selectedMusicPackage + "\n" + fingerprint(bundle), bundle, SystemClock.elapsedRealtime())) {
            this.musicStatus = "收到默认音乐应用实际元数据：" + string;
        }
        flush(false);
    }

    private void detachController() {
        if (this.controller != null && this.mediaCallback != null) {
            try {
                this.controller.unregisterCallback(this.mediaCallback);
            } catch (RuntimeException e) {
            }
        }
        this.controller = null;
        this.mediaCallback = null;
        this.musicSlot.reset(this.musicEpoch.get());
    }

    private void stopMedia() {
        MediaSessionManager.OnActiveSessionsChangedListener onActiveSessionsChangedListener;
        detachController();
        MediaSessionManager mediaSessionManager = this.mediaManager;
        if (mediaSessionManager != null && (onActiveSessionsChangedListener = this.sessionsChanged) != null) {
            try {
                mediaSessionManager.removeOnActiveSessionsChangedListener(onActiveSessionsChangedListener);
            } catch (RuntimeException e) {
            }
        }
        this.sessionsChanged = null;
        this.mediaManager = null;
    }

    private void flush(boolean z) {
        long j = (z ? this.navEpoch : this.musicEpoch).get();
        if (z) {
            if (!navigationCurrent(j)) {
                return;
            }
        } else if (!musicEnabled(this.app) || !this.musicOn || j != this.musicGeneration) {
            return;
        }
        VehicleBridgePushPolicy.Slot slot = z ? this.navSlot : this.musicSlot;
        VehicleBridgePushPolicy.Event eventTake = slot.take(j, SystemClock.elapsedRealtime());
        if (eventTake == null) {
            return;
        }
        String str = z ? G3Bridge.CLUSTER_NAVIGATION : G3Bridge.CLUSTER_MUSIC;
        G3Bridge.Response responseHello = this.bridge.hello();
        if (!responseHello.ok() || !responseHello.data().getBoolean("authorized", false) || !responseHello.data().getBoolean("writeAuthorized", false)) {
            note(z, "等待车辆接口读写授权；未提交显示数据");
            return;
        }
        G3Bridge.Response responseCapabilities = this.bridge.capabilities();
        if (responseCapabilities.ok() && observeDisplayGeneration(responseCapabilities.data())) {
            return;
        }
        if (!responseCapabilities.ok() || !responseCapabilities.supportsCommand(str)) {
            note(z, "当前仪表能力未就绪：" + (responseCapabilities.ok() ? "UNSUPPORTED" : responseCapabilities.code()));
            return;
        }
        long jElapsedRealtime = eventTake.deadline - SystemClock.elapsedRealtime();
        if (!(z ? navigationCurrent(eventTake.epoch) : musicEnabled(this.app) && this.musicOn && this.musicEpoch.get() == eventTake.epoch) || jElapsedRealtime < 500) {
            return;
        }
        if (!z || (Navigator.AMAP_AUTO.equals(ConfigStore.load(this.app).navPackage) && Navigator.verifiedAuto(this.app))) {
            if (!z) {
                if (this.controller == null || !musicAccess()) {
                    return;
                }
                String str2 = this.selectedMusicPackage;
                Context context = this.app;
                if (!str2.equals(MusicRouter.packageName(context, ConfigStore.load(context).musicProvider))) {
                    return;
                }
            }
            if (z) {
                if (!navigationCurrent(eventTake.epoch)) {
                    return;
                }
            } else if (!musicEnabled(this.app) || this.musicEpoch.get() != eventTake.epoch || this.controller == null) {
                return;
            }
            G3Bridge.CommandResult commandResultExecute = this.bridge.execute(str, G3Bridge.payload((Bundle) eventTake.value), Math.min(2500L, jElapsedRealtime));
            if (commandResultExecute.pending()) {
                slot.submitted(eventTake, SystemClock.elapsedRealtime());
                if (z) {
                    this.ownedNavAt = ((Bundle) eventTake.value).getBoolean("active", false) ? SystemClock.elapsedRealtime() : -1L;
                }
                note(z, "已提交原厂仪表，显示未确认" + (z ? "（高德广播发送者未认证）" : ""));
                return;
            }
            note(z, "仪表推送未确认：" + commandResultExecute.code() + " / " + commandResultExecute.state().name());
        }
    }

    private boolean observeDisplayGeneration(Bundle bundle) {
        String string = bundle.getString("displayGeneration", "");
        if (string == null || string.isEmpty()) {
            return false;
        }
        if (this.displayGeneration.isEmpty()) {
            this.displayGeneration = string;
            return false;
        }
        if (this.displayGeneration.equals(string)) {
            return false;
        }
        this.displayGeneration = string;
        this.navSlot.reset(this.navEpoch.get());
        this.musicSlot.reset(this.musicEpoch.get());
        this.ownedNavAt = -1L;
        this.navStatus = this.navOn ? "车辆接口已换代，等待新的真实导航来源" : "导航自动推送关闭";
        this.musicStatus = this.musicOn ? "车辆接口已换代，等待新的实际音乐会话观测" : "音乐自动推送关闭";
        return true;
    }

    private void note(boolean z, String str) {
        if (z) {
            this.navStatus = str;
        } else {
            this.musicStatus = str;
        }
    }

    private static String fingerprint(Bundle bundle) {
        StringBuilder sb = new StringBuilder();
        Iterator it = new TreeSet(bundle.keySet()).iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            String strValueOf = String.valueOf(bundle.get(str));
            sb.append(str.length()).append(':').append(str).append(strValueOf.length()).append(':').append(strValueOf);
        }
        return sb.toString();
    }

    private static int integer(Bundle bundle, String str, int i, int i2) {
        Object obj = bundle.get(str);
        if (!(obj instanceof Number)) {
            throw new IllegalArgumentException();
        }
        double dDoubleValue = ((Number) obj).doubleValue();
        if (!Double.isFinite(dDoubleValue) || dDoubleValue < i || dDoubleValue > i2) {
            throw new IllegalArgumentException();
        }
        return (int) dDoubleValue;
    }

    private static String string(Bundle bundle, String str) {
        Object obj = bundle.get(str);
        if (obj instanceof String) {
            return (String) obj;
        }
        throw new IllegalArgumentException();
    }
}

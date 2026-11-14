.class final Lcom/local/p5home/VehicleBridgeClient;
.super Ljava/lang/Object;
.source "VehicleBridgeClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/local/p5home/VehicleBridgeClient$Inbound;
    }
.end annotation


# static fields
.field private static final PREFS:Ljava/lang/String; = "vehicle-bridge-client"

.field private static instance:Lcom/local/p5home/VehicleBridgeClient;


# instance fields
.field private volatile apiStatus:Ljava/lang/String;

.field private final app:Landroid/content/Context;

.field private final bridge:Lcom/local/g3bridge/sdk/G3Bridge;

.field private volatile controller:Landroid/media/session/MediaController;

.field private displayGeneration:Ljava/lang/String;

.field private final inboundQueued:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final incoming:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/local/p5home/VehicleBridgeClient$Inbound;",
            ">;"
        }
    .end annotation
.end field

.field private lastApiCheck:J

.field private lastMediaCheck:J

.field private final listener:Landroid/content/ComponentName;

.field private final main:Landroid/os/Handler;

.field private mediaCallback:Landroid/media/session/MediaController$Callback;

.field private mediaManager:Landroid/media/session/MediaSessionManager;

.field private final musicEpoch:Ljava/util/concurrent/atomic/AtomicLong;

.field private musicGeneration:J

.field private musicOn:Z

.field private final musicQueued:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final musicSlot:Lcom/local/p5home/VehicleBridgePushPolicy$Slot;

.field private volatile musicStatus:Ljava/lang/String;

.field private final navEpoch:Ljava/util/concurrent/atomic/AtomicLong;

.field private navGeneration:J

.field private navOn:Z

.field private navRegistered:Z

.field private final navSlot:Lcom/local/p5home/VehicleBridgePushPolicy$Slot;

.field private volatile navStatus:Ljava/lang/String;

.field private final navigation:Landroid/content/BroadcastReceiver;

.field private ownedNavAt:J

.field private selectedMusicId:Ljava/lang/String;

.field private selectedMusicPackage:Ljava/lang/String;

.field private sessionsChanged:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

.field private ticker:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private final worker:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# direct methods
.method public static synthetic $r8$lambda$QLVc1G32Lkv6t9FNQgiVgva9YU4(Lcom/local/p5home/VehicleBridgeClient;)V
    .registers 1

    invoke-direct {p0}, Lcom/local/p5home/VehicleBridgeClient;->reconcile()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 7

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/local/p5home/VehicleBridgeClient;->main:Landroid/os/Handler;

    .line 22
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lcom/local/p5home/VehicleBridgeClient$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/local/p5home/VehicleBridgeClient$$ExternalSyntheticLambda2;-><init>()V

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/local/p5home/VehicleBridgeClient;->worker:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 23
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v1, p0, Lcom/local/p5home/VehicleBridgeClient;->navEpoch:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v1, p0, Lcom/local/p5home/VehicleBridgeClient;->musicEpoch:Ljava/util/concurrent/atomic/AtomicLong;

    .line 24
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v1, p0, Lcom/local/p5home/VehicleBridgeClient;->incoming:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lcom/local/p5home/VehicleBridgeClient;->inboundQueued:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lcom/local/p5home/VehicleBridgeClient;->musicQueued:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    new-instance v1, Lcom/local/p5home/VehicleBridgePushPolicy$Slot;

    invoke-direct {v1}, Lcom/local/p5home/VehicleBridgePushPolicy$Slot;-><init>()V

    iput-object v1, p0, Lcom/local/p5home/VehicleBridgeClient;->navSlot:Lcom/local/p5home/VehicleBridgePushPolicy$Slot;

    new-instance v1, Lcom/local/p5home/VehicleBridgePushPolicy$Slot;

    invoke-direct {v1}, Lcom/local/p5home/VehicleBridgePushPolicy$Slot;-><init>()V

    iput-object v1, p0, Lcom/local/p5home/VehicleBridgeClient;->musicSlot:Lcom/local/p5home/VehicleBridgePushPolicy$Slot;

    .line 26
    const-string v1, "\u5bfc\u822a\u81ea\u52a8\u63a8\u9001\u5173\u95ed"

    iput-object v1, p0, Lcom/local/p5home/VehicleBridgeClient;->navStatus:Ljava/lang/String;

    const-string v1, "\u97f3\u4e50\u81ea\u52a8\u63a8\u9001\u5173\u95ed"

    iput-object v1, p0, Lcom/local/p5home/VehicleBridgeClient;->musicStatus:Ljava/lang/String;

    const-string v1, "\u5c1a\u672a\u68c0\u67e5\u6865\u63a5\u6388\u6743"

    iput-object v1, p0, Lcom/local/p5home/VehicleBridgeClient;->apiStatus:Ljava/lang/String;

    .line 28
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/local/p5home/VehicleBridgeClient;->navGeneration:J

    iput-wide v3, p0, Lcom/local/p5home/VehicleBridgeClient;->musicGeneration:J

    iput-wide v3, p0, Lcom/local/p5home/VehicleBridgeClient;->ownedNavAt:J

    iput-wide v3, p0, Lcom/local/p5home/VehicleBridgeClient;->lastMediaCheck:J

    iput-wide v3, p0, Lcom/local/p5home/VehicleBridgeClient;->lastApiCheck:J

    .line 29
    const-string v1, ""

    iput-object v1, p0, Lcom/local/p5home/VehicleBridgeClient;->selectedMusicId:Ljava/lang/String;

    iput-object v1, p0, Lcom/local/p5home/VehicleBridgeClient;->selectedMusicPackage:Ljava/lang/String;

    iput-object v1, p0, Lcom/local/p5home/VehicleBridgeClient;->displayGeneration:Ljava/lang/String;

    .line 33
    new-instance v1, Lcom/local/p5home/VehicleBridgeClient$1;

    invoke-direct {v1, p0}, Lcom/local/p5home/VehicleBridgeClient$1;-><init>(Lcom/local/p5home/VehicleBridgeClient;)V

    iput-object v1, p0, Lcom/local/p5home/VehicleBridgeClient;->navigation:Landroid/content/BroadcastReceiver;

    .line 38
    iput-object p1, p0, Lcom/local/p5home/VehicleBridgeClient;->app:Landroid/content/Context;

    new-instance v1, Lcom/local/g3bridge/sdk/G3Bridge;

    invoke-direct {v1, p1}, Lcom/local/g3bridge/sdk/G3Bridge;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/local/p5home/VehicleBridgeClient;->bridge:Lcom/local/g3bridge/sdk/G3Bridge;

    new-instance v1, Landroid/content/ComponentName;

    const-class v3, Lcom/local/p5home/BridgeMusicListener;

    invoke-direct {v1, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/local/p5home/VehicleBridgeClient;->listener:Landroid/content/ComponentName;

    const-wide/16 v3, 0x1e

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/local/p5home/VehicleBridgeClient;)Landroid/content/Context;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/local/p5home/VehicleBridgeClient;->app:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/local/p5home/VehicleBridgeClient;)Ljava/util/concurrent/atomic/AtomicLong;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/local/p5home/VehicleBridgeClient;->navEpoch:Ljava/util/concurrent/atomic/AtomicLong;

    return-object p0
.end method

.method static synthetic access$200(Lcom/local/p5home/VehicleBridgeClient;)Ljava/util/concurrent/atomic/AtomicReference;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/local/p5home/VehicleBridgeClient;->incoming:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method static synthetic access$300(Lcom/local/p5home/VehicleBridgeClient;)V
    .registers 1

    .line 18
    invoke-direct {p0}, Lcom/local/p5home/VehicleBridgeClient;->queueInbound()V

    return-void
.end method

.method static synthetic access$400(Lcom/local/p5home/VehicleBridgeClient;JLandroid/media/session/MediaController;)V
    .registers 4

    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/local/p5home/VehicleBridgeClient;->queueMusic(JLandroid/media/session/MediaController;)V

    return-void
.end method

.method static synthetic access$500(Lcom/local/p5home/VehicleBridgeClient;)Landroid/media/session/MediaController;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/local/p5home/VehicleBridgeClient;->controller:Landroid/media/session/MediaController;

    return-object p0
.end method

.method static synthetic access$600(Lcom/local/p5home/VehicleBridgeClient;)Ljava/util/concurrent/atomic/AtomicLong;
    .registers 1

    .line 18
    iget-object p0, p0, Lcom/local/p5home/VehicleBridgeClient;->musicEpoch:Ljava/util/concurrent/atomic/AtomicLong;

    return-object p0
.end method

.method static synthetic access$700(Lcom/local/p5home/VehicleBridgeClient;Ljava/lang/Runnable;)V
    .registers 2

    .line 18
    invoke-direct {p0, p1}, Lcom/local/p5home/VehicleBridgeClient;->work(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$800(Lcom/local/p5home/VehicleBridgeClient;)V
    .registers 1

    .line 18
    invoke-direct {p0}, Lcom/local/p5home/VehicleBridgeClient;->reconcile()V

    return-void
.end method

.method private checkMedia()V
    .registers 7

    .line 91
    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeClient;->app:Landroid/content/Context;

    invoke-static {v0}, Lcom/local/p5home/VehicleBridgeClient;->musicEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_146

    iget-boolean v0, p0, Lcom/local/p5home/VehicleBridgeClient;->musicOn:Z

    if-nez v0, :cond_e

    goto/16 :goto_146

    .line 92
    :cond_e
    invoke-direct {p0}, Lcom/local/p5home/VehicleBridgeClient;->musicAccess()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-direct {p0}, Lcom/local/p5home/VehicleBridgeClient;->stopMedia()V

    const-string v0, "\u97f3\u4e50\u7b49\u5f85\u201c\u5141\u8bb8\u8bfb\u53d6\u6b63\u5728\u64ad\u653e\u7684\u97f3\u4e50\u201d\u901a\u77e5\u8bbf\u95ee\u6388\u6743"

    iput-object v0, p0, Lcom/local/p5home/VehicleBridgeClient;->musicStatus:Ljava/lang/String;

    return-void

    .line 93
    :cond_1c
    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeClient;->app:Landroid/content/Context;

    invoke-static {v0}, Lcom/local/p5home/ConfigStore;->load(Landroid/content/Context;)Lcom/local/p5home/AppConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/local/p5home/VehicleBridgeClient;->app:Landroid/content/Context;

    iget-object v2, v0, Lcom/local/p5home/AppConfig;->musicProvider:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/local/p5home/MusicRouter;->packageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    iget-object v2, v0, Lcom/local/p5home/AppConfig;->musicProvider:Ljava/lang/String;

    iget-object v3, p0, Lcom/local/p5home/VehicleBridgeClient;->selectedMusicId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    iget-object v2, p0, Lcom/local/p5home/VehicleBridgeClient;->selectedMusicPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_57

    .line 95
    :cond_3c
    iget-object v2, p0, Lcom/local/p5home/VehicleBridgeClient;->musicEpoch:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    iget-object v2, p0, Lcom/local/p5home/VehicleBridgeClient;->musicEpoch:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/local/p5home/VehicleBridgeClient;->musicGeneration:J

    iget-object v4, p0, Lcom/local/p5home/VehicleBridgeClient;->musicSlot:Lcom/local/p5home/VehicleBridgePushPolicy$Slot;

    invoke-virtual {v4, v2, v3}, Lcom/local/p5home/VehicleBridgePushPolicy$Slot;->reset(J)V

    invoke-direct {p0}, Lcom/local/p5home/VehicleBridgeClient;->stopMedia()V

    iget-object v0, v0, Lcom/local/p5home/AppConfig;->musicProvider:Ljava/lang/String;

    iput-object v0, p0, Lcom/local/p5home/VehicleBridgeClient;->selectedMusicId:Ljava/lang/String;

    iput-object v1, p0, Lcom/local/p5home/VehicleBridgeClient;->selectedMusicPackage:Ljava/lang/String;

    .line 97
    :cond_57
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_62

    const-string v0, "\u5f53\u524d\u9ed8\u8ba4\u97f3\u4e50\u5e94\u7528\u672a\u5b89\u88c5\u6216\u5c1a\u672a\u9009\u62e9"

    iput-object v0, p0, Lcom/local/p5home/VehicleBridgeClient;->musicStatus:Ljava/lang/String;

    return-void

    .line 99
    :cond_62
    :try_start_62
    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeClient;->mediaManager:Landroid/media/session/MediaSessionManager;

    if-nez v0, :cond_72

    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeClient;->app:Landroid/content/Context;

    const-string v2, "media_session"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSessionManager;

    iput-object v0, p0, Lcom/local/p5home/VehicleBridgeClient;->mediaManager:Landroid/media/session/MediaSessionManager;

    .line 100
    :cond_72
    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeClient;->mediaManager:Landroid/media/session/MediaSessionManager;

    if-nez v0, :cond_7b

    const-string v0, "\u672c\u673aMediaSession\u670d\u52a1\u4e0d\u53ef\u7528"

    iput-object v0, p0, Lcom/local/p5home/VehicleBridgeClient;->musicStatus:Ljava/lang/String;

    return-void

    .line 101
    :cond_7b
    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeClient;->sessionsChanged:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    if-nez v0, :cond_8f

    new-instance v0, Lcom/local/p5home/VehicleBridgeClient$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/local/p5home/VehicleBridgeClient$$ExternalSyntheticLambda7;-><init>(Lcom/local/p5home/VehicleBridgeClient;)V

    iput-object v0, p0, Lcom/local/p5home/VehicleBridgeClient;->sessionsChanged:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    iget-object v2, p0, Lcom/local/p5home/VehicleBridgeClient;->mediaManager:Landroid/media/session/MediaSessionManager;

    iget-object v3, p0, Lcom/local/p5home/VehicleBridgeClient;->listener:Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/local/p5home/VehicleBridgeClient;->main:Landroid/os/Handler;

    invoke-virtual {v2, v0, v3, v4}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;Landroid/os/Handler;)V

    .line 102
    :cond_8f
    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeClient;->mediaManager:Landroid/media/session/MediaSessionManager;

    iget-object v2, p0, Lcom/local/p5home/VehicleBridgeClient;->listener:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    .line 103
    const/4 v2, 0x0

    if-eqz v0, :cond_c8

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9e
    :goto_9e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/session/MediaController;

    if-eqz v3, :cond_9e

    invoke-virtual {v3}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b7

    goto :goto_9e

    :cond_b7
    if-nez v2, :cond_ba

    move-object v2, v3

    :cond_ba
    invoke-virtual {v3}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v4

    if-eqz v4, :cond_9e

    invoke-virtual {v4}, Landroid/media/session/PlaybackState;->getState()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_9e

    move-object v2, v3

    .line 104
    :cond_c8
    if-nez v2, :cond_e3

    invoke-direct {p0}, Lcom/local/p5home/VehicleBridgeClient;->detachController()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7b49\u5f85\u9ed8\u8ba4\u97f3\u4e50\u5e94\u7528\u7684\u5b9e\u9645MediaSession\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/local/p5home/VehicleBridgeClient;->musicStatus:Ljava/lang/String;

    return-void

    .line 105
    :cond_e3
    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeClient;->controller:Landroid/media/session/MediaController;

    if-eqz v0, :cond_f7

    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeClient;->controller:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v0

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession$Token;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_112

    .line 106
    :cond_f7
    invoke-direct {p0}, Lcom/local/p5home/VehicleBridgeClient;->detachController()V

    iput-object v2, p0, Lcom/local/p5home/VehicleBridgeClient;->controller:Landroid/media/session/MediaController;

    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeClient;->musicEpoch:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 107
    new-instance v3, Lcom/local/p5home/VehicleBridgeClient$2;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/local/p5home/VehicleBridgeClient$2;-><init>(Lcom/local/p5home/VehicleBridgeClient;JLandroid/media/session/MediaController;)V

    iput-object v3, p0, Lcom/local/p5home/VehicleBridgeClient;->mediaCallback:Landroid/media/session/MediaController$Callback;

    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeClient;->controller:Landroid/media/session/MediaController;

    iget-object v1, p0, Lcom/local/p5home/VehicleBridgeClient;->mediaCallback:Landroid/media/session/MediaController$Callback;

    iget-object v2, p0, Lcom/local/p5home/VehicleBridgeClient;->main:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;Landroid/os/Handler;)V

    .line 109
    :cond_112
    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeClient;->musicEpoch:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    iget-object v2, p0, Lcom/local/p5home/VehicleBridgeClient;->controller:Landroid/media/session/MediaController;

    invoke-direct {p0, v0, v1, v2}, Lcom/local/p5home/VehicleBridgeClient;->musicData(JLandroid/media/session/MediaController;)V
    :try_end_11d
    .catch Ljava/lang/SecurityException; {:try_start_62 .. :try_end_11d} :catch_13c
    .catch Ljava/lang/RuntimeException; {:try_start_62 .. :try_end_11d} :catch_11e

    goto :goto_144

    .line 111
    :catch_11e
    move-exception v0

    invoke-direct {p0}, Lcom/local/p5home/VehicleBridgeClient;->stopMedia()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u97f3\u4e50\u4f1a\u8bdd\u8bfb\u53d6\u672a\u5b8c\u6210\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/local/p5home/Ui;->error(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/local/p5home/VehicleBridgeClient;->musicStatus:Ljava/lang/String;

    goto :goto_145

    .line 110
    :catch_13c
    move-exception v0

    invoke-direct {p0}, Lcom/local/p5home/VehicleBridgeClient;->stopMedia()V

    const-string v0, "\u7cfb\u7edf\u672a\u6388\u4e88\u5f53\u524dMediaSession\u8bfb\u53d6\u6743\u9650\uff0c\u8bf7\u68c0\u67e5\u901a\u77e5\u8bbf\u95ee"

    iput-object v0, p0, Lcom/local/p5home/VehicleBridgeClient;->musicStatus:Ljava/lang/String;

    .line 111
    :goto_144
    nop

    .line 112
    :goto_145
    return-void

    .line 91
    :cond_146
    :goto_146
    return-void
.end method

.method private detachController()V
    .registers 4

    .line 125
    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeClient;->controller:Landroid/media/session/MediaController;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeClient;->mediaCallback:Landroid/media/session/MediaController$Callback;

    if-eqz v0, :cond_11

    :try_start_8
    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeClient;->controller:Landroid/media/session/MediaController;

    iget-object v1, p0, Lcom/local/p5home/VehicleBridgeClient;->mediaCallback:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_f} :catch_10

    goto :goto_11

    :catch_10
    move-exception v0

    :cond_11
    :goto_11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/local/p5home/VehicleBridgeClient;->controller:Landroid/media/session/MediaController;

    iput-object v0, p0, Lcom/local/p5home/VehicleBridgeClient;->mediaCallback:Landroid/media/session/MediaController$Callback;

    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeClient;->musicSlot:Lcom/local/p5home/VehicleBridgePushPolicy$Slot;

    iget-object v1, p0, Lcom/local/p5home/VehicleBridgeClient;->musicEpoch:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/local/p5home/VehicleBridgePushPolicy$Slot;->reset(J)V

    return-void
.end method

.method private static fingerprint(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 7

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/TreeSet;

    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    :cond_48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private flush(Z)V
    .registers 13

    .line 128
    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeClient;->navEpoch:Ljava/util/concurrent/atomic/AtomicLong;

    goto :goto_7

    :cond_5
    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeClient;->musicEpoch:Ljava/util/concurrent/atomic/AtomicLong;

    :goto_7
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    if-eqz p1, :cond_15

    invoke-direct {p0, v0, v1}, Lcom/local/p5home/VehicleBridgeClient;->navigationCurrent(J)Z

    move-result v2

    if-nez v2, :cond_29

    goto/16 :goto_1d4

    :cond_15
    iget-object v2, p0, Lcom/local/p5home/VehicleBridgeClient;->app:Landroid/content/Context;

    invoke-static {v2}, Lcom/local/p5home/VehicleBridgeClient;->musicEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1d4

    iget-boolean v2, p0, Lcom/local/p5home/VehicleBridgeClient;->musicOn:Z

    if-eqz v2, :cond_1d4

    iget-wide v2, p0, Lcom/local/p5home/VehicleBridgeClient;->musicGeneration:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_29

    goto/16 :goto_1d4

    .line 129
    :cond_29
    if-eqz p1, :cond_2e

    iget-object v2, p0, Lcom/local/p5home/VehicleBridgeClient;->navSlot:Lcom/local/p5home/VehicleBridgePushPolicy$Slot;

    goto :goto_30

    :cond_2e
    iget-object v2, p0, Lcom/local/p5home/VehicleBridgeClient;->musicSlot:Lcom/local/p5home/VehicleBridgePushPolicy$Slot;

    :goto_30
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/local/p5home/VehicleBridgePushPolicy$Slot;->take(JJ)Lcom/local/p5home/VehicleBridgePushPolicy$Event;

    move-result-object v0

    if-nez v0, :cond_3b

    return-void

    .line 130
    :cond_3b
    if-eqz p1, :cond_40

    const-string v1, "cluster.navigation"

    goto :goto_42

    :cond_40
    const-string v1, "cluster.music"

    .line 131
    :goto_42
    iget-object v3, p0, Lcom/local/p5home/VehicleBridgeClient;->bridge:Lcom/local/g3bridge/sdk/G3Bridge;

    invoke-virtual {v3}, Lcom/local/g3bridge/sdk/G3Bridge;->hello()Lcom/local/g3bridge/sdk/G3Bridge$Response;

    move-result-object v3

    invoke-virtual {v3}, Lcom/local/g3bridge/sdk/G3Bridge$Response;->ok()Z

    move-result v4

    if-eqz v4, :cond_1ce

    invoke-virtual {v3}, Lcom/local/g3bridge/sdk/G3Bridge$Response;->data()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "authorized"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1ce

    invoke-virtual {v3}, Lcom/local/g3bridge/sdk/G3Bridge$Response;->data()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "writeAuthorized"

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_69

    goto/16 :goto_1ce

    .line 132
    :cond_69
    iget-object v3, p0, Lcom/local/p5home/VehicleBridgeClient;->bridge:Lcom/local/g3bridge/sdk/G3Bridge;

    invoke-virtual {v3}, Lcom/local/g3bridge/sdk/G3Bridge;->capabilities()Lcom/local/g3bridge/sdk/G3Bridge$Response;

    move-result-object v3

    invoke-virtual {v3}, Lcom/local/g3bridge/sdk/G3Bridge$Response;->ok()Z

    move-result v4

    if-eqz v4, :cond_80

    invoke-virtual {v3}, Lcom/local/g3bridge/sdk/G3Bridge$Response;->data()Landroid/os/Bundle;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/local/p5home/VehicleBridgeClient;->observeDisplayGeneration(Landroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_80

    return-void

    :cond_80
    invoke-virtual {v3}, Lcom/local/g3bridge/sdk/G3Bridge$Response;->ok()Z

    move-result v4

    if-eqz v4, :cond_1aa

    invoke-virtual {v3, v1}, Lcom/local/g3bridge/sdk/G3Bridge$Response;->supportsCommand(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8e

    goto/16 :goto_1aa

    .line 133
    :cond_8e
    iget-wide v3, v0, Lcom/local/p5home/VehicleBridgePushPolicy$Event;->deadline:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v3, v7

    if-eqz p1, :cond_9e

    iget-wide v7, v0, Lcom/local/p5home/VehicleBridgePushPolicy$Event;->epoch:J

    invoke-direct {p0, v7, v8}, Lcom/local/p5home/VehicleBridgeClient;->navigationCurrent(J)Z

    move-result v5

    goto :goto_b9

    :cond_9e
    iget-object v5, p0, Lcom/local/p5home/VehicleBridgeClient;->app:Landroid/content/Context;

    invoke-static {v5}, Lcom/local/p5home/VehicleBridgeClient;->musicEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_b8

    iget-boolean v5, p0, Lcom/local/p5home/VehicleBridgeClient;->musicOn:Z

    if-eqz v5, :cond_b8

    iget-object v5, p0, Lcom/local/p5home/VehicleBridgeClient;->musicEpoch:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v7

    iget-wide v9, v0, Lcom/local/p5home/VehicleBridgePushPolicy$Event;->epoch:J

    cmp-long v5, v7, v9

    if-nez v5, :cond_b8

    const/4 v5, 0x1

    goto :goto_b9

    :cond_b8
    move v5, v6

    .line 134
    :goto_b9
    if-eqz v5, :cond_1a9

    const-wide/16 v7, 0x1f4

    cmp-long v5, v3, v7

    if-gez v5, :cond_c3

    goto/16 :goto_1a9

    .line 135
    :cond_c3
    if-eqz p1, :cond_de

    iget-object v5, p0, Lcom/local/p5home/VehicleBridgeClient;->app:Landroid/content/Context;

    invoke-static {v5}, Lcom/local/p5home/ConfigStore;->load(Landroid/content/Context;)Lcom/local/p5home/AppConfig;

    move-result-object v5

    iget-object v5, v5, Lcom/local/p5home/AppConfig;->navPackage:Ljava/lang/String;

    const-string v7, "com.autonavi.amapauto"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_dd

    iget-object v5, p0, Lcom/local/p5home/VehicleBridgeClient;->app:Landroid/content/Context;

    invoke-static {v5}, Lcom/local/p5home/Navigator;->verifiedAuto(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_de

    :cond_dd
    return-void

    .line 136
    :cond_de
    if-nez p1, :cond_ff

    iget-object v5, p0, Lcom/local/p5home/VehicleBridgeClient;->controller:Landroid/media/session/MediaController;

    if-eqz v5, :cond_fe

    invoke-direct {p0}, Lcom/local/p5home/VehicleBridgeClient;->musicAccess()Z

    move-result v5

    if-eqz v5, :cond_fe

    iget-object v5, p0, Lcom/local/p5home/VehicleBridgeClient;->selectedMusicPackage:Ljava/lang/String;

    iget-object v7, p0, Lcom/local/p5home/VehicleBridgeClient;->app:Landroid/content/Context;

    invoke-static {v7}, Lcom/local/p5home/ConfigStore;->load(Landroid/content/Context;)Lcom/local/p5home/AppConfig;

    move-result-object v8

    iget-object v8, v8, Lcom/local/p5home/AppConfig;->musicProvider:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/local/p5home/MusicRouter;->packageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ff

    :cond_fe
    return-void

    .line 137
    :cond_ff
    if-eqz p1, :cond_10b

    iget-wide v7, v0, Lcom/local/p5home/VehicleBridgePushPolicy$Event;->epoch:J

    invoke-direct {p0, v7, v8}, Lcom/local/p5home/VehicleBridgeClient;->navigationCurrent(J)Z

    move-result v5

    if-nez v5, :cond_125

    goto/16 :goto_1a8

    :cond_10b
    iget-object v5, p0, Lcom/local/p5home/VehicleBridgeClient;->app:Landroid/content/Context;

    invoke-static {v5}, Lcom/local/p5home/VehicleBridgeClient;->musicEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1a8

    iget-object v5, p0, Lcom/local/p5home/VehicleBridgeClient;->musicEpoch:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v7

    iget-wide v9, v0, Lcom/local/p5home/VehicleBridgePushPolicy$Event;->epoch:J

    cmp-long v5, v7, v9

    if-nez v5, :cond_1a8

    iget-object v5, p0, Lcom/local/p5home/VehicleBridgeClient;->controller:Landroid/media/session/MediaController;

    if-nez v5, :cond_125

    goto/16 :goto_1a8

    .line 138
    :cond_125
    iget-object v5, p0, Lcom/local/p5home/VehicleBridgeClient;->bridge:Lcom/local/g3bridge/sdk/G3Bridge;

    iget-object v7, v0, Lcom/local/p5home/VehicleBridgePushPolicy$Event;->value:Ljava/lang/Object;

    check-cast v7, Landroid/os/Bundle;

    invoke-static {v7}, Lcom/local/g3bridge/sdk/G3Bridge;->payload(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7

    const-wide/16 v8, 0x9c4

    invoke-static {v8, v9, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    invoke-virtual {v5, v1, v7, v3, v4}, Lcom/local/g3bridge/sdk/G3Bridge;->execute(Ljava/lang/String;Landroid/os/Bundle;J)Lcom/local/g3bridge/sdk/G3Bridge$CommandResult;

    move-result-object v1

    .line 139
    invoke-virtual {v1}, Lcom/local/g3bridge/sdk/G3Bridge$CommandResult;->pending()Z

    move-result v3

    if-eqz v3, :cond_17b

    .line 140
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lcom/local/p5home/VehicleBridgePushPolicy$Slot;->submitted(Lcom/local/p5home/VehicleBridgePushPolicy$Event;J)V

    .line 141
    if-eqz p1, :cond_15d

    iget-object v0, v0, Lcom/local/p5home/VehicleBridgePushPolicy$Event;->value:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "active"

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_159

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    goto :goto_15b

    :cond_159
    const-wide/16 v0, -0x1

    :goto_15b
    iput-wide v0, p0, Lcom/local/p5home/VehicleBridgeClient;->ownedNavAt:J

    .line 142
    :cond_15d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5df2\u63d0\u4ea4\u539f\u5382\u4eea\u8868\uff0c\u663e\u793a\u672a\u786e\u8ba4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p1, :cond_16d

    const-string v1, "\uff08\u9ad8\u5fb7\u5e7f\u64ad\u53d1\u9001\u8005\u672a\u8ba4\u8bc1\uff09"

    goto :goto_16f

    :cond_16d
    const-string v1, ""

    :goto_16f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/local/p5home/VehicleBridgeClient;->note(ZLjava/lang/String;)V

    goto :goto_1a7

    .line 143
    :cond_17b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4eea\u8868\u63a8\u9001\u672a\u786e\u8ba4\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/local/g3bridge/sdk/G3Bridge$CommandResult;->code()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " / "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/local/g3bridge/sdk/G3Bridge$CommandResult;->state()Lcom/local/g3bridge/sdk/G3Bridge$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/local/g3bridge/sdk/G3Bridge$State;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/local/p5home/VehicleBridgeClient;->note(ZLjava/lang/String;)V

    .line 144
    :goto_1a7
    return-void

    .line 137
    :cond_1a8
    :goto_1a8
    return-void

    .line 134
    :cond_1a9
    :goto_1a9
    return-void

    .line 132
    :cond_1aa
    :goto_1aa
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5f53\u524d\u4eea\u8868\u80fd\u529b\u672a\u5c31\u7eea\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Lcom/local/g3bridge/sdk/G3Bridge$Response;->ok()Z

    move-result v1

    if-eqz v1, :cond_1be

    const-string v1, "UNSUPPORTED"

    goto :goto_1c2

    :cond_1be
    invoke-virtual {v3}, Lcom/local/g3bridge/sdk/G3Bridge$Response;->code()Ljava/lang/String;

    move-result-object v1

    :goto_1c2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/local/p5home/VehicleBridgeClient;->note(ZLjava/lang/String;)V

    return-void

    .line 131
    :cond_1ce
    :goto_1ce
    const-string v0, "\u7b49\u5f85\u8f66\u8f86\u63a5\u53e3\u8bfb\u5199\u6388\u6743\uff1b\u672a\u63d0\u4ea4\u663e\u793a\u6570\u636e"

    invoke-direct {p0, p1, v0}, Lcom/local/p5home/VehicleBridgeClient;->note(ZLjava/lang/String;)V

    return-void

    .line 128
    :cond_1d4
    :goto_1d4
    return-void
.end method

.method private static integer(Landroid/os/Bundle;Ljava/lang/String;II)I
    .registers 6

    .line 148
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/Number;

    if-eqz p1, :cond_26

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->isFinite(D)Z

    move-result v0

    if-eqz v0, :cond_20

    int-to-double v0, p2

    cmpg-double p2, p0, v0

    if-ltz p2, :cond_20

    int-to-double p2, p3

    cmpl-double p2, p0, p2

    if-gtz p2, :cond_20

    double-to-int p0, p0

    return p0

    :cond_20
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_26
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method static synthetic lambda$new$0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 3

    .line 22
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "G3BridgeDisplay"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method

.method private musicAccess()Z
    .registers 7

    .line 113
    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeClient;->app:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enabled_notification_listeners"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    return v1

    :cond_10
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    move v3, v1

    :goto_18
    if-ge v3, v2, :cond_2d

    aget-object v4, v0, v3

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    iget-object v5, p0, Lcom/local/p5home/VehicleBridgeClient;->listener:Landroid/content/ComponentName;

    invoke-virtual {v5, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    const/4 v0, 0x1

    return v0

    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_2d
    return v1
.end method

.method static musicAccessChanged(Landroid/content/Context;)V
    .registers 2

    .line 51
    invoke-static {p0}, Lcom/local/p5home/VehicleBridgeClient;->owner(Landroid/content/Context;)Lcom/local/p5home/VehicleBridgeClient;

    move-result-object p0

    if-eqz p0, :cond_16

    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeClient;->musicEpoch:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/local/p5home/VehicleBridgeClient$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/local/p5home/VehicleBridgeClient$$ExternalSyntheticLambda3;-><init>(Lcom/local/p5home/VehicleBridgeClient;)V

    invoke-direct {p0, v0}, Lcom/local/p5home/VehicleBridgeClient;->work(Ljava/lang/Runnable;)V

    :cond_16
    return-void
.end method

.method private musicData(JLandroid/media/session/MediaController;)V
    .registers 14

    .line 117
    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeClient;->app:Landroid/content/Context;

    invoke-static {v0}, Lcom/local/p5home/VehicleBridgeClient;->musicEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_ee

    iget-boolean v0, p0, Lcom/local/p5home/VehicleBridgeClient;->musicOn:Z

    if-eqz v0, :cond_ee

    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeClient;->musicEpoch:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_ee

    if-eqz p3, :cond_ee

    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeClient;->controller:Landroid/media/session/MediaController;

    if-ne p3, v0, :cond_ee

    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeClient;->selectedMusicPackage:Ljava/lang/String;

    invoke-virtual {p3}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    goto/16 :goto_ee

    .line 118
    :cond_2a
    invoke-virtual {p3}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    invoke-virtual {p3}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object p3

    .line 119
    if-eqz v0, :cond_e9

    if-eqz p3, :cond_e9

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/local/p5home/VehicleBridgePushPolicy;->stablePlayback(I)Z

    move-result v1

    if-nez v1, :cond_42

    goto/16 :goto_e9

    .line 120
    :cond_42
    const-string v1, "android.media.metadata.TITLE"

    invoke-virtual {p3, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.media.metadata.ARTIST"

    invoke-virtual {p3, v2}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_56

    const-string v2, "android.media.metadata.ALBUM_ARTIST"

    invoke-virtual {p3, v2}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_56
    if-nez v2, :cond_5a

    const-string v2, ""

    .line 121
    :cond_5a
    if-eqz v1, :cond_e4

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_e4

    invoke-static {v1}, Lcom/local/p5home/VehicleBridgePushPolicy;->text(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_e4

    invoke-static {v2}, Lcom/local/p5home/VehicleBridgePushPolicy;->text(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_73

    goto :goto_e4

    .line 122
    :cond_73
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string p3, "title"

    invoke-virtual {v7, p3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "artist"

    invoke-virtual {v7, p3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result p3

    const/4 v0, 0x3

    const/4 v2, 0x0

    if-ne p3, v0, :cond_8c

    const/4 p3, 0x1

    goto :goto_8d

    :cond_8c
    move p3, v2

    :goto_8d
    const-string v0, "playing"

    invoke-virtual {v7, v0, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p3, "durationMs"

    invoke-virtual {v7, p3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p3, "positionMs"

    invoke-virtual {v7, p3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p3, "oemSource"

    invoke-virtual {v7, p3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 123
    iget-object v3, p0, Lcom/local/p5home/VehicleBridgeClient;->musicSlot:Lcom/local/p5home/VehicleBridgePushPolicy$Slot;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeClient;->selectedMusicPackage:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "\n"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-static {v7}, Lcom/local/p5home/VehicleBridgeClient;->fingerprint(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    move-wide v4, p1

    invoke-virtual/range {v3 .. v9}, Lcom/local/p5home/VehicleBridgePushPolicy$Slot;->offer(JLjava/lang/String;Ljava/lang/Object;J)Z

    move-result p1

    if-eqz p1, :cond_e0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u6536\u5230\u9ed8\u8ba4\u97f3\u4e50\u5e94\u7528\u5b9e\u9645\u5143\u6570\u636e\uff1a"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/local/p5home/VehicleBridgeClient;->musicStatus:Ljava/lang/String;

    :cond_e0
    invoke-direct {p0, v2}, Lcom/local/p5home/VehicleBridgeClient;->flush(Z)V

    .line 124
    return-void

    .line 121
    :cond_e4
    :goto_e4
    const-string p1, "\u9ed8\u8ba4\u97f3\u4e50\u4f1a\u8bdd\u7f3a\u5c11\u53ef\u7528\u66f2\u540d\uff0c\u672a\u4f7f\u7528\u70b9\u6b4c\u6587\u672c\u4ee3\u66ff"

    iput-object p1, p0, Lcom/local/p5home/VehicleBridgeClient;->musicStatus:Ljava/lang/String;

    return-void

    .line 119
    :cond_e9
    :goto_e9
    const-string p1, "\u9ed8\u8ba4\u97f3\u4e50\u4f1a\u8bdd\u5c1a\u65e0\u7a33\u5b9a\u64ad\u653e\u72b6\u6001\u6216\u5143\u6570\u636e"

    iput-object p1, p0, Lcom/local/p5home/VehicleBridgeClient;->musicStatus:Ljava/lang/String;

    return-void

    .line 117
    :cond_ee
    :goto_ee
    return-void
.end method

.method static musicEnabled(Landroid/content/Context;)Z
    .registers 3

    .line 41
    invoke-static {p0}, Lcom/local/p5home/VehicleBridgeClient;->preferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "music"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method static navEnabled(Landroid/content/Context;)Z
    .registers 3

    .line 40
    invoke-static {p0}, Lcom/local/p5home/VehicleBridgeClient;->preferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "nav"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private navigationCurrent(J)Z
    .registers 5

    .line 71
    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeClient;->app:Landroid/content/Context;

    invoke-static {v0}, Lcom/local/p5home/VehicleBridgeClient;->navEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-boolean v0, p0, Lcom/local/p5home/VehicleBridgeClient;->navOn:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeClient;->navEpoch:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_1e

    iget-wide v0, p0, Lcom/local/p5home/VehicleBridgeClient;->navGeneration:J

    cmp-long p1, v0, p1

    if-nez p1, :cond_1e

    const/4 p1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p1, 0x0

    :goto_1f
    return p1
.end method

.method private navigationData(Lcom/local/p5home/VehicleBridgeClient$Inbound;)V
    .registers 18

    .line 73
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/local/p5home/VehicleBridgeClient$Inbound;->epoch:J

    invoke-direct {v1, v2, v3}, Lcom/local/p5home/VehicleBridgeClient;->navigationCurrent(J)Z

    move-result v2

    if-eqz v2, :cond_149

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/local/p5home/VehicleBridgeClient$Inbound;->time:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x9c4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1b

    goto/16 :goto_149

    .line 74
    :cond_1b
    iget-object v2, v1, Lcom/local/p5home/VehicleBridgeClient;->app:Landroid/content/Context;

    invoke-static {v2}, Lcom/local/p5home/ConfigStore;->load(Landroid/content/Context;)Lcom/local/p5home/AppConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/local/p5home/AppConfig;->navPackage:Ljava/lang/String;

    const-string v3, "com.autonavi.amapauto"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_139

    iget-object v2, v1, Lcom/local/p5home/VehicleBridgeClient;->app:Landroid/content/Context;

    invoke-static {v2}, Lcom/local/p5home/Navigator;->verifiedAuto(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_35

    goto/16 :goto_139

    .line 76
    :cond_35
    :try_start_35
    iget-object v2, v0, Lcom/local/p5home/VehicleBridgeClient$Inbound;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_3f

    const/4 v3, 0x0

    goto :goto_49

    :cond_3f
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "KEY_TYPE"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    :goto_49
    instance-of v4, v3, Ljava/lang/Integer;

    if-nez v4, :cond_4e

    return-void

    .line 77
    :cond_4e
    move-object v4, v3

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_55
    .catch Ljava/lang/RuntimeException; {:try_start_35 .. :try_end_55} :catch_133

    const/16 v5, 0x2723

    const-string v6, "active"

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ne v4, v5, :cond_a4

    :try_start_5d
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "EXTRA_STATE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_a3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_a3

    .line 78
    iget-object v2, v1, Lcom/local/p5home/VehicleBridgeClient;->navSlot:Lcom/local/p5home/VehicleBridgePushPolicy$Slot;

    iget-wide v3, v0, Lcom/local/p5home/VehicleBridgeClient$Inbound;->epoch:J

    invoke-virtual {v2, v3, v4}, Lcom/local/p5home/VehicleBridgePushPolicy$Slot;->reset(J)V

    .line 79
    iget-wide v2, v1, Lcom/local/p5home/VehicleBridgeClient;->ownedNavAt:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/local/p5home/VehicleBridgePushPolicy;->owns(JJ)Z

    move-result v2

    if-nez v2, :cond_8d

    const-string v0, "\u6536\u5230\u5bfc\u822a\u9000\u51fa\u5e7f\u64ad\uff0c\u4f46\u6ca1\u6709\u8fd1\u671f\u672c\u5ba2\u6237\u7aef\u63a8\u9001\uff0c\u4e0d\u6e05\u9664\u4eea\u8868"

    iput-object v0, v1, Lcom/local/p5home/VehicleBridgeClient;->navStatus:Ljava/lang/String;

    return-void

    .line 80
    :cond_8d
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v12, v6, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v8, v1, Lcom/local/p5home/VehicleBridgeClient;->navSlot:Lcom/local/p5home/VehicleBridgePushPolicy$Slot;

    iget-wide v9, v0, Lcom/local/p5home/VehicleBridgeClient$Inbound;->epoch:J

    const-string v11, "clear"

    iget-wide v13, v0, Lcom/local/p5home/VehicleBridgeClient$Inbound;->time:J

    invoke-virtual/range {v8 .. v14}, Lcom/local/p5home/VehicleBridgePushPolicy$Slot;->offer(JLjava/lang/String;Ljava/lang/Object;J)Z

    invoke-direct {v1, v7}, Lcom/local/p5home/VehicleBridgeClient;->flush(Z)V

    .line 81
    :cond_a3
    return-void

    .line 82
    :cond_a4
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x2711

    if-eq v3, v4, :cond_af

    return-void

    .line 83
    :cond_af
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "CUR_ROAD_NAME"

    invoke-static {v2, v3}, Lcom/local/p5home/VehicleBridgeClient;->string(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "NEXT_ROAD_NAME"

    invoke-static {v2, v4}, Lcom/local/p5home/VehicleBridgeClient;->string(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ICON"

    const/16 v9, 0x3e8

    invoke-static {v2, v5, v8, v9}, Lcom/local/p5home/VehicleBridgeClient;->integer(Landroid/os/Bundle;Ljava/lang/String;II)I

    move-result v5

    invoke-static {v5}, Lcom/local/p5home/VehicleBridgePushPolicy;->icmIcon(I)I

    move-result v5

    .line 84
    const-string v9, "ROUTE_REMAIN_DIS"

    const v10, 0x2faf080

    invoke-static {v2, v9, v8, v10}, Lcom/local/p5home/VehicleBridgeClient;->integer(Landroid/os/Bundle;Ljava/lang/String;II)I

    move-result v15

    const-string v9, "ROUTE_REMAIN_TIME"

    const v11, 0x93a80

    invoke-static {v2, v9, v8, v11}, Lcom/local/p5home/VehicleBridgeClient;->integer(Landroid/os/Bundle;Ljava/lang/String;II)I

    move-result v14

    const-string v9, "SEG_REMAIN_DIS"

    invoke-static {v2, v9, v8, v10}, Lcom/local/p5home/VehicleBridgeClient;->integer(Landroid/os/Bundle;Ljava/lang/String;II)I

    move-result v2

    .line 85
    move-object v9, v3

    move-object v10, v4

    move v11, v15

    move v12, v14

    move v13, v2

    move v8, v14

    move v14, v5

    invoke-static/range {v9 .. v14}, Lcom/local/p5home/VehicleBridgePushPolicy;->navigation(Ljava/lang/String;Ljava/lang/String;IIII)Z

    move-result v9

    if-nez v9, :cond_f5

    const-string v0, "\u5bfc\u822a\u5b57\u6bb5\u6216\u56fe\u6807\u672a\u9002\u914d\uff0c\u672a\u731c\u6d4b\u53d1\u9001\uff08\u5e7f\u64ad\u53d1\u9001\u8005\u672a\u8ba4\u8bc1\uff09"

    iput-object v0, v1, Lcom/local/p5home/VehicleBridgeClient;->navStatus:Ljava/lang/String;

    return-void

    .line 86
    :cond_f5
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v12, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v6, "currentRoad"

    invoke-virtual {v12, v6, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "nextRoad"

    invoke-virtual {v12, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "remainingMeters"

    invoke-virtual {v12, v3, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "remainingSeconds"

    invoke-virtual {v12, v3, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "turnMeters"

    invoke-virtual {v12, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "icmIcon"

    invoke-virtual {v12, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 87
    iget-object v8, v1, Lcom/local/p5home/VehicleBridgeClient;->navSlot:Lcom/local/p5home/VehicleBridgePushPolicy$Slot;

    iget-wide v9, v0, Lcom/local/p5home/VehicleBridgeClient$Inbound;->epoch:J

    invoke-static {v12}, Lcom/local/p5home/VehicleBridgeClient;->fingerprint(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v11

    iget-wide v13, v0, Lcom/local/p5home/VehicleBridgeClient$Inbound;->time:J

    invoke-virtual/range {v8 .. v14}, Lcom/local/p5home/VehicleBridgePushPolicy$Slot;->offer(JLjava/lang/String;Ljava/lang/Object;J)Z

    move-result v0

    if-eqz v0, :cond_12f

    const-string v0, "\u6536\u5230\u9ad8\u5fb7\u6807\u51c6\u5bfc\u822a\u6570\u636e\uff08\u53d1\u9001\u8005\u672a\u8ba4\u8bc1\uff0c\u56fe\u6807\u663e\u793a\u5f85\u5b9e\u8f66\u9a8c\u8bc1\uff09"

    iput-object v0, v1, Lcom/local/p5home/VehicleBridgeClient;->navStatus:Ljava/lang/String;

    :cond_12f
    invoke-direct {v1, v7}, Lcom/local/p5home/VehicleBridgeClient;->flush(Z)V
    :try_end_132
    .catch Ljava/lang/RuntimeException; {:try_start_5d .. :try_end_132} :catch_133

    .line 88
    goto :goto_138

    :catch_133
    move-exception v0

    const-string v0, "\u9ad8\u5fb7\u5e7f\u64ad\u5b57\u6bb5\u7f3a\u5931\u6216\u7c7b\u578b\u65e0\u6548\uff0c\u672a\u53d1\u9001"

    iput-object v0, v1, Lcom/local/p5home/VehicleBridgeClient;->navStatus:Ljava/lang/String;

    .line 89
    :goto_138
    return-void

    .line 74
    :cond_139
    :goto_139
    iget-object v2, v1, Lcom/local/p5home/VehicleBridgeClient;->navSlot:Lcom/local/p5home/VehicleBridgePushPolicy$Slot;

    iget-wide v3, v0, Lcom/local/p5home/VehicleBridgeClient$Inbound;->epoch:J

    invoke-virtual {v2, v3, v4}, Lcom/local/p5home/VehicleBridgePushPolicy$Slot;->reset(J)V

    const-wide/16 v2, -0x1

    iput-wide v2, v1, Lcom/local/p5home/VehicleBridgeClient;->ownedNavAt:J

    const-string v0, "\u5bfc\u822a\u7b49\u5f85\u5df2\u9a8c\u8bc1\u4e14\u88ab\u8bbe\u4e3a\u9ed8\u8ba4\u7684\u9ad8\u5fb7\u8f66\u673a"

    iput-object v0, v1, Lcom/local/p5home/VehicleBridgeClient;->navStatus:Ljava/lang/String;

    return-void

    .line 73
    :cond_149
    :goto_149
    return-void
.end method

.method private note(ZLjava/lang/String;)V
    .registers 3

    .line 146
    if-eqz p1, :cond_5

    iput-object p2, p0, Lcom/local/p5home/VehicleBridgeClient;->navStatus:Ljava/lang/String;

    goto :goto_7

    :cond_5
    iput-object p2, p0, Lcom/local/p5home/VehicleBridgeClient;->musicStatus:Ljava/lang/String;

    :goto_7
    return-void
.end method

.method private observeDisplayGeneration(Landroid/os/Bundle;)Z
    .registers 4

    .line 145
    const-string v0, "displayGeneration"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_5a

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_5a

    :cond_12
    iget-object v1, p0, Lcom/local/p5home/VehicleBridgeClient;->displayGeneration:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1d

    iput-object p1, p0, Lcom/local/p5home/VehicleBridgeClient;->displayGeneration:Ljava/lang/String;

    return v0

    :cond_1d
    iget-object v1, p0, Lcom/local/p5home/VehicleBridgeClient;->displayGeneration:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    return v0

    :cond_26
    iput-object p1, p0, Lcom/local/p5home/VehicleBridgeClient;->displayGeneration:Ljava/lang/String;

    iget-object p1, p0, Lcom/local/p5home/VehicleBridgeClient;->navSlot:Lcom/local/p5home/VehicleBridgePushPolicy$Slot;

    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeClient;->navEpoch:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/local/p5home/VehicleBridgePushPolicy$Slot;->reset(J)V

    iget-object p1, p0, Lcom/local/p5home/VehicleBridgeClient;->musicSlot:Lcom/local/p5home/VehicleBridgePushPolicy$Slot;

    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeClient;->musicEpoch:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/local/p5home/VehicleBridgePushPolicy$Slot;->reset(J)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/local/p5home/VehicleBridgeClient;->ownedNavAt:J

    iget-boolean p1, p0, Lcom/local/p5home/VehicleBridgeClient;->navOn:Z

    if-eqz p1, :cond_49

    const-string p1, "\u8f66\u8f86\u63a5\u53e3\u5df2\u6362\u4ee3\uff0c\u7b49\u5f85\u65b0\u7684\u771f\u5b9e\u5bfc\u822a\u6765\u6e90"

    goto :goto_4b

    :cond_49
    const-string p1, "\u5bfc\u822a\u81ea\u52a8\u63a8\u9001\u5173\u95ed"

    :goto_4b
    iput-object p1, p0, Lcom/local/p5home/VehicleBridgeClient;->navStatus:Ljava/lang/String;

    iget-boolean p1, p0, Lcom/local/p5home/VehicleBridgeClient;->musicOn:Z

    if-eqz p1, :cond_54

    const-string p1, "\u8f66\u8f86\u63a5\u53e3\u5df2\u6362\u4ee3\uff0c\u7b49\u5f85\u65b0\u7684\u5b9e\u9645\u97f3\u4e50\u4f1a\u8bdd\u89c2\u6d4b"

    goto :goto_56

    :cond_54
    const-string p1, "\u97f3\u4e50\u81ea\u52a8\u63a8\u9001\u5173\u95ed"

    :goto_56
    iput-object p1, p0, Lcom/local/p5home/VehicleBridgeClient;->musicStatus:Ljava/lang/String;

    const/4 p1, 0x1

    return p1

    :cond_5a
    :goto_5a
    return v0
.end method

.method static openMusicAccess(Landroid/app/Activity;)V
    .registers 3

    .line 50
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static declared-synchronized owner(Landroid/content/Context;)Lcom/local/p5home/VehicleBridgeClient;
    .registers 4

    const-class v0, Lcom/local/p5home/VehicleBridgeClient;

    monitor-enter v0

    .line 44
    if-eqz p0, :cond_38

    :try_start_5
    const-string v1, "com.local.p5home"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-eq v1, v2, :cond_1e

    goto :goto_38

    .line 45
    :cond_1e
    sget-object v1, Lcom/local/p5home/VehicleBridgeClient;->instance:Lcom/local/p5home/VehicleBridgeClient;

    if-nez v1, :cond_31

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/local/p5home/VehicleBridgeClient;

    if-nez v1, :cond_2b

    goto :goto_2c

    :cond_2b
    move-object p0, v1

    :goto_2c
    invoke-direct {v2, p0}, Lcom/local/p5home/VehicleBridgeClient;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/local/p5home/VehicleBridgeClient;->instance:Lcom/local/p5home/VehicleBridgeClient;

    :cond_31
    sget-object p0, Lcom/local/p5home/VehicleBridgeClient;->instance:Lcom/local/p5home/VehicleBridgeClient;
    :try_end_33
    .catchall {:try_start_5 .. :try_end_33} :catchall_35

    monitor-exit v0

    return-object p0

    .line 43
    :catchall_35
    move-exception p0

    monitor-exit v0

    throw p0

    .line 44
    :cond_38
    :goto_38
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0
.end method

.method private static preferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    .line 39
    const-string v0, "vehicle-bridge-client"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method private queueInbound()V
    .registers 4

    .line 70
    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeClient;->inboundQueued:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    new-instance v0, Lcom/local/p5home/VehicleBridgeClient$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/local/p5home/VehicleBridgeClient$$ExternalSyntheticLambda6;-><init>(Lcom/local/p5home/VehicleBridgeClient;)V

    invoke-direct {p0, v0}, Lcom/local/p5home/VehicleBridgeClient;->work(Ljava/lang/Runnable;)V

    return-void
.end method

.method private queueMusic()V
    .registers 4

    .line 114
    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeClient;->musicQueued:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    new-instance v0, Lcom/local/p5home/VehicleBridgeClient$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/local/p5home/VehicleBridgeClient$$ExternalSyntheticLambda5;-><init>(Lcom/local/p5home/VehicleBridgeClient;)V

    invoke-direct {p0, v0}, Lcom/local/p5home/VehicleBridgeClient;->work(Ljava/lang/Runnable;)V

    return-void
.end method

.method private queueMusic(JLandroid/media/session/MediaController;)V
    .registers 7

    .line 115
    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeClient;->app:Landroid/content/Context;

    invoke-static {v0}, Lcom/local/p5home/VehicleBridgeClient;->musicEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeClient;->musicEpoch:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_13

    goto :goto_26

    :cond_13
    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeClient;->musicQueued:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_1e

    return-void

    :cond_1e
    new-instance v0, Lcom/local/p5home/VehicleBridgeClient$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/local/p5home/VehicleBridgeClient$$ExternalSyntheticLambda0;-><init>(Lcom/local/p5home/VehicleBridgeClient;JLandroid/media/session/MediaController;)V

    invoke-direct {p0, v0}, Lcom/local/p5home/VehicleBridgeClient;->work(Ljava/lang/Runnable;)V

    :cond_26
    :goto_26
    return-void
.end method

.method private reconcile()V
    .registers 11

    .line 54
    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeClient;->app:Landroid/content/Context;

    invoke-static {v0}, Lcom/local/p5home/VehicleBridgeClient;->navEnabled(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/local/p5home/VehicleBridgeClient;->app:Landroid/content/Context;

    invoke-static {v1}, Lcom/local/p5home/VehicleBridgeClient;->musicEnabled(Landroid/content/Context;)Z

    move-result v1

    iget-object v2, p0, Lcom/local/p5home/VehicleBridgeClient;->navEpoch:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    iget-object v4, p0, Lcom/local/p5home/VehicleBridgeClient;->musicEpoch:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    .line 55
    iget-wide v6, p0, Lcom/local/p5home/VehicleBridgeClient;->navGeneration:J

    cmp-long v6, v2, v6

    const/4 v7, 0x0

    const-wide/16 v8, -0x1

    if-nez v6, :cond_25

    iget-boolean v6, p0, Lcom/local/p5home/VehicleBridgeClient;->navOn:Z

    if-eq v0, v6, :cond_47

    :cond_25
    iput-wide v2, p0, Lcom/local/p5home/VehicleBridgeClient;->navGeneration:J

    iput-boolean v0, p0, Lcom/local/p5home/VehicleBridgeClient;->navOn:Z

    iget-object v6, p0, Lcom/local/p5home/VehicleBridgeClient;->navSlot:Lcom/local/p5home/VehicleBridgePushPolicy$Slot;

    invoke-virtual {v6, v2, v3}, Lcom/local/p5home/VehicleBridgePushPolicy$Slot;->reset(J)V

    iput-wide v8, p0, Lcom/local/p5home/VehicleBridgeClient;->ownedNavAt:J

    iget-object v2, p0, Lcom/local/p5home/VehicleBridgeClient;->incoming:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v7}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    if-eqz v0, :cond_3a

    const-string v2, "\u5bfc\u822a\u7b49\u5f85\u9ad8\u5fb7\u6807\u51c6\u5e7f\u64ad\uff08\u53d1\u9001\u8005\u672a\u8ba4\u8bc1\uff0c\u4ec5\u7528\u4e8e\u4eea\u8868\u663e\u793a\uff09"

    goto :goto_3c

    :cond_3a
    const-string v2, "\u5bfc\u822a\u81ea\u52a8\u63a8\u9001\u5173\u95ed"

    :goto_3c
    iput-object v2, p0, Lcom/local/p5home/VehicleBridgeClient;->navStatus:Ljava/lang/String;

    if-nez v0, :cond_44

    invoke-direct {p0}, Lcom/local/p5home/VehicleBridgeClient;->unregisterNavigation()V

    goto :goto_47

    :cond_44
    invoke-direct {p0}, Lcom/local/p5home/VehicleBridgeClient;->registerNavigation()V

    .line 56
    :cond_47
    :goto_47
    iget-wide v2, p0, Lcom/local/p5home/VehicleBridgeClient;->musicGeneration:J

    cmp-long v2, v4, v2

    if-nez v2, :cond_51

    iget-boolean v2, p0, Lcom/local/p5home/VehicleBridgeClient;->musicOn:Z

    if-eq v1, v2, :cond_6e

    :cond_51
    iput-wide v4, p0, Lcom/local/p5home/VehicleBridgeClient;->musicGeneration:J

    iput-boolean v1, p0, Lcom/local/p5home/VehicleBridgeClient;->musicOn:Z

    iget-object v2, p0, Lcom/local/p5home/VehicleBridgeClient;->musicSlot:Lcom/local/p5home/VehicleBridgePushPolicy$Slot;

    invoke-virtual {v2, v4, v5}, Lcom/local/p5home/VehicleBridgePushPolicy$Slot;->reset(J)V

    invoke-direct {p0}, Lcom/local/p5home/VehicleBridgeClient;->stopMedia()V

    const-string v2, ""

    iput-object v2, p0, Lcom/local/p5home/VehicleBridgeClient;->selectedMusicId:Ljava/lang/String;

    iput-object v2, p0, Lcom/local/p5home/VehicleBridgeClient;->selectedMusicPackage:Ljava/lang/String;

    iput-wide v8, p0, Lcom/local/p5home/VehicleBridgeClient;->lastMediaCheck:J

    if-eqz v1, :cond_6a

    const-string v2, "\u97f3\u4e50\u7b49\u5f85\u901a\u77e5\u8bbf\u95ee\u53ca\u5b9e\u9645\u64ad\u653e\u4f1a\u8bdd"

    goto :goto_6c

    :cond_6a
    const-string v2, "\u97f3\u4e50\u81ea\u52a8\u63a8\u9001\u5173\u95ed"

    :goto_6c
    iput-object v2, p0, Lcom/local/p5home/VehicleBridgeClient;->musicStatus:Ljava/lang/String;

    .line 57
    :cond_6e
    if-nez v0, :cond_7e

    if-eqz v1, :cond_73

    goto :goto_7e

    .line 58
    :cond_73
    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeClient;->ticker:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_9b

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    iput-object v7, p0, Lcom/local/p5home/VehicleBridgeClient;->ticker:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_9b

    .line 57
    :cond_7e
    :goto_7e
    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeClient;->ticker:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_88

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_9b

    :cond_88
    iget-object v2, p0, Lcom/local/p5home/VehicleBridgeClient;->worker:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v3, Lcom/local/p5home/VehicleBridgeClient$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/local/p5home/VehicleBridgeClient$$ExternalSyntheticLambda1;-><init>(Lcom/local/p5home/VehicleBridgeClient;)V

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x1f4

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v2 .. v8}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/local/p5home/VehicleBridgeClient;->ticker:Ljava/util/concurrent/ScheduledFuture;

    .line 59
    :cond_9b
    :goto_9b
    if-eqz v1, :cond_a0

    invoke-direct {p0}, Lcom/local/p5home/VehicleBridgeClient;->checkMedia()V

    .line 60
    :cond_a0
    return-void
.end method

.method private registerNavigation()V
    .registers 5

    .line 68
    iget-boolean v0, p0, Lcom/local/p5home/VehicleBridgeClient;->navRegistered:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeClient;->app:Landroid/content/Context;

    iget-object v1, p0, Lcom/local/p5home/VehicleBridgeClient;->navigation:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "AUTONAVI_STANDARD_BROADCAST_SEND"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/local/p5home/VehicleBridgeClient;->navRegistered:Z
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_16} :catch_17

    goto :goto_31

    :catch_17
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u9ad8\u5fb7\u5e7f\u64ad\u8ba2\u9605\u5931\u8d25\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/local/p5home/Ui;->error(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/local/p5home/VehicleBridgeClient;->navStatus:Ljava/lang/String;

    :goto_31
    return-void
.end method

.method static setMusicEnabled(Landroid/content/Context;Z)V
    .registers 4

    .line 48
    invoke-static {p0}, Lcom/local/p5home/VehicleBridgeClient;->preferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "music"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {p0}, Lcom/local/p5home/VehicleBridgeClient;->owner(Landroid/content/Context;)Lcom/local/p5home/VehicleBridgeClient;

    move-result-object p0

    if-eqz p0, :cond_27

    iget-object p1, p0, Lcom/local/p5home/VehicleBridgeClient;->musicEpoch:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/local/p5home/VehicleBridgeClient$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/local/p5home/VehicleBridgeClient$$ExternalSyntheticLambda3;-><init>(Lcom/local/p5home/VehicleBridgeClient;)V

    invoke-direct {p0, p1}, Lcom/local/p5home/VehicleBridgeClient;->work(Ljava/lang/Runnable;)V

    :cond_27
    return-void
.end method

.method static setNavEnabled(Landroid/content/Context;Z)V
    .registers 4

    .line 47
    invoke-static {p0}, Lcom/local/p5home/VehicleBridgeClient;->preferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "nav"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {p0}, Lcom/local/p5home/VehicleBridgeClient;->owner(Landroid/content/Context;)Lcom/local/p5home/VehicleBridgeClient;

    move-result-object p0

    if-eqz p0, :cond_2d

    iget-object p1, p0, Lcom/local/p5home/VehicleBridgeClient;->navEpoch:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    iget-object p1, p0, Lcom/local/p5home/VehicleBridgeClient;->incoming:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/local/p5home/VehicleBridgeClient$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/local/p5home/VehicleBridgeClient$$ExternalSyntheticLambda3;-><init>(Lcom/local/p5home/VehicleBridgeClient;)V

    invoke-direct {p0, p1}, Lcom/local/p5home/VehicleBridgeClient;->work(Ljava/lang/Runnable;)V

    :cond_2d
    return-void
.end method

.method static start(Landroid/content/Context;)V
    .registers 2

    .line 42
    invoke-static {p0}, Lcom/local/p5home/VehicleBridgeClient;->owner(Landroid/content/Context;)Lcom/local/p5home/VehicleBridgeClient;

    move-result-object p0

    if-eqz p0, :cond_11

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/local/p5home/VehicleBridgeClient$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/local/p5home/VehicleBridgeClient$$ExternalSyntheticLambda3;-><init>(Lcom/local/p5home/VehicleBridgeClient;)V

    invoke-direct {p0, v0}, Lcom/local/p5home/VehicleBridgeClient;->work(Ljava/lang/Runnable;)V

    :cond_11
    return-void
.end method

.method static status(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 49
    const-class v0, Lcom/local/p5home/VehicleBridgeClient;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/local/p5home/VehicleBridgeClient;->instance:Lcom/local/p5home/VehicleBridgeClient;

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_42

    if-nez v1, :cond_b

    const-string p0, "\u81ea\u52a8\u63a8\u9001\u5c1a\u672a\u542f\u52a8"

    goto :goto_41

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/local/p5home/VehicleBridgeClient;->navEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_19

    const-string p0, "\u5bfc\u822a\u6765\u6e90\uff1a\u672a\u8ba4\u8bc1\u7684\u9ad8\u5fb7\u6807\u51c6\u5e7f\u64ad\uff0c\u4ec5\u7528\u4e8e\u4eea\u8868\u663e\u793a\n"

    goto :goto_1b

    :cond_19
    const-string p0, ""

    :goto_1b
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object v0, v1, Lcom/local/p5home/VehicleBridgeClient;->navStatus:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object v0, v1, Lcom/local/p5home/VehicleBridgeClient;->musicStatus:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object v0, v1, Lcom/local/p5home/VehicleBridgeClient;->apiStatus:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_41
    return-object p0

    :catchall_42
    move-exception p0

    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw p0
.end method

.method private stopMedia()V
    .registers 3

    .line 126
    invoke-direct {p0}, Lcom/local/p5home/VehicleBridgeClient;->detachController()V

    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeClient;->mediaManager:Landroid/media/session/MediaSessionManager;

    if-eqz v0, :cond_10

    iget-object v1, p0, Lcom/local/p5home/VehicleBridgeClient;->sessionsChanged:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    if-eqz v1, :cond_10

    :try_start_b
    invoke-virtual {v0, v1}, Landroid/media/session/MediaSessionManager;->removeOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_e} :catch_f

    goto :goto_10

    :catch_f
    move-exception v0

    :cond_10
    :goto_10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/local/p5home/VehicleBridgeClient;->sessionsChanged:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    iput-object v0, p0, Lcom/local/p5home/VehicleBridgeClient;->mediaManager:Landroid/media/session/MediaSessionManager;

    return-void
.end method

.method private static string(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 149
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_b

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private tick()V
    .registers 10

    .line 62
    iget-boolean v0, p0, Lcom/local/p5home/VehicleBridgeClient;->navOn:Z

    iget-object v1, p0, Lcom/local/p5home/VehicleBridgeClient;->app:Landroid/content/Context;

    invoke-static {v1}, Lcom/local/p5home/VehicleBridgeClient;->navEnabled(Landroid/content/Context;)Z

    move-result v1

    if-ne v0, v1, :cond_d5

    iget-boolean v0, p0, Lcom/local/p5home/VehicleBridgeClient;->musicOn:Z

    iget-object v1, p0, Lcom/local/p5home/VehicleBridgeClient;->app:Landroid/content/Context;

    invoke-static {v1}, Lcom/local/p5home/VehicleBridgeClient;->musicEnabled(Landroid/content/Context;)Z

    move-result v1

    if-ne v0, v1, :cond_d5

    iget-wide v0, p0, Lcom/local/p5home/VehicleBridgeClient;->navGeneration:J

    iget-object v2, p0, Lcom/local/p5home/VehicleBridgeClient;->navEpoch:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_d5

    iget-wide v0, p0, Lcom/local/p5home/VehicleBridgeClient;->musicGeneration:J

    iget-object v2, p0, Lcom/local/p5home/VehicleBridgeClient;->musicEpoch:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2e

    goto/16 :goto_d5

    .line 63
    :cond_2e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 64
    iget-boolean v2, p0, Lcom/local/p5home/VehicleBridgeClient;->musicOn:Z

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_4b

    iget-wide v5, p0, Lcom/local/p5home/VehicleBridgeClient;->lastMediaCheck:J

    cmp-long v2, v5, v3

    if-ltz v2, :cond_46

    sub-long v5, v0, v5

    const-wide/16 v7, 0x7d0

    cmp-long v2, v5, v7

    if-ltz v2, :cond_4b

    :cond_46
    iput-wide v0, p0, Lcom/local/p5home/VehicleBridgeClient;->lastMediaCheck:J

    invoke-direct {p0}, Lcom/local/p5home/VehicleBridgeClient;->checkMedia()V

    .line 65
    :cond_4b
    iget-wide v5, p0, Lcom/local/p5home/VehicleBridgeClient;->lastApiCheck:J

    cmp-long v2, v5, v3

    const/4 v3, 0x0

    if-ltz v2, :cond_5a

    sub-long v4, v0, v5

    const-wide/16 v6, 0x1388

    cmp-long v2, v4, v6

    if-ltz v2, :cond_cd

    :cond_5a
    iput-wide v0, p0, Lcom/local/p5home/VehicleBridgeClient;->lastApiCheck:J

    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeClient;->bridge:Lcom/local/g3bridge/sdk/G3Bridge;

    invoke-virtual {v0}, Lcom/local/g3bridge/sdk/G3Bridge;->hello()Lcom/local/g3bridge/sdk/G3Bridge$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/local/g3bridge/sdk/G3Bridge$Response;->ok()Z

    move-result v1

    const-string v2, "authorized"

    if-nez v1, :cond_8a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/local/g3bridge/sdk/G3Bridge$Response;->code()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " \u00b7 "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/local/g3bridge/sdk/G3Bridge$Response;->message()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_a8

    :cond_8a
    invoke-virtual {v0}, Lcom/local/g3bridge/sdk/G3Bridge$Response;->data()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_97

    const-string v1, "\u8f66\u8f86\u63a5\u53e3\u7b49\u5f85\u5ba2\u6237\u7aef\u6388\u6743"

    goto :goto_a8

    :cond_97
    invoke-virtual {v0}, Lcom/local/g3bridge/sdk/G3Bridge$Response;->data()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "writeAuthorized"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_a6

    const-string v1, "\u8f66\u8f86\u63a5\u53e3\u5f53\u524d\u4ec5\u53ea\u8bfb\u6388\u6743"

    goto :goto_a8

    :cond_a6
    const-string v1, "\u8f66\u8f86\u63a5\u53e3\u5df2\u6709\u8bfb\u5199\u6388\u6743\uff1b\u5177\u4f53\u80fd\u529b\u6309\u63d0\u4ea4\u65f6\u68c0\u67e5"

    :goto_a8
    iput-object v1, p0, Lcom/local/p5home/VehicleBridgeClient;->apiStatus:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/local/g3bridge/sdk/G3Bridge$Response;->ok()Z

    move-result v1

    if-eqz v1, :cond_cd

    invoke-virtual {v0}, Lcom/local/g3bridge/sdk/G3Bridge$Response;->data()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_cd

    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeClient;->bridge:Lcom/local/g3bridge/sdk/G3Bridge;

    invoke-virtual {v0}, Lcom/local/g3bridge/sdk/G3Bridge;->capabilities()Lcom/local/g3bridge/sdk/G3Bridge$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/local/g3bridge/sdk/G3Bridge$Response;->ok()Z

    move-result v1

    if-eqz v1, :cond_cd

    invoke-virtual {v0}, Lcom/local/g3bridge/sdk/G3Bridge$Response;->data()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/local/p5home/VehicleBridgeClient;->observeDisplayGeneration(Landroid/os/Bundle;)Z

    .line 66
    :cond_cd
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/local/p5home/VehicleBridgeClient;->flush(Z)V

    invoke-direct {p0, v3}, Lcom/local/p5home/VehicleBridgeClient;->flush(Z)V

    .line 67
    return-void

    .line 62
    :cond_d5
    :goto_d5
    invoke-direct {p0}, Lcom/local/p5home/VehicleBridgeClient;->reconcile()V

    return-void
.end method

.method private unregisterNavigation()V
    .registers 3

    .line 69
    iget-boolean v0, p0, Lcom/local/p5home/VehicleBridgeClient;->navRegistered:Z

    if-eqz v0, :cond_10

    :try_start_4
    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeClient;->app:Landroid/content/Context;

    iget-object v1, p0, Lcom/local/p5home/VehicleBridgeClient;->navigation:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_b} :catch_c

    goto :goto_d

    :catch_c
    move-exception v0

    :goto_d
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/local/p5home/VehicleBridgeClient;->navRegistered:Z

    :cond_10
    return-void
.end method

.method private work(Ljava/lang/Runnable;)V
    .registers 4

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeClient;->worker:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lcom/local/p5home/VehicleBridgeClient$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/local/p5home/VehicleBridgeClient$$ExternalSyntheticLambda4;-><init>(Lcom/local/p5home/VehicleBridgeClient;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_a
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_c

    :catch_b
    move-exception p1

    :goto_c
    return-void
.end method


# virtual methods
.method synthetic lambda$checkMedia$4$com-local-g3home-VehicleBridgeClient(Ljava/util/List;)V
    .registers 2

    .line 101
    invoke-direct {p0}, Lcom/local/p5home/VehicleBridgeClient;->queueMusic()V

    return-void
.end method

.method synthetic lambda$queueInbound$3$com-local-g3home-VehicleBridgeClient()V
    .registers 4

    .line 70
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/local/p5home/VehicleBridgeClient;->incoming:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/local/p5home/VehicleBridgeClient$Inbound;

    if-eqz v1, :cond_f

    invoke-direct {p0, v1}, Lcom/local/p5home/VehicleBridgeClient;->navigationData(Lcom/local/p5home/VehicleBridgeClient$Inbound;)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_20

    :cond_f
    iget-object v1, p0, Lcom/local/p5home/VehicleBridgeClient;->inboundQueued:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeClient;->incoming:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-direct {p0}, Lcom/local/p5home/VehicleBridgeClient;->queueInbound()V

    :cond_1f
    return-void

    :catchall_20
    move-exception v1

    iget-object v2, p0, Lcom/local/p5home/VehicleBridgeClient;->inboundQueued:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeClient;->incoming:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_31

    invoke-direct {p0}, Lcom/local/p5home/VehicleBridgeClient;->queueInbound()V

    :cond_31
    throw v1
.end method

.method synthetic lambda$queueMusic$5$com-local-g3home-VehicleBridgeClient()V
    .registers 4

    .line 114
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/local/p5home/VehicleBridgeClient;->app:Landroid/content/Context;

    invoke-static {v1}, Lcom/local/p5home/VehicleBridgeClient;->musicEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-direct {p0}, Lcom/local/p5home/VehicleBridgeClient;->checkMedia()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_12

    :cond_c
    iget-object v1, p0, Lcom/local/p5home/VehicleBridgeClient;->musicQueued:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catchall_12
    move-exception v1

    iget-object v2, p0, Lcom/local/p5home/VehicleBridgeClient;->musicQueued:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v1
.end method

.method synthetic lambda$queueMusic$6$com-local-g3home-VehicleBridgeClient(JLandroid/media/session/MediaController;)V
    .registers 7

    .line 115
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/local/p5home/VehicleBridgeClient;->musicEpoch:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    cmp-long v1, p1, v1

    if-nez v1, :cond_12

    iget-object v1, p0, Lcom/local/p5home/VehicleBridgeClient;->controller:Landroid/media/session/MediaController;

    if-ne p3, v1, :cond_12

    invoke-direct {p0, p1, p2, p3}, Lcom/local/p5home/VehicleBridgeClient;->musicData(JLandroid/media/session/MediaController;)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_18

    :cond_12
    iget-object p1, p0, Lcom/local/p5home/VehicleBridgeClient;->musicQueued:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catchall_18
    move-exception p1

    iget-object p2, p0, Lcom/local/p5home/VehicleBridgeClient;->musicQueued:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw p1
.end method

.method synthetic lambda$reconcile$2$com-local-g3home-VehicleBridgeClient()V
    .registers 4

    .line 57
    :try_start_0
    invoke-direct {p0}, Lcom/local/p5home/VehicleBridgeClient;->tick()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_1e

    :catch_4
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u663e\u793a\u63a8\u9001\u68c0\u67e5\u672a\u5b8c\u6210\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/local/p5home/Ui;->error(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/local/p5home/VehicleBridgeClient;->apiStatus:Ljava/lang/String;

    :goto_1e
    return-void
.end method

.method synthetic lambda$work$1$com-local-g3home-VehicleBridgeClient(Ljava/lang/Runnable;)V
    .registers 4

    .line 52
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_1e

    :catch_4
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u663e\u793a\u63a8\u9001\u672a\u5b8c\u6210\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/local/p5home/Ui;->error(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/local/p5home/VehicleBridgeClient;->apiStatus:Ljava/lang/String;

    :goto_1e
    return-void
.end method

.class final Lcom/local/p5home/HookRuntime;
.super Ljava/lang/Object;
.source "HookRuntime.java"


# static fields
.field private static final BASE:Landroid/net/Uri;

.field private static final CAR:Ljava/lang/String; = "com.xiaopeng.carspeechservice"


# instance fields
.field private final accepted:Lcom/local/p5home/HookPolicy$Accepted;

.field private final app:Landroid/content/Context;

.field private final asrCalls:Ljava/util/concurrent/atomic/AtomicLong;

.field private volatile asrHook:Z

.field private volatile bindings:Lcom/local/p5home/HookBindings;

.field private final busCalls:Ljava/util/concurrent/atomic/AtomicLong;

.field private volatile config:Lcom/local/p5home/HookPolicy$Config;

.field private final epoch:Ljava/lang/String;

.field private volatile firmware:Z

.field private volatile heartbeatAt:J

.field private final loader:Ljava/lang/ClassLoader;

.field private final main:Landroid/os/Handler;

.field private modelWake:Z

.field private volatile modelWakeAllowed:Z

.field private modelWakeAt:J

.field private modelWakeToken:Ljava/lang/String;

.field private volatile music:Lcom/local/p5home/HookMusic;

.field private final musicAccepted:Ljava/util/concurrent/atomic/AtomicLong;

.field private volatile musicAvailable:Z

.field private volatile musicCode:Ljava/lang/String;

.field private volatile musicProvider:Ljava/lang/String;

.field private final musicRefused:Ljava/util/concurrent/atomic/AtomicLong;

.field private final navAccepted:Ljava/util/concurrent/atomic/AtomicLong;

.field private final navCalls:Ljava/util/concurrent/atomic/AtomicLong;

.field private volatile navCode:Ljava/lang/String;

.field private volatile navHook:Z

.field private final navRefused:Ljava/util/concurrent/atomic/AtomicLong;

.field private final navTrace:Lcom/local/p5home/NavTrace;

.field private volatile navTraceHooks:I

.field private volatile navTurn:Lcom/local/p5home/HookNavTurn;

.field private volatile navTurnHook:Z

.field private final ownerLock:Ljava/lang/Object;

.field private final qaAccepted:Ljava/util/concurrent/atomic/AtomicLong;

.field private volatile qaCode:Ljava/lang/String;

.field private final qaRefused:Ljava/util/concurrent/atomic/AtomicLong;

.field private final refreshQueued:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final replies:Lcom/local/p5home/HookPolicy$Replies;

.field private volatile replyCode:Ljava/lang/String;

.field private final replyDispatched:Ljava/util/concurrent/atomic/AtomicLong;

.field private final replyFailed:Ljava/util/concurrent/atomic/AtomicLong;

.field private final reported:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile retiredNavEpoch:J

.field private final sequence:Ljava/util/concurrent/atomic/AtomicLong;

.field private volatile sessionCode:Ljava/lang/String;

.field private final sessionEndFailed:Ljava/util/concurrent/atomic/AtomicLong;

.field private final sessionEndRequests:Ljava/util/concurrent/atomic/AtomicLong;

.field private final sessionEnded:Ljava/util/concurrent/atomic/AtomicLong;

.field private volatile sessions:Lcom/local/p5home/HookSessions;

.field private volatile transcript:Lcom/local/p5home/HookTranscript;

.field private volatile tts:Z

.field private final wakeHits:Ljava/util/concurrent/atomic/AtomicLong;

.field private final wakeLock:Ljava/lang/Object;

.field private volatile wakeWords:Lcom/local/p5home/HookWakeWords;

.field private final worker:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public static synthetic $r8$lambda$CLAUGdfRcfgPCkvQ7DnZ1YAnMe8(Lcom/local/p5home/HookRuntime;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/local/p5home/HookRuntime;->observeWake(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$_Xiyzhby-vqO1JGLEiEGAmPv0Ho(Lcom/local/p5home/HookRuntime;)V
    .registers 1

    invoke-direct {p0}, Lcom/local/p5home/HookRuntime;->refresh()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 26
    const-string v0, "content://com.local.p5home.bridge"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/local/p5home/HookRuntime;->BASE:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/ClassLoader;)V
    .registers 6

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/local/p5home/HookRuntime$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/local/p5home/HookRuntime$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/local/p5home/HookRuntime;->worker:Ljava/util/concurrent/ScheduledExecutorService;

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/local/p5home/HookRuntime;->main:Landroid/os/Handler;

    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/local/p5home/HookRuntime;->refreshQueued:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/local/p5home/HookRuntime;->sequence:Ljava/util/concurrent/atomic/AtomicLong;

    .line 32
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const/16 v2, 0x24

    invoke-static {v0, v1, v2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/local/p5home/HookRuntime;->epoch:Ljava/lang/String;

    .line 33
    new-instance v0, Lcom/local/p5home/HookPolicy$Accepted;

    invoke-direct {v0}, Lcom/local/p5home/HookPolicy$Accepted;-><init>()V

    iput-object v0, p0, Lcom/local/p5home/HookRuntime;->accepted:Lcom/local/p5home/HookPolicy$Accepted;

    .line 34
    new-instance v0, Lcom/local/p5home/HookPolicy$Replies;

    invoke-direct {v0}, Lcom/local/p5home/HookPolicy$Replies;-><init>()V

    iput-object v0, p0, Lcom/local/p5home/HookRuntime;->replies:Lcom/local/p5home/HookPolicy$Replies;

    .line 35
    new-instance v0, Lcom/local/p5home/NavTrace;

    invoke-direct {v0}, Lcom/local/p5home/NavTrace;-><init>()V

    iput-object v0, p0, Lcom/local/p5home/HookRuntime;->navTrace:Lcom/local/p5home/NavTrace;

    .line 36
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/local/p5home/HookRuntime;->reported:Ljava/util/Set;

    .line 37
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/local/p5home/HookPolicy$Config;->disabled(J)Lcom/local/p5home/HookPolicy$Config;

    move-result-object v0

    iput-object v0, p0, Lcom/local/p5home/HookRuntime;->config:Lcom/local/p5home/HookPolicy$Config;

    .line 41
    const-string v0, "system"

    iput-object v0, p0, Lcom/local/p5home/HookRuntime;->musicProvider:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/local/p5home/HookRuntime;->musicAccepted:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/local/p5home/HookRuntime;->musicRefused:Ljava/util/concurrent/atomic/AtomicLong;

    const-string v0, "MUSIC_IDLE"

    iput-object v0, p0, Lcom/local/p5home/HookRuntime;->musicCode:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/local/p5home/HookRuntime;->wakeLock:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/local/p5home/HookRuntime;->modelWakeToken:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/local/p5home/HookRuntime;->wakeHits:Ljava/util/concurrent/atomic/AtomicLong;

    .line 47
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/local/p5home/HookRuntime;->retiredNavEpoch:J

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/local/p5home/HookRuntime;->ownerLock:Ljava/lang/Object;

    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/local/p5home/HookRuntime;->asrCalls:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/local/p5home/HookRuntime;->busCalls:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/local/p5home/HookRuntime;->navCalls:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/local/p5home/HookRuntime;->qaAccepted:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/local/p5home/HookRuntime;->qaRefused:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/local/p5home/HookRuntime;->navAccepted:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/local/p5home/HookRuntime;->navRefused:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/local/p5home/HookRuntime;->replyDispatched:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/local/p5home/HookRuntime;->replyFailed:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/local/p5home/HookRuntime;->sessionEndRequests:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/local/p5home/HookRuntime;->sessionEnded:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/local/p5home/HookRuntime;->sessionEndFailed:Ljava/util/concurrent/atomic/AtomicLong;

    .line 53
    const-string v0, "QA_IDLE"

    iput-object v0, p0, Lcom/local/p5home/HookRuntime;->qaCode:Ljava/lang/String;

    const-string v0, "NAV_IDLE"

    iput-object v0, p0, Lcom/local/p5home/HookRuntime;->navCode:Ljava/lang/String;

    const-string v0, "REPLY_IDLE"

    iput-object v0, p0, Lcom/local/p5home/HookRuntime;->replyCode:Ljava/lang/String;

    const-string v0, "SESSION_IDLE"

    iput-object v0, p0, Lcom/local/p5home/HookRuntime;->sessionCode:Ljava/lang/String;

    .line 54
    iput-object p1, p0, Lcom/local/p5home/HookRuntime;->app:Landroid/content/Context;

    iput-object p2, p0, Lcom/local/p5home/HookRuntime;->loader:Ljava/lang/ClassLoader;

    return-void
.end method

.method static synthetic access$000(Lcom/local/p5home/HookRuntime;)Lcom/local/p5home/HookSessions;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/local/p5home/HookRuntime;->sessions:Lcom/local/p5home/HookSessions;

    return-object p0
.end method

.method static synthetic access$100(Lcom/local/p5home/HookRuntime;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/local/p5home/HookRuntime;->routeMusic(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/local/p5home/HookRuntime;)Lcom/local/p5home/HookNavTurn;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/local/p5home/HookRuntime;->navTurn:Lcom/local/p5home/HookNavTurn;

    return-object p0
.end method

.method static synthetic access$300(Lcom/local/p5home/HookRuntime;Ljava/lang/Object;)Z
    .registers 2

    .line 24
    invoke-direct {p0, p1}, Lcom/local/p5home/HookRuntime;->routeAsr(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/local/p5home/HookRuntime;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/local/p5home/HookRuntime;->routeNav(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/local/p5home/HookRuntime;)Lcom/local/p5home/NavTrace;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/local/p5home/HookRuntime;->navTrace:Lcom/local/p5home/NavTrace;

    return-object p0
.end method

.method static synthetic access$600(Lcom/local/p5home/HookRuntime;)V
    .registers 1

    .line 24
    invoke-direct {p0}, Lcom/local/p5home/HookRuntime;->refreshSoon()V

    return-void
.end method

.method private ack(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 273
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "status"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "ack_reply"

    invoke-direct {p0, p1, v0}, Lcom/local/p5home/HookRuntime;->call(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method private call(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 6

    .line 274
    iget-object v0, p0, Lcom/local/p5home/HookRuntime;->app:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/local/p5home/HookRuntime;->BASE:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method private diagnosticsSoon()V
    .registers 3

    .line 197
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/local/p5home/HookRuntime;->heartbeatAt:J

    invoke-direct {p0}, Lcom/local/p5home/HookRuntime;->refreshSoon()V

    return-void
.end method

.method private finishReply(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 5

    .line 272
    iget-object v0, p0, Lcom/local/p5home/HookRuntime;->replies:Lcom/local/p5home/HookPolicy$Replies;

    invoke-virtual {v0, p1, p2}, Lcom/local/p5home/HookPolicy$Replies;->finish(Ljava/lang/String;Z)V

    iput-object p3, p0, Lcom/local/p5home/HookRuntime;->replyCode:Ljava/lang/String;

    if-eqz p2, :cond_c

    iget-object p1, p0, Lcom/local/p5home/HookRuntime;->replyDispatched:Ljava/util/concurrent/atomic/AtomicLong;

    goto :goto_e

    :cond_c
    iget-object p1, p0, Lcom/local/p5home/HookRuntime;->replyFailed:Ljava/util/concurrent/atomic/AtomicLong;

    :goto_e
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    if-nez p2, :cond_16

    invoke-direct {p0, p3}, Lcom/local/p5home/HookRuntime;->log(Ljava/lang/String;)V

    :cond_16
    return-void
.end method

.method private guard()Z
    .registers 4

    .line 70
    iget-object v0, p0, Lcom/local/p5home/HookRuntime;->app:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.xiaopeng.carspeechservice"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/local/p5home/HookRuntime;->app:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-ne v0, v2, :cond_3a

    iget-object v0, p0, Lcom/local/p5home/HookRuntime;->app:Landroid/content/Context;

    .line 71
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-static {v0, v2}, Lcom/local/p5home/OemSpeechIdentity;->trusted(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_2a

    goto :goto_3a

    .line 72
    :cond_2a
    iget-object v0, p0, Lcom/local/p5home/HookRuntime;->app:Landroid/content/Context;

    invoke-static {v0}, Lcom/local/p5home/OemSpeechIdentity;->knownCode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_38

    const-string v0, "HOOK_PRIVATE_IMPLEMENTATION_UNCONFIRMED"

    invoke-direct {p0, v0}, Lcom/local/p5home/HookRuntime;->log(Ljava/lang/String;)V

    return v1

    .line 73
    :cond_38
    const/4 v0, 0x1

    return v0

    .line 71
    :cond_3a
    :goto_3a
    const-string v0, "HOOK_IDENTITY_UNCONFIRMED"

    invoke-direct {p0, v0}, Lcom/local/p5home/HookRuntime;->log(Ljava/lang/String;)V

    return v1
.end method

.method private heartbeat(Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 227
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/local/p5home/HookRuntime;->heartbeatAt:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_17

    iget-wide v2, p0, Lcom/local/p5home/HookRuntime;->heartbeatAt:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f40

    cmp-long v2, v2, v4

    if-gez v2, :cond_17

    return-void

    .line 228
    :cond_17
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "hookBuild"

    const-string v4, "voice-20261027-music-a"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/local/p5home/HookRuntime;->music:Lcom/local/p5home/HookMusic;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_2b

    move v3, v4

    goto :goto_2c

    :cond_2b
    move v3, v5

    :goto_2c
    const-string v6, "musicHook"

    invoke-virtual {v2, v6, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/local/p5home/HookRuntime;->musicAccepted:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    const-string v3, "musicAccepted"

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v3, p0, Lcom/local/p5home/HookRuntime;->musicRefused:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    const-string v3, "musicRefused"

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v3, "musicCode"

    iget-object v6, p0, Lcom/local/p5home/HookRuntime;->musicCode:Ljava/lang/String;

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/local/p5home/HookRuntime;->transcript:Lcom/local/p5home/HookTranscript;

    if-eqz v3, :cond_54

    move v3, v4

    goto :goto_55

    :cond_54
    move v3, v5

    :goto_55
    const-string v6, "transcriptReady"

    invoke-virtual {v2, v6, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/local/p5home/HookRuntime;->transcript:Lcom/local/p5home/HookTranscript;

    if-nez v3, :cond_61

    const-string v3, "TRANSCRIPT_UNAVAILABLE"

    goto :goto_67

    :cond_61
    iget-object v3, p0, Lcom/local/p5home/HookRuntime;->transcript:Lcom/local/p5home/HookTranscript;

    invoke-virtual {v3}, Lcom/local/p5home/HookTranscript;->code()Ljava/lang/String;

    move-result-object v3

    :goto_67
    const-string v6, "displayCode"

    invoke-virtual {v2, v6, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/local/p5home/HookRuntime;->wakeWords:Lcom/local/p5home/HookWakeWords;

    if-nez v3, :cond_73

    const-string v3, "WAKE_WORDS_UNAVAILABLE"

    goto :goto_79

    :cond_73
    iget-object v3, p0, Lcom/local/p5home/HookRuntime;->wakeWords:Lcom/local/p5home/HookWakeWords;

    invoke-virtual {v3}, Lcom/local/p5home/HookWakeWords;->code()Ljava/lang/String;

    move-result-object v3

    :goto_79
    const-string v6, "wakeCode"

    invoke-virtual {v2, v6, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/local/p5home/HookRuntime;->wakeWords:Lcom/local/p5home/HookWakeWords;

    if-nez v3, :cond_84

    move v3, v5

    goto :goto_8a

    :cond_84
    iget-object v3, p0, Lcom/local/p5home/HookRuntime;->wakeWords:Lcom/local/p5home/HookWakeWords;

    invoke-virtual {v3}, Lcom/local/p5home/HookWakeWords;->registeredCount()I

    move-result v3

    :goto_8a
    const-string v6, "wakeWordCount"

    invoke-virtual {v2, v6, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/local/p5home/HookRuntime;->wakeHits:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    const-string v3, "wakeHits"

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 229
    const-string v3, "phase"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "firmwareMatched"

    iget-boolean v3, p0, Lcom/local/p5home/HookRuntime;->firmware:Z

    invoke-virtual {v2, p1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "asrHook"

    iget-boolean v3, p0, Lcom/local/p5home/HookRuntime;->asrHook:Z

    invoke-virtual {v2, p1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "navHook"

    iget-boolean v3, p0, Lcom/local/p5home/HookRuntime;->navHook:Z

    invoke-virtual {v2, p1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "ttsHook"

    iget-boolean v3, p0, Lcom/local/p5home/HookRuntime;->tts:Z

    invoke-virtual {v2, p1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 230
    iget-object p1, p0, Lcom/local/p5home/HookRuntime;->sessions:Lcom/local/p5home/HookSessions;

    if-nez p1, :cond_c2

    const-string p1, "SOLO_INTERFACE_MISSING"

    goto :goto_c8

    :cond_c2
    iget-object p1, p0, Lcom/local/p5home/HookRuntime;->sessions:Lcom/local/p5home/HookSessions;

    invoke-virtual {p1}, Lcom/local/p5home/HookSessions;->soloCode()Ljava/lang/String;

    move-result-object p1

    :goto_c8
    const-string v3, "soloCode"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/local/p5home/HookRuntime;->sessions:Lcom/local/p5home/HookSessions;

    if-eqz p1, :cond_db

    iget-object p1, p0, Lcom/local/p5home/HookRuntime;->sessions:Lcom/local/p5home/HookSessions;

    invoke-virtual {p1}, Lcom/local/p5home/HookSessions;->soloRequestActive()Z

    move-result p1

    if-eqz p1, :cond_db

    move p1, v4

    goto :goto_dc

    :cond_db
    move p1, v5

    :goto_dc
    const-string v3, "soloRequestActive"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 231
    iget-object p1, p0, Lcom/local/p5home/HookRuntime;->navTrace:Lcom/local/p5home/NavTrace;

    invoke-virtual {p1}, Lcom/local/p5home/NavTrace;->snapshot()Ljava/lang/String;

    move-result-object p1

    const-string v3, "navTrace"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string p1, "navTraceHooks"

    iget v3, p0, Lcom/local/p5home/HookRuntime;->navTraceHooks:I

    invoke-virtual {v2, p1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 233
    const-string p1, "navTurnHook"

    iget-boolean v3, p0, Lcom/local/p5home/HookRuntime;->navTurnHook:Z

    invoke-virtual {v2, p1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 234
    iget-object p1, p0, Lcom/local/p5home/HookRuntime;->sessions:Lcom/local/p5home/HookSessions;

    if-eqz p1, :cond_100

    move p1, v4

    goto :goto_101

    :cond_100
    move p1, v5

    :goto_101
    const-string v3, "continuousSupported"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/local/p5home/HookRuntime;->sessions:Lcom/local/p5home/HookSessions;

    if-eqz p1, :cond_114

    iget-object p1, p0, Lcom/local/p5home/HookRuntime;->sessions:Lcom/local/p5home/HookSessions;

    invoke-virtual {p1}, Lcom/local/p5home/HookSessions;->continuousEnabled()Z

    move-result p1

    if-eqz p1, :cond_114

    move p1, v4

    goto :goto_115

    :cond_114
    move p1, v5

    :goto_115
    const-string v3, "continuousEnabled"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/local/p5home/HookRuntime;->sessions:Lcom/local/p5home/HookSessions;

    if-nez p1, :cond_121

    iget-object p1, p0, Lcom/local/p5home/HookRuntime;->sessionCode:Ljava/lang/String;

    goto :goto_127

    :cond_121
    iget-object p1, p0, Lcom/local/p5home/HookRuntime;->sessions:Lcom/local/p5home/HookSessions;

    invoke-virtual {p1}, Lcom/local/p5home/HookSessions;->code()Ljava/lang/String;

    move-result-object p1

    :goto_127
    const-string v3, "turnCode"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object p1, p0, Lcom/local/p5home/HookRuntime;->sessions:Lcom/local/p5home/HookSessions;

    if-eqz p1, :cond_131

    goto :goto_132

    :cond_131
    move v4, v5

    :goto_132
    const-string p1, "sessionHook"

    invoke-virtual {v2, p1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "hookPid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v2, p1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 236
    iget-object p1, p0, Lcom/local/p5home/HookRuntime;->asrCalls:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    const-string p1, "asrCalls"

    invoke-virtual {v2, p1, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object p1, p0, Lcom/local/p5home/HookRuntime;->busCalls:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    const-string p1, "busCalls"

    invoke-virtual {v2, p1, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object p1, p0, Lcom/local/p5home/HookRuntime;->navCalls:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    const-string p1, "navCalls"

    invoke-virtual {v2, p1, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object p1, p0, Lcom/local/p5home/HookRuntime;->qaAccepted:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    const-string p1, "qaAccepted"

    invoke-virtual {v2, p1, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object p1, p0, Lcom/local/p5home/HookRuntime;->qaRefused:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    const-string p1, "qaRefused"

    invoke-virtual {v2, p1, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object p1, p0, Lcom/local/p5home/HookRuntime;->navAccepted:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    const-string p1, "navAccepted"

    invoke-virtual {v2, p1, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object p1, p0, Lcom/local/p5home/HookRuntime;->navRefused:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    const-string p1, "navRefused"

    invoke-virtual {v2, p1, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object p1, p0, Lcom/local/p5home/HookRuntime;->replyDispatched:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    const-string p1, "replyDispatched"

    invoke-virtual {v2, p1, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object p1, p0, Lcom/local/p5home/HookRuntime;->replyFailed:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    const-string p1, "replyFailed"

    invoke-virtual {v2, p1, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object p1, p0, Lcom/local/p5home/HookRuntime;->sessionEndRequests:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    const-string p1, "sessionEndRequests"

    invoke-virtual {v2, p1, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object p1, p0, Lcom/local/p5home/HookRuntime;->sessionEnded:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    const-string p1, "sessionEnded"

    invoke-virtual {v2, p1, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object p1, p0, Lcom/local/p5home/HookRuntime;->sessionEndFailed:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    const-string p1, "sessionEndFailed"

    invoke-virtual {v2, p1, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 237
    const-string p1, "qaCode"

    iget-object v3, p0, Lcom/local/p5home/HookRuntime;->qaCode:Ljava/lang/String;

    invoke-virtual {v2, p1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "navCode"

    iget-object v3, p0, Lcom/local/p5home/HookRuntime;->navCode:Ljava/lang/String;

    invoke-virtual {v2, p1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "replyCode"

    iget-object v3, p0, Lcom/local/p5home/HookRuntime;->replyCode:Ljava/lang/String;

    invoke-virtual {v2, p1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "sessionCode"

    iget-object v3, p0, Lcom/local/p5home/HookRuntime;->sessionCode:Ljava/lang/String;

    invoke-virtual {v2, p1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/local/p5home/HookRuntime;->bindings:Lcom/local/p5home/HookBindings;

    if-nez p1, :cond_1e7

    const-string p1, "TTS_INTERFACE_MISSING"

    goto :goto_1ed

    :cond_1e7
    iget-object p1, p0, Lcom/local/p5home/HookRuntime;->bindings:Lcom/local/p5home/HookBindings;

    invoke-virtual {p1}, Lcom/local/p5home/HookBindings;->ttsCode()Ljava/lang/String;

    move-result-object p1

    :goto_1ed
    const-string v3, "ttsCode"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string p1, "heartbeat"

    invoke-direct {p0, p1, v2}, Lcom/local/p5home/HookRuntime;->call(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_202

    iput-wide v0, p0, Lcom/local/p5home/HookRuntime;->heartbeatAt:J

    const-string p1, "HEARTBEAT_ACK"

    invoke-direct {p0, p1}, Lcom/local/p5home/HookRuntime;->log(Ljava/lang/String;)V

    .line 239
    return-void

    .line 238
    :cond_202
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "heartbeat_contract"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private install()V
    .registers 6

    .line 76
    :try_start_0
    new-instance v0, Lcom/local/p5home/HookMusic;

    iget-object v1, p0, Lcom/local/p5home/HookRuntime;->loader:Ljava/lang/ClassLoader;

    invoke-direct {v0, v1}, Lcom/local/p5home/HookMusic;-><init>(Ljava/lang/ClassLoader;)V

    iput-object v0, p0, Lcom/local/p5home/HookRuntime;->music:Lcom/local/p5home/HookMusic;

    const-string v0, "HOOK_MUSIC_READY"

    invoke-direct {p0, v0}, Lcom/local/p5home/HookRuntime;->log(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_11
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_e} :catch_f

    goto :goto_17

    :catch_f
    move-exception v0

    goto :goto_12

    :catch_11
    move-exception v0

    :goto_12
    const-string v0, "HOOK_MUSIC_UNAVAILABLE"

    invoke-direct {p0, v0}, Lcom/local/p5home/HookRuntime;->log(Ljava/lang/String;)V

    .line 77
    :goto_17
    :try_start_17
    new-instance v0, Lcom/local/p5home/HookWakeWords;

    iget-object v1, p0, Lcom/local/p5home/HookRuntime;->loader:Ljava/lang/ClassLoader;

    new-instance v2, Lcom/local/p5home/HookRuntime$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0}, Lcom/local/p5home/HookRuntime$$ExternalSyntheticLambda9;-><init>(Lcom/local/p5home/HookRuntime;)V

    invoke-direct {v0, v1, v2}, Lcom/local/p5home/HookWakeWords;-><init>(Ljava/lang/ClassLoader;Lcom/local/p5home/HookWakeWords$Listener;)V

    invoke-virtual {v0}, Lcom/local/p5home/HookWakeWords;->install()V

    iput-object v0, p0, Lcom/local/p5home/HookRuntime;->wakeWords:Lcom/local/p5home/HookWakeWords;

    const-string v0, "HOOK_WAKE_WORDS_INSTALLED"

    invoke-direct {p0, v0}, Lcom/local/p5home/HookRuntime;->log(Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_2d} :catch_30
    .catch Ljava/lang/LinkageError; {:try_start_17 .. :try_end_2d} :catch_2e

    .line 78
    goto :goto_36

    :catch_2e
    move-exception v0

    goto :goto_31

    :catch_30
    move-exception v0

    :goto_31
    const-string v0, "HOOK_WAKE_WORDS_UNAVAILABLE"

    invoke-direct {p0, v0}, Lcom/local/p5home/HookRuntime;->log(Ljava/lang/String;)V

    .line 80
    :goto_36
    const/4 v0, 0x1

    :try_start_37
    new-instance v1, Lcom/local/p5home/HookNavTurn;

    iget-object v2, p0, Lcom/local/p5home/HookRuntime;->loader:Ljava/lang/ClassLoader;

    new-instance v3, Lcom/local/p5home/HookRuntime$$ExternalSyntheticLambda10;

    invoke-direct {v3, p0}, Lcom/local/p5home/HookRuntime$$ExternalSyntheticLambda10;-><init>(Lcom/local/p5home/HookRuntime;)V

    new-instance v4, Lcom/local/p5home/HookRuntime$$ExternalSyntheticLambda11;

    invoke-direct {v4, p0}, Lcom/local/p5home/HookRuntime$$ExternalSyntheticLambda11;-><init>(Lcom/local/p5home/HookRuntime;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/local/p5home/HookNavTurn;-><init>(Ljava/lang/ClassLoader;Lcom/local/p5home/HookNavTurn$Enabled;Lcom/local/p5home/HookNavTurn$Diagnostic;)V

    .line 81
    iget-object v2, v1, Lcom/local/p5home/HookNavTurn;->nluEntry:Ljava/lang/reflect/Method;

    new-instance v3, Lcom/local/p5home/HookRuntime$2;

    invoke-direct {v3, p0, v1}, Lcom/local/p5home/HookRuntime$2;-><init>(Lcom/local/p5home/HookRuntime;Lcom/local/p5home/HookNavTurn;)V

    invoke-static {v2, v3}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 82
    iput-object v1, p0, Lcom/local/p5home/HookRuntime;->navTurn:Lcom/local/p5home/HookNavTurn;

    iput-boolean v0, p0, Lcom/local/p5home/HookRuntime;->navTurnHook:Z

    const-string v1, "HOOK_NAV_TURN_INSTALLED"

    invoke-direct {p0, v1}, Lcom/local/p5home/HookRuntime;->log(Ljava/lang/String;)V
    :try_end_5b
    .catchall {:try_start_37 .. :try_end_5b} :catchall_5c

    .line 83
    goto :goto_62

    :catchall_5c
    move-exception v1

    const-string v1, "HOOK_NAV_TURN_UNAVAILABLE"

    invoke-direct {p0, v1}, Lcom/local/p5home/HookRuntime;->log(Ljava/lang/String;)V

    .line 84
    :goto_62
    :try_start_62
    iget-object v1, p0, Lcom/local/p5home/HookRuntime;->bindings:Lcom/local/p5home/HookBindings;

    iget-object v1, v1, Lcom/local/p5home/HookBindings;->asrEntry:Ljava/lang/reflect/Method;

    new-instance v2, Lcom/local/p5home/HookRuntime$3;

    invoke-direct {v2, p0}, Lcom/local/p5home/HookRuntime$3;-><init>(Lcom/local/p5home/HookRuntime;)V

    invoke-static {v1, v2}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    iput-boolean v0, p0, Lcom/local/p5home/HookRuntime;->asrHook:Z

    const-string v1, "HOOK_ASR_INSTALLED"

    invoke-direct {p0, v1}, Lcom/local/p5home/HookRuntime;->log(Ljava/lang/String;)V
    :try_end_75
    .catchall {:try_start_62 .. :try_end_75} :catchall_76

    goto :goto_7c

    :catchall_76
    move-exception v1

    const-string v1, "HOOK_ASR_UNAVAILABLE"

    invoke-direct {p0, v1}, Lcom/local/p5home/HookRuntime;->log(Ljava/lang/String;)V

    .line 85
    :goto_7c
    :try_start_7c
    iget-object v1, p0, Lcom/local/p5home/HookRuntime;->bindings:Lcom/local/p5home/HookBindings;

    iget-object v1, v1, Lcom/local/p5home/HookBindings;->busEntry:Ljava/lang/reflect/Method;

    new-instance v2, Lcom/local/p5home/HookRuntime$4;

    invoke-direct {v2, p0}, Lcom/local/p5home/HookRuntime$4;-><init>(Lcom/local/p5home/HookRuntime;)V

    invoke-static {v1, v2}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    iput-boolean v0, p0, Lcom/local/p5home/HookRuntime;->navHook:Z

    const-string v0, "HOOK_NAV_INSTALLED"

    invoke-direct {p0, v0}, Lcom/local/p5home/HookRuntime;->log(Ljava/lang/String;)V
    :try_end_8f
    .catchall {:try_start_7c .. :try_end_8f} :catchall_90

    goto :goto_96

    :catchall_90
    move-exception v0

    const-string v0, "HOOK_NAV_UNAVAILABLE"

    invoke-direct {p0, v0}, Lcom/local/p5home/HookRuntime;->log(Ljava/lang/String;)V

    .line 86
    :goto_96
    const-string v0, "com.xiaopeng.speech.common.bean.Value"

    const-string v1, "QUERY"

    const-string v2, "com.xiaopeng.carspeechservice.f.e"

    const-string v3, "a"

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/local/p5home/HookRuntime;->traceNativePoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v0, "void"

    const-string v1, "RESULT"

    const-string v2, "com.xiaopeng.carspeechservice.g.a.b"

    const-string v3, "f"

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/local/p5home/HookRuntime;->traceNativePoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method static synthetic lambda$new$0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 3

    .line 28
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "G3SpeechBridge"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method

.method private declared-synchronized log(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    .line 275
    :try_start_1
    iget-object v0, p0, Lcom/local/p5home/HookRuntime;->reported:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/16 v1, 0x18

    if-ge v0, v1, :cond_16

    iget-object v0, p0, Lcom/local/p5home/HookRuntime;->reported:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {p1}, Lcom/local/p5home/HookLog;->write(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    :cond_16
    monitor-exit p0

    return-void

    .line 275
    :catchall_18
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private modelWakeForCurrentTurn()Z
    .registers 9

    .line 154
    iget-object v0, p0, Lcom/local/p5home/HookRuntime;->wakeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 155
    :try_start_3
    iget-boolean v1, p0, Lcom/local/p5home/HookRuntime;->modelWake:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_53

    iget-boolean v1, p0, Lcom/local/p5home/HookRuntime;->modelWakeAllowed:Z

    if-eqz v1, :cond_53

    iget-object v1, p0, Lcom/local/p5home/HookRuntime;->sessions:Lcom/local/p5home/HookSessions;

    if-nez v1, :cond_11

    goto :goto_53

    .line 156
    :cond_11
    iget-object v1, p0, Lcom/local/p5home/HookRuntime;->sessions:Lcom/local/p5home/HookSessions;

    invoke-virtual {v1}, Lcom/local/p5home/HookSessions;->capture()Lcom/local/p5home/HookSessions$Snapshot;

    move-result-object v1

    if-nez v1, :cond_1b

    monitor-exit v0

    return v2

    .line 157
    :cond_1b
    iget-object v3, p0, Lcom/local/p5home/HookRuntime;->modelWakeToken:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 158
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/local/p5home/HookRuntime;->modelWakeAt:J

    cmp-long v7, v3, v5

    if-ltz v7, :cond_3a

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3a98

    cmp-long v3, v3, v5

    if-lez v3, :cond_35

    goto :goto_3a

    :cond_35
    iget-object v3, v1, Lcom/local/p5home/HookSessions$Snapshot;->token:Ljava/lang/String;

    iput-object v3, p0, Lcom/local/p5home/HookRuntime;->modelWakeToken:Ljava/lang/String;

    goto :goto_3e

    :cond_3a
    :goto_3a
    iput-boolean v2, p0, Lcom/local/p5home/HookRuntime;->modelWake:Z

    monitor-exit v0

    return v2

    .line 160
    :cond_3e
    :goto_3e
    iget-object v3, p0, Lcom/local/p5home/HookRuntime;->modelWakeToken:Ljava/lang/String;

    iget-object v1, v1, Lcom/local/p5home/HookSessions$Snapshot;->token:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_50

    iput-boolean v2, p0, Lcom/local/p5home/HookRuntime;->modelWake:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/local/p5home/HookRuntime;->modelWakeToken:Ljava/lang/String;

    monitor-exit v0

    return v2

    .line 161
    :cond_50
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 155
    :cond_53
    :goto_53
    monitor-exit v0

    return v2

    .line 162
    :catchall_55
    move-exception v1

    monitor-exit v0
    :try_end_57
    .catchall {:try_start_3 .. :try_end_57} :catchall_55

    throw v1
.end method

.method private observeWake(Z)V
    .registers 5

    .line 150
    iget-object v0, p0, Lcom/local/p5home/HookRuntime;->wakeLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_d

    :try_start_5
    iget-boolean p1, p0, Lcom/local/p5home/HookRuntime;->modelWakeAllowed:Z

    if-eqz p1, :cond_d

    const/4 p1, 0x1

    goto :goto_e

    :catchall_b
    move-exception p1

    goto :goto_28

    :cond_d
    const/4 p1, 0x0

    :goto_e
    iput-boolean p1, p0, Lcom/local/p5home/HookRuntime;->modelWake:Z

    const-string p1, ""

    iput-object p1, p0, Lcom/local/p5home/HookRuntime;->modelWakeToken:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/local/p5home/HookRuntime;->modelWakeAt:J

    iget-boolean p1, p0, Lcom/local/p5home/HookRuntime;->modelWake:Z

    if-eqz p1, :cond_23

    iget-object p1, p0, Lcom/local/p5home/HookRuntime;->wakeHits:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    :cond_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_b

    .line 151
    invoke-direct {p0}, Lcom/local/p5home/HookRuntime;->diagnosticsSoon()V

    .line 152
    return-void

    .line 150
    :goto_28
    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_b

    throw p1
.end method

.method private pullReply()Z
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 241
    const-string v0, "next_reply"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/local/p5home/HookRuntime;->call(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    return v1

    .line 242
    :cond_b
    const-string v2, "id"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1a

    return v1

    .line 243
    :cond_1a
    invoke-static {v2}, Lcom/local/p5home/HookPolicy;->safeId(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_26

    const-string v0, "HOOK_REPLY_ID_REJECTED"

    invoke-direct {p0, v0}, Lcom/local/p5home/HookRuntime;->log(Ljava/lang/String;)V

    return v1

    .line 244
    :cond_26
    iget-object v3, p0, Lcom/local/p5home/HookRuntime;->replies:Lcom/local/p5home/HookPolicy$Replies;

    invoke-virtual {v3, v2}, Lcom/local/p5home/HookPolicy$Replies;->state(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3c

    const-string v0, "pending"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    return v1

    :cond_38
    invoke-direct {p0, v2, v3}, Lcom/local/p5home/HookRuntime;->ack(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    .line 245
    :cond_3c
    iget-object v3, p0, Lcom/local/p5home/HookRuntime;->replies:Lcom/local/p5home/HookPolicy$Replies;

    invoke-virtual {v3, v2}, Lcom/local/p5home/HookPolicy$Replies;->begin(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_45

    return v1

    .line 246
    :cond_45
    const-string v3, "kind"

    const-string v5, ""

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "text"

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "event"

    const-string v7, ""

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "data"

    const-string v8, ""

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 247
    invoke-static {v2, v3, v5, v6, v7}, Lcom/local/p5home/HookPolicy;->replyEnvelope(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1d3

    iget-object v8, p0, Lcom/local/p5home/HookRuntime;->config:Lcom/local/p5home/HookPolicy$Config;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    invoke-static {v8, v3, v9, v10}, Lcom/local/p5home/HookPolicy;->replyEnabled(Lcom/local/p5home/HookPolicy$Config;Ljava/lang/String;J)Z

    move-result v8

    if-nez v8, :cond_79

    goto/16 :goto_1d3

    .line 250
    :cond_79
    const-string v8, "result"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-wide/16 v9, -0x1

    if-eqz v8, :cond_a6

    invoke-direct {p0}, Lcom/local/p5home/HookRuntime;->readConfig()Z

    move-result v8

    if-eqz v8, :cond_9b

    iget-object v8, p0, Lcom/local/p5home/HookRuntime;->config:Lcom/local/p5home/HookPolicy$Config;

    const-string v11, "navEpoch"

    invoke-virtual {v0, v11, v9, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    invoke-static {v8, v11, v12, v13, v14}, Lcom/local/p5home/HookPolicy;->searchReplyOwned(Lcom/local/p5home/HookPolicy$Config;JJ)Z

    move-result v8

    if-nez v8, :cond_a6

    :cond_9b
    const-string v0, "REPLY_SESSION_STALE"

    invoke-direct {p0, v2, v1, v0}, Lcom/local/p5home/HookRuntime;->finishReply(Ljava/lang/String;ZLjava/lang/String;)V

    const-string v0, "stale"

    invoke-direct {p0, v2, v0}, Lcom/local/p5home/HookRuntime;->ack(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    .line 251
    :cond_a6
    const-string v8, "support"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d9

    const-string v8, "native://navi.select.route.count"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d9

    invoke-direct {p0}, Lcom/local/p5home/HookRuntime;->readConfig()Z

    move-result v8

    if-eqz v8, :cond_ce

    iget-object v8, p0, Lcom/local/p5home/HookRuntime;->config:Lcom/local/p5home/HookPolicy$Config;

    const-string v11, "navEpoch"

    invoke-virtual {v0, v11, v9, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    invoke-static {v8, v9, v10, v11, v12}, Lcom/local/p5home/HookPolicy;->routeReplyOwned(Lcom/local/p5home/HookPolicy$Config;JJ)Z

    move-result v8

    if-nez v8, :cond_d9

    :cond_ce
    const-string v0, "REPLY_SESSION_STALE"

    invoke-direct {p0, v2, v1, v0}, Lcom/local/p5home/HookRuntime;->finishReply(Ljava/lang/String;ZLjava/lang/String;)V

    const-string v0, "stale"

    invoke-direct {p0, v2, v0}, Lcom/local/p5home/HookRuntime;->ack(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    .line 252
    :cond_d9
    const-string v8, "session_end"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_198

    const-string v8, "turn_complete"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_198

    const-string v8, "turn_started"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f3

    goto/16 :goto_198

    .line 258
    :cond_f3
    const-string v8, "transcript"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12c

    .line 259
    iget-object v8, p0, Lcom/local/p5home/HookRuntime;->ownerLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_fe
    const-string v3, "requestId"

    const-string v6, ""

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/local/p5home/HookRuntime;->sessions:Lcom/local/p5home/HookSessions;

    .line 260
    invoke-static {v0}, Lcom/local/p5home/HookPolicy;->safeId(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11d

    if-nez v3, :cond_111

    goto :goto_11d

    .line 261
    :cond_111
    iget-object v4, p0, Lcom/local/p5home/HookRuntime;->transcript:Lcom/local/p5home/HookTranscript;

    new-instance v6, Lcom/local/p5home/HookRuntime$$ExternalSyntheticLambda7;

    invoke-direct {v6, p0, v2}, Lcom/local/p5home/HookRuntime$$ExternalSyntheticLambda7;-><init>(Lcom/local/p5home/HookRuntime;Ljava/lang/String;)V

    invoke-virtual {v3, v0, v5, v4, v6}, Lcom/local/p5home/HookSessions;->display(Ljava/lang/String;Ljava/lang/String;Lcom/local/p5home/HookTranscript;Lcom/local/p5home/HookSessions$Completion;)V

    monitor-exit v8

    return v1

    .line 260
    :cond_11d
    :goto_11d
    const-string v0, "TRANSCRIPT_OWNER_UNKNOWN"

    invoke-direct {p0, v2, v1, v0}, Lcom/local/p5home/HookRuntime;->finishReply(Ljava/lang/String;ZLjava/lang/String;)V

    const-string v0, "failed"

    invoke-direct {p0, v2, v0}, Lcom/local/p5home/HookRuntime;->ack(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v8

    return v4

    .line 262
    :catchall_129
    move-exception v0

    monitor-exit v8
    :try_end_12b
    .catchall {:try_start_fe .. :try_end_12b} :catchall_129

    throw v0

    .line 264
    :cond_12c
    const-string v0, "notice"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14c

    .line 265
    iget-object v0, p0, Lcom/local/p5home/HookRuntime;->main:Landroid/os/Handler;

    new-instance v3, Lcom/local/p5home/HookRuntime$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0, v5, v2}, Lcom/local/p5home/HookRuntime$$ExternalSyntheticLambda8;-><init>(Lcom/local/p5home/HookRuntime;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_14b

    const-string v0, "NOTICE_HANDLER_REJECTED"

    invoke-direct {p0, v2, v1, v0}, Lcom/local/p5home/HookRuntime;->finishReply(Ljava/lang/String;ZLjava/lang/String;)V

    const-string v0, "failed"

    invoke-direct {p0, v2, v0}, Lcom/local/p5home/HookRuntime;->ack(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    :cond_14b
    return v1

    .line 268
    :cond_14c
    nop

    .line 269
    :try_start_14d
    iget-object v0, p0, Lcom/local/p5home/HookRuntime;->bindings:Lcom/local/p5home/HookBindings;

    if-eqz v0, :cond_170

    const-string v0, "speech"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_160

    iget-object v0, p0, Lcom/local/p5home/HookRuntime;->bindings:Lcom/local/p5home/HookBindings;

    invoke-virtual {v0, v2, v5}, Lcom/local/p5home/HookBindings;->speak(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_166

    :cond_160
    iget-object v0, p0, Lcom/local/p5home/HookRuntime;->bindings:Lcom/local/p5home/HookBindings;

    invoke-virtual {v0, v3, v6, v7}, Lcom/local/p5home/HookBindings;->actor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_166
    .catch Ljava/lang/Exception; {:try_start_14d .. :try_end_166} :catch_16a
    .catch Ljava/lang/LinkageError; {:try_start_14d .. :try_end_166} :catch_168

    :goto_166
    move v1, v0

    goto :goto_170

    :catch_168
    move-exception v0

    goto :goto_16b

    :catch_16a
    move-exception v0

    :goto_16b
    const-string v0, "HOOK_REPLY_DISPATCH_FAILED"

    invoke-direct {p0, v0}, Lcom/local/p5home/HookRuntime;->log(Ljava/lang/String;)V

    .line 270
    :cond_170
    :goto_170
    if-eqz v1, :cond_175

    const-string v0, "REPLY_DISPATCHED"

    goto :goto_18a

    :cond_175
    const-string v0, "speech"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_188

    iget-object v0, p0, Lcom/local/p5home/HookRuntime;->bindings:Lcom/local/p5home/HookBindings;

    if-eqz v0, :cond_188

    iget-object v0, p0, Lcom/local/p5home/HookRuntime;->bindings:Lcom/local/p5home/HookBindings;

    invoke-virtual {v0}, Lcom/local/p5home/HookBindings;->ttsCode()Ljava/lang/String;

    move-result-object v0

    goto :goto_18a

    :cond_188
    const-string v0, "REPLY_DISPATCH_FAILED"

    :goto_18a
    invoke-direct {p0, v2, v1, v0}, Lcom/local/p5home/HookRuntime;->finishReply(Ljava/lang/String;ZLjava/lang/String;)V

    if-eqz v1, :cond_192

    const-string v0, "dispatched"

    goto :goto_194

    :cond_192
    const-string v0, "failed"

    :goto_194
    invoke-direct {p0, v2, v0}, Lcom/local/p5home/HookRuntime;->ack(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    .line 253
    :cond_198
    :goto_198
    iget-object v5, p0, Lcom/local/p5home/HookRuntime;->ownerLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_19b
    const-string v6, "requestId"

    const-string v7, ""

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/local/p5home/HookRuntime;->sessions:Lcom/local/p5home/HookSessions;

    .line 254
    invoke-static {v0}, Lcom/local/p5home/HookPolicy;->safeId(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1c4

    if-nez v6, :cond_1ae

    goto :goto_1c4

    .line 255
    :cond_1ae
    new-instance v4, Lcom/local/p5home/HookRuntime$$ExternalSyntheticLambda6;

    invoke-direct {v4, p0, v2}, Lcom/local/p5home/HookRuntime$$ExternalSyntheticLambda6;-><init>(Lcom/local/p5home/HookRuntime;Ljava/lang/String;)V

    .line 256
    const-string v2, "turn_started"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1bf

    invoke-virtual {v6, v0, v4}, Lcom/local/p5home/HookSessions;->started(Ljava/lang/String;Lcom/local/p5home/HookSessions$Completion;)V

    goto :goto_1c2

    :cond_1bf
    invoke-virtual {v6, v0, v4}, Lcom/local/p5home/HookSessions;->finish(Ljava/lang/String;Lcom/local/p5home/HookSessions$Completion;)V

    :goto_1c2
    monitor-exit v5

    return v1

    .line 254
    :cond_1c4
    :goto_1c4
    const-string v0, "SESSION_REPLY_UNKNOWN"

    invoke-direct {p0, v2, v1, v0}, Lcom/local/p5home/HookRuntime;->finishReply(Ljava/lang/String;ZLjava/lang/String;)V

    const-string v0, "failed"

    invoke-direct {p0, v2, v0}, Lcom/local/p5home/HookRuntime;->ack(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v5

    return v4

    .line 256
    :catchall_1d0
    move-exception v0

    monitor-exit v5
    :try_end_1d2
    .catchall {:try_start_19b .. :try_end_1d2} :catchall_1d0

    throw v0

    .line 247
    :cond_1d3
    :goto_1d3
    const-string v0, "REPLY_POLICY_REJECTED"

    invoke-direct {p0, v2, v1, v0}, Lcom/local/p5home/HookRuntime;->finishReply(Ljava/lang/String;ZLjava/lang/String;)V

    const-string v0, "failed"

    invoke-direct {p0, v2, v0}, Lcom/local/p5home/HookRuntime;->ack(Ljava/lang/String;Ljava/lang/String;)V

    return v4
.end method

.method private readConfig()Z
    .registers 25

    .line 201
    move-object/from16 v1, p0

    const/4 v2, 0x0

    :try_start_3
    const-string v0, "config"

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3}, Lcom/local/p5home/HookRuntime;->call(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 202
    if-eqz v0, :cond_f7

    const-string v3, "schema"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v15, 0x1

    if-ne v3, v15, :cond_f7

    const-string v3, "appVersion"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v15, :cond_f7

    .line 203
    new-instance v14, Lcom/local/p5home/HookPolicy$Config;

    const-string v3, "voiceEnabled"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string v3, "doubaoEnabled"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const-string v3, "hasApiConfig"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    const-string v3, "prefix"

    const-string v7, ""

    invoke-virtual {v0, v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v3, "navPackage"

    const-string v8, ""

    invoke-virtual {v0, v3, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v3, "speechOutputReady"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    const-string v3, "navAvailable"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    const-string v3, "oemMapAvailable"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    const-string v3, "navStage"

    const-string v15, "idle"

    invoke-virtual {v0, v3, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v3, "navEpoch"

    move/from16 v17, v12

    move/from16 v18, v13

    const-wide/16 v12, -0x1

    invoke-virtual {v0, v3, v12, v13}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v19

    const-string v3, "navPoiCount"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v21

    const-string v3, "navRouteCount"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v22

    move-object v3, v14

    move/from16 v12, v17

    move/from16 v13, v18

    move-object v2, v14

    move-object v14, v15

    const/16 v23, 0x1

    move-wide/from16 v15, v19

    move/from16 v17, v21

    move/from16 v18, v22

    invoke-direct/range {v3 .. v18}, Lcom/local/p5home/HookPolicy$Config;-><init>(ZZZLjava/lang/String;Ljava/lang/String;JZZZLjava/lang/String;JII)V

    iput-object v2, v1, Lcom/local/p5home/HookRuntime;->config:Lcom/local/p5home/HookPolicy$Config;

    .line 204
    const-string v2, "musicProvider"

    const-string v3, "system"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/local/p5home/HookRuntime;->musicProvider:Ljava/lang/String;

    const-string v2, "musicAvailable"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/local/p5home/HookRuntime;->musicAvailable:Z

    .line 205
    const-string v2, "modelWakeEnabled"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_bb

    iget-object v2, v1, Lcom/local/p5home/HookRuntime;->config:Lcom/local/p5home/HookPolicy$Config;

    iget-boolean v2, v2, Lcom/local/p5home/HookPolicy$Config;->voice:Z

    if-eqz v2, :cond_bb

    iget-object v2, v1, Lcom/local/p5home/HookRuntime;->config:Lcom/local/p5home/HookPolicy$Config;

    iget-boolean v2, v2, Lcom/local/p5home/HookPolicy$Config;->qa:Z

    if-eqz v2, :cond_bb

    iget-object v2, v1, Lcom/local/p5home/HookRuntime;->config:Lcom/local/p5home/HookPolicy$Config;

    iget-boolean v2, v2, Lcom/local/p5home/HookPolicy$Config;->hasApi:Z

    if-eqz v2, :cond_bb

    move/from16 v15, v23

    goto :goto_bc

    :cond_bb
    const/4 v15, 0x0

    :goto_bc
    iput-boolean v15, v1, Lcom/local/p5home/HookRuntime;->modelWakeAllowed:Z

    .line 206
    iget-boolean v2, v1, Lcom/local/p5home/HookRuntime;->modelWakeAllowed:Z

    if-nez v2, :cond_d1

    iget-object v2, v1, Lcom/local/p5home/HookRuntime;->wakeLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_c5} :catch_101
    .catch Ljava/lang/LinkageError; {:try_start_3 .. :try_end_c5} :catch_ff

    const/4 v3, 0x0

    :try_start_c6
    iput-boolean v3, v1, Lcom/local/p5home/HookRuntime;->modelWake:Z

    const-string v3, ""

    iput-object v3, v1, Lcom/local/p5home/HookRuntime;->modelWakeToken:Ljava/lang/String;

    monitor-exit v2

    goto :goto_d1

    :catchall_ce
    move-exception v0

    monitor-exit v2
    :try_end_d0
    .catchall {:try_start_c6 .. :try_end_d0} :catchall_ce

    :try_start_d0
    throw v0

    .line 207
    :cond_d1
    :goto_d1
    iget-object v2, v1, Lcom/local/p5home/HookRuntime;->wakeWords:Lcom/local/p5home/HookWakeWords;

    if-eqz v2, :cond_e2

    const-string v3, "modelWakeWords"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v3, v1, Lcom/local/p5home/HookRuntime;->modelWakeAllowed:Z

    invoke-virtual {v2, v0, v3}, Lcom/local/p5home/HookWakeWords;->update(Ljava/lang/String;Z)V

    .line 208
    :cond_e2
    iget-object v0, v1, Lcom/local/p5home/HookRuntime;->config:Lcom/local/p5home/HookPolicy$Config;

    iget-boolean v0, v0, Lcom/local/p5home/HookPolicy$Config;->voice:Z

    if-nez v0, :cond_f1

    iget-object v0, v1, Lcom/local/p5home/HookRuntime;->navTurn:Lcom/local/p5home/HookNavTurn;

    if-eqz v0, :cond_f1

    iget-object v0, v1, Lcom/local/p5home/HookRuntime;->navTurn:Lcom/local/p5home/HookNavTurn;

    invoke-virtual {v0}, Lcom/local/p5home/HookNavTurn;->disable()V

    :cond_f1
    const-string v0, "CONFIG_ACK"

    invoke-direct {v1, v0}, Lcom/local/p5home/HookRuntime;->log(Ljava/lang/String;)V

    return v23

    .line 202
    :cond_f7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "config_contract"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_ff
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_ff} :catch_101
    .catch Ljava/lang/LinkageError; {:try_start_d0 .. :try_end_ff} :catch_ff

    .line 209
    :catch_ff
    move-exception v0

    goto :goto_102

    :catch_101
    move-exception v0

    :goto_102
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/local/p5home/HookPolicy$Config;->disabled(J)Lcom/local/p5home/HookPolicy$Config;

    move-result-object v0

    iput-object v0, v1, Lcom/local/p5home/HookRuntime;->config:Lcom/local/p5home/HookPolicy$Config;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/local/p5home/HookRuntime;->musicAvailable:Z

    iput-boolean v2, v1, Lcom/local/p5home/HookRuntime;->modelWakeAllowed:Z

    iget-object v3, v1, Lcom/local/p5home/HookRuntime;->wakeLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_114
    iput-boolean v2, v1, Lcom/local/p5home/HookRuntime;->modelWake:Z

    const-string v0, ""

    iput-object v0, v1, Lcom/local/p5home/HookRuntime;->modelWakeToken:Ljava/lang/String;

    monitor-exit v3
    :try_end_11b
    .catchall {:try_start_114 .. :try_end_11b} :catchall_126

    iget-object v0, v1, Lcom/local/p5home/HookRuntime;->navTurn:Lcom/local/p5home/HookNavTurn;

    if-eqz v0, :cond_124

    iget-object v0, v1, Lcom/local/p5home/HookRuntime;->navTurn:Lcom/local/p5home/HookNavTurn;

    invoke-virtual {v0}, Lcom/local/p5home/HookNavTurn;->disable()V

    :cond_124
    const/4 v2, 0x0

    return v2

    :catchall_126
    move-exception v0

    :try_start_127
    monitor-exit v3
    :try_end_128
    .catchall {:try_start_127 .. :try_end_128} :catchall_126

    throw v0
.end method

.method private refresh()V
    .registers 4

    .line 218
    const/4 v0, 0x0

    :try_start_1
    iget-boolean v1, p0, Lcom/local/p5home/HookRuntime;->firmware:Z

    if-nez v1, :cond_b

    const-string v1, "HOOK_GUARD_REJECTED"

    invoke-direct {p0, v1}, Lcom/local/p5home/HookRuntime;->heartbeat(Ljava/lang/String;)V

    return-void

    .line 219
    :cond_b
    invoke-direct {p0}, Lcom/local/p5home/HookRuntime;->readConfig()Z

    move-result v1

    if-eqz v1, :cond_60

    .line 220
    iget-object v1, p0, Lcom/local/p5home/HookRuntime;->bindings:Lcom/local/p5home/HookBindings;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/local/p5home/HookRuntime;->bindings:Lcom/local/p5home/HookBindings;

    invoke-virtual {v1}, Lcom/local/p5home/HookBindings;->ttsReady()Z

    move-result v1

    if-eqz v1, :cond_1f

    const/4 v1, 0x1

    goto :goto_20

    :cond_1f
    move v1, v0

    :goto_20
    iput-boolean v1, p0, Lcom/local/p5home/HookRuntime;->tts:Z

    .line 221
    iget-boolean v1, p0, Lcom/local/p5home/HookRuntime;->tts:Z

    if-nez v1, :cond_33

    iget-object v1, p0, Lcom/local/p5home/HookRuntime;->bindings:Lcom/local/p5home/HookBindings;

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/local/p5home/HookRuntime;->bindings:Lcom/local/p5home/HookBindings;

    invoke-virtual {v1}, Lcom/local/p5home/HookBindings;->ttsCode()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/local/p5home/HookRuntime;->log(Ljava/lang/String;)V

    .line 222
    :cond_33
    iget-boolean v1, p0, Lcom/local/p5home/HookRuntime;->asrHook:Z

    if-eqz v1, :cond_4c

    iget-boolean v1, p0, Lcom/local/p5home/HookRuntime;->navHook:Z

    if-eqz v1, :cond_4c

    iget-boolean v1, p0, Lcom/local/p5home/HookRuntime;->tts:Z

    if-nez v1, :cond_49

    iget-object v1, p0, Lcom/local/p5home/HookRuntime;->config:Lcom/local/p5home/HookPolicy$Config;

    iget-boolean v1, v1, Lcom/local/p5home/HookPolicy$Config;->speechOutputReady:Z

    if-eqz v1, :cond_46

    goto :goto_49

    :cond_46
    const-string v1, "HOOK_TTS_WAIT"

    goto :goto_4e

    :cond_49
    :goto_49
    const-string v1, "HOOK_READY"

    goto :goto_4e

    :cond_4c
    const-string v1, "HOOK_PARTIAL"

    :goto_4e
    invoke-direct {p0, v1}, Lcom/local/p5home/HookRuntime;->heartbeat(Ljava/lang/String;)V

    .line 223
    move v1, v0

    :goto_52
    const/4 v2, 0x4

    if-ge v1, v2, :cond_5f

    invoke-direct {p0}, Lcom/local/p5home/HookRuntime;->pullReply()Z

    move-result v2

    if-nez v2, :cond_5c

    goto :goto_5f

    :cond_5c
    add-int/lit8 v1, v1, 0x1

    goto :goto_52

    .line 224
    :cond_5f
    :goto_5f
    goto :goto_7c

    .line 219
    :cond_60
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "config_contract"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_68} :catch_6a
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_68} :catch_68

    .line 224
    :catch_68
    move-exception v1

    goto :goto_6b

    :catch_6a
    move-exception v1

    :goto_6b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/local/p5home/HookPolicy$Config;->disabled(J)Lcom/local/p5home/HookPolicy$Config;

    move-result-object v1

    iput-object v1, p0, Lcom/local/p5home/HookRuntime;->config:Lcom/local/p5home/HookPolicy$Config;

    iput-boolean v0, p0, Lcom/local/p5home/HookRuntime;->tts:Z

    const-string v0, "HOOK_IPC_UNAVAILABLE"

    invoke-direct {p0, v0}, Lcom/local/p5home/HookRuntime;->log(Ljava/lang/String;)V

    .line 225
    :goto_7c
    return-void
.end method

.method private refreshSoon()V
    .registers 4

    .line 198
    iget-object v0, p0, Lcom/local/p5home/HookRuntime;->refreshQueued:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/local/p5home/HookRuntime;->worker:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/local/p5home/HookRuntime$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/local/p5home/HookRuntime$$ExternalSyntheticLambda2;-><init>(Lcom/local/p5home/HookRuntime;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_14
    return-void
.end method

.method private refused(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 196
    const-string v0, "qa"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object p1, p0, Lcom/local/p5home/HookRuntime;->qaRefused:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    iput-object p2, p0, Lcom/local/p5home/HookRuntime;->qaCode:Ljava/lang/String;

    goto :goto_27

    :cond_10
    const-string v0, "music"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    iget-object p1, p0, Lcom/local/p5home/HookRuntime;->musicRefused:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    iput-object p2, p0, Lcom/local/p5home/HookRuntime;->musicCode:Ljava/lang/String;

    goto :goto_27

    :cond_20
    iget-object p1, p0, Lcom/local/p5home/HookRuntime;->navRefused:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    iput-object p2, p0, Lcom/local/p5home/HookRuntime;->navCode:Ljava/lang/String;

    :goto_27
    invoke-direct {p0}, Lcom/local/p5home/HookRuntime;->diagnosticsSoon()V

    return-void
.end method

.method private retireNavigation()V
    .registers 6

    .line 212
    iget-object v0, p0, Lcom/local/p5home/HookRuntime;->config:Lcom/local/p5home/HookPolicy$Config;

    invoke-virtual {v0}, Lcom/local/p5home/HookPolicy$Config;->nativeNav()Z

    move-result v1

    if-nez v1, :cond_30

    iget-wide v1, v0, Lcom/local/p5home/HookPolicy$Config;->navEpoch:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_11

    goto :goto_30

    .line 213
    :cond_11
    iget-wide v1, v0, Lcom/local/p5home/HookPolicy$Config;->navEpoch:J

    iput-wide v1, p0, Lcom/local/p5home/HookRuntime;->retiredNavEpoch:J

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "navEpoch"

    iget-wide v3, v0, Lcom/local/p5home/HookPolicy$Config;->navEpoch:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 214
    :try_start_21
    const-string v0, "retire_nav"

    invoke-direct {p0, v0, v1}, Lcom/local/p5home/HookRuntime;->call(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_26} :catch_29
    .catch Ljava/lang/LinkageError; {:try_start_21 .. :try_end_26} :catch_27

    goto :goto_2f

    :catch_27
    move-exception v0

    goto :goto_2a

    :catch_29
    move-exception v0

    :goto_2a
    const-string v0, "NAV_RETIRE_IPC_FAILED"

    invoke-direct {p0, v0}, Lcom/local/p5home/HookRuntime;->log(Ljava/lang/String;)V

    .line 215
    :goto_2f
    return-void

    .line 212
    :cond_30
    :goto_30
    return-void
.end method

.method private routeAsr(Ljava/lang/Object;)Z
    .registers 26

    .line 103
    move-object/from16 v7, p0

    move-object/from16 v0, p1

    const-string v1, "text"

    const-string v2, ""

    iget-object v3, v7, Lcom/local/p5home/HookRuntime;->asrCalls:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 104
    iget-object v3, v7, Lcom/local/p5home/HookRuntime;->sessions:Lcom/local/p5home/HookSessions;

    if-eqz v3, :cond_14

    invoke-virtual {v3, v0}, Lcom/local/p5home/HookSessions;->observeAsr(Ljava/lang/Object;)V

    .line 105
    :cond_14
    iget-object v3, v7, Lcom/local/p5home/HookRuntime;->bindings:Lcom/local/p5home/HookBindings;

    iget-boolean v4, v7, Lcom/local/p5home/HookRuntime;->firmware:Z

    const/4 v8, 0x0

    if-eqz v4, :cond_283

    iget-boolean v4, v7, Lcom/local/p5home/HookRuntime;->asrHook:Z

    if-eqz v4, :cond_283

    if-nez v3, :cond_23

    goto/16 :goto_283

    .line 107
    :cond_23
    :try_start_23
    iget-object v3, v3, Lcom/local/p5home/HookBindings;->asrJson:Ljava/lang/reflect/Method;

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_279

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x2000

    if-le v3, v4, :cond_39

    goto/16 :goto_279

    .line 108
    :cond_39
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 109
    const-string v0, "isError"

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_5a

    const-string v0, "isShouldInterrupt"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_5a

    const-string v0, "isInterrupted"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_58

    goto :goto_5a

    :cond_58
    move v0, v8

    goto :goto_5b

    :cond_5a
    :goto_5a
    move v0, v4

    .line 110
    :goto_5b
    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 113
    iget-object v5, v7, Lcom/local/p5home/HookRuntime;->config:Lcom/local/p5home/HookPolicy$Config;

    iget-object v5, v5, Lcom/local/p5home/HookPolicy$Config;->prefix:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_78

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v7, Lcom/local/p5home/HookRuntime;->config:Lcom/local/p5home/HookPolicy$Config;

    iget-object v6, v6, Lcom/local/p5home/HookPolicy$Config;->prefix:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_78

    goto :goto_79

    :cond_78
    move v4, v8

    .line 114
    :goto_79
    if-eqz v4, :cond_7c

    return v8

    :cond_7c
    if-nez v0, :cond_8e

    invoke-direct/range {p0 .. p0}, Lcom/local/p5home/HookRuntime;->readConfig()Z

    move-result v5

    if-nez v5, :cond_8e

    iget-object v0, v7, Lcom/local/p5home/HookRuntime;->navTurn:Lcom/local/p5home/HookNavTurn;

    if-eqz v0, :cond_8d

    iget-object v0, v7, Lcom/local/p5home/HookRuntime;->navTurn:Lcom/local/p5home/HookNavTurn;

    invoke-virtual {v0}, Lcom/local/p5home/HookNavTurn;->disable()V

    :cond_8d
    return v8

    .line 115
    :cond_8e
    if-nez v0, :cond_a5

    iget-object v5, v7, Lcom/local/p5home/HookRuntime;->config:Lcom/local/p5home/HookPolicy$Config;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    invoke-virtual {v5, v11, v12}, Lcom/local/p5home/HookPolicy$Config;->active(J)Z

    move-result v5

    if-eqz v5, :cond_a5

    iget-boolean v5, v7, Lcom/local/p5home/HookRuntime;->musicAvailable:Z

    if-eqz v5, :cond_a5

    invoke-static {v10}, Lcom/local/p5home/MusicPolicy;->fromAsr(Ljava/lang/String;)Lcom/local/p5home/MusicPolicy$Song;

    move-result-object v5
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_a4} :catch_27c
    .catch Ljava/lang/LinkageError; {:try_start_23 .. :try_end_a4} :catch_27a

    goto :goto_a6

    :cond_a5
    const/4 v5, 0x0

    .line 116
    :goto_a6
    const-string v6, "kind"

    const-string v15, "recordId"

    const-string v13, "data"

    const-wide/16 v16, 0xbb8

    const-wide/32 v18, 0xea60

    if-eqz v5, :cond_10f

    .line 117
    :try_start_b3
    invoke-virtual {v3, v15, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    const-string v1, "music"

    invoke-virtual {v9, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/local/p5home/MusicPolicy$Song;->json()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v13, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "musicProvider"

    iget-object v2, v7, Lcom/local/p5home/HookRuntime;->musicProvider:Ljava/lang/String;

    invoke-virtual {v9, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "queuedAt"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v9, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "music-asr-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_ee

    invoke-virtual {v5}, Lcom/local/p5home/MusicPolicy$Song;->query()Ljava/lang/String;

    move-result-object v2

    goto :goto_ef

    :cond_ee
    move-object v2, v0

    :goto_ef
    invoke-static {v2}, Lcom/local/p5home/HookPolicy;->digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_104

    move-wide/from16 v3, v16

    goto :goto_106

    :cond_104
    move-wide/from16 v3, v18

    :goto_106
    const/4 v6, 0x1

    move-object/from16 v1, p0

    move-object v5, v9

    invoke-direct/range {v1 .. v6}, Lcom/local/p5home/HookRuntime;->submit(Ljava/lang/String;JLandroid/os/Bundle;Z)Z

    move-result v0

    return v0

    .line 120
    :cond_10f
    iget-object v9, v7, Lcom/local/p5home/HookRuntime;->config:Lcom/local/p5home/HookPolicy$Config;

    const/4 v11, 0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    invoke-direct/range {p0 .. p0}, Lcom/local/p5home/HookRuntime;->modelWakeForCurrentTurn()Z

    move-result v5

    move v12, v0

    move-object/from16 v22, v13

    move-wide/from16 v13, v20

    move-object/from16 v23, v15

    move v15, v5

    invoke-static/range {v9 .. v15}, Lcom/local/p5home/HookPolicy;->finalText(Lcom/local/p5home/HookPolicy$Config;Ljava/lang/String;ZZJZ)Lcom/local/p5home/HookPolicy$Candidate;

    move-result-object v5
    :try_end_126
    .catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_126} :catch_27c
    .catch Ljava/lang/LinkageError; {:try_start_b3 .. :try_end_126} :catch_27a

    .line 121
    const-string v9, "qa"

    if-nez v5, :cond_15e

    if-eqz v4, :cond_158

    if-eqz v0, :cond_131

    :try_start_12e
    const-string v0, "QA_INTERRUPTED"

    goto :goto_154

    :cond_131
    iget-object v0, v7, Lcom/local/p5home/HookRuntime;->config:Lcom/local/p5home/HookPolicy$Config;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/local/p5home/HookPolicy$Config;->active(J)Z

    move-result v0

    if-nez v0, :cond_140

    const-string v0, "QA_DISABLED_OR_STALE"

    goto :goto_154

    :cond_140
    iget-object v0, v7, Lcom/local/p5home/HookRuntime;->config:Lcom/local/p5home/HookPolicy$Config;

    iget-boolean v0, v0, Lcom/local/p5home/HookPolicy$Config;->qa:Z

    if-nez v0, :cond_149

    const-string v0, "QA_DISABLED"

    goto :goto_154

    :cond_149
    iget-object v0, v7, Lcom/local/p5home/HookRuntime;->config:Lcom/local/p5home/HookPolicy$Config;

    iget-boolean v0, v0, Lcom/local/p5home/HookPolicy$Config;->hasApi:Z

    if-nez v0, :cond_152

    const-string v0, "QA_API_MISSING"

    goto :goto_154

    :cond_152
    const-string v0, "QA_INPUT_REJECTED"

    :goto_154
    invoke-direct {v7, v9, v0}, Lcom/local/p5home/HookRuntime;->refused(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15d

    :cond_158
    if-nez v0, :cond_15d

    invoke-direct/range {p0 .. p0}, Lcom/local/p5home/HookRuntime;->retireNavigation()V

    :cond_15d
    :goto_15d
    return v8

    .line 122
    :cond_15e
    iget-object v0, v5, Lcom/local/p5home/HookPolicy$Candidate;->kind:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_176

    iget-boolean v0, v7, Lcom/local/p5home/HookRuntime;->tts:Z

    if-nez v0, :cond_176

    iget-object v0, v7, Lcom/local/p5home/HookRuntime;->config:Lcom/local/p5home/HookPolicy$Config;

    iget-boolean v0, v0, Lcom/local/p5home/HookPolicy$Config;->speechOutputReady:Z

    if-nez v0, :cond_176

    const-string v0, "QA_OUTPUT_NOT_READY"

    invoke-direct {v7, v9, v0}, Lcom/local/p5home/HookRuntime;->refused(Ljava/lang/String;Ljava/lang/String;)V

    return v8

    .line 123
    :cond_176
    const-string v0, "nav"

    iget-object v4, v5, Lcom/local/p5home/HookPolicy$Candidate;->kind:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_185

    iget-object v0, v7, Lcom/local/p5home/HookRuntime;->navCalls:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 124
    :cond_185
    move-object/from16 v0, v23

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "asr-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1b4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v5, Lcom/local/p5home/HookPolicy$Candidate;->kind:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u0000"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v5, Lcom/local/p5home/HookPolicy$Candidate;->text:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    goto :goto_1c3

    :cond_1b4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "record-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    :goto_1c3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/local/p5home/HookPolicy;->digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 125
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    iget-object v3, v5, Lcom/local/p5home/HookPolicy$Candidate;->kind:Ljava/lang/String;

    invoke-virtual {v10, v6, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v3, v5, Lcom/local/p5home/HookPolicy$Candidate;->kind:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1fe

    iget-object v3, v5, Lcom/local/p5home/HookPolicy$Candidate;->text:Ljava/lang/String;

    invoke-virtual {v10, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f3

    move-wide/from16 v3, v16

    goto :goto_1f5

    :cond_1f3
    move-wide/from16 v3, v18

    :goto_1f5
    const/4 v6, 0x1

    move-object/from16 v1, p0

    move-object v5, v10

    invoke-direct/range {v1 .. v6}, Lcom/local/p5home/HookRuntime;->submit(Ljava/lang/String;JLandroid/os/Bundle;Z)Z

    move-result v0

    return v0

    .line 127
    :cond_1fe
    const-string v1, "g3.asr.navigate"

    iget-object v3, v5, Lcom/local/p5home/HookPolicy$Candidate;->event:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_206
    .catch Ljava/lang/Exception; {:try_start_12e .. :try_end_206} :catch_27c
    .catch Ljava/lang/LinkageError; {:try_start_12e .. :try_end_206} :catch_27a

    const-string v3, "event"

    if-eqz v1, :cond_239

    .line 128
    :try_start_20a
    iget-object v1, v5, Lcom/local/p5home/HookPolicy$Candidate;->event:Ljava/lang/String;

    invoke-virtual {v10, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "query"

    iget-object v4, v5, Lcom/local/p5home/HookPolicy$Candidate;->text:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v4, v22

    invoke-virtual {v10, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_22e

    move-wide/from16 v3, v16

    goto :goto_230

    :cond_22e
    move-wide/from16 v3, v18

    :goto_230
    const/4 v6, 0x1

    move-object/from16 v1, p0

    move-object v5, v10

    invoke-direct/range {v1 .. v6}, Lcom/local/p5home/HookRuntime;->submit(Ljava/lang/String;JLandroid/os/Bundle;Z)Z

    move-result v0

    return v0

    .line 131
    :cond_239
    move-object/from16 v4, v22

    iget-object v1, v5, Lcom/local/p5home/HookPolicy$Candidate;->event:Ljava/lang/String;

    invoke-virtual {v10, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "action"

    iget-object v6, v5, Lcom/local/p5home/HookPolicy$Candidate;->text:Ljava/lang/String;

    invoke-virtual {v1, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "navEpoch"

    iget-wide v11, v5, Lcom/local/p5home/HookPolicy$Candidate;->navEpoch:J

    invoke-virtual {v1, v3, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget v3, v5, Lcom/local/p5home/HookPolicy$Candidate;->index:I

    if-lez v3, :cond_25e

    const-string v3, "index"

    iget v5, v5, Lcom/local/p5home/HookPolicy$Candidate;->index:I

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_25e
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26e

    move-wide/from16 v3, v16

    goto :goto_270

    :cond_26e
    move-wide/from16 v3, v18

    :goto_270
    const/4 v6, 0x1

    move-object/from16 v1, p0

    move-object v5, v10

    invoke-direct/range {v1 .. v6}, Lcom/local/p5home/HookRuntime;->submit(Ljava/lang/String;JLandroid/os/Bundle;Z)Z

    move-result v0
    :try_end_278
    .catch Ljava/lang/Exception; {:try_start_20a .. :try_end_278} :catch_27c
    .catch Ljava/lang/LinkageError; {:try_start_20a .. :try_end_278} :catch_27a

    return v0

    .line 107
    :cond_279
    :goto_279
    return v8

    .line 137
    :catch_27a
    move-exception v0

    goto :goto_27d

    :catch_27c
    move-exception v0

    :goto_27d
    const-string v0, "HOOK_ASR_PASSTHROUGH"

    invoke-direct {v7, v0}, Lcom/local/p5home/HookRuntime;->log(Ljava/lang/String;)V

    return v8

    .line 105
    :cond_283
    :goto_283
    return v8
.end method

.method private routeMusic(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 11

    .line 140
    iget-boolean v0, p0, Lcom/local/p5home/HookRuntime;->firmware:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_bb

    iget-object v0, p0, Lcom/local/p5home/HookRuntime;->music:Lcom/local/p5home/HookMusic;

    if-eqz v0, :cond_bb

    iget-object v0, p0, Lcom/local/p5home/HookRuntime;->sessions:Lcom/local/p5home/HookSessions;

    if-nez v0, :cond_f

    goto/16 :goto_bb

    .line 142
    :cond_f
    :try_start_f
    invoke-direct {p0}, Lcom/local/p5home/HookRuntime;->readConfig()Z

    move-result v0

    if-eqz v0, :cond_b1

    iget-object v0, p0, Lcom/local/p5home/HookRuntime;->config:Lcom/local/p5home/HookPolicy$Config;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/local/p5home/HookPolicy$Config;->active(J)Z

    move-result v0

    if-eqz v0, :cond_b1

    iget-boolean v0, p0, Lcom/local/p5home/HookRuntime;->musicAvailable:Z

    if-eqz v0, :cond_b1

    const-string v0, "system"

    iget-object v2, p0, Lcom/local/p5home/HookRuntime;->musicProvider:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    goto/16 :goto_b1

    .line 143
    :cond_31
    iget-object v0, p0, Lcom/local/p5home/HookRuntime;->sessions:Lcom/local/p5home/HookSessions;

    invoke-virtual {v0}, Lcom/local/p5home/HookSessions;->capture()Lcom/local/p5home/HookSessions$Snapshot;

    move-result-object v0

    if-eqz v0, :cond_b0

    iget-object v2, v0, Lcom/local/p5home/HookSessions$Snapshot;->context:Ljava/lang/Object;

    if-eq v2, p1, :cond_3e

    goto :goto_b0

    .line 144
    :cond_3e
    iget-object p1, p0, Lcom/local/p5home/HookRuntime;->music:Lcom/local/p5home/HookMusic;

    iget-object v2, v0, Lcom/local/p5home/HookSessions$Snapshot;->token:Ljava/lang/String;

    invoke-virtual {p1, p2, v2}, Lcom/local/p5home/HookMusic;->read(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_49

    return v1

    .line 145
    :cond_49
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string p2, "kind"

    const-string v2, "music"

    invoke-virtual {v6, p2, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "data"

    invoke-virtual {v6, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "musicProvider"

    iget-object v2, p0, Lcom/local/p5home/HookRuntime;->musicProvider:Ljava/lang/String;

    invoke-virtual {v6, p2, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "queuedAt"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v6, p2, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 146
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "music-"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-wide v2, v0, Lcom/local/p5home/HookSessions$Snapshot;->generation:J

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, "-"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/local/p5home/HookSessions$Snapshot;->token:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u0000"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/local/p5home/HookPolicy;->digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/32 v4, 0xea60

    const/4 v7, 0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/local/p5home/HookRuntime;->submit(Ljava/lang/String;JLandroid/os/Bundle;Z)Z

    move-result p1
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_af} :catch_b4
    .catch Ljava/lang/LinkageError; {:try_start_f .. :try_end_af} :catch_b2

    return p1

    .line 143
    :cond_b0
    :goto_b0
    return v1

    .line 142
    :cond_b1
    :goto_b1
    return v1

    .line 147
    :catch_b2
    move-exception p1

    goto :goto_b5

    :catch_b4
    move-exception p1

    :goto_b5
    const-string p1, "HOOK_MUSIC_PASSTHROUGH"

    invoke-direct {p0, p1}, Lcom/local/p5home/HookRuntime;->log(Ljava/lang/String;)V

    return v1

    .line 140
    :cond_bb
    :goto_bb
    return v1
.end method

.method private routeNav(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 16

    .line 165
    iget-object v0, p0, Lcom/local/p5home/HookRuntime;->busCalls:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    invoke-static {p1}, Lcom/local/p5home/HookPolicy;->canonicalNavigation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/local/p5home/HookRuntime;->navCalls:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 166
    :cond_10
    iget-boolean v0, p0, Lcom/local/p5home/HookRuntime;->firmware:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_f3

    iget-boolean v0, p0, Lcom/local/p5home/HookRuntime;->navHook:Z

    if-nez v0, :cond_1b

    goto/16 :goto_f3

    .line 167
    :cond_1b
    nop

    .line 169
    const-string v0, "PASS"

    const-string v2, "BUS"

    if-eqz p2, :cond_2b

    :try_start_22
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_29

    goto :goto_2b

    :cond_29
    move-object v3, p2

    goto :goto_2d

    :cond_2b
    :goto_2b
    const-string v3, "{}"

    .line 170
    :goto_2d
    iget-object v4, p0, Lcom/local/p5home/HookRuntime;->config:Lcom/local/p5home/HookPolicy$Config;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {v4, p1, v3, v5, v6}, Lcom/local/p5home/HookPolicy;->navigationEvent(Lcom/local/p5home/HookPolicy$Config;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v4
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_37} :catch_df
    .catch Ljava/lang/LinkageError; {:try_start_22 .. :try_end_37} :catch_dd
    .catchall {:try_start_22 .. :try_end_37} :catchall_db

    const-string v5, "nav"

    if-nez v4, :cond_66

    :try_start_3b
    invoke-static {p1}, Lcom/local/p5home/HookPolicy;->canonicalNavigation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_60

    iget-object v3, p0, Lcom/local/p5home/HookRuntime;->config:Lcom/local/p5home/HookPolicy$Config;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/local/p5home/HookPolicy$Config;->active(J)Z

    move-result v3

    if-nez v3, :cond_50

    const-string v3, "NAV_DISABLED_OR_STALE"

    goto :goto_5d

    :cond_50
    iget-object v3, p0, Lcom/local/p5home/HookRuntime;->config:Lcom/local/p5home/HookPolicy$Config;

    invoke-virtual {v3}, Lcom/local/p5home/HookPolicy$Config;->nativeNav()Z

    move-result v3

    if-eqz v3, :cond_5b

    const-string v3, "NAV_NATIVE_PASSTHROUGH"

    goto :goto_5d

    :cond_5b
    const-string v3, "NAV_INPUT_REJECTED"

    :goto_5d
    invoke-direct {p0, v5, v3}, Lcom/local/p5home/HookRuntime;->refused(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_60} :catch_df
    .catch Ljava/lang/LinkageError; {:try_start_3b .. :try_end_60} :catch_dd
    .catchall {:try_start_3b .. :try_end_60} :catchall_db

    .line 177
    :cond_60
    iget-object v3, p0, Lcom/local/p5home/HookRuntime;->navTrace:Lcom/local/p5home/NavTrace;

    invoke-virtual {v3, v2, p1, p2, v0}, Lcom/local/p5home/NavTrace;->observe(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    return v1

    .line 171
    :cond_66
    :try_start_66
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 172
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    const-string v6, "kind"

    invoke-virtual {v11, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "event"

    invoke-virtual {v11, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "data"

    invoke-virtual {v11, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v5, "command://navi.control.close"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9a

    const-string v5, "command://navi.control.start"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9a

    const-string v5, "native://navi.poi.search"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_98

    goto :goto_9a

    :cond_98
    move v12, v1

    goto :goto_9c

    :cond_9a
    :goto_9a
    const/4 v5, 0x1

    move v12, v5

    .line 174
    :goto_9c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "nav-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\u0000"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/local/p5home/HookPolicy;->digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-wide/16 v9, 0x320

    move-object v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/local/p5home/HookRuntime;->submit(Ljava/lang/String;JLandroid/os/Bundle;Z)Z

    move-result v3

    .line 175
    if-eqz v3, :cond_d5

    const-string v0, "ACK"
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_d5} :catch_df
    .catch Ljava/lang/LinkageError; {:try_start_66 .. :try_end_d5} :catch_dd
    .catchall {:try_start_66 .. :try_end_d5} :catchall_db

    .line 177
    :cond_d5
    iget-object v1, p0, Lcom/local/p5home/HookRuntime;->navTrace:Lcom/local/p5home/NavTrace;

    invoke-virtual {v1, v2, p1, p2, v0}, Lcom/local/p5home/NavTrace;->observe(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    return v3

    .line 177
    :catchall_db
    move-exception v1

    goto :goto_ed

    .line 176
    :catch_dd
    move-exception v3

    goto :goto_e0

    :catch_df
    move-exception v3

    :goto_e0
    :try_start_e0
    const-string v0, "ERROR"

    const-string v3, "HOOK_NAV_PASSTHROUGH"

    invoke-direct {p0, v3}, Lcom/local/p5home/HookRuntime;->log(Ljava/lang/String;)V
    :try_end_e7
    .catchall {:try_start_e0 .. :try_end_e7} :catchall_db

    .line 177
    iget-object v3, p0, Lcom/local/p5home/HookRuntime;->navTrace:Lcom/local/p5home/NavTrace;

    invoke-virtual {v3, v2, p1, p2, v0}, Lcom/local/p5home/NavTrace;->observe(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    return v1

    .line 177
    :goto_ed
    iget-object v3, p0, Lcom/local/p5home/HookRuntime;->navTrace:Lcom/local/p5home/NavTrace;

    invoke-virtual {v3, v2, p1, p2, v0}, Lcom/local/p5home/NavTrace;->observe(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 166
    :cond_f3
    :goto_f3
    return v1
.end method

.method private submit(Ljava/lang/String;JLandroid/os/Bundle;Z)Z
    .registers 14

    .line 183
    iget-object v0, p0, Lcom/local/p5home/HookRuntime;->ownerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/local/p5home/HookRuntime;->accepted:Lcom/local/p5home/HookPolicy$Accepted;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    new-instance v7, Lcom/local/p5home/HookRuntime$$ExternalSyntheticLambda3;

    invoke-direct {v7, p0, p4, p5}, Lcom/local/p5home/HookRuntime$$ExternalSyntheticLambda3;-><init>(Lcom/local/p5home/HookRuntime;Landroid/os/Bundle;Z)V

    move-object v2, p1

    move-wide v5, p2

    invoke-virtual/range {v1 .. v7}, Lcom/local/p5home/HookPolicy$Accepted;->submit(Ljava/lang/String;JJLcom/local/p5home/HookPolicy$Submit;)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 194
    :catchall_16
    move-exception p1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p1
.end method

.method private traceNativePoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/local/p5home/HookRuntime;->loader:Ljava/lang/ClassLoader;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const-class v1, Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p1, p2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 93
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_26

    return-void

    .line 94
    :cond_26
    invoke-virtual {p1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 95
    new-instance p2, Lcom/local/p5home/HookRuntime$5;

    invoke-direct {p2, p0, p4}, Lcom/local/p5home/HookRuntime$5;-><init>(Lcom/local/p5home/HookRuntime;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 99
    iget p1, p0, Lcom/local/p5home/HookRuntime;->navTraceHooks:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/local/p5home/HookRuntime;->navTraceHooks:I
    :try_end_36
    .catchall {:try_start_0 .. :try_end_36} :catchall_37

    goto :goto_38

    .line 100
    :catchall_37
    move-exception p1

    :goto_38
    nop

    .line 101
    return-void
.end method


# virtual methods
.method synthetic lambda$install$2$com-local-g3home-HookRuntime()Z
    .registers 4

    .line 80
    iget-object v0, p0, Lcom/local/p5home/HookRuntime;->config:Lcom/local/p5home/HookPolicy$Config;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/local/p5home/HookPolicy$Config;->active(J)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {v0}, Lcom/local/p5home/HookPolicy$Config;->nativeNav()Z

    move-result v1

    if-nez v1, :cond_18

    iget-boolean v0, v0, Lcom/local/p5home/HookPolicy$Config;->navAvailable:Z

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method synthetic lambda$install$3$com-local-g3home-HookRuntime(Ljava/lang/String;)V
    .registers 2

    .line 80
    iput-object p1, p0, Lcom/local/p5home/HookRuntime;->navCode:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/local/p5home/HookRuntime;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/local/p5home/HookRuntime;->diagnosticsSoon()V

    return-void
.end method

.method synthetic lambda$pullReply$7$com-local-g3home-HookRuntime(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 4

    .line 255
    invoke-direct {p0, p1, p2, p3}, Lcom/local/p5home/HookRuntime;->finishReply(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-direct {p0}, Lcom/local/p5home/HookRuntime;->diagnosticsSoon()V

    return-void
.end method

.method synthetic lambda$pullReply$8$com-local-g3home-HookRuntime(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 4

    .line 261
    invoke-direct {p0, p1, p2, p3}, Lcom/local/p5home/HookRuntime;->finishReply(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-direct {p0}, Lcom/local/p5home/HookRuntime;->diagnosticsSoon()V

    return-void
.end method

.method synthetic lambda$pullReply$9$com-local-g3home-HookRuntime(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 265
    :try_start_0
    iget-object v0, p0, Lcom/local/p5home/HookRuntime;->app:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_d

    :catch_b
    move-exception p1

    const/4 v1, 0x0

    :goto_d
    if-eqz v1, :cond_12

    const-string p1, "NOTICE_DISPATCHED"

    goto :goto_14

    :cond_12
    const-string p1, "NOTICE_FAILED"

    :goto_14
    invoke-direct {p0, p2, v1, p1}, Lcom/local/p5home/HookRuntime;->finishReply(Ljava/lang/String;ZLjava/lang/String;)V

    invoke-direct {p0}, Lcom/local/p5home/HookRuntime;->refreshSoon()V

    return-void
.end method

.method synthetic lambda$refreshSoon$6$com-local-g3home-HookRuntime()V
    .registers 3

    .line 198
    iget-object v0, p0, Lcom/local/p5home/HookRuntime;->refreshQueued:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0}, Lcom/local/p5home/HookRuntime;->refresh()V

    return-void
.end method

.method synthetic lambda$start$1$com-local-g3home-HookRuntime()V
    .registers 9

    .line 56
    const-string v0, "WORKER_STARTED"

    invoke-direct {p0, v0}, Lcom/local/p5home/HookRuntime;->log(Ljava/lang/String;)V

    .line 57
    invoke-direct {p0}, Lcom/local/p5home/HookRuntime;->guard()Z

    move-result v0

    iput-boolean v0, p0, Lcom/local/p5home/HookRuntime;->firmware:Z

    .line 58
    iget-boolean v0, p0, Lcom/local/p5home/HookRuntime;->firmware:Z

    if-eqz v0, :cond_4d

    :try_start_f
    const-string v0, "GUARD_PASSED"

    invoke-direct {p0, v0}, Lcom/local/p5home/HookRuntime;->log(Ljava/lang/String;)V

    new-instance v0, Lcom/local/p5home/HookBindings;

    iget-object v1, p0, Lcom/local/p5home/HookRuntime;->loader:Ljava/lang/ClassLoader;

    invoke-direct {v0, v1}, Lcom/local/p5home/HookBindings;-><init>(Ljava/lang/ClassLoader;)V

    iput-object v0, p0, Lcom/local/p5home/HookRuntime;->bindings:Lcom/local/p5home/HookBindings;

    const-string v0, "CONTRACT_MATCHED"

    invoke-direct {p0, v0}, Lcom/local/p5home/HookRuntime;->log(Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_22} :catch_43
    .catch Ljava/lang/LinkageError; {:try_start_f .. :try_end_22} :catch_41

    :try_start_22
    new-instance v0, Lcom/local/p5home/HookSessions;

    iget-object v1, p0, Lcom/local/p5home/HookRuntime;->loader:Ljava/lang/ClassLoader;

    invoke-direct {v0, v1}, Lcom/local/p5home/HookSessions;-><init>(Ljava/lang/ClassLoader;)V

    iput-object v0, p0, Lcom/local/p5home/HookRuntime;->sessions:Lcom/local/p5home/HookSessions;

    const-string v0, "SESSION_CONTRACT_MATCHED"

    invoke-direct {p0, v0}, Lcom/local/p5home/HookRuntime;->log(Ljava/lang/String;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_30} :catch_33
    .catch Ljava/lang/LinkageError; {:try_start_22 .. :try_end_30} :catch_31

    goto :goto_3d

    :catch_31
    move-exception v0

    goto :goto_34

    :catch_33
    move-exception v0

    :goto_34
    :try_start_34
    const-string v0, "SESSION_INTERFACE_MISSING"

    iput-object v0, p0, Lcom/local/p5home/HookRuntime;->sessionCode:Ljava/lang/String;

    iget-object v0, p0, Lcom/local/p5home/HookRuntime;->sessionCode:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/local/p5home/HookRuntime;->log(Ljava/lang/String;)V

    :goto_3d
    invoke-direct {p0}, Lcom/local/p5home/HookRuntime;->install()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_40} :catch_43
    .catch Ljava/lang/LinkageError; {:try_start_34 .. :try_end_40} :catch_41

    goto :goto_52

    :catch_41
    move-exception v0

    goto :goto_44

    :catch_43
    move-exception v0

    :goto_44
    const-string v0, "HOOK_CONTRACT_UNAVAILABLE"

    invoke-direct {p0, v0}, Lcom/local/p5home/HookRuntime;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/local/p5home/HookRuntime;->install()V

    goto :goto_52

    .line 59
    :cond_4d
    const-string v0, "HOOK_GUARD_REJECTED"

    invoke-direct {p0, v0}, Lcom/local/p5home/HookRuntime;->log(Ljava/lang/String;)V

    .line 60
    :goto_52
    iget-boolean v0, p0, Lcom/local/p5home/HookRuntime;->firmware:Z

    if-eqz v0, :cond_95

    .line 61
    new-instance v0, Lcom/local/p5home/HookRuntime$1;

    iget-object v1, p0, Lcom/local/p5home/HookRuntime;->main:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/local/p5home/HookRuntime$1;-><init>(Lcom/local/p5home/HookRuntime;Landroid/os/Handler;)V

    .line 62
    :try_start_5d
    iget-object v1, p0, Lcom/local/p5home/HookRuntime;->app:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/local/p5home/HookRuntime;->BASE:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "config"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/local/p5home/HookRuntime;->app:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "events"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_8e} :catch_8f

    goto :goto_95

    :catch_8f
    move-exception v0

    const-string v0, "HOOK_OBSERVER_UNAVAILABLE"

    invoke-direct {p0, v0}, Lcom/local/p5home/HookRuntime;->log(Ljava/lang/String;)V

    .line 64
    :cond_95
    :goto_95
    invoke-direct {p0}, Lcom/local/p5home/HookRuntime;->refresh()V

    iget-object v1, p0, Lcom/local/p5home/HookRuntime;->worker:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/local/p5home/HookRuntime$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/local/p5home/HookRuntime$$ExternalSyntheticLambda1;-><init>(Lcom/local/p5home/HookRuntime;)V

    const-wide/16 v3, 0x5

    const-wide/16 v5, 0x5

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 65
    return-void
.end method

.method synthetic lambda$submit$4$com-local-g3home-HookRuntime(ZLjava/lang/String;)V
    .registers 3

    .line 192
    iput-object p2, p0, Lcom/local/p5home/HookRuntime;->sessionCode:Ljava/lang/String;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/local/p5home/HookRuntime;->sessionEnded:Ljava/util/concurrent/atomic/AtomicLong;

    goto :goto_9

    :cond_7
    iget-object p1, p0, Lcom/local/p5home/HookRuntime;->sessionEndFailed:Ljava/util/concurrent/atomic/AtomicLong;

    :goto_9
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    invoke-direct {p0, p2}, Lcom/local/p5home/HookRuntime;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/local/p5home/HookRuntime;->diagnosticsSoon()V

    return-void
.end method

.method synthetic lambda$submit$5$com-local-g3home-HookRuntime(Landroid/os/Bundle;Z)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 184
    const-string v0, "kind"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/local/p5home/HookRuntime;->sessions:Lcom/local/p5home/HookSessions;

    .line 185
    const-string v2, "music"

    const-string v3, "qa"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p2, :cond_28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_26

    const-string p2, "nav"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_28

    :cond_26
    move p2, v4

    goto :goto_29

    :cond_28
    move p2, v5

    .line 186
    :goto_29
    const-string v6, "externalTurn"

    invoke-virtual {p1, v6, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 187
    if-eqz p2, :cond_4a

    if-nez v1, :cond_38

    const-string p1, "SESSION_INTERFACE_MISSING"

    :goto_34
    invoke-direct {p0, v0, p1}, Lcom/local/p5home/HookRuntime;->refused(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_38
    invoke-virtual {v1}, Lcom/local/p5home/HookSessions;->capture()Lcom/local/p5home/HookSessions$Snapshot;

    move-result-object v6

    if-nez v6, :cond_41

    const-string p1, "SESSION_NOT_ACTIVE"

    goto :goto_34

    :cond_41
    invoke-virtual {v1, v6}, Lcom/local/p5home/HookSessions;->externalReady(Lcom/local/p5home/HookSessions$Snapshot;)Z

    move-result v7

    if-nez v7, :cond_4b

    const-string p1, "SOLO_UNSUPPORTED"

    goto :goto_34

    :cond_4a
    const/4 v6, 0x0

    .line 188
    :cond_4b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "g3-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/local/p5home/HookRuntime;->epoch:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/local/p5home/HookRuntime;->sequence:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "requestId"

    invoke-virtual {p1, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :try_start_81
    const-string v8, "submit"

    invoke-direct {p0, v8, p1}, Lcom/local/p5home/HookRuntime;->call(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_87} :catch_e0

    .line 190
    if-eqz p1, :cond_d5

    const-string v8, "accepted"

    invoke-virtual {p1, v8, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_92

    goto :goto_d5

    .line 191
    :cond_92
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a2

    iget-object p1, p0, Lcom/local/p5home/HookRuntime;->qaAccepted:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    const-string p1, "QA_ACCEPTED"

    iput-object p1, p0, Lcom/local/p5home/HookRuntime;->qaCode:Ljava/lang/String;

    goto :goto_bb

    :cond_a2
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b2

    iget-object p1, p0, Lcom/local/p5home/HookRuntime;->musicAccepted:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    const-string p1, "MUSIC_ACCEPTED"

    iput-object p1, p0, Lcom/local/p5home/HookRuntime;->musicCode:Ljava/lang/String;

    goto :goto_bb

    :cond_b2
    iget-object p1, p0, Lcom/local/p5home/HookRuntime;->navAccepted:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    const-string p1, "NAV_ACCEPTED"

    iput-object p1, p0, Lcom/local/p5home/HookRuntime;->navCode:Ljava/lang/String;

    .line 192
    :goto_bb
    if-eqz p2, :cond_d1

    invoke-virtual {v1, v7, v6, v4}, Lcom/local/p5home/HookSessions;->accept(Ljava/lang/String;Lcom/local/p5home/HookSessions$Snapshot;Z)V

    iget-object p1, p0, Lcom/local/p5home/HookRuntime;->sessionEndRequests:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    const-string p1, "SESSION_END_REQUESTED"

    iput-object p1, p0, Lcom/local/p5home/HookRuntime;->sessionCode:Ljava/lang/String;

    new-instance p1, Lcom/local/p5home/HookRuntime$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lcom/local/p5home/HookRuntime$$ExternalSyntheticLambda4;-><init>(Lcom/local/p5home/HookRuntime;)V

    invoke-virtual {v1, v7, p1}, Lcom/local/p5home/HookSessions;->begin(Ljava/lang/String;Lcom/local/p5home/HookSessions$Completion;)V

    .line 193
    :cond_d1
    invoke-direct {p0}, Lcom/local/p5home/HookRuntime;->diagnosticsSoon()V

    return v4

    .line 190
    :cond_d5
    :goto_d5
    if-nez p1, :cond_da

    const-string p1, "ACK_MISSING"

    goto :goto_dc

    :cond_da
    const-string p1, "ACK_REFUSED"

    :goto_dc
    invoke-direct {p0, v0, p1}, Lcom/local/p5home/HookRuntime;->refused(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    .line 189
    :catch_e0
    move-exception p1

    const-string p1, "ACK_IPC_EXCEPTION"

    invoke-direct {p0, v0, p1}, Lcom/local/p5home/HookRuntime;->refused(Ljava/lang/String;Ljava/lang/String;)V

    return v5
.end method

.method start()V
    .registers 3

    .line 55
    const-string v0, "RUNTIME_START_REQUESTED"

    invoke-direct {p0, v0}, Lcom/local/p5home/HookRuntime;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/local/p5home/HookRuntime;->worker:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/local/p5home/HookRuntime$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/local/p5home/HookRuntime$$ExternalSyntheticLambda0;-><init>(Lcom/local/p5home/HookRuntime;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 65
    return-void
.end method

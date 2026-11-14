.class public final Lcom/local/p5home/P5SpeechBridge;
.super Ljava/lang/Object;
.source "P5SpeechBridge.java"


# static fields
.field private static final BRIDGE:Landroid/net/Uri;

.field private static final SPEECH_APK:Ljava/lang/String; = "a9a2fb27edb76f6ed0c171b4db662f36d7cd2c3224cb6f6270f90d093eb68e5f"


# instance fields
.field private final app:Landroid/content/Context;

.field private volatile appliedWakeWords:Ljava/lang/String;

.field private volatile armedAt:J

.field private volatile asrCalls:J

.field private asrJson:Ljava/lang/reflect/Method;

.field private changeWakeWords:Ljava/lang/reflect/Method;

.field private volatile customPinyins:[Ljava/lang/String;

.field private volatile customTexts:[Ljava/lang/String;

.field private customWake:Ljava/lang/reflect/Method;

.field private customWakeData:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private volatile customWakeUseNative:Z

.field private dmContextField:Ljava/lang/reflect/Field;

.field private volatile enabled:Z

.field private engineField:Ljava/lang/reflect/Field;

.field private lastMusicAt:J

.field private lastMusicRecordId:Ljava/lang/String;

.field private volatile lastNavAt:J

.field private volatile lastNavRecordId:Ljava/lang/String;

.field private lastRecordId:Ljava/lang/String;

.field private lastSubmittedAt:J

.field private lastWakeAt:J

.field private final loader:Ljava/lang/ClassLoader;

.field private volatile musicAvailable:Z

.field private volatile musicProvider:Ljava/lang/String;

.field private volatile navAvailable:Z

.field private volatile navPackage:Ljava/lang/String;

.field private volatile ownedNluContext:Ljava/lang/Object;

.field private volatile ownedNluUntil:J

.field private volatile prefix:Ljava/lang/String;

.field private volatile primaryPinyin:Ljava/lang/String;

.field private volatile primaryText:Ljava/lang/String;

.field private volatile qaAccepted:J

.field private volatile qaCode:Ljava/lang/String;

.field private volatile qaRefused:J

.field private sdkDmField:Ljava/lang/reflect/Field;

.field private sdkField:Ljava/lang/reflect/Field;

.field private volatile sessionCode:Ljava/lang/String;

.field private singleton:Ljava/lang/reflect/Method;

.field private speechConfigGet:Ljava/lang/reflect/Method;

.field private speechConfigInstance:Ljava/lang/reflect/Method;

.field private speechConfigSet:Ljava/lang/reflect/Method;

.field private stopDialog:Ljava/lang/reflect/Method;

.field private submittedNavTurn:J

.field private submittedTurn:J

.field private final turnLock:Ljava/lang/Object;

.field private turnNumber:J

.field private volatile voiceRouting:Z

.field private wakeAllowed:Ljava/lang/reflect/Field;

.field private wakeCode:Ljava/lang/reflect/Method;

.field private wakeCount:Ljava/lang/reflect/Method;

.field private wakeHelperField:Ljava/lang/reflect/Field;

.field private volatile wakeHits:J

.field private wakeReason:Ljava/lang/reflect/Field;

.field private volatile wakeRoutingActive:Z

.field private wakeUpdate:Ljava/lang/reflect/Method;

.field private wakeWord:Ljava/lang/reflect/Field;

.field private wakeWords:Ljava/lang/Object;

.field private final worker:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-string v0, "content://com.local.p5home.bridge"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/local/p5home/P5SpeechBridge;->BRIDGE:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/ClassLoader;)V
    .locals 4

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/local/p5home/P5SpeechBridge;->worker:Ljava/util/concurrent/ScheduledExecutorService;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/local/p5home/P5SpeechBridge;->appliedWakeWords:Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/local/p5home/P5SpeechBridge;->turnLock:Ljava/lang/Object;

    .line 62
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/local/p5home/P5SpeechBridge;->submittedTurn:J

    .line 63
    const-string v2, ""

    iput-object v2, p0, Lcom/local/p5home/P5SpeechBridge;->lastRecordId:Ljava/lang/String;

    .line 68
    const-string v2, ""

    iput-object v2, p0, Lcom/local/p5home/P5SpeechBridge;->navPackage:Ljava/lang/String;

    .line 69
    const-string v2, "system"

    iput-object v2, p0, Lcom/local/p5home/P5SpeechBridge;->musicProvider:Ljava/lang/String;

    .line 71
    const-string v2, ""

    iput-object v2, p0, Lcom/local/p5home/P5SpeechBridge;->lastMusicRecordId:Ljava/lang/String;

    .line 75
    const-string v2, ""

    iput-object v2, p0, Lcom/local/p5home/P5SpeechBridge;->prefix:Ljava/lang/String;

    .line 76
    const-string v2, ""

    iput-object v2, p0, Lcom/local/p5home/P5SpeechBridge;->primaryText:Ljava/lang/String;

    .line 77
    const-string v2, ""

    iput-object v2, p0, Lcom/local/p5home/P5SpeechBridge;->primaryPinyin:Ljava/lang/String;

    .line 78
    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcom/local/p5home/P5SpeechBridge;->customTexts:[Ljava/lang/String;

    .line 79
    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/local/p5home/P5SpeechBridge;->customPinyins:[Ljava/lang/String;

    .line 80
    const-string v2, "QA_IDLE"

    iput-object v2, p0, Lcom/local/p5home/P5SpeechBridge;->qaCode:Ljava/lang/String;

    .line 81
    const-string v2, "SESSION_IDLE"

    iput-object v2, p0, Lcom/local/p5home/P5SpeechBridge;->sessionCode:Ljava/lang/String;

    .line 86
    const-string v2, ""

    iput-object v2, p0, Lcom/local/p5home/P5SpeechBridge;->lastNavRecordId:Ljava/lang/String;

    .line 88
    iput-wide v0, p0, Lcom/local/p5home/P5SpeechBridge;->submittedNavTurn:J

    .line 91
    iput-object p1, p0, Lcom/local/p5home/P5SpeechBridge;->app:Landroid/content/Context;

    .line 92
    iput-object p2, p0, Lcom/local/p5home/P5SpeechBridge;->loader:Ljava/lang/ClassLoader;

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/local/p5home/P5SpeechBridge;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Lcom/local/p5home/P5SpeechBridge;->trustedCode()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-static {p0}, Lcom/local/p5home/P5SpeechBridge;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/local/p5home/P5SpeechBridge;)Ljava/lang/reflect/Field;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/local/p5home/P5SpeechBridge;->wakeReason:Ljava/lang/reflect/Field;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/local/p5home/P5SpeechBridge;)Ljava/lang/reflect/Field;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/local/p5home/P5SpeechBridge;->wakeWord:Ljava/lang/reflect/Field;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/local/p5home/P5SpeechBridge;Ljava/lang/String;)Z
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/local/p5home/P5SpeechBridge;->isCustomWord(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/local/p5home/P5SpeechBridge;)Z
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/local/p5home/P5SpeechBridge;->modelReplyActive()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/local/p5home/P5SpeechBridge;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/local/p5home/P5SpeechBridge;->wakeRoutingActive:Z

    return p0
.end method

.method static synthetic access$1500(Lcom/local/p5home/P5SpeechBridge;)Ljava/lang/Object;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/local/p5home/P5SpeechBridge;->turnLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1608(Lcom/local/p5home/P5SpeechBridge;)J
    .locals 4

    .line 28
    iget-wide v0, p0, Lcom/local/p5home/P5SpeechBridge;->turnNumber:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/local/p5home/P5SpeechBridge;->turnNumber:J

    return-wide v0
.end method

.method static synthetic access$1700(Lcom/local/p5home/P5SpeechBridge;)J
    .locals 2

    .line 28
    iget-wide v0, p0, Lcom/local/p5home/P5SpeechBridge;->lastWakeAt:J

    return-wide v0
.end method

.method static synthetic access$1702(Lcom/local/p5home/P5SpeechBridge;J)J
    .locals 0

    .line 28
    iput-wide p1, p0, Lcom/local/p5home/P5SpeechBridge;->lastWakeAt:J

    return-wide p1
.end method

.method static synthetic access$1800(Lcom/local/p5home/P5SpeechBridge;Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/local/p5home/P5SpeechBridge;->onAsr(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/local/p5home/P5SpeechBridge;)Ljava/lang/Object;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/local/p5home/P5SpeechBridge;->ownedNluContext:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$200(Lcom/local/p5home/P5SpeechBridge;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Lcom/local/p5home/P5SpeechBridge;->install()V

    return-void
.end method

.method static synthetic access$2000(Lcom/local/p5home/P5SpeechBridge;)J
    .locals 2

    .line 28
    iget-wide v0, p0, Lcom/local/p5home/P5SpeechBridge;->ownedNluUntil:J

    return-wide v0
.end method

.method static synthetic access$2100(Lcom/local/p5home/P5SpeechBridge;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Lcom/local/p5home/P5SpeechBridge;->engine()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2200(Lcom/local/p5home/P5SpeechBridge;)Ljava/lang/reflect/Field;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/local/p5home/P5SpeechBridge;->wakeHelperField:Ljava/lang/reflect/Field;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/local/p5home/P5SpeechBridge;)Ljava/lang/reflect/Method;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/local/p5home/P5SpeechBridge;->changeWakeWords:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method static synthetic access$2400(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 28
    invoke-static {p0, p1, p2}, Lcom/local/p5home/P5SpeechBridge;->method(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2500(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 28
    invoke-static {p0, p1, p2}, Lcom/local/p5home/P5SpeechBridge;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2600(Lcom/local/p5home/P5SpeechBridge;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1}, Lcom/local/p5home/P5SpeechBridge;->registerSpeechAgentWords(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/local/p5home/P5SpeechBridge;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Lcom/local/p5home/P5SpeechBridge;->restoreFactoryCloudWake()V

    return-void
.end method

.method static synthetic access$2800(Lcom/local/p5home/P5SpeechBridge;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/local/p5home/P5SpeechBridge;->heartbeat()V

    return-void
.end method

.method static synthetic access$300(Lcom/local/p5home/P5SpeechBridge;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/local/p5home/P5SpeechBridge;->refresh()V

    return-void
.end method

.method static synthetic access$400(Lcom/local/p5home/P5SpeechBridge;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/local/p5home/P5SpeechBridge;->worker:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method static synthetic access$500(Lcom/local/p5home/P5SpeechBridge;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/local/p5home/P5SpeechBridge;->enabled:Z

    return p0
.end method

.method static synthetic access$600(Lcom/local/p5home/P5SpeechBridge;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/local/p5home/P5SpeechBridge;->customWakeUseNative:Z

    return p0
.end method

.method static synthetic access$702(Lcom/local/p5home/P5SpeechBridge;J)J
    .locals 0

    .line 28
    iput-wide p1, p0, Lcom/local/p5home/P5SpeechBridge;->armedAt:J

    return-wide p1
.end method

.method static synthetic access$808(Lcom/local/p5home/P5SpeechBridge;)J
    .locals 4

    .line 28
    iget-wide v0, p0, Lcom/local/p5home/P5SpeechBridge;->wakeHits:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/local/p5home/P5SpeechBridge;->wakeHits:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/local/p5home/P5SpeechBridge;)Ljava/lang/reflect/Field;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/local/p5home/P5SpeechBridge;->wakeAllowed:Ljava/lang/reflect/Field;

    return-object p0
.end method

.method private call(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    .line 690
    iget-object v0, p0, Lcom/local/p5home/P5SpeechBridge;->app:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/local/p5home/P5SpeechBridge;->BRIDGE:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method private currentNluContext()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 671
    iget-object v0, p0, Lcom/local/p5home/P5SpeechBridge;->sdkField:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/local/p5home/P5SpeechBridge;->singleton:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 672
    if-nez v0, :cond_0

    return-object v3

    .line 673
    :cond_0
    iget-object v1, p0, Lcom/local/p5home/P5SpeechBridge;->sdkDmField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 674
    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/local/p5home/P5SpeechBridge;->dmContextField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :goto_0
    return-object v3
.end method

.method private engine()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 666
    iget-object v0, p0, Lcom/local/p5home/P5SpeechBridge;->sdkField:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/local/p5home/P5SpeechBridge;->singleton:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 667
    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/local/p5home/P5SpeechBridge;->engineField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :goto_0
    return-object v3
.end method

.method private static field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 704
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 705
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    if-eq v0, p2, :cond_0

    new-instance p0, Ljava/lang/NoSuchFieldException;

    invoke-direct {p0, p1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 706
    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 707
    return-object p0
.end method

.method private heartbeat()V
    .locals 6

    .line 638
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 639
    invoke-direct {p0}, Lcom/local/p5home/P5SpeechBridge;->engine()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 640
    move v1, v3

    goto :goto_0

    .line 639
    :cond_0
    nop

    .line 640
    move v1, v2

    :goto_0
    const-string v4, "hookBuild"

    const-string v5, "p5-voice-20261113-phone1"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    const-string v4, "phase"

    if-eqz v1, :cond_1

    const-string v5, "HOOK_READY"

    goto :goto_1

    :cond_1
    const-string v5, "HOOK_SESSION_WAIT"

    :goto_1
    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    const-string v4, "firmwareMatched"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 643
    const-string v4, "asrHook"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 644
    const-string v3, "sessionHook"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 645
    const-string v1, "ttsHook"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 646
    const-string v1, "navHook"

    iget-boolean v3, p0, Lcom/local/p5home/P5SpeechBridge;->voiceRouting:Z

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 647
    const-string v1, "musicHook"

    iget-boolean v3, p0, Lcom/local/p5home/P5SpeechBridge;->voiceRouting:Z

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 648
    const-string v1, "hookPid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 649
    iget-object v1, p0, Lcom/local/p5home/P5SpeechBridge;->wakeCode:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/local/p5home/P5SpeechBridge;->wakeWords:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 650
    const-string v2, "wakeCode"

    iget-object v3, p0, Lcom/local/p5home/P5SpeechBridge;->primaryText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 651
    const-string v1, "WAKE_WORDS_DISPATCHED"

    .line 650
    :cond_2
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    const-string v1, "wakeWordCount"

    iget-object v2, p0, Lcom/local/p5home/P5SpeechBridge;->customTexts:[Ljava/lang/String;

    array-length v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 653
    const-string v1, "wakeHits"

    iget-wide v2, p0, Lcom/local/p5home/P5SpeechBridge;->wakeHits:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 654
    const-string v1, "asrCalls"

    iget-wide v2, p0, Lcom/local/p5home/P5SpeechBridge;->asrCalls:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 655
    const-string v1, "qaAccepted"

    iget-wide v2, p0, Lcom/local/p5home/P5SpeechBridge;->qaAccepted:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 656
    const-string v1, "qaRefused"

    iget-wide v2, p0, Lcom/local/p5home/P5SpeechBridge;->qaRefused:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 657
    const-string v1, "qaCode"

    iget-object v2, p0, Lcom/local/p5home/P5SpeechBridge;->qaCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    const-string v1, "sessionCode"

    iget-object v2, p0, Lcom/local/p5home/P5SpeechBridge;->sessionCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    const-string v1, "heartbeat"

    invoke-direct {p0, v1, v0}, Lcom/local/p5home/P5SpeechBridge;->call(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 662
    goto :goto_2

    .line 660
    :catch_0
    move-exception v0

    .line 661
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "P5_HEARTBEAT_FAILED_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/local/p5home/P5SpeechBridge;->log(Ljava/lang/String;)V

    .line 663
    :goto_2
    return-void
.end method

.method private install()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 115
    const-string v0, "com.xiaopeng.carspeechservice.h.g"

    invoke-direct {p0, v0}, Lcom/local/p5home/P5SpeechBridge;->type(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 116
    const-string v1, "com.xiaopeng.carspeechservice.g.b"

    invoke-direct {p0, v1}, Lcom/local/p5home/P5SpeechBridge;->type(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 117
    const-string v2, "com.xiaopeng.carspeechservice.n.a"

    invoke-direct {p0, v2}, Lcom/local/p5home/P5SpeechBridge;->type(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 118
    const-string v3, "com.xiaopeng.carspeechservice.bean.asr.b"

    invoke-direct {p0, v3}, Lcom/local/p5home/P5SpeechBridge;->type(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 119
    const-string v4, "com.xiaopeng.speech.jarvisproto.WakeupResult"

    invoke-direct {p0, v4}, Lcom/local/p5home/P5SpeechBridge;->type(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 120
    const-string v5, "com.xiaopeng.speech.jarvisproto.WakeupResultBase"

    invoke-direct {p0, v5}, Lcom/local/p5home/P5SpeechBridge;->type(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 121
    const-string v6, "com.xiaopeng.carspeechservice.b.f"

    invoke-direct {p0, v6}, Lcom/local/p5home/P5SpeechBridge;->type(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 122
    const-string v7, "a"

    const/4 v8, 0x0

    new-array v9, v8, [Ljava/lang/Class;

    invoke-static {v0, v7, v9}, Lcom/local/p5home/P5SpeechBridge;->method(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    iput-object v7, p0, Lcom/local/p5home/P5SpeechBridge;->singleton:Ljava/lang/reflect/Method;

    .line 123
    const-string v7, "c"

    invoke-static {v0, v7, v1}, Lcom/local/p5home/P5SpeechBridge;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/local/p5home/P5SpeechBridge;->sdkField:Ljava/lang/reflect/Field;

    .line 124
    const-string v0, "com.xiaopeng.carspeechservice.b.d"

    invoke-direct {p0, v0}, Lcom/local/p5home/P5SpeechBridge;->type(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 125
    const-string v7, "com.xiaopeng.carspeechservice.b.b"

    invoke-direct {p0, v7}, Lcom/local/p5home/P5SpeechBridge;->type(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 126
    const-string v9, "i"

    invoke-static {v1, v9, v0}, Lcom/local/p5home/P5SpeechBridge;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v9

    iput-object v9, p0, Lcom/local/p5home/P5SpeechBridge;->sdkDmField:Ljava/lang/reflect/Field;

    .line 127
    const-string v9, "a"

    invoke-static {v0, v9, v7}, Lcom/local/p5home/P5SpeechBridge;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/local/p5home/P5SpeechBridge;->dmContextField:Ljava/lang/reflect/Field;

    .line 128
    const-string v0, "e"

    const-string v7, "com.xiaopeng.carspeechservice.n.c"

    invoke-direct {p0, v7}, Lcom/local/p5home/P5SpeechBridge;->type(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    invoke-static {v1, v0, v7}, Lcom/local/p5home/P5SpeechBridge;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/local/p5home/P5SpeechBridge;->engineField:Ljava/lang/reflect/Field;

    .line 129
    const-string v0, "stopDialog"

    new-array v1, v8, [Ljava/lang/Class;

    invoke-static {v2, v0, v1}, Lcom/local/p5home/P5SpeechBridge;->method(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/local/p5home/P5SpeechBridge;->stopDialog:Ljava/lang/reflect/Method;

    .line 130
    const-string v0, "onCustomWakeupWordData"

    const/4 v1, 0x1

    new-array v7, v1, [Ljava/lang/Class;

    const-string v9, "com.xiaopeng.carspeechservice.bean.g"

    .line 131
    invoke-direct {p0, v9}, Lcom/local/p5home/P5SpeechBridge;->type(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    aput-object v9, v7, v8

    .line 130
    invoke-static {v2, v0, v7}, Lcom/local/p5home/P5SpeechBridge;->method(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/local/p5home/P5SpeechBridge;->customWake:Ljava/lang/reflect/Method;

    .line 132
    const-string v0, "com.xiaopeng.carspeechservice.bean.g"

    invoke-direct {p0, v0}, Lcom/local/p5home/P5SpeechBridge;->type(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v7, v1, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    iput-object v0, p0, Lcom/local/p5home/P5SpeechBridge;->customWakeData:Ljava/lang/reflect/Constructor;

    .line 133
    const-string v0, "B"

    const-string v7, "com.xiaopeng.carspeechservice.n.d"

    invoke-direct {p0, v7}, Lcom/local/p5home/P5SpeechBridge;->type(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    invoke-static {v2, v0, v7}, Lcom/local/p5home/P5SpeechBridge;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/local/p5home/P5SpeechBridge;->wakeHelperField:Ljava/lang/reflect/Field;

    .line 134
    const-string v0, "com.xiaopeng.carspeechservice.n.d"

    invoke-direct {p0, v0}, Lcom/local/p5home/P5SpeechBridge;->type(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "a"

    const/4 v7, 0x7

    new-array v7, v7, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    const-class v9, [Ljava/lang/String;

    aput-object v9, v7, v1

    const-class v9, [Ljava/lang/String;

    const/4 v10, 0x2

    aput-object v9, v7, v10

    const-class v9, [Ljava/lang/String;

    const/4 v11, 0x3

    aput-object v9, v7, v11

    const-class v9, [Ljava/lang/String;

    const/4 v11, 0x4

    aput-object v9, v7, v11

    const-class v9, [[Ljava/lang/String;

    const/4 v11, 0x5

    aput-object v9, v7, v11

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x6

    aput-object v9, v7, v11

    invoke-static {v0, v2, v7}, Lcom/local/p5home/P5SpeechBridge;->method(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/local/p5home/P5SpeechBridge;->changeWakeWords:Ljava/lang/reflect/Method;

    .line 137
    const-string v0, "com.xiaopeng.speech.common.util.SPConfig"

    invoke-direct {p0, v0}, Lcom/local/p5home/P5SpeechBridge;->type(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 138
    const-string v2, "getInstance"

    new-array v7, v8, [Ljava/lang/Class;

    invoke-static {v0, v2, v7}, Lcom/local/p5home/P5SpeechBridge;->method(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/local/p5home/P5SpeechBridge;->speechConfigInstance:Ljava/lang/reflect/Method;

    .line 139
    const-string v2, "getString"

    new-array v7, v10, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v1

    invoke-static {v0, v2, v7}, Lcom/local/p5home/P5SpeechBridge;->method(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/local/p5home/P5SpeechBridge;->speechConfigGet:Ljava/lang/reflect/Method;

    .line 140
    const-string v2, "setStringSync"

    new-array v7, v10, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v1

    invoke-static {v0, v2, v7}, Lcom/local/p5home/P5SpeechBridge;->method(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/local/p5home/P5SpeechBridge;->speechConfigSet:Ljava/lang/reflect/Method;

    .line 141
    const-string v0, "getJsonData"

    new-array v2, v8, [Ljava/lang/Class;

    invoke-static {v3, v0, v2}, Lcom/local/p5home/P5SpeechBridge;->method(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/local/p5home/P5SpeechBridge;->asrJson:Ljava/lang/reflect/Method;

    .line 142
    const-string v0, "reason"

    const-class v2, Ljava/lang/String;

    invoke-static {v5, v0, v2}, Lcom/local/p5home/P5SpeechBridge;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/local/p5home/P5SpeechBridge;->wakeReason:Ljava/lang/reflect/Field;

    .line 143
    const-string v0, "word"

    const-class v2, Ljava/lang/String;

    invoke-static {v5, v0, v2}, Lcom/local/p5home/P5SpeechBridge;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/local/p5home/P5SpeechBridge;->wakeWord:Ljava/lang/reflect/Field;

    .line 144
    const-string v0, "canWakeup"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v0, v2}, Lcom/local/p5home/P5SpeechBridge;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/local/p5home/P5SpeechBridge;->wakeAllowed:Ljava/lang/reflect/Field;

    .line 145
    const-string v0, "com.local.p5home.HookWakeWords$Listener"

    const-class v2, Lcom/local/p5home/P5SpeechBridge;

    .line 146
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 145
    invoke-static {v0, v8, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 147
    const-string v2, "com.local.p5home.HookWakeWords"

    const-class v5, Lcom/local/p5home/P5SpeechBridge;

    .line 148
    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 147
    invoke-static {v2, v8, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 149
    new-array v5, v10, [Ljava/lang/Class;

    const-class v7, Ljava/lang/ClassLoader;

    aput-object v7, v5, v8

    aput-object v0, v5, v1

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 150
    invoke-virtual {v5, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 151
    const-class v7, Lcom/local/p5home/P5SpeechBridge;

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    new-array v9, v1, [Ljava/lang/Class;

    aput-object v0, v9, v8

    new-instance v0, Lcom/local/p5home/P5SpeechBridge$2;

    invoke-direct {v0, p0}, Lcom/local/p5home/P5SpeechBridge$2;-><init>(Lcom/local/p5home/P5SpeechBridge;)V

    invoke-static {v7, v9, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    .line 164
    new-array v7, v10, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/local/p5home/P5SpeechBridge;->loader:Ljava/lang/ClassLoader;

    aput-object v9, v7, v8

    aput-object v0, v7, v1

    invoke-virtual {v5, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/local/p5home/P5SpeechBridge;->wakeWords:Ljava/lang/Object;

    .line 165
    const-string v0, "install"

    new-array v5, v8, [Ljava/lang/Class;

    invoke-static {v2, v0, v5}, Lcom/local/p5home/P5SpeechBridge;->method(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 166
    const-string v5, "update"

    new-array v7, v10, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v1

    invoke-static {v2, v5, v7}, Lcom/local/p5home/P5SpeechBridge;->method(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, p0, Lcom/local/p5home/P5SpeechBridge;->wakeUpdate:Ljava/lang/reflect/Method;

    .line 167
    const-string v5, "code"

    new-array v7, v8, [Ljava/lang/Class;

    invoke-static {v2, v5, v7}, Lcom/local/p5home/P5SpeechBridge;->method(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iput-object v5, p0, Lcom/local/p5home/P5SpeechBridge;->wakeCode:Ljava/lang/reflect/Method;

    .line 168
    const-string v5, "registeredCount"

    new-array v7, v8, [Ljava/lang/Class;

    invoke-static {v2, v5, v7}, Lcom/local/p5home/P5SpeechBridge;->method(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/local/p5home/P5SpeechBridge;->wakeCount:Ljava/lang/reflect/Method;

    .line 169
    iget-object v2, p0, Lcom/local/p5home/P5SpeechBridge;->wakeWords:Ljava/lang/Object;

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string v0, "com.xiaopeng.carspeechservice.b.c"

    invoke-direct {p0, v0}, Lcom/local/p5home/P5SpeechBridge;->type(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "a"

    new-array v5, v1, [Ljava/lang/Class;

    aput-object v4, v5, v8

    invoke-static {v0, v2, v5}, Lcom/local/p5home/P5SpeechBridge;->method(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-instance v2, Lcom/local/p5home/P5SpeechBridge$3;

    invoke-direct {v2, p0}, Lcom/local/p5home/P5SpeechBridge$3;-><init>(Lcom/local/p5home/P5SpeechBridge;)V

    invoke-static {v0, v2}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 214
    const-string v0, "a"

    new-array v2, v1, [Ljava/lang/Class;

    aput-object v3, v2, v8

    invoke-static {v6, v0, v2}, Lcom/local/p5home/P5SpeechBridge;->method(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 215
    new-instance v2, Lcom/local/p5home/P5SpeechBridge$4;

    invoke-direct {v2, p0}, Lcom/local/p5home/P5SpeechBridge$4;-><init>(Lcom/local/p5home/P5SpeechBridge;)V

    invoke-static {v0, v2}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 220
    const-string v0, "com.xiaopeng.carspeechservice.b.c"

    invoke-direct {p0, v0}, Lcom/local/p5home/P5SpeechBridge;->type(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "a"

    new-array v1, v1, [Ljava/lang/Class;

    const-string v3, "com.xiaopeng.carspeechservice.bean.a.h"

    .line 221
    invoke-direct {p0, v3}, Lcom/local/p5home/P5SpeechBridge;->type(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v8

    .line 220
    invoke-static {v0, v2, v1}, Lcom/local/p5home/P5SpeechBridge;->method(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-instance v1, Lcom/local/p5home/P5SpeechBridge$5;

    invoke-direct {v1, p0}, Lcom/local/p5home/P5SpeechBridge$5;-><init>(Lcom/local/p5home/P5SpeechBridge;)V

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 231
    const-string v0, "P5_ASR_SESSION_INSTALLED"

    invoke-static {v0}, Lcom/local/p5home/P5SpeechBridge;->log(Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method private isCustomWord(Ljava/lang/String;)Z
    .locals 6

    .line 235
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 236
    :cond_0
    const-string v1, " "

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 237
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v2, "\\s+"

    const-string v3, " "

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 238
    iget-object v2, p0, Lcom/local/p5home/P5SpeechBridge;->customTexts:[Ljava/lang/String;

    .line 239
    iget-object v3, p0, Lcom/local/p5home/P5SpeechBridge;->customPinyins:[Ljava/lang/String;

    .line 240
    move v4, v0

    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_3

    .line 241
    aget-object v5, v2, v4

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    aget-object v5, v3, v4

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 240
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 241
    :cond_2
    :goto_1
    const/4 p1, 0x1

    return p1

    .line 243
    :cond_3
    return v0
.end method

.method private static isNativeMap(Ljava/lang/String;)Z
    .locals 1

    .line 360
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "native"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.xiaopeng.montecarlo"

    .line 361
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 360
    :goto_1
    return p0
.end method

.method private launchBaiduNavigation(Ljava/lang/String;)Z
    .locals 3

    .line 425
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "baidumap"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "map"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "/navi"

    .line 426
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "query"

    invoke-virtual {v1, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v1, "src"

    const-string v2, "andr.local.P5Home"

    .line 427
    invoke-virtual {p1, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 428
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string p1, "com.baidu.naviauto"

    .line 429
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v1, 0x14000000

    .line 430
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 431
    iget-object v1, p0, Lcom/local/p5home/P5SpeechBridge;->app:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-nez v1, :cond_0

    .line 432
    const-string p1, "P5_NAV_LAUNCH_UNAVAILABLE"

    invoke-static {p1}, Lcom/local/p5home/P5SpeechBridge;->log(Ljava/lang/String;)V

    .line 433
    return v0

    .line 435
    :cond_0
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    .line 436
    invoke-virtual {v1, v0}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 437
    iget-object v2, p0, Lcom/local/p5home/P5SpeechBridge;->app:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v2, p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    const/4 p1, 0x1

    return p1

    .line 440
    :catch_0
    move-exception p1

    .line 441
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "P5_NAV_LAUNCH_FAILED_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/local/p5home/P5SpeechBridge;->log(Ljava/lang/String;)V

    .line 442
    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 2

    .line 726
    const-string v0, "P5Speech"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P5Speech "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 728
    return-void
.end method

.method private static varargs method(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 698
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 699
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 700
    return-object p0
.end method

.method private modelReplyActive()Z
    .locals 4

    .line 495
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "status"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/local/p5home/P5SpeechBridge;->call(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 496
    if-nez v1, :cond_0

    return v0

    .line 497
    :cond_0
    const-string v2, "requestState"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 498
    const-string v2, "\u6b63\u5728\u7b49\u5f85\u6a21\u578b\u56de\u7b54"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "\u56de\u7b54\u5df2\u751f\u6210\uff0c\u6b63\u5728\u51c6\u5907\u64ad\u62a5"

    .line 499
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "\u6b63\u5728\u64ad\u653e\u8bed\u97f3"

    .line 500
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 498
    :goto_1
    return v0

    .line 501
    :catch_0
    move-exception v1

    .line 502
    return v0
.end method

.method private static navigationDestination(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 365
    const-string v0, "[\uff0c\u3002\uff01\uff1f!?,]+$"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "^(?:(?:\u8bf7|\u9ebb\u70e6)(?:\u4f60)?\\s*)?(?:(?:\u5e2e\u6211|\u6211\u8981|\u6211\u60f3)\\s*)?\u5bfc\u822a\\s*(?:\u5230|\u53bb|\u81f3)\\s*"

    const-string v2, ""

    .line 366
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 367
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v1, 0x78

    if-gt p0, v1, :cond_1

    const-string p0, ".*(?:\u7136\u540e|\u5e76\u4e14|\u987a\u4fbf|\u540c\u65f6|\u6253\u5f00\u8f66|\u5173\u95ed\u8f66).*"

    .line 368
    invoke-virtual {v0, p0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 369
    :cond_0
    return-object v0

    .line 368
    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private onAsr(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 20

    move-object/from16 v7, p0

    .line 247
    move-object/from16 v8, p1

    iget-wide v1, v7, Lcom/local/p5home/P5SpeechBridge;->asrCalls:J

    const-wide/16 v9, 0x1

    add-long/2addr v1, v9

    iput-wide v1, v7, Lcom/local/p5home/P5SpeechBridge;->asrCalls:J

    .line 248
    iget-boolean v1, v7, Lcom/local/p5home/P5SpeechBridge;->voiceRouting:Z

    if-nez v1, :cond_0

    return-void

    .line 250
    :cond_0
    const-wide/16 v13, 0x0

    :try_start_0
    iget-object v1, v7, Lcom/local/p5home/P5SpeechBridge;->asrJson:Ljava/lang/reflect/Method;

    iget-object v2, v8, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v15, 0x0

    aget-object v2, v2, v15

    new-array v3, v15, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 251
    if-eqz v1, :cond_22

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x2000

    if-le v2, v3, :cond_1

    goto/16 :goto_e

    .line 252
    :cond_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 253
    const-string v1, "isError"

    const/4 v6, 0x1

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_21

    const-string v1, "isInterrupted"

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_21

    const-string v1, "isShouldInterrupt"

    .line 254
    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_d

    .line 255
    :cond_2
    const-string v1, "text"

    const-string v2, ""

    invoke-virtual {v5, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 256
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 257
    const-string v1, "qishui"

    iget-object v11, v7, Lcom/local/p5home/P5SpeechBridge;->musicProvider:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v11, 0x0

    if-nez v1, :cond_3

    const-string v1, "qishui_phone"

    iget-object v12, v7, Lcom/local/p5home/P5SpeechBridge;->musicProvider:Ljava/lang/String;

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_3
    iget-boolean v1, v7, Lcom/local/p5home/P5SpeechBridge;->musicAvailable:Z

    if-eqz v1, :cond_5

    iget-object v1, v7, Lcom/local/p5home/P5SpeechBridge;->prefix:Ljava/lang/String;

    .line 258
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v7, Lcom/local/p5home/P5SpeechBridge;->prefix:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/local/p5home/P5SpeechBridge;->modelReplyActive()Z

    move-result v1

    if-nez v1, :cond_5

    .line 259
    const-string v1, "com.local.p5home.MusicPolicy"

    const-class v12, Lcom/local/p5home/P5SpeechBridge;

    .line 260
    invoke-virtual {v12}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    .line 259
    invoke-static {v1, v15, v12}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 261
    const-string v12, "fromAsr"

    new-array v9, v6, [Ljava/lang/Class;

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v15

    invoke-static {v1, v12, v9}, Lcom/local/p5home/P5SpeechBridge;->method(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v9, v6, [Ljava/lang/Object;

    aput-object v4, v9, v15

    invoke-virtual {v1, v11, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 262
    if-eqz v9, :cond_5

    move-object v1, v7

    move-wide/from16 v16, v2

    move-object v2, v8

    move-object v3, v5

    move-object v10, v4

    move-object v4, v9

    move-object v9, v5

    move v12, v6

    move-wide/from16 v5, v16

    invoke-direct/range {v1 .. v6}, Lcom/local/p5home/P5SpeechBridge;->submitMusic(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;Lorg/json/JSONObject;Ljava/lang/Object;J)Z

    move-result v1

    if-eqz v1, :cond_6

    return-void

    .line 264
    :cond_5
    move-wide/from16 v16, v2

    move-object v10, v4

    move-object v9, v5

    move v12, v6

    :cond_6
    invoke-static {v10}, Lcom/local/p5home/P5SpeechBridge;->navigationDestination(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 265
    if-eqz v4, :cond_8

    iget-boolean v1, v7, Lcom/local/p5home/P5SpeechBridge;->navAvailable:Z

    if-eqz v1, :cond_8

    iget-object v1, v7, Lcom/local/p5home/P5SpeechBridge;->navPackage:Ljava/lang/String;

    invoke-static {v1}, Lcom/local/p5home/P5SpeechBridge;->isNativeMap(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, v7, Lcom/local/p5home/P5SpeechBridge;->prefix:Ljava/lang/String;

    .line 266
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, v7, Lcom/local/p5home/P5SpeechBridge;->prefix:Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/local/p5home/P5SpeechBridge;->modelReplyActive()Z

    move-result v1

    if-nez v1, :cond_8

    .line 267
    move-object v1, v7

    move-object v2, v8

    move-object v3, v9

    move-wide/from16 v5, v16

    invoke-direct/range {v1 .. v6}, Lcom/local/p5home/P5SpeechBridge;->submitNavigation(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;Lorg/json/JSONObject;Ljava/lang/String;J)V

    .line 268
    return-void

    .line 270
    :cond_8
    iget-boolean v1, v7, Lcom/local/p5home/P5SpeechBridge;->enabled:Z

    if-nez v1, :cond_9

    return-void

    .line 271
    :cond_9
    iget-wide v1, v7, Lcom/local/p5home/P5SpeechBridge;->armedAt:J

    cmp-long v1, v1, v13

    const-wide/16 v2, 0x3a98

    if-lez v1, :cond_a

    iget-wide v4, v7, Lcom/local/p5home/P5SpeechBridge;->armedAt:J

    move-wide/from16 v12, v16

    sub-long v4, v12, v4

    cmp-long v1, v4, v2

    if-gtz v1, :cond_b

    .line 272
    const/4 v1, 0x1

    goto :goto_0

    .line 271
    :cond_a
    move-wide/from16 v12, v16

    .line 272
    :cond_b
    move v1, v15

    :goto_0
    iget-object v4, v7, Lcom/local/p5home/P5SpeechBridge;->prefix:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c

    iget-object v4, v7, Lcom/local/p5home/P5SpeechBridge;->prefix:Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 273
    const/4 v4, 0x1

    goto :goto_1

    .line 272
    :cond_c
    nop

    .line 273
    move v4, v15

    :goto_1
    if-nez v1, :cond_d

    if-nez v4, :cond_d

    return-void

    .line 274
    :cond_d
    if-eqz v4, :cond_e

    .line 275
    iget-object v5, v7, Lcom/local/p5home/P5SpeechBridge;->prefix:Ljava/lang/String;

    .line 274
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v10, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "^[\\s\uff0c,:\uff1a\u3002]+"

    const-string v10, ""

    .line 275
    invoke-virtual {v5, v6, v10}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 276
    :cond_e
    move-object v5, v10

    :goto_2
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_20

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v10, 0x3e8

    if-le v6, v10, :cond_f

    goto/16 :goto_c

    .line 277
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/local/p5home/P5SpeechBridge;->modelReplyActive()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 278
    invoke-virtual {v8, v11}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 279
    const-wide/16 v1, 0x0

    iput-wide v1, v7, Lcom/local/p5home/P5SpeechBridge;->armedAt:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 281
    :try_start_1
    iget-object v1, v7, Lcom/local/p5home/P5SpeechBridge;->stopDialog:Ljava/lang/reflect/Method;

    invoke-direct/range {p0 .. p0}, Lcom/local/p5home/P5SpeechBridge;->engine()Ljava/lang/Object;

    move-result-object v2

    new-array v3, v15, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 284
    goto :goto_3

    .line 282
    :catch_0
    move-exception v0

    .line 283
    :try_start_2
    const-string v1, "P5_BUSY_SESSION_END_FAILED"

    invoke-static {v1}, Lcom/local/p5home/P5SpeechBridge;->log(Ljava/lang/String;)V

    .line 285
    :goto_3
    const-string v1, "P5_QA_BUSY_SUPPRESSED"

    invoke-static {v1}, Lcom/local/p5home/P5SpeechBridge;->log(Ljava/lang/String;)V

    .line 286
    return-void

    .line 288
    :cond_10
    const-string v6, "recordId"

    const-string v10, ""

    invoke-virtual {v9, v6, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 289
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1f

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0x64

    if-le v9, v10, :cond_11

    goto/16 :goto_b

    .line 291
    :cond_11
    iget-object v9, v7, Lcom/local/p5home/P5SpeechBridge;->turnLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 292
    :try_start_3
    iget-wide v2, v7, Lcom/local/p5home/P5SpeechBridge;->lastWakeAt:J

    sub-long v2, v12, v2

    const-wide/16 v16, 0x3a98

    cmp-long v2, v2, v16

    if-gtz v2, :cond_12

    iget-wide v2, v7, Lcom/local/p5home/P5SpeechBridge;->turnNumber:J

    goto :goto_4

    .line 293
    :cond_12
    const-wide/16 v2, 0x0

    :goto_4
    const-wide/16 v16, 0x0

    cmp-long v10, v2, v16

    if-lez v10, :cond_13

    move-wide/from16 v18, v12

    iget-wide v11, v7, Lcom/local/p5home/P5SpeechBridge;->submittedTurn:J

    cmp-long v11, v11, v2

    if-eqz v11, :cond_15

    goto :goto_5

    :cond_13
    move-wide/from16 v18, v12

    :goto_5
    iget-object v11, v7, Lcom/local/p5home/P5SpeechBridge;->lastRecordId:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_14

    iget-wide v11, v7, Lcom/local/p5home/P5SpeechBridge;->lastSubmittedAt:J

    sub-long v11, v18, v11

    const-wide/32 v13, 0x1d4c0

    cmp-long v11, v11, v13

    if-ltz v11, :cond_15

    :cond_14
    if-nez v1, :cond_16

    iget-wide v11, v7, Lcom/local/p5home/P5SpeechBridge;->lastSubmittedAt:J

    sub-long v11, v18, v11

    const-wide/16 v13, 0x1388

    cmp-long v1, v11, v13

    if-gez v1, :cond_16

    .line 296
    :cond_15
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 297
    const-string v1, "P5_QA_DUPLICATE_SUPPRESSED"

    invoke-static {v1}, Lcom/local/p5home/P5SpeechBridge;->log(Ljava/lang/String;)V

    .line 298
    monitor-exit v9

    return-void

    .line 300
    :cond_16
    if-lez v10, :cond_17

    iput-wide v2, v7, Lcom/local/p5home/P5SpeechBridge;->submittedTurn:J

    .line 301
    :cond_17
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 302
    :try_start_4
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 303
    const-string v9, "kind"

    const-string v11, "qa"

    invoke-virtual {v1, v9, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const-string v9, "text"

    invoke-virtual {v1, v9, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string v5, "requestId"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "p5-"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "-"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, "-"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v5, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string v5, "externalTurn"

    const/4 v9, 0x1

    invoke-virtual {v1, v5, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 307
    nop

    .line 308
    if-eqz v4, :cond_18

    .line 310
    :try_start_5
    invoke-direct/range {p0 .. p0}, Lcom/local/p5home/P5SpeechBridge;->currentNluContext()Ljava/lang/Object;

    move-result-object v11
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 313
    goto :goto_6

    .line 311
    :catch_1
    move-exception v0

    .line 312
    :try_start_6
    const-string v4, "P5_NLU_CONTEXT_UNAVAILABLE"

    invoke-static {v4}, Lcom/local/p5home/P5SpeechBridge;->log(Ljava/lang/String;)V

    .line 315
    :cond_18
    const/4 v11, 0x0

    :goto_6
    if-eqz v11, :cond_19

    .line 316
    iput-object v11, v7, Lcom/local/p5home/P5SpeechBridge;->ownedNluContext:Ljava/lang/Object;

    .line 317
    const-wide/16 v4, 0x1f40

    add-long v4, v18, v4

    iput-wide v4, v7, Lcom/local/p5home/P5SpeechBridge;->ownedNluUntil:J

    .line 319
    :cond_19
    const-string v4, "submit"

    invoke-direct {v7, v4, v1}, Lcom/local/p5home/P5SpeechBridge;->call(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 320
    if-eqz v1, :cond_1c

    const-string v4, "accepted"

    invoke-virtual {v1, v4, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1a

    goto :goto_8

    .line 330
    :cond_1a
    iget-wide v1, v7, Lcom/local/p5home/P5SpeechBridge;->qaAccepted:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v7, Lcom/local/p5home/P5SpeechBridge;->qaAccepted:J

    .line 331
    const-string v1, "QA_ACCEPTED"

    iput-object v1, v7, Lcom/local/p5home/P5SpeechBridge;->qaCode:Ljava/lang/String;

    .line 332
    iget-object v1, v7, Lcom/local/p5home/P5SpeechBridge;->turnLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 333
    :try_start_7
    iput-object v6, v7, Lcom/local/p5home/P5SpeechBridge;->lastRecordId:Ljava/lang/String;

    .line 334
    move-wide/from16 v2, v18

    iput-wide v2, v7, Lcom/local/p5home/P5SpeechBridge;->lastSubmittedAt:J

    .line 335
    const-wide/16 v2, 0x0

    iput-wide v2, v7, Lcom/local/p5home/P5SpeechBridge;->armedAt:J

    .line 336
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 337
    const/4 v1, 0x0

    :try_start_8
    invoke-virtual {v8, v1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 339
    :try_start_9
    invoke-direct/range {p0 .. p0}, Lcom/local/p5home/P5SpeechBridge;->engine()Ljava/lang/Object;

    move-result-object v1

    .line 340
    if-nez v1, :cond_1b

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "engine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 341
    :cond_1b
    iget-object v2, v7, Lcom/local/p5home/P5SpeechBridge;->stopDialog:Ljava/lang/reflect/Method;

    new-array v3, v15, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    const-string v1, "SESSION_END_REQUESTED"

    iput-object v1, v7, Lcom/local/p5home/P5SpeechBridge;->sessionCode:Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 346
    goto :goto_7

    .line 343
    :catch_2
    move-exception v0

    .line 344
    :try_start_a
    const-string v1, "SESSION_END_FAILED"

    iput-object v1, v7, Lcom/local/p5home/P5SpeechBridge;->sessionCode:Ljava/lang/String;

    .line 345
    iget-object v1, v7, Lcom/local/p5home/P5SpeechBridge;->sessionCode:Ljava/lang/String;

    invoke-static {v1}, Lcom/local/p5home/P5SpeechBridge;->log(Ljava/lang/String;)V

    .line 347
    :goto_7
    iget-object v1, v7, Lcom/local/p5home/P5SpeechBridge;->qaCode:Ljava/lang/String;

    invoke-static {v1}, Lcom/local/p5home/P5SpeechBridge;->log(Ljava/lang/String;)V

    .line 348
    invoke-direct/range {p0 .. p0}, Lcom/local/p5home/P5SpeechBridge;->heartbeat()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    .line 356
    goto :goto_f

    .line 336
    :catchall_0
    move-exception v0

    move-object v2, v0

    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    throw v2

    .line 321
    :cond_1c
    :goto_8
    iget-object v1, v7, Lcom/local/p5home/P5SpeechBridge;->ownedNluContext:Ljava/lang/Object;

    if-ne v1, v11, :cond_1d

    const-wide/16 v4, 0x0

    iput-wide v4, v7, Lcom/local/p5home/P5SpeechBridge;->ownedNluUntil:J

    .line 322
    :cond_1d
    iget-object v1, v7, Lcom/local/p5home/P5SpeechBridge;->turnLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    .line 323
    if-lez v10, :cond_1e

    :try_start_d
    iget-wide v4, v7, Lcom/local/p5home/P5SpeechBridge;->submittedTurn:J

    cmp-long v2, v4, v2

    if-nez v2, :cond_1e

    const-wide/16 v2, -0x1

    iput-wide v2, v7, Lcom/local/p5home/P5SpeechBridge;->submittedTurn:J

    goto :goto_9

    .line 324
    :catchall_1
    move-exception v0

    move-object v2, v0

    goto :goto_a

    :cond_1e
    :goto_9
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 325
    :try_start_e
    iget-wide v1, v7, Lcom/local/p5home/P5SpeechBridge;->qaRefused:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v7, Lcom/local/p5home/P5SpeechBridge;->qaRefused:J

    .line 326
    const-string v1, "QA_ACK_REFUSED"

    iput-object v1, v7, Lcom/local/p5home/P5SpeechBridge;->qaCode:Ljava/lang/String;

    .line 327
    iget-object v1, v7, Lcom/local/p5home/P5SpeechBridge;->qaCode:Ljava/lang/String;

    invoke-static {v1}, Lcom/local/p5home/P5SpeechBridge;->log(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3

    .line 328
    return-void

    .line 324
    :goto_a
    :try_start_f
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :try_start_10
    throw v2
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3

    .line 301
    :catchall_2
    move-exception v0

    move-object v1, v0

    :try_start_11
    monitor-exit v9
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    :try_start_12
    throw v1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_3

    .line 289
    :cond_1f
    :goto_b
    return-void

    .line 276
    :cond_20
    :goto_c
    return-void

    .line 254
    :cond_21
    :goto_d
    return-void

    .line 251
    :cond_22
    :goto_e
    return-void

    .line 349
    :catch_3
    move-exception v0

    .line 350
    iget-object v1, v7, Lcom/local/p5home/P5SpeechBridge;->turnLock:Ljava/lang/Object;

    monitor-enter v1

    .line 351
    :try_start_13
    iget-wide v2, v7, Lcom/local/p5home/P5SpeechBridge;->turnNumber:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_23

    iget-wide v2, v7, Lcom/local/p5home/P5SpeechBridge;->submittedTurn:J

    iget-wide v4, v7, Lcom/local/p5home/P5SpeechBridge;->turnNumber:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_23

    const-wide/16 v2, -0x1

    iput-wide v2, v7, Lcom/local/p5home/P5SpeechBridge;->submittedTurn:J

    .line 352
    :cond_23
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 353
    iget-wide v1, v7, Lcom/local/p5home/P5SpeechBridge;->qaRefused:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v7, Lcom/local/p5home/P5SpeechBridge;->qaRefused:J

    .line 354
    const-string v1, "QA_ASR_EXCEPTION"

    iput-object v1, v7, Lcom/local/p5home/P5SpeechBridge;->qaCode:Ljava/lang/String;

    .line 355
    iget-object v1, v7, Lcom/local/p5home/P5SpeechBridge;->qaCode:Ljava/lang/String;

    invoke-static {v1}, Lcom/local/p5home/P5SpeechBridge;->log(Ljava/lang/String;)V

    .line 357
    :goto_f
    return-void

    .line 352
    :catchall_3
    move-exception v0

    move-object v2, v0

    :try_start_14
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    throw v2
.end method

.method private refresh()V
    .locals 14

    .line 508
    :try_start_0
    const-string v0, "config"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/local/p5home/P5SpeechBridge;->call(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 509
    if-eqz v0, :cond_a

    const-string v2, "schema"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    goto/16 :goto_5

    .line 510
    :cond_0
    const-string v2, "customWakeUseNative"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 511
    iget-boolean v5, p0, Lcom/local/p5home/P5SpeechBridge;->customWakeUseNative:Z

    if-eq v5, v2, :cond_1

    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/local/p5home/P5SpeechBridge;->armedAt:J

    .line 512
    :cond_1
    iput-boolean v2, p0, Lcom/local/p5home/P5SpeechBridge;->customWakeUseNative:Z

    .line 513
    const-string v5, "voiceEnabled"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/local/p5home/P5SpeechBridge;->voiceRouting:Z

    .line 514
    const-string v5, "navPackage"

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/local/p5home/P5SpeechBridge;->navPackage:Ljava/lang/String;

    .line 515
    const-string v5, "navAvailable"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/local/p5home/P5SpeechBridge;->navAvailable:Z

    .line 516
    const-string v5, "musicProvider"

    const-string v6, "system"

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/local/p5home/P5SpeechBridge;->musicProvider:Ljava/lang/String;

    .line 517
    const-string v5, "musicAvailable"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/local/p5home/P5SpeechBridge;->musicAvailable:Z

    .line 518
    const-string v5, "voiceEnabled"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "doubaoEnabled"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "hasApiConfig"

    .line 519
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v3

    goto :goto_0

    :cond_2
    move v5, v4

    :goto_0
    iput-boolean v5, p0, Lcom/local/p5home/P5SpeechBridge;->enabled:Z

    .line 520
    const-string v5, "prefix"

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/local/p5home/P5SpeechBridge;->prefix:Ljava/lang/String;

    .line 521
    const-string v5, "modelWakeWords"

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 522
    const-string v6, "voiceEnabled"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "modelWakeEnabled"

    .line 523
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez v2, :cond_3

    iget-boolean v0, p0, Lcom/local/p5home/P5SpeechBridge;->enabled:Z

    if-eqz v0, :cond_4

    .line 524
    :cond_3
    move v0, v3

    goto :goto_1

    .line 523
    :cond_4
    nop

    .line 524
    move v0, v4

    :goto_1
    iput-boolean v0, p0, Lcom/local/p5home/P5SpeechBridge;->wakeRoutingActive:Z

    .line 525
    iget-object v2, p0, Lcom/local/p5home/P5SpeechBridge;->wakeUpdate:Ljava/lang/reflect/Method;

    iget-object v6, p0, Lcom/local/p5home/P5SpeechBridge;->wakeWords:Ljava/lang/Object;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-virtual {v2, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    if-eqz v0, :cond_5

    .line 527
    move-object v2, v5

    goto :goto_2

    .line 526
    :cond_5
    const-string v2, ""

    .line 527
    :goto_2
    iget-object v6, p0, Lcom/local/p5home/P5SpeechBridge;->appliedWakeWords:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    invoke-direct {p0}, Lcom/local/p5home/P5SpeechBridge;->engine()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 528
    if-eqz v0, :cond_7

    .line 529
    const-string v6, "com.local.p5home.WakeWordPolicy"

    const-class v7, Lcom/local/p5home/P5SpeechBridge;

    .line 530
    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    .line 529
    invoke-static {v6, v4, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v6

    .line 531
    const-string v7, "parse"

    new-array v8, v3, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v4

    invoke-static {v6, v7, v8}, Lcom/local/p5home/P5SpeechBridge;->method(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 532
    new-array v7, v3, [Ljava/lang/Object;

    aput-object v5, v7, v4

    invoke-virtual {v6, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 533
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 534
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 535
    const-string v8, "text"

    const-class v9, Ljava/lang/String;

    invoke-static {v7, v8, v9}, Lcom/local/p5home/P5SpeechBridge;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 536
    const-string v9, "pinyin"

    const-class v10, Ljava/lang/String;

    invoke-static {v7, v9, v10}, Lcom/local/p5home/P5SpeechBridge;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 537
    const-string v10, "threshold"

    const-class v11, Ljava/lang/String;

    invoke-static {v7, v10, v11}, Lcom/local/p5home/P5SpeechBridge;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 538
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    .line 539
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/String;

    .line 540
    move v12, v4

    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_6

    .line 541
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    aput-object v13, v10, v12

    .line 542
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    aput-object v13, v11, v12

    .line 540
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 544
    :cond_6
    iput-object v10, p0, Lcom/local/p5home/P5SpeechBridge;->customTexts:[Ljava/lang/String;

    .line 545
    iput-object v11, p0, Lcom/local/p5home/P5SpeechBridge;->customPinyins:[Ljava/lang/String;

    .line 546
    invoke-virtual {v8, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/local/p5home/P5SpeechBridge;->primaryText:Ljava/lang/String;

    .line 547
    invoke-virtual {v9, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/local/p5home/P5SpeechBridge;->primaryPinyin:Ljava/lang/String;

    .line 548
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 549
    const-string v10, "isXiaop"

    invoke-virtual {v1, v10, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 550
    const-string v10, "words"

    invoke-virtual {v8, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v1, v10, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 551
    const-string v8, "pinyin"

    invoke-virtual {v9, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 552
    const-string v8, "threshold"

    invoke-virtual {v7, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 553
    iget-object v6, p0, Lcom/local/p5home/P5SpeechBridge;->customWake:Ljava/lang/reflect/Method;

    invoke-direct {p0}, Lcom/local/p5home/P5SpeechBridge;->engine()Ljava/lang/Object;

    move-result-object v7

    new-array v8, v3, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/local/p5home/P5SpeechBridge;->customWakeData:Ljava/lang/reflect/Constructor;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-virtual {v9, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v8, v4

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    invoke-direct {p0}, Lcom/local/p5home/P5SpeechBridge;->restoreFactoryCloudWake()V

    .line 555
    const-string v1, "P5_CUSTOM_MODEL_REQUESTED"

    invoke-static {v1}, Lcom/local/p5home/P5SpeechBridge;->log(Ljava/lang/String;)V

    .line 556
    goto :goto_4

    :cond_7
    iget-object v1, p0, Lcom/local/p5home/P5SpeechBridge;->appliedWakeWords:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 557
    const-string v1, ""

    iput-object v1, p0, Lcom/local/p5home/P5SpeechBridge;->primaryText:Ljava/lang/String;

    .line 558
    const-string v1, ""

    iput-object v1, p0, Lcom/local/p5home/P5SpeechBridge;->primaryPinyin:Ljava/lang/String;

    .line 559
    new-array v1, v4, [Ljava/lang/String;

    iput-object v1, p0, Lcom/local/p5home/P5SpeechBridge;->customTexts:[Ljava/lang/String;

    .line 560
    new-array v1, v4, [Ljava/lang/String;

    iput-object v1, p0, Lcom/local/p5home/P5SpeechBridge;->customPinyins:[Ljava/lang/String;

    .line 561
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 562
    const-string v6, "isXiaop"

    invoke-virtual {v1, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 563
    const-string v6, "words"

    const-string v7, "\u4f60\u597d\u5c0fP"

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 564
    const-string v6, "pinyin"

    const-string v7, "ni hao xiao pi"

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 565
    const-string v6, "threshold"

    const-string v7, "0.31"

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 566
    iget-object v6, p0, Lcom/local/p5home/P5SpeechBridge;->customWake:Ljava/lang/reflect/Method;

    invoke-direct {p0}, Lcom/local/p5home/P5SpeechBridge;->engine()Ljava/lang/Object;

    move-result-object v7

    new-array v8, v3, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/local/p5home/P5SpeechBridge;->customWakeData:Ljava/lang/reflect/Constructor;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-virtual {v9, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v8, v4

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    const-string v1, "P5_FACTORY_MODEL_REQUESTED"

    invoke-static {v1}, Lcom/local/p5home/P5SpeechBridge;->log(Ljava/lang/String;)V

    .line 569
    :cond_8
    :goto_4
    iput-object v2, p0, Lcom/local/p5home/P5SpeechBridge;->appliedWakeWords:Ljava/lang/String;

    .line 570
    if-eqz v0, :cond_9

    .line 571
    iget-object v0, p0, Lcom/local/p5home/P5SpeechBridge;->worker:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/local/p5home/P5SpeechBridge$6;

    invoke-direct {v1, p0, v5}, Lcom/local/p5home/P5SpeechBridge$6;-><init>(Lcom/local/p5home/P5SpeechBridge;Ljava/lang/String;)V

    const-wide/16 v2, 0x4b0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 603
    :cond_9
    invoke-direct {p0}, Lcom/local/p5home/P5SpeechBridge;->heartbeat()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 606
    goto :goto_6

    .line 509
    :cond_a
    :goto_5
    return-void

    .line 604
    :catch_0
    move-exception v0

    .line 605
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "P5_REFRESH_FAILED_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/local/p5home/P5SpeechBridge;->log(Ljava/lang/String;)V

    .line 607
    :goto_6
    return-void
.end method

.method private registerSpeechAgentWords(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 610
    iget-object v0, p0, Lcom/local/p5home/P5SpeechBridge;->wakeHelperField:Ljava/lang/reflect/Field;

    invoke-direct {p0}, Lcom/local/p5home/P5SpeechBridge;->engine()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 611
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "a"

    const-string v3, "com.xiaopeng.speech.SpeechAgent"

    invoke-direct {p0, v3}, Lcom/local/p5home/P5SpeechBridge;->type(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/local/p5home/P5SpeechBridge;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 612
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 613
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "addMainWakeupWords"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-static {v1, v2, v4}, Lcom/local/p5home/P5SpeechBridge;->method(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 614
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v7, :cond_1

    .line 615
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 616
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 617
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 618
    const-string v8, "text"

    const-class v9, Ljava/lang/String;

    invoke-static {v5, v8, v9}, Lcom/local/p5home/P5SpeechBridge;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 619
    const-string v9, "pinyin"

    const-class v10, Ljava/lang/String;

    invoke-static {v5, v9, v10}, Lcom/local/p5home/P5SpeechBridge;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 620
    move v9, v7

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_0

    .line 621
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v4, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 622
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v2, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 620
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 624
    :cond_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 625
    const-string v5, "pinyin"

    invoke-virtual {p1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 626
    const-string v2, "words"

    invoke-virtual {p1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 627
    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v7

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    :cond_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 630
    const-string v2, "pinyin"

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    const-string v5, "ni hao xiao pi"

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 631
    const-string v2, "words"

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    const-string v5, "\u4f60\u597d\u5c0fP"

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 632
    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v6

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v7

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    const-string p1, "P5_AGENT_MAIN_WORDS_RESTORED"

    invoke-static {p1}, Lcom/local/p5home/P5SpeechBridge;->log(Ljava/lang/String;)V

    .line 634
    return-void
.end method

.method private restoreFactoryCloudWake()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 678
    iget-object v0, p0, Lcom/local/p5home/P5SpeechBridge;->speechConfigInstance:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 679
    const-string v2, "key.custom.wakeup.config"

    .line 680
    iget-object v3, p0, Lcom/local/p5home/P5SpeechBridge;->speechConfigGet:Ljava/lang/reflect/Method;

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v2, v5, v1

    const-string v6, ""

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-virtual {v3, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 681
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 682
    :cond_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 683
    const-string v3, "recog"

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v6, "cloud"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v6, "wakeup_word"

    const-string v8, "\u4f60\u597d \u5c0f P"

    .line 684
    invoke-virtual {v3, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 685
    iget-object v3, p0, Lcom/local/p5home/P5SpeechBridge;->speechConfigSet:Ljava/lang/reflect/Method;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v1

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v7

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    const-string v0, "P5_FACTORY_CLOUD_WAKE_RESTORED"

    invoke-static {v0}, Lcom/local/p5home/P5SpeechBridge;->log(Ljava/lang/String;)V

    .line 687
    return-void

    .line 681
    :cond_1
    :goto_0
    return-void
.end method

.method private submitMusic(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;Lorg/json/JSONObject;Ljava/lang/Object;J)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 448
    const-string v0, "recordId"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 449
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_7

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x64

    if-le v0, v2, :cond_0

    goto/16 :goto_3

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/local/p5home/P5SpeechBridge;->lastMusicRecordId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iget-wide v4, p0, Lcom/local/p5home/P5SpeechBridge;->lastMusicAt:J

    sub-long v4, p4, v4

    const-wide/32 v6, 0x1d4c0

    cmp-long v0, v4, v6

    if-gez v0, :cond_1

    .line 451
    invoke-virtual {p1, v3}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 452
    const-string p1, "P5_MUSIC_DUPLICATE_SUPPRESSED"

    invoke-static {p1}, Lcom/local/p5home/P5SpeechBridge;->log(Ljava/lang/String;)V

    .line 453
    return v2

    .line 455
    :cond_1
    const-string v0, "qishui_phone"

    iget-object v4, p0, Lcom/local/p5home/P5SpeechBridge;->musicProvider:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 456
    if-eqz v0, :cond_2

    invoke-static {p3}, Lcom/local/p5home/PhoneMusicRequest;->intent(Ljava/lang/Object;)Landroid/content/Intent;

    move-result-object v4

    goto :goto_0

    .line 457
    :cond_2
    iget-object v4, p0, Lcom/local/p5home/P5SpeechBridge;->app:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.luna.music.car"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 458
    :goto_0
    if-nez v4, :cond_3

    return v1

    .line 459
    :cond_3
    const/high16 v5, 0x10000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 460
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v5

    .line 461
    invoke-virtual {v5, v1}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 462
    iget-object v6, p0, Lcom/local/p5home/P5SpeechBridge;->app:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 463
    if-nez v0, :cond_5

    .line 464
    invoke-direct {p0}, Lcom/local/p5home/P5SpeechBridge;->heartbeat()V

    .line 465
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 466
    const-string v5, "kind"

    const-string v6, "music"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    const-string v5, "musicProvider"

    const-string v6, "qishui"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    const-string v5, "data"

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "json"

    new-array v8, v1, [Ljava/lang/Class;

    invoke-static {v6, v7, v8}, Lcom/local/p5home/P5SpeechBridge;->method(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/Object;

    invoke-virtual {v6, p3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {v4, v5, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    const-string p3, "queuedAt"

    invoke-virtual {v4, p3, p4, p5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 470
    const-string p3, "requestId"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "p5-music-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 470
    invoke-virtual {v4, p3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    const-string p3, "submit"

    invoke-direct {p0, p3, v4}, Lcom/local/p5home/P5SpeechBridge;->call(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p3

    .line 473
    if-eqz p3, :cond_4

    const-string v4, "accepted"

    invoke-virtual {p3, v4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    if-nez p3, :cond_5

    .line 474
    :cond_4
    const-string p1, "P5_MUSIC_ACK_REFUSED"

    invoke-static {p1}, Lcom/local/p5home/P5SpeechBridge;->log(Ljava/lang/String;)V

    .line 475
    return v1

    .line 478
    :cond_5
    iput-object p2, p0, Lcom/local/p5home/P5SpeechBridge;->lastMusicRecordId:Ljava/lang/String;

    .line 479
    iput-wide p4, p0, Lcom/local/p5home/P5SpeechBridge;->lastMusicAt:J

    .line 480
    const-wide/16 p2, 0x0

    iput-wide p2, p0, Lcom/local/p5home/P5SpeechBridge;->armedAt:J

    .line 481
    invoke-virtual {p1, v3}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 483
    :try_start_0
    invoke-direct {p0}, Lcom/local/p5home/P5SpeechBridge;->currentNluContext()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/local/p5home/P5SpeechBridge;->ownedNluContext:Ljava/lang/Object;

    .line 484
    const-wide/16 p1, 0x1f40

    add-long/2addr p4, p1

    iput-wide p4, p0, Lcom/local/p5home/P5SpeechBridge;->ownedNluUntil:J

    .line 485
    iget-object p1, p0, Lcom/local/p5home/P5SpeechBridge;->stopDialog:Ljava/lang/reflect/Method;

    invoke-direct {p0}, Lcom/local/p5home/P5SpeechBridge;->engine()Ljava/lang/Object;

    move-result-object p2

    new-array p3, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    goto :goto_1

    .line 486
    :catch_0
    move-exception p1

    .line 487
    const-string p1, "P5_MUSIC_SESSION_END_FAILED"

    invoke-static {p1}, Lcom/local/p5home/P5SpeechBridge;->log(Ljava/lang/String;)V

    .line 489
    :goto_1
    if-eqz v0, :cond_6

    const-string p1, "P5_MUSIC_PHONE_REQUESTED"

    goto :goto_2

    :cond_6
    const-string p1, "P5_MUSIC_SUBMITTED_qishui"

    :goto_2
    invoke-static {p1}, Lcom/local/p5home/P5SpeechBridge;->log(Ljava/lang/String;)V

    .line 490
    return v2

    .line 449
    :cond_7
    :goto_3
    return v1
.end method

.method private submitNavigation(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;Lorg/json/JSONObject;Ljava/lang/String;J)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    .line 374
    move-wide/from16 v4, p4

    const-string v6, "recordId"

    const-string v7, ""

    move-object/from16 v8, p2

    invoke-virtual {v8, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 375
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_a

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x64

    if-le v7, v8, :cond_0

    goto/16 :goto_6

    .line 377
    :cond_0
    iget-object v7, v1, Lcom/local/p5home/P5SpeechBridge;->turnLock:Ljava/lang/Object;

    monitor-enter v7

    .line 378
    :try_start_0
    iget-wide v8, v1, Lcom/local/p5home/P5SpeechBridge;->lastWakeAt:J

    sub-long v8, v4, v8

    const-wide/16 v10, 0x3a98

    cmp-long v8, v8, v10

    const-wide/16 v9, 0x0

    if-gtz v8, :cond_1

    iget-wide v11, v1, Lcom/local/p5home/P5SpeechBridge;->turnNumber:J

    goto :goto_0

    .line 379
    :cond_1
    move-wide v11, v9

    :goto_0
    cmp-long v8, v11, v9

    const/4 v13, 0x0

    if-lez v8, :cond_2

    iget-wide v14, v1, Lcom/local/p5home/P5SpeechBridge;->submittedNavTurn:J

    cmp-long v14, v14, v11

    if-eqz v14, :cond_3

    :cond_2
    iget-object v14, v1, Lcom/local/p5home/P5SpeechBridge;->lastNavRecordId:Ljava/lang/String;

    .line 380
    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    iget-wide v14, v1, Lcom/local/p5home/P5SpeechBridge;->lastNavAt:J

    sub-long v14, v4, v14

    const-wide/32 v16, 0x1d4c0

    cmp-long v14, v14, v16

    if-gez v14, :cond_4

    .line 381
    :cond_3
    invoke-virtual {v2, v13}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 382
    const-string v1, "P5_NAV_DUPLICATE_SUPPRESSED"

    invoke-static {v1}, Lcom/local/p5home/P5SpeechBridge;->log(Ljava/lang/String;)V

    .line 383
    monitor-exit v7

    return-void

    .line 385
    :cond_4
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 386
    const-string v7, "com.baidu.naviauto"

    iget-object v14, v1, Lcom/local/p5home/P5SpeechBridge;->navPackage:Ljava/lang/String;

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v14, 0x0

    if-eqz v7, :cond_5

    .line 389
    invoke-direct {v1, v3}, Lcom/local/p5home/P5SpeechBridge;->launchBaiduNavigation(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    return-void

    .line 391
    :cond_5
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 392
    const-string v15, "kind"

    const-string v13, "nav"

    invoke-virtual {v7, v15, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    const-string v13, "event"

    const-string v15, "g3.asr.navigate"

    invoke-virtual {v7, v13, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    const-string v13, "data"

    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    const-string v9, "query"

    invoke-virtual {v15, v9, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v13, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const-string v3, "requestId"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "p5-nav-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 395
    invoke-virtual {v7, v3, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    const-string v3, "submit"

    invoke-direct {v1, v3, v7}, Lcom/local/p5home/P5SpeechBridge;->call(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 398
    if-eqz v3, :cond_9

    const-string v7, "accepted"

    invoke-virtual {v3, v7, v14}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_5

    .line 403
    :cond_6
    iget-object v3, v1, Lcom/local/p5home/P5SpeechBridge;->turnLock:Ljava/lang/Object;

    monitor-enter v3

    .line 404
    if-lez v8, :cond_7

    :try_start_1
    iput-wide v11, v1, Lcom/local/p5home/P5SpeechBridge;->submittedNavTurn:J

    goto :goto_1

    .line 408
    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_4

    .line 405
    :cond_7
    :goto_1
    iput-object v6, v1, Lcom/local/p5home/P5SpeechBridge;->lastNavRecordId:Ljava/lang/String;

    .line 406
    iput-wide v4, v1, Lcom/local/p5home/P5SpeechBridge;->lastNavAt:J

    .line 407
    const-wide/16 v6, 0x0

    iput-wide v6, v1, Lcom/local/p5home/P5SpeechBridge;->armedAt:J

    .line 408
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 409
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 411
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/local/p5home/P5SpeechBridge;->currentNluContext()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lcom/local/p5home/P5SpeechBridge;->ownedNluContext:Ljava/lang/Object;

    .line 412
    const-wide/16 v2, 0x1f40

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/local/p5home/P5SpeechBridge;->ownedNluUntil:J

    .line 413
    iget-object v2, v1, Lcom/local/p5home/P5SpeechBridge;->stopDialog:Ljava/lang/reflect/Method;

    invoke-direct/range {p0 .. p0}, Lcom/local/p5home/P5SpeechBridge;->engine()Ljava/lang/Object;

    move-result-object v3

    new-array v4, v14, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 416
    goto :goto_2

    .line 414
    :catch_0
    move-exception v0

    .line 415
    const-string v2, "P5_NAV_SESSION_END_FAILED"

    invoke-static {v2}, Lcom/local/p5home/P5SpeechBridge;->log(Ljava/lang/String;)V

    .line 417
    :goto_2
    const-string v2, "com.baidu.naviauto"

    iget-object v3, v1, Lcom/local/p5home/P5SpeechBridge;->navPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 418
    const-string v2, "P5_NAV_LAUNCH_REQUESTED_com.baidu.naviauto"

    goto :goto_3

    .line 419
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "P5_NAV_ACCEPTED_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/local/p5home/P5SpeechBridge;->navPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 417
    :goto_3
    invoke-static {v2}, Lcom/local/p5home/P5SpeechBridge;->log(Ljava/lang/String;)V

    .line 420
    invoke-direct/range {p0 .. p0}, Lcom/local/p5home/P5SpeechBridge;->heartbeat()V

    .line 421
    return-void

    .line 408
    :goto_4
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 399
    :cond_9
    :goto_5
    const-string v1, "P5_NAV_ACK_REFUSED"

    invoke-static {v1}, Lcom/local/p5home/P5SpeechBridge;->log(Ljava/lang/String;)V

    .line 400
    return-void

    .line 385
    :catchall_1
    move-exception v0

    move-object v1, v0

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    .line 375
    :cond_a
    :goto_6
    return-void
.end method

.method private trustedCode()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 711
    const-string v0, "com.xiaopeng.carspeechservice"

    iget-object v1, p0, Lcom/local/p5home/P5SpeechBridge;->app:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 712
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/local/p5home/P5SpeechBridge;->app:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 713
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 714
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 715
    const v0, 0x8000

    :try_start_0
    new-array v0, v0, [B

    .line 717
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    invoke-virtual {v2, v0, v1, v4}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 718
    :cond_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 719
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 720
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, v0

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 721
    array-length v3, v0

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_2

    aget-byte v5, v0, v4

    const-string v6, "%02x"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v1

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 722
    :cond_2
    const-string v0, "a9a2fb27edb76f6ed0c171b4db662f36d7cd2c3224cb6f6270f90d093eb68e5f"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 714
    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v0
.end method

.method private type(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 694
    iget-object v0, p0, Lcom/local/p5home/P5SpeechBridge;->loader:Ljava/lang/ClassLoader;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public start()V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/local/p5home/P5SpeechBridge;->worker:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/local/p5home/P5SpeechBridge$1;

    invoke-direct {v1, p0}, Lcom/local/p5home/P5SpeechBridge$1;-><init>(Lcom/local/p5home/P5SpeechBridge;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 112
    return-void
.end method

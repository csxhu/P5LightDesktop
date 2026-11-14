.class public final Lcom/local/p5home/AssistantService;
.super Landroid/app/Service;
.source "AssistantService.java"


# static fields
.field private static final CHANNEL:Ljava/lang/String; = "p5home.assistant"


# instance fields
.field private final ark:Lcom/local/p5home/ArkClient;

.field private final commands:Ljava/util/concurrent/ExecutorService;

.field private volatile destroyed:Z

.field private final generation:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final holds:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final jobs:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final main:Landroid/os/Handler;

.field private final musicGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final network:Ljava/util/concurrent/ExecutorService;

.field private final speechOwner:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 9
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 11
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/local/p5home/AssistantService;->network:Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/local/p5home/AssistantService;->commands:Ljava/util/concurrent/ExecutorService;

    .line 12
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/local/p5home/AssistantService;->holds:Ljava/util/concurrent/ConcurrentHashMap;

    .line 13
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/local/p5home/AssistantService;->jobs:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/local/p5home/AssistantService;->generation:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/local/p5home/AssistantService;->musicGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 14
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/local/p5home/AssistantService;->main:Landroid/os/Handler;

    new-instance v0, Lcom/local/p5home/ArkClient;

    invoke-direct {v0}, Lcom/local/p5home/ArkClient;-><init>()V

    iput-object v0, p0, Lcom/local/p5home/AssistantService;->ark:Lcom/local/p5home/ArkClient;

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "service-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/local/p5home/AssistantService;->speechOwner:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/local/p5home/AssistantService;)Z
    .registers 1

    .line 9
    iget-boolean p0, p0, Lcom/local/p5home/AssistantService;->destroyed:Z

    return p0
.end method

.method static synthetic access$100(Lcom/local/p5home/AssistantService;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    .line 9
    iget-object p0, p0, Lcom/local/p5home/AssistantService;->generation:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic access$200(Lcom/local/p5home/AssistantService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/local/p5home/AssistantService;->turnReceipt(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/local/p5home/AssistantService;)V
    .registers 1

    .line 9
    invoke-direct {p0}, Lcom/local/p5home/AssistantService;->finishJob()V

    return-void
.end method

.method public static ask(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 17
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/local/p5home/AssistantService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "mode"

    const-string v2, "ask"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "text"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/local/p5home/AssistantService;->start(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static askFromVoice(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 16
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/local/p5home/AssistantService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "mode"

    const-string v2, "ask"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "text"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "requestId"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/local/p5home/AssistantService;->start(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private deliver(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15

    .line 70
    iget-object v0, p0, Lcom/local/p5home/AssistantService;->main:Landroid/os/Handler;

    new-instance v8, Lcom/local/p5home/AssistantService$$ExternalSyntheticLambda6;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-object v4, p4

    move v5, p2

    move-object v6, p3

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/local/p5home/AssistantService$$ExternalSyntheticLambda6;-><init>(Lcom/local/p5home/AssistantService;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 81
    return-void
.end method

.method private finishJob()V
    .registers 5

    .line 83
    iget-object v0, p0, Lcom/local/p5home/AssistantService;->jobs:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_18

    iget-boolean v0, p0, Lcom/local/p5home/AssistantService;->destroyed:Z

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/local/p5home/AssistantService;->main:Landroid/os/Handler;

    new-instance v1, Lcom/local/p5home/AssistantService$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/local/p5home/AssistantService$$ExternalSyntheticLambda8;-><init>(Lcom/local/p5home/AssistantService;)V

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_18
    return-void
.end method

.method static hold(Landroid/content/Context;I)Ljava/lang/String;
    .registers 6

    .line 22
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/local/p5home/AssistantService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "mode"

    const-string v3, "hold"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "seconds"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/local/p5home/AssistantService;->start(Landroid/content/Context;Landroid/content/Intent;)V

    return-object v0
.end method

.method static music(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 25
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/local/p5home/AssistantService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "mode"

    const-string v2, "music"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "musicProvider"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "data"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "requestId"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "queuedAt"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/local/p5home/AssistantService;->start(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static navigate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 20
    const-string v0, "g3.asr.navigate"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "g3.asr.nav.control"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    invoke-static {p0, p1, p2, p3, v0}, Lcom/local/p5home/AssistantService;->navigate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static navigate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8

    .line 21
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/local/p5home/AssistantService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "mode"

    const-string v2, "nav"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "event"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "data"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "requestId"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "externalTurn"

    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/local/p5home/AssistantService;->start(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private notification()Landroid/app/Notification;
    .registers 4

    .line 28
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/local/p5home/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    const/high16 v2, 0xc000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 29
    new-instance v1, Landroid/app/Notification$Builder;

    const-string v2, "p5home.assistant"

    invoke-direct {v1, p0, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v2, 0x7f020001

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const-string v2, "G3 \u5c0fP\u52a9\u624b"

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const-string v2, "\u6b63\u5728\u5904\u7406\u8bf7\u6c42\uff0c\u53ef\u5728\u8bbe\u7f6e\u67e5\u770b\u7ed3\u679c"

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method static releaseHold(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 23
    if-eqz p1, :cond_1a

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/local/p5home/AssistantService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "mode"

    const-string v2, "release"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/local/p5home/AssistantService;->start(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_1a
    return-void
.end method

.method private static start(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 2

    .line 24
    invoke-virtual {p0, p1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static testConnection(Landroid/content/Context;)V
    .registers 4

    .line 19
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/local/p5home/AssistantService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "mode"

    const-string v2, "test"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/local/p5home/AssistantService;->start(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static testSpeech(Landroid/content/Context;)V
    .registers 4

    .line 18
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/local/p5home/AssistantService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "mode"

    const-string v2, "speech_test"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/local/p5home/AssistantService;->start(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private turnReceipt(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .line 82
    if-eqz p2, :cond_16

    const-string v0, "[A-Za-z0-9._-]{1,100}"

    invoke-virtual {p2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Lcom/local/p5home/BridgeStore;->enqueueReply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    return-void
.end method


# virtual methods
.method synthetic lambda$deliver$7$com-local-g3home-AssistantService(I)Z
    .registers 3

    .line 76
    iget-boolean v0, p0, Lcom/local/p5home/AssistantService;->destroyed:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/local/p5home/AssistantService;->generation:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne p1, v0, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method synthetic lambda$deliver$8$com-local-g3home-AssistantService(ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 71
    iget-boolean v0, p0, Lcom/local/p5home/AssistantService;->destroyed:Z

    if-nez v0, :cond_59

    iget-object v0, p0, Lcom/local/p5home/AssistantService;->generation:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eq p1, v0, :cond_d

    goto :goto_59

    .line 72
    :cond_d
    if-nez p2, :cond_17

    if-eqz p3, :cond_14

    const-string v0, "\u5927\u6a21\u578b\u8fde\u63a5\u6b63\u5e38"

    goto :goto_19

    :cond_14
    const-string v0, "\u56de\u7b54\u5df2\u751f\u6210\uff0c\u6b63\u5728\u51c6\u5907\u64ad\u62a5"

    goto :goto_19

    :cond_17
    const-string v0, "\u6a21\u578b\u8bf7\u6c42\u672a\u5b8c\u6210"

    :goto_19
    if-nez p2, :cond_1e

    const-string v1, ""

    goto :goto_1f

    :cond_1e
    move-object v1, p2

    :goto_1f
    invoke-static {p0, v0, p4, v1}, Lcom/local/p5home/BridgeStore;->update(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    if-nez p3, :cond_58

    iget-object p3, p0, Lcom/local/p5home/AssistantService;->jobs:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    if-nez p2, :cond_2c

    goto :goto_45

    :cond_2c
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "\u6a21\u578b\u8bf7\u6c42\u672a\u5b8c\u6210\u3002"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, "\u3002"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 76
    :goto_45
    invoke-static {p0}, Lcom/local/p5home/SpeechOutput;->get(Landroid/content/Context;)Lcom/local/p5home/SpeechOutput;

    move-result-object p3

    iget-object v0, p0, Lcom/local/p5home/AssistantService;->speechOwner:Ljava/lang/String;

    new-instance v1, Lcom/local/p5home/AssistantService$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Lcom/local/p5home/AssistantService$$ExternalSyntheticLambda9;-><init>(Lcom/local/p5home/AssistantService;I)V

    new-instance v2, Lcom/local/p5home/AssistantService$1;

    invoke-direct {v2, p0, p1, p5, p2}, Lcom/local/p5home/AssistantService$1;-><init>(Lcom/local/p5home/AssistantService;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, p4, v0, v1, v2}, Lcom/local/p5home/SpeechOutput;->speak(Ljava/lang/String;Ljava/lang/String;Ljava/util/function/BooleanSupplier;Lcom/local/p5home/SpeechOutput$Callback;)V

    .line 80
    :cond_58
    return-void

    .line 71
    :cond_59
    :goto_59
    return-void
.end method

.method synthetic lambda$finishJob$9$com-local-g3home-AssistantService()V
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/local/p5home/AssistantService;->jobs:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/local/p5home/AssistantService;->stopForeground(Z)V

    invoke-virtual {p0}, Lcom/local/p5home/AssistantService;->stopSelf()V

    :cond_f
    return-void
.end method

.method synthetic lambda$onStartCommand$0$com-local-g3home-AssistantService(Ljava/lang/String;)V
    .registers 3

    .line 35
    iget-object v0, p0, Lcom/local/p5home/AssistantService;->holds:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-direct {p0}, Lcom/local/p5home/AssistantService;->finishJob()V

    :cond_b
    return-void
.end method

.method synthetic lambda$onStartCommand$1$com-local-g3home-AssistantService(I)Z
    .registers 3

    .line 36
    iget-boolean v0, p0, Lcom/local/p5home/AssistantService;->destroyed:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/local/p5home/AssistantService;->generation:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne p1, v0, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method synthetic lambda$onStartCommand$2$com-local-g3home-AssistantService(IZLjava/lang/String;)V
    .registers 5

    .line 36
    iget-boolean v0, p0, Lcom/local/p5home/AssistantService;->destroyed:Z

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/local/p5home/AssistantService;->generation:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne p1, v0, :cond_1a

    if-eqz p2, :cond_11

    const-string p1, "\u7cfb\u7edf\u64ad\u62a5\u6d4b\u8bd5\u5b8c\u6210"

    goto :goto_12

    :cond_11
    move-object p1, p3

    :goto_12
    if-eqz p2, :cond_16

    const-string p3, ""

    :cond_16
    const/4 p2, 0x0

    invoke-static {p0, p1, p2, p3}, Lcom/local/p5home/BridgeStore;->update(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    invoke-direct {p0}, Lcom/local/p5home/AssistantService;->finishJob()V

    return-void
.end method

.method synthetic lambda$onStartCommand$3$com-local-g3home-AssistantService(ILjava/lang/String;)Z
    .registers 5

    .line 43
    invoke-static {p0}, Lcom/local/p5home/ConfigStore;->load(Landroid/content/Context;)Lcom/local/p5home/AppConfig;

    move-result-object v0

    iget-boolean v1, p0, Lcom/local/p5home/AssistantService;->destroyed:Z

    if-nez v1, :cond_1e

    iget-object v1, p0, Lcom/local/p5home/AssistantService;->musicGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne p1, v1, :cond_1e

    iget-boolean p1, v0, Lcom/local/p5home/AppConfig;->voiceEnabled:Z

    if-eqz p1, :cond_1e

    iget-object p1, v0, Lcom/local/p5home/AppConfig;->musicProvider:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    const/4 p1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p1, 0x0

    :goto_1f
    return p1
.end method

.method synthetic lambda$onStartCommand$4$com-local-g3home-AssistantService(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 12

    .line 41
    const-string v0, "turn_complete"

    const/4 v1, 0x0

    :try_start_3
    invoke-static {p0}, Lcom/local/p5home/ConfigStore;->load(Landroid/content/Context;)Lcom/local/p5home/AppConfig;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, p1

    .line 42
    iget-boolean p1, p0, Lcom/local/p5home/AssistantService;->destroyed:Z

    if-nez p1, :cond_48

    const-wide/16 p1, 0x0

    cmp-long p1, v3, p1

    if-ltz p1, :cond_48

    const-wide/16 p1, 0x3a98

    cmp-long p1, v3, p1

    if-gtz p1, :cond_48

    iget-boolean p1, v2, Lcom/local/p5home/AppConfig;->voiceEnabled:Z

    if-eqz p1, :cond_48

    iget-object p1, v2, Lcom/local/p5home/AppConfig;->musicProvider:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_29

    goto :goto_48

    .line 43
    :cond_29
    new-instance p1, Lcom/local/p5home/AssistantService$$ExternalSyntheticLambda7;

    invoke-direct {p1, p0, p5, p3}, Lcom/local/p5home/AssistantService$$ExternalSyntheticLambda7;-><init>(Lcom/local/p5home/AssistantService;ILjava/lang/String;)V

    invoke-static {p0, p3, p4, p1}, Lcom/local/p5home/MusicRouter;->play(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/BooleanSupplier;)Ljava/lang/String;

    move-result-object p1

    iget-boolean p2, p0, Lcom/local/p5home/AssistantService;->destroyed:Z

    if-nez p2, :cond_43

    iget-object p2, p0, Lcom/local/p5home/AssistantService;->musicGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    if-ne p5, p2, :cond_43

    const-string p2, ""

    invoke-static {p0, p1, v1, p2}, Lcom/local/p5home/BridgeStore;->update(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_43} :catch_55
    .catchall {:try_start_3 .. :try_end_43} :catchall_53

    .line 45
    :cond_43
    iget-boolean p1, p0, Lcom/local/p5home/AssistantService;->destroyed:Z

    if-nez p1, :cond_71

    goto :goto_6e

    :cond_48
    :goto_48
    iget-boolean p1, p0, Lcom/local/p5home/AssistantService;->destroyed:Z

    if-nez p1, :cond_4f

    invoke-direct {p0, v0, p6}, Lcom/local/p5home/AssistantService;->turnReceipt(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4f
    invoke-direct {p0}, Lcom/local/p5home/AssistantService;->finishJob()V

    .line 42
    return-void

    .line 45
    :catchall_53
    move-exception p1

    goto :goto_75

    .line 44
    :catch_55
    move-exception p1

    :try_start_56
    iget-boolean p2, p0, Lcom/local/p5home/AssistantService;->destroyed:Z

    if-nez p2, :cond_6a

    const-string p2, "\u70b9\u6b4c\u672a\u5b8c\u6210"

    instance-of p3, p1, Ljava/lang/IllegalStateException;

    if-eqz p3, :cond_65

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_67

    :cond_65
    const-string p1, "\u8bf7\u68c0\u67e5\u97f3\u4e50\u5e94\u7528\u72b6\u6001\u3001\u767b\u5f55\u53ca\u7f51\u7edc"

    :goto_67
    invoke-static {p0, p2, v1, p1}, Lcom/local/p5home/BridgeStore;->update(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6a
    .catchall {:try_start_56 .. :try_end_6a} :catchall_53

    .line 45
    :cond_6a
    iget-boolean p1, p0, Lcom/local/p5home/AssistantService;->destroyed:Z

    if-nez p1, :cond_71

    :goto_6e
    invoke-direct {p0, v0, p6}, Lcom/local/p5home/AssistantService;->turnReceipt(Ljava/lang/String;Ljava/lang/String;)V

    :cond_71
    invoke-direct {p0}, Lcom/local/p5home/AssistantService;->finishJob()V

    return-void

    :goto_75
    iget-boolean p2, p0, Lcom/local/p5home/AssistantService;->destroyed:Z

    if-nez p2, :cond_7c

    invoke-direct {p0, v0, p6}, Lcom/local/p5home/AssistantService;->turnReceipt(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7c
    invoke-direct {p0}, Lcom/local/p5home/AssistantService;->finishJob()V

    throw p1
.end method

.method synthetic lambda$onStartCommand$5$com-local-g3home-AssistantService(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 16

    .line 48
    const-string v0, "turn_complete"

    const/4 v1, 0x0

    :try_start_3
    iget-boolean v2, p0, Lcom/local/p5home/AssistantService;->destroyed:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_5} :catch_a1
    .catchall {:try_start_3 .. :try_end_5} :catchall_9f

    if-eqz v2, :cond_14

    .line 56
    iget-boolean p1, p0, Lcom/local/p5home/AssistantService;->destroyed:Z

    if-nez p1, :cond_10

    if-eqz p3, :cond_10

    invoke-direct {p0, v0, p4}, Lcom/local/p5home/AssistantService;->turnReceipt(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    invoke-direct {p0}, Lcom/local/p5home/AssistantService;->finishJob()V

    .line 48
    return-void

    :cond_14
    :try_start_14
    invoke-static {p0}, Lcom/local/p5home/ConfigStore;->load(Landroid/content/Context;)Lcom/local/p5home/AppConfig;

    move-result-object v2

    .line 49
    iget-boolean v3, v2, Lcom/local/p5home/AppConfig;->voiceEnabled:Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1a} :catch_a1
    .catchall {:try_start_14 .. :try_end_1a} :catchall_9f

    const-string v4, ""

    if-nez v3, :cond_30

    :try_start_1e
    const-string p1, "\u5bfc\u822a\u8f6c\u63a5\u5df2\u5173\u95ed\uff0c\u672c\u6b21\u6392\u961f\u6307\u4ee4\u5df2\u53d6\u6d88"

    invoke-static {p0, p1, v1, v4}, Lcom/local/p5home/BridgeStore;->update(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_23} :catch_a1
    .catchall {:try_start_1e .. :try_end_23} :catchall_9f

    .line 56
    iget-boolean p1, p0, Lcom/local/p5home/AssistantService;->destroyed:Z

    if-nez p1, :cond_2c

    if-eqz p3, :cond_2c

    invoke-direct {p0, v0, p4}, Lcom/local/p5home/AssistantService;->turnReceipt(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2c
    invoke-direct {p0}, Lcom/local/p5home/AssistantService;->finishJob()V

    .line 49
    return-void

    .line 50
    :cond_30
    :try_start_30
    iget-object v2, v2, Lcom/local/p5home/AppConfig;->navPackage:Ljava/lang/String;

    invoke-static {p0, v2, p1, p2}, Lcom/local/p5home/Navigator;->handle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/local/p5home/Navigator$Result;

    move-result-object p1

    .line 51
    iget-boolean p2, p0, Lcom/local/p5home/AssistantService;->destroyed:Z
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_38} :catch_a1
    .catchall {:try_start_30 .. :try_end_38} :catchall_9f

    if-eqz p2, :cond_47

    .line 56
    iget-boolean p1, p0, Lcom/local/p5home/AssistantService;->destroyed:Z

    if-nez p1, :cond_43

    if-eqz p3, :cond_43

    invoke-direct {p0, v0, p4}, Lcom/local/p5home/AssistantService;->turnReceipt(Ljava/lang/String;Ljava/lang/String;)V

    :cond_43
    invoke-direct {p0}, Lcom/local/p5home/AssistantService;->finishJob()V

    .line 51
    return-void

    :cond_47
    :try_start_47
    iget-object p2, p1, Lcom/local/p5home/Navigator$Result;->message:Ljava/lang/String;

    iget-boolean v2, p1, Lcom/local/p5home/Navigator$Result;->accepted:Z

    if-eqz v2, :cond_4f

    move-object v2, v4

    goto :goto_51

    :cond_4f
    iget-object v2, p1, Lcom/local/p5home/Navigator$Result;->message:Ljava/lang/String;

    :goto_51
    invoke-static {p0, p2, v1, v2}, Lcom/local/p5home/BridgeStore;->update(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string p2, "support"

    iget-object v2, p1, Lcom/local/p5home/Navigator$Result;->replyKind:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_75

    const-string p2, "native://navi.select.route.count"

    iget-object v2, p1, Lcom/local/p5home/Navigator$Result;->replyEvent:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_75

    iget-object v6, p1, Lcom/local/p5home/Navigator$Result;->replyEvent:Ljava/lang/String;

    iget-object v7, p1, Lcom/local/p5home/Navigator$Result;->replyData:Ljava/lang/String;

    iget-object v8, p1, Lcom/local/p5home/Navigator$Result;->message:Ljava/lang/String;

    iget-wide v9, p1, Lcom/local/p5home/Navigator$Result;->conversationEpoch:J

    move-object v5, p0

    invoke-static/range {v5 .. v10}, Lcom/local/p5home/BridgeStore;->enqueueRouteCountReply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_98

    .line 53
    :cond_75
    iget-object p2, p1, Lcom/local/p5home/Navigator$Result;->replyKind:Ljava/lang/String;

    if-eqz p2, :cond_8d

    iget-object p2, p1, Lcom/local/p5home/Navigator$Result;->replyKind:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_8d

    iget-object p2, p1, Lcom/local/p5home/Navigator$Result;->replyKind:Ljava/lang/String;

    iget-object v2, p1, Lcom/local/p5home/Navigator$Result;->replyEvent:Ljava/lang/String;

    iget-object v3, p1, Lcom/local/p5home/Navigator$Result;->replyData:Ljava/lang/String;

    iget-object p1, p1, Lcom/local/p5home/Navigator$Result;->message:Ljava/lang/String;

    invoke-static {p0, p2, v2, v3, p1}, Lcom/local/p5home/BridgeStore;->enqueueReply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_98

    .line 54
    :cond_8d
    iget-boolean p2, p1, Lcom/local/p5home/Navigator$Result;->accepted:Z

    if-nez p2, :cond_98

    const-string p2, "notice"

    iget-object p1, p1, Lcom/local/p5home/Navigator$Result;->message:Ljava/lang/String;

    invoke-static {p0, p2, v4, v4, p1}, Lcom/local/p5home/BridgeStore;->enqueueReply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_98} :catch_a1
    .catchall {:try_start_47 .. :try_end_98} :catchall_9f

    .line 56
    :cond_98
    :goto_98
    iget-boolean p1, p0, Lcom/local/p5home/AssistantService;->destroyed:Z

    if-nez p1, :cond_b2

    if-eqz p3, :cond_b2

    goto :goto_af

    :catchall_9f
    move-exception p1

    goto :goto_b6

    .line 55
    :catch_a1
    move-exception p1

    :try_start_a2
    const-string p1, "\u5bfc\u822a\u8f6c\u63a5\u672a\u5b8c\u6210"

    const-string p2, "\u8bf7\u68c0\u67e5\u9ed8\u8ba4\u5730\u56fe\u4e0e\u6a21\u5757\u72b6\u6001"

    invoke-static {p0, p1, v1, p2}, Lcom/local/p5home/BridgeStore;->update(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a9
    .catchall {:try_start_a2 .. :try_end_a9} :catchall_9f

    .line 56
    iget-boolean p1, p0, Lcom/local/p5home/AssistantService;->destroyed:Z

    if-nez p1, :cond_b2

    if-eqz p3, :cond_b2

    :goto_af
    invoke-direct {p0, v0, p4}, Lcom/local/p5home/AssistantService;->turnReceipt(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b2
    invoke-direct {p0}, Lcom/local/p5home/AssistantService;->finishJob()V

    return-void

    :goto_b6
    iget-boolean p2, p0, Lcom/local/p5home/AssistantService;->destroyed:Z

    if-nez p2, :cond_bf

    if-eqz p3, :cond_bf

    invoke-direct {p0, v0, p4}, Lcom/local/p5home/AssistantService;->turnReceipt(Ljava/lang/String;Ljava/lang/String;)V

    :cond_bf
    invoke-direct {p0}, Lcom/local/p5home/AssistantService;->finishJob()V

    throw p1
.end method

.method synthetic lambda$onStartCommand$6$com-local-g3home-AssistantService(ILjava/lang/String;ZLjava/lang/String;)V
    .registers 12

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/local/p5home/AssistantService;->generation:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne p1, v0, :cond_2d

    iget-boolean v0, p0, Lcom/local/p5home/AssistantService;->destroyed:Z

    if-eqz v0, :cond_d

    goto :goto_2d

    :cond_d
    invoke-static {p0}, Lcom/local/p5home/ConfigStore;->load(Landroid/content/Context;)Lcom/local/p5home/AppConfig;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/local/p5home/AssistantService;->ark:Lcom/local/p5home/ArkClient;

    iget-object v2, v0, Lcom/local/p5home/AppConfig;->apiProtocol:Ljava/lang/String;

    iget-object v3, v0, Lcom/local/p5home/AppConfig;->endpoint:Ljava/lang/String;

    iget-object v4, v0, Lcom/local/p5home/AppConfig;->modelId:Ljava/lang/String;

    iget-object v0, v0, Lcom/local/p5home/AppConfig;->endpoint:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/local/p5home/ConfigStore;->apiKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/local/p5home/ArkClient;->ask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 62
    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/local/p5home/AssistantService;->deliver(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2c} :catch_33
    .catchall {:try_start_0 .. :try_end_2c} :catchall_31

    goto :goto_54

    .line 65
    :cond_2d
    :goto_2d
    invoke-direct {p0}, Lcom/local/p5home/AssistantService;->finishJob()V

    .line 60
    return-void

    .line 65
    :catchall_31
    move-exception v0

    goto :goto_58

    .line 63
    :catch_33
    move-exception v0

    :try_start_34
    iget-object v1, p0, Lcom/local/p5home/AssistantService;->generation:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1
    :try_end_3a
    .catchall {:try_start_34 .. :try_end_3a} :catchall_31

    if-eq p1, v1, :cond_40

    .line 65
    invoke-direct {p0}, Lcom/local/p5home/AssistantService;->finishJob()V

    .line 63
    return-void

    :cond_40
    :try_start_40
    instance-of v1, v0, Lcom/local/p5home/ArkClient$ApiException;

    if-eqz v1, :cond_49

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_4b

    :cond_49
    const-string v0, "\u8bf7\u6c42\u672a\u5b8c\u6210\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u3001\u6a21\u578b\u914d\u7f6e\u6216\u8bbe\u5907\u89e3\u9501\u72b6\u6001"

    :goto_4b
    move-object v5, v0

    .line 64
    const/4 v4, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/local/p5home/AssistantService;->deliver(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_54
    .catchall {:try_start_40 .. :try_end_54} :catchall_31

    .line 65
    :goto_54
    invoke-direct {p0}, Lcom/local/p5home/AssistantService;->finishJob()V

    return-void

    :goto_58
    invoke-direct {p0}, Lcom/local/p5home/AssistantService;->finishJob()V

    throw v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    .line 85
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .registers 6

    .line 26
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Lcom/local/p5home/AssistantService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    new-instance v1, Landroid/app/NotificationChannel;

    const-string v2, "G3 \u5c0fP\u52a9\u624b"

    const/4 v3, 0x2

    const-string v4, "p5home.assistant"

    invoke-direct {v1, v4, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 27
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/local/p5home/AssistantService;->destroyed:Z

    invoke-static {p0}, Lcom/local/p5home/SpeechOutput;->get(Landroid/content/Context;)Lcom/local/p5home/SpeechOutput;

    move-result-object v0

    iget-object v1, p0, Lcom/local/p5home/AssistantService;->speechOwner:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/local/p5home/SpeechOutput;->cancelOwner(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/local/p5home/AssistantService;->generation:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lcom/local/p5home/AssistantService;->ark:Lcom/local/p5home/ArkClient;

    invoke-virtual {v0}, Lcom/local/p5home/ArkClient;->cancel()V

    iget-object v0, p0, Lcom/local/p5home/AssistantService;->network:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    iget-object v0, p0, Lcom/local/p5home/AssistantService;->commands:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    iget-object v0, p0, Lcom/local/p5home/AssistantService;->main:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 17

    .line 31
    move-object v8, p0

    move-object v0, p1

    const/16 v1, 0x25

    invoke-direct {p0}, Lcom/local/p5home/AssistantService;->notification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/local/p5home/AssistantService;->startForeground(ILandroid/app/Notification;)V

    const/4 v9, 0x2

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/local/p5home/AssistantService;->stopSelf()V

    return v9

    .line 32
    :cond_12
    const-string v1, "mode"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 33
    const-string v2, "release"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const-string v4, "id"

    if-eqz v2, :cond_49

    iget-object v1, v8, Lcom/local/p5home/AssistantService;->holds:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_3a

    iget-object v1, v8, Lcom/local/p5home/AssistantService;->main:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/local/p5home/AssistantService;->finishJob()V

    goto :goto_48

    :cond_3a
    iget-object v0, v8, Lcom/local/p5home/AssistantService;->jobs:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_48

    invoke-virtual {p0, v3}, Lcom/local/p5home/AssistantService;->stopForeground(Z)V

    invoke-virtual {p0}, Lcom/local/p5home/AssistantService;->stopSelf()V

    :cond_48
    :goto_48
    return v9

    .line 34
    :cond_49
    iget-object v2, v8, Lcom/local/p5home/AssistantService;->jobs:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 35
    const-string v2, "hold"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_82

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/local/p5home/AssistantService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Lcom/local/p5home/AssistantService$$ExternalSyntheticLambda0;-><init>(Lcom/local/p5home/AssistantService;Ljava/lang/String;)V

    iget-object v3, v8, Lcom/local/p5home/AssistantService;->holds:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v8, Lcom/local/p5home/AssistantService;->main:Landroid/os/Handler;

    const-string v3, "seconds"

    const/16 v4, 0x12c

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v3, 0xa

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v3, 0x140

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v3, v0

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v9

    .line 36
    :cond_82
    const-string v2, "speech_test"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, ""

    const/4 v5, 0x0

    if-eqz v2, :cond_b3

    iget-object v0, v8, Lcom/local/p5home/AssistantService;->generation:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iget-object v1, v8, Lcom/local/p5home/AssistantService;->ark:Lcom/local/p5home/ArkClient;

    invoke-virtual {v1}, Lcom/local/p5home/ArkClient;->cancel()V

    const-string v1, "\u6b63\u5728\u6d4b\u8bd5\u7cfb\u7edf\u64ad\u62a5"

    invoke-static {p0, v1, v5, v4}, Lcom/local/p5home/BridgeStore;->update(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/local/p5home/SpeechOutput;->get(Landroid/content/Context;)Lcom/local/p5home/SpeechOutput;

    move-result-object v1

    iget-object v2, v8, Lcom/local/p5home/AssistantService;->speechOwner:Ljava/lang/String;

    new-instance v3, Lcom/local/p5home/AssistantService$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v0}, Lcom/local/p5home/AssistantService$$ExternalSyntheticLambda1;-><init>(Lcom/local/p5home/AssistantService;I)V

    new-instance v4, Lcom/local/p5home/AssistantService$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, v0}, Lcom/local/p5home/AssistantService$$ExternalSyntheticLambda2;-><init>(Lcom/local/p5home/AssistantService;I)V

    const-string v0, "\u8bed\u97f3\u64ad\u62a5\u6d4b\u8bd5\uff0c\u7cfb\u7edf\u8bed\u97f3\u5df2\u8fde\u63a5\u3002"

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/local/p5home/SpeechOutput;->speak(Ljava/lang/String;Ljava/lang/String;Ljava/util/function/BooleanSupplier;Lcom/local/p5home/SpeechOutput$Callback;)V

    return v9

    .line 37
    :cond_b3
    const-string v2, "music"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v6, "data"

    const-string v7, "requestId"

    if-eqz v2, :cond_ea

    .line 38
    iget-object v1, v8, Lcom/local/p5home/AssistantService;->musicGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v10

    .line 39
    const-string v1, "musicProvider"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "queuedAt"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 40
    iget-object v11, v8, Lcom/local/p5home/AssistantService;->commands:Ljava/util/concurrent/ExecutorService;

    new-instance v12, Lcom/local/p5home/AssistantService$$ExternalSyntheticLambda3;

    move-object v0, v12

    move-object v1, p0

    move v6, v10

    invoke-direct/range {v0 .. v7}, Lcom/local/p5home/AssistantService$$ExternalSyntheticLambda3;-><init>(Lcom/local/p5home/AssistantService;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v11, v12}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 46
    goto/16 :goto_17d

    :cond_ea
    const-string v2, "nav"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_127

    .line 47
    const-string v1, "event"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "g3.asr.navigate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_112

    const-string v1, "g3.asr.nav.control"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_111

    goto :goto_112

    :cond_111
    const/4 v3, 0x0

    :cond_112
    :goto_112
    const-string v1, "externalTurn"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 48
    iget-object v7, v8, Lcom/local/p5home/AssistantService;->commands:Ljava/util/concurrent/ExecutorService;

    new-instance v10, Lcom/local/p5home/AssistantService$$ExternalSyntheticLambda4;

    move-object v0, v10

    move-object v1, p0

    move-object v3, v4

    move v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/local/p5home/AssistantService$$ExternalSyntheticLambda4;-><init>(Lcom/local/p5home/AssistantService;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v7, v10}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 57
    goto :goto_17d

    :cond_127
    const-string v2, "ask"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "test"

    if-nez v2, :cond_13c

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_138

    goto :goto_13c

    .line 66
    :cond_138
    invoke-direct {p0}, Lcom/local/p5home/AssistantService;->finishJob()V

    goto :goto_17d

    .line 58
    :cond_13c
    :goto_13c
    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_149

    const-string v0, "\u8bf7\u53ea\u56de\u590d\uff1a\u8fde\u63a5\u6b63\u5e38\u3002"

    goto :goto_14f

    :cond_149
    const-string v1, "text"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_14f
    move-object v3, v0

    iget-object v0, v8, Lcom/local/p5home/AssistantService;->generation:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    iget-object v0, v8, Lcom/local/p5home/AssistantService;->ark:Lcom/local/p5home/ArkClient;

    invoke-virtual {v0}, Lcom/local/p5home/ArkClient;->cancel()V

    if-nez v7, :cond_164

    invoke-static {p0}, Lcom/local/p5home/SpeechOutput;->get(Landroid/content/Context;)Lcom/local/p5home/SpeechOutput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/local/p5home/SpeechOutput;->cancel()V

    :cond_164
    if-eqz v7, :cond_169

    const-string v0, "\u6b63\u5728\u6d4b\u8bd5\u5927\u6a21\u578b\u8fde\u63a5"

    goto :goto_16b

    :cond_169
    const-string v0, "\u6b63\u5728\u7b49\u5f85\u6a21\u578b\u56de\u7b54"

    :goto_16b
    invoke-static {p0, v0, v5, v4}, Lcom/local/p5home/BridgeStore;->update(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v10, v8, Lcom/local/p5home/AssistantService;->network:Ljava/util/concurrent/ExecutorService;

    new-instance v11, Lcom/local/p5home/AssistantService$$ExternalSyntheticLambda5;

    move-object v0, v11

    move-object v1, p0

    move v4, v7

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/local/p5home/AssistantService$$ExternalSyntheticLambda5;-><init>(Lcom/local/p5home/AssistantService;ILjava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v10, v11}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 66
    nop

    .line 67
    :goto_17d
    return v9
.end method

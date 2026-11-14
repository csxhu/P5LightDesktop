.class public final Lcom/local/p5home/TurnCameraStatusClient;
.super Ljava/lang/Object;
.source "TurnCameraStatusClient.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field public static final URI:Landroid/net/Uri;


# instance fields
.field private final app:Landroid/content/Context;

.field private volatile closed:Z

.field private connection:I

.field private gear:I

.field private lamp:I

.field private lastAttempt:J

.field private final lock:Ljava/lang/Object;

.field private observer:Z

.field private observerGeneration:J

.field private final queued:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private sequence:J

.field private session:Ljava/lang/String;

.field private sessionGeneration:J

.field private final worker:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public static synthetic $r8$lambda$qDVDvMgoTCESQJ-vV8VlJ2vammw(Lcom/local/p5home/TurnCameraStatusClient;)V
    .registers 1

    invoke-direct {p0}, Lcom/local/p5home/TurnCameraStatusClient;->flush()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 15
    const-string v0, "content://com.local.p5home.turncamera/status"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/local/p5home/TurnCameraStatusClient;->URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 10

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/local/p5home/TurnCameraStatusClient$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/local/p5home/TurnCameraStatusClient$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/local/p5home/TurnCameraStatusClient;->worker:Ljava/util/concurrent/ScheduledExecutorService;

    .line 20
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/local/p5home/TurnCameraStatusClient;->queued:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/local/p5home/TurnCameraStatusClient;->lock:Ljava/lang/Object;

    .line 24
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/local/p5home/TurnCameraStatusClient;->sessionGeneration:J

    iput-wide v2, p0, Lcom/local/p5home/TurnCameraStatusClient;->lastAttempt:J

    .line 28
    if-eqz p1, :cond_3d

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 30
    if-nez v0, :cond_2b

    goto :goto_2c

    :cond_2b
    move-object p1, v0

    :goto_2c
    iput-object p1, p0, Lcom/local/p5home/TurnCameraStatusClient;->app:Landroid/content/Context;

    .line 31
    new-instance v2, Lcom/local/p5home/TurnCameraStatusClient$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/local/p5home/TurnCameraStatusClient$$ExternalSyntheticLambda2;-><init>(Lcom/local/p5home/TurnCameraStatusClient;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x8

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 32
    return-void

    .line 28
    :cond_3d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "context"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private flush()V
    .registers 10

    .line 47
    iget-boolean v0, p0, Lcom/local/p5home/TurnCameraStatusClient;->closed:Z

    if-eqz v0, :cond_5

    return-void

    .line 48
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 49
    iget-wide v2, p0, Lcom/local/p5home/TurnCameraStatusClient;->lastAttempt:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_21

    cmp-long v6, v0, v2

    if-ltz v6, :cond_21

    sub-long v2, v0, v2

    const-wide/16 v6, 0x3e8

    cmp-long v2, v2, v6

    if-gez v2, :cond_21

    invoke-direct {p0}, Lcom/local/p5home/TurnCameraStatusClient;->requestFlush()V

    return-void

    .line 50
    :cond_21
    iput-wide v0, p0, Lcom/local/p5home/TurnCameraStatusClient;->lastAttempt:J

    .line 53
    const/4 v0, 0x0

    :try_start_24
    iget-object v1, p0, Lcom/local/p5home/TurnCameraStatusClient;->lock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_27} :catch_d0
    .catch Ljava/lang/LinkageError; {:try_start_24 .. :try_end_27} :catch_ce

    :try_start_27
    iget-boolean v2, p0, Lcom/local/p5home/TurnCameraStatusClient;->closed:Z

    if-eqz v2, :cond_2d

    monitor-exit v1

    return-void

    :cond_2d
    iget-wide v2, p0, Lcom/local/p5home/TurnCameraStatusClient;->observerGeneration:J

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_27 .. :try_end_30} :catchall_cb

    .line 54
    :try_start_30
    iget-object v1, p0, Lcom/local/p5home/TurnCameraStatusClient;->session:Ljava/lang/String;

    if-eqz v1, :cond_3a

    iget-wide v6, p0, Lcom/local/p5home/TurnCameraStatusClient;->sessionGeneration:J

    cmp-long v1, v6, v2

    if-eqz v1, :cond_63

    .line 55
    :cond_3a
    iget-object v1, p0, Lcom/local/p5home/TurnCameraStatusClient;->app:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v6, Lcom/local/p5home/TurnCameraStatusClient;->URI:Landroid/net/Uri;

    const-string v7, "begin"

    invoke-virtual {v1, v6, v7, v0, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 56
    if-nez v1, :cond_4c

    move-object v1, v0

    goto :goto_52

    :cond_4c
    const-string v6, "session"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 57
    :goto_52
    if-eqz v1, :cond_ca

    const-string v6, "[0-9a-f]{32}"

    invoke-virtual {v1, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5d

    goto :goto_ca

    .line 58
    :cond_5d
    iput-object v1, p0, Lcom/local/p5home/TurnCameraStatusClient;->session:Ljava/lang/String;

    iput-wide v2, p0, Lcom/local/p5home/TurnCameraStatusClient;->sessionGeneration:J

    iput-wide v4, p0, Lcom/local/p5home/TurnCameraStatusClient;->sequence:J

    .line 60
    :cond_63
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 61
    iget-object v4, p0, Lcom/local/p5home/TurnCameraStatusClient;->lock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_6b} :catch_d0
    .catch Ljava/lang/LinkageError; {:try_start_30 .. :try_end_6b} :catch_ce

    .line 62
    :try_start_6b
    iget-boolean v5, p0, Lcom/local/p5home/TurnCameraStatusClient;->closed:Z

    if-eqz v5, :cond_71

    monitor-exit v4

    return-void

    .line 66
    :cond_71
    iget-wide v5, p0, Lcom/local/p5home/TurnCameraStatusClient;->observerGeneration:J

    cmp-long v2, v5, v2

    if-eqz v2, :cond_7b

    iput-object v0, p0, Lcom/local/p5home/TurnCameraStatusClient;->session:Ljava/lang/String;

    monitor-exit v4

    return-void

    .line 67
    :cond_7b
    const-string v2, "session"

    iget-object v3, p0, Lcom/local/p5home/TurnCameraStatusClient;->session:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sequence"

    iget-wide v5, p0, Lcom/local/p5home/TurnCameraStatusClient;->sequence:J

    const-wide/16 v7, 0x1

    add-long/2addr v7, v5

    iput-wide v7, p0, Lcom/local/p5home/TurnCameraStatusClient;->sequence:J

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 68
    const-string v2, "observer"

    iget-boolean v3, p0, Lcom/local/p5home/TurnCameraStatusClient;->observer:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "connection"

    iget v3, p0, Lcom/local/p5home/TurnCameraStatusClient;->connection:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "lamp"

    iget v3, p0, Lcom/local/p5home/TurnCameraStatusClient;->lamp:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "gear"

    iget v3, p0, Lcom/local/p5home/TurnCameraStatusClient;->gear:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 69
    monitor-exit v4
    :try_end_ab
    .catchall {:try_start_6b .. :try_end_ab} :catchall_c7

    .line 70
    :try_start_ab
    iget-object v2, p0, Lcom/local/p5home/TurnCameraStatusClient;->app:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/local/p5home/TurnCameraStatusClient;->URI:Landroid/net/Uri;

    const-string v4, "publish"

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 71
    if-eqz v1, :cond_c4

    const-string v2, "accepted"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_c6

    :cond_c4
    iput-object v0, p0, Lcom/local/p5home/TurnCameraStatusClient;->session:Ljava/lang/String;
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_c6} :catch_d0
    .catch Ljava/lang/LinkageError; {:try_start_ab .. :try_end_c6} :catch_ce

    .line 72
    :cond_c6
    goto :goto_d3

    .line 69
    :catchall_c7
    move-exception v1

    :try_start_c8
    monitor-exit v4
    :try_end_c9
    .catchall {:try_start_c8 .. :try_end_c9} :catchall_c7

    :try_start_c9
    throw v1
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_ca} :catch_d0
    .catch Ljava/lang/LinkageError; {:try_start_c9 .. :try_end_ca} :catch_ce

    .line 57
    :cond_ca
    :goto_ca
    return-void

    .line 53
    :catchall_cb
    move-exception v2

    :try_start_cc
    monitor-exit v1
    :try_end_cd
    .catchall {:try_start_cc .. :try_end_cd} :catchall_cb

    :try_start_cd
    throw v2
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_ce} :catch_d0
    .catch Ljava/lang/LinkageError; {:try_start_cd .. :try_end_ce} :catch_ce

    .line 72
    :catch_ce
    move-exception v1

    goto :goto_d1

    :catch_d0
    move-exception v1

    :goto_d1
    iput-object v0, p0, Lcom/local/p5home/TurnCameraStatusClient;->session:Ljava/lang/String;

    .line 73
    :goto_d3
    return-void
.end method

.method static synthetic lambda$new$0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 3

    .line 18
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "G3TurnCameraStatus"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method

.method private requestFlush()V
    .registers 7

    .line 42
    iget-boolean v0, p0, Lcom/local/p5home/TurnCameraStatusClient;->closed:Z

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/local/p5home/TurnCameraStatusClient;->queued:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_25

    .line 43
    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/local/p5home/TurnCameraStatusClient;->worker:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/local/p5home/TurnCameraStatusClient$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/local/p5home/TurnCameraStatusClient$$ExternalSyntheticLambda0;-><init>(Lcom/local/p5home/TurnCameraStatusClient;)V

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-interface {v0, v1, v4, v5, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_1d
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_f .. :try_end_1d} :catch_1e

    .line 44
    goto :goto_24

    :catch_1e
    move-exception v0

    iget-object v0, p0, Lcom/local/p5home/TurnCameraStatusClient;->queued:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 45
    :goto_24
    return-void

    .line 42
    :cond_25
    :goto_25
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/local/p5home/TurnCameraStatusClient;->closed:Z

    iget-object v0, p0, Lcom/local/p5home/TurnCameraStatusClient;->worker:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    return-void
.end method

.method public connection(Z)V
    .registers 7

    .line 36
    iget-object v0, p0, Lcom/local/p5home/TurnCameraStatusClient;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/local/p5home/TurnCameraStatusClient;->closed:Z

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    iget-wide v1, p0, Lcom/local/p5home/TurnCameraStatusClient;->observerGeneration:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/local/p5home/TurnCameraStatusClient;->observerGeneration:J

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x2

    :goto_15
    iput p1, p0, Lcom/local/p5home/TurnCameraStatusClient;->connection:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/local/p5home/TurnCameraStatusClient;->gear:I

    iput p1, p0, Lcom/local/p5home/TurnCameraStatusClient;->lamp:I

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_21

    invoke-direct {p0}, Lcom/local/p5home/TurnCameraStatusClient;->requestFlush()V

    return-void

    :catchall_21
    move-exception p1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw p1
.end method

.method public gearCallback(Z)V
    .registers 4

    .line 40
    iget-object v0, p0, Lcom/local/p5home/TurnCameraStatusClient;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/local/p5home/TurnCameraStatusClient;->closed:Z

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    if-eqz p1, :cond_d

    const/4 p1, 0x1

    goto :goto_e

    :cond_d
    const/4 p1, 0x2

    :goto_e
    iget v1, p0, Lcom/local/p5home/TurnCameraStatusClient;->gear:I

    if-ne v1, p1, :cond_14

    monitor-exit v0

    return-void

    :cond_14
    iput p1, p0, Lcom/local/p5home/TurnCameraStatusClient;->gear:I

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_1b

    invoke-direct {p0}, Lcom/local/p5home/TurnCameraStatusClient;->requestFlush()V

    return-void

    :catchall_1b
    move-exception p1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method synthetic lambda$requestFlush$1$com-local-g3home-TurnCameraStatusClient()V
    .registers 3

    .line 43
    iget-object v0, p0, Lcom/local/p5home/TurnCameraStatusClient;->queued:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0}, Lcom/local/p5home/TurnCameraStatusClient;->flush()V

    return-void
.end method

.method public lampCallback(Z)V
    .registers 4

    .line 38
    iget-object v0, p0, Lcom/local/p5home/TurnCameraStatusClient;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/local/p5home/TurnCameraStatusClient;->closed:Z

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    if-eqz p1, :cond_d

    const/4 p1, 0x1

    goto :goto_e

    :cond_d
    const/4 p1, 0x2

    :goto_e
    iget v1, p0, Lcom/local/p5home/TurnCameraStatusClient;->lamp:I

    if-ne v1, p1, :cond_14

    monitor-exit v0

    return-void

    :cond_14
    iput p1, p0, Lcom/local/p5home/TurnCameraStatusClient;->lamp:I

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_1b

    invoke-direct {p0}, Lcom/local/p5home/TurnCameraStatusClient;->requestFlush()V

    return-void

    :catchall_1b
    move-exception p1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method public observerAttempt(Z)V
    .registers 7

    .line 34
    iget-object v0, p0, Lcom/local/p5home/TurnCameraStatusClient;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/local/p5home/TurnCameraStatusClient;->closed:Z

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    iget-wide v1, p0, Lcom/local/p5home/TurnCameraStatusClient;->observerGeneration:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/local/p5home/TurnCameraStatusClient;->observerGeneration:J

    iput-boolean p1, p0, Lcom/local/p5home/TurnCameraStatusClient;->observer:Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/local/p5home/TurnCameraStatusClient;->lamp:I

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_1a

    invoke-direct {p0}, Lcom/local/p5home/TurnCameraStatusClient;->requestFlush()V

    return-void

    :catchall_1a
    move-exception p1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p1
.end method

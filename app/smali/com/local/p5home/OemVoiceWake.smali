.class public final Lcom/local/p5home/OemVoiceWake;
.super Ljava/lang/Object;
.source "OemVoiceWake.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/local/p5home/OemVoiceWake$Callback;
    }
.end annotation


# static fields
.field private static final ENGINE:Ljava/lang/String; = "com.xiaopeng.speech.ISpeechEngine"

.field private static final PACKAGE:Ljava/lang/String; = "com.xiaopeng.carspeechservice"

.field private static final SERVICE:Ljava/lang/String; = "com.xiaopeng.carspeechservice.speechui.daemon.DaemonService"

.field private static final TIMEOUT_MS:J = 0x3a98L

.field private static final WAKE:Ljava/lang/String; = "com.xiaopeng.speech.coreapi.IWakeupEngine"


# instance fields
.field private volatile active:Z

.field private final app:Landroid/content/Context;

.field private bound:Z

.field private callback:Lcom/local/p5home/OemVoiceWake$Callback;

.field private volatile closed:Z

.field private connection:Landroid/content/ServiceConnection;

.field private dispatchedToWorker:Z

.field private volatile generation:J

.field private final main:Landroid/os/Handler;

.field private pendingEngine:Landroid/os/IBinder;

.field private timeout:Ljava/lang/Runnable;

.field private volatile wakeTransactionStarted:Z

.field private final worker:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/local/p5home/OemVoiceWake;->main:Landroid/os/Handler;

    .line 29
    new-instance v0, Lcom/local/p5home/OemVoiceWake$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/local/p5home/OemVoiceWake$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/local/p5home/OemVoiceWake;->worker:Ljava/util/concurrent/ExecutorService;

    .line 41
    if-eqz p1, :cond_22

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/local/p5home/OemVoiceWake;->app:Landroid/content/Context;

    .line 43
    return-void

    .line 41
    :cond_22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "context"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/local/p5home/OemVoiceWake;J)Z
    .registers 3

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/local/p5home/OemVoiceWake;->current(J)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/local/p5home/OemVoiceWake;)Landroid/content/ServiceConnection;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/local/p5home/OemVoiceWake;->connection:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method static synthetic access$200(Lcom/local/p5home/OemVoiceWake;JZLjava/lang/String;)V
    .registers 5

    .line 20
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/local/p5home/OemVoiceWake;->finish(JZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$302(Lcom/local/p5home/OemVoiceWake;Landroid/os/IBinder;)Landroid/os/IBinder;
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/local/p5home/OemVoiceWake;->pendingEngine:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic access$400(Lcom/local/p5home/OemVoiceWake;JLandroid/content/ServiceConnection;)V
    .registers 4

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/local/p5home/OemVoiceWake;->dispatchIfBound(JLandroid/content/ServiceConnection;)V

    return-void
.end method

.method static synthetic access$500(Lcom/local/p5home/OemVoiceWake;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 20
    invoke-direct {p0, p1}, Lcom/local/p5home/OemVoiceWake;->uncertain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private clear()V
    .registers 5

    .line 183
    iget-wide v0, p0, Lcom/local/p5home/OemVoiceWake;->generation:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/local/p5home/OemVoiceWake;->generation:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/local/p5home/OemVoiceWake;->active:Z

    .line 184
    iget-object v1, p0, Lcom/local/p5home/OemVoiceWake;->timeout:Ljava/lang/Runnable;

    if-eqz v1, :cond_13

    iget-object v2, p0, Lcom/local/p5home/OemVoiceWake;->main:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 185
    :cond_13
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/local/p5home/OemVoiceWake;->timeout:Ljava/lang/Runnable;

    iput-object v1, p0, Lcom/local/p5home/OemVoiceWake;->callback:Lcom/local/p5home/OemVoiceWake$Callback;

    iput-object v1, p0, Lcom/local/p5home/OemVoiceWake;->pendingEngine:Landroid/os/IBinder;

    iput-boolean v0, p0, Lcom/local/p5home/OemVoiceWake;->dispatchedToWorker:Z

    .line 186
    iget-object v2, p0, Lcom/local/p5home/OemVoiceWake;->connection:Landroid/content/ServiceConnection;

    iput-object v1, p0, Lcom/local/p5home/OemVoiceWake;->connection:Landroid/content/ServiceConnection;

    .line 187
    iget-boolean v1, p0, Lcom/local/p5home/OemVoiceWake;->bound:Z

    if-eqz v1, :cond_29

    if-eqz v2, :cond_29

    invoke-direct {p0, v2}, Lcom/local/p5home/OemVoiceWake;->safeUnbind(Landroid/content/ServiceConnection;)V

    .line 188
    :cond_29
    iput-boolean v0, p0, Lcom/local/p5home/OemVoiceWake;->bound:Z

    .line 189
    return-void
.end method

.method private current(J)Z
    .registers 5

    .line 173
    iget-boolean v0, p0, Lcom/local/p5home/OemVoiceWake;->closed:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/local/p5home/OemVoiceWake;->active:Z

    if-eqz v0, :cond_10

    iget-wide v0, p0, Lcom/local/p5home/OemVoiceWake;->generation:J

    cmp-long p1, v0, p1

    if-nez p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method

.method private dispatchIfBound(JLandroid/content/ServiceConnection;)V
    .registers 6

    .line 105
    invoke-direct {p0, p1, p2}, Lcom/local/p5home/OemVoiceWake;->current(J)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/local/p5home/OemVoiceWake;->connection:Landroid/content/ServiceConnection;

    if-ne v0, p3, :cond_26

    iget-boolean p3, p0, Lcom/local/p5home/OemVoiceWake;->bound:Z

    if-eqz p3, :cond_26

    iget-object p3, p0, Lcom/local/p5home/OemVoiceWake;->pendingEngine:Landroid/os/IBinder;

    if-eqz p3, :cond_26

    iget-boolean v0, p0, Lcom/local/p5home/OemVoiceWake;->dispatchedToWorker:Z

    if-eqz v0, :cond_17

    goto :goto_26

    .line 106
    :cond_17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/local/p5home/OemVoiceWake;->dispatchedToWorker:Z

    .line 107
    nop

    .line 108
    iget-object v0, p0, Lcom/local/p5home/OemVoiceWake;->worker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/local/p5home/OemVoiceWake$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/local/p5home/OemVoiceWake$$ExternalSyntheticLambda6;-><init>(Lcom/local/p5home/OemVoiceWake;JLandroid/os/IBinder;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 129
    return-void

    .line 105
    :cond_26
    :goto_26
    return-void
.end method

.method private finish(JZLjava/lang/String;)V
    .registers 5

    .line 178
    invoke-direct {p0, p1, p2}, Lcom/local/p5home/OemVoiceWake;->current(J)Z

    move-result p1

    if-nez p1, :cond_7

    return-void

    .line 179
    :cond_7
    iget-object p1, p0, Lcom/local/p5home/OemVoiceWake;->callback:Lcom/local/p5home/OemVoiceWake$Callback;

    invoke-direct {p0}, Lcom/local/p5home/OemVoiceWake;->clear()V

    .line 180
    if-eqz p1, :cond_15

    if-nez p4, :cond_12

    const-string p4, "\u539f\u8f66\u8bed\u97f3\u8bf7\u6c42\u672a\u5b8c\u6210"

    :cond_12
    invoke-interface {p1, p3, p4}, Lcom/local/p5home/OemVoiceWake$Callback;->onResult(ZLjava/lang/String;)V

    .line 181
    :cond_15
    return-void
.end method

.method private static getWake(Landroid/os/IBinder;)Landroid/os/IBinder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 132
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 134
    :try_start_8
    const-string v2, "com.xiaopeng.speech.ISpeechEngine"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 135
    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_2b

    if-nez p0, :cond_1d

    .line 137
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 135
    const/4 p0, 0x0

    return-object p0

    .line 136
    :cond_1d
    :try_start_1d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p0
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_2b

    .line 137
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 136
    return-object p0

    .line 137
    :catchall_2b
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method static synthetic lambda$new$0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 3

    .line 30
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "G3OemVoiceWake"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method

.method private preflight()Ljava/lang/String;
    .registers 7

    .line 150
    const-string v0, "com.xiaopeng.carspeechservice"

    :try_start_2
    iget-object v1, p0, Lcom/local/p5home/OemVoiceWake;->app:Landroid/content/Context;

    invoke-static {v1}, Lcom/local/p5home/BridgeStore;->status(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v1

    .line 151
    const-string v2, "hookReady"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_ce

    const-string v2, "asrHook"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_ce

    const-string v2, "sessionHook"

    .line 152
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_ce

    const-string v2, "ttsHook"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_ce

    const-string v2, "hookPid"

    .line 153
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-gtz v1, :cond_33

    goto/16 :goto_ce

    .line 155
    :cond_33
    iget-object v1, p0, Lcom/local/p5home/OemVoiceWake;->app:Landroid/content/Context;

    invoke-static {v1}, Lcom/local/p5home/ConfigStore;->load(Landroid/content/Context;)Lcom/local/p5home/AppConfig;

    move-result-object v1

    .line 156
    iget-boolean v2, v1, Lcom/local/p5home/AppConfig;->voiceEnabled:Z

    if-eqz v2, :cond_cb

    iget-boolean v2, v1, Lcom/local/p5home/AppConfig;->doubaoEnabled:Z

    if-eqz v2, :cond_cb

    iget-object v2, p0, Lcom/local/p5home/OemVoiceWake;->app:Landroid/content/Context;

    invoke-static {v2}, Lcom/local/p5home/ConfigStore;->hasApiKey(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_cb

    iget-object v1, v1, Lcom/local/p5home/AppConfig;->modelId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_57

    goto/16 :goto_cb

    .line 158
    :cond_57
    iget-object v1, p0, Lcom/local/p5home/OemVoiceWake;->app:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 159
    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 160
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_c8

    iget-object v4, p0, Lcom/local/p5home/OemVoiceWake;->app:Landroid/content/Context;

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4, v5}, Lcom/local/p5home/OemSpeechIdentity;->trusted(Landroid/content/Context;I)Z

    move-result v4

    if-nez v4, :cond_72

    goto :goto_c8

    .line 162
    :cond_72
    iget-object v4, p0, Lcom/local/p5home/OemVoiceWake;->app:Landroid/content/Context;

    invoke-static {v4}, Lcom/local/p5home/OemSpeechIdentity;->knownCode(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_7d

    .line 163
    const-string v0, "\u539f\u8f66\u8bed\u97f3\u5df2\u5347\u7ea7\uff0c\u79c1\u6709\u5524\u9192\u63a5\u53e3\u5c1a\u672a\u786e\u8ba4\u517c\u5bb9\uff0c\u8bf7\u624b\u52a8\u5524\u9192\u5c0fP"

    return-object v0

    .line 164
    :cond_7d
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.xiaopeng.carspeechservice.speechui.daemon.DaemonService"

    invoke-direct {v4, v0, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4, v3}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    .line 165
    iget-boolean v1, v0, Landroid/content/pm/ServiceInfo;->enabled:Z

    if-eqz v1, :cond_c5

    iget-boolean v1, v0, Landroid/content/pm/ServiceInfo;->exported:Z

    if-eqz v1, :cond_c5

    iget-object v1, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_c5

    iget-object v1, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v1, :cond_c5

    iget-object v1, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v1, v2, :cond_c5

    iget-object v1, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    if-eqz v1, :cond_c3

    iget-object v1, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 167
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c3

    iget-object v1, p0, Lcom/local/p5home/OemVoiceWake;->app:Landroid/content/Context;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 168
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_c3

    goto :goto_c5

    .line 170
    :cond_c3
    const/4 v0, 0x0

    return-object v0

    .line 169
    :cond_c5
    :goto_c5
    const-string v0, "\u539f\u8f66\u8bed\u97f3\u670d\u52a1\u4e0d\u53ef\u8bbf\u95ee\uff0c\u8bf7\u624b\u52a8\u5524\u9192\u5c0fP"

    return-object v0

    .line 161
    :cond_c8
    :goto_c8
    const-string v0, "\u539f\u8f66\u8bed\u97f3\u8eab\u4efd\u672a\u901a\u8fc7\u9a8c\u8bc1\uff0c\u8bf7\u624b\u52a8\u5524\u9192\u5c0fP"

    return-object v0

    .line 157
    :cond_cb
    :goto_cb
    const-string v0, "\u8bf7\u5148\u542f\u7528\u5c0fP\u4e0e\u8c46\u5305\u5e76\u5b8c\u6210\u6a21\u578b\u914d\u7f6e"

    return-object v0

    .line 154
    :cond_ce
    :goto_ce
    const-string v0, "\u539f\u8f66\u8bed\u97f3\u6a21\u5757\u672a\u5c31\u7eea\uff0c\u8bf7\u5148\u624b\u52a8\u5524\u9192\u5c0fP\u6216\u68c0\u67e5\u63a5\u5165\u72b6\u6001"
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_d0} :catch_d3
    .catch Ljava/lang/LinkageError; {:try_start_2 .. :try_end_d0} :catch_d1

    return-object v0

    .line 171
    :catch_d1
    move-exception v0

    goto :goto_d4

    :catch_d3
    move-exception v0

    :goto_d4
    const-string v0, "\u65e0\u6cd5\u68c0\u67e5\u539f\u8f66\u8bed\u97f3\u72b6\u6001\uff0c\u8bf7\u624b\u52a8\u5524\u9192\u5c0fP"

    return-object v0
.end method

.method private static requireMain()V
    .registers 2

    .line 194
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_b

    .line 195
    return-void

    .line 194
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call on main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private safeUnbind(Landroid/content/ServiceConnection;)V
    .registers 3

    .line 191
    :try_start_0
    iget-object v0, p0, Lcom/local/p5home/OemVoiceWake;->app:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_7

    :catch_6
    move-exception p1

    .line 192
    :goto_7
    return-void
.end method

.method private static startDialog(Landroid/os/IBinder;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 140
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 142
    :try_start_8
    const-string v2, "com.xiaopeng.speech.coreapi.IWakeupEngine"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 143
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_26

    if-nez p0, :cond_1c

    .line 145
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 143
    return v2

    .line 144
    :cond_1c
    :try_start_1c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_26

    .line 145
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 144
    return v3

    .line 145
    :catchall_26
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method private uncertain(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/local/p5home/OemVoiceWake;->wakeTransactionStarted:Z

    if-eqz v0, :cond_10

    const-string v0, "\uff1b\u8bf7\u6c42\u53ef\u80fd\u4ecd\u7531\u539f\u8f66\u5904\u7406\uff0c\u8bf7\u7559\u610f\u5c0fP\u72b6\u6001"

    goto :goto_12

    :cond_10
    const-string v0, "\uff0c\u8bf7\u624b\u52a8\u5524\u9192\u5c0fP"

    :goto_12
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public cancel()V
    .registers 1

    .line 97
    invoke-static {}, Lcom/local/p5home/OemVoiceWake;->requireMain()V

    invoke-direct {p0}, Lcom/local/p5home/OemVoiceWake;->clear()V

    return-void
.end method

.method public close()V
    .registers 2

    .line 99
    invoke-static {}, Lcom/local/p5home/OemVoiceWake;->requireMain()V

    .line 100
    iget-boolean v0, p0, Lcom/local/p5home/OemVoiceWake;->closed:Z

    if-eqz v0, :cond_8

    return-void

    .line 101
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/local/p5home/OemVoiceWake;->closed:Z

    invoke-direct {p0}, Lcom/local/p5home/OemVoiceWake;->clear()V

    iget-object v0, p0, Lcom/local/p5home/OemVoiceWake;->worker:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 102
    return-void
.end method

.method synthetic lambda$dispatchIfBound$5$com-local-g3home-OemVoiceWake(JZLjava/lang/String;)V
    .registers 5

    .line 127
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/local/p5home/OemVoiceWake;->finish(JZLjava/lang/String;)V

    return-void
.end method

.method synthetic lambda$dispatchIfBound$6$com-local-g3home-OemVoiceWake(JLandroid/os/IBinder;)V
    .registers 12

    .line 109
    nop

    .line 111
    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0}, Lcom/local/p5home/OemVoiceWake;->preflight()Ljava/lang/String;

    move-result-object v1

    .line 112
    if-eqz v1, :cond_9

    goto :goto_4b

    .line 113
    :cond_9
    invoke-direct {p0, p1, p2}, Lcom/local/p5home/OemVoiceWake;->current(J)Z

    move-result v1

    if-nez v1, :cond_10

    return-void

    .line 114
    :cond_10
    const-string v1, "com.xiaopeng.speech.ISpeechEngine"

    invoke-interface {p3}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    const-string v1, "\u539f\u8f66\u8bed\u97f3\u63a5\u53e3\u7248\u672c\u4e0d\u5339\u914d\uff0c\u8bf7\u624b\u52a8\u5524\u9192\u5c0fP"

    goto :goto_4b

    .line 116
    :cond_1f
    invoke-static {p3}, Lcom/local/p5home/OemVoiceWake;->getWake(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object p3

    .line 117
    if-eqz p3, :cond_49

    const-string v1, "com.xiaopeng.speech.coreapi.IWakeupEngine"

    invoke-interface {p3}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    goto :goto_49

    .line 118
    :cond_32
    invoke-direct {p0, p1, p2}, Lcom/local/p5home/OemVoiceWake;->current(J)Z

    move-result v1

    if-nez v1, :cond_39

    return-void

    .line 120
    :cond_39
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/local/p5home/OemVoiceWake;->wakeTransactionStarted:Z

    .line 121
    invoke-static {p3}, Lcom/local/p5home/OemVoiceWake;->startDialog(Landroid/os/IBinder;)Z

    move-result v0

    .line 122
    if-eqz v0, :cond_45

    const-string p3, "\u5524\u9192\u8bf7\u6c42\u5df2\u63d0\u4ea4\uff0c\u8bf7\u5bf9\u5c0fP\u8bf4\u5df2\u8bbe\u7f6e\u7684\u8c46\u5305\u524d\u7f00\u548c\u95ee\u9898"

    goto :goto_47

    :cond_45
    const-string p3, "\u539f\u8f66\u672a\u63a5\u53d7\u5524\u9192\u8bf7\u6c42\uff0c\u8bf7\u624b\u52a8\u5524\u9192\u5c0fP"

    :goto_47
    move-object v1, p3

    goto :goto_4b

    .line 117
    :cond_49
    :goto_49
    const-string v1, "\u539f\u8f66\u5524\u9192\u63a5\u53e3\u4e0d\u53ef\u7528\uff0c\u8bf7\u624b\u52a8\u5524\u9192\u5c0fP"
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4b} :catch_4e
    .catch Ljava/lang/LinkageError; {:try_start_2 .. :try_end_4b} :catch_4c

    .line 125
    :goto_4b
    goto :goto_55

    :catch_4c
    move-exception p3

    goto :goto_4f

    :catch_4e
    move-exception p3

    :goto_4f
    const-string p3, "\u539f\u8f66\u8bed\u97f3\u8bf7\u6c42\u672a\u5b8c\u6210"

    invoke-direct {p0, p3}, Lcom/local/p5home/OemVoiceWake;->uncertain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_55
    move v6, v0

    move-object v7, v1

    .line 126
    nop

    .line 127
    iget-object p3, p0, Lcom/local/p5home/OemVoiceWake;->main:Landroid/os/Handler;

    new-instance v0, Lcom/local/p5home/OemVoiceWake$$ExternalSyntheticLambda5;

    move-object v2, v0

    move-object v3, p0

    move-wide v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/local/p5home/OemVoiceWake$$ExternalSyntheticLambda5;-><init>(Lcom/local/p5home/OemVoiceWake;JZLjava/lang/String;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 128
    return-void
.end method

.method synthetic lambda$start$1$com-local-g3home-OemVoiceWake(J)V
    .registers 5

    .line 74
    const-string v0, "\u539f\u8f66\u8bed\u97f3\u8bf7\u6c42\u8d85\u65f6"

    invoke-direct {p0, v0}, Lcom/local/p5home/OemVoiceWake;->uncertain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/local/p5home/OemVoiceWake;->finish(JZLjava/lang/String;)V

    return-void
.end method

.method synthetic lambda$start$2$com-local-g3home-OemVoiceWake(JLjava/lang/String;)V
    .registers 5

    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/local/p5home/OemVoiceWake;->finish(JZLjava/lang/String;)V

    return-void
.end method

.method synthetic lambda$start$3$com-local-g3home-OemVoiceWake(JLandroid/content/ServiceConnection;Z)V
    .registers 6

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/local/p5home/OemVoiceWake;->current(J)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/local/p5home/OemVoiceWake;->connection:Landroid/content/ServiceConnection;

    if-eq v0, p3, :cond_b

    goto :goto_1b

    .line 89
    :cond_b
    if-nez p4, :cond_14

    const/4 p3, 0x0

    const-string p4, "\u539f\u8f66\u8bed\u97f3\u670d\u52a1\u672a\u8fd0\u884c\uff0c\u8bf7\u624b\u52a8\u5524\u9192\u5c0fP"

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/local/p5home/OemVoiceWake;->finish(JZLjava/lang/String;)V

    return-void

    .line 90
    :cond_14
    const/4 p4, 0x1

    iput-boolean p4, p0, Lcom/local/p5home/OemVoiceWake;->bound:Z

    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcom/local/p5home/OemVoiceWake;->dispatchIfBound(JLandroid/content/ServiceConnection;)V

    .line 92
    return-void

    .line 88
    :cond_1b
    :goto_1b
    if-eqz p4, :cond_20

    invoke-direct {p0, p3}, Lcom/local/p5home/OemVoiceWake;->safeUnbind(Landroid/content/ServiceConnection;)V

    :cond_20
    return-void
.end method

.method synthetic lambda$start$4$com-local-g3home-OemVoiceWake(JLandroid/content/ServiceConnection;)V
    .registers 12

    .line 77
    invoke-direct {p0}, Lcom/local/p5home/OemVoiceWake;->preflight()Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/local/p5home/OemVoiceWake;->current(J)Z

    move-result v1

    if-nez v1, :cond_b

    return-void

    .line 79
    :cond_b
    if-eqz v0, :cond_18

    iget-object p3, p0, Lcom/local/p5home/OemVoiceWake;->main:Landroid/os/Handler;

    new-instance v1, Lcom/local/p5home/OemVoiceWake$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/local/p5home/OemVoiceWake$$ExternalSyntheticLambda0;-><init>(Lcom/local/p5home/OemVoiceWake;JLjava/lang/String;)V

    invoke-virtual {p3, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 80
    :cond_18
    nop

    .line 82
    const/4 v0, 0x0

    :try_start_1a
    new-instance v1, Landroid/content/Intent;

    const-string v2, "carspeechservice.SpeechServer"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 83
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.xiaopeng.carspeechservice"

    const-string v4, "com.xiaopeng.carspeechservice.speechui.daemon.DaemonService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 84
    iget-object v2, p0, Lcom/local/p5home/OemVoiceWake;->app:Landroid/content/Context;

    invoke-virtual {v2, v1, p3, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0
    :try_end_33
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_33} :catch_34

    goto :goto_35

    .line 85
    :catch_34
    move-exception v1

    :goto_35
    move v7, v0

    .line 86
    nop

    .line 87
    iget-object v0, p0, Lcom/local/p5home/OemVoiceWake;->main:Landroid/os/Handler;

    new-instance v1, Lcom/local/p5home/OemVoiceWake$$ExternalSyntheticLambda1;

    move-object v2, v1

    move-object v3, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/local/p5home/OemVoiceWake$$ExternalSyntheticLambda1;-><init>(Lcom/local/p5home/OemVoiceWake;JLandroid/content/ServiceConnection;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 93
    return-void
.end method

.method public start(Lcom/local/p5home/OemVoiceWake$Callback;)V
    .registers 8

    .line 47
    invoke-static {}, Lcom/local/p5home/OemVoiceWake;->requireMain()V

    .line 48
    if-eqz p1, :cond_4f

    .line 49
    iget-boolean v0, p0, Lcom/local/p5home/OemVoiceWake;->closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    const-string v0, "\u8bed\u97f3\u5165\u53e3\u5df2\u5173\u95ed\uff0c\u8bf7\u91cd\u65b0\u6253\u5f00\u9875\u9762"

    invoke-interface {p1, v1, v0}, Lcom/local/p5home/OemVoiceWake$Callback;->onResult(ZLjava/lang/String;)V

    return-void

    .line 50
    :cond_10
    iget-boolean v0, p0, Lcom/local/p5home/OemVoiceWake;->active:Z

    if-eqz v0, :cond_1a

    const-string v0, "\u6b63\u5728\u8bf7\u6c42\u539f\u8f66\u8bed\u97f3\uff0c\u8bf7\u7a0d\u5019"

    invoke-interface {p1, v1, v0}, Lcom/local/p5home/OemVoiceWake$Callback;->onResult(ZLjava/lang/String;)V

    return-void

    .line 51
    :cond_1a
    iget-wide v2, p0, Lcom/local/p5home/OemVoiceWake;->generation:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/local/p5home/OemVoiceWake;->generation:J

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/local/p5home/OemVoiceWake;->active:Z

    iput-object p1, p0, Lcom/local/p5home/OemVoiceWake;->callback:Lcom/local/p5home/OemVoiceWake$Callback;

    iput-boolean v1, p0, Lcom/local/p5home/OemVoiceWake;->bound:Z

    iput-boolean v1, p0, Lcom/local/p5home/OemVoiceWake;->dispatchedToWorker:Z

    .line 53
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/local/p5home/OemVoiceWake;->pendingEngine:Landroid/os/IBinder;

    iput-boolean v1, p0, Lcom/local/p5home/OemVoiceWake;->wakeTransactionStarted:Z

    .line 54
    new-instance p1, Lcom/local/p5home/OemVoiceWake$1;

    invoke-direct {p1, p0, v2, v3}, Lcom/local/p5home/OemVoiceWake$1;-><init>(Lcom/local/p5home/OemVoiceWake;J)V

    .line 73
    iput-object p1, p0, Lcom/local/p5home/OemVoiceWake;->connection:Landroid/content/ServiceConnection;

    .line 74
    new-instance v0, Lcom/local/p5home/OemVoiceWake$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, v2, v3}, Lcom/local/p5home/OemVoiceWake$$ExternalSyntheticLambda3;-><init>(Lcom/local/p5home/OemVoiceWake;J)V

    iput-object v0, p0, Lcom/local/p5home/OemVoiceWake;->timeout:Ljava/lang/Runnable;

    .line 75
    iget-object v1, p0, Lcom/local/p5home/OemVoiceWake;->main:Landroid/os/Handler;

    const-wide/16 v4, 0x3a98

    invoke-virtual {v1, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 76
    iget-object v0, p0, Lcom/local/p5home/OemVoiceWake;->worker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/local/p5home/OemVoiceWake$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/local/p5home/OemVoiceWake$$ExternalSyntheticLambda4;-><init>(Lcom/local/p5home/OemVoiceWake;JLandroid/content/ServiceConnection;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 94
    return-void

    .line 48
    :cond_4f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "callback"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

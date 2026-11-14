.class public final Lcom/local/p5home/G3Application;
.super Landroid/app/Application;
.source "G3Application.java"


# static fields
.field private static installed:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method static declared-synchronized ensure(Landroid/content/Context;)V
    .registers 3

    const-class v0, Lcom/local/p5home/G3Application;

    monitor-enter v0

    .line 6
    :try_start_3
    sget-boolean v1, Lcom/local/p5home/G3Application;->installed:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_24

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    :try_start_9
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_10

    goto :goto_11

    :cond_10
    move-object p0, v1

    .line 7
    :goto_11
    new-instance v1, Lcom/local/p5home/G3Application$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/local/p5home/G3Application$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    invoke-static {p0, v1}, Lcom/local/p5home/Navigator;->setReplySink(Landroid/content/Context;Lcom/local/p5home/Navigator$ReplySink;)V

    invoke-static {p0}, Lcom/local/p5home/SpeechOutput;->get(Landroid/content/Context;)Lcom/local/p5home/SpeechOutput;

    invoke-static {p0}, Lcom/local/p5home/VehicleBridgeClient;->start(Landroid/content/Context;)V

    const/4 p0, 0x1

    sput-boolean p0, Lcom/local/p5home/G3Application;->installed:Z
    :try_end_22
    .catchall {:try_start_9 .. :try_end_22} :catchall_24

    .line 8
    monitor-exit v0

    return-void

    .line 5
    :catchall_24
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic lambda$ensure$0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 7
    invoke-static {p0, p1, p2, p3, p4}, Lcom/local/p5home/BridgeStore;->enqueueReply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    const-string p2, ""

    const-string p3, "\u6536\u5230\u5730\u56fe\u534f\u8bae\u7ed3\u679c"

    invoke-static {p0, p3, p1, p2}, Lcom/local/p5home/BridgeStore;->update(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .registers 1

    .line 9
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    invoke-static {p0}, Lcom/local/p5home/G3Application;->ensure(Landroid/content/Context;)V

    return-void
.end method

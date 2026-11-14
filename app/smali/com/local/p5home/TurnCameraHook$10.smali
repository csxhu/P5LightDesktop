.class Lcom/local/p5home/TurnCameraHook$10;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "TurnCameraHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/local/p5home/TurnCameraHook;->installOnce(Landroid/content/Context;Ljava/lang/ClassLoader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 195
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 6

    .line 198
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->hasThrowable()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 199
    :cond_7
    # getter for: Lcom/local/p5home/TurnCameraHook;->speedLock:Ljava/lang/Object;
    invoke-static {}, Lcom/local/p5home/TurnCameraHook;->access$100()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 200
    :try_start_c
    const-string v1, "g3_turn_connect_epoch"

    invoke-virtual {p1, v1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getObjectExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 203
    instance-of v1, p1, Ljava/lang/Long;

    if-eqz v1, :cond_38

    # getter for: Lcom/local/p5home/TurnCameraHook;->health:Lcom/local/p5home/TurnCameraEventHealth;
    invoke-static {}, Lcom/local/p5home/TurnCameraHook;->access$400()Lcom/local/p5home/TurnCameraEventHealth;

    move-result-object v1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/local/p5home/TurnCameraEventHealth;->current(J)Z

    move-result p1

    if-eqz p1, :cond_38

    .line 204
    # getter for: Lcom/local/p5home/TurnCameraHook;->health:Lcom/local/p5home/TurnCameraEventHealth;
    invoke-static {}, Lcom/local/p5home/TurnCameraHook;->access$400()Lcom/local/p5home/TurnCameraEventHealth;

    move-result-object p1

    invoke-virtual {p1}, Lcom/local/p5home/TurnCameraEventHealth;->disconnected()V

    # operator++ for: Lcom/local/p5home/TurnCameraHook;->speedSequence:J
    invoke-static {}, Lcom/local/p5home/TurnCameraHook;->access$308()J

    const/4 p1, 0x0

    # setter for: Lcom/local/p5home/TurnCameraHook;->sample:Lcom/local/p5home/TurnCameraHook$Sample;
    invoke-static {p1}, Lcom/local/p5home/TurnCameraHook;->access$202(Lcom/local/p5home/TurnCameraHook$Sample;)Lcom/local/p5home/TurnCameraHook$Sample;

    const/4 p1, 0x0

    # invokes: Lcom/local/p5home/TurnCameraHook;->reportConnection(Z)V
    invoke-static {p1}, Lcom/local/p5home/TurnCameraHook;->access$900(Z)V

    .line 206
    :cond_38
    monitor-exit v0

    .line 207
    return-void

    .line 206
    :catchall_3a
    move-exception p1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_c .. :try_end_3c} :catchall_3a

    throw p1
.end method

.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 6

    .line 196
    # getter for: Lcom/local/p5home/TurnCameraHook;->speedLock:Ljava/lang/Object;
    invoke-static {}, Lcom/local/p5home/TurnCameraHook;->access$100()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_5
    # getter for: Lcom/local/p5home/TurnCameraHook;->health:Lcom/local/p5home/TurnCameraEventHealth;
    invoke-static {}, Lcom/local/p5home/TurnCameraHook;->access$400()Lcom/local/p5home/TurnCameraEventHealth;

    move-result-object v1

    invoke-virtual {v1}, Lcom/local/p5home/TurnCameraEventHealth;->connected()V

    # operator++ for: Lcom/local/p5home/TurnCameraHook;->speedSequence:J
    invoke-static {}, Lcom/local/p5home/TurnCameraHook;->access$308()J

    const/4 v1, 0x0

    # setter for: Lcom/local/p5home/TurnCameraHook;->sample:Lcom/local/p5home/TurnCameraHook$Sample;
    invoke-static {v1}, Lcom/local/p5home/TurnCameraHook;->access$202(Lcom/local/p5home/TurnCameraHook$Sample;)Lcom/local/p5home/TurnCameraHook$Sample;

    const-string v1, "g3_turn_connect_epoch"

    # getter for: Lcom/local/p5home/TurnCameraHook;->health:Lcom/local/p5home/TurnCameraEventHealth;
    invoke-static {}, Lcom/local/p5home/TurnCameraHook;->access$400()Lcom/local/p5home/TurnCameraEventHealth;

    move-result-object v2

    invoke-virtual {v2}, Lcom/local/p5home/TurnCameraEventHealth;->epoch()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setObjectExtra(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x1

    # invokes: Lcom/local/p5home/TurnCameraHook;->reportConnection(Z)V
    invoke-static {p1}, Lcom/local/p5home/TurnCameraHook;->access$900(Z)V

    monitor-exit v0

    return-void

    :catchall_2a
    move-exception p1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_2a

    throw p1
.end method

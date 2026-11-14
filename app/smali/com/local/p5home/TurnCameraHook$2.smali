.class Lcom/local/p5home/TurnCameraHook$2;
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

    .line 103
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 12

    .line 114
    # getter for: Lcom/local/p5home/TurnCameraHook;->speedLock:Ljava/lang/Object;
    invoke-static {}, Lcom/local/p5home/TurnCameraHook;->access$100()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 115
    :try_start_5
    const-string v1, "g3_turn_speed_sequence"

    invoke-virtual {p1, v1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getObjectExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "g3_turn_connection_epoch"

    invoke-virtual {p1, v2}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getObjectExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 116
    instance-of v3, v1, Ljava/lang/Long;

    if-eqz v3, :cond_78

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    # getter for: Lcom/local/p5home/TurnCameraHook;->speedSequence:J
    invoke-static {}, Lcom/local/p5home/TurnCameraHook;->access$300()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_78

    instance-of v1, v2, Ljava/lang/Long;

    if-eqz v1, :cond_78

    # getter for: Lcom/local/p5home/TurnCameraHook;->health:Lcom/local/p5home/TurnCameraEventHealth;
    invoke-static {}, Lcom/local/p5home/TurnCameraHook;->access$400()Lcom/local/p5home/TurnCameraEventHealth;

    move-result-object v1

    move-object v3, v2

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/local/p5home/TurnCameraEventHealth;->current(J)Z

    move-result v1

    if-nez v1, :cond_39

    goto :goto_78

    .line 117
    :cond_39
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->hasThrowable()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_42

    move-object p1, v3

    goto :goto_46

    :cond_42
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object p1

    .line 118
    :goto_46
    instance-of v1, p1, Ljava/lang/Float;

    if-eqz v1, :cond_73

    move-object v1, p1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Lcom/local/p5home/TurnCameraContract;->validSpeed(F)Z

    move-result v1

    if-nez v1, :cond_58

    goto :goto_73

    .line 119
    :cond_58
    new-instance v1, Lcom/local/p5home/TurnCameraHook$Sample;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lcom/local/p5home/TurnCameraHook$Sample;-><init>(FJJ)V

    # setter for: Lcom/local/p5home/TurnCameraHook;->sample:Lcom/local/p5home/TurnCameraHook$Sample;
    invoke-static {v1}, Lcom/local/p5home/TurnCameraHook;->access$202(Lcom/local/p5home/TurnCameraHook$Sample;)Lcom/local/p5home/TurnCameraHook$Sample;

    .line 120
    monitor-exit v0

    .line 121
    return-void

    .line 118
    :cond_73
    :goto_73
    # setter for: Lcom/local/p5home/TurnCameraHook;->sample:Lcom/local/p5home/TurnCameraHook$Sample;
    invoke-static {v3}, Lcom/local/p5home/TurnCameraHook;->access$202(Lcom/local/p5home/TurnCameraHook$Sample;)Lcom/local/p5home/TurnCameraHook$Sample;

    monitor-exit v0

    return-void

    .line 116
    :cond_78
    :goto_78
    monitor-exit v0

    return-void

    .line 120
    :catchall_7a
    move-exception p1

    monitor-exit v0
    :try_end_7c
    .catchall {:try_start_5 .. :try_end_7c} :catchall_7a

    throw p1
.end method

.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 6

    .line 105
    # getter for: Lcom/local/p5home/TurnCameraHook;->speedLock:Ljava/lang/Object;
    invoke-static {}, Lcom/local/p5home/TurnCameraHook;->access$100()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 108
    const/4 v1, 0x0

    :try_start_6
    # setter for: Lcom/local/p5home/TurnCameraHook;->sample:Lcom/local/p5home/TurnCameraHook$Sample;
    invoke-static {v1}, Lcom/local/p5home/TurnCameraHook;->access$202(Lcom/local/p5home/TurnCameraHook$Sample;)Lcom/local/p5home/TurnCameraHook$Sample;

    .line 109
    const-string v1, "g3_turn_speed_sequence"

    # ++operator for: Lcom/local/p5home/TurnCameraHook;->speedSequence:J
    invoke-static {}, Lcom/local/p5home/TurnCameraHook;->access$304()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setObjectExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 110
    const-string v1, "g3_turn_connection_epoch"

    # getter for: Lcom/local/p5home/TurnCameraHook;->health:Lcom/local/p5home/TurnCameraEventHealth;
    invoke-static {}, Lcom/local/p5home/TurnCameraHook;->access$400()Lcom/local/p5home/TurnCameraEventHealth;

    move-result-object v2

    invoke-virtual {v2}, Lcom/local/p5home/TurnCameraEventHealth;->epoch()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setObjectExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 111
    monitor-exit v0

    .line 112
    return-void

    .line 111
    :catchall_29
    move-exception p1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_6 .. :try_end_2b} :catchall_29

    throw p1
.end method

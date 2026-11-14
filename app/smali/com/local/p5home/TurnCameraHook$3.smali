.class Lcom/local/p5home/TurnCameraHook$3;
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


# instance fields
.field final synthetic val$cachedSpeed:Ljava/lang/reflect/Field;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Field;)V
    .registers 2

    .line 123
    iput-object p1, p0, Lcom/local/p5home/TurnCameraHook$3;->val$cachedSpeed:Ljava/lang/reflect/Field;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 13

    .line 127
    # getter for: Lcom/local/p5home/TurnCameraHook;->health:Lcom/local/p5home/TurnCameraEventHealth;
    invoke-static {}, Lcom/local/p5home/TurnCameraHook;->access$400()Lcom/local/p5home/TurnCameraEventHealth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/local/p5home/TurnCameraEventHealth;->hasObserver()Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 128
    :cond_b
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->hasThrowable()Z

    move-result v0

    if-nez v0, :cond_67

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_67

    .line 129
    :cond_1e
    const/4 v0, 0x0

    :try_start_1f
    # getter for: Lcom/local/p5home/TurnCameraHook;->speedLock:Ljava/lang/Object;
    invoke-static {}, Lcom/local/p5home/TurnCameraHook;->access$100()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_5e

    :try_start_24
    # getter for: Lcom/local/p5home/TurnCameraHook;->sample:Lcom/local/p5home/TurnCameraHook$Sample;
    invoke-static {}, Lcom/local/p5home/TurnCameraHook;->access$200()Lcom/local/p5home/TurnCameraHook$Sample;

    move-result-object v2

    if-eqz v2, :cond_4f

    # getter for: Lcom/local/p5home/TurnCameraHook;->health:Lcom/local/p5home/TurnCameraEventHealth;
    invoke-static {}, Lcom/local/p5home/TurnCameraHook;->access$400()Lcom/local/p5home/TurnCameraEventHealth;

    move-result-object v3

    iget-wide v4, v2, Lcom/local/p5home/TurnCameraHook$Sample;->epoch:J

    invoke-virtual {v3, v4, v5}, Lcom/local/p5home/TurnCameraEventHealth;->permitLamp(J)Z

    move-result v3

    if-eqz v3, :cond_4f

    const/4 v4, 0x1

    iget-object v3, p0, Lcom/local/p5home/TurnCameraHook$3;->val$cachedSpeed:Ljava/lang/reflect/Field;

    iget-object v5, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v5

    iget v6, v2, Lcom/local/p5home/TurnCameraHook$Sample;->value:F

    iget-wide v7, v2, Lcom/local/p5home/TurnCameraHook$Sample;->at:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    invoke-static/range {v4 .. v10}, Lcom/local/p5home/TurnCameraContract;->permitSpeed(ZFFJJ)Z

    move-result v2

    if-eqz v2, :cond_4f

    const/4 v2, 0x1

    goto :goto_50

    :cond_4f
    move v2, v0

    :goto_50
    if-nez v2, :cond_59

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v2}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    :cond_59
    monitor-exit v1

    .line 130
    goto :goto_66

    .line 129
    :catchall_5b
    move-exception v2

    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_24 .. :try_end_5d} :catchall_5b

    :try_start_5d
    throw v2
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5e

    .line 130
    :catchall_5e
    move-exception v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 131
    :goto_66
    return-void

    .line 128
    :cond_67
    :goto_67
    return-void
.end method

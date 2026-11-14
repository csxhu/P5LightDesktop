.class Lcom/local/p5home/TurnCameraNativeBridge$3;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "TurnCameraNativeBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/local/p5home/TurnCameraNativeBridge;->install(Landroid/content/Context;Ljava/lang/ClassLoader;Lcom/local/p5home/TurnCameraNativeBridge$Repair;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$b:Lcom/local/p5home/TurnCameraNativeBridge;


# direct methods
.method constructor <init>(Lcom/local/p5home/TurnCameraNativeBridge;)V
    .registers 2

    .line 50
    iput-object p1, p0, Lcom/local/p5home/TurnCameraNativeBridge$3;->val$b:Lcom/local/p5home/TurnCameraNativeBridge;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 4

    .line 64
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "g3_turn_task_lock"

    invoke-virtual {p1, v1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getObjectExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/local/p5home/TurnCameraNativeBridge$3;->val$b:Lcom/local/p5home/TurnCameraNativeBridge;

    # getter for: Lcom/local/p5home/TurnCameraNativeBridge;->displayLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {p1}, Lcom/local/p5home/TurnCameraNativeBridge;->access$000(Lcom/local/p5home/TurnCameraNativeBridge;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_17
    return-void
.end method

.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 11

    .line 51
    iget-object v0, p0, Lcom/local/p5home/TurnCameraNativeBridge$3;->val$b:Lcom/local/p5home/TurnCameraNativeBridge;

    # getter for: Lcom/local/p5home/TurnCameraNativeBridge;->tasks:Ljava/util/Map;
    invoke-static {v0}, Lcom/local/p5home/TurnCameraNativeBridge;->access$300(Lcom/local/p5home/TurnCameraNativeBridge;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/local/p5home/TurnCameraNativeBridge$Permit;

    if-nez v0, :cond_11

    return-void

    .line 54
    :cond_11
    iget-boolean v1, v0, Lcom/local/p5home/TurnCameraNativeBridge$Permit;->closing:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_22

    iget-object v1, p0, Lcom/local/p5home/TurnCameraNativeBridge$3;->val$b:Lcom/local/p5home/TurnCameraNativeBridge;

    # invokes: Lcom/local/p5home/TurnCameraNativeBridge;->parked()Z
    invoke-static {v1}, Lcom/local/p5home/TurnCameraNativeBridge;->access$400(Lcom/local/p5home/TurnCameraNativeBridge;)Z

    move-result v1

    if-eqz v1, :cond_20

    goto :goto_22

    :cond_20
    move v1, v3

    goto :goto_23

    :cond_22
    :goto_22
    move v1, v2

    :goto_23
    iget-object v4, p0, Lcom/local/p5home/TurnCameraNativeBridge$3;->val$b:Lcom/local/p5home/TurnCameraNativeBridge;

    # getter for: Lcom/local/p5home/TurnCameraNativeBridge;->displayLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v4}, Lcom/local/p5home/TurnCameraNativeBridge;->access$000(Lcom/local/p5home/TurnCameraNativeBridge;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const-string v4, "g3_turn_task_lock"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setObjectExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 58
    const/4 v4, 0x0

    :try_start_36
    iget-object v5, p0, Lcom/local/p5home/TurnCameraNativeBridge$3;->val$b:Lcom/local/p5home/TurnCameraNativeBridge;

    # getter for: Lcom/local/p5home/TurnCameraNativeBridge;->tasks:Ljava/util/Map;
    invoke-static {v5}, Lcom/local/p5home/TurnCameraNativeBridge;->access$300(Lcom/local/p5home/TurnCameraNativeBridge;)Ljava/util/Map;

    move-result-object v5

    iget-object v6, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_45

    return-void

    .line 59
    :cond_45
    iget-object v5, p0, Lcom/local/p5home/TurnCameraNativeBridge$3;->val$b:Lcom/local/p5home/TurnCameraNativeBridge;

    # getter for: Lcom/local/p5home/TurnCameraNativeBridge;->displayType:Ljava/lang/reflect/Method;
    invoke-static {v5}, Lcom/local/p5home/TurnCameraNativeBridge;->access$600(Lcom/local/p5home/TurnCameraNativeBridge;)Ljava/lang/reflect/Method;

    move-result-object v5

    iget-object v6, p0, Lcom/local/p5home/TurnCameraNativeBridge$3;->val$b:Lcom/local/p5home/TurnCameraNativeBridge;

    # getter for: Lcom/local/p5home/TurnCameraNativeBridge;->showInstance:Ljava/lang/reflect/Method;
    invoke-static {v6}, Lcom/local/p5home/TurnCameraNativeBridge;->access$500(Lcom/local/p5home/TurnCameraNativeBridge;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    invoke-virtual {v6, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 60
    iget-object v6, p0, Lcom/local/p5home/TurnCameraNativeBridge$3;->val$b:Lcom/local/p5home/TurnCameraNativeBridge;

    # getter for: Lcom/local/p5home/TurnCameraNativeBridge;->preview:Lcom/local/p5home/TurnCameraPreviewPolicy;
    invoke-static {v6}, Lcom/local/p5home/TurnCameraNativeBridge;->access$700(Lcom/local/p5home/TurnCameraNativeBridge;)Lcom/local/p5home/TurnCameraPreviewPolicy;

    move-result-object v6

    iget-wide v7, v0, Lcom/local/p5home/TurnCameraNativeBridge$Permit;->generation:J

    invoke-virtual {v6, v7, v8}, Lcom/local/p5home/TurnCameraPreviewPolicy;->sameGeneration(J)Z

    move-result v6

    if-eqz v6, :cond_77

    iget v6, v0, Lcom/local/p5home/TurnCameraNativeBridge$Permit;->side:I

    if-ne v5, v6, :cond_77

    move v5, v2

    goto :goto_78

    :cond_77
    move v5, v3

    .line 61
    :goto_78
    iget-boolean v6, v0, Lcom/local/p5home/TurnCameraNativeBridge$Permit;->closing:Z

    if-nez v6, :cond_9b

    if-eqz v5, :cond_99

    iget-object v5, p0, Lcom/local/p5home/TurnCameraNativeBridge$3;->val$b:Lcom/local/p5home/TurnCameraNativeBridge;

    # getter for: Lcom/local/p5home/TurnCameraNativeBridge;->preview:Lcom/local/p5home/TurnCameraPreviewPolicy;
    invoke-static {v5}, Lcom/local/p5home/TurnCameraNativeBridge;->access$700(Lcom/local/p5home/TurnCameraNativeBridge;)Lcom/local/p5home/TurnCameraPreviewPolicy;

    move-result-object v5

    iget-wide v6, v0, Lcom/local/p5home/TurnCameraNativeBridge$Permit;->generation:J

    invoke-virtual {v5, v6, v7}, Lcom/local/p5home/TurnCameraPreviewPolicy;->active(J)Z

    move-result v5

    if-eqz v5, :cond_99

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, v0, Lcom/local/p5home/TurnCameraNativeBridge$Permit;->deadline:J

    cmp-long v5, v5, v7

    if-gez v5, :cond_99

    if-eqz v1, :cond_99

    goto :goto_9a

    :cond_99
    move v2, v3

    :goto_9a
    move v5, v2

    .line 62
    :cond_9b
    if-nez v5, :cond_b8

    invoke-virtual {p1, v4}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    iget-boolean v1, v0, Lcom/local/p5home/TurnCameraNativeBridge$Permit;->closing:Z

    if-nez v1, :cond_b8

    iget-object v1, p0, Lcom/local/p5home/TurnCameraNativeBridge$3;->val$b:Lcom/local/p5home/TurnCameraNativeBridge;

    # invokes: Lcom/local/p5home/TurnCameraNativeBridge;->resetPending(Lcom/local/p5home/TurnCameraNativeBridge$Permit;)V
    invoke-static {v1, v0}, Lcom/local/p5home/TurnCameraNativeBridge;->access$800(Lcom/local/p5home/TurnCameraNativeBridge;Lcom/local/p5home/TurnCameraNativeBridge$Permit;)V
    :try_end_a9
    .catchall {:try_start_36 .. :try_end_a9} :catchall_aa

    goto :goto_b8

    .line 63
    :catchall_aa
    move-exception v1

    invoke-virtual {p1, v4}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    iget-boolean p1, v0, Lcom/local/p5home/TurnCameraNativeBridge$Permit;->closing:Z

    if-nez p1, :cond_b8

    iget-object p1, p0, Lcom/local/p5home/TurnCameraNativeBridge$3;->val$b:Lcom/local/p5home/TurnCameraNativeBridge;

    # invokes: Lcom/local/p5home/TurnCameraNativeBridge;->resetPending(Lcom/local/p5home/TurnCameraNativeBridge$Permit;)V
    invoke-static {p1, v0}, Lcom/local/p5home/TurnCameraNativeBridge;->access$800(Lcom/local/p5home/TurnCameraNativeBridge;Lcom/local/p5home/TurnCameraNativeBridge$Permit;)V

    goto :goto_b9

    :cond_b8
    :goto_b8
    nop

    .line 64
    :goto_b9
    return-void
.end method

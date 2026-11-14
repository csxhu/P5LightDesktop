.class Lcom/local/p5home/TurnCameraHook$11;
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

    .line 209
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 3

    .line 210
    # getter for: Lcom/local/p5home/TurnCameraHook;->speedLock:Ljava/lang/Object;
    invoke-static {}, Lcom/local/p5home/TurnCameraHook;->access$100()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_5
    # getter for: Lcom/local/p5home/TurnCameraHook;->health:Lcom/local/p5home/TurnCameraEventHealth;
    invoke-static {}, Lcom/local/p5home/TurnCameraHook;->access$400()Lcom/local/p5home/TurnCameraEventHealth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/local/p5home/TurnCameraEventHealth;->disconnected()V

    # operator++ for: Lcom/local/p5home/TurnCameraHook;->speedSequence:J
    invoke-static {}, Lcom/local/p5home/TurnCameraHook;->access$308()J

    const/4 v0, 0x0

    # setter for: Lcom/local/p5home/TurnCameraHook;->sample:Lcom/local/p5home/TurnCameraHook$Sample;
    invoke-static {v0}, Lcom/local/p5home/TurnCameraHook;->access$202(Lcom/local/p5home/TurnCameraHook$Sample;)Lcom/local/p5home/TurnCameraHook$Sample;

    const/4 v0, 0x0

    # invokes: Lcom/local/p5home/TurnCameraHook;->reportConnection(Z)V
    invoke-static {v0}, Lcom/local/p5home/TurnCameraHook;->access$900(Z)V

    monitor-exit p1

    return-void

    :catchall_19
    move-exception v0

    monitor-exit p1
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_19

    throw v0
.end method

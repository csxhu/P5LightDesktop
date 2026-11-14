.class Lcom/local/p5home/TurnCameraNativeBridge$1;
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

    .line 42
    iput-object p1, p0, Lcom/local/p5home/TurnCameraNativeBridge$1;->val$b:Lcom/local/p5home/TurnCameraNativeBridge;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 4

    .line 44
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "g3_turn_display_lock"

    invoke-virtual {p1, v1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getObjectExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/local/p5home/TurnCameraNativeBridge$1;->val$b:Lcom/local/p5home/TurnCameraNativeBridge;

    # getter for: Lcom/local/p5home/TurnCameraNativeBridge;->displayLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {p1}, Lcom/local/p5home/TurnCameraNativeBridge;->access$000(Lcom/local/p5home/TurnCameraNativeBridge;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_17
    return-void
.end method

.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 7

    .line 43
    iget-object v0, p0, Lcom/local/p5home/TurnCameraNativeBridge$1;->val$b:Lcom/local/p5home/TurnCameraNativeBridge;

    # getter for: Lcom/local/p5home/TurnCameraNativeBridge;->displayLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v0}, Lcom/local/p5home/TurnCameraNativeBridge;->access$000(Lcom/local/p5home/TurnCameraNativeBridge;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "g3_turn_display_lock"

    invoke-virtual {p1, v2, v1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setObjectExtra(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/local/p5home/TurnCameraNativeBridge$1;->val$b:Lcom/local/p5home/TurnCameraNativeBridge;

    # getter for: Lcom/local/p5home/TurnCameraNativeBridge;->ownCall:Ljava/lang/ThreadLocal;
    invoke-static {v1}, Lcom/local/p5home/TurnCameraNativeBridge;->access$100(Lcom/local/p5home/TurnCameraNativeBridge;)Ljava/lang/ThreadLocal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4e

    iget-object v1, p0, Lcom/local/p5home/TurnCameraNativeBridge$1;->val$b:Lcom/local/p5home/TurnCameraNativeBridge;

    iget-object v2, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v3, 0x2

    if-eqz v2, :cond_2d

    iget-object v2, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    array-length v2, v2

    if-ne v2, v3, :cond_2d

    move v2, v0

    goto :goto_2e

    :cond_2d
    const/4 v2, 0x0

    :goto_2e
    iget-object v4, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    if-eqz v4, :cond_4a

    iget-object v4, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    array-length v4, v4

    if-ne v4, v3, :cond_4a

    iget-object v3, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object v3, v3, v0

    instance-of v3, v3, Ljava/lang/Integer;

    if-eqz v3, :cond_4a

    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_4b

    :cond_4a
    const/4 p1, -0x1

    :goto_4b
    # invokes: Lcom/local/p5home/TurnCameraNativeBridge;->externalDisplay(ZI)V
    invoke-static {v1, v2, p1}, Lcom/local/p5home/TurnCameraNativeBridge;->access$200(Lcom/local/p5home/TurnCameraNativeBridge;ZI)V

    :cond_4e
    return-void
.end method

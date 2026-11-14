.class Lcom/local/p5home/TurnCameraHook$5;
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
.field final synthetic val$ctor:Ljava/lang/reflect/Constructor;

.field final synthetic val$event:Ljava/lang/Class;

.field final synthetic val$ids:Ljava/lang/reflect/Method;

.field final synthetic val$manager:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .registers 5

    .line 141
    iput-object p1, p0, Lcom/local/p5home/TurnCameraHook$5;->val$event:Ljava/lang/Class;

    iput-object p2, p0, Lcom/local/p5home/TurnCameraHook$5;->val$ctor:Ljava/lang/reflect/Constructor;

    iput-object p3, p0, Lcom/local/p5home/TurnCameraHook$5;->val$manager:Ljava/lang/reflect/Method;

    iput-object p4, p0, Lcom/local/p5home/TurnCameraHook$5;->val$ids:Ljava/lang/reflect/Method;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 7

    .line 143
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->hasThrowable()Z

    move-result v0

    if-nez v0, :cond_61

    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/util/List;

    if-nez v0, :cond_f

    goto :goto_61

    .line 145
    :cond_f
    :try_start_f
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/local/p5home/TurnCameraHook$5;->val$event:Ljava/lang/Class;

    iget-object v2, p0, Lcom/local/p5home/TurnCameraHook$5;->val$ctor:Ljava/lang/reflect/Constructor;

    iget-object v3, p0, Lcom/local/p5home/TurnCameraHook$5;->val$manager:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/local/p5home/TurnCameraHook$5;->val$ids:Ljava/lang/reflect/Method;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/local/p5home/TurnCameraContract;->appendObserver(Ljava/util/List;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Ljava/util/List;

    move-result-object v0

    .line 146
    if-eqz v0, :cond_38

    # getter for: Lcom/local/p5home/TurnCameraHook;->health:Lcom/local/p5home/TurnCameraEventHealth;
    invoke-static {}, Lcom/local/p5home/TurnCameraHook;->access$400()Lcom/local/p5home/TurnCameraEventHealth;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/local/p5home/TurnCameraEventHealth;->bindObserver(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    goto :goto_39

    :cond_38
    const/4 v3, 0x0

    .line 147
    :goto_39
    if-eqz v3, :cond_43

    invoke-virtual {p1, v0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    const-string p1, "BCM_OBSERVER_ADDED"

    # invokes: Lcom/local/p5home/TurnCameraHook;->log(Ljava/lang/String;)V
    invoke-static {p1}, Lcom/local/p5home/TurnCameraHook;->access$500(Ljava/lang/String;)V

    .line 150
    :cond_43
    # getter for: Lcom/local/p5home/TurnCameraHook;->health:Lcom/local/p5home/TurnCameraEventHealth;
    invoke-static {}, Lcom/local/p5home/TurnCameraHook;->access$400()Lcom/local/p5home/TurnCameraEventHealth;

    move-result-object p1

    invoke-virtual {p1}, Lcom/local/p5home/TurnCameraEventHealth;->hasObserver()Z

    move-result p1

    # invokes: Lcom/local/p5home/TurnCameraHook;->reportObserver(Z)V
    invoke-static {p1}, Lcom/local/p5home/TurnCameraHook;->access$600(Z)V
    :try_end_4e
    .catchall {:try_start_f .. :try_end_4e} :catchall_4f

    .line 151
    goto :goto_60

    :catchall_4f
    move-exception p1

    # getter for: Lcom/local/p5home/TurnCameraHook;->health:Lcom/local/p5home/TurnCameraEventHealth;
    invoke-static {}, Lcom/local/p5home/TurnCameraHook;->access$400()Lcom/local/p5home/TurnCameraEventHealth;

    move-result-object p1

    invoke-virtual {p1}, Lcom/local/p5home/TurnCameraEventHealth;->hasObserver()Z

    move-result p1

    # invokes: Lcom/local/p5home/TurnCameraHook;->reportObserver(Z)V
    invoke-static {p1}, Lcom/local/p5home/TurnCameraHook;->access$600(Z)V

    const-string p1, "OBSERVER_UNAVAILABLE"

    # invokes: Lcom/local/p5home/TurnCameraHook;->log(Ljava/lang/String;)V
    invoke-static {p1}, Lcom/local/p5home/TurnCameraHook;->access$500(Ljava/lang/String;)V

    .line 152
    :goto_60
    return-void

    .line 143
    :cond_61
    :goto_61
    return-void
.end method

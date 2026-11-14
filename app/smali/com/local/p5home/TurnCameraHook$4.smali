.class Lcom/local/p5home/TurnCameraHook$4;
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
.field final synthetic val$cachedGear:Ljava/lang/reflect/Field;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Field;)V
    .registers 2

    .line 133
    iput-object p1, p0, Lcom/local/p5home/TurnCameraHook$4;->val$cachedGear:Ljava/lang/reflect/Field;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 6

    .line 135
    # getter for: Lcom/local/p5home/TurnCameraHook;->health:Lcom/local/p5home/TurnCameraEventHealth;
    invoke-static {}, Lcom/local/p5home/TurnCameraHook;->access$400()Lcom/local/p5home/TurnCameraEventHealth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/local/p5home/TurnCameraEventHealth;->hasObserver()Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 136
    :cond_b
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->hasThrowable()Z

    move-result v0

    if-nez v0, :cond_42

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_42

    .line 137
    :cond_1e
    const/4 v0, 0x0

    :try_start_1f
    # getter for: Lcom/local/p5home/TurnCameraHook;->health:Lcom/local/p5home/TurnCameraEventHealth;
    invoke-static {}, Lcom/local/p5home/TurnCameraHook;->access$400()Lcom/local/p5home/TurnCameraEventHealth;

    move-result-object v1

    iget-object v2, p0, Lcom/local/p5home/TurnCameraHook$4;->val$cachedGear:Ljava/lang/reflect/Field;

    iget-object v3, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/local/p5home/TurnCameraEventHealth;->permitGear(I)Z

    move-result v1

    if-nez v1, :cond_38

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V
    :try_end_38
    .catchall {:try_start_1f .. :try_end_38} :catchall_39

    .line 138
    :cond_38
    goto :goto_41

    :catchall_39
    move-exception v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 139
    :goto_41
    return-void

    .line 136
    :cond_42
    :goto_42
    return-void
.end method

.class Lcom/local/p5home/TurnCameraHook$6;
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
.field final synthetic val$area:Ljava/lang/reflect/Method;

.field final synthetic val$propertyId:Ljava/lang/reflect/Method;

.field final synthetic val$propertyValue:Ljava/lang/Class;

.field final synthetic val$status:Ljava/lang/reflect/Method;

.field final synthetic val$value:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .registers 6

    .line 154
    iput-object p1, p0, Lcom/local/p5home/TurnCameraHook$6;->val$propertyValue:Ljava/lang/Class;

    iput-object p2, p0, Lcom/local/p5home/TurnCameraHook$6;->val$propertyId:Ljava/lang/reflect/Method;

    iput-object p3, p0, Lcom/local/p5home/TurnCameraHook$6;->val$area:Ljava/lang/reflect/Method;

    iput-object p4, p0, Lcom/local/p5home/TurnCameraHook$6;->val$status:Ljava/lang/reflect/Method;

    iput-object p5, p0, Lcom/local/p5home/TurnCameraHook$6;->val$value:Ljava/lang/reflect/Method;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 3

    .line 168
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->hasThrowable()Z

    move-result v0

    if-eqz v0, :cond_1d

    # getter for: Lcom/local/p5home/TurnCameraHook;->health:Lcom/local/p5home/TurnCameraEventHealth;
    invoke-static {}, Lcom/local/p5home/TurnCameraHook;->access$400()Lcom/local/p5home/TurnCameraEventHealth;

    move-result-object v0

    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lcom/local/p5home/TurnCameraEventHealth;->owns(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    # getter for: Lcom/local/p5home/TurnCameraHook;->health:Lcom/local/p5home/TurnCameraEventHealth;
    invoke-static {}, Lcom/local/p5home/TurnCameraHook;->access$400()Lcom/local/p5home/TurnCameraEventHealth;

    move-result-object p1

    invoke-virtual {p1}, Lcom/local/p5home/TurnCameraEventHealth;->lampError()V

    const/4 p1, 0x0

    # invokes: Lcom/local/p5home/TurnCameraHook;->reportLamp(Z)V
    invoke-static {p1}, Lcom/local/p5home/TurnCameraHook;->access$700(Z)V

    .line 169
    :cond_1d
    return-void
.end method

.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 10

    .line 156
    # getter for: Lcom/local/p5home/TurnCameraHook;->health:Lcom/local/p5home/TurnCameraEventHealth;
    invoke-static {}, Lcom/local/p5home/TurnCameraHook;->access$400()Lcom/local/p5home/TurnCameraEventHealth;

    move-result-object v0

    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/local/p5home/TurnCameraEventHealth;->owns(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 158
    :cond_d
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_f
    iget-object v2, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object v2, v2, v1

    .line 159
    iget-object v3, p0, Lcom/local/p5home/TurnCameraHook$6;->val$propertyValue:Ljava/lang/Class;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    # getter for: Lcom/local/p5home/TurnCameraHook;->health:Lcom/local/p5home/TurnCameraEventHealth;
    invoke-static {}, Lcom/local/p5home/TurnCameraHook;->access$400()Lcom/local/p5home/TurnCameraEventHealth;

    move-result-object v2

    invoke-virtual {v2}, Lcom/local/p5home/TurnCameraEventHealth;->lampError()V

    # invokes: Lcom/local/p5home/TurnCameraHook;->reportLamp(Z)V
    invoke-static {v1}, Lcom/local/p5home/TurnCameraHook;->access$700(Z)V

    invoke-virtual {p1, v0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    return-void

    .line 160
    :cond_29
    iget-object v3, p0, Lcom/local/p5home/TurnCameraHook$6;->val$propertyId:Ljava/lang/reflect/Method;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const v4, 0x21411cc0

    if-eq v3, v4, :cond_3d

    return-void

    .line 161
    :cond_3d
    # getter for: Lcom/local/p5home/TurnCameraHook;->health:Lcom/local/p5home/TurnCameraEventHealth;
    invoke-static {}, Lcom/local/p5home/TurnCameraHook;->access$400()Lcom/local/p5home/TurnCameraEventHealth;

    move-result-object v3

    iget-object v4, p0, Lcom/local/p5home/TurnCameraHook$6;->val$area:Ljava/lang/reflect/Method;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v4, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/local/p5home/TurnCameraHook$6;->val$status:Ljava/lang/reflect/Method;

    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {v5, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/local/p5home/TurnCameraHook$6;->val$value:Ljava/lang/reflect/Method;

    new-array v7, v1, [Ljava/lang/Object;

    invoke-virtual {v6, v2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v4, v5, v2}, Lcom/local/p5home/TurnCameraEventHealth;->lamp(IILjava/lang/Object;)Z

    move-result v2

    .line 162
    # invokes: Lcom/local/p5home/TurnCameraHook;->reportLamp(Z)V
    invoke-static {v2}, Lcom/local/p5home/TurnCameraHook;->access$700(Z)V

    if-nez v2, :cond_71

    invoke-virtual {p1, v0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V
    :try_end_71
    .catchall {:try_start_f .. :try_end_71} :catchall_72

    .line 163
    :cond_71
    goto :goto_80

    :catchall_72
    move-exception v2

    # getter for: Lcom/local/p5home/TurnCameraHook;->health:Lcom/local/p5home/TurnCameraEventHealth;
    invoke-static {}, Lcom/local/p5home/TurnCameraHook;->access$400()Lcom/local/p5home/TurnCameraEventHealth;

    move-result-object v2

    invoke-virtual {v2}, Lcom/local/p5home/TurnCameraEventHealth;->lampError()V

    # invokes: Lcom/local/p5home/TurnCameraHook;->reportLamp(Z)V
    invoke-static {v1}, Lcom/local/p5home/TurnCameraHook;->access$700(Z)V

    invoke-virtual {p1, v0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 164
    :goto_80
    return-void
.end method

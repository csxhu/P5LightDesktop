.class Lcom/local/p5home/TurnCameraHook$8;
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

    .line 176
    iput-object p1, p0, Lcom/local/p5home/TurnCameraHook$8;->val$propertyValue:Ljava/lang/Class;

    iput-object p2, p0, Lcom/local/p5home/TurnCameraHook$8;->val$propertyId:Ljava/lang/reflect/Method;

    iput-object p3, p0, Lcom/local/p5home/TurnCameraHook$8;->val$area:Ljava/lang/reflect/Method;

    iput-object p4, p0, Lcom/local/p5home/TurnCameraHook$8;->val$status:Ljava/lang/reflect/Method;

    iput-object p5, p0, Lcom/local/p5home/TurnCameraHook$8;->val$value:Ljava/lang/reflect/Method;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 2

    .line 187
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->hasThrowable()Z

    move-result p1

    if-eqz p1, :cond_11

    # getter for: Lcom/local/p5home/TurnCameraHook;->health:Lcom/local/p5home/TurnCameraEventHealth;
    invoke-static {}, Lcom/local/p5home/TurnCameraHook;->access$400()Lcom/local/p5home/TurnCameraEventHealth;

    move-result-object p1

    invoke-virtual {p1}, Lcom/local/p5home/TurnCameraEventHealth;->gearError()V

    const/4 p1, 0x0

    # invokes: Lcom/local/p5home/TurnCameraHook;->reportGear(Z)V
    invoke-static {p1}, Lcom/local/p5home/TurnCameraHook;->access$800(Z)V

    .line 188
    :cond_11
    return-void
.end method

.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 8

    .line 179
    const/4 v0, 0x0

    :try_start_1
    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object p1, p1, v0

    .line 180
    iget-object v1, p0, Lcom/local/p5home/TurnCameraHook$8;->val$propertyValue:Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    # getter for: Lcom/local/p5home/TurnCameraHook;->health:Lcom/local/p5home/TurnCameraEventHealth;
    invoke-static {}, Lcom/local/p5home/TurnCameraHook;->access$400()Lcom/local/p5home/TurnCameraEventHealth;

    move-result-object p1

    invoke-virtual {p1}, Lcom/local/p5home/TurnCameraEventHealth;->gearError()V

    # invokes: Lcom/local/p5home/TurnCameraHook;->reportGear(Z)V
    invoke-static {v0}, Lcom/local/p5home/TurnCameraHook;->access$800(Z)V

    return-void

    .line 181
    :cond_18
    iget-object v1, p0, Lcom/local/p5home/TurnCameraHook$8;->val$propertyId:Ljava/lang/reflect/Method;

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const v2, 0x21401205

    if-ne v1, v2, :cond_5a

    # getter for: Lcom/local/p5home/TurnCameraHook;->health:Lcom/local/p5home/TurnCameraEventHealth;
    invoke-static {}, Lcom/local/p5home/TurnCameraHook;->access$400()Lcom/local/p5home/TurnCameraEventHealth;

    move-result-object v1

    iget-object v2, p0, Lcom/local/p5home/TurnCameraHook$8;->val$area:Ljava/lang/reflect/Method;

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/local/p5home/TurnCameraHook$8;->val$status:Ljava/lang/reflect/Method;

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {v3, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/local/p5home/TurnCameraHook$8;->val$value:Ljava/lang/reflect/Method;

    new-array v5, v0, [Ljava/lang/Object;

    invoke-virtual {v4, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, v3, p1}, Lcom/local/p5home/TurnCameraEventHealth;->gear(IILjava/lang/Object;)Z

    move-result p1

    # invokes: Lcom/local/p5home/TurnCameraHook;->reportGear(Z)V
    invoke-static {p1}, Lcom/local/p5home/TurnCameraHook;->access$800(Z)V
    :try_end_5a
    .catchall {:try_start_1 .. :try_end_5a} :catchall_5b

    .line 182
    :cond_5a
    goto :goto_66

    :catchall_5b
    move-exception p1

    # getter for: Lcom/local/p5home/TurnCameraHook;->health:Lcom/local/p5home/TurnCameraEventHealth;
    invoke-static {}, Lcom/local/p5home/TurnCameraHook;->access$400()Lcom/local/p5home/TurnCameraEventHealth;

    move-result-object p1

    invoke-virtual {p1}, Lcom/local/p5home/TurnCameraEventHealth;->gearError()V

    # invokes: Lcom/local/p5home/TurnCameraHook;->reportGear(Z)V
    invoke-static {v0}, Lcom/local/p5home/TurnCameraHook;->access$800(Z)V

    .line 183
    :goto_66
    return-void
.end method

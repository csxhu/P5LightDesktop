.class Lcom/local/p5home/VehicleObservationHook$3;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "VehicleObservationHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/local/p5home/VehicleObservationHook;->lccObserver(Landroid/content/Context;Ljava/lang/String;)Lde/robv/android/xposed/XC_MethodHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$c:Landroid/content/Context;

.field final synthetic val$generation:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 89
    iput-object p1, p0, Lcom/local/p5home/VehicleObservationHook$3;->val$c:Landroid/content/Context;

    iput-object p2, p0, Lcom/local/p5home/VehicleObservationHook$3;->val$generation:Ljava/lang/String;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 11

    .line 91
    :try_start_0
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->hasThrowable()Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    if-eqz v0, :cond_3e

    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    array-length v0, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3e

    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_3e

    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_3e

    iget-object v3, p0, Lcom/local/p5home/VehicleObservationHook$3;->val$c:Landroid/content/Context;

    const/16 v4, 0x8

    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v5

    iget-object v7, p0, Lcom/local/p5home/VehicleObservationHook$3;->val$generation:Ljava/lang/String;

    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object p1, p1, v2

    move-object v8, p1

    check-cast v8, Ljava/lang/Boolean;

    # invokes: Lcom/local/p5home/VehicleObservationHook;->publish(Landroid/content/Context;IDLjava/lang/String;Ljava/lang/Boolean;)V
    invoke-static/range {v3 .. v8}, Lcom/local/p5home/VehicleObservationHook;->access$200(Landroid/content/Context;IDLjava/lang/String;Ljava/lang/Boolean;)V
    :try_end_3c
    .catchall {:try_start_0 .. :try_end_3c} :catchall_3d

    goto :goto_3e

    :catchall_3d
    move-exception p1

    .line 92
    :cond_3e
    :goto_3e
    return-void
.end method

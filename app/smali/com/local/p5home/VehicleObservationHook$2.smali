.class Lcom/local/p5home/VehicleObservationHook$2;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "VehicleObservationHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/local/p5home/VehicleObservationHook;->observer(Landroid/content/Context;ILjava/lang/String;)Lde/robv/android/xposed/XC_MethodHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$c:Landroid/content/Context;

.field final synthetic val$generation:Ljava/lang/String;

.field final synthetic val$kind:I


# direct methods
.method constructor <init>(ILandroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 81
    iput p1, p0, Lcom/local/p5home/VehicleObservationHook$2;->val$kind:I

    iput-object p2, p0, Lcom/local/p5home/VehicleObservationHook$2;->val$c:Landroid/content/Context;

    iput-object p3, p0, Lcom/local/p5home/VehicleObservationHook$2;->val$generation:Ljava/lang/String;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 6

    .line 83
    :try_start_0
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->hasThrowable()Z

    move-result v0

    if-nez v0, :cond_44

    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    if-eqz v0, :cond_44

    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    array-length v0, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_11

    goto :goto_44

    :cond_11
    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    .line 84
    iget v0, p0, Lcom/local/p5home/VehicleObservationHook$2;->val$kind:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1f

    instance-of v2, p1, Ljava/lang/Float;

    if-eqz v2, :cond_25

    :cond_1f
    if-eq v0, v1, :cond_26

    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_26

    :cond_25
    return-void

    .line 85
    :cond_26
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-nez p1, :cond_43

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p1

    if-eqz p1, :cond_39

    goto :goto_43

    :cond_39
    iget-object p1, p0, Lcom/local/p5home/VehicleObservationHook$2;->val$c:Landroid/content/Context;

    iget v2, p0, Lcom/local/p5home/VehicleObservationHook$2;->val$kind:I

    iget-object v3, p0, Lcom/local/p5home/VehicleObservationHook$2;->val$generation:Ljava/lang/String;

    # invokes: Lcom/local/p5home/VehicleObservationHook;->publish(Landroid/content/Context;IDLjava/lang/String;)V
    invoke-static {p1, v2, v0, v1, v3}, Lcom/local/p5home/VehicleObservationHook;->access$100(Landroid/content/Context;IDLjava/lang/String;)V
    :try_end_42
    .catchall {:try_start_0 .. :try_end_42} :catchall_45

    goto :goto_46

    :cond_43
    :goto_43
    return-void

    .line 83
    :cond_44
    :goto_44
    return-void

    .line 86
    :catchall_45
    move-exception p1

    :goto_46
    nop

    .line 87
    return-void
.end method

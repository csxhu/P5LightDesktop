.class Lcom/local/p5home/VehicleObservationHook$1;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "VehicleObservationHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/local/p5home/VehicleObservationHook;->handleLoadPackage(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/local/p5home/VehicleObservationHook;

.field final synthetic val$p:Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;

.field final synthetic val$target:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/local/p5home/VehicleObservationHook;Ljava/lang/String;Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .registers 4

    .line 40
    iput-object p1, p0, Lcom/local/p5home/VehicleObservationHook$1;->this$0:Lcom/local/p5home/VehicleObservationHook;

    iput-object p2, p0, Lcom/local/p5home/VehicleObservationHook$1;->val$target:Ljava/lang/String;

    iput-object p3, p0, Lcom/local/p5home/VehicleObservationHook$1;->val$p:Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 4

    .line 42
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->hasThrowable()Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    if-eqz v0, :cond_34

    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    array-length v0, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_34

    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    instance-of v0, v0, Landroid/content/Context;

    if-eqz v0, :cond_34

    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object p1, p1, v1

    check-cast p1, Landroid/content/Context;

    iget-object v0, p0, Lcom/local/p5home/VehicleObservationHook$1;->val$target:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/local/p5home/VehicleObservationHook$1;->val$p:Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;

    iget-object v0, v0, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    iget-object v1, p0, Lcom/local/p5home/VehicleObservationHook$1;->val$target:Ljava/lang/String;

    # invokes: Lcom/local/p5home/VehicleObservationHook;->schedule(Landroid/content/Context;Ljava/lang/ClassLoader;Ljava/lang/String;)V
    invoke-static {p1, v0, v1}, Lcom/local/p5home/VehicleObservationHook;->access$000(Landroid/content/Context;Ljava/lang/ClassLoader;Ljava/lang/String;)V

    .line 43
    :cond_34
    return-void
.end method

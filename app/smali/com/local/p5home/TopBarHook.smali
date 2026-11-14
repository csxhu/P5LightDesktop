.class public final Lcom/local/p5home/TopBarHook;
.super Ljava/lang/Object;
.source "TopBarHook.java"

# interfaces
.implements Lde/robv/android/xposed/IXposedHookLoadPackage;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static log(Ljava/lang/String;)V
    .registers 3

    .line 20
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "G3TopBar: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_17

    goto :goto_18

    :catchall_17
    move-exception p0

    :goto_18
    return-void
.end method


# virtual methods
.method public handleLoadPackage(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .registers 10

    .line 12
    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->packageName:Ljava/lang/String;

    const-string v1, "com.android.systemui"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->processName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_56

    .line 13
    :cond_13
    const-string v0, "VerticalInfoflow2DView"

    const-string v1, "P5UnusedTopBarView"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_1d
    const/4 v3, 0x2

    if-ge v2, v3, :cond_55

    aget-object v3, v0, v2

    .line 14
    :try_start_22
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "com.xiaopeng.systemui.infoflow."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const-string v5, "initView"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    new-instance v7, Lcom/local/p5home/TopBarHook$1;

    invoke-direct {v7, p0}, Lcom/local/p5home/TopBarHook$1;-><init>(Lcom/local/p5home/TopBarHook;)V

    aput-object v7, v6, v1

    invoke-static {v3, v4, v5, v6}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 17
    const-string v3, "INIT_HOOK_INSTALLED"

    invoke-static {v3}, Lcom/local/p5home/TopBarHook;->log(Ljava/lang/String;)V
    :try_end_4b
    .catchall {:try_start_22 .. :try_end_4b} :catchall_4c

    .line 18
    goto :goto_52

    :catchall_4c
    move-exception v3

    const-string v3, "LAYOUT_HOOK_UNAVAILABLE"

    invoke-static {v3}, Lcom/local/p5home/TopBarHook;->log(Ljava/lang/String;)V

    .line 13
    :goto_52
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 19
    :cond_55
    return-void

    .line 12
    :cond_56
    :goto_56
    return-void
.end method

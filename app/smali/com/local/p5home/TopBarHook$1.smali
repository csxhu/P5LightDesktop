.class Lcom/local/p5home/TopBarHook$1;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "TopBarHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/local/p5home/TopBarHook;->handleLoadPackage(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/local/p5home/TopBarHook;


# direct methods
.method constructor <init>(Lcom/local/p5home/TopBarHook;)V
    .registers 2

    .line 14
    iput-object p1, p0, Lcom/local/p5home/TopBarHook$1;->this$0:Lcom/local/p5home/TopBarHook;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 3

    .line 16
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->hasThrowable()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    :try_start_7
    invoke-static {}, Lcom/local/p5home/TopBarManager;->get()Lcom/local/p5home/TopBarManager;

    move-result-object v0

    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lcom/local/p5home/TopBarManager;->attach(Ljava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_11

    goto :goto_17

    :catchall_11
    move-exception p1

    const-string p1, "ATTACH_UNAVAILABLE"

    invoke-static {p1}, Lcom/local/p5home/TopBarHook;->log(Ljava/lang/String;)V

    :goto_17
    return-void
.end method

.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 3

    .line 15
    :try_start_0
    invoke-static {}, Lcom/local/p5home/TopBarManager;->get()Lcom/local/p5home/TopBarManager;

    move-result-object v0

    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lcom/local/p5home/TopBarManager;->beforeInit(Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_a

    goto :goto_10

    :catchall_a
    move-exception p1

    const-string p1, "RESTORE_UNAVAILABLE"

    invoke-static {p1}, Lcom/local/p5home/TopBarHook;->log(Ljava/lang/String;)V

    :goto_10
    return-void
.end method

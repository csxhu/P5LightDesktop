.class Lcom/local/p5home/TurnCameraNativeBridge$2;
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

    .line 47
    iput-object p1, p0, Lcom/local/p5home/TurnCameraNativeBridge$2;->val$b:Lcom/local/p5home/TurnCameraNativeBridge;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 4

    .line 47
    iget-object v0, p0, Lcom/local/p5home/TurnCameraNativeBridge$2;->val$b:Lcom/local/p5home/TurnCameraNativeBridge;

    # getter for: Lcom/local/p5home/TurnCameraNativeBridge;->ownCall:Ljava/lang/ThreadLocal;
    invoke-static {v0}, Lcom/local/p5home/TurnCameraNativeBridge;->access$100(Lcom/local/p5home/TurnCameraNativeBridge;)Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/local/p5home/TurnCameraNativeBridge$Permit;

    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->hasThrowable()Z

    move-result v1

    if-nez v1, :cond_1f

    if-eqz v0, :cond_1f

    iget-object v1, p0, Lcom/local/p5home/TurnCameraNativeBridge$2;->val$b:Lcom/local/p5home/TurnCameraNativeBridge;

    # getter for: Lcom/local/p5home/TurnCameraNativeBridge;->tasks:Ljava/util/Map;
    invoke-static {v1}, Lcom/local/p5home/TurnCameraNativeBridge;->access$300(Lcom/local/p5home/TurnCameraNativeBridge;)Ljava/util/Map;

    move-result-object v1

    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    return-void
.end method

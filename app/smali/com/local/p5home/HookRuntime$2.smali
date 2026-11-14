.class Lcom/local/p5home/HookRuntime$2;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "HookRuntime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/local/p5home/HookRuntime;->install()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/local/p5home/HookRuntime;

.field final synthetic val$control:Lcom/local/p5home/HookNavTurn;


# direct methods
.method constructor <init>(Lcom/local/p5home/HookRuntime;Lcom/local/p5home/HookNavTurn;)V
    .registers 3

    .line 81
    iput-object p1, p0, Lcom/local/p5home/HookRuntime$2;->this$0:Lcom/local/p5home/HookRuntime;

    iput-object p2, p0, Lcom/local/p5home/HookRuntime$2;->val$control:Lcom/local/p5home/HookNavTurn;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 7

    .line 81
    iget-object v0, p0, Lcom/local/p5home/HookRuntime$2;->this$0:Lcom/local/p5home/HookRuntime;

    # getter for: Lcom/local/p5home/HookRuntime;->sessions:Lcom/local/p5home/HookSessions;
    invoke-static {v0}, Lcom/local/p5home/HookRuntime;->access$000(Lcom/local/p5home/HookRuntime;)Lcom/local/p5home/HookSessions;

    move-result-object v0

    iget-object v1, p0, Lcom/local/p5home/HookRuntime$2;->val$control:Lcom/local/p5home/HookNavTurn;

    iget-object v2, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    iget-object v3, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/local/p5home/HookNavTurn;->suppress(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    if-eqz v0, :cond_23

    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    iget-object v2, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object v2, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/local/p5home/HookSessions;->suppressNativeResult(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    :cond_23
    iget-object v0, p0, Lcom/local/p5home/HookRuntime$2;->this$0:Lcom/local/p5home/HookRuntime;

    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    iget-object v2, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object v2, v2, v4

    # invokes: Lcom/local/p5home/HookRuntime;->routeMusic(Ljava/lang/Object;Ljava/lang/Object;)Z
    invoke-static {v0, v1, v2}, Lcom/local/p5home/HookRuntime;->access$100(Lcom/local/p5home/HookRuntime;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    :cond_31
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    :cond_35
    return-void
.end method

.class Lcom/local/p5home/HookRuntime$3;
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


# direct methods
.method constructor <init>(Lcom/local/p5home/HookRuntime;)V
    .registers 2

    .line 84
    iput-object p1, p0, Lcom/local/p5home/HookRuntime$3;->this$0:Lcom/local/p5home/HookRuntime;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 5

    .line 84
    iget-object v0, p0, Lcom/local/p5home/HookRuntime$3;->this$0:Lcom/local/p5home/HookRuntime;

    # getter for: Lcom/local/p5home/HookRuntime;->navTurn:Lcom/local/p5home/HookNavTurn;
    invoke-static {v0}, Lcom/local/p5home/HookRuntime;->access$200(Lcom/local/p5home/HookRuntime;)Lcom/local/p5home/HookNavTurn;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/local/p5home/HookRuntime$3;->this$0:Lcom/local/p5home/HookRuntime;

    # getter for: Lcom/local/p5home/HookRuntime;->navTurn:Lcom/local/p5home/HookNavTurn;
    invoke-static {v0}, Lcom/local/p5home/HookRuntime;->access$200(Lcom/local/p5home/HookRuntime;)Lcom/local/p5home/HookNavTurn;

    move-result-object v0

    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->hasThrowable()Z

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/local/p5home/HookNavTurn;->afterAsr(Ljava/lang/Object;Z)V

    :cond_1a
    return-void
.end method

.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 6

    .line 84
    iget-object v0, p0, Lcom/local/p5home/HookRuntime$3;->this$0:Lcom/local/p5home/HookRuntime;

    # getter for: Lcom/local/p5home/HookRuntime;->sessions:Lcom/local/p5home/HookSessions;
    invoke-static {v0}, Lcom/local/p5home/HookRuntime;->access$000(Lcom/local/p5home/HookRuntime;)Lcom/local/p5home/HookSessions;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/local/p5home/HookRuntime$3;->this$0:Lcom/local/p5home/HookRuntime;

    # getter for: Lcom/local/p5home/HookRuntime;->sessions:Lcom/local/p5home/HookSessions;
    invoke-static {v0}, Lcom/local/p5home/HookRuntime;->access$000(Lcom/local/p5home/HookRuntime;)Lcom/local/p5home/HookSessions;

    move-result-object v0

    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/local/p5home/HookSessions;->observe(Ljava/lang/Object;)V

    :cond_13
    iget-object v0, p0, Lcom/local/p5home/HookRuntime$3;->this$0:Lcom/local/p5home/HookRuntime;

    # getter for: Lcom/local/p5home/HookRuntime;->navTurn:Lcom/local/p5home/HookNavTurn;
    invoke-static {v0}, Lcom/local/p5home/HookRuntime;->access$200(Lcom/local/p5home/HookRuntime;)Lcom/local/p5home/HookNavTurn;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/local/p5home/HookRuntime$3;->this$0:Lcom/local/p5home/HookRuntime;

    # getter for: Lcom/local/p5home/HookRuntime;->navTurn:Lcom/local/p5home/HookNavTurn;
    invoke-static {v0}, Lcom/local/p5home/HookRuntime;->access$200(Lcom/local/p5home/HookRuntime;)Lcom/local/p5home/HookNavTurn;

    move-result-object v0

    iget-object v2, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    iget-object v3, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-virtual {v0, v2, v3}, Lcom/local/p5home/HookNavTurn;->observe(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2b
    iget-object v0, p0, Lcom/local/p5home/HookRuntime$3;->this$0:Lcom/local/p5home/HookRuntime;

    iget-object v2, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object v1, v2, v1

    # invokes: Lcom/local/p5home/HookRuntime;->routeAsr(Ljava/lang/Object;)Z
    invoke-static {v0, v1}, Lcom/local/p5home/HookRuntime;->access$300(Lcom/local/p5home/HookRuntime;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    :cond_3b
    return-void
.end method

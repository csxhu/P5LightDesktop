.class Lcom/local/p5home/HookRuntime$5;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "HookRuntime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/local/p5home/HookRuntime;->traceNativePoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/local/p5home/HookRuntime;

.field final synthetic val$point:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/local/p5home/HookRuntime;Ljava/lang/String;)V
    .registers 3

    .line 95
    iput-object p1, p0, Lcom/local/p5home/HookRuntime$5;->this$0:Lcom/local/p5home/HookRuntime;

    iput-object p2, p0, Lcom/local/p5home/HookRuntime$5;->val$point:Ljava/lang/String;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 7

    .line 96
    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    if-eqz v0, :cond_44

    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    array-length v0, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_44

    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_44

    .line 97
    iget-object v0, p0, Lcom/local/p5home/HookRuntime$5;->this$0:Lcom/local/p5home/HookRuntime;

    # getter for: Lcom/local/p5home/HookRuntime;->navTrace:Lcom/local/p5home/NavTrace;
    invoke-static {v0}, Lcom/local/p5home/HookRuntime;->access$500(Lcom/local/p5home/HookRuntime;)Lcom/local/p5home/NavTrace;

    move-result-object v0

    iget-object v2, p0, Lcom/local/p5home/HookRuntime$5;->val$point:Ljava/lang/String;

    iget-object v3, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object v1, v3, v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_31

    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object p1, p1, v4

    check-cast p1, Ljava/lang/String;

    goto :goto_32

    :cond_31
    const/4 p1, 0x0

    :goto_32
    const-string v3, "RESULT"

    iget-object v4, p0, Lcom/local/p5home/HookRuntime$5;->val$point:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    const-string v3, "REPLY"

    goto :goto_41

    :cond_3f
    const-string v3, "PASS"

    :goto_41
    invoke-virtual {v0, v2, v1, p1, v3}, Lcom/local/p5home/NavTrace;->observe(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_44
    return-void
.end method

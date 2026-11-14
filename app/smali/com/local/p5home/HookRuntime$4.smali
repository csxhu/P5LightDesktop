.class Lcom/local/p5home/HookRuntime$4;
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

    .line 85
    iput-object p1, p0, Lcom/local/p5home/HookRuntime$4;->this$0:Lcom/local/p5home/HookRuntime;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 6

    .line 85
    iget-object v0, p0, Lcom/local/p5home/HookRuntime$4;->this$0:Lcom/local/p5home/HookRuntime;

    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/String;

    iget-object v2, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    check-cast v2, Ljava/lang/String;

    # invokes: Lcom/local/p5home/HookRuntime;->routeNav(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, v1, v2}, Lcom/local/p5home/HookRuntime;->access$400(Lcom/local/p5home/HookRuntime;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    :cond_1a
    return-void
.end method

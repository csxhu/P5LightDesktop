.class Lcom/local/p5home/HookWakeWords$2;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "HookWakeWords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/local/p5home/HookWakeWords;->install()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/local/p5home/HookWakeWords;


# direct methods
.method constructor <init>(Lcom/local/p5home/HookWakeWords;)V
    .registers 2

    .line 48
    iput-object p1, p0, Lcom/local/p5home/HookWakeWords$2;->this$0:Lcom/local/p5home/HookWakeWords;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 3

    .line 48
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->hasThrowable()Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/local/p5home/HookWakeWords$2;->this$0:Lcom/local/p5home/HookWakeWords;

    const/4 v0, 0x0

    # invokes: Lcom/local/p5home/HookWakeWords;->notifyWake(Z)V
    invoke-static {p1, v0}, Lcom/local/p5home/HookWakeWords;->access$500(Lcom/local/p5home/HookWakeWords;Z)V

    :cond_c
    return-void
.end method

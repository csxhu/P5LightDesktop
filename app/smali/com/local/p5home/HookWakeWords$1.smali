.class Lcom/local/p5home/HookWakeWords$1;
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

    .line 36
    iput-object p1, p0, Lcom/local/p5home/HookWakeWords$1;->this$0:Lcom/local/p5home/HookWakeWords;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 5

    .line 44
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->hasThrowable()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 45
    :cond_7
    const/4 v0, 0x0

    :try_start_8
    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object p1, p1, v0

    if-eqz p1, :cond_44

    iget-object v1, p0, Lcom/local/p5home/HookWakeWords$1;->this$0:Lcom/local/p5home/HookWakeWords;

    # getter for: Lcom/local/p5home/HookWakeWords;->wakeAllowed:Ljava/lang/reflect/Field;
    invoke-static {v1}, Lcom/local/p5home/HookWakeWords;->access$000(Lcom/local/p5home/HookWakeWords;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    const-string v1, "major"

    iget-object v2, p0, Lcom/local/p5home/HookWakeWords$1;->this$0:Lcom/local/p5home/HookWakeWords;

    # getter for: Lcom/local/p5home/HookWakeWords;->wakeReason:Ljava/lang/reflect/Field;
    invoke-static {v2}, Lcom/local/p5home/HookWakeWords;->access$100(Lcom/local/p5home/HookWakeWords;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    iget-object v1, p0, Lcom/local/p5home/HookWakeWords$1;->this$0:Lcom/local/p5home/HookWakeWords;

    # getter for: Lcom/local/p5home/HookWakeWords;->wakeWord:Ljava/lang/reflect/Field;
    invoke-static {v1}, Lcom/local/p5home/HookWakeWords;->access$200(Lcom/local/p5home/HookWakeWords;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    # invokes: Lcom/local/p5home/HookWakeWords;->matches(Ljava/lang/String;)Z
    invoke-static {v1, p1}, Lcom/local/p5home/HookWakeWords;->access$300(Lcom/local/p5home/HookWakeWords;Ljava/lang/String;)Z

    move-result p1
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_3c} :catch_43
    .catch Ljava/lang/LinkageError; {:try_start_8 .. :try_end_3c} :catch_41

    if-eqz p1, :cond_44

    const/4 p1, 0x1

    move v0, p1

    goto :goto_44

    :catch_41
    move-exception p1

    goto :goto_44

    :catch_43
    move-exception p1

    .line 46
    :cond_44
    :goto_44
    iget-object p1, p0, Lcom/local/p5home/HookWakeWords$1;->this$0:Lcom/local/p5home/HookWakeWords;

    # invokes: Lcom/local/p5home/HookWakeWords;->notifyWake(Z)V
    invoke-static {p1, v0}, Lcom/local/p5home/HookWakeWords;->access$500(Lcom/local/p5home/HookWakeWords;Z)V

    .line 47
    return-void
.end method

.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .registers 5

    .line 37
    :try_start_0
    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    .line 41
    if-eqz p1, :cond_50

    iget-object v1, p0, Lcom/local/p5home/HookWakeWords$1;->this$0:Lcom/local/p5home/HookWakeWords;

    # getter for: Lcom/local/p5home/HookWakeWords;->wakeAllowed:Ljava/lang/reflect/Field;
    invoke-static {v1}, Lcom/local/p5home/HookWakeWords;->access$000(Lcom/local/p5home/HookWakeWords;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    const-string v1, "major"

    iget-object v2, p0, Lcom/local/p5home/HookWakeWords$1;->this$0:Lcom/local/p5home/HookWakeWords;

    # getter for: Lcom/local/p5home/HookWakeWords;->wakeReason:Ljava/lang/reflect/Field;
    invoke-static {v2}, Lcom/local/p5home/HookWakeWords;->access$100(Lcom/local/p5home/HookWakeWords;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    iget-object v1, p0, Lcom/local/p5home/HookWakeWords$1;->this$0:Lcom/local/p5home/HookWakeWords;

    # getter for: Lcom/local/p5home/HookWakeWords;->wakeWord:Ljava/lang/reflect/Field;
    invoke-static {v1}, Lcom/local/p5home/HookWakeWords;->access$200(Lcom/local/p5home/HookWakeWords;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    # invokes: Lcom/local/p5home/HookWakeWords;->matches(Ljava/lang/String;)Z
    invoke-static {v1, v2}, Lcom/local/p5home/HookWakeWords;->access$300(Lcom/local/p5home/HookWakeWords;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_50

    iget-object v1, p0, Lcom/local/p5home/HookWakeWords$1;->this$0:Lcom/local/p5home/HookWakeWords;

    # getter for: Lcom/local/p5home/HookWakeWords;->wakeAutoListen:Ljava/lang/reflect/Field;
    invoke-static {v1}, Lcom/local/p5home/HookWakeWords;->access$400(Lcom/local/p5home/HookWakeWords;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    iget-object v1, p0, Lcom/local/p5home/HookWakeWords$1;->this$0:Lcom/local/p5home/HookWakeWords;

    # getter for: Lcom/local/p5home/HookWakeWords;->wakeAutoListen:Ljava/lang/reflect/Field;
    invoke-static {v1}, Lcom/local/p5home/HookWakeWords;->access$400(Lcom/local/p5home/HookWakeWords;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4c} :catch_4f
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_4c} :catch_4d

    goto :goto_50

    .line 42
    :catch_4d
    move-exception p1

    goto :goto_50

    :catch_4f
    move-exception p1

    :cond_50
    :goto_50
    nop

    .line 43
    return-void
.end method

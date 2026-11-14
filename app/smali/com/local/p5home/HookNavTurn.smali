.class final Lcom/local/p5home/HookNavTurn;
.super Ljava/lang/Object;
.source "HookNavTurn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/local/p5home/HookNavTurn$Enabled;,
        Lcom/local/p5home/HookNavTurn$Diagnostic;,
        Lcom/local/p5home/HookNavTurn$Owner;
    }
.end annotation


# instance fields
.field private final asrResult:Ljava/lang/reflect/Field;

.field private final contextData:Ljava/lang/reflect/Field;

.field private final continuous:Ljava/lang/reflect/Method;

.field private final currentState:Ljava/lang/reflect/Field;

.field private final diagnostic:Lcom/local/p5home/HookNavTurn$Diagnostic;

.field private final dmContext:Ljava/lang/reflect/Field;

.field private final dmHandler:Ljava/lang/reflect/Field;

.field private final enabled:Lcom/local/p5home/HookNavTurn$Enabled;

.field private generation:J

.field private final idle:Ljava/lang/reflect/Field;

.field private lastAsr:Ljava/lang/Object;

.field final nluEntry:Ljava/lang/reflect/Method;

.field private final nluHandler:Ljava/lang/reflect/Field;

.field private final nluState:Ljava/lang/reflect/Field;

.field private observedSdk:Ljava/lang/Object;

.field private owner:Lcom/local/p5home/HookNavTurn$Owner;

.field private final result:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private final sdkDm:Ljava/lang/reflect/Field;

.field private final sdkNlu:Ljava/lang/reflect/Field;

.field private final sessionId:Ljava/lang/reflect/Field;

.field private final shouldEnd:Ljava/lang/reflect/Field;

.field private final state:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final stateSdk:Ljava/lang/reflect/Field;


# direct methods
.method constructor <init>(Ljava/lang/ClassLoader;Lcom/local/p5home/HookNavTurn$Enabled;Lcom/local/p5home/HookNavTurn$Diagnostic;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p2, p0, Lcom/local/p5home/HookNavTurn;->enabled:Lcom/local/p5home/HookNavTurn$Enabled;

    iput-object p3, p0, Lcom/local/p5home/HookNavTurn;->diagnostic:Lcom/local/p5home/HookNavTurn$Diagnostic;

    .line 28
    const-string p2, "com.xiaopeng.carspeechservice.b.g"

    invoke-static {p1, p2}, Lcom/local/p5home/HookNavTurn;->type(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    iput-object p2, p0, Lcom/local/p5home/HookNavTurn;->state:Ljava/lang/Class;

    const-string p3, "com.xiaopeng.carspeechservice.g.b"

    invoke-static {p1, p3}, Lcom/local/p5home/HookNavTurn;->type(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p3

    const-string v0, "com.xiaopeng.carspeechservice.b.d"

    invoke-static {p1, v0}, Lcom/local/p5home/HookNavTurn;->type(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "com.xiaopeng.carspeechservice.b.c"

    invoke-static {p1, v1}, Lcom/local/p5home/HookNavTurn;->type(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "com.xiaopeng.carspeechservice.b.b"

    invoke-static {p1, v2}, Lcom/local/p5home/HookNavTurn;->type(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "com.xiaopeng.carspeechservice.b.a"

    invoke-static {p1, v3}, Lcom/local/p5home/HookNavTurn;->type(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "com.xiaopeng.speech.common.util.g"

    invoke-static {p1, v4}, Lcom/local/p5home/HookNavTurn;->type(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "com.xiaopeng.carspeechservice.nlu.a"

    invoke-static {p1, v5}, Lcom/local/p5home/HookNavTurn;->type(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v6, "com.xiaopeng.carspeechservice.bean.b.g"

    invoke-static {p1, v6}, Lcom/local/p5home/HookNavTurn;->type(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const-string v7, "com.xiaopeng.carspeechservice.b.f"

    invoke-static {p1, v7}, Lcom/local/p5home/HookNavTurn;->type(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 29
    const-class v8, Landroid/os/Handler;

    invoke-virtual {v8, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_e3

    .line 30
    const-string v8, "b"

    invoke-static {p2, v8, p3}, Lcom/local/p5home/HookNavTurn;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object p2

    iput-object p2, p0, Lcom/local/p5home/HookNavTurn;->stateSdk:Ljava/lang/reflect/Field;

    const-string p2, "i"

    invoke-static {p3, p2, v0}, Lcom/local/p5home/HookNavTurn;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v9

    iput-object v9, p0, Lcom/local/p5home/HookNavTurn;->sdkDm:Ljava/lang/reflect/Field;

    const-string v9, "a"

    invoke-static {v0, v9, v2}, Lcom/local/p5home/HookNavTurn;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v2

    iput-object v2, p0, Lcom/local/p5home/HookNavTurn;->dmContext:Ljava/lang/reflect/Field;

    invoke-static {v0, v8, v4}, Lcom/local/p5home/HookNavTurn;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/local/p5home/HookNavTurn;->dmHandler:Ljava/lang/reflect/Field;

    .line 31
    const-string v0, "j"

    invoke-static {v1, v0, v3}, Lcom/local/p5home/HookNavTurn;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v2

    iput-object v2, p0, Lcom/local/p5home/HookNavTurn;->contextData:Ljava/lang/reflect/Field;

    const-string v2, "com.xiaopeng.carspeechservice.bean.a.b"

    invoke-static {p1, v2}, Lcom/local/p5home/HookNavTurn;->type(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v8, "c"

    invoke-static {v3, v8, v2}, Lcom/local/p5home/HookNavTurn;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v2

    iput-object v2, p0, Lcom/local/p5home/HookNavTurn;->asrResult:Ljava/lang/reflect/Field;

    const-class v2, Ljava/lang/String;

    invoke-static {v3, v0, v2}, Lcom/local/p5home/HookNavTurn;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/local/p5home/HookNavTurn;->sessionId:Ljava/lang/reflect/Field;

    const-string v0, "n"

    invoke-static {v1, v0, v7}, Lcom/local/p5home/HookNavTurn;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/local/p5home/HookNavTurn;->currentState:Ljava/lang/reflect/Field;

    invoke-static {v1, v9, v7}, Lcom/local/p5home/HookNavTurn;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/local/p5home/HookNavTurn;->idle:Ljava/lang/reflect/Field;

    .line 32
    const-string v0, "k"

    invoke-static {p3, v0, v5}, Lcom/local/p5home/HookNavTurn;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object p3

    iput-object p3, p0, Lcom/local/p5home/HookNavTurn;->sdkNlu:Ljava/lang/reflect/Field;

    invoke-static {v5, v8, v4}, Lcom/local/p5home/HookNavTurn;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object p3

    iput-object p3, p0, Lcom/local/p5home/HookNavTurn;->nluHandler:Ljava/lang/reflect/Field;

    const-string p3, "f"

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, p3, v0}, Lcom/local/p5home/HookNavTurn;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object p3

    iput-object p3, p0, Lcom/local/p5home/HookNavTurn;->nluState:Ljava/lang/reflect/Field;

    .line 33
    sget-object p3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    filled-new-array {v6}, [Ljava/lang/Class;

    move-result-object v0

    invoke-static {v1, v9, p3, v0}, Lcom/local/p5home/HookNavTurn;->method(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    iput-object p3, p0, Lcom/local/p5home/HookNavTurn;->nluEntry:Ljava/lang/reflect/Method;

    const/4 p3, 0x0

    new-array v0, p3, [Ljava/lang/Class;

    invoke-virtual {v6, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    iput-object v0, p0, Lcom/local/p5home/HookNavTurn;->result:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v6, p2, v0}, Lcom/local/p5home/HookNavTurn;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object p2

    iput-object p2, p0, Lcom/local/p5home/HookNavTurn;->shouldEnd:Ljava/lang/reflect/Field;

    .line 34
    const-string p2, "com.xiaopeng.carspeechservice.speechutils.k"

    invoke-static {p1, p2}, Lcom/local/p5home/HookNavTurn;->type(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-array p3, p3, [Ljava/lang/Class;

    const-string v0, "l"

    invoke-static {p1, v0, p2, p3}, Lcom/local/p5home/HookNavTurn;->method(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/local/p5home/HookNavTurn;->continuous:Ljava/lang/reflect/Method;

    .line 35
    return-void

    .line 29
    :cond_e3
    new-instance p1, Ljava/lang/NoSuchFieldException;

    const-string p2, "handler_contract"

    invoke-direct {p1, p2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private clear()V
    .registers 3

    .line 84
    iget-object v0, p0, Lcom/local/p5home/HookNavTurn;->owner:Lcom/local/p5home/HookNavTurn$Owner;

    if-eqz v0, :cond_13

    iget-object v0, v0, Lcom/local/p5home/HookNavTurn$Owner;->expiry:Ljava/lang/Runnable;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/local/p5home/HookNavTurn;->owner:Lcom/local/p5home/HookNavTurn$Owner;

    iget-object v0, v0, Lcom/local/p5home/HookNavTurn$Owner;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/local/p5home/HookNavTurn;->owner:Lcom/local/p5home/HookNavTurn$Owner;

    iget-object v1, v1, Lcom/local/p5home/HookNavTurn$Owner;->expiry:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/local/p5home/HookNavTurn;->owner:Lcom/local/p5home/HookNavTurn$Owner;

    return-void
.end method

.method private current(Lcom/local/p5home/HookNavTurn$Owner;)Z
    .registers 7

    .line 81
    const/4 v0, 0x0

    if-eqz p1, :cond_88

    :try_start_3
    iget-object v1, p0, Lcom/local/p5home/HookNavTurn;->enabled:Lcom/local/p5home/HookNavTurn$Enabled;

    invoke-interface {v1}, Lcom/local/p5home/HookNavTurn$Enabled;->get()Z

    move-result v1

    if-eqz v1, :cond_88

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p1, Lcom/local/p5home/HookNavTurn$Owner;->at:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_88

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p1, Lcom/local/p5home/HookNavTurn$Owner;->at:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3a98

    cmp-long v1, v1, v3

    if-gtz v1, :cond_88

    iget-wide v1, p1, Lcom/local/p5home/HookNavTurn$Owner;->generation:J

    iget-wide v3, p0, Lcom/local/p5home/HookNavTurn;->generation:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_88

    iget-object v1, p0, Lcom/local/p5home/HookNavTurn;->observedSdk:Ljava/lang/Object;

    iget-object v2, p1, Lcom/local/p5home/HookNavTurn$Owner;->sdk:Ljava/lang/Object;

    if-ne v1, v2, :cond_88

    iget-object v1, p1, Lcom/local/p5home/HookNavTurn$Owner;->asr:Ljava/lang/Object;

    iget-object v2, p0, Lcom/local/p5home/HookNavTurn;->lastAsr:Ljava/lang/Object;

    if-ne v1, v2, :cond_88

    iget-object v1, p0, Lcom/local/p5home/HookNavTurn;->asrResult:Ljava/lang/reflect/Field;

    iget-object v2, p1, Lcom/local/p5home/HookNavTurn$Owner;->data:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p1, Lcom/local/p5home/HookNavTurn$Owner;->asr:Ljava/lang/Object;

    if-ne v1, v2, :cond_88

    iget-object v1, p1, Lcom/local/p5home/HookNavTurn$Owner;->token:Ljava/lang/String;

    iget-object v2, p0, Lcom/local/p5home/HookNavTurn;->sessionId:Ljava/lang/reflect/Field;

    iget-object v3, p1, Lcom/local/p5home/HookNavTurn$Owner;->data:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_88

    iget-object v1, p0, Lcom/local/p5home/HookNavTurn;->currentState:Ljava/lang/reflect/Field;

    iget-object v2, p1, Lcom/local/p5home/HookNavTurn$Owner;->context:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/local/p5home/HookNavTurn;->idle:Ljava/lang/reflect/Field;

    iget-object v3, p1, Lcom/local/p5home/HookNavTurn$Owner;->context:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v1, v2, :cond_88

    iget-object v1, p0, Lcom/local/p5home/HookNavTurn;->dmContext:Ljava/lang/reflect/Field;

    iget-object v2, p0, Lcom/local/p5home/HookNavTurn;->sdkDm:Ljava/lang/reflect/Field;

    iget-object v3, p1, Lcom/local/p5home/HookNavTurn$Owner;->sdk:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p1, Lcom/local/p5home/HookNavTurn$Owner;->context:Ljava/lang/Object;

    if-ne v1, v2, :cond_88

    iget-object v1, p0, Lcom/local/p5home/HookNavTurn;->nluHandler:Ljava/lang/reflect/Field;

    iget-object v2, p1, Lcom/local/p5home/HookNavTurn$Owner;->nlu:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object p1, p1, Lcom/local/p5home/HookNavTurn$Owner;->handler:Landroid/os/Handler;
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_80} :catch_86
    .catch Ljava/lang/LinkageError; {:try_start_3 .. :try_end_80} :catch_84

    if-ne v1, p1, :cond_88

    const/4 v0, 0x1

    goto :goto_88

    .line 82
    :catch_84
    move-exception p1

    goto :goto_87

    :catch_86
    move-exception p1

    :goto_87
    return v0

    .line 81
    :cond_88
    :goto_88
    return v0
.end method

.method private declared-synchronized deliver(Lcom/local/p5home/HookNavTurn$Owner;)V
    .registers 8

    monitor-enter p0

    .line 63
    :try_start_1
    iget-object v0, p0, Lcom/local/p5home/HookNavTurn;->owner:Lcom/local/p5home/HookNavTurn$Owner;

    if-ne v0, p1, :cond_68

    invoke-direct {p0, p1}, Lcom/local/p5home/HookNavTurn;->current(Lcom/local/p5home/HookNavTurn$Owner;)Z

    move-result v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_78

    if-nez v0, :cond_c

    goto :goto_68

    .line 67
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/local/p5home/HookNavTurn;->nluState:Ljava/lang/reflect/Field;

    iget-object v1, p1, Lcom/local/p5home/HookNavTurn$Owner;->nlu:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_23

    invoke-direct {p0}, Lcom/local/p5home/HookNavTurn;->clear()V

    iget-object p1, p0, Lcom/local/p5home/HookNavTurn;->diagnostic:Lcom/local/p5home/HookNavTurn$Diagnostic;

    const-string v0, "NAV_TURN_NLU_STOPPED"

    invoke-interface {p1, v0}, Lcom/local/p5home/HookNavTurn$Diagnostic;->code(Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_21} :catch_5a
    .catch Ljava/lang/LinkageError; {:try_start_c .. :try_end_21} :catch_58
    .catchall {:try_start_c .. :try_end_21} :catchall_78

    monitor-exit p0

    return-void

    .line 68
    :cond_23
    :try_start_23
    iget-object v0, p0, Lcom/local/p5home/HookNavTurn;->result:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/local/p5home/HookNavTurn;->shouldEnd:Ljava/lang/reflect/Field;

    iget-object v3, p0, Lcom/local/p5home/HookNavTurn;->continuous:Ljava/lang/reflect/Method;

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_40

    const/4 v1, 0x1

    :cond_40
    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    iput-object v0, p1, Lcom/local/p5home/HookNavTurn$Owner;->neutral:Ljava/lang/Object;

    .line 69
    iget-object v1, p0, Lcom/local/p5home/HookNavTurn;->nluEntry:Ljava/lang/reflect/Method;

    iget-object p1, p1, Lcom/local/p5home/HookNavTurn$Owner;->context:Ljava/lang/Object;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/local/p5home/HookNavTurn;->diagnostic:Lcom/local/p5home/HookNavTurn$Diagnostic;

    const-string v0, "NAV_TURN_NLU_DISPATCHED"

    invoke-interface {p1, v0}, Lcom/local/p5home/HookNavTurn$Diagnostic;->code(Ljava/lang/String;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_57} :catch_5a
    .catch Ljava/lang/LinkageError; {:try_start_23 .. :try_end_57} :catch_58
    .catchall {:try_start_23 .. :try_end_57} :catchall_78

    goto :goto_65

    .line 70
    :catch_58
    move-exception p1

    goto :goto_5b

    :catch_5a
    move-exception p1

    :goto_5b
    :try_start_5b
    invoke-direct {p0}, Lcom/local/p5home/HookNavTurn;->clear()V

    iget-object p1, p0, Lcom/local/p5home/HookNavTurn;->diagnostic:Lcom/local/p5home/HookNavTurn$Diagnostic;

    const-string v0, "NAV_TURN_NLU_FAILED"

    invoke-interface {p1, v0}, Lcom/local/p5home/HookNavTurn$Diagnostic;->code(Ljava/lang/String;)V
    :try_end_65
    .catchall {:try_start_5b .. :try_end_65} :catchall_78

    :goto_65
    nop

    .line 71
    monitor-exit p0

    return-void

    .line 63
    :cond_68
    :goto_68
    :try_start_68
    iget-object v0, p0, Lcom/local/p5home/HookNavTurn;->owner:Lcom/local/p5home/HookNavTurn$Owner;

    if-ne v0, p1, :cond_6f

    invoke-direct {p0}, Lcom/local/p5home/HookNavTurn;->clear()V

    :cond_6f
    iget-object p1, p0, Lcom/local/p5home/HookNavTurn;->diagnostic:Lcom/local/p5home/HookNavTurn$Diagnostic;

    const-string v0, "NAV_TURN_OWNER_CHANGED"

    invoke-interface {p1, v0}, Lcom/local/p5home/HookNavTurn$Diagnostic;->code(Ljava/lang/String;)V
    :try_end_76
    .catchall {:try_start_68 .. :try_end_76} :catchall_78

    monitor-exit p0

    return-void

    .line 62
    :catchall_78
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 86
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p1

    if-ne p1, p2, :cond_f

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    return-object p0

    :cond_f
    new-instance p0, Ljava/lang/NoSuchFieldException;

    const-string p1, "field_contract"

    invoke-direct {p0, p1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static varargs method(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 87
    invoke-virtual {p0, p1, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    if-ne p1, p2, :cond_f

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    return-object p0

    :cond_f
    new-instance p0, Ljava/lang/NoSuchMethodException;

    const-string p1, "return_contract"

    invoke-direct {p0, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static type(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 85
    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method declared-synchronized accept(Lcom/local/p5home/HookNavTurn$Owner;)Z
    .registers 4

    monitor-enter p0

    .line 51
    :try_start_1
    invoke-direct {p0, p1}, Lcom/local/p5home/HookNavTurn;->current(Lcom/local/p5home/HookNavTurn$Owner;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_1b

    if-nez v0, :cond_a

    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :cond_a
    :try_start_a
    invoke-direct {p0}, Lcom/local/p5home/HookNavTurn;->clear()V

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/local/p5home/HookNavTurn$Owner;->accepted:Z

    iput-object p1, p0, Lcom/local/p5home/HookNavTurn;->owner:Lcom/local/p5home/HookNavTurn$Owner;

    iget-object p1, p0, Lcom/local/p5home/HookNavTurn;->diagnostic:Lcom/local/p5home/HookNavTurn$Diagnostic;

    const-string v1, "NAV_TURN_ACK_OWNED"

    invoke-interface {p1, v1}, Lcom/local/p5home/HookNavTurn$Diagnostic;->code(Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_1b

    monitor-exit p0

    return v0

    .line 51
    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized afterAsr(Ljava/lang/Object;Z)V
    .registers 5

    monitor-enter p0

    .line 54
    :try_start_1
    iget-object v0, p0, Lcom/local/p5home/HookNavTurn;->owner:Lcom/local/p5home/HookNavTurn$Owner;

    if-eqz v0, :cond_65

    iget-object v1, v0, Lcom/local/p5home/HookNavTurn$Owner;->asr:Ljava/lang/Object;

    if-eq v1, p1, :cond_a

    goto :goto_65

    .line 55
    :cond_a
    if-nez p2, :cond_54

    invoke-direct {p0, v0}, Lcom/local/p5home/HookNavTurn;->current(Lcom/local/p5home/HookNavTurn$Owner;)Z

    move-result p1

    if-nez p1, :cond_13

    goto :goto_54

    .line 56
    :cond_13
    iget-boolean p1, v0, Lcom/local/p5home/HookNavTurn$Owner;->queued:Z
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_67

    if-eqz p1, :cond_19

    monitor-exit p0

    return-void

    .line 57
    :cond_19
    const/4 p1, 0x1

    :try_start_1a
    iput-boolean p1, v0, Lcom/local/p5home/HookNavTurn$Owner;->queued:Z

    .line 58
    iget-object p1, v0, Lcom/local/p5home/HookNavTurn$Owner;->handler:Landroid/os/Handler;

    new-instance p2, Lcom/local/p5home/HookNavTurn$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, v0}, Lcom/local/p5home/HookNavTurn$$ExternalSyntheticLambda0;-><init>(Lcom/local/p5home/HookNavTurn;Lcom/local/p5home/HookNavTurn$Owner;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_35

    invoke-direct {p0}, Lcom/local/p5home/HookNavTurn;->clear()V

    iget-object p1, p0, Lcom/local/p5home/HookNavTurn;->diagnostic:Lcom/local/p5home/HookNavTurn$Diagnostic;

    const-string p2, "NAV_TURN_HANDLER_REJECTED"

    invoke-interface {p1, p2}, Lcom/local/p5home/HookNavTurn$Diagnostic;->code(Ljava/lang/String;)V
    :try_end_33
    .catchall {:try_start_1a .. :try_end_33} :catchall_67

    monitor-exit p0

    return-void

    .line 59
    :cond_35
    :try_start_35
    new-instance p1, Lcom/local/p5home/HookNavTurn$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, v0}, Lcom/local/p5home/HookNavTurn$$ExternalSyntheticLambda1;-><init>(Lcom/local/p5home/HookNavTurn;Lcom/local/p5home/HookNavTurn$Owner;)V

    iput-object p1, v0, Lcom/local/p5home/HookNavTurn$Owner;->expiry:Ljava/lang/Runnable;

    .line 60
    iget-object p1, v0, Lcom/local/p5home/HookNavTurn$Owner;->handler:Landroid/os/Handler;

    iget-object p2, v0, Lcom/local/p5home/HookNavTurn$Owner;->expiry:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3a98

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p1

    if-nez p1, :cond_52

    invoke-direct {p0}, Lcom/local/p5home/HookNavTurn;->clear()V

    iget-object p1, p0, Lcom/local/p5home/HookNavTurn;->diagnostic:Lcom/local/p5home/HookNavTurn$Diagnostic;

    const-string p2, "NAV_TURN_WATCHDOG_REJECTED"

    invoke-interface {p1, p2}, Lcom/local/p5home/HookNavTurn$Diagnostic;->code(Ljava/lang/String;)V
    :try_end_52
    .catchall {:try_start_35 .. :try_end_52} :catchall_67

    .line 61
    :cond_52
    monitor-exit p0

    return-void

    .line 55
    :cond_54
    :goto_54
    :try_start_54
    invoke-direct {p0}, Lcom/local/p5home/HookNavTurn;->clear()V

    iget-object p1, p0, Lcom/local/p5home/HookNavTurn;->diagnostic:Lcom/local/p5home/HookNavTurn$Diagnostic;

    if-eqz p2, :cond_5e

    const-string p2, "NAV_TURN_ORIGINAL_FAILED"

    goto :goto_60

    :cond_5e
    const-string p2, "NAV_TURN_OWNER_CHANGED"

    :goto_60
    invoke-interface {p1, p2}, Lcom/local/p5home/HookNavTurn$Diagnostic;->code(Ljava/lang/String;)V
    :try_end_63
    .catchall {:try_start_54 .. :try_end_63} :catchall_67

    monitor-exit p0

    return-void

    .line 54
    :cond_65
    :goto_65
    monitor-exit p0

    return-void

    .line 53
    :catchall_67
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized capture(Ljava/lang/Object;)Lcom/local/p5home/HookNavTurn$Owner;
    .registers 16

    monitor-enter p0

    .line 44
    const/4 v0, 0x0

    :try_start_2
    iget-object v1, p0, Lcom/local/p5home/HookNavTurn;->enabled:Lcom/local/p5home/HookNavTurn$Enabled;

    invoke-interface {v1}, Lcom/local/p5home/HookNavTurn$Enabled;->get()Z

    move-result v1

    if-eqz v1, :cond_94

    iget-object v1, p0, Lcom/local/p5home/HookNavTurn;->observedSdk:Ljava/lang/Object;

    if-eqz v1, :cond_94

    iget-object v2, p0, Lcom/local/p5home/HookNavTurn;->lastAsr:Ljava/lang/Object;

    if-eq v2, p1, :cond_14

    goto/16 :goto_94

    .line 45
    :cond_14
    iget-object v2, p0, Lcom/local/p5home/HookNavTurn;->sdkDm:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/local/p5home/HookNavTurn;->dmContext:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iget-object v2, p0, Lcom/local/p5home/HookNavTurn;->contextData:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iget-object v2, p0, Lcom/local/p5home/HookNavTurn;->sdkNlu:Ljava/lang/reflect/Field;

    iget-object v3, p0, Lcom/local/p5home/HookNavTurn;->observedSdk:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iget-object v2, p0, Lcom/local/p5home/HookNavTurn;->dmHandler:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/local/p5home/HookNavTurn;->sessionId:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 46
    instance-of v3, v1, Landroid/os/Handler;

    if-eqz v3, :cond_92

    if-eqz v8, :cond_92

    iget-object v3, p0, Lcom/local/p5home/HookNavTurn;->nluHandler:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_92

    iget-object v3, p0, Lcom/local/p5home/HookNavTurn;->asrResult:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_92

    iget-object v3, p0, Lcom/local/p5home/HookNavTurn;->currentState:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/local/p5home/HookNavTurn;->idle:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eq v3, v4, :cond_92

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_92

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_92

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x100

    if-le v3, v4, :cond_77

    goto :goto_92

    .line 47
    :cond_77
    iget-object v3, p0, Lcom/local/p5home/HookNavTurn;->continuous:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v13, Lcom/local/p5home/HookNavTurn$Owner;

    iget-object v4, p0, Lcom/local/p5home/HookNavTurn;->observedSdk:Ljava/lang/Object;

    move-object v9, v1

    check-cast v9, Landroid/os/Handler;

    move-object v10, v2

    check-cast v10, Ljava/lang/String;

    iget-wide v11, p0, Lcom/local/p5home/HookNavTurn;->generation:J

    move-object v3, v13

    move-object v7, p1

    invoke-direct/range {v3 .. v12}, Lcom/local/p5home/HookNavTurn$Owner;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/os/Handler;Ljava/lang/String;J)V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_90} :catch_9a
    .catch Ljava/lang/LinkageError; {:try_start_2 .. :try_end_90} :catch_98
    .catchall {:try_start_2 .. :try_end_90} :catchall_96

    monitor-exit p0

    return-object v13

    .line 46
    :cond_92
    :goto_92
    monitor-exit p0

    return-object v0

    .line 44
    :cond_94
    :goto_94
    monitor-exit p0

    return-object v0

    .line 43
    :catchall_96
    move-exception p1

    goto :goto_a4

    .line 48
    :catch_98
    move-exception p1

    goto :goto_9b

    :catch_9a
    move-exception p1

    :goto_9b
    :try_start_9b
    iget-object p1, p0, Lcom/local/p5home/HookNavTurn;->diagnostic:Lcom/local/p5home/HookNavTurn$Diagnostic;

    const-string v1, "NAV_TURN_CAPTURE_FAILED"

    invoke-interface {p1, v1}, Lcom/local/p5home/HookNavTurn$Diagnostic;->code(Ljava/lang/String;)V
    :try_end_a2
    .catchall {:try_start_9b .. :try_end_a2} :catchall_96

    monitor-exit p0

    return-object v0

    .line 43
    :goto_a4
    monitor-exit p0

    throw p1
.end method

.method declared-synchronized disable()V
    .registers 2

    monitor-enter p0

    .line 79
    :try_start_1
    invoke-direct {p0}, Lcom/local/p5home/HookNavTurn;->clear()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    .line 79
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method synthetic lambda$afterAsr$0$com-local-g3home-HookNavTurn(Lcom/local/p5home/HookNavTurn$Owner;)V
    .registers 2

    .line 58
    invoke-direct {p0, p1}, Lcom/local/p5home/HookNavTurn;->deliver(Lcom/local/p5home/HookNavTurn$Owner;)V

    return-void
.end method

.method synthetic lambda$afterAsr$1$com-local-g3home-HookNavTurn(Lcom/local/p5home/HookNavTurn$Owner;)V
    .registers 3

    .line 59
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/local/p5home/HookNavTurn;->owner:Lcom/local/p5home/HookNavTurn$Owner;

    if-ne v0, p1, :cond_f

    invoke-direct {p0}, Lcom/local/p5home/HookNavTurn;->clear()V

    iget-object p1, p0, Lcom/local/p5home/HookNavTurn;->diagnostic:Lcom/local/p5home/HookNavTurn$Diagnostic;

    const-string v0, "NAV_TURN_LEASE_EXPIRED"

    invoke-interface {p1, v0}, Lcom/local/p5home/HookNavTurn$Diagnostic;->code(Ljava/lang/String;)V

    :cond_f
    monitor-exit p0

    return-void

    :catchall_11
    move-exception p1

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_11

    throw p1
.end method

.method declared-synchronized observe(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    monitor-enter p0

    .line 37
    :try_start_1
    iget-object v0, p0, Lcom/local/p5home/HookNavTurn;->state:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/local/p5home/HookNavTurn;->stateSdk:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/local/p5home/HookNavTurn;->observedSdk:Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_14
    .catchall {:try_start_1 .. :try_end_11} :catchall_12

    goto :goto_15

    .line 36
    :catchall_12
    move-exception p1

    goto :goto_23

    .line 37
    :catch_14
    move-exception p1

    .line 40
    :cond_15
    :goto_15
    :try_start_15
    invoke-direct {p0}, Lcom/local/p5home/HookNavTurn;->clear()V

    iput-object p2, p0, Lcom/local/p5home/HookNavTurn;->lastAsr:Ljava/lang/Object;

    iget-wide p1, p0, Lcom/local/p5home/HookNavTurn;->generation:J

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/local/p5home/HookNavTurn;->generation:J
    :try_end_21
    .catchall {:try_start_15 .. :try_end_21} :catchall_12

    .line 41
    monitor-exit p0

    return-void

    .line 36
    :goto_23
    monitor-exit p0

    throw p1
.end method

.method declared-synchronized suppress(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 6

    monitor-enter p0

    .line 73
    :try_start_1
    iget-object v0, p0, Lcom/local/p5home/HookNavTurn;->owner:Lcom/local/p5home/HookNavTurn$Owner;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_2a

    const/4 v1, 0x0

    if-nez v0, :cond_8

    monitor-exit p0

    return v1

    .line 74
    :cond_8
    :try_start_8
    invoke-direct {p0, v0}, Lcom/local/p5home/HookNavTurn;->current(Lcom/local/p5home/HookNavTurn$Owner;)Z

    move-result v2

    if-nez v2, :cond_13

    invoke-direct {p0}, Lcom/local/p5home/HookNavTurn;->clear()V
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_2a

    monitor-exit p0

    return v1

    .line 76
    :cond_13
    :try_start_13
    iget-object v2, v0, Lcom/local/p5home/HookNavTurn$Owner;->context:Ljava/lang/Object;

    if-ne p1, v2, :cond_28

    if-eqz p2, :cond_28

    iget-object p1, v0, Lcom/local/p5home/HookNavTurn$Owner;->neutral:Ljava/lang/Object;

    if-ne p2, p1, :cond_1e

    goto :goto_28

    .line 77
    :cond_1e
    iget-object p1, p0, Lcom/local/p5home/HookNavTurn;->diagnostic:Lcom/local/p5home/HookNavTurn$Diagnostic;

    const-string p2, "NAV_TURN_OLD_NLU_IGNORED"

    invoke-interface {p1, p2}, Lcom/local/p5home/HookNavTurn$Diagnostic;->code(Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_13 .. :try_end_25} :catchall_2a

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 76
    :cond_28
    :goto_28
    monitor-exit p0

    return v1

    .line 72
    :catchall_2a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

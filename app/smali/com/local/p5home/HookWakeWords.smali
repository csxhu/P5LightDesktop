.class final Lcom/local/p5home/HookWakeWords;
.super Ljava/lang/Object;
.source "HookWakeWords.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/local/p5home/HookWakeWords$Listener;,
        Lcom/local/p5home/HookWakeWords$Owned;
    }
.end annotation


# instance fields
.field private final buttonEntry:Ljava/lang/reflect/Method;

.field private final change:Ljava/lang/reflect/Method;

.field private desired:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/local/p5home/WakeWordPolicy$Word;",
            ">;"
        }
    .end annotation
.end field

.field private enabled:Z

.field private final helperWords:Ljava/lang/reflect/Field;

.field private installed:Z

.field private volatile lastCode:Ljava/lang/String;

.field private final listener:Lcom/local/p5home/HookWakeWords$Listener;

.field private final loader:Ljava/lang/ClassLoader;

.field private final owned:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/local/p5home/HookWakeWords$Owned;",
            ">;"
        }
    .end annotation
.end field

.field private owner:Ljava/lang/Object;

.field private revision:J

.field private final sdkWake:Ljava/lang/reflect/Field;

.field private final serverSdk:Ljava/lang/reflect/Field;

.field private final singleton:Ljava/lang/reflect/Method;

.field private final submit:Ljava/lang/reflect/Method;

.field private final taskClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final valueClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final valuePinyin:Ljava/lang/reflect/Field;

.field private final valueText:Ljava/lang/reflect/Field;

.field private final valueThreshold:Ljava/lang/reflect/Field;

.field private final wakeAllowed:Ljava/lang/reflect/Field;

.field private final wakeAutoListen:Ljava/lang/reflect/Field;

.field private final wakeClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final wakeEntry:Ljava/lang/reflect/Method;

.field private final wakeHelper:Ljava/lang/reflect/Field;

.field private final wakeReason:Ljava/lang/reflect/Field;

.field private final wakeRunner:Ljava/lang/reflect/Field;

.field private final wakeWord:Ljava/lang/reflect/Field;


# direct methods
.method constructor <init>(Ljava/lang/ClassLoader;Lcom/local/p5home/HookWakeWords$Listener;)V
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 21
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, v0, Lcom/local/p5home/HookWakeWords;->owned:Ljava/util/LinkedHashMap;

    .line 19
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/local/p5home/HookWakeWords;->desired:Ljava/util/List;

    .line 20
    const-string v1, "WAKE_WORDS_DISABLED"

    iput-object v1, v0, Lcom/local/p5home/HookWakeWords;->lastCode:Ljava/lang/String;

    .line 22
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/local/p5home/HookWakeWords;->loader:Ljava/lang/ClassLoader;

    move-object/from16 v1, p2

    iput-object v1, v0, Lcom/local/p5home/HookWakeWords;->listener:Lcom/local/p5home/HookWakeWords$Listener;

    .line 23
    const-string v1, "com.xiaopeng.carspeechservice.h.g"

    invoke-direct {v0, v1}, Lcom/local/p5home/HookWakeWords;->type(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "com.xiaopeng.carspeechservice.g.b"

    invoke-direct {v0, v2}, Lcom/local/p5home/HookWakeWords;->type(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "com.xiaopeng.carspeechservice.n.c"

    invoke-direct {v0, v3}, Lcom/local/p5home/HookWakeWords;->type(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "com.xiaopeng.carspeechservice.n.d"

    invoke-direct {v0, v4}, Lcom/local/p5home/HookWakeWords;->type(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "com.xiaopeng.carspeechservice.g.a.c"

    invoke-direct {v0, v5}, Lcom/local/p5home/HookWakeWords;->type(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v6, "com.xiaopeng.speech.common.util.AsyncRunner"

    invoke-direct {v0, v6}, Lcom/local/p5home/HookWakeWords;->type(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const-string v7, "com.xiaopeng.carspeechservice.b.c"

    invoke-direct {v0, v7}, Lcom/local/p5home/HookWakeWords;->type(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const-string v8, "com.xiaopeng.speech.jarvisproto.WakeupResult"

    invoke-direct {v0, v8}, Lcom/local/p5home/HookWakeWords;->type(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const-string v9, "com.xiaopeng.speech.jarvisproto.WakeupResultBase"

    invoke-direct {v0, v9}, Lcom/local/p5home/HookWakeWords;->type(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 24
    const-string v10, "com.xiaopeng.carspeechservice.n.a"

    invoke-direct {v0, v10}, Lcom/local/p5home/HookWakeWords;->type(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    iput-object v10, v0, Lcom/local/p5home/HookWakeWords;->wakeClass:Ljava/lang/Class;

    const-string v11, "com.xiaopeng.carspeechservice.g.a.c$a"

    invoke-direct {v0, v11}, Lcom/local/p5home/HookWakeWords;->type(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    iput-object v11, v0, Lcom/local/p5home/HookWakeWords;->taskClass:Ljava/lang/Class;

    const-string v12, "com.xiaopeng.carspeechservice.n.d$b"

    invoke-direct {v0, v12}, Lcom/local/p5home/HookWakeWords;->type(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    iput-object v12, v0, Lcom/local/p5home/HookWakeWords;->valueClass:Ljava/lang/Class;

    .line 25
    invoke-virtual {v11}, Ljava/lang/Class;->isInterface()Z

    move-result v13

    if-eqz v13, :cond_148

    const-class v13, Ljava/lang/Object;

    const/4 v14, 0x0

    new-array v15, v14, [Ljava/lang/Class;

    const-string v14, "a"

    invoke-static {v11, v14, v13, v15}, Lcom/local/p5home/HookWakeWords;->method(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 26
    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-static {v1, v14, v1, v11}, Lcom/local/p5home/HookWakeWords;->method(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    iput-object v11, v0, Lcom/local/p5home/HookWakeWords;->singleton:Ljava/lang/reflect/Method;

    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v11

    invoke-static {v11}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v11

    if-eqz v11, :cond_140

    .line 27
    const-string v11, "c"

    invoke-static {v1, v11, v2}, Lcom/local/p5home/HookWakeWords;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, v0, Lcom/local/p5home/HookWakeWords;->serverSdk:Ljava/lang/reflect/Field;

    const-string v1, "e"

    invoke-static {v2, v1, v3}, Lcom/local/p5home/HookWakeWords;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v2

    iput-object v2, v0, Lcom/local/p5home/HookWakeWords;->sdkWake:Ljava/lang/reflect/Field;

    const-string v2, "B"

    invoke-static {v10, v2, v4}, Lcom/local/p5home/HookWakeWords;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v2

    iput-object v2, v0, Lcom/local/p5home/HookWakeWords;->wakeHelper:Ljava/lang/reflect/Field;

    const-string v2, "j"

    invoke-static {v10, v2, v5}, Lcom/local/p5home/HookWakeWords;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v2

    iput-object v2, v0, Lcom/local/p5home/HookWakeWords;->wakeRunner:Ljava/lang/reflect/Field;

    .line 28
    const-class v2, Ljava/util/HashMap;

    const-string v3, "b"

    invoke-static {v4, v3, v2}, Lcom/local/p5home/HookWakeWords;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v2

    iput-object v2, v0, Lcom/local/p5home/HookWakeWords;->helperWords:Ljava/lang/reflect/Field;

    const-class v2, Ljava/lang/String;

    invoke-static {v12, v3, v2}, Lcom/local/p5home/HookWakeWords;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v2

    iput-object v2, v0, Lcom/local/p5home/HookWakeWords;->valueText:Ljava/lang/reflect/Field;

    const-class v2, Ljava/lang/String;

    invoke-static {v12, v11, v2}, Lcom/local/p5home/HookWakeWords;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v2

    iput-object v2, v0, Lcom/local/p5home/HookWakeWords;->valuePinyin:Ljava/lang/reflect/Field;

    const-class v2, Ljava/lang/String;

    const-string v5, "d"

    invoke-static {v12, v5, v2}, Lcom/local/p5home/HookWakeWords;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v2

    iput-object v2, v0, Lcom/local/p5home/HookWakeWords;->valueThreshold:Ljava/lang/reflect/Field;

    .line 29
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-class v10, Ljava/lang/Object;

    filled-new-array {v10}, [Ljava/lang/Class;

    move-result-object v10

    const-string v3, "runFunc"

    invoke-static {v6, v3, v2, v10}, Lcom/local/p5home/HookWakeWords;->method(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, v0, Lcom/local/p5home/HookWakeWords;->submit:Ljava/lang/reflect/Method;

    .line 30
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-class v15, Ljava/lang/String;

    const-class v16, [Ljava/lang/String;

    const-class v17, [Ljava/lang/String;

    const-class v18, [Ljava/lang/String;

    const-class v19, [Ljava/lang/String;

    const-class v20, [[Ljava/lang/String;

    sget-object v21, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array/range {v15 .. v21}, [Ljava/lang/Class;

    move-result-object v3

    invoke-static {v4, v14, v2, v3}, Lcom/local/p5home/HookWakeWords;->method(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, v0, Lcom/local/p5home/HookWakeWords;->change:Ljava/lang/reflect/Method;

    .line 31
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    filled-new-array {v8}, [Ljava/lang/Class;

    move-result-object v3

    invoke-static {v7, v14, v2, v3}, Lcom/local/p5home/HookWakeWords;->method(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, v0, Lcom/local/p5home/HookWakeWords;->wakeEntry:Ljava/lang/reflect/Method;

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-static {v7, v14, v2, v3}, Lcom/local/p5home/HookWakeWords;->method(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, v0, Lcom/local/p5home/HookWakeWords;->buttonEntry:Ljava/lang/reflect/Method;

    .line 32
    const-class v2, Ljava/lang/String;

    const-string v5, "reason"

    invoke-static {v9, v5, v2}, Lcom/local/p5home/HookWakeWords;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v2

    iput-object v2, v0, Lcom/local/p5home/HookWakeWords;->wakeReason:Ljava/lang/reflect/Field;

    const-class v2, Ljava/lang/String;

    const-string v1, "word"

    invoke-static {v9, v1, v2}, Lcom/local/p5home/HookWakeWords;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, v0, Lcom/local/p5home/HookWakeWords;->wakeWord:Ljava/lang/reflect/Field;

    const-string v1, "canWakeup"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v1, v2}, Lcom/local/p5home/HookWakeWords;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, v0, Lcom/local/p5home/HookWakeWords;->wakeAllowed:Ljava/lang/reflect/Field;

    const-string v1, "autoListen"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v1, v2}, Lcom/local/p5home/HookWakeWords;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, v0, Lcom/local/p5home/HookWakeWords;->wakeAutoListen:Ljava/lang/reflect/Field;

    .line 33
    return-void

    .line 26
    :cond_140
    new-instance v1, Ljava/lang/NoSuchMethodException;

    const-string v2, "wake_singleton"

    invoke-direct {v1, v2}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 25
    :cond_148
    new-instance v1, Ljava/lang/NoSuchMethodException;

    const-string v2, "wake_task_contract"

    invoke-direct {v1, v2}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic access$000(Lcom/local/p5home/HookWakeWords;)Ljava/lang/reflect/Field;
    .registers 1

    .line 9
    iget-object p0, p0, Lcom/local/p5home/HookWakeWords;->wakeAllowed:Ljava/lang/reflect/Field;

    return-object p0
.end method

.method static synthetic access$100(Lcom/local/p5home/HookWakeWords;)Ljava/lang/reflect/Field;
    .registers 1

    .line 9
    iget-object p0, p0, Lcom/local/p5home/HookWakeWords;->wakeReason:Ljava/lang/reflect/Field;

    return-object p0
.end method

.method static synthetic access$200(Lcom/local/p5home/HookWakeWords;)Ljava/lang/reflect/Field;
    .registers 1

    .line 9
    iget-object p0, p0, Lcom/local/p5home/HookWakeWords;->wakeWord:Ljava/lang/reflect/Field;

    return-object p0
.end method

.method static synthetic access$300(Lcom/local/p5home/HookWakeWords;Ljava/lang/String;)Z
    .registers 2

    .line 9
    invoke-direct {p0, p1}, Lcom/local/p5home/HookWakeWords;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/local/p5home/HookWakeWords;)Ljava/lang/reflect/Field;
    .registers 1

    .line 9
    iget-object p0, p0, Lcom/local/p5home/HookWakeWords;->wakeAutoListen:Ljava/lang/reflect/Field;

    return-object p0
.end method

.method static synthetic access$500(Lcom/local/p5home/HookWakeWords;Z)V
    .registers 2

    .line 9
    invoke-direct {p0, p1}, Lcom/local/p5home/HookWakeWords;->notifyWake(Z)V

    return-void
.end method

.method private declared-synchronized apply(Ljava/lang/Object;Ljava/lang/Object;J)V
    .registers 23

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    monitor-enter p0

    .line 79
    :try_start_7
    iget-wide v3, v1, Lcom/local/p5home/HookWakeWords;->revision:J
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_1bb

    cmp-long v3, p3, v3

    if-eqz v3, :cond_f

    monitor-exit p0

    return-void

    .line 81
    :cond_f
    :try_start_f
    invoke-direct/range {p0 .. p0}, Lcom/local/p5home/HookWakeWords;->engine()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_1ab

    iget-object v3, v1, Lcom/local/p5home/HookWakeWords;->wakeHelper:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, v2, :cond_1f

    goto/16 :goto_1ab

    .line 82
    :cond_1f
    iget-object v0, v1, Lcom/local/p5home/HookWakeWords;->owner:Ljava/lang/Object;

    if-eq v0, v2, :cond_2a

    iput-object v2, v1, Lcom/local/p5home/HookWakeWords;->owner:Ljava/lang/Object;

    iget-object v0, v1, Lcom/local/p5home/HookWakeWords;->owned:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 83
    :cond_2a
    invoke-direct {v1, v2}, Lcom/local/p5home/HookWakeWords;->major(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v4, v1, Lcom/local/p5home/HookWakeWords;->desired:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_39
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/local/p5home/WakeWordPolicy$Word;

    iget-object v6, v5, Lcom/local/p5home/WakeWordPolicy$Word;->pinyin:Ljava/lang/String;

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_39

    .line 84
    :cond_4b
    iget-object v4, v1, Lcom/local/p5home/HookWakeWords;->owned:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_55
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v9, 0x3

    const/4 v10, 0x7

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eqz v5, :cond_dc

    .line 85
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/local/p5home/HookWakeWords$Owned;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/local/p5home/WakeWordPolicy$Word;

    .line 86
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iget-object v8, v15, Lcom/local/p5home/HookWakeWords$Owned;->value:Ljava/lang/Object;

    if-eq v7, v8, :cond_87

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_55

    .line 87
    :cond_87
    iget-boolean v7, v1, Lcom/local/p5home/HookWakeWords;->enabled:Z

    if-eqz v7, :cond_9d

    if-eqz v6, :cond_9d

    invoke-virtual {v6}, Lcom/local/p5home/WakeWordPolicy$Word;->key()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v15, Lcom/local/p5home/HookWakeWords$Owned;->word:Lcom/local/p5home/WakeWordPolicy$Word;

    invoke-virtual {v7}, Lcom/local/p5home/WakeWordPolicy$Word;->key()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_da

    .line 88
    :cond_9d
    iget-object v6, v1, Lcom/local/p5home/HookWakeWords;->change:Ljava/lang/reflect/Method;

    new-array v7, v10, [Ljava/lang/Object;

    const-string v8, "major"

    aput-object v8, v7, v13

    aput-object v12, v7, v14

    aput-object v12, v7, v11

    new-array v8, v14, [Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    aput-object v10, v8, v13

    aput-object v8, v7, v9

    const/4 v8, 0x4

    aput-object v12, v7, v8

    const/4 v8, 0x5

    aput-object v12, v7, v8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x6

    aput-object v8, v7, v9

    invoke-virtual {v6, v2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, v15, Lcom/local/p5home/HookWakeWords$Owned;->value:Ljava/lang/Object;

    if-ne v5, v6, :cond_d7

    const-string v0, "WAKE_WORDS_REMOVE_UNCONFIRMED"

    iput-object v0, v1, Lcom/local/p5home/HookWakeWords;->lastCode:Ljava/lang/String;
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_d5} :catch_1b3
    .catch Ljava/lang/LinkageError; {:try_start_f .. :try_end_d5} :catch_1b1
    .catchall {:try_start_f .. :try_end_d5} :catchall_1bb

    monitor-exit p0

    return-void

    :cond_d7
    :try_start_d7
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 91
    :cond_da
    goto/16 :goto_55

    .line 92
    :cond_dc
    iget-boolean v3, v1, Lcom/local/p5home/HookWakeWords;->enabled:Z

    if-nez v3, :cond_e6

    const-string v0, "WAKE_WORDS_DISABLED"

    iput-object v0, v1, Lcom/local/p5home/HookWakeWords;->lastCode:Ljava/lang/String;
    :try_end_e4
    .catch Ljava/lang/Exception; {:try_start_d7 .. :try_end_e4} :catch_1b3
    .catch Ljava/lang/LinkageError; {:try_start_d7 .. :try_end_e4} :catch_1b1
    .catchall {:try_start_d7 .. :try_end_e4} :catchall_1bb

    monitor-exit p0

    return-void

    .line 93
    :cond_e6
    nop

    .line 94
    :try_start_e7
    iget-object v3, v1, Lcom/local/p5home/HookWakeWords;->desired:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v13

    :goto_ee
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1a1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/local/p5home/WakeWordPolicy$Word;

    .line 95
    iget-object v6, v1, Lcom/local/p5home/HookWakeWords;->owned:Ljava/util/LinkedHashMap;

    iget-object v7, v5, Lcom/local/p5home/WakeWordPolicy$Word;->pinyin:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/local/p5home/HookWakeWords$Owned;

    if-eqz v6, :cond_115

    iget-object v7, v5, Lcom/local/p5home/WakeWordPolicy$Word;->pinyin:Ljava/lang/String;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iget-object v6, v6, Lcom/local/p5home/HookWakeWords$Owned;->value:Ljava/lang/Object;

    if-ne v7, v6, :cond_115

    const/4 v15, 0x4

    const/16 v17, 0x6

    goto/16 :goto_198

    .line 97
    :cond_115
    iget-object v6, v5, Lcom/local/p5home/WakeWordPolicy$Word;->pinyin:Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11f

    move v4, v14

    goto :goto_ee

    .line 98
    :cond_11f
    iget-object v6, v1, Lcom/local/p5home/HookWakeWords;->change:Ljava/lang/reflect/Method;

    new-array v7, v10, [Ljava/lang/Object;

    const-string v8, "major"

    aput-object v8, v7, v13

    aput-object v12, v7, v14

    new-array v8, v14, [Ljava/lang/String;

    iget-object v15, v5, Lcom/local/p5home/WakeWordPolicy$Word;->text:Ljava/lang/String;

    aput-object v15, v8, v13

    aput-object v8, v7, v11

    new-array v8, v14, [Ljava/lang/String;

    iget-object v15, v5, Lcom/local/p5home/WakeWordPolicy$Word;->pinyin:Ljava/lang/String;

    aput-object v15, v8, v13

    aput-object v8, v7, v9

    new-array v8, v14, [Ljava/lang/String;

    iget-object v15, v5, Lcom/local/p5home/WakeWordPolicy$Word;->threshold:Ljava/lang/String;

    aput-object v15, v8, v13

    const/4 v15, 0x4

    aput-object v8, v7, v15

    const/4 v8, 0x5

    aput-object v12, v7, v8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x6

    aput-object v16, v7, v17

    invoke-virtual {v6, v2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v6, v5, Lcom/local/p5home/WakeWordPolicy$Word;->pinyin:Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 100
    if-eqz v6, :cond_19b

    iget-object v7, v1, Lcom/local/p5home/HookWakeWords;->valueClass:Ljava/lang/Class;

    invoke-virtual {v7, v6}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19b

    iget-object v7, v5, Lcom/local/p5home/WakeWordPolicy$Word;->text:Ljava/lang/String;

    iget-object v8, v1, Lcom/local/p5home/HookWakeWords;->valueText:Ljava/lang/reflect/Field;

    invoke-virtual {v8, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19b

    iget-object v7, v5, Lcom/local/p5home/WakeWordPolicy$Word;->pinyin:Ljava/lang/String;

    iget-object v8, v1, Lcom/local/p5home/HookWakeWords;->valuePinyin:Ljava/lang/reflect/Field;

    invoke-virtual {v8, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19b

    iget-object v7, v5, Lcom/local/p5home/WakeWordPolicy$Word;->threshold:Ljava/lang/String;

    iget-object v8, v1, Lcom/local/p5home/HookWakeWords;->valueThreshold:Ljava/lang/reflect/Field;

    invoke-virtual {v8, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_18b

    goto :goto_19b

    .line 101
    :cond_18b
    iget-object v7, v1, Lcom/local/p5home/HookWakeWords;->owned:Ljava/util/LinkedHashMap;

    iget-object v8, v5, Lcom/local/p5home/WakeWordPolicy$Word;->pinyin:Ljava/lang/String;

    new-instance v9, Lcom/local/p5home/HookWakeWords$Owned;

    invoke-direct {v9, v5, v6}, Lcom/local/p5home/HookWakeWords$Owned;-><init>(Lcom/local/p5home/WakeWordPolicy$Word;Ljava/lang/Object;)V

    invoke-virtual {v7, v8, v9}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    nop

    .line 94
    :goto_198
    const/4 v9, 0x3

    goto/16 :goto_ee

    .line 100
    :cond_19b
    :goto_19b
    const-string v0, "WAKE_WORDS_REGISTER_UNCONFIRMED"

    iput-object v0, v1, Lcom/local/p5home/HookWakeWords;->lastCode:Ljava/lang/String;
    :try_end_19f
    .catch Ljava/lang/Exception; {:try_start_e7 .. :try_end_19f} :catch_1b3
    .catch Ljava/lang/LinkageError; {:try_start_e7 .. :try_end_19f} :catch_1b1
    .catchall {:try_start_e7 .. :try_end_19f} :catchall_1bb

    monitor-exit p0

    return-void

    .line 103
    :cond_1a1
    if-eqz v4, :cond_1a6

    :try_start_1a3
    const-string v0, "WAKE_WORDS_CONFLICT"

    goto :goto_1a8

    :cond_1a6
    const-string v0, "WAKE_WORDS_DISPATCHED"

    :goto_1a8
    iput-object v0, v1, Lcom/local/p5home/HookWakeWords;->lastCode:Ljava/lang/String;

    goto :goto_1b8

    .line 81
    :cond_1ab
    :goto_1ab
    const-string v0, "WAKE_WORDS_OWNER_CHANGED"

    iput-object v0, v1, Lcom/local/p5home/HookWakeWords;->lastCode:Ljava/lang/String;
    :try_end_1af
    .catch Ljava/lang/Exception; {:try_start_1a3 .. :try_end_1af} :catch_1b3
    .catch Ljava/lang/LinkageError; {:try_start_1a3 .. :try_end_1af} :catch_1b1
    .catchall {:try_start_1a3 .. :try_end_1af} :catchall_1bb

    monitor-exit p0

    return-void

    .line 104
    :catch_1b1
    move-exception v0

    goto :goto_1b4

    :catch_1b3
    move-exception v0

    :goto_1b4
    :try_start_1b4
    const-string v0, "WAKE_WORDS_UPDATE_FAILED"

    iput-object v0, v1, Lcom/local/p5home/HookWakeWords;->lastCode:Ljava/lang/String;
    :try_end_1b8
    .catchall {:try_start_1b4 .. :try_end_1b8} :catchall_1bb

    :goto_1b8
    nop

    .line 105
    monitor-exit p0

    return-void

    .line 78
    :catchall_1bb
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private engine()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/local/p5home/HookWakeWords;->serverSdk:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/local/p5home/HookWakeWords;->singleton:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_13

    return-object v3

    :cond_13
    iget-object v1, p0, Lcom/local/p5home/HookWakeWords;->sdkWake:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/local/p5home/HookWakeWords;->wakeClass:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    move-object v3, v0

    :cond_22
    return-object v3
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

    .line 117
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

    const-string p1, "wake_field_contract"

    invoke-direct {p0, p1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private declared-synchronized major(Ljava/lang/Object;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    .line 75
    :try_start_1
    iget-object v0, p0, Lcom/local/p5home/HookWakeWords;->helperWords:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_23

    check-cast p1, Ljava/util/Map;

    const-string v0, "major"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 76
    instance-of v0, p1, Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_1b

    check-cast p1, Ljava/util/Map;
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_2b

    monitor-exit p0

    return-object p1

    :cond_1b
    :try_start_1b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "wake_major"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 75
    :cond_23
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "wake_groups"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2b
    .catchall {:try_start_1b .. :try_end_2b} :catchall_2b

    .line 74
    :catchall_2b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized matches(Ljava/lang/String;)Z
    .registers 9

    monitor-enter p0

    .line 107
    :try_start_1
    iget-boolean v0, p0, Lcom/local/p5home/HookWakeWords;->enabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_7b

    if-eqz p1, :cond_7b

    iget-object v0, p0, Lcom/local/p5home/HookWakeWords;->owner:Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_7d

    if-nez v0, :cond_d

    goto :goto_7b

    .line 108
    :cond_d
    :try_start_d
    invoke-direct {p0}, Lcom/local/p5home/HookWakeWords;->engine()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_73

    iget-object v2, p0, Lcom/local/p5home/HookWakeWords;->wakeHelper:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/local/p5home/HookWakeWords;->owner:Ljava/lang/Object;

    if-eq v0, v2, :cond_1e

    goto :goto_73

    :cond_1e
    invoke-direct {p0, v2}, Lcom/local/p5home/HookWakeWords;->major(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v2, "\\s+"

    const-string v3, " "

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 109
    iget-object v2, p0, Lcom/local/p5home/HookWakeWords;->owned:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_38
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_78

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/local/p5home/HookWakeWords$Owned;

    iget-object v4, v3, Lcom/local/p5home/HookWakeWords$Owned;->word:Lcom/local/p5home/WakeWordPolicy$Word;

    iget-object v4, v4, Lcom/local/p5home/WakeWordPolicy$Word;->pinyin:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, v3, Lcom/local/p5home/HookWakeWords$Owned;->value:Ljava/lang/Object;

    if-ne v4, v5, :cond_38

    iget-object v4, v3, Lcom/local/p5home/HookWakeWords$Owned;->word:Lcom/local/p5home/WakeWordPolicy$Word;

    iget-object v4, v4, Lcom/local/p5home/WakeWordPolicy$Word;->text:Ljava/lang/String;

    const-string v5, " "

    const-string v6, ""

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6c

    iget-object v3, v3, Lcom/local/p5home/HookWakeWords$Owned;->word:Lcom/local/p5home/WakeWordPolicy$Word;

    iget-object v3, v3, Lcom/local/p5home/WakeWordPolicy$Word;->pinyin:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    :cond_6c
    const-string p1, "WAKE_WORDS_HIT"

    iput-object p1, p0, Lcom/local/p5home/HookWakeWords;->lastCode:Ljava/lang/String;
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_70} :catch_77
    .catch Ljava/lang/LinkageError; {:try_start_d .. :try_end_70} :catch_75
    .catchall {:try_start_d .. :try_end_70} :catchall_7d

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 108
    :cond_73
    :goto_73
    monitor-exit p0

    return v1

    .line 110
    :catch_75
    move-exception p1

    goto :goto_78

    :catch_77
    move-exception p1

    :cond_78
    :goto_78
    nop

    .line 111
    monitor-exit p0

    return v1

    .line 107
    :cond_7b
    :goto_7b
    monitor-exit p0

    return v1

    .line 106
    :catchall_7d
    move-exception p1

    monitor-exit p0

    throw p1
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

    .line 118
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

    const-string p1, "wake_method_contract"

    invoke-direct {p0, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private notifyWake(Z)V
    .registers 3

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/local/p5home/HookWakeWords;->listener:Lcom/local/p5home/HookWakeWords$Listener;

    invoke-interface {v0, p1}, Lcom/local/p5home/HookWakeWords$Listener;->onWake(Z)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_7

    :catch_6
    move-exception p1

    :goto_7
    return-void
.end method

.method private static same(Ljava/util/List;Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/local/p5home/WakeWordPolicy$Word;",
            ">;",
            "Ljava/util/List<",
            "Lcom/local/p5home/WakeWordPolicy$Word;",
            ">;)Z"
        }
    .end annotation

    .line 115
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    return v2

    :cond_c
    move v0, v2

    :goto_d
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_31

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/local/p5home/WakeWordPolicy$Word;

    invoke-virtual {v1}, Lcom/local/p5home/WakeWordPolicy$Word;->key()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/local/p5home/WakeWordPolicy$Word;

    invoke-virtual {v3}, Lcom/local/p5home/WakeWordPolicy$Word;->key()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    return v2

    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_31
    const/4 p0, 0x1

    return p0
.end method

.method private type(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 116
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/local/p5home/HookWakeWords;->loader:Ljava/lang/ClassLoader;

    invoke-static {p1, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method code()Ljava/lang/String;
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/local/p5home/HookWakeWords;->lastCode:Ljava/lang/String;

    return-object v0
.end method

.method declared-synchronized install()V
    .registers 3

    monitor-enter p0

    .line 35
    :try_start_1
    iget-boolean v0, p0, Lcom/local/p5home/HookWakeWords;->installed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_20

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    .line 36
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/local/p5home/HookWakeWords;->wakeEntry:Ljava/lang/reflect/Method;

    new-instance v1, Lcom/local/p5home/HookWakeWords$1;

    invoke-direct {v1, p0}, Lcom/local/p5home/HookWakeWords$1;-><init>(Lcom/local/p5home/HookWakeWords;)V

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 48
    iget-object v0, p0, Lcom/local/p5home/HookWakeWords;->buttonEntry:Ljava/lang/reflect/Method;

    new-instance v1, Lcom/local/p5home/HookWakeWords$2;

    invoke-direct {v1, p0}, Lcom/local/p5home/HookWakeWords$2;-><init>(Lcom/local/p5home/HookWakeWords;)V

    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/local/p5home/HookWakeWords;->installed:Z
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_20

    .line 50
    monitor-exit p0

    return-void

    .line 34
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method synthetic lambda$update$0$com-local-g3home-HookWakeWords(Ljava/lang/Object;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 65
    invoke-virtual {p6}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_3d

    const-string p1, "hashCode"

    invoke-virtual {p6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    invoke-static {p5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_1d
    const-string p1, "equals"

    invoke-virtual {p6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3a

    const/4 p1, 0x0

    if-eqz p7, :cond_35

    array-length p2, p7

    const/4 p3, 0x1

    if-ne p2, p3, :cond_35

    aget-object p2, p7, p1

    if-ne p5, p2, :cond_35

    move p1, p3

    :cond_35
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_3a
    const-string p1, "G3WakeWordsTask"

    return-object p1

    .line 66
    :cond_3d
    const-string p5, "a"

    invoke-virtual {p6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p5, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_54

    invoke-virtual {p6}, Ljava/lang/reflect/Method;->getParameterCount()I

    move-result p5

    if-nez p5, :cond_54

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/local/p5home/HookWakeWords;->apply(Ljava/lang/Object;Ljava/lang/Object;J)V

    const/4 p1, 0x0

    return-object p1

    .line 67
    :cond_54
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "wake_task_contract"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method declared-synchronized registeredCount()I
    .registers 2

    monitor-enter p0

    .line 73
    :try_start_1
    iget-object v0, p0, Lcom/local/p5home/HookWakeWords;->owned:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    .line 73
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method update(Ljava/lang/String;Z)V
    .registers 11

    .line 54
    if-eqz p2, :cond_7

    :try_start_2
    invoke-static {p1}, Lcom/local/p5home/WakeWordPolicy;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    goto :goto_b

    :cond_7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_b} :catch_7b

    .line 55
    :goto_b
    nop

    .line 57
    monitor-enter p0

    :try_start_d
    iget-boolean v0, p0, Lcom/local/p5home/HookWakeWords;->enabled:Z

    if-ne v0, p2, :cond_19

    iget-object v0, p0, Lcom/local/p5home/HookWakeWords;->desired:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/local/p5home/HookWakeWords;->same(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_24

    :cond_19
    iget-wide v0, p0, Lcom/local/p5home/HookWakeWords;->revision:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/local/p5home/HookWakeWords;->revision:J

    iput-object p1, p0, Lcom/local/p5home/HookWakeWords;->desired:Ljava/util/List;

    iput-boolean p2, p0, Lcom/local/p5home/HookWakeWords;->enabled:Z

    :cond_24
    iget-wide v6, p0, Lcom/local/p5home/HookWakeWords;->revision:J

    monitor-exit p0
    :try_end_27
    .catchall {:try_start_d .. :try_end_27} :catchall_78

    .line 59
    :try_start_27
    iget-boolean p1, p0, Lcom/local/p5home/HookWakeWords;->installed:Z

    if-nez p1, :cond_30

    const-string p1, "WAKE_WORDS_NOT_INSTALLED"

    iput-object p1, p0, Lcom/local/p5home/HookWakeWords;->lastCode:Ljava/lang/String;

    return-void

    .line 60
    :cond_30
    invoke-direct {p0}, Lcom/local/p5home/HookWakeWords;->engine()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3b

    const-string p1, "WAKE_ENGINE_NOT_READY"

    iput-object p1, p0, Lcom/local/p5home/HookWakeWords;->lastCode:Ljava/lang/String;

    return-void

    .line 61
    :cond_3b
    iget-object p1, p0, Lcom/local/p5home/HookWakeWords;->wakeHelper:Ljava/lang/reflect/Field;

    invoke-virtual {p1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iget-object p1, p0, Lcom/local/p5home/HookWakeWords;->wakeRunner:Ljava/lang/reflect/Field;

    invoke-virtual {p1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz v5, :cond_6b

    if-nez p1, :cond_4c

    goto :goto_6b

    .line 64
    :cond_4c
    iget-object p2, p0, Lcom/local/p5home/HookWakeWords;->loader:Ljava/lang/ClassLoader;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    iget-object v1, p0, Lcom/local/p5home/HookWakeWords;->taskClass:Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/local/p5home/HookWakeWords$$ExternalSyntheticLambda0;

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/local/p5home/HookWakeWords$$ExternalSyntheticLambda0;-><init>(Lcom/local/p5home/HookWakeWords;Ljava/lang/Object;Ljava/lang/Object;J)V

    invoke-static {p2, v0, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p2

    .line 69
    iget-object v0, p0, Lcom/local/p5home/HookWakeWords;->submit:Ljava/lang/reflect/Method;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    goto :goto_77

    .line 61
    :cond_6b
    :goto_6b
    const-string p1, "WAKE_ENGINE_NOT_READY"

    iput-object p1, p0, Lcom/local/p5home/HookWakeWords;->lastCode:Ljava/lang/String;
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_6f} :catch_72
    .catch Ljava/lang/LinkageError; {:try_start_27 .. :try_end_6f} :catch_70

    return-void

    .line 70
    :catch_70
    move-exception p1

    goto :goto_73

    :catch_72
    move-exception p1

    :goto_73
    const-string p1, "WAKE_WORDS_UPDATE_FAILED"

    iput-object p1, p0, Lcom/local/p5home/HookWakeWords;->lastCode:Ljava/lang/String;

    .line 71
    :goto_77
    return-void

    .line 57
    :catchall_78
    move-exception p1

    :try_start_79
    monitor-exit p0
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    throw p1

    .line 55
    :catch_7b
    move-exception p1

    const-string p1, "WAKE_WORDS_CONFIG_INVALID"

    iput-object p1, p0, Lcom/local/p5home/HookWakeWords;->lastCode:Ljava/lang/String;

    return-void
.end method

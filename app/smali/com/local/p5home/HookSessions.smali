.class final Lcom/local/p5home/HookSessions;
.super Ljava/lang/Object;
.source "HookSessions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/local/p5home/HookSessions$Entry;,
        Lcom/local/p5home/HookSessions$Snapshot;,
        Lcom/local/p5home/HookSessions$Completion;
    }
.end annotation


# instance fields
.field private final asrResult:Ljava/lang/reflect/Field;

.field private final cancelListening:Ljava/lang/reflect/Method;

.field private final clearDds:Ljava/lang/reflect/Method;

.field private final clearFusion:Ljava/lang/reflect/Method;

.field private final contextData:Ljava/lang/reflect/Field;

.field private final continuous:Ljava/lang/reflect/Method;

.field private final currentState:Ljava/lang/reflect/Field;

.field private final dds:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final dmContext:Ljava/lang/reflect/Field;

.field private final dmHandler:Ljava/lang/reflect/Field;

.field private final entries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/local/p5home/HookSessions$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final fusionSticky:Ljava/lang/reflect/Field;

.field private generation:J

.field private final idle:Ljava/lang/reflect/Field;

.field private lastAsr:Ljava/lang/Object;

.field private volatile lastCode:Ljava/lang/String;

.field private final listenWindow:Ljava/lang/reflect/Method;

.field private final listening:Ljava/lang/reflect/Field;

.field private final nluFusion:Ljava/lang/reflect/Field;

.field private final nluHandler:Ljava/lang/reflect/Field;

.field private final nluProviders:Ljava/lang/reflect/Field;

.field private volatile observedSdk:Ljava/lang/Object;

.field private final provider:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final sdkAsr:Ljava/lang/reflect/Field;

.field private final sdkDm:Ljava/lang/reflect/Field;

.field private final sdkNlu:Ljava/lang/reflect/Field;

.field private final sdkTts:Ljava/lang/reflect/Field;

.field private final serverSdk:Ljava/lang/reflect/Field;

.field private final sessionId:Ljava/lang/reflect/Field;

.field private final setNluState:Ljava/lang/reflect/Method;

.field private final setSolo:Ljava/lang/reflect/Method;

.field private final singleton:Ljava/lang/reflect/Method;

.field private volatile soloCode:Ljava/lang/String;

.field private soloOwner:Lcom/local/p5home/HookSessions$Entry;

.field private final speaking:Ljava/lang/reflect/Field;

.field private final startListening:Ljava/lang/reflect/Method;

.field private final state:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final stateSdk:Ljava/lang/reflect/Field;

.field private final stop:Ljava/lang/reflect/Method;

.field private final stopProvider:Ljava/lang/reflect/Method;

.field private final systemTts:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final transition:Ljava/lang/reflect/Method;

.field private final ttsEngine:Ljava/lang/reflect/Field;


# direct methods
.method constructor <init>(Ljava/lang/ClassLoader;)V
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 29
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v2, "TURN_IDLE"

    iput-object v2, v0, Lcom/local/p5home/HookSessions;->lastCode:Ljava/lang/String;

    const-string v2, "SOLO_IDLE"

    iput-object v2, v0, Lcom/local/p5home/HookSessions;->soloCode:Ljava/lang/String;

    .line 28
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v0, Lcom/local/p5home/HookSessions;->entries:Ljava/util/LinkedHashMap;

    .line 30
    const-string v2, "com.xiaopeng.carspeechservice.b.g"

    invoke-static {v1, v2}, Lcom/local/p5home/HookSessions;->type(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, v0, Lcom/local/p5home/HookSessions;->state:Ljava/lang/Class;

    const-string v3, "com.xiaopeng.carspeechservice.b.f"

    invoke-static {v1, v3}, Lcom/local/p5home/HookSessions;->type(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "com.xiaopeng.carspeechservice.g.b"

    invoke-static {v1, v4}, Lcom/local/p5home/HookSessions;->type(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "com.xiaopeng.carspeechservice.b.d"

    invoke-static {v1, v5}, Lcom/local/p5home/HookSessions;->type(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 31
    const-string v6, "com.xiaopeng.carspeechservice.b.c"

    invoke-static {v1, v6}, Lcom/local/p5home/HookSessions;->type(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const-string v7, "com.xiaopeng.carspeechservice.b.b"

    invoke-static {v1, v7}, Lcom/local/p5home/HookSessions;->type(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const-string v8, "com.xiaopeng.carspeechservice.b.a"

    invoke-static {v1, v8}, Lcom/local/p5home/HookSessions;->type(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const-string v9, "com.xiaopeng.carspeechservice.h.g"

    invoke-static {v1, v9}, Lcom/local/p5home/HookSessions;->type(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    const-string v10, "com.xiaopeng.speech.common.util.g"

    invoke-static {v1, v10}, Lcom/local/p5home/HookSessions;->type(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    .line 32
    const-string v11, "com.xiaopeng.carspeechservice.nlu.a"

    invoke-static {v1, v11}, Lcom/local/p5home/HookSessions;->type(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    const-string v12, "com.xiaopeng.carspeechservice.nlu.b.a"

    invoke-static {v1, v12}, Lcom/local/p5home/HookSessions;->type(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    const-string v13, "com.xiaopeng.carspeechservice.a.a"

    invoke-static {v1, v13}, Lcom/local/p5home/HookSessions;->type(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    .line 33
    const-string v14, "com.xiaopeng.carspeechservice.tts.b"

    invoke-static {v1, v14}, Lcom/local/p5home/HookSessions;->type(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    const-string v15, "com.xiaopeng.carspeechservice.tts.a"

    invoke-static {v1, v15}, Lcom/local/p5home/HookSessions;->type(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v15

    move-object/from16 v16, v13

    const-string v13, "com.xiaopeng.carspeechservice.tts.a.a"

    invoke-static {v1, v13}, Lcom/local/p5home/HookSessions;->type(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    iput-object v13, v0, Lcom/local/p5home/HookSessions;->systemTts:Ljava/lang/Class;

    .line 34
    move-object/from16 v17, v12

    const-string v12, "c"

    move-object/from16 v18, v11

    invoke-static {v4, v12, v14}, Lcom/local/p5home/HookSessions;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v11

    iput-object v11, v0, Lcom/local/p5home/HookSessions;->sdkTts:Ljava/lang/reflect/Field;

    const-string v11, "a"

    invoke-static {v14, v11, v15}, Lcom/local/p5home/HookSessions;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v14

    iput-object v14, v0, Lcom/local/p5home/HookSessions;->ttsEngine:Ljava/lang/reflect/Field;

    sget-object v14, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    sget-object v15, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v15}, [Ljava/lang/Class;

    move-result-object v15

    invoke-static {v13, v11, v14, v15}, Lcom/local/p5home/HookSessions;->method(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    iput-object v13, v0, Lcom/local/p5home/HookSessions;->setSolo:Ljava/lang/reflect/Method;

    .line 35
    const-string v13, "com.xiaopeng.carspeechservice.nlu.c.d"

    invoke-static {v1, v13}, Lcom/local/p5home/HookSessions;->type(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    iput-object v13, v0, Lcom/local/p5home/HookSessions;->provider:Ljava/lang/Class;

    const-string v14, "com.xiaopeng.carspeechservice.nlu.c.b"

    invoke-static {v1, v14}, Lcom/local/p5home/HookSessions;->type(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    iput-object v14, v0, Lcom/local/p5home/HookSessions;->dds:Ljava/lang/Class;

    .line 36
    const-class v15, Landroid/os/Handler;

    invoke-virtual {v15, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v15

    if-eqz v15, :cond_1cb

    .line 37
    const-string v15, "b"

    move-object/from16 v19, v14

    invoke-static {v2, v15, v4}, Lcom/local/p5home/HookSessions;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v14

    iput-object v14, v0, Lcom/local/p5home/HookSessions;->stateSdk:Ljava/lang/reflect/Field;

    invoke-static {v9, v12, v4}, Lcom/local/p5home/HookSessions;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v14

    iput-object v14, v0, Lcom/local/p5home/HookSessions;->serverSdk:Ljava/lang/reflect/Field;

    const-string v14, "i"

    invoke-static {v4, v14, v5}, Lcom/local/p5home/HookSessions;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v14

    iput-object v14, v0, Lcom/local/p5home/HookSessions;->sdkDm:Ljava/lang/reflect/Field;

    invoke-static {v5, v11, v7}, Lcom/local/p5home/HookSessions;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v7

    iput-object v7, v0, Lcom/local/p5home/HookSessions;->dmContext:Ljava/lang/reflect/Field;

    invoke-static {v5, v15, v10}, Lcom/local/p5home/HookSessions;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v5

    iput-object v5, v0, Lcom/local/p5home/HookSessions;->dmHandler:Ljava/lang/reflect/Field;

    .line 38
    const-string v5, "j"

    invoke-static {v6, v5, v8}, Lcom/local/p5home/HookSessions;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v7

    iput-object v7, v0, Lcom/local/p5home/HookSessions;->contextData:Ljava/lang/reflect/Field;

    const-class v7, Ljava/lang/String;

    invoke-static {v8, v5, v7}, Lcom/local/p5home/HookSessions;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v7

    iput-object v7, v0, Lcom/local/p5home/HookSessions;->sessionId:Ljava/lang/reflect/Field;

    const-string v7, "com.xiaopeng.carspeechservice.bean.a.b"

    invoke-static {v1, v7}, Lcom/local/p5home/HookSessions;->type(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    invoke-static {v8, v12, v7}, Lcom/local/p5home/HookSessions;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v7

    iput-object v7, v0, Lcom/local/p5home/HookSessions;->asrResult:Ljava/lang/reflect/Field;

    .line 39
    invoke-static {v6, v11, v3}, Lcom/local/p5home/HookSessions;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v7

    iput-object v7, v0, Lcom/local/p5home/HookSessions;->idle:Ljava/lang/reflect/Field;

    invoke-static {v6, v15, v3}, Lcom/local/p5home/HookSessions;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v7

    iput-object v7, v0, Lcom/local/p5home/HookSessions;->listening:Ljava/lang/reflect/Field;

    const-string v7, "e"

    invoke-static {v6, v7, v3}, Lcom/local/p5home/HookSessions;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v7

    iput-object v7, v0, Lcom/local/p5home/HookSessions;->speaking:Ljava/lang/reflect/Field;

    const-string v7, "n"

    invoke-static {v6, v7, v3}, Lcom/local/p5home/HookSessions;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v8

    iput-object v8, v0, Lcom/local/p5home/HookSessions;->currentState:Ljava/lang/reflect/Field;

    .line 40
    const-string v8, "k"

    move-object/from16 v14, v18

    invoke-static {v4, v8, v14}, Lcom/local/p5home/HookSessions;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v8

    iput-object v8, v0, Lcom/local/p5home/HookSessions;->sdkNlu:Ljava/lang/reflect/Field;

    invoke-static {v14, v12, v10}, Lcom/local/p5home/HookSessions;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v8

    iput-object v8, v0, Lcom/local/p5home/HookSessions;->nluHandler:Ljava/lang/reflect/Field;

    const-class v8, Ljava/util/Map;

    invoke-static {v14, v11, v8}, Lcom/local/p5home/HookSessions;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v8

    iput-object v8, v0, Lcom/local/p5home/HookSessions;->nluProviders:Ljava/lang/reflect/Field;

    move-object/from16 v8, v17

    invoke-static {v14, v15, v8}, Lcom/local/p5home/HookSessions;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v10

    iput-object v10, v0, Lcom/local/p5home/HookSessions;->nluFusion:Ljava/lang/reflect/Field;

    const-string v10, "f"

    move-object/from16 v17, v12

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v10, v12}, Lcom/local/p5home/HookSessions;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v10

    iput-object v10, v0, Lcom/local/p5home/HookSessions;->fusionSticky:Ljava/lang/reflect/Field;

    move-object/from16 v10, v16

    invoke-static {v4, v5, v10}, Lcom/local/p5home/HookSessions;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v4

    iput-object v4, v0, Lcom/local/p5home/HookSessions;->sdkAsr:Ljava/lang/reflect/Field;

    .line 41
    const/4 v4, 0x0

    new-array v12, v4, [Ljava/lang/Class;

    invoke-static {v9, v11, v9, v12}, Lcom/local/p5home/HookSessions;->method(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    iput-object v9, v0, Lcom/local/p5home/HookSessions;->singleton:Ljava/lang/reflect/Method;

    sget-object v9, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-class v12, Ljava/lang/String;

    const-class v4, Ljava/lang/String;

    filled-new-array {v12, v4}, [Ljava/lang/Class;

    move-result-object v4

    invoke-static {v6, v15, v9, v4}, Lcom/local/p5home/HookSessions;->method(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, v0, Lcom/local/p5home/HookSessions;->stop:Ljava/lang/reflect/Method;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v4

    invoke-static {v6, v11, v3, v4}, Lcom/local/p5home/HookSessions;->method(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, v0, Lcom/local/p5home/HookSessions;->transition:Ljava/lang/reflect/Method;

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    new-array v6, v4, [Ljava/lang/Class;

    invoke-static {v2, v7, v3, v6}, Lcom/local/p5home/HookSessions;->method(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, v0, Lcom/local/p5home/HookSessions;->startListening:Ljava/lang/reflect/Method;

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    new-array v6, v4, [Ljava/lang/Class;

    const-string v7, "p"

    invoke-static {v2, v7, v3, v6}, Lcom/local/p5home/HookSessions;->method(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, v0, Lcom/local/p5home/HookSessions;->cancelListening:Ljava/lang/reflect/Method;

    .line 42
    const-string v2, "com.xiaopeng.carspeechservice.speechutils.k"

    invoke-static {v1, v2}, Lcom/local/p5home/HookSessions;->type(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-array v3, v4, [Ljava/lang/Class;

    const-string v6, "l"

    invoke-static {v1, v6, v2, v3}, Lcom/local/p5home/HookSessions;->method(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, v0, Lcom/local/p5home/HookSessions;->continuous:Ljava/lang/reflect/Method;

    .line 43
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    new-array v2, v4, [Ljava/lang/Class;

    invoke-static {v8, v11, v1, v2}, Lcom/local/p5home/HookSessions;->method(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, v0, Lcom/local/p5home/HookSessions;->clearFusion:Ljava/lang/reflect/Method;

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-static {v14, v11, v1, v2}, Lcom/local/p5home/HookSessions;->method(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, v0, Lcom/local/p5home/HookSessions;->setNluState:Ljava/lang/reflect/Method;

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    new-array v2, v4, [Ljava/lang/Class;

    invoke-static {v13, v15, v1, v2}, Lcom/local/p5home/HookSessions;->method(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, v0, Lcom/local/p5home/HookSessions;->stopProvider:Ljava/lang/reflect/Method;

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    new-array v2, v4, [Ljava/lang/Class;

    move-object/from16 v3, v19

    invoke-static {v3, v5, v1, v2}, Lcom/local/p5home/HookSessions;->method(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, v0, Lcom/local/p5home/HookSessions;->clearDds:Ljava/lang/reflect/Method;

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    move-object/from16 v3, v17

    invoke-static {v10, v3, v1, v2}, Lcom/local/p5home/HookSessions;->method(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, v0, Lcom/local/p5home/HookSessions;->listenWindow:Ljava/lang/reflect/Method;

    .line 44
    return-void

    .line 36
    :cond_1cb
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "handler_contract"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private cancelExpiry(Lcom/local/p5home/HookSessions$Entry;)V
    .registers 4

    .line 178
    if-eqz p1, :cond_12

    iget-object v0, p1, Lcom/local/p5home/HookSessions$Entry;->expiry:Ljava/lang/Runnable;

    if-eqz v0, :cond_12

    iget-object v0, p1, Lcom/local/p5home/HookSessions$Entry;->snapshot:Lcom/local/p5home/HookSessions$Snapshot;

    iget-object v0, v0, Lcom/local/p5home/HookSessions$Snapshot;->handler:Landroid/os/Handler;

    iget-object v1, p1, Lcom/local/p5home/HookSessions$Entry;->expiry:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/local/p5home/HookSessions$Entry;->expiry:Ljava/lang/Runnable;

    :cond_12
    return-void
.end method

.method private declared-synchronized current(Lcom/local/p5home/HookSessions$Snapshot;)Z
    .registers 7

    monitor-enter p0

    .line 193
    const/4 v0, 0x0

    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p1, Lcom/local/p5home/HookSessions$Snapshot;->at:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_4b

    iget-wide v1, p0, Lcom/local/p5home/HookSessions;->generation:J

    iget-wide v3, p1, Lcom/local/p5home/HookSessions$Snapshot;->generation:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_4b

    invoke-direct {p0}, Lcom/local/p5home/HookSessions;->currentSdk()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p1, Lcom/local/p5home/HookSessions$Snapshot;->sdk:Ljava/lang/Object;

    if-ne v1, v2, :cond_4b

    iget-object v1, p1, Lcom/local/p5home/HookSessions$Snapshot;->token:Ljava/lang/String;

    iget-object v2, p0, Lcom/local/p5home/HookSessions;->sessionId:Ljava/lang/reflect/Field;

    iget-object v3, p1, Lcom/local/p5home/HookSessions$Snapshot;->data:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    iget-object v1, p0, Lcom/local/p5home/HookSessions;->asrResult:Ljava/lang/reflect/Field;

    iget-object v2, p1, Lcom/local/p5home/HookSessions$Snapshot;->data:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p1, Lcom/local/p5home/HookSessions$Snapshot;->asr:Ljava/lang/Object;

    if-ne v1, v2, :cond_4b

    iget-object v1, p0, Lcom/local/p5home/HookSessions;->currentState:Ljava/lang/reflect/Field;

    iget-object v2, p1, Lcom/local/p5home/HookSessions$Snapshot;->context:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/local/p5home/HookSessions;->idle:Ljava/lang/reflect/Field;

    iget-object p1, p1, Lcom/local/p5home/HookSessions$Snapshot;->context:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_48} :catch_52
    .catch Ljava/lang/LinkageError; {:try_start_2 .. :try_end_48} :catch_50
    .catchall {:try_start_2 .. :try_end_48} :catchall_4d

    if-eq v1, p1, :cond_4b

    const/4 v0, 0x1

    :cond_4b
    monitor-exit p0

    return v0

    .line 192
    :catchall_4d
    move-exception p1

    monitor-exit p0

    throw p1

    .line 194
    :catch_50
    move-exception p1

    goto :goto_53

    :catch_52
    move-exception p1

    :goto_53
    monitor-exit p0

    return v0
.end method

.method private currentSdk()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/local/p5home/HookSessions;->observedSdk:Ljava/lang/Object;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/local/p5home/HookSessions;->observedSdk:Ljava/lang/Object;

    goto :goto_17

    :cond_7
    iget-object v0, p0, Lcom/local/p5home/HookSessions;->serverSdk:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/local/p5home/HookSessions;->singleton:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_17
    return-object v0
.end method

.method private enqueue(Ljava/lang/String;ILcom/local/p5home/HookSessions$Completion;)V
    .registers 8

    .line 100
    monitor-enter p0

    .line 101
    :try_start_1
    iget-object v0, p0, Lcom/local/p5home/HookSessions;->entries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/local/p5home/HookSessions$Entry;

    .line 102
    const/4 v0, 0x0

    if-nez p1, :cond_13

    const-string p1, "TURN_UNKNOWN"

    invoke-interface {p3, v0, p1}, Lcom/local/p5home/HookSessions$Completion;->done(ZLjava/lang/String;)V

    monitor-exit p0

    return-void

    .line 103
    :cond_13
    iget-boolean v1, p1, Lcom/local/p5home/HookSessions$Entry;->ended:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1f

    const-string p1, "TURN_ALREADY_COMPLETED"

    invoke-interface {p3, v2, p1}, Lcom/local/p5home/HookSessions$Completion;->done(ZLjava/lang/String;)V

    monitor-exit p0

    return-void

    .line 104
    :cond_1f
    iget v1, p1, Lcom/local/p5home/HookSessions$Entry;->queued:I

    const/4 v3, 0x4

    if-lt v1, v3, :cond_2b

    const-string p1, "TURN_CALLBACK_BOUND"

    invoke-interface {p3, v0, p1}, Lcom/local/p5home/HookSessions$Completion;->done(ZLjava/lang/String;)V

    monitor-exit p0

    return-void

    .line 105
    :cond_2b
    iget v1, p1, Lcom/local/p5home/HookSessions$Entry;->attempts:I

    const/16 v3, 0x8

    if-lt v1, v3, :cond_38

    const-string p1, "TURN_RETRY_BOUND"

    invoke-interface {p3, v0, p1}, Lcom/local/p5home/HookSessions$Completion;->done(ZLjava/lang/String;)V

    monitor-exit p0

    return-void

    .line 106
    :cond_38
    iget v1, p1, Lcom/local/p5home/HookSessions$Entry;->queued:I

    add-int/2addr v1, v2

    iput v1, p1, Lcom/local/p5home/HookSessions$Entry;->queued:I

    iget v1, p1, Lcom/local/p5home/HookSessions$Entry;->attempts:I

    add-int/2addr v1, v2

    iput v1, p1, Lcom/local/p5home/HookSessions$Entry;->attempts:I

    .line 107
    monitor-exit p0
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_63

    .line 108
    iget-object v1, p1, Lcom/local/p5home/HookSessions$Entry;->snapshot:Lcom/local/p5home/HookSessions$Snapshot;

    iget-object v1, v1, Lcom/local/p5home/HookSessions$Snapshot;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/local/p5home/HookSessions$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/local/p5home/HookSessions$$ExternalSyntheticLambda1;-><init>(Lcom/local/p5home/HookSessions;Lcom/local/p5home/HookSessions$Entry;ILcom/local/p5home/HookSessions$Completion;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p2

    if-nez p2, :cond_62

    .line 109
    monitor-enter p0

    :try_start_53
    iget p2, p1, Lcom/local/p5home/HookSessions$Entry;->queued:I

    sub-int/2addr p2, v2

    iput p2, p1, Lcom/local/p5home/HookSessions$Entry;->queued:I

    monitor-exit p0
    :try_end_59
    .catchall {:try_start_53 .. :try_end_59} :catchall_5f

    const-string p1, "TURN_HANDLER_REJECTED"

    invoke-direct {p0, p3, v0, p1}, Lcom/local/p5home/HookSessions;->report(Lcom/local/p5home/HookSessions$Completion;ZLjava/lang/String;)V

    goto :goto_62

    :catchall_5f
    move-exception p1

    :try_start_60
    monitor-exit p0
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    throw p1

    .line 111
    :cond_62
    :goto_62
    return-void

    .line 107
    :catchall_63
    move-exception p1

    :try_start_64
    monitor-exit p0
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

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

    .line 199
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

    const-string p1, "turn_field_contract"

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

    .line 200
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

    const-string p1, "turn_method_contract"

    invoke-direct {p0, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private perform(Lcom/local/p5home/HookSessions$Entry;ILcom/local/p5home/HookSessions$Completion;)V
    .registers 12

    .line 113
    iget-object v0, p1, Lcom/local/p5home/HookSessions$Entry;->snapshot:Lcom/local/p5home/HookSessions$Snapshot;

    .line 114
    iget-boolean v1, p1, Lcom/local/p5home/HookSessions$Entry;->ended:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_d

    const-string p1, "TURN_ALREADY_COMPLETED"

    invoke-direct {p0, p3, v2, p1}, Lcom/local/p5home/HookSessions;->report(Lcom/local/p5home/HookSessions$Completion;ZLjava/lang/String;)V

    return-void

    .line 115
    :cond_d
    invoke-direct {p0, v0}, Lcom/local/p5home/HookSessions;->current(Lcom/local/p5home/HookSessions$Snapshot;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1e3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p1, Lcom/local/p5home/HookSessions$Entry;->deadline:J

    cmp-long v1, v4, v6

    if-lez v1, :cond_20

    goto/16 :goto_1e3

    .line 117
    :cond_20
    const/4 v1, 0x2

    if-ne p2, v1, :cond_5d

    .line 118
    :try_start_23
    iget-boolean p2, p1, Lcom/local/p5home/HookSessions$Entry;->prepared:Z

    if-eqz p2, :cond_57

    iget-boolean p2, p1, Lcom/local/p5home/HookSessions$Entry;->external:Z

    if-eqz p2, :cond_57

    iget-object p2, p0, Lcom/local/p5home/HookSessions;->currentState:Ljava/lang/reflect/Field;

    iget-object v1, v0, Lcom/local/p5home/HookSessions$Snapshot;->context:Ljava/lang/Object;

    invoke-virtual {p2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iget-object v1, p0, Lcom/local/p5home/HookSessions;->speaking:Ljava/lang/reflect/Field;

    iget-object v0, v0, Lcom/local/p5home/HookSessions$Snapshot;->context:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq p2, v0, :cond_3e

    goto :goto_57

    .line 119
    :cond_3e
    iget-boolean p2, p1, Lcom/local/p5home/HookSessions$Entry;->started:Z

    if-nez p2, :cond_51

    iput-boolean v2, p1, Lcom/local/p5home/HookSessions$Entry;->started:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/32 v4, 0x11170

    add-long/2addr v0, v4

    iput-wide v0, p1, Lcom/local/p5home/HookSessions$Entry;->deadline:J

    invoke-direct {p0, p1}, Lcom/local/p5home/HookSessions;->scheduleExpiry(Lcom/local/p5home/HookSessions$Entry;)V

    .line 120
    :cond_51
    const-string p1, "TURN_EXTERNAL_SPEAKING"

    invoke-direct {p0, p3, v2, p1}, Lcom/local/p5home/HookSessions;->report(Lcom/local/p5home/HookSessions$Completion;ZLjava/lang/String;)V

    return-void

    .line 118
    :cond_57
    :goto_57
    const-string p1, "TURN_NOT_WAITING"

    invoke-direct {p0, p3, v3, p1}, Lcom/local/p5home/HookSessions;->report(Lcom/local/p5home/HookSessions$Completion;ZLjava/lang/String;)V

    return-void

    .line 122
    :cond_5d
    iget-boolean v4, p1, Lcom/local/p5home/HookSessions$Entry;->prepared:Z

    if-eqz v4, :cond_8a

    .line 123
    if-nez p2, :cond_69

    const-string p1, "TURN_ALREADY_PREPARED"

    invoke-direct {p0, p3, v2, p1}, Lcom/local/p5home/HookSessions;->report(Lcom/local/p5home/HookSessions$Completion;ZLjava/lang/String;)V

    return-void

    .line 124
    :cond_69
    iget-boolean p2, p1, Lcom/local/p5home/HookSessions$Entry;->external:Z

    if-eqz p2, :cond_84

    iget-object p2, p0, Lcom/local/p5home/HookSessions;->currentState:Ljava/lang/reflect/Field;

    iget-object v1, v0, Lcom/local/p5home/HookSessions$Snapshot;->context:Ljava/lang/Object;

    invoke-virtual {p2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iget-object v1, p0, Lcom/local/p5home/HookSessions;->speaking:Ljava/lang/reflect/Field;

    iget-object v0, v0, Lcom/local/p5home/HookSessions$Snapshot;->context:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq p2, v0, :cond_80

    goto :goto_84

    .line 125
    :cond_80
    invoke-direct {p0, p1, p3}, Lcom/local/p5home/HookSessions;->resume(Lcom/local/p5home/HookSessions$Entry;Lcom/local/p5home/HookSessions$Completion;)V

    return-void

    .line 124
    :cond_84
    :goto_84
    const-string p1, "TURN_STAGE_CHANGED"

    invoke-direct {p0, p3, v3, p1}, Lcom/local/p5home/HookSessions;->report(Lcom/local/p5home/HookSessions$Completion;ZLjava/lang/String;)V

    return-void

    .line 129
    :cond_8a
    if-eqz p2, :cond_92

    const-string p1, "TURN_NOT_PREPARED"

    invoke-direct {p0, p3, v3, p1}, Lcom/local/p5home/HookSessions;->report(Lcom/local/p5home/HookSessions$Completion;ZLjava/lang/String;)V

    return-void

    .line 130
    :cond_92
    iget-object p2, p0, Lcom/local/p5home/HookSessions;->continuous:Ljava/lang/reflect/Method;

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p2, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_d3

    .line 131
    iget-object p2, p0, Lcom/local/p5home/HookSessions;->stop:Ljava/lang/reflect/Method;

    iget-object v4, v0, Lcom/local/p5home/HookSessions$Snapshot;->context:Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v5, "normal"

    aput-object v5, v1, v3

    const-string v5, ""

    aput-object v5, v1, v2

    invoke-virtual {p2, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object p2, v0, Lcom/local/p5home/HookSessions$Snapshot;->token:Ljava/lang/String;

    iget-object v1, p0, Lcom/local/p5home/HookSessions;->sessionId:Ljava/lang/reflect/Field;

    iget-object v0, v0, Lcom/local/p5home/HookSessions$Snapshot;->data:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c5

    goto :goto_c6

    :cond_c5
    move v2, v3

    :goto_c6
    iput-boolean v2, p1, Lcom/local/p5home/HookSessions$Entry;->ended:Z

    if-eqz v2, :cond_cd

    const-string p1, "TURN_SINGLE_COMPLETED"

    goto :goto_cf

    :cond_cd
    const-string p1, "TURN_SINGLE_UNCONFIRMED"

    :goto_cf
    invoke-direct {p0, p3, v2, p1}, Lcom/local/p5home/HookSessions;->report(Lcom/local/p5home/HookSessions$Completion;ZLjava/lang/String;)V

    return-void

    .line 134
    :cond_d3
    iget-boolean p2, p1, Lcom/local/p5home/HookSessions$Entry;->external:Z

    if-eqz p2, :cond_e1

    iget-object p2, v0, Lcom/local/p5home/HookSessions$Snapshot;->solo:Ljava/lang/Object;

    if-nez p2, :cond_e1

    const-string p1, "TURN_SOLO_UNSUPPORTED"

    invoke-direct {p0, p3, v3, p1}, Lcom/local/p5home/HookSessions;->report(Lcom/local/p5home/HookSessions$Completion;ZLjava/lang/String;)V

    return-void

    .line 135
    :cond_e1
    iget-object p2, p0, Lcom/local/p5home/HookSessions;->nluProviders:Ljava/lang/reflect/Field;

    iget-object v1, v0, Lcom/local/p5home/HookSessions$Snapshot;->nlu:Ljava/lang/Object;

    invoke-virtual {p2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iget-object v1, p0, Lcom/local/p5home/HookSessions;->nluFusion:Ljava/lang/reflect/Field;

    iget-object v4, v0, Lcom/local/p5home/HookSessions$Snapshot;->nlu:Ljava/lang/Object;

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v4, p0, Lcom/local/p5home/HookSessions;->sdkAsr:Ljava/lang/reflect/Field;

    iget-object v5, v0, Lcom/local/p5home/HookSessions$Snapshot;->sdk:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 136
    instance-of v5, p2, Ljava/util/Map;

    if-eqz v5, :cond_1d4

    move-object v5, p2

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    const/16 v6, 0x8

    if-gt v5, v6, :cond_1d4

    if-eqz v1, :cond_1d4

    if-nez v4, :cond_10e

    goto/16 :goto_1d4

    .line 137
    :cond_10e
    new-instance v4, Ljava/util/ArrayList;

    check-cast p2, Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-direct {v4, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 138
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_11d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_137

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_131

    iget-object v6, p0, Lcom/local/p5home/HookSessions;->provider:Ljava/lang/Class;

    invoke-virtual {v6, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11d

    :cond_131
    const-string p1, "TURN_PROVIDER_UNSUPPORTED"

    invoke-direct {p0, p3, v3, p1}, Lcom/local/p5home/HookSessions;->report(Lcom/local/p5home/HookSessions$Completion;ZLjava/lang/String;)V

    return-void

    .line 142
    :cond_137
    iget-object p2, p0, Lcom/local/p5home/HookSessions;->setNluState:Ljava/lang/reflect/Method;

    iget-object v5, v0, Lcom/local/p5home/HookSessions$Snapshot;->nlu:Ljava/lang/Object;

    new-array v6, v2, [Ljava/lang/Object;

    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {p2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/local/p5home/HookSessions;->clearFusion:Ljava/lang/reflect/Method;

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {p2, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/local/p5home/HookSessions;->fusionSticky:Ljava/lang/reflect/Field;

    invoke-virtual {p2, v1, v3}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    .line 143
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_157
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_179

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget-object v4, p0, Lcom/local/p5home/HookSessions;->dds:Ljava/lang/Class;

    invoke-virtual {v4, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_171

    iget-object v4, p0, Lcom/local/p5home/HookSessions;->clearDds:Ljava/lang/reflect/Method;

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_157

    :cond_171
    iget-object v4, p0, Lcom/local/p5home/HookSessions;->stopProvider:Ljava/lang/reflect/Method;

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_157

    .line 144
    :cond_179
    iput-boolean v2, p1, Lcom/local/p5home/HookSessions$Entry;->prepared:Z

    .line 145
    iget-boolean p2, p1, Lcom/local/p5home/HookSessions$Entry;->external:Z

    if-eqz p2, :cond_1d0

    .line 149
    iget-object p2, p0, Lcom/local/p5home/HookSessions;->transition:Ljava/lang/reflect/Method;

    iget-object v1, v0, Lcom/local/p5home/HookSessions$Snapshot;->context:Ljava/lang/Object;

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/local/p5home/HookSessions;->speaking:Ljava/lang/reflect/Field;

    iget-object v6, v0, Lcom/local/p5home/HookSessions$Snapshot;->context:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-virtual {p2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/32 v6, 0x124f8

    add-long/2addr v4, v6

    iput-wide v4, p1, Lcom/local/p5home/HookSessions$Entry;->deadline:J

    invoke-direct {p0, p1}, Lcom/local/p5home/HookSessions;->scheduleExpiry(Lcom/local/p5home/HookSessions$Entry;)V

    .line 151
    iget-object p2, p0, Lcom/local/p5home/HookSessions;->setSolo:Ljava/lang/reflect/Method;

    iget-object v1, v0, Lcom/local/p5home/HookSessions$Snapshot;->solo:Ljava/lang/Object;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-virtual {p2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    monitor-enter p0
    :try_end_1af
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_1af} :catch_1dc
    .catch Ljava/lang/LinkageError; {:try_start_23 .. :try_end_1af} :catch_1da

    :try_start_1af
    iput-boolean v2, p1, Lcom/local/p5home/HookSessions$Entry;->soloBorrowed:Z

    iput-object p1, p0, Lcom/local/p5home/HookSessions;->soloOwner:Lcom/local/p5home/HookSessions$Entry;

    const-string p1, "SOLO_RELEASE_DISPATCHED"

    iput-object p1, p0, Lcom/local/p5home/HookSessions;->soloCode:Ljava/lang/String;

    monitor-exit p0
    :try_end_1b8
    .catchall {:try_start_1af .. :try_end_1b8} :catchall_1cd

    .line 152
    :try_start_1b8
    iget-object p1, p0, Lcom/local/p5home/HookSessions;->cancelListening:Ljava/lang/reflect/Method;

    iget-object p2, p0, Lcom/local/p5home/HookSessions;->currentState:Ljava/lang/reflect/Field;

    iget-object v0, v0, Lcom/local/p5home/HookSessions$Snapshot;->context:Ljava/lang/Object;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "TURN_EXTERNAL_WAIT"

    invoke-direct {p0, p3, v2, p1}, Lcom/local/p5home/HookSessions;->report(Lcom/local/p5home/HookSessions$Completion;ZLjava/lang/String;)V
    :try_end_1cc
    .catch Ljava/lang/Exception; {:try_start_1b8 .. :try_end_1cc} :catch_1dc
    .catch Ljava/lang/LinkageError; {:try_start_1b8 .. :try_end_1cc} :catch_1da

    goto :goto_1d3

    .line 151
    :catchall_1cd
    move-exception p1

    :try_start_1ce
    monitor-exit p0
    :try_end_1cf
    .catchall {:try_start_1ce .. :try_end_1cf} :catchall_1cd

    :try_start_1cf
    throw p1

    .line 153
    :cond_1d0
    invoke-direct {p0, p1, p3}, Lcom/local/p5home/HookSessions;->resume(Lcom/local/p5home/HookSessions$Entry;Lcom/local/p5home/HookSessions$Completion;)V

    .line 154
    :goto_1d3
    goto :goto_1e2

    .line 136
    :cond_1d4
    :goto_1d4
    const-string p1, "TURN_NLU_UNAVAILABLE"

    invoke-direct {p0, p3, v3, p1}, Lcom/local/p5home/HookSessions;->report(Lcom/local/p5home/HookSessions$Completion;ZLjava/lang/String;)V
    :try_end_1d9
    .catch Ljava/lang/Exception; {:try_start_1cf .. :try_end_1d9} :catch_1dc
    .catch Ljava/lang/LinkageError; {:try_start_1cf .. :try_end_1d9} :catch_1da

    return-void

    .line 154
    :catch_1da
    move-exception p1

    goto :goto_1dd

    :catch_1dc
    move-exception p1

    :goto_1dd
    const-string p1, "TURN_COMPLETE_EXCEPTION"

    invoke-direct {p0, p3, v3, p1}, Lcom/local/p5home/HookSessions;->report(Lcom/local/p5home/HookSessions$Completion;ZLjava/lang/String;)V

    .line 155
    :goto_1e2
    return-void

    .line 115
    :cond_1e3
    :goto_1e3
    const-string p1, "TURN_CHANGED_OR_STALE"

    invoke-direct {p0, p3, v3, p1}, Lcom/local/p5home/HookSessions;->report(Lcom/local/p5home/HookSessions$Completion;ZLjava/lang/String;)V

    return-void
.end method

.method private report(Lcom/local/p5home/HookSessions$Completion;ZLjava/lang/String;)V
    .registers 4

    .line 196
    iput-object p3, p0, Lcom/local/p5home/HookSessions;->lastCode:Ljava/lang/String;

    invoke-interface {p1, p2, p3}, Lcom/local/p5home/HookSessions$Completion;->done(ZLjava/lang/String;)V

    return-void
.end method

.method private declared-synchronized restoreSolo(Lcom/local/p5home/HookSessions$Entry;)V
    .registers 9

    monitor-enter p0

    .line 180
    if-eqz p1, :cond_8d

    :try_start_3
    iget-boolean v0, p1, Lcom/local/p5home/HookSessions$Entry;->soloBorrowed:Z

    if-nez v0, :cond_9

    goto/16 :goto_8d

    .line 181
    :cond_9
    iget-object v0, p1, Lcom/local/p5home/HookSessions$Entry;->snapshot:Lcom/local/p5home/HookSessions$Snapshot;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_8a

    .line 183
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_d
    iget-object v3, p0, Lcom/local/p5home/HookSessions;->sdkTts:Ljava/lang/reflect/Field;

    iget-object v4, v0, Lcom/local/p5home/HookSessions$Snapshot;->sdk:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_19

    move-object v3, v1

    goto :goto_1f

    :cond_19
    iget-object v4, p0, Lcom/local/p5home/HookSessions;->ttsEngine:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 186
    :goto_1f
    invoke-direct {p0}, Lcom/local/p5home/HookSessions;->currentSdk()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, v0, Lcom/local/p5home/HookSessions$Snapshot;->sdk:Ljava/lang/Object;

    if-ne v4, v5, :cond_62

    iget-object v4, v0, Lcom/local/p5home/HookSessions$Snapshot;->token:Ljava/lang/String;

    iget-object v5, p0, Lcom/local/p5home/HookSessions;->sessionId:Ljava/lang/reflect/Field;

    iget-object v6, v0, Lcom/local/p5home/HookSessions$Snapshot;->data:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_62

    iget-object v4, p0, Lcom/local/p5home/HookSessions;->currentState:Ljava/lang/reflect/Field;

    iget-object v5, v0, Lcom/local/p5home/HookSessions$Snapshot;->context:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lcom/local/p5home/HookSessions;->idle:Ljava/lang/reflect/Field;

    iget-object v6, v0, Lcom/local/p5home/HookSessions$Snapshot;->context:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eq v4, v5, :cond_62

    iget-object v4, v0, Lcom/local/p5home/HookSessions$Snapshot;->solo:Ljava/lang/Object;

    if-ne v3, v4, :cond_62

    .line 187
    iget-object v3, p0, Lcom/local/p5home/HookSessions;->setSolo:Ljava/lang/reflect/Method;

    iget-object v0, v0, Lcom/local/p5home/HookSessions$Snapshot;->solo:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v5, v2

    invoke-virtual {v3, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SOLO_RESTORE_DISPATCHED"

    iput-object v0, p0, Lcom/local/p5home/HookSessions;->soloCode:Ljava/lang/String;

    goto :goto_66

    .line 188
    :cond_62
    const-string v0, "SOLO_RESTORE_OWNER_CHANGED"

    iput-object v0, p0, Lcom/local/p5home/HookSessions;->soloCode:Ljava/lang/String;
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_66} :catch_73
    .catch Ljava/lang/LinkageError; {:try_start_d .. :try_end_66} :catch_71
    .catchall {:try_start_d .. :try_end_66} :catchall_6f

    .line 190
    :goto_66
    :try_start_66
    iput-boolean v2, p1, Lcom/local/p5home/HookSessions$Entry;->soloBorrowed:Z

    iget-object v0, p0, Lcom/local/p5home/HookSessions;->soloOwner:Lcom/local/p5home/HookSessions$Entry;

    if-ne v0, p1, :cond_7f

    :goto_6c
    iput-object v1, p0, Lcom/local/p5home/HookSessions;->soloOwner:Lcom/local/p5home/HookSessions$Entry;
    :try_end_6e
    .catchall {:try_start_66 .. :try_end_6e} :catchall_8a

    goto :goto_7f

    :catchall_6f
    move-exception v0

    goto :goto_81

    .line 189
    :catch_71
    move-exception v0

    goto :goto_74

    :catch_73
    move-exception v0

    :goto_74
    :try_start_74
    const-string v0, "SOLO_RESTORE_EXCEPTION"

    iput-object v0, p0, Lcom/local/p5home/HookSessions;->soloCode:Ljava/lang/String;
    :try_end_78
    .catchall {:try_start_74 .. :try_end_78} :catchall_6f

    .line 190
    :try_start_78
    iput-boolean v2, p1, Lcom/local/p5home/HookSessions$Entry;->soloBorrowed:Z

    iget-object v0, p0, Lcom/local/p5home/HookSessions;->soloOwner:Lcom/local/p5home/HookSessions$Entry;
    :try_end_7c
    .catchall {:try_start_78 .. :try_end_7c} :catchall_8a

    if-ne v0, p1, :cond_7f

    goto :goto_6c

    .line 191
    :cond_7f
    :goto_7f
    monitor-exit p0

    return-void

    .line 190
    :goto_81
    :try_start_81
    iput-boolean v2, p1, Lcom/local/p5home/HookSessions$Entry;->soloBorrowed:Z

    iget-object v2, p0, Lcom/local/p5home/HookSessions;->soloOwner:Lcom/local/p5home/HookSessions$Entry;

    if-ne v2, p1, :cond_89

    iput-object v1, p0, Lcom/local/p5home/HookSessions;->soloOwner:Lcom/local/p5home/HookSessions$Entry;

    :cond_89
    throw v0
    :try_end_8a
    .catchall {:try_start_81 .. :try_end_8a} :catchall_8a

    .line 179
    :catchall_8a
    move-exception p1

    monitor-exit p0

    throw p1

    .line 180
    :cond_8d
    :goto_8d
    monitor-exit p0

    return-void
.end method

.method private resume(Lcom/local/p5home/HookSessions$Entry;Lcom/local/p5home/HookSessions$Completion;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 157
    iget-object v0, p1, Lcom/local/p5home/HookSessions$Entry;->snapshot:Lcom/local/p5home/HookSessions$Snapshot;

    invoke-direct {p0, p1}, Lcom/local/p5home/HookSessions;->cancelExpiry(Lcom/local/p5home/HookSessions$Entry;)V

    invoke-direct {p0, p1}, Lcom/local/p5home/HookSessions;->restoreSolo(Lcom/local/p5home/HookSessions$Entry;)V

    .line 158
    iget-object v1, p0, Lcom/local/p5home/HookSessions;->continuous:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_46

    .line 159
    iget-object v1, p0, Lcom/local/p5home/HookSessions;->stop:Ljava/lang/reflect/Method;

    iget-object v2, v0, Lcom/local/p5home/HookSessions$Snapshot;->context:Ljava/lang/Object;

    const-string v4, "normal"

    const-string v5, ""

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/local/p5home/HookSessions$Snapshot;->token:Ljava/lang/String;

    iget-object v2, p0, Lcom/local/p5home/HookSessions;->sessionId:Ljava/lang/reflect/Field;

    iget-object v0, v0, Lcom/local/p5home/HookSessions$Snapshot;->data:Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v3

    iput-boolean v0, p1, Lcom/local/p5home/HookSessions$Entry;->ended:Z

    if-eqz v0, :cond_40

    const-string p1, "TURN_SINGLE_COMPLETED"

    goto :goto_42

    :cond_40
    const-string p1, "TURN_SINGLE_UNCONFIRMED"

    :goto_42
    invoke-direct {p0, p2, v0, p1}, Lcom/local/p5home/HookSessions;->report(Lcom/local/p5home/HookSessions$Completion;ZLjava/lang/String;)V

    return-void

    .line 163
    :cond_46
    iget-object v1, p0, Lcom/local/p5home/HookSessions;->listening:Ljava/lang/reflect/Field;

    iget-object v4, v0, Lcom/local/p5home/HookSessions$Snapshot;->context:Ljava/lang/Object;

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v4, p0, Lcom/local/p5home/HookSessions;->transition:Ljava/lang/reflect/Method;

    iget-object v5, v0, Lcom/local/p5home/HookSessions$Snapshot;->context:Ljava/lang/Object;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v4, p0, Lcom/local/p5home/HookSessions;->listenWindow:Ljava/lang/reflect/Method;

    iget-object v5, p0, Lcom/local/p5home/HookSessions;->sdkAsr:Ljava/lang/reflect/Field;

    iget-object v6, v0, Lcom/local/p5home/HookSessions$Snapshot;->sdk:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    iget-boolean v7, p1, Lcom/local/p5home/HookSessions$Entry;->external:Z

    if-eqz v7, :cond_6c

    const-wide/16 v7, 0x7530

    goto :goto_6e

    :cond_6c
    const-wide/16 v7, 0x1b58

    :goto_6e
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/local/p5home/HookSessions;->startListening:Ljava/lang/reflect/Method;

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v4, v0, Lcom/local/p5home/HookSessions$Snapshot;->token:Ljava/lang/String;

    iget-object v5, p0, Lcom/local/p5home/HookSessions;->sessionId:Ljava/lang/reflect/Field;

    iget-object v6, v0, Lcom/local/p5home/HookSessions$Snapshot;->data:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_99

    iget-object v4, p0, Lcom/local/p5home/HookSessions;->currentState:Ljava/lang/reflect/Field;

    iget-object v0, v0, Lcom/local/p5home/HookSessions$Snapshot;->context:Ljava/lang/Object;

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_99

    move v2, v3

    .line 166
    :cond_99
    iput-boolean v2, p1, Lcom/local/p5home/HookSessions$Entry;->ended:Z

    if-eqz v2, :cond_a0

    const-string p1, "TURN_CONTINUOUS_LISTENING"

    goto :goto_a2

    :cond_a0
    const-string p1, "TURN_CONTINUOUS_UNCONFIRMED"

    :goto_a2
    invoke-direct {p0, p2, v2, p1}, Lcom/local/p5home/HookSessions;->report(Lcom/local/p5home/HookSessions$Completion;ZLjava/lang/String;)V

    .line 167
    return-void
.end method

.method private scheduleExpiry(Lcom/local/p5home/HookSessions$Entry;)V
    .registers 8

    .line 169
    invoke-direct {p0, p1}, Lcom/local/p5home/HookSessions;->cancelExpiry(Lcom/local/p5home/HookSessions$Entry;)V

    new-instance v0, Lcom/local/p5home/HookSessions$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/local/p5home/HookSessions$$ExternalSyntheticLambda3;-><init>(Lcom/local/p5home/HookSessions;Lcom/local/p5home/HookSessions$Entry;)V

    iput-object v0, p1, Lcom/local/p5home/HookSessions$Entry;->expiry:Ljava/lang/Runnable;

    .line 176
    iget-object v0, p1, Lcom/local/p5home/HookSessions$Entry;->snapshot:Lcom/local/p5home/HookSessions$Snapshot;

    iget-object v0, v0, Lcom/local/p5home/HookSessions$Snapshot;->handler:Landroid/os/Handler;

    iget-object v1, p1, Lcom/local/p5home/HookSessions$Entry;->expiry:Ljava/lang/Runnable;

    iget-wide v2, p1, Lcom/local/p5home/HookSessions$Entry;->deadline:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p1

    if-nez p1, :cond_27

    const-string p1, "TURN_WATCHDOG_REJECTED"

    iput-object p1, p0, Lcom/local/p5home/HookSessions;->lastCode:Ljava/lang/String;

    .line 177
    :cond_27
    return-void
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
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 198
    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method accept(Ljava/lang/String;Lcom/local/p5home/HookSessions$Snapshot;)V
    .registers 4

    .line 68
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/local/p5home/HookSessions;->accept(Ljava/lang/String;Lcom/local/p5home/HookSessions$Snapshot;Z)V

    return-void
.end method

.method declared-synchronized accept(Ljava/lang/String;Lcom/local/p5home/HookSessions$Snapshot;Z)V
    .registers 6

    monitor-enter p0

    .line 70
    :try_start_1
    invoke-static {p1}, Lcom/local/p5home/HookPolicy;->safeId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    if-nez p2, :cond_a

    goto :goto_3e

    .line 71
    :cond_a
    iget-object v0, p0, Lcom/local/p5home/HookSessions;->entries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    const/16 v1, 0x20

    if-lt v0, v1, :cond_32

    iget-object v0, p0, Lcom/local/p5home/HookSessions;->entries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/local/p5home/HookSessions$Entry;

    invoke-direct {p0, v0}, Lcom/local/p5home/HookSessions;->cancelExpiry(Lcom/local/p5home/HookSessions$Entry;)V

    iget-boolean v1, v0, Lcom/local/p5home/HookSessions$Entry;->soloBorrowed:Z

    if-eqz v1, :cond_32

    invoke-direct {p0, v0}, Lcom/local/p5home/HookSessions;->restoreSolo(Lcom/local/p5home/HookSessions$Entry;)V

    :cond_32
    iget-object v0, p0, Lcom/local/p5home/HookSessions;->entries:Ljava/util/LinkedHashMap;

    new-instance v1, Lcom/local/p5home/HookSessions$Entry;

    invoke-direct {v1, p2, p3}, Lcom/local/p5home/HookSessions$Entry;-><init>(Lcom/local/p5home/HookSessions$Snapshot;Z)V

    invoke-virtual {v0, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_40

    .line 72
    monitor-exit p0

    return-void

    .line 70
    :cond_3e
    :goto_3e
    monitor-exit p0

    return-void

    .line 69
    :catchall_40
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method begin(Ljava/lang/String;Lcom/local/p5home/HookSessions$Completion;)V
    .registers 4

    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/local/p5home/HookSessions;->enqueue(Ljava/lang/String;ILcom/local/p5home/HookSessions$Completion;)V

    return-void
.end method

.method capture()Lcom/local/p5home/HookSessions$Snapshot;
    .registers 16

    .line 56
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/local/p5home/HookSessions;->currentSdk()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_8

    return-object v0

    :cond_8
    iget-object v1, p0, Lcom/local/p5home/HookSessions;->sdkDm:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_11

    return-object v0

    .line 57
    :cond_11
    iget-object v3, p0, Lcom/local/p5home/HookSessions;->dmContext:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/local/p5home/HookSessions;->contextData:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lcom/local/p5home/HookSessions;->dmHandler:Ljava/lang/reflect/Field;

    invoke-virtual {v5, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v5, p0, Lcom/local/p5home/HookSessions;->sdkNlu:Ljava/lang/reflect/Field;

    invoke-virtual {v5, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iget-object v5, p0, Lcom/local/p5home/HookSessions;->asrResult:Ljava/lang/reflect/Field;

    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iget-object v7, p0, Lcom/local/p5home/HookSessions;->sessionId:Ljava/lang/reflect/Field;

    invoke-virtual {v7, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 58
    instance-of v8, v1, Landroid/os/Handler;

    if-eqz v8, :cond_a5

    if-eqz v6, :cond_a5

    iget-object v8, p0, Lcom/local/p5home/HookSessions;->nluHandler:Ljava/lang/reflect/Field;

    invoke-virtual {v8, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v1, :cond_a5

    if-eqz v5, :cond_a5

    iget-object v8, p0, Lcom/local/p5home/HookSessions;->currentState:Ljava/lang/reflect/Field;

    invoke-virtual {v8, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iget-object v9, p0, Lcom/local/p5home/HookSessions;->idle:Ljava/lang/reflect/Field;

    invoke-virtual {v9, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eq v8, v9, :cond_a5

    instance-of v8, v7, Ljava/lang/String;

    if-eqz v8, :cond_a5

    move-object v8, v7

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_a5

    move-object v8, v7

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x100

    if-le v8, v9, :cond_6c

    goto :goto_a5

    .line 59
    :cond_6c
    iget-object v8, p0, Lcom/local/p5home/HookSessions;->continuous:Ljava/lang/reflect/Method;

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v8, v0, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v8, p0, Lcom/local/p5home/HookSessions;->sdkTts:Ljava/lang/reflect/Field;

    invoke-virtual {v8, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_7e

    move-object v8, v0

    goto :goto_84

    :cond_7e
    iget-object v9, p0, Lcom/local/p5home/HookSessions;->ttsEngine:Ljava/lang/reflect/Field;

    invoke-virtual {v9, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    :goto_84
    iget-object v9, p0, Lcom/local/p5home/HookSessions;->systemTts:Ljava/lang/Class;

    invoke-virtual {v9, v8}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8d

    move-object v8, v0

    .line 61
    :cond_8d
    monitor-enter p0
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8e} :catch_a8
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_8e} :catch_a6

    :try_start_8e
    new-instance v12, Lcom/local/p5home/HookSessions$Snapshot;

    move-object v9, v1

    check-cast v9, Landroid/os/Handler;

    move-object v10, v7

    check-cast v10, Ljava/lang/String;

    iget-wide v13, p0, Lcom/local/p5home/HookSessions;->generation:J

    move-object v1, v12

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-wide v10, v13

    invoke-direct/range {v1 .. v11}, Lcom/local/p5home/HookSessions$Snapshot;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/os/Handler;Ljava/lang/String;J)V

    monitor-exit p0

    return-object v12

    :catchall_a2
    move-exception v1

    monitor-exit p0
    :try_end_a4
    .catchall {:try_start_8e .. :try_end_a4} :catchall_a2

    :try_start_a4
    throw v1
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_a5} :catch_a8
    .catch Ljava/lang/LinkageError; {:try_start_a4 .. :try_end_a5} :catch_a6

    .line 58
    :cond_a5
    :goto_a5
    return-object v0

    .line 62
    :catch_a6
    move-exception v1

    goto :goto_a9

    :catch_a8
    move-exception v1

    :goto_a9
    return-object v0
.end method

.method code()Ljava/lang/String;
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/local/p5home/HookSessions;->lastCode:Ljava/lang/String;

    return-object v0
.end method

.method continuousEnabled()Z
    .registers 5

    .line 53
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/local/p5home/HookSessions;->continuous:Ljava/lang/reflect/Method;

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_13
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_10} :catch_11

    return v0

    :catch_11
    move-exception v1

    goto :goto_14

    :catch_13
    move-exception v1

    :goto_14
    return v0
.end method

.method display(Ljava/lang/String;Ljava/lang/String;Lcom/local/p5home/HookTranscript;Lcom/local/p5home/HookSessions$Completion;)V
    .registers 14

    .line 78
    monitor-enter p0

    .line 79
    :try_start_1
    iget-object v0, p0, Lcom/local/p5home/HookSessions;->entries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/local/p5home/HookSessions$Entry;

    .line 80
    const/4 v6, 0x0

    if-eqz p1, :cond_58

    iget-boolean v0, p1, Lcom/local/p5home/HookSessions$Entry;->external:Z

    if-nez v0, :cond_11

    goto :goto_58

    .line 81
    :cond_11
    iget v0, p1, Lcom/local/p5home/HookSessions$Entry;->queued:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_51

    iget v0, p1, Lcom/local/p5home/HookSessions$Entry;->attempts:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1d

    goto :goto_51

    .line 82
    :cond_1d
    iget v0, p1, Lcom/local/p5home/HookSessions$Entry;->queued:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/local/p5home/HookSessions$Entry;->queued:I

    iget v0, p1, Lcom/local/p5home/HookSessions$Entry;->attempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/local/p5home/HookSessions$Entry;->attempts:I

    .line 83
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_5f

    .line 84
    iget-object v0, p1, Lcom/local/p5home/HookSessions$Entry;->snapshot:Lcom/local/p5home/HookSessions$Snapshot;

    iget-object v7, v0, Lcom/local/p5home/HookSessions$Snapshot;->handler:Landroid/os/Handler;

    new-instance v8, Lcom/local/p5home/HookSessions$$ExternalSyntheticLambda0;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/local/p5home/HookSessions$$ExternalSyntheticLambda0;-><init>(Lcom/local/p5home/HookSessions;Lcom/local/p5home/HookSessions$Entry;Lcom/local/p5home/HookSessions$Completion;Lcom/local/p5home/HookTranscript;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p2

    if-nez p2, :cond_50

    .line 88
    monitor-enter p0

    :try_start_40
    iget p2, p1, Lcom/local/p5home/HookSessions$Entry;->queued:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Lcom/local/p5home/HookSessions$Entry;->queued:I

    monitor-exit p0
    :try_end_47
    .catchall {:try_start_40 .. :try_end_47} :catchall_4d

    const-string p1, "TRANSCRIPT_HANDLER_REJECTED"

    invoke-interface {p4, v6, p1}, Lcom/local/p5home/HookSessions$Completion;->done(ZLjava/lang/String;)V

    goto :goto_50

    :catchall_4d
    move-exception p1

    :try_start_4e
    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw p1

    .line 90
    :cond_50
    :goto_50
    return-void

    .line 81
    :cond_51
    :goto_51
    :try_start_51
    const-string p1, "TRANSCRIPT_CALLBACK_BOUND"

    invoke-interface {p4, v6, p1}, Lcom/local/p5home/HookSessions$Completion;->done(ZLjava/lang/String;)V

    monitor-exit p0

    return-void

    .line 80
    :cond_58
    :goto_58
    const-string p1, "TRANSCRIPT_OWNER_UNKNOWN"

    invoke-interface {p4, v6, p1}, Lcom/local/p5home/HookSessions$Completion;->done(ZLjava/lang/String;)V

    monitor-exit p0

    return-void

    .line 83
    :catchall_5f
    move-exception p1

    monitor-exit p0
    :try_end_61
    .catchall {:try_start_51 .. :try_end_61} :catchall_5f

    throw p1
.end method

.method externalReady(Lcom/local/p5home/HookSessions$Snapshot;)Z
    .registers 3

    .line 67
    if-eqz p1, :cond_e

    invoke-virtual {p0}, Lcom/local/p5home/HookSessions;->continuousEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object p1, p1, Lcom/local/p5home/HookSessions$Snapshot;->solo:Ljava/lang/Object;

    if-eqz p1, :cond_e

    :cond_c
    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method finish(Ljava/lang/String;Lcom/local/p5home/HookSessions$Completion;)V
    .registers 4

    .line 74
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/local/p5home/HookSessions;->enqueue(Ljava/lang/String;ILcom/local/p5home/HookSessions$Completion;)V

    return-void
.end method

.method synthetic lambda$display$0$com-local-g3home-HookSessions(Lcom/local/p5home/HookSessions$Entry;Lcom/local/p5home/HookSessions$Completion;Lcom/local/p5home/HookTranscript;Ljava/lang/String;)V
    .registers 12

    .line 85
    const/4 v0, 0x1

    :try_start_1
    iget-boolean v1, p1, Lcom/local/p5home/HookSessions$Entry;->prepared:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_39

    iget-object v1, p1, Lcom/local/p5home/HookSessions$Entry;->snapshot:Lcom/local/p5home/HookSessions$Snapshot;

    invoke-direct {p0, v1}, Lcom/local/p5home/HookSessions;->current(Lcom/local/p5home/HookSessions$Snapshot;)Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p1, Lcom/local/p5home/HookSessions$Entry;->deadline:J

    cmp-long v1, v3, v5

    if-lez v1, :cond_19

    goto :goto_39

    .line 86
    :cond_19
    if-eqz p3, :cond_22

    invoke-virtual {p3, p4}, Lcom/local/p5home/HookTranscript;->show(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_22

    move v2, v0

    :cond_22
    if-nez p3, :cond_27

    const-string p3, "TRANSCRIPT_UNAVAILABLE"

    goto :goto_2b

    :cond_27
    invoke-virtual {p3}, Lcom/local/p5home/HookTranscript;->code()Ljava/lang/String;

    move-result-object p3

    :goto_2b
    invoke-interface {p2, v2, p3}, Lcom/local/p5home/HookSessions$Completion;->done(ZLjava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_49

    .line 87
    monitor-enter p0

    :try_start_2f
    iget p2, p1, Lcom/local/p5home/HookSessions$Entry;->queued:I

    sub-int/2addr p2, v0

    iput p2, p1, Lcom/local/p5home/HookSessions$Entry;->queued:I

    monitor-exit p0

    return-void

    :catchall_36
    move-exception p1

    monitor-exit p0
    :try_end_38
    .catchall {:try_start_2f .. :try_end_38} :catchall_36

    throw p1

    .line 85
    :cond_39
    :goto_39
    :try_start_39
    const-string p3, "TRANSCRIPT_OWNER_STALE"

    invoke-interface {p2, v2, p3}, Lcom/local/p5home/HookSessions$Completion;->done(ZLjava/lang/String;)V
    :try_end_3e
    .catchall {:try_start_39 .. :try_end_3e} :catchall_49

    .line 87
    monitor-enter p0

    :try_start_3f
    iget p2, p1, Lcom/local/p5home/HookSessions$Entry;->queued:I

    sub-int/2addr p2, v0

    iput p2, p1, Lcom/local/p5home/HookSessions$Entry;->queued:I

    monitor-exit p0

    .line 85
    return-void

    .line 87
    :catchall_46
    move-exception p1

    monitor-exit p0
    :try_end_48
    .catchall {:try_start_3f .. :try_end_48} :catchall_46

    throw p1

    :catchall_49
    move-exception p2

    monitor-enter p0

    :try_start_4b
    iget p3, p1, Lcom/local/p5home/HookSessions$Entry;->queued:I

    sub-int/2addr p3, v0

    iput p3, p1, Lcom/local/p5home/HookSessions$Entry;->queued:I

    monitor-exit p0
    :try_end_51
    .catchall {:try_start_4b .. :try_end_51} :catchall_52

    throw p2

    :catchall_52
    move-exception p1

    :try_start_53
    monitor-exit p0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw p1
.end method

.method synthetic lambda$enqueue$1$com-local-g3home-HookSessions(Lcom/local/p5home/HookSessions$Entry;ILcom/local/p5home/HookSessions$Completion;)V
    .registers 4

    .line 108
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/local/p5home/HookSessions;->perform(Lcom/local/p5home/HookSessions$Entry;ILcom/local/p5home/HookSessions$Completion;)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_f

    monitor-enter p0

    :try_start_4
    iget p2, p1, Lcom/local/p5home/HookSessions$Entry;->queued:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Lcom/local/p5home/HookSessions$Entry;->queued:I

    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_c

    throw p1

    :catchall_f
    move-exception p2

    monitor-enter p0

    :try_start_11
    iget p3, p1, Lcom/local/p5home/HookSessions$Entry;->queued:I

    add-int/lit8 p3, p3, -0x1

    iput p3, p1, Lcom/local/p5home/HookSessions$Entry;->queued:I

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_19

    throw p2

    :catchall_19
    move-exception p1

    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw p1
.end method

.method synthetic lambda$scheduleExpiry$2$com-local-g3home-HookSessions(ZLjava/lang/String;)V
    .registers 3

    .line 173
    if-eqz p1, :cond_4

    const-string p2, "TURN_EXTERNAL_TIMEOUT_RELEASED"

    :cond_4
    iput-object p2, p0, Lcom/local/p5home/HookSessions;->lastCode:Ljava/lang/String;

    return-void
.end method

.method synthetic lambda$scheduleExpiry$3$com-local-g3home-HookSessions(Lcom/local/p5home/HookSessions$Entry;)V
    .registers 5

    .line 170
    iget-boolean v0, p1, Lcom/local/p5home/HookSessions$Entry;->ended:Z

    if-eqz v0, :cond_5

    return-void

    .line 173
    :cond_5
    :try_start_5
    iget-object v0, p1, Lcom/local/p5home/HookSessions$Entry;->snapshot:Lcom/local/p5home/HookSessions$Snapshot;

    invoke-direct {p0, v0}, Lcom/local/p5home/HookSessions;->current(Lcom/local/p5home/HookSessions$Snapshot;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/local/p5home/HookSessions;->currentState:Ljava/lang/reflect/Field;

    iget-object v1, p1, Lcom/local/p5home/HookSessions$Entry;->snapshot:Lcom/local/p5home/HookSessions$Snapshot;

    iget-object v1, v1, Lcom/local/p5home/HookSessions$Snapshot;->context:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/local/p5home/HookSessions;->speaking:Ljava/lang/reflect/Field;

    iget-object v2, p1, Lcom/local/p5home/HookSessions$Entry;->snapshot:Lcom/local/p5home/HookSessions$Snapshot;

    iget-object v2, v2, Lcom/local/p5home/HookSessions$Snapshot;->context:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_2c

    new-instance v0, Lcom/local/p5home/HookSessions$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/local/p5home/HookSessions$$ExternalSyntheticLambda2;-><init>(Lcom/local/p5home/HookSessions;)V

    invoke-direct {p0, p1, v0}, Lcom/local/p5home/HookSessions;->resume(Lcom/local/p5home/HookSessions$Entry;Lcom/local/p5home/HookSessions$Completion;)V

    goto :goto_33

    :cond_2c
    invoke-direct {p0, p1}, Lcom/local/p5home/HookSessions;->restoreSolo(Lcom/local/p5home/HookSessions$Entry;)V

    const-string p1, "TURN_EXTERNAL_TIMEOUT_STALE"

    iput-object p1, p0, Lcom/local/p5home/HookSessions;->lastCode:Ljava/lang/String;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_33} :catch_36
    .catch Ljava/lang/LinkageError; {:try_start_5 .. :try_end_33} :catch_34

    .line 174
    :goto_33
    goto :goto_3b

    :catch_34
    move-exception p1

    goto :goto_37

    :catch_36
    move-exception p1

    :goto_37
    const-string p1, "TURN_EXTERNAL_TIMEOUT_EXCEPTION"

    iput-object p1, p0, Lcom/local/p5home/HookSessions;->lastCode:Ljava/lang/String;

    .line 175
    :goto_3b
    return-void
.end method

.method observe(Ljava/lang/Object;)V
    .registers 3

    .line 45
    if-eqz p1, :cond_16

    :try_start_2
    iget-object v0, p0, Lcom/local/p5home/HookSessions;->state:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/local/p5home/HookSessions;->stateSdk:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_16

    iput-object p1, p0, Lcom/local/p5home/HookSessions;->observedSdk:Ljava/lang/Object;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_14} :catch_15

    goto :goto_16

    :catch_15
    move-exception p1

    :cond_16
    :goto_16
    return-void
.end method

.method declared-synchronized observeAsr(Ljava/lang/Object;)V
    .registers 6

    monitor-enter p0

    .line 47
    :try_start_1
    iget-object v0, p0, Lcom/local/p5home/HookSessions;->lastAsr:Ljava/lang/Object;

    if-eq p1, v0, :cond_2f

    .line 50
    iget-object v0, p0, Lcom/local/p5home/HookSessions;->soloOwner:Lcom/local/p5home/HookSessions$Entry;

    if-eqz v0, :cond_c

    invoke-direct {p0, v0}, Lcom/local/p5home/HookSessions;->restoreSolo(Lcom/local/p5home/HookSessions$Entry;)V

    .line 51
    :cond_c
    iput-object p1, p0, Lcom/local/p5home/HookSessions;->lastAsr:Ljava/lang/Object;

    iget-wide v0, p0, Lcom/local/p5home/HookSessions;->generation:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/local/p5home/HookSessions;->generation:J

    iget-object p1, p0, Lcom/local/p5home/HookSessions;->entries:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/local/p5home/HookSessions$Entry;

    invoke-direct {p0, v0}, Lcom/local/p5home/HookSessions;->cancelExpiry(Lcom/local/p5home/HookSessions$Entry;)V
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_31

    goto :goto_1f

    .line 52
    :cond_2f
    monitor-exit p0

    return-void

    .line 46
    :catchall_31
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method soloCode()Ljava/lang/String;
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/local/p5home/HookSessions;->soloCode:Ljava/lang/String;

    return-object v0
.end method

.method declared-synchronized soloRequestActive()Z
    .registers 2

    monitor-enter p0

    .line 66
    :try_start_1
    iget-object v0, p0, Lcom/local/p5home/HookSessions;->soloOwner:Lcom/local/p5home/HookSessions$Entry;

    if-eqz v0, :cond_b

    iget-boolean v0, v0, Lcom/local/p5home/HookSessions$Entry;->soloBorrowed:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_e

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    monitor-exit p0

    return v0

    .line 66
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method started(Ljava/lang/String;Lcom/local/p5home/HookSessions$Completion;)V
    .registers 4

    .line 75
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0, p2}, Lcom/local/p5home/HookSessions;->enqueue(Ljava/lang/String;ILcom/local/p5home/HookSessions$Completion;)V

    return-void
.end method

.method declared-synchronized suppressNativeResult(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 6

    monitor-enter p0

    .line 92
    const/4 v0, 0x0

    if-eqz p1, :cond_37

    if-nez p2, :cond_7

    goto :goto_37

    .line 95
    :cond_7
    :try_start_7
    iget-object p2, p0, Lcom/local/p5home/HookSessions;->entries:Ljava/util/LinkedHashMap;

    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_11
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/local/p5home/HookSessions$Entry;

    iget-boolean v2, v1, Lcom/local/p5home/HookSessions$Entry;->external:Z

    if-eqz v2, :cond_11

    iget-object v2, v1, Lcom/local/p5home/HookSessions$Entry;->snapshot:Lcom/local/p5home/HookSessions$Snapshot;

    iget-object v2, v2, Lcom/local/p5home/HookSessions$Snapshot;->context:Ljava/lang/Object;

    if-ne v2, p1, :cond_11

    iget-object v1, v1, Lcom/local/p5home/HookSessions$Entry;->snapshot:Lcom/local/p5home/HookSessions$Snapshot;

    invoke-direct {p0, v1}, Lcom/local/p5home/HookSessions;->current(Lcom/local/p5home/HookSessions$Snapshot;)Z

    move-result v1
    :try_end_2d
    .catchall {:try_start_7 .. :try_end_2d} :catchall_34

    if-eqz v1, :cond_11

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 96
    :cond_32
    monitor-exit p0

    return v0

    .line 91
    :catchall_34
    move-exception p1

    monitor-exit p0

    throw p1

    .line 92
    :cond_37
    :goto_37
    monitor-exit p0

    return v0
.end method

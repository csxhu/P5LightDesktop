.class final Lcom/local/p5home/HookBindings;
.super Ljava/lang/Object;
.source "HookBindings.java"


# instance fields
.field private final actorPost:Ljava/lang/reflect/Method;

.field private final actors:Ljava/lang/reflect/Field;

.field final asrEntry:Ljava/lang/reflect/Method;

.field final asrJson:Ljava/lang/reflect/Method;

.field final busEntry:Ljava/lang/reflect/Method;

.field private final reactors:Ljava/lang/reflect/Field;

.field private final resultCtor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private final resultSet:Ljava/lang/reflect/Method;

.field private final singleton:Ljava/lang/reflect/Method;

.field private final supportCtor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private final supportSet:Ljava/lang/reflect/Method;

.field private volatile ttsCode:Ljava/lang/String;

.field private final ttsGetter:Ljava/lang/reflect/Method;

.field private final ttsSpeak:Ljava/lang/reflect/Method;

.field private final widgetCtor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private final widgetSupport:Ljava/lang/reflect/Method;

.field private final widgetTts:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljava/lang/ClassLoader;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "TTS_NOT_CHECKED"

    iput-object v0, p0, Lcom/local/p5home/HookBindings;->ttsCode:Ljava/lang/String;

    .line 19
    const-string v0, "com.xiaopeng.carspeechservice.bean.a.b"

    invoke-static {p1, v0}, Lcom/local/p5home/HookBindings;->type(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 20
    const-string v1, "com.xiaopeng.carspeechservice.b.f"

    invoke-static {p1, v1}, Lcom/local/p5home/HookBindings;->type(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v3

    const-string v4, "a"

    invoke-static {v1, v4, v2, v3}, Lcom/local/p5home/HookBindings;->method(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/local/p5home/HookBindings;->asrEntry:Ljava/lang/reflect/Method;

    .line 21
    const-class v1, Ljava/lang/String;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    const-string v5, "getJsonData"

    invoke-static {v0, v5, v1, v3}, Lcom/local/p5home/HookBindings;->method(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/local/p5home/HookBindings;->asrJson:Ljava/lang/reflect/Method;

    .line 22
    const-string v0, "com.xiaopeng.carspeechservice.e.e"

    invoke-static {p1, v0}, Lcom/local/p5home/HookBindings;->type(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const-class v5, Ljava/lang/String;

    filled-new-array {v3, v5}, [Ljava/lang/Class;

    move-result-object v3

    invoke-static {v0, v4, v1, v3}, Lcom/local/p5home/HookBindings;->method(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/local/p5home/HookBindings;->busEntry:Ljava/lang/reflect/Method;

    .line 23
    const-string v0, "com.xiaopeng.carspeechservice.h.g"

    invoke-static {p1, v0}, Lcom/local/p5home/HookBindings;->type(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "com.xiaopeng.speech.d.i"

    invoke-static {p1, v1}, Lcom/local/p5home/HookBindings;->type(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 24
    new-array v3, v2, [Ljava/lang/Class;

    invoke-static {v0, v4, v0, v3}, Lcom/local/p5home/HookBindings;->method(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcom/local/p5home/HookBindings;->singleton:Ljava/lang/reflect/Method;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-eqz v3, :cond_10d

    .line 25
    const-string v3, "d"

    new-array v5, v2, [Ljava/lang/Class;

    invoke-static {v0, v3, v1, v5}, Lcom/local/p5home/HookBindings;->method(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcom/local/p5home/HookBindings;->ttsGetter:Ljava/lang/reflect/Method;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v5, v6, v7, v8}, [Ljava/lang/Class;

    move-result-object v5

    invoke-static {v1, v4, v3, v5}, Lcom/local/p5home/HookBindings;->method(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/local/p5home/HookBindings;->ttsSpeak:Ljava/lang/reflect/Method;

    .line 26
    const-string v1, "com.xiaopeng.carspeechservice.h.a.b"

    invoke-static {p1, v1}, Lcom/local/p5home/HookBindings;->type(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v3, "com.xiaopeng.speech.actor.Actor"

    invoke-static {p1, v3}, Lcom/local/p5home/HookBindings;->type(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 27
    const-string v5, "e"

    invoke-static {v0, v5, v1}, Lcom/local/p5home/HookBindings;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/local/p5home/HookBindings;->actors:Ljava/lang/reflect/Field;

    const-string v0, "b"

    const-class v5, Ljava/util/Map;

    invoke-static {v1, v0, v5}, Lcom/local/p5home/HookBindings;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/local/p5home/HookBindings;->reactors:Ljava/lang/reflect/Field;

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-static {v1, v4, v0, v3}, Lcom/local/p5home/HookBindings;->method(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/local/p5home/HookBindings;->actorPost:Ljava/lang/reflect/Method;

    .line 28
    const-string v0, "com.xiaopeng.speech.actorapi.ResultActor"

    invoke-static {p1, v0}, Lcom/local/p5home/HookBindings;->type(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "com.xiaopeng.speech.actorapi.SupportActor"

    invoke-static {p1, v1}, Lcom/local/p5home/HookBindings;->type(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v3, "com.xiaopeng.speech.j.f"

    invoke-static {p1, v3}, Lcom/local/p5home/HookBindings;->type(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 29
    const-class v3, Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    iput-object v3, p0, Lcom/local/p5home/HookBindings;->resultCtor:Ljava/lang/reflect/Constructor;

    const-class v3, Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    iput-object v3, p0, Lcom/local/p5home/HookBindings;->supportCtor:Ljava/lang/reflect/Constructor;

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    iput-object v2, p0, Lcom/local/p5home/HookBindings;->widgetCtor:Ljava/lang/reflect/Constructor;

    .line 30
    const-class v2, Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-static {v0, v4, v0, v2}, Lcom/local/p5home/HookBindings;->method(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/local/p5home/HookBindings;->resultSet:Ljava/lang/reflect/Method;

    filled-new-array {p1}, [Ljava/lang/Class;

    move-result-object v0

    invoke-static {v1, v4, v1, v0}, Lcom/local/p5home/HookBindings;->method(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/local/p5home/HookBindings;->supportSet:Ljava/lang/reflect/Method;

    .line 31
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1, v4, p1, v0}, Lcom/local/p5home/HookBindings;->method(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/local/p5home/HookBindings;->widgetSupport:Ljava/lang/reflect/Method;

    const-class v0, Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    const-string v1, "c"

    invoke-static {p1, v1, p1, v0}, Lcom/local/p5home/HookBindings;->method(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/local/p5home/HookBindings;->widgetTts:Ljava/lang/reflect/Method;

    .line 32
    return-void

    .line 24
    :cond_10d
    new-instance p1, Ljava/lang/NoSuchMethodException;

    const-string v0, "singleton"

    invoke-direct {p1, v0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static exceptionCode(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 64
    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x3

    if-ge v0, v1, :cond_11

    instance-of v1, p0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v1, :cond_11

    check-cast p0, Ljava/lang/reflect/InvocationTargetException;

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 65
    :cond_11
    instance-of v0, p0, Ljava/lang/NullPointerException;

    if-eqz v0, :cond_29

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "_UNINITIALIZED"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 66
    :cond_29
    instance-of v0, p0, Ljava/lang/SecurityException;

    if-eqz v0, :cond_41

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "_SECURITY"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 67
    :cond_41
    instance-of v0, p0, Ljava/lang/IllegalAccessException;

    if-eqz v0, :cond_59

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "_ACCESS"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 68
    :cond_59
    instance-of p0, p0, Ljava/lang/LinkageError;

    if-eqz p0, :cond_71

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "_LINKAGE"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 69
    :cond_71
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "_EXCEPTION"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
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

    .line 62
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

    .line 60
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
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 58
    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method actor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/local/p5home/HookBindings;->actors:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/local/p5home/HookBindings;->singleton:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_13

    return v2

    .line 44
    :cond_13
    iget-object v1, p0, Lcom/local/p5home/HookBindings;->reactors:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Ljava/util/Map;

    if-nez v3, :cond_1e

    return v2

    .line 46
    :cond_1e
    const-string v3, "result"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 47
    check-cast v1, Ljava/util/Map;

    const-string p1, "ResultActor"

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_31

    return v2

    .line 48
    :cond_31
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/local/p5home/HookBindings;->resultCtor:Ljava/lang/reflect/Constructor;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p0, Lcom/local/p5home/HookBindings;->resultSet:Ljava/lang/reflect/Method;

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_bd

    .line 49
    :cond_4a
    const-string v3, "support"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c8

    .line 50
    check-cast v1, Ljava/util/Map;

    const-string p1, "SupportActor"

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5d

    return v2

    .line 51
    :cond_5d
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p3, "status"

    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    .line 52
    const-string v1, "1"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_78

    const-string v3, "0"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_86

    :cond_78
    const-string v3, "tts"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_87

    :cond_86
    return v2

    .line 53
    :cond_87
    iget-object p1, p0, Lcom/local/p5home/HookBindings;->widgetCtor:Ljava/lang/reflect/Constructor;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v2, p0, Lcom/local/p5home/HookBindings;->widgetSupport:Ljava/lang/reflect/Method;

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p3, p0, Lcom/local/p5home/HookBindings;->widgetTts:Ljava/lang/reflect/Method;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p3, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object p3, p0, Lcom/local/p5home/HookBindings;->supportCtor:Ljava/lang/reflect/Constructor;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iget-object p3, p0, Lcom/local/p5home/HookBindings;->supportSet:Ljava/lang/reflect/Method;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    move-object p1, p2

    .line 56
    :goto_bd
    iget-object p2, p0, Lcom/local/p5home/HookBindings;->actorPost:Ljava/lang/reflect/Method;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    .line 55
    :cond_c8
    return v2
.end method

.method speak(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/local/p5home/HookBindings;->ttsGetter:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/local/p5home/HookBindings;->singleton:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_66
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_12} :catch_64

    .line 39
    if-nez v0, :cond_19

    const-string p1, "TTS_ENGINE_NULL"

    iput-object p1, p0, Lcom/local/p5home/HookBindings;->ttsCode:Ljava/lang/String;

    return v2

    .line 40
    :cond_19
    :try_start_19
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/local/p5home/HookBindings;->ttsSpeak:Ljava/lang/reflect/Method;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v2

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, p2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "g3-"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v4, p2

    const/4 p1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, p1

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_53

    const-string p2, "TTS_QUEUED"

    goto :goto_55

    :cond_53
    const-string p2, "TTS_RETURNED_FALSE"

    :goto_55
    iput-object p2, p0, Lcom/local/p5home/HookBindings;->ttsCode:Ljava/lang/String;
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_57} :catch_5a
    .catch Ljava/lang/LinkageError; {:try_start_19 .. :try_end_57} :catch_58

    return p1

    :catch_58
    move-exception p1

    goto :goto_5b

    :catch_5a
    move-exception p1

    :goto_5b
    const-string p2, "TTS_SPEAK"

    invoke-static {p1, p2}, Lcom/local/p5home/HookBindings;->exceptionCode(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/local/p5home/HookBindings;->ttsCode:Ljava/lang/String;

    throw p1

    .line 36
    :catch_64
    move-exception p1

    goto :goto_67

    :catch_66
    move-exception p1

    :goto_67
    const-string p2, "TTS_GETTER"

    invoke-static {p1, p2}, Lcom/local/p5home/HookBindings;->exceptionCode(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/local/p5home/HookBindings;->ttsCode:Ljava/lang/String;

    throw p1
.end method

.method ttsCode()Ljava/lang/String;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/local/p5home/HookBindings;->ttsCode:Ljava/lang/String;

    return-object v0
.end method

.method ttsReady()Z
    .registers 5

    .line 33
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/local/p5home/HookBindings;->singleton:Ljava/lang/reflect/Method;

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_11

    const-string v1, "TTS_SERVER_NULL"

    iput-object v1, p0, Lcom/local/p5home/HookBindings;->ttsCode:Ljava/lang/String;

    return v0

    :cond_11
    iget-object v2, p0, Lcom/local/p5home/HookBindings;->ttsGetter:Ljava/lang/reflect/Method;

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1e

    const-string v2, "TTS_ENGINE_NULL"

    goto :goto_20

    :cond_1e
    const-string v2, "TTS_READY"

    :goto_20
    iput-object v2, p0, Lcom/local/p5home/HookBindings;->ttsCode:Ljava/lang/String;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_22} :catch_28
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_22} :catch_26

    if-eqz v1, :cond_25

    const/4 v0, 0x1

    :cond_25
    return v0

    :catch_26
    move-exception v1

    goto :goto_29

    :catch_28
    move-exception v1

    :goto_29
    const-string v2, "TTS_GETTER"

    invoke-static {v1, v2}, Lcom/local/p5home/HookBindings;->exceptionCode(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/local/p5home/HookBindings;->ttsCode:Ljava/lang/String;

    return v0
.end method

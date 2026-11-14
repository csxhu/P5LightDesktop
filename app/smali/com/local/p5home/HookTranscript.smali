.class final Lcom/local/p5home/HookTranscript;
.super Ljava/lang/Object;
.source "HookTranscript.java"


# static fields
.field private static final EVENT:Ljava/lang/String; = "jarvis.context.output"


# instance fields
.field private volatile lastCode:Ljava/lang/String;

.field private final publish:Ljava/lang/reflect/Method;

.field private final singleton:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljava/lang/ClassLoader;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, "TRANSCRIPT_IDLE"

    iput-object v0, p0, Lcom/local/p5home/HookTranscript;->lastCode:Ljava/lang/String;

    .line 13
    const-string v0, "com.xiaopeng.carspeechservice.e.e"

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 14
    const-string v2, "com.xiaopeng.carspeechservice.e.e$a"

    invoke-static {v2, v1, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    .line 15
    new-array v1, v1, [Ljava/lang/Class;

    const-string v2, "a"

    invoke-virtual {p1, v2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/local/p5home/HookTranscript;->singleton:Ljava/lang/reflect/Method;

    .line 16
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    if-ne v1, v0, :cond_5e

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 17
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 18
    const-class p1, Ljava/lang/String;

    const-class v3, Ljava/lang/String;

    filled-new-array {p1, v3}, [Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/local/p5home/HookTranscript;->publish:Ljava/lang/reflect/Method;

    .line 19
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_56

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_56

    .line 20
    invoke-virtual {p1, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 21
    return-void

    .line 19
    :cond_56
    new-instance p1, Ljava/lang/NoSuchMethodException;

    const-string v0, "transcript_publish_contract"

    invoke-direct {p1, v0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_5e
    new-instance p1, Ljava/lang/NoSuchMethodException;

    const-string v0, "transcript_singleton_contract"

    invoke-direct {p1, v0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method code()Ljava/lang/String;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/local/p5home/HookTranscript;->lastCode:Ljava/lang/String;

    return-object v0
.end method

.method show(Ljava/lang/String;)Z
    .registers 7

    .line 23
    const-string v0, "TRANSCRIPT_INPUT_REJECTED"

    const/4 v1, 0x0

    if-eqz p1, :cond_7a

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x4b0

    if-le v2, v3, :cond_18

    goto :goto_7a

    .line 24
    :cond_18
    move v2, v1

    :goto_19
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_39

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ge v3, v4, :cond_2f

    const/16 v4, 0xa

    if-eq v3, v4, :cond_2f

    const/16 v4, 0x9

    if-ne v3, v4, :cond_33

    :cond_2f
    const/16 v4, 0x7f

    if-ne v3, v4, :cond_36

    :cond_33
    iput-object v0, p0, Lcom/local/p5home/HookTranscript;->lastCode:Ljava/lang/String;

    return v1

    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 26
    :cond_39
    :try_start_39
    iget-object v0, p0, Lcom/local/p5home/HookTranscript;->singleton:Ljava/lang/reflect/Method;

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_49

    const-string p1, "TRANSCRIPT_BUS_UNAVAILABLE"

    iput-object p1, p0, Lcom/local/p5home/HookTranscript;->lastCode:Ljava/lang/String;

    return v1

    .line 30
    :cond_49
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "text"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "outputText"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 31
    iget-object v2, p0, Lcom/local/p5home/HookTranscript;->publish:Ljava/lang/reflect/Method;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "jarvis.context.output"

    aput-object v4, v3, v1

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "TRANSCRIPT_DISPATCHED"

    iput-object p1, p0, Lcom/local/p5home/HookTranscript;->lastCode:Ljava/lang/String;
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_71} :catch_74
    .catch Ljava/lang/LinkageError; {:try_start_39 .. :try_end_71} :catch_72

    return v4

    .line 32
    :catch_72
    move-exception p1

    goto :goto_75

    :catch_74
    move-exception p1

    :goto_75
    const-string p1, "TRANSCRIPT_DISPATCH_FAILED"

    iput-object p1, p0, Lcom/local/p5home/HookTranscript;->lastCode:Ljava/lang/String;

    return v1

    .line 23
    :cond_7a
    :goto_7a
    iput-object v0, p0, Lcom/local/p5home/HookTranscript;->lastCode:Ljava/lang/String;

    return v1
.end method

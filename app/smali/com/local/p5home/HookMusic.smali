.class final Lcom/local/p5home/HookMusic;
.super Ljava/lang/Object;
.source "HookMusic.java"


# instance fields
.field private final event:Ljava/lang/reflect/Field;

.field private final eventType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final events:Ljava/lang/reflect/Field;

.field private final params:Ljava/lang/reflect/Field;

.field private final resultType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final session:Ljava/lang/reflect/Field;


# direct methods
.method constructor <init>(Ljava/lang/ClassLoader;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, "com.xiaopeng.carspeechservice.bean.b.g"

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/local/p5home/HookMusic;->resultType:Ljava/lang/Class;

    .line 12
    const-string v2, "com.xiaopeng.carspeechservice.bean.b.g$a"

    invoke-static {v2, v1, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/local/p5home/HookMusic;->eventType:Ljava/lang/Class;

    .line 13
    const-class v1, Ljava/util/List;

    const-string v2, "d"

    invoke-static {v0, v2, v1}, Lcom/local/p5home/HookMusic;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/local/p5home/HookMusic;->events:Ljava/lang/reflect/Field;

    const-class v1, Ljava/lang/String;

    const-string v3, "b"

    invoke-static {v0, v3, v1}, Lcom/local/p5home/HookMusic;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/local/p5home/HookMusic;->session:Ljava/lang/reflect/Field;

    .line 14
    const-class v0, Ljava/lang/String;

    invoke-static {p1, v3, v0}, Lcom/local/p5home/HookMusic;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/local/p5home/HookMusic;->event:Ljava/lang/reflect/Field;

    const-class v0, Lorg/json/JSONObject;

    invoke-static {p1, v2, v0}, Lcom/local/p5home/HookMusic;->field(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object p1

    iput-object p1, p0, Lcom/local/p5home/HookMusic;->params:Ljava/lang/reflect/Field;

    .line 15
    return-void
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

    .line 23
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

    const-string p1, "music_contract"

    invoke-direct {p0, p1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method read(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 17
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/local/p5home/HookMusic;->resultType:Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_68

    if-eqz p2, :cond_68

    iget-object v1, p0, Lcom/local/p5home/HookMusic;->session:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_18

    goto :goto_68

    .line 18
    :cond_18
    iget-object p2, p0, Lcom/local/p5home/HookMusic;->events:Ljava/lang/reflect/Field;

    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/util/List;

    if-eqz p2, :cond_67

    move-object p2, p1

    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_2d

    goto :goto_67

    .line 19
    :cond_2d
    check-cast p1, Ljava/util/List;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p0, Lcom/local/p5home/HookMusic;->eventType:Ljava/lang/Class;

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_66

    const-string p2, "native://music.search"

    iget-object v1, p0, Lcom/local/p5home/HookMusic;->event:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4b

    goto :goto_66

    .line 20
    :cond_4b
    iget-object p2, p0, Lcom/local/p5home/HookMusic;->params:Ljava/lang/reflect/Field;

    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Lorg/json/JSONObject;

    if-nez p2, :cond_56

    return-object v0

    .line 21
    :cond_56
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/local/p5home/MusicPolicy;->song(Ljava/lang/String;)Lcom/local/p5home/MusicPolicy$Song;

    move-result-object p1

    if-nez p1, :cond_61

    goto :goto_65

    :cond_61
    invoke-virtual {p1}, Lcom/local/p5home/MusicPolicy$Song;->json()Ljava/lang/String;

    move-result-object v0
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_65} :catch_6b
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_65} :catch_69

    :goto_65
    return-object v0

    .line 19
    :cond_66
    :goto_66
    return-object v0

    .line 18
    :cond_67
    :goto_67
    return-object v0

    .line 17
    :cond_68
    :goto_68
    return-object v0

    .line 22
    :catch_69
    move-exception p1

    goto :goto_6c

    :catch_6b
    move-exception p1

    :goto_6c
    return-object v0
.end method

.class Lcom/local/p5home/LunaMusicHook$2;
.super Landroid/content/BroadcastReceiver;
.source "LunaMusicHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/local/p5home/LunaMusicHook;->install(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$execute:Ljava/lang/reflect/Method;

.field final synthetic val$manager:Ljava/lang/Class;

.field final synthetic val$ready:Ljava/lang/reflect/Method;

.field final synthetic val$seen:Ljava/util/LinkedHashSet;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/util/LinkedHashSet;Ljava/lang/reflect/Method;)V
    .registers 5

    .line 41
    iput-object p1, p0, Lcom/local/p5home/LunaMusicHook$2;->val$manager:Ljava/lang/Class;

    iput-object p2, p0, Lcom/local/p5home/LunaMusicHook$2;->val$ready:Ljava/lang/reflect/Method;

    iput-object p3, p0, Lcom/local/p5home/LunaMusicHook$2;->val$seen:Ljava/util/LinkedHashSet;

    iput-object p4, p0, Lcom/local/p5home/LunaMusicHook$2;->val$execute:Ljava/lang/reflect/Method;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13

    .line 42
    const-string p1, "APP_SEARCH_MUSIC"

    :try_start_2
    const-string v0, "com.local.p5home.MUSIC_PLAY_LUNA"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_104

    const-string v0, "com.luna.music.car"

    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto/16 :goto_104

    .line 43
    :cond_1c
    iget-object v0, p0, Lcom/local/p5home/LunaMusicHook$2;->val$manager:Ljava/lang/Class;

    const-string v1, "INSTANCE"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 44
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/local/p5home/LunaMusicHook$2;->val$ready:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    const/16 p1, 0x1f7

    invoke-virtual {p0, p1}, Lcom/local/p5home/LunaMusicHook$2;->setResultCode(I)V

    return-void

    .line 45
    :cond_43
    const-string v1, "probe"

    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_51

    const/16 p1, 0xcc

    invoke-virtual {p0, p1}, Lcom/local/p5home/LunaMusicHook$2;->setResultCode(I)V

    return-void

    .line 46
    :cond_51
    const-string v1, "requestId"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-string v2, "queuedAt"

    const-wide/16 v8, -0x7531

    invoke-virtual {p2, v2, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    sub-long/2addr v6, v8

    .line 47
    const-string v2, "data"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/local/p5home/MusicPolicy;->song(Ljava/lang/String;)Lcom/local/p5home/MusicPolicy$Song;

    move-result-object p2

    .line 48
    if-eqz v1, :cond_fe

    const-string v2, "[A-Za-z0-9-]{1,100}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_fe

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-ltz v2, :cond_fe

    const-wide/16 v8, 0x3a98

    cmp-long v2, v6, v8

    if-gtz v2, :cond_fe

    if-nez p2, :cond_88

    goto/16 :goto_fe

    .line 49
    :cond_88
    iget-object v2, p0, Lcom/local/p5home/LunaMusicHook$2;->val$seen:Ljava/util/LinkedHashSet;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/16 v4, 0xca

    if-eqz v2, :cond_96

    invoke-virtual {p0, v4}, Lcom/local/p5home/LunaMusicHook$2;->setResultCode(I)V

    return-void

    .line 50
    :cond_96
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iget-object v6, p2, Lcom/local/p5home/MusicPolicy$Song;->title:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_a8

    iget-object v6, p2, Lcom/local/p5home/MusicPolicy$Song;->title:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_a8
    iget-object v6, p2, Lcom/local/p5home/MusicPolicy$Song;->artist:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_b5

    iget-object p2, p2, Lcom/local/p5home/MusicPolicy$Song;->artist:Ljava/lang/String;

    invoke-virtual {v2, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 51
    :cond_b5
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "type"

    const-string v7, "songs"

    invoke-virtual {p2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v6, "keyword"

    invoke-virtual {p2, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p2

    .line 52
    iget-object v2, p0, Lcom/local/p5home/LunaMusicHook$2;->val$execute:Ljava/lang/reflect/Method;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v5

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v3

    invoke-virtual {v2, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/local/p5home/LunaMusicHook$2;->val$seen:Ljava/util/LinkedHashSet;

    invoke-virtual {p1, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :goto_dd
    iget-object p1, p0, Lcom/local/p5home/LunaMusicHook$2;->val$seen:Ljava/util/LinkedHashSet;

    invoke-virtual {p1}, Ljava/util/LinkedHashSet;->size()I

    move-result p1

    const/16 p2, 0x20

    if-le p1, p2, :cond_f5

    iget-object p1, p0, Lcom/local/p5home/LunaMusicHook$2;->val$seen:Ljava/util/LinkedHashSet;

    invoke-virtual {p1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_dd

    :cond_f5
    invoke-virtual {p0, v4}, Lcom/local/p5home/LunaMusicHook$2;->setResultCode(I)V

    .line 53
    const-string p1, "MUSIC_LUNA_PLAY_REQUESTED"

    invoke-static {p1}, Lcom/local/p5home/HookLog;->write(Ljava/lang/String;)V

    .line 54
    goto :goto_112

    .line 48
    :cond_fe
    :goto_fe
    const/16 p1, 0x190

    invoke-virtual {p0, p1}, Lcom/local/p5home/LunaMusicHook$2;->setResultCode(I)V
    :try_end_103
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_103} :catch_107
    .catch Ljava/lang/LinkageError; {:try_start_2 .. :try_end_103} :catch_105

    return-void

    .line 42
    :cond_104
    :goto_104
    return-void

    .line 54
    :catch_105
    move-exception p1

    goto :goto_108

    :catch_107
    move-exception p1

    :goto_108
    const/16 p1, 0x1f4

    invoke-virtual {p0, p1}, Lcom/local/p5home/LunaMusicHook$2;->setResultCode(I)V

    const-string p1, "MUSIC_LUNA_PLAY_FAILED"

    invoke-static {p1}, Lcom/local/p5home/HookLog;->write(Ljava/lang/String;)V

    :goto_112
    return-void
.end method

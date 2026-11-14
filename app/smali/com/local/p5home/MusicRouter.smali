.class final Lcom/local/p5home/MusicRouter;
.super Ljava/lang/Object;
.source "MusicRouter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/local/p5home/MusicRouter$Provider;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 3

    .line 13
    invoke-static {p0, p1, p2}, Lcom/local/p5home/MusicRouter;->resolve(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method static available(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    .line 21
    invoke-static {p0, p1}, Lcom/local/p5home/MusicRouter;->provider(Landroid/content/Context;Ljava/lang/String;)Lcom/local/p5home/MusicRouter$Provider;

    move-result-object v0

    if-eqz v0, :cond_22

    const-string v1, "system"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    iget-boolean v0, v0, Lcom/local/p5home/MusicRouter$Provider;->supported:Z

    if-eqz v0, :cond_22

    const-string v0, "qishui"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    invoke-static {p0}, Lcom/local/p5home/MusicRouter;->lunaReady(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_22

    :cond_20
    const/4 p0, 0x1

    goto :goto_23

    :cond_22
    const/4 p0, 0x0

    :goto_23
    return p0
.end method

.method static intent(Ljava/lang/String;Ljava/lang/String;Lcom/local/p5home/MusicPolicy$Song;)Landroid/content/Intent;
    .registers 5

    const-string v0, "qishui_phone"
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-eqz v0, :phone_intent_next
    invoke-static {p2}, Lcom/local/p5home/PhoneMusicRequest;->intent(Ljava/lang/Object;)Landroid/content/Intent;
    move-result-object v0
    return-object v0
    :phone_intent_next

    .line 32
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 33
    const-string v1, "qq"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    new-instance p0, Landroid/content/ComponentName;

    const-string v1, "com.tencent.qqmusiccar.app.activity.DispacherActivityForThird"

    invoke-direct {p0, p1, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "com.tencent.qqmusiccar.action"

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "action"

    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p2}, Lcom/local/p5home/MusicPolicy$Song;->query()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p1, p2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    const-string p2, "search_key"

    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "m1"

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    .line 34
    :cond_49
    const-string v1, "netease"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_81

    new-instance p0, Landroid/content/ComponentName;

    const-string v1, "com.netease.cloudmusic.audio.launch.IotRedirectActivity"

    invoke-direct {p0, p1, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "android.intent.action.VIEW"

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "voice://netease.audioplayer/player"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v0, "search"

    invoke-virtual {p2}, Lcom/local/p5home/MusicPolicy$Song;->query()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    const-string p2, "voice/audio"

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    .line 35
    :cond_81
    const-string v1, "kugou"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_be

    const-string p0, "android.media.action.MEDIA_PLAY_FROM_SEARCH"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "query"

    invoke-virtual {p2}, Lcom/local/p5home/MusicPolicy$Song;->query()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "android.intent.extra.title"

    iget-object v0, p2, Lcom/local/p5home/MusicPolicy$Song;->title:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "android.intent.extra.artist"

    iget-object v0, p2, Lcom/local/p5home/MusicPolicy$Song;->artist:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "android.intent.extra.album"

    iget-object p2, p2, Lcom/local/p5home/MusicPolicy$Song;->album:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "android.intent.extra.focus"

    const-string p2, "vnd.android.cursor.item/audio"

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    .line 36
    :cond_be
    const-string p2, "qishui"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f4

    const-string p2, "com.luna.music"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d6

    new-instance p0, Landroid/content/ComponentName;

    const-string p2, "com.luna.biz.main.main.MainActivity"

    invoke-direct {p0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_dd

    :cond_d6
    new-instance p0, Landroid/content/ComponentName;

    const-string p2, "com.luna.music.car.app.framework.ui.MainActivity"

    invoke-direct {p0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_dd
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "android.intent.action.MAIN"

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "android.intent.category.LAUNCHER"

    invoke-virtual {p0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const/high16 p1, 0x20000000

    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    .line 37
    :cond_f4
    const/4 p0, 0x0

    return-object p0
.end method

.method static label(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 20
    invoke-static {p0, p1}, Lcom/local/p5home/MusicRouter;->provider(Landroid/content/Context;Ljava/lang/String;)Lcom/local/p5home/MusicRouter$Provider;

    move-result-object p0

    if-nez p0, :cond_9

    const-string p0, "\u8ddf\u968f\u539f\u8f66\u97f3\u4e50"

    goto :goto_b

    :cond_9
    iget-object p0, p0, Lcom/local/p5home/MusicRouter$Provider;->label:Ljava/lang/String;

    :goto_b
    return-object p0
.end method

.method static synthetic lambda$play$0()Z
    .registers 1

    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method private static lunaPlay(Landroid/content/Context;Lcom/local/p5home/MusicPolicy$Song;Ljava/util/function/BooleanSupplier;)V
    .registers 19

    .line 56
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_a6

    .line 57
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 58
    const/4 v3, 0x0

    :goto_17
    const/4 v4, 0x6

    if-ge v3, v4, :cond_9e

    .line 59
    invoke-interface/range {p2 .. p2}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v4

    if-eqz v4, :cond_96

    .line 60
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v5, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 61
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.local.p5home.MUSIC_PLAY_LUNA"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "com.luna.music.car"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "data"

    invoke-virtual/range {p1 .. p1}, Lcom/local/p5home/MusicPolicy$Song;->json()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "requestId"

    invoke-virtual {v6, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "queuedAt"

    invoke-virtual {v6, v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v9

    .line 62
    const/4 v10, 0x0

    new-instance v11, Lcom/local/p5home/MusicRouter$1;

    invoke-direct {v11, v5, v4}, Lcom/local/p5home/MusicRouter$1;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;)V

    new-instance v12, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v12, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v8, p0

    invoke-virtual/range {v8 .. v15}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 63
    :try_start_65
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x4b0

    invoke-virtual {v4, v7, v8, v6}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    const/16 v6, 0xca

    if-ne v4, v6, :cond_75

    return-void

    :cond_75
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    const/16 v6, 0x190

    if-eq v4, v6, :cond_9e

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    const/16 v5, 0x1f4

    if-eq v4, v5, :cond_9e

    const-wide/16 v4, 0x258

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8a
    .catch Ljava/lang/InterruptedException; {:try_start_65 .. :try_end_8a} :catch_8d

    .line 58
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 63
    :catch_8d
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_9e

    .line 59
    :cond_96
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\u70b9\u6b4c\u8bf7\u6c42\u5df2\u53d6\u6d88"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_9e
    :goto_9e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\u6c7d\u6c34\u70b9\u6b4c\u6865\u63a5\u672a\u5c31\u7eea\uff0c\u8bf7\u5728 LSPosed \u52fe\u9009\u6c7d\u6c34\u97f3\u4e50\u4f5c\u7528\u57df\u5e76\u91cd\u542f\u8be5\u5e94\u7528"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_a6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\u97f3\u4e50\u8bf7\u6c42\u9700\u8981\u540e\u53f0\u5904\u7406"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static lunaReady(Landroid/content/Context;)Z
    .registers 10

    .line 23
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.luna.music.car"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 24
    invoke-static {p0}, Lcom/local/p5home/ConfigStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 25
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_4e

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v2, :cond_4e

    invoke-virtual {v1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_4e

    const-string v2, "lunaBridgeVerifiedCode"

    .line 26
    const-wide/16 v3, -0x1

    invoke-interface {p0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-virtual {v1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v7

    cmp-long v2, v5, v7

    if-nez v2, :cond_4e

    const-string v2, "lunaBridgeVerifiedUpdate"

    .line 27
    invoke-interface {p0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iget-wide v4, v1, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4e

    const-string v2, "lunaBridgeVerifiedUid"

    .line 28
    const/4 v3, -0x1

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4a} :catch_50

    if-ne p0, v1, :cond_4e

    const/4 v0, 0x1

    goto :goto_4f

    :cond_4e
    nop

    .line 25
    :goto_4f
    return v0

    .line 29
    :catch_50
    move-exception p0

    return v0
.end method

.method static packageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 30
    invoke-static {p0, p1}, Lcom/local/p5home/MusicRouter;->provider(Landroid/content/Context;Ljava/lang/String;)Lcom/local/p5home/MusicRouter$Provider;

    move-result-object p0

    if-nez p0, :cond_9

    const-string p0, ""

    goto :goto_b

    :cond_9
    iget-object p0, p0, Lcom/local/p5home/MusicRouter$Provider;->pkg:Ljava/lang/String;

    :goto_b
    return-object p0
.end method

.method static play(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 45
    new-instance v0, Lcom/local/p5home/MusicRouter$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/local/p5home/MusicRouter$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lcom/local/p5home/MusicRouter;->play(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/BooleanSupplier;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static play(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/function/BooleanSupplier;)Ljava/lang/String;
    .registers 8

    .line 47
    invoke-interface {p3}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 48
    invoke-static {p2}, Lcom/local/p5home/MusicPolicy;->song(Ljava/lang/String;)Lcom/local/p5home/MusicPolicy$Song;

    move-result-object p2

    if-eqz p2, :cond_84

    .line 49
    invoke-static {p0, p1}, Lcom/local/p5home/MusicRouter;->provider(Landroid/content/Context;Ljava/lang/String;)Lcom/local/p5home/MusicRouter$Provider;

    move-result-object v0

    if-eqz v0, :cond_7c

    iget-boolean v1, v0, Lcom/local/p5home/MusicRouter$Provider;->supported:Z

    if-eqz v1, :cond_7c

    const-string v1, "system"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7c

    .line 50
    iget-object v1, v0, Lcom/local/p5home/MusicRouter$Provider;->pkg:Ljava/lang/String;

    invoke-static {p0, p1, v1}, Lcom/local/p5home/MusicRouter;->resolve(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_74

    .line 51
    iget-object v2, v0, Lcom/local/p5home/MusicRouter$Provider;->pkg:Ljava/lang/String;

    invoke-static {p1, v2, p2}, Lcom/local/p5home/MusicRouter;->intent(Ljava/lang/String;Ljava/lang/String;Lcom/local/p5home/MusicPolicy$Song;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 52
    const-string v1, "qishui"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_58

    iget-object v1, v0, Lcom/local/p5home/MusicRouter$Provider;->pkg:Ljava/lang/String;

    const-string v2, "com.luna.music.car"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    invoke-static {p0, p2, p3}, Lcom/local/p5home/MusicRouter;->lunaPlay(Landroid/content/Context;Lcom/local/p5home/MusicPolicy$Song;Ljava/util/function/BooleanSupplier;)V

    goto :goto_58

    :cond_55
    const-string p0, "\u5df2\u6253\u5f00\u6c7d\u6c34\u97f3\u4e50\u624b\u673a\u7248\uff1b\u8bf7\u5728\u5e94\u7528\u5185\u624b\u52a8\u9009\u6b4c"

    return-object p0

    .line 53
    :cond_58
    :goto_58
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "\u5df2\u5411"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object p1, v0, Lcom/local/p5home/MusicRouter$Provider;->label:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\u53d1\u9001\u64ad\u653e\u8bf7\u6c42\uff1b\u5b9e\u9645\u64ad\u653e\u53d6\u51b3\u4e8e\u5e94\u7528\u767b\u5f55\u3001\u7f51\u7edc\u548c\u6b4c\u66f2\u6743\u9650"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 50
    :cond_74
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "\u97f3\u4e50\u70b9\u6b4c\u5165\u53e3\u4e0d\u53ef\u7528"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 49
    :cond_7c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "\u97f3\u4e50\u5e94\u7528\u672a\u5b89\u88c5\u6216\u5f53\u524d\u7248\u672c\u4e0d\u652f\u6301\u76f4\u63a5\u70b9\u6b4c"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 48
    :cond_84
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u6b4c\u66f2\u4fe1\u606f\u65e0\u6548"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 47
    :cond_8c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "\u70b9\u6b4c\u8bf7\u6c42\u5df2\u53d6\u6d88"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static provider(Landroid/content/Context;Ljava/lang/String;)Lcom/local/p5home/MusicRouter$Provider;
    .registers 4

    .line 19
    invoke-static {p0}, Lcom/local/p5home/MusicRouter;->providers(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/local/p5home/MusicRouter$Provider;

    iget-object v1, v0, Lcom/local/p5home/MusicRouter$Provider;->id:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    return-object v0

    :cond_1d
    const/4 p0, 0x0

    return-object p0
.end method

.method static providers(Landroid/content/Context;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/local/p5home/MusicRouter$Provider;",
            ">;"
        }
    .end annotation

    .line 18
    move-object v9, p0
    new-instance v0, Lcom/local/p5home/MusicRouter$Provider;

    const-string v1, "com.xiaopeng.musicradio"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "system"

    const-string v3, "\u8ddf\u968f\u539f\u8f66\u97f3\u4e50"

    invoke-direct {v0, p0, v2, v3, v1}, Lcom/local/p5home/MusicRouter$Provider;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    new-instance v1, Lcom/local/p5home/MusicRouter$Provider;

    const-string v2, "com.netease.cloudmusic.iot"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "netease"

    const-string v4, "\u7f51\u6613\u4e91\u97f3\u4e50"

    invoke-direct {v1, p0, v3, v4, v2}, Lcom/local/p5home/MusicRouter$Provider;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    new-instance v2, Lcom/local/p5home/MusicRouter$Provider;

    const-string v3, "com.tencent.qqmusiccar"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "qq"

    const-string v5, "QQ\u97f3\u4e50"

    invoke-direct {v2, p0, v4, v5, v3}, Lcom/local/p5home/MusicRouter$Provider;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    new-instance v3, Lcom/local/p5home/MusicRouter$Provider;

    const-string v4, "com.kugou.android.auto"

    const-string v5, "com.kugou.android"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "kugou"

    const-string v6, "\u9177\u72d7\u97f3\u4e50"

    invoke-direct {v3, p0, v5, v6, v4}, Lcom/local/p5home/MusicRouter$Provider;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    new-instance v4, Lcom/local/p5home/MusicRouter$Provider;

    const-string v5, "com.luna.music.car"

    const-string v8, "com.luna.music"

    filled-new-array {v5, v8}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "qishui"

    const-string v7, "\u6c7d\u6c34\u97f3\u4e50"

    invoke-direct {v4, p0, v6, v7, v5}, Lcom/local/p5home/MusicRouter$Provider;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/local/p5home/MusicRouter$Provider;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {v9, p0}, Lcom/local/p5home/PhoneMusicRequest;->addProvider(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    move-result-object p0

    return-object p0
.end method

.method private static resolve(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 7

    .line 40
    const-string v0, ""

    const/4 v1, 0x0

    :try_start_3
    new-instance v2, Lcom/local/p5home/MusicPolicy$Song;

    const-string v3, "test"

    invoke-direct {v2, v3, v0, v0}, Lcom/local/p5home/MusicPolicy$Song;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2, v2}, Lcom/local/p5home/MusicRouter;->intent(Ljava/lang/String;Ljava/lang/String;Lcom/local/p5home/MusicPolicy$Song;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_11

    return-object v1

    .line 41
    :cond_11
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    goto :goto_34

    :cond_25
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v2, 0x10000

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-nez p1, :cond_32

    return-object v1

    :cond_32
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 42
    :goto_34
    if-eqz p1, :cond_5d

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5d

    iget-boolean p2, p1, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz p2, :cond_5d

    iget-boolean p2, p1, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-eqz p2, :cond_5d

    iget-object p2, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    if-eqz p2, :cond_53

    iget-object p2, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {p0, p2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_53

    goto :goto_5d

    .line 43
    :cond_53
    new-instance p0, Landroid/content/ComponentName;

    iget-object p2, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p0, p2, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_5c} :catch_5e

    return-object p0

    .line 42
    :cond_5d
    :goto_5d
    return-object v1

    .line 44
    :catch_5e
    move-exception p0

    return-object v1
.end method

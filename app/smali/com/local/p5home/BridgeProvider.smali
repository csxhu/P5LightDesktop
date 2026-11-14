.class public final Lcom/local/p5home/BridgeProvider;
.super Landroid/content/ContentProvider;
.source "BridgeProvider.java"


# static fields
.field private static final CAR:Ljava/lang/String; = "com.xiaopeng.carspeechservice"

.field private static final NAV_ADMISSION:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 13
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/local/p5home/BridgeProvider;->NAV_ADMISSION:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private carCaller()Z
    .registers 3

    .line 15
    invoke-virtual {p0}, Lcom/local/p5home/BridgeProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/local/p5home/OemSpeechIdentity;->trusted(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method private ownCaller()Z
    .registers 3

    .line 16
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0}, Lcom/local/p5home/BridgeProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method private refused(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 5

    .line 17
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "accepted"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 20

    .line 19
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    invoke-direct/range {p0 .. p0}, Lcom/local/p5home/BridgeProvider;->carCaller()Z

    move-result v2

    invoke-direct/range {p0 .. p0}, Lcom/local/p5home/BridgeProvider;->ownCaller()Z

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/local/p5home/BridgeProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 20
    const-string v5, "music_ready"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v5, :cond_a5

    .line 21
    :try_start_1c
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string v2, "com.luna.music.car"

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 22
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_96

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v5, v5, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v5, :cond_96

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v5, v0, :cond_96

    invoke-virtual {v3}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v10

    cmp-long v5, v10, v6

    if-lez v5, :cond_96

    .line 23
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_90

    array-length v6, v5

    if-ne v6, v8, :cond_90

    aget-object v5, v5, v9

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_90

    .line 24
    invoke-static {v4}, Lcom/local/p5home/ConfigStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v5, "lunaBridgeVerifiedVersion"

    invoke-interface {v2, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v5, "lunaBridgeVerifiedCode"

    invoke-virtual {v3}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v6

    invoke-interface {v2, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v5, "lunaBridgeVerifiedUpdate"

    iget-wide v6, v3, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-interface {v2, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "lunaBridgeVerifiedUid"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/local/p5home/ConfigStore;->EVENTS:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0

    .line 23
    :cond_90
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0}, Ljava/lang/SecurityException;-><init>()V

    throw v0

    .line 22
    :cond_96
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0}, Ljava/lang/SecurityException;-><init>()V

    throw v0
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_9c} :catch_9c

    .line 25
    :catch_9c
    move-exception v0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Verified music bridge required"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_a5
    const-string v5, "status"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_181

    if-nez v2, :cond_b7

    if-nez v3, :cond_b7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    if-nez v5, :cond_181

    .line 28
    :cond_b7
    invoke-static {v4}, Lcom/local/p5home/BridgeStore;->status(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v4}, Lcom/local/p5home/ConfigStore;->load(Landroid/content/Context;)Lcom/local/p5home/AppConfig;

    move-result-object v5

    .line 29
    const-string v6, "voiceEnabled"

    iget-boolean v7, v5, Lcom/local/p5home/AppConfig;->voiceEnabled:Z

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v6, "doubaoEnabled"

    iget-boolean v7, v5, Lcom/local/p5home/AppConfig;->doubaoEnabled:Z

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v6, "autoLaunchNav"

    iget-boolean v7, v5, Lcom/local/p5home/AppConfig;->autoLaunchNav:Z

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v6, "navPackage"

    iget-object v7, v5, Lcom/local/p5home/AppConfig;->navPackage:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "musicProvider"

    iget-object v7, v5, Lcom/local/p5home/AppConfig;->musicProvider:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "lunaBridgeVerified"

    invoke-static {v4}, Lcom/local/p5home/MusicRouter;->lunaReady(Landroid/content/Context;)Z

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 30
    const-string v6, "apiConfigured"

    invoke-static {v4}, Lcom/local/p5home/ConfigStore;->hasApiKey(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_101

    iget-object v7, v5, Lcom/local/p5home/AppConfig;->modelId:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_101

    move v7, v8

    goto :goto_102

    :cond_101
    move v7, v9

    :goto_102
    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v6, "apiProtocol"

    iget-object v7, v5, Lcom/local/p5home/AppConfig;->apiProtocol:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "modelWakeEnabled"

    iget-boolean v7, v5, Lcom/local/p5home/AppConfig;->modelWakeEnabled:Z

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 31
    iget-object v5, v5, Lcom/local/p5home/AppConfig;->navPackage:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/local/p5home/Navigator;->navigationState(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "navSessionStage"

    const-string v6, "sessionStage"

    const-string v7, "idle"

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "navPoiCount"

    const-string v6, "poiCount"

    invoke-virtual {v4, v6, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "navRouteCount"

    const-string v6, "routeCount"

    invoke-virtual {v4, v6, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "navObserved"

    const-string v6, "observed"

    invoke-virtual {v4, v6, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v5, "navSenderAuthenticated"

    const-string v6, "senderAuthenticated"

    invoke-virtual {v4, v6, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v5, "protocolState"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_165

    const-string v5, "navProtocolState"

    const-string v6, "protocolState"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 32
    :cond_165
    if-nez v2, :cond_180

    if-nez v3, :cond_180

    const-string v2, "answerPresent"

    const-string v3, "lastAnswer"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v8

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "lastAnswer"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_180
    return-object v0

    .line 34
    :cond_181
    if-nez v2, :cond_18e

    if-eqz v3, :cond_186

    goto :goto_18e

    :cond_186
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "G3 trusted caller required"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18e
    :goto_18e
    if-nez p3, :cond_196

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    goto :goto_198

    :cond_196
    move-object/from16 v3, p3

    .line 35
    :goto_198
    const-string v5, "config"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_272

    .line 36
    invoke-static {v4}, Lcom/local/p5home/ConfigStore;->load(Landroid/content/Context;)Lcom/local/p5home/AppConfig;

    move-result-object v0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "schema"

    invoke-virtual {v2, v3, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "appVersion"

    invoke-virtual {v2, v3, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 37
    const-string v3, "voiceEnabled"

    iget-boolean v5, v0, Lcom/local/p5home/AppConfig;->voiceEnabled:Z

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "doubaoEnabled"

    iget-boolean v5, v0, Lcom/local/p5home/AppConfig;->doubaoEnabled:Z

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "prefix"

    iget-object v5, v0, Lcom/local/p5home/AppConfig;->prefix:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "navPackage"

    iget-object v5, v0, Lcom/local/p5home/AppConfig;->navPackage:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "musicProvider"

    iget-object v5, v0, Lcom/local/p5home/AppConfig;->musicProvider:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "lunaBridgeVerified"

    invoke-static {v4}, Lcom/local/p5home/MusicRouter;->lunaReady(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 38
    const-string v3, "hasApiConfig"

    invoke-static {v4}, Lcom/local/p5home/ConfigStore;->hasApiKey(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1f4

    iget-object v5, v0, Lcom/local/p5home/AppConfig;->modelId:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1f4

    goto :goto_1f5

    :cond_1f4
    move v8, v9

    :goto_1f5
    invoke-virtual {v2, v3, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "speechOutputReady"

    invoke-static {v4}, Lcom/local/p5home/SpeechOutput;->get(Landroid/content/Context;)Lcom/local/p5home/SpeechOutput;

    move-result-object v5

    invoke-virtual {v5}, Lcom/local/p5home/SpeechOutput;->ready()Z

    move-result v5

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 39
    const-string v3, "musicAvailable"

    iget-object v5, v0, Lcom/local/p5home/AppConfig;->musicProvider:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/local/p5home/MusicRouter;->available(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "modelWakeEnabled"

    iget-boolean v5, v0, Lcom/local/p5home/AppConfig;->modelWakeEnabled:Z

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "modelWakeWords"

    iget-object v5, v0, Lcom/local/p5home/AppConfig;->modelWakeWords:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "customWakeUseNative"

    iget-boolean v5, v0, Lcom/local/p5home/AppConfig;->customWakeUseNative:Z

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 40
    iget-object v3, v0, Lcom/local/p5home/AppConfig;->navPackage:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/local/p5home/Navigator;->navigationState(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 41
    const-string v5, "navStage"

    const-string v6, "sessionStage"

    const-string v7, "idle"

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "navEpoch"

    const-string v6, "sessionEpoch"

    const-wide/16 v7, -0x1

    invoke-virtual {v3, v6, v7, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 42
    const-string v5, "navAvailable"

    iget-object v0, v0, Lcom/local/p5home/AppConfig;->navPackage:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/local/p5home/Navigator;->available(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v2, v5, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "oemMapAvailable"

    const-string v5, "com.xiaopeng.montecarlo"

    invoke-static {v4, v5}, Lcom/local/p5home/Navigator;->available(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 43
    const-string v0, "navPoiCount"

    const-string v4, "poiCount"

    invoke-virtual {v3, v4, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "navRouteCount"

    const-string v4, "routeCount"

    invoke-virtual {v3, v4, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v2

    .line 45
    :cond_272
    const-string v5, "heartbeat"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28d

    if-eqz v2, :cond_285

    invoke-static {v4, v3}, Lcom/local/p5home/BridgeStore;->heartbeat(Landroid/content/Context;Landroid/os/Bundle;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0

    :cond_285
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "CarSpeech heartbeat required"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_28d
    const-string v5, "retire_nav"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c2

    .line 47
    if-eqz v2, :cond_2ba

    .line 48
    const-string v0, "navEpoch"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 49
    const-string v3, "retired"

    instance-of v4, v0, Ljava/lang/Long;

    if-eqz v4, :cond_2b5

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/local/p5home/NavAutoSession;->retire(J)Z

    move-result v0

    if-eqz v0, :cond_2b5

    goto :goto_2b6

    :cond_2b5
    move v8, v9

    :goto_2b6
    invoke-virtual {v2, v3, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v2

    .line 47
    :cond_2ba
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "CarSpeech navigation owner required"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_2c2
    const-string v5, "next_reply"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d9

    if-eqz v2, :cond_2d1

    invoke-static {}, Lcom/local/p5home/BridgeStore;->nextReply()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :cond_2d1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "CarSpeech reply required"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_2d9
    const-string v5, "ack_reply"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_304

    if-eqz v2, :cond_2fc

    const-string v0, "id"

    const-string v2, ""

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "status"

    const-string v5, "failed"

    invoke-virtual {v3, v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v0, v2}, Lcom/local/p5home/BridgeStore;->ack(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0

    :cond_2fc
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "CarSpeech acknowledgement required"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_304
    const-string v5, "submit"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58b

    .line 54
    if-nez v2, :cond_315

    const-string v0, "\u8bed\u97f3\u63d0\u4ea4\u53ea\u5141\u8bb8\u5c0fP\u8fdb\u7a0b"

    invoke-direct {v1, v0}, Lcom/local/p5home/BridgeProvider;->refused(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 55
    :cond_315
    invoke-static {v4}, Lcom/local/p5home/ConfigStore;->load(Landroid/content/Context;)Lcom/local/p5home/AppConfig;

    move-result-object v0

    iget-boolean v2, v0, Lcom/local/p5home/AppConfig;->voiceEnabled:Z

    if-nez v2, :cond_324

    const-string v0, "\u5c0fP\u5206\u6d41\u672a\u5f00\u542f"

    invoke-direct {v1, v0}, Lcom/local/p5home/BridgeProvider;->refused(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 56
    :cond_324
    invoke-static {v4}, Lcom/local/p5home/BridgeStore;->status(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "hookReady"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_337

    const-string v0, "\u6a21\u5757\u5c1a\u672a\u5c31\u7eea"

    invoke-direct {v1, v0}, Lcom/local/p5home/BridgeProvider;->refused(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 57
    :cond_337
    const-string v5, "kind"

    const-string v10, ""

    invoke-virtual {v3, v5, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v10, "requestId"

    const-string v11, ""

    invoke-virtual {v3, v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 58
    const-string v11, "[A-Za-z0-9_.:-]{1,100}"

    invoke-virtual {v10, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_356

    const-string v0, "\u8bf7\u6c42\u6807\u8bc6\u4e0d\u6b63\u786e"

    invoke-direct {v1, v0}, Lcom/local/p5home/BridgeProvider;->refused(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 59
    :cond_356
    const-string v11, "qa"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3de

    .line 60
    const-string v5, "text"

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3d7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x3e8

    if-le v5, v6, :cond_379

    goto :goto_3d7

    .line 61
    :cond_379
    iget-boolean v5, v0, Lcom/local/p5home/AppConfig;->doubaoEnabled:Z

    if-eqz v5, :cond_3d0

    invoke-static {v4}, Lcom/local/p5home/ConfigStore;->hasApiKey(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3d0

    iget-object v0, v0, Lcom/local/p5home/AppConfig;->modelId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_390

    goto :goto_3d0

    .line 62
    :cond_390
    const-string v0, "asrHook"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c9

    const-string v0, "ttsHook"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3a1

    goto :goto_3c9

    .line 63
    :cond_3a1
    invoke-static {v10}, Lcom/local/p5home/BridgeStore;->firstRequest(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3b9

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "accepted"

    invoke-virtual {v0, v2, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "message"

    const-string v3, "\u5df2\u63a5\u53d7\u7684\u540c\u4e00\u8bf7\u6c42"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 64
    :cond_3b9
    :try_start_3b9
    invoke-static {v4, v3, v10}, Lcom/local/p5home/AssistantService;->askFromVoice(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3bc
    .catch Ljava/lang/Exception; {:try_start_3b9 .. :try_end_3bc} :catch_3be

    .line 65
    goto/16 :goto_54c

    .line 64
    :catch_3be
    move-exception v0

    invoke-static {v10}, Lcom/local/p5home/BridgeStore;->releaseRequest(Ljava/lang/String;)V

    const-string v0, "\u52a9\u624b\u670d\u52a1\u672a\u80fd\u542f\u52a8"

    invoke-direct {v1, v0}, Lcom/local/p5home/BridgeProvider;->refused(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 62
    :cond_3c9
    :goto_3c9
    const-string v0, "\u8bc6\u522b\u6216\u64ad\u62a5\u63a5\u53e3\u5c1a\u672a\u5c31\u7eea"

    invoke-direct {v1, v0}, Lcom/local/p5home/BridgeProvider;->refused(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 61
    :cond_3d0
    :goto_3d0
    const-string v0, "\u8c46\u5305\u914d\u7f6e\u5c1a\u672a\u5b8c\u6210"

    invoke-direct {v1, v0}, Lcom/local/p5home/BridgeProvider;->refused(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 60
    :cond_3d7
    :goto_3d7
    const-string v0, "\u95ee\u9898\u957f\u5ea6\u4e0d\u6b63\u786e"

    invoke-direct {v1, v0}, Lcom/local/p5home/BridgeProvider;->refused(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 65
    :cond_3de
    const-string v11, "music"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_45a

    .line 66
    const-string v5, "data"

    const-string v9, ""

    invoke-virtual {v3, v5, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v9, "musicProvider"

    const-string v11, ""

    invoke-virtual {v3, v9, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 67
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    const-string v13, "queuedAt"

    const-wide/16 v14, -0x3a99

    invoke-virtual {v3, v13, v14, v15}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    sub-long/2addr v11, v13

    .line 68
    cmp-long v3, v11, v6

    if-ltz v3, :cond_453

    const-wide/16 v6, 0x3a98

    cmp-long v3, v11, v6

    if-gtz v3, :cond_453

    invoke-static {v5}, Lcom/local/p5home/MusicPolicy;->song(Ljava/lang/String;)Lcom/local/p5home/MusicPolicy$Song;

    move-result-object v3

    if-nez v3, :cond_414

    goto :goto_453

    .line 69
    :cond_414
    const-string v3, "musicHook"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_44c

    iget-object v0, v0, Lcom/local/p5home/AppConfig;->musicProvider:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44c

    invoke-static {v4, v9}, Lcom/local/p5home/MusicRouter;->available(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42b

    goto :goto_44c

    .line 70
    :cond_42b
    invoke-static {v10}, Lcom/local/p5home/BridgeStore;->firstRequest(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_43c

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "accepted"

    invoke-virtual {v0, v2, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0

    .line 71
    :cond_43c
    :try_start_43c
    invoke-static {v4, v9, v5, v10}, Lcom/local/p5home/AssistantService;->music(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_43f
    .catch Ljava/lang/Exception; {:try_start_43c .. :try_end_43f} :catch_441

    .line 72
    goto/16 :goto_54c

    .line 71
    :catch_441
    move-exception v0

    invoke-static {v10}, Lcom/local/p5home/BridgeStore;->releaseRequest(Ljava/lang/String;)V

    const-string v0, "\u97f3\u4e50\u52a9\u624b\u672a\u80fd\u542f\u52a8"

    invoke-direct {v1, v0}, Lcom/local/p5home/BridgeProvider;->refused(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 69
    :cond_44c
    :goto_44c
    const-string v0, "\u6240\u9009\u97f3\u4e50\u5e94\u7528\u672a\u5c31\u7eea"

    invoke-direct {v1, v0}, Lcom/local/p5home/BridgeProvider;->refused(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 68
    :cond_453
    :goto_453
    const-string v0, "\u6b4c\u66f2\u8bf7\u6c42\u65e0\u6548\u6216\u5df2\u8fc7\u671f"

    invoke-direct {v1, v0}, Lcom/local/p5home/BridgeProvider;->refused(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 72
    :cond_45a
    const-string v11, "nav"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_584

    .line 73
    sget-object v5, Lcom/local/p5home/BridgeProvider;->NAV_ADMISSION:Ljava/lang/Object;

    monitor-enter v5

    .line 74
    :try_start_465
    const-string v11, "event"

    const-string v12, ""

    invoke-virtual {v3, v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "data"

    const-string v13, ""

    invoke-virtual {v3, v12, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 75
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0x78

    if-gt v13, v14, :cond_579

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    const/16 v14, 0x4000

    if-le v13, v14, :cond_487

    goto/16 :goto_579

    .line 76
    :cond_487
    const-string v13, "navHook"

    invoke-virtual {v2, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_497

    const-string v0, "\u5bfc\u822a\u5206\u6d41\u5c1a\u672a\u5c31\u7eea"

    invoke-direct {v1, v0}, Lcom/local/p5home/BridgeProvider;->refused(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    monitor-exit v5

    return-object v0

    .line 77
    :cond_497
    invoke-static {}, Lcom/local/p5home/NavAutoSession;->epoch()J

    move-result-wide v6

    iget-object v0, v0, Lcom/local/p5home/AppConfig;->navPackage:Ljava/lang/String;

    invoke-static {v4, v0, v11, v12}, Lcom/local/p5home/Navigator;->validate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/local/p5home/Navigator$Result;

    move-result-object v0

    iget-boolean v2, v0, Lcom/local/p5home/Navigator$Result;->accepted:Z

    if-nez v2, :cond_4ad

    iget-object v0, v0, Lcom/local/p5home/Navigator$Result;->message:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/local/p5home/BridgeProvider;->refused(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    monitor-exit v5
    :try_end_4ac
    .catchall {:try_start_465 .. :try_end_4ac} :catchall_581

    return-object v0

    .line 80
    :cond_4ad
    nop

    .line 82
    :try_start_4ae
    invoke-static {v12}, Lcom/local/p5home/NavProtocol;->object(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 83
    invoke-static {v11, v0}, Lcom/local/p5home/Navigator;->isConversationControl(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v2

    invoke-static {v11, v0}, Lcom/local/p5home/Navigator;->isNewNavigation(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v13

    .line 84
    if-nez v2, :cond_4be

    if-eqz v13, :cond_4dc

    .line 87
    :cond_4be
    const-string v9, "navEpoch"

    const-wide v14, 0x7fffffffffffffffL

    invoke-virtual {v0, v9, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 88
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v14, 0x4000

    if-le v9, v14, :cond_4dc

    const-string v0, "\u5bfc\u822a\u8bf7\u6c42\u8fc7\u957f"

    invoke-direct {v1, v0}, Lcom/local/p5home/BridgeProvider;->refused(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_4da
    .catch Ljava/lang/Exception; {:try_start_4ae .. :try_end_4da} :catch_56a
    .catchall {:try_start_4ae .. :try_end_4da} :catchall_581

    :try_start_4da
    monitor-exit v5
    :try_end_4db
    .catchall {:try_start_4da .. :try_end_4db} :catchall_581

    return-object v0

    .line 90
    :cond_4dc
    if-eqz v2, :cond_4f7

    .line 91
    :try_start_4de
    invoke-static {}, Lcom/local/p5home/NavAutoSession;->epoch()J

    move-result-wide v14

    cmp-long v2, v6, v14

    if-eqz v2, :cond_4ee

    const-string v0, "\u5730\u56fe\u4f1a\u8bdd\u5df2\u66f4\u65b0\uff0c\u8bf7\u91cd\u65b0\u9009\u62e9"

    invoke-direct {v1, v0}, Lcom/local/p5home/BridgeProvider;->refused(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_4ec
    .catch Ljava/lang/Exception; {:try_start_4de .. :try_end_4ec} :catch_56a
    .catchall {:try_start_4de .. :try_end_4ec} :catchall_581

    :try_start_4ec
    monitor-exit v5
    :try_end_4ed
    .catchall {:try_start_4ec .. :try_end_4ed} :catchall_581

    return-object v0

    .line 92
    :cond_4ee
    :try_start_4ee
    const-string v2, "navEpoch"

    invoke-virtual {v0, v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    .line 94
    :cond_4f7
    invoke-static {v10}, Lcom/local/p5home/BridgeStore;->firstRequest(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_509

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "accepted"

    invoke-virtual {v0, v2, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_507
    .catch Ljava/lang/Exception; {:try_start_4ee .. :try_end_507} :catch_56a
    .catchall {:try_start_4ee .. :try_end_507} :catchall_581

    :try_start_507
    monitor-exit v5
    :try_end_508
    .catchall {:try_start_507 .. :try_end_508} :catchall_581

    return-object v0

    .line 95
    :cond_509
    nop

    .line 96
    if-eqz v13, :cond_52d

    .line 97
    :try_start_50c
    invoke-static {v6, v7}, Lcom/local/p5home/NavAutoSession;->resetIfCurrent(J)J

    move-result-wide v6

    .line 98
    const-wide/16 v12, 0x0

    cmp-long v2, v6, v12

    if-gez v2, :cond_521

    invoke-static {v10}, Lcom/local/p5home/BridgeStore;->releaseRequest(Ljava/lang/String;)V

    const-string v0, "\u5bfc\u822a\u4f1a\u8bdd\u5df2\u66f4\u65b0\uff0c\u8bf7\u91cd\u65b0\u53d1\u8d77"

    invoke-direct {v1, v0}, Lcom/local/p5home/BridgeProvider;->refused(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_51f
    .catch Ljava/lang/Exception; {:try_start_50c .. :try_end_51f} :catch_52b
    .catchall {:try_start_50c .. :try_end_51f} :catchall_581

    :try_start_51f
    monitor-exit v5
    :try_end_520
    .catchall {:try_start_51f .. :try_end_520} :catchall_581

    return-object v0

    .line 99
    :cond_521
    :try_start_521
    const-string v2, "navEpoch"

    invoke-virtual {v0, v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12
    :try_end_52a
    .catch Ljava/lang/Exception; {:try_start_521 .. :try_end_52a} :catch_52b
    .catchall {:try_start_521 .. :try_end_52a} :catchall_581

    goto :goto_52d

    .line 101
    :catch_52b
    move-exception v0

    goto :goto_56c

    :cond_52d
    :goto_52d
    nop

    .line 102
    :try_start_52e
    const-string v0, "externalTurn"

    const-string v2, "g3.asr.navigate"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_543

    const-string v2, "g3.asr.nav.control"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_541

    goto :goto_543

    :cond_541
    const/4 v9, 0x0

    goto :goto_544

    :cond_543
    :goto_543
    move v9, v8

    :goto_544
    invoke-virtual {v3, v0, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v4, v11, v12, v10, v0}, Lcom/local/p5home/AssistantService;->navigate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_54b
    .catch Ljava/lang/Exception; {:try_start_52e .. :try_end_54b} :catch_55e
    .catchall {:try_start_52e .. :try_end_54b} :catchall_581

    .line 103
    :try_start_54b
    monitor-exit v5
    :try_end_54c
    .catchall {:try_start_54b .. :try_end_54c} :catchall_581

    .line 105
    :goto_54c
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "accepted"

    invoke-virtual {v0, v2, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "message"

    const-string v3, "\u8bf7\u6c42\u5df2\u63a5\u53d7\uff0c\u5b9e\u9645\u7ed3\u679c\u968f\u540e\u66f4\u65b0"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 102
    :catch_55e
    move-exception v0

    :try_start_55f
    invoke-static {v10}, Lcom/local/p5home/BridgeStore;->releaseRequest(Ljava/lang/String;)V

    const-string v0, "\u5bfc\u822a\u52a9\u624b\u672a\u80fd\u542f\u52a8"

    invoke-direct {v1, v0}, Lcom/local/p5home/BridgeProvider;->refused(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    monitor-exit v5

    return-object v0

    .line 101
    :catch_56a
    move-exception v0

    const/4 v8, 0x0

    :goto_56c
    if-eqz v8, :cond_571

    invoke-static {v10}, Lcom/local/p5home/BridgeStore;->releaseRequest(Ljava/lang/String;)V

    :cond_571
    const-string v0, "\u5bfc\u822a\u4f1a\u8bdd\u6807\u8bc6\u65e0\u6548"

    invoke-direct {v1, v0}, Lcom/local/p5home/BridgeProvider;->refused(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    monitor-exit v5

    return-object v0

    .line 75
    :cond_579
    :goto_579
    const-string v0, "\u5bfc\u822a\u8bf7\u6c42\u8fc7\u957f"

    invoke-direct {v1, v0}, Lcom/local/p5home/BridgeProvider;->refused(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    monitor-exit v5

    return-object v0

    .line 103
    :catchall_581
    move-exception v0

    monitor-exit v5
    :try_end_583
    .catchall {:try_start_55f .. :try_end_583} :catchall_581

    throw v0

    .line 104
    :cond_584
    const-string v0, "\u4e0d\u652f\u6301\u7684\u8bf7\u6c42\u7c7b\u578b"

    invoke-direct {v1, v0}, Lcom/local/p5home/BridgeProvider;->refused(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 107
    :cond_58b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown bridge method"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 4

    .line 112
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 2

    .line 110
    const-string p1, "vnd.android.cursor.item/vnd.p5home.event"

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 3

    .line 111
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public onCreate()Z
    .registers 2

    .line 14
    invoke-virtual {p0}, Lcom/local/p5home/BridgeProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/local/p5home/G3Application;->ensure(Landroid/content/Context;)V

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 6

    .line 109
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    .line 113
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

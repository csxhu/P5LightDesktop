.class public final Lcom/local/p5home/ConfigStore;
.super Ljava/lang/Object;
.source "ConfigStore.java"


# static fields
.field private static final ALIAS:Ljava/lang/String; = "p5home.ark.api.v1"

.field public static final EVENTS:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 19
    const-string v0, "content://com.local.p5home.bridge/events"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/local/p5home/ConfigStore;->EVENTS:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static apiKey(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 76
    invoke-static {p0}, Lcom/local/p5home/ConfigStore;->load(Landroid/content/Context;)Lcom/local/p5home/AppConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/local/p5home/AppConfig;->endpoint:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/local/p5home/ConfigStore;->apiKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static declared-synchronized apiKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lcom/local/p5home/ConfigStore;

    monitor-enter v0

    .line 79
    :try_start_3
    invoke-static {p0}, Lcom/local/p5home/ConfigStore;->bindLegacyKey(Landroid/content/Context;)V

    .line 80
    invoke-static {p1}, Lcom/local/p5home/ConfigPolicy;->origin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lcom/local/p5home/ConfigStore;->secretPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "origin"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_72

    .line 81
    invoke-static {p0}, Lcom/local/p5home/ConfigStore;->secretPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v1, "ciphertext"

    const-string v2, ""

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lcom/local/p5home/ConfigStore;->secretPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "iv"

    const-string v2, ""

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 82
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6a

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6a

    .line 83
    const-string v1, "AES/GCM/NoPadding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    invoke-static {}, Lcom/local/p5home/ConfigStore;->key()Ljavax/crypto/SecretKey;

    move-result-object v2

    new-instance v3, Ljavax/crypto/spec/GCMParameterSpec;

    const/4 v4, 0x2

    invoke-static {p0, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    const/16 v5, 0x80

    invoke-direct {v3, v5, p0}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    invoke-virtual {v1, v4, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 84
    new-instance p0, Ljava/lang/String;

    invoke-static {p1, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_68
    .catchall {:try_start_3 .. :try_end_68} :catchall_7a

    monitor-exit v0

    return-object p0

    .line 82
    :cond_6a
    :try_start_6a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "\u5c1a\u672a\u4fdd\u5b58 API Key"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 80
    :cond_72
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "\u5f53\u524d\u63a5\u53e3\u5c1a\u672a\u4fdd\u5b58 API Key\uff0c\u8bf7\u5728\u63a5\u53e3\u914d\u7f6e\u4e2d\u586b\u5199"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_7a
    .catchall {:try_start_6a .. :try_end_7a} :catchall_7a

    .line 78
    :catchall_7a
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized bindLegacyKey(Landroid/content/Context;)V
    .registers 5

    const-class v0, Lcom/local/p5home/ConfigStore;

    monitor-enter v0

    .line 50
    :try_start_3
    invoke-static {p0}, Lcom/local/p5home/ConfigStore;->secretPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "ciphertext"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_43

    const-string v2, "origin"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_43

    .line 51
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "origin"

    invoke-static {p0}, Lcom/local/p5home/ConfigStore;->load(Landroid/content/Context;)Lcom/local/p5home/AppConfig;

    move-result-object p0

    iget-object p0, p0, Lcom/local/p5home/AppConfig;->endpoint:Ljava/lang/String;

    invoke-static {p0}, Lcom/local/p5home/ConfigPolicy;->origin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p0

    if-eqz p0, :cond_38

    goto :goto_43

    :cond_38
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "\u65e7\u5bc6\u94a5\u7ed1\u5b9a\u672a\u5b8c\u6210"

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_40
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_40} :catch_45
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_40} :catch_42
    .catchall {:try_start_3 .. :try_end_40} :catchall_40

    .line 49
    :catchall_40
    move-exception p0

    goto :goto_47

    .line 52
    :catch_42
    move-exception p0

    :cond_43
    :goto_43
    monitor-exit v0

    return-void

    :catch_45
    move-exception p0

    :try_start_46
    throw p0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_40

    .line 49
    :goto_47
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized clearApiKey(Landroid/content/Context;)V
    .registers 4

    const-class v0, Lcom/local/p5home/ConfigStore;

    monitor-enter v0

    .line 86
    :try_start_3
    invoke-static {p0}, Lcom/local/p5home/ConfigStore;->secretPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v1, Lcom/local/p5home/ConfigStore;->EVENTS:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_29

    monitor-exit v0

    return-void

    :cond_21
    :try_start_21
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "\u5bc6\u94a5\u6e05\u9664\u5931\u8d25"

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_29

    .line 86
    :catchall_29
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized hasApiKey(Landroid/content/Context;)Z
    .registers 6

    const-class v0, Lcom/local/p5home/ConfigStore;

    monitor-enter v0

    .line 53
    const/4 v1, 0x0

    :try_start_4
    invoke-static {p0}, Lcom/local/p5home/ConfigStore;->bindLegacyKey(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/local/p5home/ConfigStore;->secretPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "ciphertext"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_36

    invoke-static {p0}, Lcom/local/p5home/ConfigStore;->load(Landroid/content/Context;)Lcom/local/p5home/AppConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/local/p5home/AppConfig;->endpoint:Ljava/lang/String;

    invoke-static {v2}, Lcom/local/p5home/ConfigPolicy;->origin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/local/p5home/ConfigStore;->secretPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v3, "origin"

    const-string v4, ""

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_33} :catch_3b
    .catchall {:try_start_4 .. :try_end_33} :catchall_38

    if-eqz p0, :cond_36

    const/4 v1, 0x1

    :cond_36
    :goto_36
    monitor-exit v0

    return v1

    .line 53
    :catchall_38
    move-exception p0

    monitor-exit v0

    throw p0

    .line 53
    :catch_3b
    move-exception p0

    goto :goto_36
.end method

.method private static key()Ljavax/crypto/SecretKey;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 55
    const-string v0, "AndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 56
    const-string v3, "p5home.ark.api.v1"

    invoke-virtual {v1, v3}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3c

    const-string v4, "AES"

    invoke-static {v4, v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 57
    new-instance v4, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/4 v5, 0x3

    invoke-direct {v4, v3, v5}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    const-string v5, "GCM"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    .line 58
    invoke-virtual {v4, v5}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v4

    const-string v5, "NoPadding"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v4

    .line 57
    invoke-virtual {v0, v4}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 58
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    .line 59
    :cond_3c
    invoke-virtual {v1, v3, v2}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v0

    check-cast v0, Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method public static load(Landroid/content/Context;)Lcom/local/p5home/AppConfig;
    .registers 5

    .line 23
    invoke-static {p0}, Lcom/local/p5home/ConfigStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    new-instance v0, Lcom/local/p5home/AppConfig;

    invoke-direct {v0}, Lcom/local/p5home/AppConfig;-><init>()V

    .line 24
    const-string v1, "voiceEnabled"

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/local/p5home/AppConfig;->voiceEnabled:Z

    const-string v1, "doubaoEnabled"

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/local/p5home/AppConfig;->doubaoEnabled:Z

    .line 25
    const-string v1, "autoLaunchNav"

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/local/p5home/AppConfig;->autoLaunchNav:Z

    const-string v1, "restoreAfterWake"

    const/4 v3, 0x1

    invoke-interface {p0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/local/p5home/AppConfig;->restoreAfterWake:Z

    .line 26
    const-string v1, "musicProvider"

    iget-object v3, v0, Lcom/local/p5home/AppConfig;->musicProvider:Ljava/lang/String;

    invoke-interface {p0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/local/p5home/AppConfig;->musicProvider:Ljava/lang/String;

    const-string v1, "navPackage"

    iget-object v3, v0, Lcom/local/p5home/AppConfig;->navPackage:Ljava/lang/String;

    invoke-interface {p0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/local/p5home/AppConfig;->navPackage:Ljava/lang/String;

    const-string v1, "endpoint"

    iget-object v3, v0, Lcom/local/p5home/AppConfig;->endpoint:Ljava/lang/String;

    invoke-interface {p0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/local/p5home/AppConfig;->endpoint:Ljava/lang/String;

    .line 27
    const-string v1, "modelId"

    const-string v3, ""

    invoke-interface {p0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/local/p5home/AppConfig;->modelId:Ljava/lang/String;

    const-string v1, "prefix"

    iget-object v3, v0, Lcom/local/p5home/AppConfig;->prefix:Ljava/lang/String;

    invoke-interface {p0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/local/p5home/AppConfig;->prefix:Ljava/lang/String;

    .line 28
    const-string v1, "apiProtocol"

    iget-object v3, v0, Lcom/local/p5home/AppConfig;->apiProtocol:Ljava/lang/String;

    invoke-interface {p0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/local/p5home/AppConfig;->apiProtocol:Ljava/lang/String;

    const-string v1, "modelWakeEnabled"

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/local/p5home/AppConfig;->modelWakeEnabled:Z

    const-string v1, "customWakeUseNative"

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/local/p5home/AppConfig;->customWakeUseNative:Z

    const-string v1, "modelWakeWords"

    iget-object v2, v0, Lcom/local/p5home/AppConfig;->modelWakeWords:Ljava/lang/String;

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/local/p5home/AppConfig;->modelWakeWords:Ljava/lang/String;

    return-object v0
.end method

.method static prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    .line 20
    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "home"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static save(Landroid/content/Context;Lcom/local/p5home/AppConfig;)V
    .registers 13

    .line 31
    if-eqz p1, :cond_12d

    .line 32
    iget-object v0, p1, Lcom/local/p5home/AppConfig;->endpoint:Ljava/lang/String;

    invoke-static {v0}, Lcom/local/p5home/ConfigStore;->validateEndpoint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/local/p5home/AppConfig;->modelId:Ljava/lang/String;

    invoke-static {v1}, Lcom/local/p5home/ConfigStore;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/local/p5home/AppConfig;->prefix:Ljava/lang/String;

    invoke-static {v2}, Lcom/local/p5home/ConfigStore;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/local/p5home/AppConfig;->navPackage:Ljava/lang/String;

    invoke-static {v3}, Lcom/local/p5home/ConfigStore;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/local/p5home/AppConfig;->apiProtocol:Ljava/lang/String;

    invoke-static {v4}, Lcom/local/p5home/ConfigPolicy;->protocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 33
    iget-object v5, p1, Lcom/local/p5home/AppConfig;->modelWakeWords:Ljava/lang/String;

    invoke-static {v5}, Lcom/local/p5home/ConfigStore;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-boolean v6, p1, Lcom/local/p5home/AppConfig;->modelWakeEnabled:Z

    if-nez v6, :cond_30

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_33

    :cond_30
    invoke-static {v5}, Lcom/local/p5home/WakeWordPolicy;->parse(Ljava/lang/String;)Ljava/util/List;

    .line 34
    :cond_33
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0xc8

    if-gt v6, v7, :cond_125

    const/16 v6, 0xa

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-gez v7, :cond_125

    const/16 v7, 0xd

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-gez v8, :cond_125

    .line 35
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_11d

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x14

    if-gt v8, v9, :cond_11d

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-gez v6, :cond_11d

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-gez v6, :cond_11d

    .line 36
    const-string v6, "[A-Za-z][A-Za-z0-9_]*(\\.[A-Za-z0-9_]+)+"

    invoke-virtual {v3, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_115

    .line 37
    iget-object v6, p1, Lcom/local/p5home/AppConfig;->musicProvider:Ljava/lang/String;

    invoke-static {v6}, Lcom/local/p5home/MusicPolicy;->provider(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10d

    .line 38
    invoke-static {p0}, Lcom/local/p5home/ConfigStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    new-instance v7, Lcom/local/p5home/AppConfig;

    invoke-direct {v7}, Lcom/local/p5home/AppConfig;-><init>()V

    iget-object v7, v7, Lcom/local/p5home/AppConfig;->navPackage:Ljava/lang/String;

    const-string v8, "navPackage"

    invoke-interface {v6, v8, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 39
    invoke-static {p0}, Lcom/local/p5home/ConfigStore;->bindLegacyKey(Landroid/content/Context;)V

    .line 40
    invoke-static {p0}, Lcom/local/p5home/ConfigStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v9, "voiceEnabled"

    iget-boolean v10, p1, Lcom/local/p5home/AppConfig;->voiceEnabled:Z

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v9, "doubaoEnabled"

    iget-boolean v10, p1, Lcom/local/p5home/AppConfig;->doubaoEnabled:Z

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    iget-boolean v9, p1, Lcom/local/p5home/AppConfig;->autoLaunchNav:Z

    .line 41
    const-string v10, "autoLaunchNav"

    invoke-interface {v7, v10, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v9, "restoreAfterWake"

    iget-boolean v10, p1, Lcom/local/p5home/AppConfig;->restoreAfterWake:Z

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    iget-object v9, p1, Lcom/local/p5home/AppConfig;->musicProvider:Ljava/lang/String;

    .line 42
    const-string v10, "musicProvider"

    invoke-interface {v7, v10, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7, v8, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "endpoint"

    invoke-interface {v7, v8, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v7, "modelId"

    invoke-interface {v0, v7, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "prefix"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 43
    const-string v1, "apiProtocol"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "modelWakeEnabled"

    iget-boolean v9, p1, Lcom/local/p5home/AppConfig;->customWakeUseNative:Z

    iget-boolean p1, p1, Lcom/local/p5home/AppConfig;->modelWakeEnabled:Z

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "modelWakeWords"

    invoke-interface {p1, v0, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "customWakeUseNative"

    invoke-interface {p1, v0, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    if-eqz p1, :cond_105

    .line 45
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_fa

    invoke-static {}, Lcom/local/p5home/Navigator;->clearSession()V

    .line 46
    :cond_fa
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/local/p5home/ConfigStore;->EVENTS:Landroid/net/Uri;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 47
    return-void

    .line 44
    :cond_105
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "\u8bbe\u7f6e\u4fdd\u5b58\u5931\u8d25"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 37
    :cond_10d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u97f3\u4e50\u5e94\u7528\u8bbe\u7f6e\u65e0\u6548"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 36
    :cond_115
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u5bfc\u822a\u5305\u540d\u4e0d\u6b63\u786e"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 35
    :cond_11d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u89e6\u53d1\u8bcd\u9700\u4e3a 1\u201420 \u4e2a\u5b57\u7b26"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 34
    :cond_125
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u6a21\u578b ID \u683c\u5f0f\u4e0d\u6b63\u786e"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 31
    :cond_12d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u8bbe\u7f6e\u4e3a\u7a7a"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static secretPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    .line 21
    const-string v0, "credentials"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static storeApiKey(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 62
    invoke-static {p0}, Lcom/local/p5home/ConfigStore;->load(Landroid/content/Context;)Lcom/local/p5home/AppConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/local/p5home/AppConfig;->endpoint:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/local/p5home/ConfigStore;->storeApiKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method static declared-synchronized storeApiKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    const-class v0, Lcom/local/p5home/ConfigStore;

    monitor-enter v0

    .line 65
    :try_start_3
    invoke-static {p1}, Lcom/local/p5home/ConfigStore;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1000

    if-gt v1, v2, :cond_b8

    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_b8

    const/16 v1, 0xd

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_c0

    if-gez v1, :cond_b8

    .line 66
    :try_start_25
    const-string v1, "AES/GCM/NoPadding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    invoke-static {}, Lcom/local/p5home/ConfigStore;->key()Ljavax/crypto/SecretKey;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 67
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 68
    const-string v3, "AES/GCM/NoPadding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    invoke-static {}, Lcom/local/p5home/ConfigStore;->key()Ljavax/crypto/SecretKey;

    move-result-object v4

    new-instance v5, Ljavax/crypto/spec/GCMParameterSpec;

    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v6

    const/16 v7, 0x80

    invoke-direct {v5, v7, v6}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    const/4 v6, 0x2

    invoke-virtual {v3, v6, v4, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 69
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v3, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    invoke-static {p1, v3}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result p1

    if-eqz p1, :cond_a9

    .line 70
    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object p1

    invoke-static {p1, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-static {p0}, Lcom/local/p5home/ConfigStore;->secretPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "iv"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v2, "ciphertext"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "origin"

    invoke-static {p2}, Lcom/local/p5home/ConfigPolicy;->origin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    if-eqz p1, :cond_a3

    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/local/p5home/ConfigStore;->EVENTS:Landroid/net/Uri;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_a0} :catch_af
    .catchall {:try_start_25 .. :try_end_a0} :catchall_c0

    .line 73
    nop

    .line 74
    monitor-exit v0

    return-void

    .line 71
    :cond_a3
    :try_start_a3
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    throw p0

    .line 69
    :cond_a9
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    throw p0
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_af} :catch_af
    .catchall {:try_start_a3 .. :try_end_af} :catchall_c0

    .line 73
    :catch_af
    move-exception p0

    :try_start_b0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "\u5bc6\u94a5\u52a0\u5bc6\u4fdd\u5b58\u5931\u8d25\uff0c\u8bf7\u786e\u8ba4\u8bbe\u5907\u5df2\u89e3\u9501"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 65
    :cond_b8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "API Key \u683c\u5f0f\u4e0d\u6b63\u786e"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_c0
    .catchall {:try_start_b0 .. :try_end_c0} :catchall_c0

    .line 64
    :catchall_c0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static trim(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 49
    if-nez p0, :cond_5

    const-string p0, ""

    goto :goto_9

    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :goto_9
    return-object p0
.end method

.method static validateEndpoint(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 48
    invoke-static {p0}, Lcom/local/p5home/ConfigPolicy;->endpoint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

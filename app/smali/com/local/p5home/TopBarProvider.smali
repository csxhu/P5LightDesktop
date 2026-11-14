.class public final Lcom/local/p5home/TopBarProvider;
.super Landroid/content/ContentProvider;
.source "TopBarProvider.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private static index(Ljava/lang/String;)I
    .registers 2

    .line 28
    if-eqz p0, :cond_f

    const-string v0, "[0-6]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid slot"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private systemUid()I
    .registers 4

    .line 13
    :try_start_0
    invoke-virtual {p0}, Lcom/local/p5home/TopBarProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.android.systemui"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    return v0

    :catch_12
    move-exception v0

    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 9

    .line 15
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0}, Lcom/local/p5home/TopBarProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 16
    invoke-direct {p0}, Lcom/local/p5home/TopBarProvider;->systemUid()I

    move-result v2

    invoke-static {v0, v1, v2, p1}, Lcom/local/p5home/TopBarAccess;->allowed(IIILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e0

    .line 17
    const-string v0, "get_config"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {p0}, Lcom/local/p5home/TopBarProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/local/p5home/TopBarStore;->config(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 18
    :cond_29
    const-string v0, "status"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-virtual {p0}, Lcom/local/p5home/TopBarProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/local/p5home/TopBarStore;->localStatus(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 19
    :cond_3a
    if-nez p3, :cond_41

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    :cond_41
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 20
    const-string v1, "heartbeat"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-static {p3}, Lcom/local/p5home/TopBarStore;->recordHeartbeat(Landroid/os/Bundle;)V

    return-object v0

    .line 21
    :cond_52
    const-string v1, "set_enabled"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_79

    const-string p1, "enabled"

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    instance-of p2, p2, Ljava/lang/Boolean;

    if-eqz p2, :cond_71

    invoke-virtual {p0}, Lcom/local/p5home/TopBarProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p2, p1}, Lcom/local/p5home/TopBarStore;->setEnabled(Landroid/content/Context;Z)Z

    move-result p1

    goto :goto_da

    :cond_71
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Boolean enabled required"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_79
    const-string v1, "set_slot"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a2

    invoke-virtual {p0}, Lcom/local/p5home/TopBarProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p2}, Lcom/local/p5home/TopBarProvider;->index(Ljava/lang/String;)I

    move-result p2

    const-string v1, "pkg"

    const-string v2, ""

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "act"

    invoke-virtual {p3, v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "label"

    invoke-virtual {p3, v4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, v1, v3, p3}, Lcom/local/p5home/TopBarStore;->setSlot(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    goto :goto_da

    .line 23
    :cond_a2
    const-string p3, "reset_slot"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_b7

    invoke-virtual {p0}, Lcom/local/p5home/TopBarProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p2}, Lcom/local/p5home/TopBarProvider;->index(Ljava/lang/String;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/local/p5home/TopBarStore;->resetSlot(Landroid/content/Context;I)Z

    move-result p1

    goto :goto_da

    .line 24
    :cond_b7
    const-string p2, "reset_all"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c8

    invoke-virtual {p0}, Lcom/local/p5home/TopBarProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/local/p5home/TopBarStore;->resetAll(Landroid/content/Context;)Z

    move-result p1

    goto :goto_da

    .line 25
    :cond_c8
    const-string p2, "migrate_legacy"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d9

    invoke-virtual {p0}, Lcom/local/p5home/TopBarProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/local/p5home/TopBarStore;->migrateLegacyOnce(Landroid/content/Context;)Z

    move-result p1

    goto :goto_da

    :cond_d9
    const/4 p1, 0x0

    .line 26
    :goto_da
    const-string p2, "success"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0

    .line 16
    :cond_e0
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Top bar caller not allowed"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 4

    .line 32
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 2

    .line 30
    const-string p1, "vnd.android.cursor.item/vnd.p5home.topbar"

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 3

    .line 31
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public onCreate()Z
    .registers 2

    .line 12
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 6

    .line 29
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    .line 33
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

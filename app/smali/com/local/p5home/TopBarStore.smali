.class public final Lcom/local/p5home/TopBarStore;
.super Ljava/lang/Object;
.source "TopBarStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/local/p5home/TopBarStore$Snapshot;
    }
.end annotation


# static fields
.field public static final PACKAGE:Ljava/lang/String; = "com.local.p5home"

.field private static final PREFS:Ljava/lang/String; = "g3_topbar_v1"

.field public static final URI:Landroid/net/Uri;

.field private static heartbeat:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 16
    const-string v0, "content://com.local.p5home.topbar/config"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/local/p5home/TopBarStore;->URI:Landroid/net/Uri;

    .line 19
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sput-object v0, Lcom/local/p5home/TopBarStore;->heartbeat:Landroid/os/Bundle;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static changed(Landroid/content/Context;)V
    .registers 3

    .line 38
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/local/p5home/TopBarStore;->URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_c

    :catch_b
    move-exception p0

    :goto_c
    return-void
.end method

.method static config(Landroid/content/Context;)Landroid/os/Bundle;
    .registers 8

    .line 76
    invoke-static {p0}, Lcom/local/p5home/TopBarStore;->load(Landroid/content/Context;)Lcom/local/p5home/TopBarStore$Snapshot;

    move-result-object p0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "schema"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "valid"

    iget-boolean v2, p0, Lcom/local/p5home/TopBarStore$Snapshot;->valid:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "enabled"

    iget-boolean v2, p0, Lcom/local/p5home/TopBarStore$Snapshot;->enabled:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "revision"

    iget-wide v2, p0, Lcom/local/p5home/TopBarStore$Snapshot;->revision:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "migrationAttempted"

    iget-boolean v2, p0, Lcom/local/p5home/TopBarStore$Snapshot;->migrationAttempted:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 77
    iget-object p0, p0, Lcom/local/p5home/TopBarStore$Snapshot;->slots:[Lcom/local/p5home/TopBarSlot;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_2f
    if-ge v2, v1, :cond_68

    aget-object v3, p0, v2

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "pkg"

    iget-object v6, v3, Lcom/local/p5home/TopBarSlot;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "act"

    iget-object v6, v3, Lcom/local/p5home/TopBarSlot;->activityName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "label"

    iget-object v6, v3, Lcom/local/p5home/TopBarSlot;->label:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "slot_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v3, v3, Lcom/local/p5home/TopBarSlot;->index:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    :cond_68
    return-object v0
.end method

.method static decode(Landroid/os/Bundle;)Lcom/local/p5home/TopBarStore$Snapshot;
    .registers 15

    .line 82
    const-string v0, "label"

    const-string v1, "act"

    const-string v2, "pkg"

    const-string v3, "enabled"

    const-string v4, "revision"

    if-eqz p0, :cond_ac

    :try_start_c
    const-string v5, "schema"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_ac

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v7, "valid"

    invoke-virtual {p0, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ac

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Ljava/lang/Boolean;

    if-eqz v5, :cond_ac

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Ljava/lang/Long;

    if-eqz v5, :cond_ac

    const-wide/16 v7, -0x1

    invoke-virtual {p0, v4, v7, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-gez v5, :cond_41

    goto :goto_ac

    .line 83
    :cond_41
    invoke-static {}, Lcom/local/p5home/TopBarStore;->defaults()[Lcom/local/p5home/TopBarSlot;

    move-result-object v11

    move v5, v6

    :goto_46
    const/4 v7, 0x7

    if-ge v5, v7, :cond_96

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "slot_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_91

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Ljava/lang/String;

    if-eqz v8, :cond_91

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Ljava/lang/String;

    if-eqz v8, :cond_91

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Ljava/lang/String;

    if-nez v8, :cond_7b

    goto :goto_91

    :cond_7b
    new-instance v8, Lcom/local/p5home/TopBarSlot;

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v5, v9, v10, v7}, Lcom/local/p5home/TopBarSlot;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v8, v11, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_46

    :cond_91
    :goto_91
    invoke-static {}, Lcom/local/p5home/TopBarStore;->disabled()Lcom/local/p5home/TopBarStore$Snapshot;

    move-result-object p0

    return-object p0

    .line 84
    :cond_96
    new-instance v0, Lcom/local/p5home/TopBarStore$Snapshot;

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    const-string v1, "migrationAttempted"

    invoke-virtual {p0, v1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    const/4 v13, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v13}, Lcom/local/p5home/TopBarStore$Snapshot;-><init>(ZJ[Lcom/local/p5home/TopBarSlot;ZZ)V

    return-object v0

    .line 82
    :cond_ac
    :goto_ac
    invoke-static {}, Lcom/local/p5home/TopBarStore;->disabled()Lcom/local/p5home/TopBarStore$Snapshot;

    move-result-object p0
    :try_end_b0
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_b0} :catch_b1

    return-object p0

    .line 85
    :catch_b1
    move-exception p0

    invoke-static {}, Lcom/local/p5home/TopBarStore;->disabled()Lcom/local/p5home/TopBarStore$Snapshot;

    move-result-object p0

    return-object p0
.end method

.method private static defaults()[Lcom/local/p5home/TopBarSlot;
    .registers 4

    .line 28
    const/4 v0, 0x7

    new-array v1, v0, [Lcom/local/p5home/TopBarSlot;

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_f

    invoke-static {v2}, Lcom/local/p5home/TopBarSlot;->original(I)Lcom/local/p5home/TopBarSlot;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_f
    return-object v1
.end method

.method static disabled()Lcom/local/p5home/TopBarStore$Snapshot;
    .registers 8

    .line 29
    new-instance v7, Lcom/local/p5home/TopBarStore$Snapshot;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static {}, Lcom/local/p5home/TopBarStore;->defaults()[Lcom/local/p5home/TopBarSlot;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/local/p5home/TopBarStore$Snapshot;-><init>(ZJ[Lcom/local/p5home/TopBarSlot;ZZ)V

    return-object v7
.end method

.method private static edit(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;
    .registers 9

    .line 37
    const-string v0, "revision"

    invoke-static {p0}, Lcom/local/p5home/TopBarStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-wide/16 v1, 0x0

    :try_start_8
    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3
    :try_end_c
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_c} :catch_d

    goto :goto_f

    :catch_d
    move-exception v3

    move-wide v3, v1

    :goto_f
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v5, "schema"

    const/4 v6, 0x1

    invoke-interface {p0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-wide v5, 0x7fffffffffffffffL

    cmp-long v5, v3, v5

    const-wide/16 v6, 0x1

    if-nez v5, :cond_26

    goto :goto_2b

    :cond_26
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    add-long/2addr v6, v1

    :goto_2b
    invoke-interface {p0, v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    return-object p0
.end method

.method static fetch(Landroid/content/Context;)Lcom/local/p5home/TopBarStore$Snapshot;
    .registers 4

    .line 79
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/local/p5home/TopBarStore;->URI:Landroid/net/Uri;

    const-string v1, "get_config"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0}, Lcom/local/p5home/TopBarStore;->decode(Landroid/os/Bundle;)Lcom/local/p5home/TopBarStore$Snapshot;

    move-result-object p0
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_11} :catch_12

    return-object p0

    :catch_12
    move-exception p0

    invoke-static {}, Lcom/local/p5home/TopBarStore;->disabled()Lcom/local/p5home/TopBarStore$Snapshot;

    move-result-object p0

    return-object p0
.end method

.method static launcher(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/local/p5home/TopBarSlot;
    .registers 9

    .line 50
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p2}, Lcom/local/p5home/TopBarSlot;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p3}, Lcom/local/p5home/TopBarSlot;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 51
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-static {p1}, Lcom/local/p5home/TopBarSlot;->original(I)Lcom/local/p5home/TopBarSlot;

    move-result-object p0

    return-object p0

    .line 52
    :cond_14
    invoke-static {p2}, Lcom/local/p5home/TopBarSlot;->validPackage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1b

    return-object v0

    .line 53
    :cond_1b
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p3

    if-eqz p3, :cond_3b

    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_32

    goto :goto_3b

    :cond_32
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p3

    goto :goto_3c

    :cond_3b
    :goto_3b
    return-object v0

    .line 54
    :cond_3c
    :goto_3c
    const-string v1, "."

    invoke-virtual {p3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_55

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 55
    :cond_55
    new-instance v1, Lcom/local/p5home/TopBarSlot;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/local/p5home/TopBarSlot;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/content/ComponentName;

    invoke-direct {p1, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p4

    const/4 v2, 0x0

    invoke-virtual {p4, p1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p4

    .line 57
    iget-boolean v3, p4, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v3, :cond_bf

    iget-boolean v3, p4, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-eqz v3, :cond_bf

    iget-object v3, p4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_bf

    iget-object p4, p4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean p4, p4, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez p4, :cond_7b

    goto :goto_bf

    .line 58
    :cond_7b
    new-instance p4, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {p4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {p4, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p4

    invoke-virtual {p4, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 60
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_98
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_bd

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    iget-object p4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz p4, :cond_98

    iget-object p4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p4, p4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_98

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_ba} :catch_c0

    if-eqz p1, :cond_98

    return-object v1

    .line 61
    :cond_bd
    nop

    .line 62
    return-object v0

    .line 57
    :cond_bf
    :goto_bf
    return-object v0

    .line 61
    :catch_c0
    move-exception p0

    return-object v0
.end method

.method public static declared-synchronized load(Landroid/content/Context;)Lcom/local/p5home/TopBarStore$Snapshot;
    .registers 11

    const-class v0, Lcom/local/p5home/TopBarStore;

    monitor-enter v0

    .line 31
    :try_start_3
    invoke-static {p0}, Lcom/local/p5home/TopBarStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "schema"

    const/4 v2, 0x1

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v2, :cond_16

    invoke-static {}, Lcom/local/p5home/TopBarStore;->disabled()Lcom/local/p5home/TopBarStore$Snapshot;

    move-result-object p0
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_14} :catch_a0
    .catchall {:try_start_3 .. :try_end_14} :catchall_9e

    monitor-exit v0

    return-object p0

    :cond_16
    :try_start_16
    invoke-static {}, Lcom/local/p5home/TopBarStore;->defaults()[Lcom/local/p5home/TopBarSlot;

    move-result-object v5

    .line 32
    const/4 v1, 0x0

    move v2, v1

    :goto_1c
    const/4 v3, 0x7

    if-ge v2, v3, :cond_74

    new-instance v3, Lcom/local/p5home/TopBarSlot;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pkg"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, ""

    invoke-interface {p0, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "act"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-interface {p0, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "label"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-interface {p0, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v2, v4, v6, v7}, Lcom/local/p5home/TopBarSlot;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 33
    :cond_74
    const-string v2, "revision"

    const-wide/16 v3, 0x0

    invoke-interface {p0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long v2, v6, v3

    if-gez v2, :cond_86

    invoke-static {}, Lcom/local/p5home/TopBarStore;->disabled()Lcom/local/p5home/TopBarStore$Snapshot;

    move-result-object p0
    :try_end_84
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_84} :catch_a0
    .catchall {:try_start_16 .. :try_end_84} :catchall_9e

    monitor-exit v0

    return-object p0

    .line 34
    :cond_86
    :try_start_86
    new-instance v8, Lcom/local/p5home/TopBarStore$Snapshot;

    const-string v2, "enabled"

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "migrationAttempted"

    invoke-interface {p0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    const/4 v9, 0x1

    move-object v1, v8

    move-wide v3, v6

    move v6, p0

    move v7, v9

    invoke-direct/range {v1 .. v7}, Lcom/local/p5home/TopBarStore$Snapshot;-><init>(ZJ[Lcom/local/p5home/TopBarSlot;ZZ)V
    :try_end_9c
    .catch Ljava/lang/RuntimeException; {:try_start_86 .. :try_end_9c} :catch_a0
    .catchall {:try_start_86 .. :try_end_9c} :catchall_9e

    monitor-exit v0

    return-object v8

    .line 30
    :catchall_9e
    move-exception p0

    goto :goto_a7

    .line 35
    :catch_a0
    move-exception p0

    :try_start_a1
    invoke-static {}, Lcom/local/p5home/TopBarStore;->disabled()Lcom/local/p5home/TopBarStore$Snapshot;

    move-result-object p0
    :try_end_a5
    .catchall {:try_start_a1 .. :try_end_a5} :catchall_9e

    monitor-exit v0

    return-object p0

    .line 30
    :goto_a7
    monitor-exit v0

    throw p0
.end method

.method static declared-synchronized localStatus(Landroid/content/Context;)Landroid/os/Bundle;
    .registers 10

    const-class v0, Lcom/local/p5home/TopBarStore;

    monitor-enter v0

    .line 94
    :try_start_3
    invoke-static {p0}, Lcom/local/p5home/TopBarStore;->load(Landroid/content/Context;)Lcom/local/p5home/TopBarStore$Snapshot;

    move-result-object p0

    new-instance v1, Landroid/os/Bundle;

    sget-object v2, Lcom/local/p5home/TopBarStore;->heartbeat:Landroid/os/Bundle;

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-string v4, "lastSeen"

    const-wide/16 v5, 0x0

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    sub-long/2addr v2, v7

    const-string v4, "lastSeen"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v4, :cond_31

    cmp-long v4, v2, v5

    if-ltz v4, :cond_31

    const-wide/16 v4, 0x3a98

    cmp-long v2, v2, v4

    if-gtz v2, :cond_31

    move v2, v7

    goto :goto_32

    :cond_31
    move v2, v8

    .line 95
    :goto_32
    const-string v3, "enabled"

    iget-boolean v4, p0, Lcom/local/p5home/TopBarStore$Snapshot;->enabled:Z

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "valid"

    iget-boolean v4, p0, Lcom/local/p5home/TopBarStore$Snapshot;->valid:Z

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "revision"

    iget-wide v4, p0, Lcom/local/p5home/TopBarStore$Snapshot;->revision:J

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v3, "migrationAttempted"

    iget-boolean v4, p0, Lcom/local/p5home/TopBarStore$Snapshot;->migrationAttempted:Z

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "hookReady"

    if-eqz v2, :cond_5c

    const-string v4, "boundCount"

    invoke-virtual {v1, v4, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_5c

    move v4, v7

    goto :goto_5d

    :cond_5c
    move v4, v8

    :goto_5d
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "restorePending"

    iget-boolean v4, p0, Lcom/local/p5home/TopBarStore$Snapshot;->enabled:Z

    if-nez v4, :cond_79

    if-eqz v2, :cond_79

    const-string v4, "interceptedCount"

    invoke-virtual {v1, v4, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-gtz v4, :cond_78

    const-string v4, "appliedCount"

    invoke-virtual {v1, v4, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_79

    :cond_78
    goto :goto_7a

    :cond_79
    move v7, v8

    :goto_7a
    invoke-virtual {v1, v3, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 96
    if-nez v2, :cond_87

    const-string p0, "code"

    const-string v2, "HOOK_NOT_SEEN"

    :goto_83
    invoke-virtual {v1, p0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_90

    :cond_87
    iget-boolean p0, p0, Lcom/local/p5home/TopBarStore$Snapshot;->valid:Z

    if-nez p0, :cond_90

    const-string p0, "code"

    const-string v2, "CONFIG_INVALID"
    :try_end_8f
    .catchall {:try_start_3 .. :try_end_8f} :catchall_92

    goto :goto_83

    :cond_90
    :goto_90
    monitor-exit v0

    return-object v1

    .line 93
    :catchall_92
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static migrateLegacyOnce(Landroid/content/Context;)Z
    .registers 13

    .line 67
    const-class v0, Lcom/local/p5home/TopBarStore;

    monitor-enter v0

    :try_start_3
    invoke-static {p0}, Lcom/local/p5home/TopBarStore;->load(Landroid/content/Context;)Lcom/local/p5home/TopBarStore$Snapshot;

    move-result-object v1

    iget-boolean v2, v1, Lcom/local/p5home/TopBarStore$Snapshot;->valid:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_fd

    iget-boolean v2, v1, Lcom/local/p5home/TopBarStore$Snapshot;->enabled:Z

    if-nez v2, :cond_fd

    iget-boolean v2, v1, Lcom/local/p5home/TopBarStore$Snapshot;->migrationAttempted:Z

    if-eqz v2, :cond_16

    goto/16 :goto_fd

    :cond_16
    iget-object v1, v1, Lcom/local/p5home/TopBarStore$Snapshot;->slots:[Lcom/local/p5home/TopBarSlot;

    array-length v2, v1

    move v4, v3

    :goto_1a
    if-ge v4, v2, :cond_29

    aget-object v5, v1, v4

    invoke-virtual {v5}, Lcom/local/p5home/TopBarSlot;->isCustom()Z

    move-result v5

    if-eqz v5, :cond_26

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_ff

    return v3

    :cond_26
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 68
    :cond_29
    :try_start_29
    invoke-static {p0}, Lcom/local/p5home/TopBarStore;->edit(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "migrationAttempted"

    const/4 v4, 0x1

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1
    :try_end_38
    .catch Ljava/lang/RuntimeException; {:try_start_29 .. :try_end_38} :catch_fa
    .catchall {:try_start_29 .. :try_end_38} :catchall_ff

    if-nez v1, :cond_3c

    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_ff

    return v3

    :cond_3c
    :try_start_3c
    invoke-static {p0}, Lcom/local/p5home/TopBarStore;->load(Landroid/content/Context;)Lcom/local/p5home/TopBarStore$Snapshot;

    move-result-object v1

    iget-wide v1, v1, Lcom/local/p5home/TopBarStore$Snapshot;->revision:J
    :try_end_42
    .catch Ljava/lang/RuntimeException; {:try_start_3c .. :try_end_42} :catch_fa
    .catchall {:try_start_3c .. :try_end_42} :catchall_ff

    :try_start_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_ff

    .line 70
    :try_start_43
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v5, "com.local.cartopbar"

    invoke-virtual {v0, v5, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "content://com.local.cartopbar.provider"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "get_slots"

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v6, v7, v7}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_5d} :catch_f8

    .line 71
    if-nez v0, :cond_60

    return v3

    :cond_60
    invoke-static {}, Lcom/local/p5home/TopBarStore;->defaults()[Lcom/local/p5home/TopBarSlot;

    move-result-object v5

    .line 72
    move v6, v3

    move v7, v6

    :goto_66
    const/4 v8, 0x7

    if-ge v6, v8, :cond_bb

    :try_start_69
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "slot_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0x3e8

    if-le v9, v10, :cond_8b

    goto :goto_b8

    :cond_8b
    const-string v9, "\\|"

    const/4 v10, -0x1

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    const/4 v10, 0x3

    if-ne v9, v10, :cond_b8

    aget-object v9, v8, v3

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_9f

    goto :goto_b8

    :cond_9f
    aget-object v9, v8, v3

    aget-object v10, v8, v4

    const/4 v11, 0x2

    aget-object v8, v8, v11

    invoke-static {p0, v6, v9, v10, v8}, Lcom/local/p5home/TopBarStore;->launcher(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/local/p5home/TopBarSlot;

    move-result-object v8

    if-eqz v8, :cond_b8

    invoke-virtual {v8}, Lcom/local/p5home/TopBarSlot;->isCustom()Z

    move-result v9

    if-eqz v9, :cond_b8

    aput-object v8, v5, v6
    :try_end_b4
    .catch Ljava/lang/RuntimeException; {:try_start_69 .. :try_end_b4} :catch_b7

    add-int/lit8 v7, v7, 0x1

    goto :goto_b8

    :catch_b7
    move-exception v8

    :cond_b8
    :goto_b8
    add-int/lit8 v6, v6, 0x1

    goto :goto_66

    .line 73
    :cond_bb
    const-class v0, Lcom/local/p5home/TopBarStore;

    monitor-enter v0

    :try_start_be
    invoke-static {p0}, Lcom/local/p5home/TopBarStore;->load(Landroid/content/Context;)Lcom/local/p5home/TopBarStore$Snapshot;

    move-result-object v4

    if-eqz v7, :cond_f3

    iget-boolean v6, v4, Lcom/local/p5home/TopBarStore$Snapshot;->valid:Z

    if-eqz v6, :cond_f3

    iget-boolean v6, v4, Lcom/local/p5home/TopBarStore$Snapshot;->enabled:Z

    if-nez v6, :cond_f3

    iget-wide v6, v4, Lcom/local/p5home/TopBarStore$Snapshot;->revision:J

    cmp-long v1, v6, v1

    if-eqz v1, :cond_d3

    goto :goto_f3

    .line 74
    :cond_d3
    invoke-static {p0}, Lcom/local/p5home/TopBarStore;->edit(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "enabled"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    array-length v2, v5

    :goto_de
    if-ge v3, v2, :cond_e8

    aget-object v4, v5, v3

    invoke-static {v1, v4}, Lcom/local/p5home/TopBarStore;->write(Landroid/content/SharedPreferences$Editor;Lcom/local/p5home/TopBarSlot;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v3, v3, 0x1

    goto :goto_de

    :cond_e8
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    if-eqz v1, :cond_f1

    invoke-static {p0}, Lcom/local/p5home/TopBarStore;->changed(Landroid/content/Context;)V

    :cond_f1
    monitor-exit v0

    return v1

    .line 73
    :cond_f3
    :goto_f3
    monitor-exit v0

    return v3

    .line 74
    :catchall_f5
    move-exception p0

    monitor-exit v0
    :try_end_f7
    .catchall {:try_start_be .. :try_end_f7} :catchall_f5

    throw p0

    .line 70
    :catch_f8
    move-exception p0

    return v3

    .line 68
    :catch_fa
    move-exception p0

    :try_start_fb
    monitor-exit v0

    return v3

    .line 67
    :cond_fd
    :goto_fd
    monitor-exit v0

    return v3

    .line 68
    :catchall_ff
    move-exception p0

    monitor-exit v0
    :try_end_101
    .catchall {:try_start_fb .. :try_end_101} :catchall_ff

    throw p0
.end method

.method private static prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    .line 27
    if-eqz p0, :cond_16

    const-string v0, "com.local.p5home"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "g3_topbar_v1"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0

    :cond_16
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Companion context required"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static declared-synchronized recordHeartbeat(Landroid/os/Bundle;)V
    .registers 17

    move-object/from16 v0, p0

    const-class v1, Lcom/local/p5home/TopBarStore;

    monitor-enter v1

    .line 88
    :try_start_5
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "boundCount"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v5, "appliedCount"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "interceptedCount"

    invoke-virtual {v0, v6, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    const-string v7, "boundMask"

    invoke-virtual {v0, v7, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    const-string v8, "overflowCount"

    invoke-virtual {v0, v8, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-ltz v3, :cond_106

    const/4 v9, 0x7

    if-gt v3, v9, :cond_106

    if-ltz v5, :cond_106

    if-gt v5, v3, :cond_106

    if-lt v6, v5, :cond_106

    if-gt v6, v3, :cond_106

    if-ltz v7, :cond_106

    const/16 v10, 0x7f

    if-gt v7, v10, :cond_106

    invoke-static {v7}, Ljava/lang/Integer;->bitCount(I)I

    move-result v10

    if-ne v10, v3, :cond_106

    if-ltz v8, :cond_106

    if-le v8, v5, :cond_48

    goto/16 :goto_106

    .line 89
    :cond_48
    const/16 v10, 0x8

    new-array v11, v10, [Ljava/lang/String;

    const-string v12, "iconWidths"

    aput-object v12, v11, v4

    const-string v12, "iconHeights"

    const/4 v13, 0x1

    aput-object v12, v11, v13

    const-string v12, "availableWidths"

    const/4 v13, 0x2

    aput-object v12, v11, v13

    const-string v12, "availableHeights"

    const/4 v13, 0x3

    aput-object v12, v11, v13

    const-string v12, "drawableWidths"

    const/4 v13, 0x4

    aput-object v12, v11, v13

    const-string v12, "drawableHeights"

    const/4 v13, 0x5

    aput-object v12, v11, v13

    const-string v12, "renderedWidths"

    const/4 v9, 0x6

    aput-object v12, v11, v9

    const-string v12, "renderedHeights"

    const/4 v13, 0x7

    aput-object v12, v11, v13

    const/4 v9, 0x7

    move v12, v4

    :goto_75
    if-ge v12, v10, :cond_a8

    aget-object v13, v11, v12

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v14

    if-eqz v14, :cond_96

    array-length v15, v14

    if-eq v15, v9, :cond_83

    goto :goto_96

    :cond_83
    array-length v15, v14

    :goto_84
    if-ge v4, v15, :cond_98

    aget v9, v14, v4
    :try_end_88
    .catchall {:try_start_5 .. :try_end_88} :catchall_108

    if-ltz v9, :cond_96

    const v10, 0xffff

    if-le v9, v10, :cond_90

    goto :goto_96

    :cond_90
    add-int/lit8 v4, v4, 0x1

    const/4 v9, 0x7

    const/16 v10, 0x8

    goto :goto_84

    :cond_96
    :goto_96
    monitor-exit v1

    return-void

    :cond_98
    :try_start_98
    invoke-virtual {v14}, [I->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    invoke-virtual {v2, v13, v4}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    add-int/lit8 v12, v12, 0x1

    const/4 v4, 0x0

    const/4 v9, 0x7

    const/16 v10, 0x8

    goto :goto_75

    .line 90
    :cond_a8
    const-string v4, "code"

    const-string v9, ""

    invoke-virtual {v0, v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v9, "[A-Z_]{1,40}"

    invoke-virtual {v4, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9
    :try_end_b6
    .catchall {:try_start_98 .. :try_end_b6} :catchall_108

    if-nez v9, :cond_ba

    monitor-exit v1

    return-void

    .line 91
    :cond_ba
    :try_start_ba
    const-string v9, "loadedBuild"

    const-string v10, "legacy"

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v9, "loadedBuild"

    const-string v10, "[A-Za-z0-9_.-]{1,64}"

    invoke-virtual {v0, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_cd

    goto :goto_cf

    :cond_cd
    const-string v0, "unknown"

    :goto_cf
    invoke-virtual {v2, v9, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v0, "boundCount"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "boundMask"

    invoke-virtual {v2, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "appliedCount"

    invoke-virtual {v2, v0, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "interceptedCount"

    invoke-virtual {v2, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "overflowCount"

    invoke-virtual {v2, v0, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "hookPid"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "lastSeen"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-virtual {v2, v0, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "code"

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/local/p5home/TopBarStore;->heartbeat:Landroid/os/Bundle;
    :try_end_104
    .catchall {:try_start_ba .. :try_end_104} :catchall_108

    .line 93
    monitor-exit v1

    return-void

    .line 88
    :cond_106
    :goto_106
    monitor-exit v1

    return-void

    .line 87
    :catchall_108
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized resetAll(Landroid/content/Context;)Z
    .registers 6

    const-class v0, Lcom/local/p5home/TopBarStore;

    monitor-enter v0

    .line 46
    const/4 v1, 0x0

    :try_start_4
    invoke-static {p0}, Lcom/local/p5home/TopBarStore;->edit(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "enabled"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    move v3, v1

    :goto_f
    const/4 v4, 0x7

    if-ge v3, v4, :cond_1c

    invoke-static {v3}, Lcom/local/p5home/TopBarSlot;->original(I)Lcom/local/p5home/TopBarSlot;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/local/p5home/TopBarStore;->write(Landroid/content/SharedPreferences$Editor;Lcom/local/p5home/TopBarSlot;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_1c
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-static {p0}, Lcom/local/p5home/TopBarStore;->changed(Landroid/content/Context;)V
    :try_end_25
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_25} :catch_2a
    .catchall {:try_start_4 .. :try_end_25} :catchall_27

    :cond_25
    monitor-exit v0

    return v2

    .line 46
    :catchall_27
    move-exception p0

    monitor-exit v0

    throw p0

    .line 46
    :catch_2a
    move-exception p0

    monitor-exit v0

    return v1
.end method

.method public static declared-synchronized resetSlot(Landroid/content/Context;I)Z
    .registers 5

    const-class v0, Lcom/local/p5home/TopBarStore;

    monitor-enter v0

    .line 45
    const/4 v1, 0x0

    if-ltz p1, :cond_25

    const/4 v2, 0x7

    if-lt p1, v2, :cond_a

    goto :goto_25

    :cond_a
    :try_start_a
    invoke-static {p0}, Lcom/local/p5home/TopBarStore;->edit(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-static {p1}, Lcom/local/p5home/TopBarSlot;->original(I)Lcom/local/p5home/TopBarSlot;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/local/p5home/TopBarStore;->write(Landroid/content/SharedPreferences$Editor;Lcom/local/p5home/TopBarSlot;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    if-eqz p1, :cond_1f

    invoke-static {p0}, Lcom/local/p5home/TopBarStore;->changed(Landroid/content/Context;)V
    :try_end_1f
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_1f} :catch_24
    .catchall {:try_start_a .. :try_end_1f} :catchall_21

    :cond_1f
    monitor-exit v0

    return p1

    .line 45
    :catchall_21
    move-exception p0

    monitor-exit v0

    throw p0

    .line 45
    :catch_24
    move-exception p0

    :cond_25
    :goto_25
    monitor-exit v0

    return v1
.end method

.method public static declared-synchronized setEnabled(Landroid/content/Context;Z)Z
    .registers 6

    const-class v0, Lcom/local/p5home/TopBarStore;

    monitor-enter v0

    .line 39
    const/4 v1, 0x0

    if-eqz p1, :cond_10

    :try_start_6
    invoke-static {p0}, Lcom/local/p5home/TopBarStore;->load(Landroid/content/Context;)Lcom/local/p5home/TopBarStore$Snapshot;

    move-result-object v2

    iget-boolean v2, v2, Lcom/local/p5home/TopBarStore$Snapshot;->valid:Z
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_c} :catch_28
    .catchall {:try_start_6 .. :try_end_c} :catchall_25

    if-nez v2, :cond_10

    :goto_e
    monitor-exit v0

    return v1

    :cond_10
    :try_start_10
    invoke-static {p0}, Lcom/local/p5home/TopBarStore;->edit(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "enabled"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    if-eqz p1, :cond_23

    invoke-static {p0}, Lcom/local/p5home/TopBarStore;->changed(Landroid/content/Context;)V
    :try_end_23
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_23} :catch_28
    .catchall {:try_start_10 .. :try_end_23} :catchall_25

    :cond_23
    monitor-exit v0

    return p1

    .line 39
    :catchall_25
    move-exception p0

    monitor-exit v0

    throw p0

    .line 39
    :catch_28
    move-exception p0

    goto :goto_e
.end method

.method public static declared-synchronized setSlot(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    const-class v0, Lcom/local/p5home/TopBarStore;

    monitor-enter v0

    .line 41
    const/4 v1, 0x0

    if-ltz p1, :cond_10

    const/4 v2, 0x7

    if-lt p1, v2, :cond_a

    goto :goto_10

    :cond_a
    :try_start_a
    invoke-static {p0, p1, p2, p3, p4}, Lcom/local/p5home/TopBarStore;->launcher(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/local/p5home/TopBarSlot;

    move-result-object p1
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_e} :catch_28
    .catchall {:try_start_a .. :try_end_e} :catchall_25

    if-nez p1, :cond_12

    :cond_10
    :goto_10
    monitor-exit v0

    return v1

    .line 42
    :cond_12
    :try_start_12
    invoke-static {p0}, Lcom/local/p5home/TopBarStore;->edit(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/local/p5home/TopBarStore;->write(Landroid/content/SharedPreferences$Editor;Lcom/local/p5home/TopBarSlot;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    if-eqz p1, :cond_23

    invoke-static {p0}, Lcom/local/p5home/TopBarStore;->changed(Landroid/content/Context;)V
    :try_end_23
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_23} :catch_28
    .catchall {:try_start_12 .. :try_end_23} :catchall_25

    :cond_23
    monitor-exit v0

    return p1

    .line 40
    :catchall_25
    move-exception p0

    monitor-exit v0

    throw p0

    .line 43
    :catch_28
    move-exception p0

    monitor-exit v0

    return v1
.end method

.method public static status(Landroid/content/Context;)Landroid/os/Bundle;
    .registers 4

    .line 97
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/local/p5home/TopBarStore;->URI:Landroid/net/Uri;

    const-string v1, "status"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_d} :catch_10

    if-eqz p0, :cond_11

    return-object p0

    :catch_10
    move-exception p0

    :cond_11
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "hookReady"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "code"

    const-string v1, "STATUS_UNAVAILABLE"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private static write(Landroid/content/SharedPreferences$Editor;Lcom/local/p5home/TopBarSlot;)Landroid/content/SharedPreferences$Editor;
    .registers 4

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pkg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/local/p5home/TopBarSlot;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/local/p5home/TopBarSlot;->packageName:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "act"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/local/p5home/TopBarSlot;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/local/p5home/TopBarSlot;->activityName:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "label"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/local/p5home/TopBarSlot;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/local/p5home/TopBarSlot;->label:Ljava/lang/String;

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    return-object p0
.end method

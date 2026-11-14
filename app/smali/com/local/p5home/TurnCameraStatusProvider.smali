.class public final Lcom/local/p5home/TurnCameraStatusProvider;
.super Landroid/content/ContentProvider;
.source "TurnCameraStatusProvider.java"


# static fields
.field private static final STATE:Lcom/local/p5home/TurnCameraStatusState;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 15
    new-instance v0, Lcom/local/p5home/TurnCameraStatusState;

    invoke-direct {v0}, Lcom/local/p5home/TurnCameraStatusState;-><init>()V

    sput-object v0, Lcom/local/p5home/TurnCameraStatusProvider;->STATE:Lcom/local/p5home/TurnCameraStatusState;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private static hex([B)Ljava/lang/String;
    .registers 7

    .line 47
    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [C

    const/4 v2, 0x0

    :goto_c
    array-length v3, p0

    if-ge v2, v3, :cond_26

    mul-int/lit8 v3, v2, 0x2

    aget-byte v4, p0, v2

    and-int/lit16 v5, v4, 0xff

    ushr-int/lit8 v5, v5, 0x4

    aget-char v5, v0, v5

    aput-char v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v0, v4

    aput-char v4, v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_26
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 20

    .line 18
    move-object/from16 v0, p1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/local/p5home/TurnCameraStatusProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 19
    const-string v3, "status"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v4, 0x3e8

    if-eqz v3, :cond_7e

    .line 20
    invoke-static {v1, v2, v4}, Lcom/local/p5home/TurnCameraStatusPolicy;->allowRead(III)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 21
    sget-object v0, Lcom/local/p5home/TurnCameraStatusProvider;->STATE:Lcom/local/p5home/TurnCameraStatusState;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/local/p5home/TurnCameraStatusState;->snapshot(J)Lcom/local/p5home/TurnCameraStatusState$Snapshot;

    move-result-object v0

    .line 22
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "fresh"

    iget-boolean v3, v0, Lcom/local/p5home/TurnCameraStatusState$Snapshot;->fresh:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "hookReady"

    iget-boolean v3, v0, Lcom/local/p5home/TurnCameraStatusState$Snapshot;->fresh:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 23
    const-string v2, "observerAdded"

    iget-boolean v3, v0, Lcom/local/p5home/TurnCameraStatusState$Snapshot;->observerAdded:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "lampCallbackSeen"

    iget-boolean v3, v0, Lcom/local/p5home/TurnCameraStatusState$Snapshot;->lampSeen:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 24
    const-string v2, "connectionSeen"

    iget-boolean v3, v0, Lcom/local/p5home/TurnCameraStatusState$Snapshot;->connectionSeen:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "connected"

    iget-boolean v3, v0, Lcom/local/p5home/TurnCameraStatusState$Snapshot;->connected:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 25
    const-string v2, "lampCallbackFault"

    iget-boolean v3, v0, Lcom/local/p5home/TurnCameraStatusState$Snapshot;->lampFault:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "gearCallbackSeen"

    iget-boolean v3, v0, Lcom/local/p5home/TurnCameraStatusState$Snapshot;->gearSeen:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 26
    const-string v2, "gearCallbackFault"

    iget-boolean v3, v0, Lcom/local/p5home/TurnCameraStatusState$Snapshot;->gearFault:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "ageMs"

    iget-wide v3, v0, Lcom/local/p5home/TurnCameraStatusState$Snapshot;->ageMs:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object v1

    .line 20
    :cond_76
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Status caller not allowed"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_7e
    const-string v3, "begin"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_97

    const-string v5, "publish"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8f

    goto :goto_97

    :cond_8f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown status method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_97
    :goto_97
    nop

    .line 30
    invoke-virtual/range {p0 .. p0}, Lcom/local/p5home/TurnCameraStatusProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/local/p5home/TurnCameraStatusIdentity;->verified(Landroid/content/Context;I)Z

    move-result v5

    invoke-static {v1, v2, v4, v1, v5}, Lcom/local/p5home/TurnCameraStatusPolicy;->allowReport(IIIIZ)Z

    move-result v1

    if-eqz v1, :cond_15d

    .line 32
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 33
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "session"

    if-eqz v0, :cond_df

    .line 34
    const/16 v0, 0x10

    new-array v0, v0, [B

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v3, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-static {v0}, Lcom/local/p5home/TurnCameraStatusProvider;->hex([B)Ljava/lang/String;

    move-result-object v0

    .line 35
    sget-object v3, Lcom/local/p5home/TurnCameraStatusProvider;->STATE:Lcom/local/p5home/TurnCameraStatusState;

    invoke-virtual {v3, v5, v0, v13, v14}, Lcom/local/p5home/TurnCameraStatusState;->begin(ILjava/lang/String;J)Z

    move-result v3

    if-eqz v3, :cond_d7

    .line 36
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 35
    :cond_d7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid sender session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_df
    if-nez p3, :cond_e7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_e9

    :cond_e7
    move-object/from16 v0, p3

    .line 40
    :goto_e9
    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_155

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_155

    const-string v3, "sequence"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/Long;

    if-eqz v4, :cond_155

    .line 41
    const-string v4, "observer"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Ljava/lang/Boolean;

    if-eqz v6, :cond_155

    const-string v6, "connection"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Ljava/lang/Integer;

    if-eqz v7, :cond_155

    .line 42
    const-string v7, "lamp"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Ljava/lang/Integer;

    if-eqz v8, :cond_155

    const-string v8, "gear"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Ljava/lang/Integer;

    if-eqz v9, :cond_155

    .line 44
    sget-object v9, Lcom/local/p5home/TurnCameraStatusProvider;->STATE:Lcom/local/p5home/TurnCameraStatusState;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    move-object v4, v9

    move-object v6, v2

    move-wide v7, v10

    move v9, v3

    move v10, v12

    move v11, v15

    move v12, v0

    invoke-virtual/range {v4 .. v14}, Lcom/local/p5home/TurnCameraStatusState;->publish(ILjava/lang/String;JZIIIJ)Z

    move-result v0

    const-string v2, "accepted"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 45
    return-object v1

    .line 43
    :cond_155
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid status snapshot"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_15d
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Verified OEM sender required"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 4

    .line 51
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 2

    .line 49
    const-string p1, "vnd.android.cursor.item/vnd.p5home.turncamera-status"

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 3

    .line 50
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public onCreate()Z
    .registers 2

    .line 16
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 6

    .line 48
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    .line 52
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.class public final Lcom/local/p5home/VehicleObservationProvider;
.super Landroid/content/ContentProvider;
.source "VehicleObservationProvider.java"


# static fields
.field private static final KEY:Ljava/lang/String; = "vehicleObservationEnabled"

.field private static final LOCK:Ljava/lang/Object;

.field private static final TIMES:[J

.field static final URI:Landroid/net/Uri;

.field private static final VALUES:[D

.field private static cameraReady:Z

.field private static generation:Ljava/lang/String;

.field private static lccConvert:Z

.field private static ready:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 16
    const-string v0, "content://com.local.p5home.vehicleobserver"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/local/p5home/VehicleObservationProvider;->URI:Landroid/net/Uri;

    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/local/p5home/VehicleObservationProvider;->LOCK:Ljava/lang/Object;

    .line 20
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/local/p5home/VehicleObservationProvider;->generation:Ljava/lang/String;

    .line 21
    const/16 v0, 0x9

    new-array v1, v0, [D

    sput-object v1, Lcom/local/p5home/VehicleObservationProvider;->VALUES:[D

    .line 22
    new-array v0, v0, [J

    sput-object v0, Lcom/local/p5home/VehicleObservationProvider;->TIMES:[J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private static clear()V
    .registers 4

    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Lcom/local/p5home/VehicleObservationProvider;->ready:Z

    sput-boolean v0, Lcom/local/p5home/VehicleObservationProvider;->cameraReady:Z

    sput-boolean v0, Lcom/local/p5home/VehicleObservationProvider;->lccConvert:Z

    :goto_7
    sget-object v1, Lcom/local/p5home/VehicleObservationProvider;->TIMES:[J

    array-length v2, v1

    if-ge v0, v2, :cond_19

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    sget-object v1, Lcom/local/p5home/VehicleObservationProvider;->VALUES:[D

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_19
    return-void
.end method

.method static clearRecords()V
    .registers 2

    .line 29
    sget-object v0, Lcom/local/p5home/VehicleObservationProvider;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/local/p5home/VehicleObservationProvider;->clear()V

    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method static enabled(Landroid/content/Context;)Z
    .registers 3

    .line 24
    invoke-static {p0}, Lcom/local/p5home/ConfigStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "vehicleObservationEnabled"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method static setEnabled(Landroid/content/Context;Z)Z
    .registers 4

    .line 25
    sget-object v0, Lcom/local/p5home/VehicleObservationProvider;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 26
    :try_start_3
    invoke-static {p0}, Lcom/local/p5home/ConfigStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v1, "vehicleObservationEnabled"

    invoke-interface {p0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p0

    if-nez p0, :cond_1a

    monitor-exit v0

    const/4 p0, 0x0

    return p0

    .line 27
    :cond_1a
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/local/p5home/VehicleObservationProvider;->generation:Ljava/lang/String;

    invoke-static {}, Lcom/local/p5home/VehicleObservationProvider;->clear()V

    monitor-exit v0

    const/4 p0, 0x1

    return p0

    .line 28
    :catchall_2a
    move-exception p0

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw p0
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 13

    .line 32
    invoke-virtual {p0}, Lcom/local/p5home/VehicleObservationProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_204

    .line 33
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 35
    const/16 v2, 0x3e8

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v2, :cond_18

    move v2, v4

    goto :goto_19

    :cond_18
    move v2, v3

    .line 36
    :goto_19
    const-string v5, "status"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_30

    if-nez v2, :cond_30

    invoke-static {p2}, Lcom/local/p5home/VehicleObservationProvider;->enabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-static {p2, v0}, Lcom/local/p5home/TurnCameraStatusIdentity;->verified(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_30

    move v3, v4

    .line 37
    :cond_30
    sget-object v5, Lcom/local/p5home/VehicleObservationProvider;->LOCK:Ljava/lang/Object;

    monitor-enter v5

    .line 38
    :try_start_33
    const-string v6, "status"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x5

    const/16 v8, 0x8

    if-eqz v6, :cond_ea

    .line 39
    if-ne v0, v1, :cond_e2

    .line 40
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p3, "enabled"

    invoke-static {p2}, Lcom/local/p5home/VehicleObservationProvider;->enabled(Landroid/content/Context;)Z

    move-result p2

    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p2, "ready"

    sget-boolean p3, Lcom/local/p5home/VehicleObservationProvider;->ready:Z

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p2, "cameraReady"

    sget-boolean p3, Lcom/local/p5home/VehicleObservationProvider;->cameraReady:Z

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 41
    nop

    :goto_5d
    if-gt v4, v7, :cond_96

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "value"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lcom/local/p5home/VehicleObservationProvider;->VALUES:[D

    aget-wide v0, p3, v4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "time"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lcom/local/p5home/VehicleObservationProvider;->TIMES:[J

    aget-wide v0, p3, v4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5d

    .line 42
    :cond_96
    const/4 p2, 0x7

    :goto_97
    if-gt p2, v8, :cond_d0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "value"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    sget-object v0, Lcom/local/p5home/VehicleObservationProvider;->VALUES:[D

    aget-wide v0, v0, p2

    invoke-virtual {p1, p3, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "time"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    sget-object v0, Lcom/local/p5home/VehicleObservationProvider;->TIMES:[J

    aget-wide v0, v0, p2

    invoke-virtual {p1, p3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_97

    .line 43
    :cond_d0
    const-string p2, "lccConvert"

    sget-boolean p3, Lcom/local/p5home/VehicleObservationProvider;->lccConvert:Z

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 44
    const-string p2, "now"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    monitor-exit v5

    return-object p1

    .line 39
    :cond_e2
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Owner only"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 47
    :cond_ea
    if-nez v2, :cond_f7

    if-eqz v3, :cond_ef

    goto :goto_f7

    :cond_ef
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Verified sender required"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 48
    :cond_f7
    :goto_f7
    const-string v0, "config"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_118

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-static {p2}, Lcom/local/p5home/VehicleObservationProvider;->enabled(Landroid/content/Context;)Z

    move-result p2

    const-string p3, "enabled"

    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz p2, :cond_116

    const-string p2, "generation"

    sget-object p3, Lcom/local/p5home/VehicleObservationProvider;->generation:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_116
    monitor-exit v5

    return-object p1

    .line 49
    :cond_118
    const-string v0, "report"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f9

    .line 50
    invoke-static {p2}, Lcom/local/p5home/VehicleObservationProvider;->enabled(Landroid/content/Context;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_129

    monitor-exit v5

    return-object p2

    .line 51
    :cond_129
    if-eqz p3, :cond_1f1

    const-string p1, "kind"

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1f1

    const-string p1, "value"

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Ljava/lang/Double;

    if-eqz p1, :cond_1f1

    const-string p1, "generation"

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Ljava/lang/String;

    if-eqz p1, :cond_1f1

    .line 52
    sget-object p1, Lcom/local/p5home/VehicleObservationProvider;->generation:Ljava/lang/String;

    const-string v0, "generation"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_159

    monitor-exit v5

    return-object p2

    .line 53
    :cond_159
    const-string p1, "kind"

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string p2, "value"

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 54
    if-ne p1, v8, :cond_179

    invoke-virtual {p3}, Landroid/os/Bundle;->size()I

    move-result p2

    const/4 v6, 0x4

    if-ne p2, v6, :cond_1e9

    const-string p2, "convert"

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    instance-of p2, p2, Ljava/lang/Boolean;

    if-eqz p2, :cond_1e9

    goto :goto_180

    :cond_179
    invoke-virtual {p3}, Landroid/os/Bundle;->size()I

    move-result p2

    const/4 v6, 0x3

    if-ne p2, v6, :cond_1e9

    .line 55
    :goto_180
    if-ltz p1, :cond_1e1

    if-gt p1, v8, :cond_1e1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p2

    if-nez p2, :cond_1e1

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p2

    if-nez p2, :cond_1e1

    .line 56
    const/4 p2, 0x6

    if-eqz v2, :cond_197

    if-eq p1, v7, :cond_19e

    if-eq p1, p2, :cond_19e

    :cond_197
    if-eqz v3, :cond_1a6

    if-eq p1, v7, :cond_1a6

    if-ne p1, p2, :cond_19e

    goto :goto_1a6

    :cond_19e
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Wrong sender role"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 57
    :cond_1a6
    :goto_1a6
    if-eqz p1, :cond_1c8

    if-ne p1, p2, :cond_1ab

    goto :goto_1c8

    .line 58
    :cond_1ab
    sget-object p2, Lcom/local/p5home/VehicleObservationProvider;->VALUES:[D

    aput-wide v0, p2, p1

    sget-object p2, Lcom/local/p5home/VehicleObservationProvider;->TIMES:[J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    aput-wide v0, p2, p1

    if-ne p1, v8, :cond_1d5

    const-string p1, "convert"

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    sput-boolean p1, Lcom/local/p5home/VehicleObservationProvider;->lccConvert:Z

    goto :goto_1d5

    .line 57
    :cond_1c8
    :goto_1c8
    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    cmpl-double p2, v0, p2

    if-nez p2, :cond_1d9

    if-nez p1, :cond_1d3

    sput-boolean v4, Lcom/local/p5home/VehicleObservationProvider;->ready:Z

    goto :goto_1d5

    :cond_1d3
    sput-boolean v4, Lcom/local/p5home/VehicleObservationProvider;->cameraReady:Z

    .line 59
    :cond_1d5
    :goto_1d5
    sget-object p1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    monitor-exit v5

    return-object p1

    .line 57
    :cond_1d9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid ready"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 55
    :cond_1e1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid observation"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 54
    :cond_1e9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid fields"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 51
    :cond_1f1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid observation"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 49
    :cond_1f9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unknown method"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 60
    :catchall_201
    move-exception p1

    monitor-exit v5
    :try_end_203
    .catchall {:try_start_33 .. :try_end_203} :catchall_201

    throw p1

    .line 32
    :cond_204
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Context unavailable"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 4

    .line 65
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 2

    .line 63
    const-string p1, "vnd.android.cursor.item/vnd.p5home.vehicle-observation"

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 3

    .line 64
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public onCreate()Z
    .registers 2

    .line 23
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 6

    .line 62
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    .line 66
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

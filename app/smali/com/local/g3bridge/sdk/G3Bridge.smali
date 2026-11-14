.class public final Lcom/local/g3bridge/sdk/G3Bridge;
.super Ljava/lang/Object;
.source "G3Bridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/local/g3bridge/sdk/G3Bridge$Response;,
        Lcom/local/g3bridge/sdk/G3Bridge$CommandResult;,
        Lcom/local/g3bridge/sdk/G3Bridge$Subscription;,
        Lcom/local/g3bridge/sdk/G3Bridge$State;
    }
.end annotation


# static fields
.field public static final API:Landroid/net/Uri;

.field public static final API_VERSION:I = 0x1

.field public static final BODY_LOCK:Ljava/lang/String; = "body.lock"

.field public static final CAMERA_CLOSE:Ljava/lang/String; = "camera.preview.close"

.field public static final CAMERA_LEFT:Ljava/lang/String; = "camera.preview.left"

.field public static final CAMERA_RIGHT:Ljava/lang/String; = "camera.preview.right"

.field public static final CLUSTER_MUSIC:Ljava/lang/String; = "cluster.music"

.field public static final CLUSTER_NAVIGATION:Ljava/lang/String; = "cluster.navigation"

.field public static final EVENTS:Landroid/net/Uri;

.field public static final HVAC_AC:Ljava/lang/String; = "hvac.ac"

.field public static final HVAC_AUTO:Ljava/lang/String; = "hvac.auto"

.field public static final HVAC_DRIVER_TEMPERATURE:Ljava/lang/String; = "hvac.temperature.driver"

.field public static final HVAC_FAN_DIRECTION:Ljava/lang/String; = "hvac.fan.direction"

.field public static final HVAC_FAN_SPEED:Ljava/lang/String; = "hvac.fan.speed"

.field public static final HVAC_FRONT_DEFROST:Ljava/lang/String; = "hvac.defrost.front"

.field public static final HVAC_PASSENGER_TEMPERATURE:Ljava/lang/String; = "hvac.temperature.passenger"

.field public static final HVAC_POWER:Ljava/lang/String; = "hvac.power"

.field public static final HVAC_RECIRCULATION:Ljava/lang/String; = "hvac.recirculation"

.field public static final MODULE_PACKAGE:Ljava/lang/String; = "com.local.g3bridge"

.field public static final WINDOWS_POSITION:Ljava/lang/String; = "body.windows.position"


# instance fields
.field private final resolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    const-string v0, "content://com.local.g3bridge.api/v1"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/local/g3bridge/sdk/G3Bridge;->API:Landroid/net/Uri;

    .line 30
    const-string v0, "content://com.local.g3bridge.api/v1/events"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/local/g3bridge/sdk/G3Bridge;->EVENTS:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    if-eqz p1, :cond_c

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/local/g3bridge/sdk/G3Bridge;->resolver:Landroid/content/ContentResolver;

    .line 36
    return-void

    .line 34
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "context"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static booleanValue(Z)Landroid/os/Bundle;
    .registers 3

    .line 103
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "valueBoolean"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method private call(Ljava/lang/String;Landroid/os/Bundle;)Lcom/local/g3bridge/sdk/G3Bridge$Response;
    .registers 7

    .line 114
    const-string v0, "UNAVAILABLE"

    :try_start_2
    iget-object v1, p0, Lcom/local/g3bridge/sdk/G3Bridge;->resolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/local/g3bridge/sdk/G3Bridge;->API:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3, p2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 115
    if-nez p1, :cond_14

    const-string p1, "Provider returned no result"

    # invokes: Lcom/local/g3bridge/sdk/G3Bridge$Response;->error(Ljava/lang/String;Ljava/lang/String;)Lcom/local/g3bridge/sdk/G3Bridge$Response;
    invoke-static {v0, p1}, Lcom/local/g3bridge/sdk/G3Bridge$Response;->access$300(Ljava/lang/String;Ljava/lang/String;)Lcom/local/g3bridge/sdk/G3Bridge$Response;

    move-result-object p1

    return-object p1

    .line 116
    :cond_14
    const-string p2, "apiVersion"

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    .line 117
    if-eq p2, v1, :cond_37

    const-string p1, "UNSUPPORTED"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported bridge API version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    # invokes: Lcom/local/g3bridge/sdk/G3Bridge$Response;->error(Ljava/lang/String;Ljava/lang/String;)Lcom/local/g3bridge/sdk/G3Bridge$Response;
    invoke-static {p1, p2}, Lcom/local/g3bridge/sdk/G3Bridge$Response;->access$300(Ljava/lang/String;Ljava/lang/String;)Lcom/local/g3bridge/sdk/G3Bridge$Response;

    move-result-object p1

    return-object p1

    .line 118
    :cond_37
    new-instance p2, Lcom/local/g3bridge/sdk/G3Bridge$Response;

    invoke-direct {p2, p1, v3}, Lcom/local/g3bridge/sdk/G3Bridge$Response;-><init>(Landroid/os/Bundle;Lcom/local/g3bridge/sdk/G3Bridge$1;)V
    :try_end_3c
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_3c} :catch_66
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_3c} :catch_5e
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_3c} :catch_3d

    return-object p2

    .line 123
    :catch_3d
    move-exception p1

    .line 124
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bridge IPC failed: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    # invokes: Lcom/local/g3bridge/sdk/G3Bridge$Response;->error(Ljava/lang/String;Ljava/lang/String;)Lcom/local/g3bridge/sdk/G3Bridge$Response;
    invoke-static {v0, p1}, Lcom/local/g3bridge/sdk/G3Bridge$Response;->access$300(Ljava/lang/String;Ljava/lang/String;)Lcom/local/g3bridge/sdk/G3Bridge$Response;

    move-result-object p1

    return-object p1

    .line 121
    :catch_5e
    move-exception p1

    .line 122
    const-string p1, "Bridge provider is unavailable or rejected this API"

    # invokes: Lcom/local/g3bridge/sdk/G3Bridge$Response;->error(Ljava/lang/String;Ljava/lang/String;)Lcom/local/g3bridge/sdk/G3Bridge$Response;
    invoke-static {v0, p1}, Lcom/local/g3bridge/sdk/G3Bridge$Response;->access$300(Ljava/lang/String;Ljava/lang/String;)Lcom/local/g3bridge/sdk/G3Bridge$Response;

    move-result-object p1

    return-object p1

    .line 119
    :catch_66
    move-exception p1

    .line 120
    const-string p1, "UNAUTHORIZED"

    const-string p2, "Bridge permission was denied or revoked"

    # invokes: Lcom/local/g3bridge/sdk/G3Bridge$Response;->error(Ljava/lang/String;Ljava/lang/String;)Lcom/local/g3bridge/sdk/G3Bridge$Response;
    invoke-static {p1, p2}, Lcom/local/g3bridge/sdk/G3Bridge$Response;->access$300(Ljava/lang/String;Ljava/lang/String;)Lcom/local/g3bridge/sdk/G3Bridge$Response;

    move-result-object p1

    return-object p1
.end method

.method public static floatArrayValue([F)Landroid/os/Bundle;
    .registers 3

    .line 106
    if-eqz p0, :cond_13

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, [F->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F

    const-string v1, "valueFloatArray"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    return-object v0

    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "value"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static floatValue(F)Landroid/os/Bundle;
    .registers 3

    .line 105
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "valueFloat"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-object v0
.end method

.method public static intValue(I)Landroid/os/Bundle;
    .registers 3

    .line 104
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "valueInt"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static payload(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4

    .line 108
    const-string v0, "payload"

    if-eqz p0, :cond_12

    .line 109
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v1

    .line 108
    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static requestAuthorization(Landroid/app/Activity;I)V
    .registers 6

    .line 40
    if-eqz p0, :cond_18

    .line 41
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.local.g3bridge"

    const-string v3, "com.local.g3bridge.GrantActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 43
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 44
    return-void

    .line 40
    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "activity"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public capabilities()Lcom/local/g3bridge/sdk/G3Bridge$Response;
    .registers 3

    .line 48
    const-string v0, "capabilities"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/local/g3bridge/sdk/G3Bridge;->call(Ljava/lang/String;Landroid/os/Bundle;)Lcom/local/g3bridge/sdk/G3Bridge$Response;

    move-result-object v0

    return-object v0
.end method

.method public catalog(II)Lcom/local/g3bridge/sdk/G3Bridge$Response;
    .registers 5

    .line 52
    if-ltz p1, :cond_1f

    const/4 v0, 0x1

    if-lt p2, v0, :cond_1f

    const/16 v0, 0x80

    if-gt p2, v0, :cond_1f

    .line 53
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "offset"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "limit"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "catalog"

    invoke-direct {p0, p1, v0}, Lcom/local/g3bridge/sdk/G3Bridge;->call(Ljava/lang/String;Landroid/os/Bundle;)Lcom/local/g3bridge/sdk/G3Bridge$Response;

    move-result-object p1

    return-object p1

    .line 52
    :cond_1f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "offset >= 0, limit 1..128"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public command(Ljava/lang/String;)Lcom/local/g3bridge/sdk/G3Bridge$CommandResult;
    .registers 4

    .line 89
    if-eqz p1, :cond_27

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_27

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x80

    if-gt v0, v1, :cond_27

    .line 91
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "commandId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    new-instance p1, Lcom/local/g3bridge/sdk/G3Bridge$CommandResult;

    const-string v1, "command"

    invoke-direct {p0, v1, v0}, Lcom/local/g3bridge/sdk/G3Bridge;->call(Ljava/lang/String;Landroid/os/Bundle;)Lcom/local/g3bridge/sdk/G3Bridge$Response;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/local/g3bridge/sdk/G3Bridge$CommandResult;-><init>(Lcom/local/g3bridge/sdk/G3Bridge$Response;Lcom/local/g3bridge/sdk/G3Bridge$1;)V

    return-object p1

    .line 90
    :cond_27
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "commandId required"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public execute(Ljava/lang/String;Landroid/os/Bundle;J)Lcom/local/g3bridge/sdk/G3Bridge$CommandResult;
    .registers 11

    .line 63
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/local/g3bridge/sdk/G3Bridge;->execute(Ljava/util/UUID;Ljava/lang/String;Landroid/os/Bundle;J)Lcom/local/g3bridge/sdk/G3Bridge$CommandResult;

    move-result-object p1

    return-object p1
.end method

.method public execute(Ljava/util/UUID;Ljava/lang/String;Landroid/os/Bundle;J)Lcom/local/g3bridge/sdk/G3Bridge$CommandResult;
    .registers 11

    .line 68
    if-eqz p1, :cond_132

    if-eqz p2, :cond_132

    const-string v0, "[a-z][a-z0-9]*(\\.[a-z][a-z0-9]*){1,5}"

    invoke-virtual {p2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_132

    .line 70
    const-wide/16 v0, 0x1f4

    cmp-long v0, p4, v0

    if-ltz v0, :cond_12a

    const-wide/16 v0, 0x1388

    cmp-long v0, p4, v0

    if-gtz v0, :cond_12a

    .line 71
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 72
    if-eqz p3, :cond_122

    invoke-virtual {p3}, Landroid/os/Bundle;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_122

    .line 73
    invoke-virtual {p3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 74
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    .line 75
    const-string v2, "valueBoolean"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    instance-of v2, p3, Ljava/lang/Boolean;

    if-eqz v2, :cond_4f

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_fa

    .line 76
    :cond_4f
    const-string v2, "valueInt"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_66

    instance-of v2, p3, Ljava/lang/Integer;

    if-eqz v2, :cond_66

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_fa

    .line 77
    :cond_66
    const-string v2, "valueFloat"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_88

    instance-of v2, p3, Ljava/lang/Float;

    if-eqz v2, :cond_88

    move-object v2, p3

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->isFinite(F)Z

    move-result v3

    if-eqz v3, :cond_88

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result p3

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto/16 :goto_fa

    .line 78
    :cond_88
    const-string v2, "valueDouble"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a9

    instance-of v2, p3, Ljava/lang/Double;

    if-eqz v2, :cond_a9

    move-object v2, p3

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isFinite(D)Z

    move-result v3

    if-eqz v3, :cond_a9

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_fa

    .line 79
    :cond_a9
    const-string v2, "valueFloatArray"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e4

    instance-of v2, p3, [F

    if-eqz v2, :cond_e4

    check-cast p3, [F

    invoke-virtual {p3}, [F->clone()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [F

    array-length v2, p3

    const/4 v3, 0x4

    if-ne v2, v3, :cond_dc

    array-length v2, p3

    const/4 v3, 0x0

    :goto_c3
    if-ge v3, v2, :cond_d8

    aget v4, p3, v3

    invoke-static {v4}, Ljava/lang/Float;->isFinite(F)Z

    move-result v4

    if-eqz v4, :cond_d0

    add-int/lit8 v3, v3, 0x1

    goto :goto_c3

    :cond_d0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "non-finite array value"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d8
    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    goto :goto_fa

    :cond_dc
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "four window positions required"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 80
    :cond_e4
    const-string v2, "payload"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11a

    instance-of v2, p3, Landroid/os/Bundle;

    if-eqz v2, :cond_11a

    new-instance v2, Landroid/os/Bundle;

    check-cast p3, Landroid/os/Bundle;

    invoke-direct {v2, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 82
    :goto_fa
    const-string p3, "requestId"

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string p1, "key"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string p1, "ttlMs"

    invoke-virtual {v0, p1, p4, p5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 85
    new-instance p1, Lcom/local/g3bridge/sdk/G3Bridge$CommandResult;

    const-string p2, "execute"

    invoke-direct {p0, p2, v0}, Lcom/local/g3bridge/sdk/G3Bridge;->call(Ljava/lang/String;Landroid/os/Bundle;)Lcom/local/g3bridge/sdk/G3Bridge$Response;

    move-result-object p2

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lcom/local/g3bridge/sdk/G3Bridge$CommandResult;-><init>(Lcom/local/g3bridge/sdk/G3Bridge$Response;Lcom/local/g3bridge/sdk/G3Bridge$1;)V

    return-object p1

    .line 81
    :cond_11a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unsupported or non-finite command value"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 72
    :cond_122
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "one typed value required"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 70
    :cond_12a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ttlMs must be 500..5000"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :cond_132
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "named command and requestId required"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hello()Lcom/local/g3bridge/sdk/G3Bridge$Response;
    .registers 3

    .line 47
    const-string v0, "hello"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/local/g3bridge/sdk/G3Bridge;->call(Ljava/lang/String;Landroid/os/Bundle;)Lcom/local/g3bridge/sdk/G3Bridge$Response;

    move-result-object v0

    return-object v0
.end method

.method public observe(Landroid/os/Handler;Ljava/lang/Runnable;)Lcom/local/g3bridge/sdk/G3Bridge$Subscription;
    .registers 6

    .line 97
    if-eqz p1, :cond_19

    if-eqz p2, :cond_19

    .line 98
    new-instance v0, Lcom/local/g3bridge/sdk/G3Bridge$Subscription;

    iget-object v1, p0, Lcom/local/g3bridge/sdk/G3Bridge;->resolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/local/g3bridge/sdk/G3Bridge$Subscription;-><init>(Landroid/content/ContentResolver;Landroid/os/Handler;Ljava/lang/Runnable;Lcom/local/g3bridge/sdk/G3Bridge$1;)V

    .line 99
    iget-object p1, p0, Lcom/local/g3bridge/sdk/G3Bridge;->resolver:Landroid/content/ContentResolver;

    sget-object p2, Lcom/local/g3bridge/sdk/G3Bridge;->EVENTS:Landroid/net/Uri;

    const/4 v1, 0x1

    # getter for: Lcom/local/g3bridge/sdk/G3Bridge$Subscription;->observer:Landroid/database/ContentObserver;
    invoke-static {v0}, Lcom/local/g3bridge/sdk/G3Bridge$Subscription;->access$200(Lcom/local/g3bridge/sdk/G3Bridge$Subscription;)Landroid/database/ContentObserver;

    move-result-object v2

    invoke-virtual {p1, p2, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 100
    return-object v0

    .line 97
    :cond_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "handler/listener"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public read(Ljava/lang/String;)Lcom/local/g3bridge/sdk/G3Bridge$Response;
    .registers 4

    .line 57
    if-eqz p1, :cond_1b

    const-string v0, "[a-z][a-z0-9_]*(\\.[a-z][a-z0-9_]*){1,5}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 58
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "key"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "read"

    invoke-direct {p0, p1, v0}, Lcom/local/g3bridge/sdk/G3Bridge;->call(Ljava/lang/String;Landroid/os/Bundle;)Lcom/local/g3bridge/sdk/G3Bridge$Response;

    move-result-object p1

    return-object p1

    .line 57
    :cond_1b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "named property key required"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public snapshot()Lcom/local/g3bridge/sdk/G3Bridge$Response;
    .registers 3

    .line 49
    const-string v0, "snapshot"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/local/g3bridge/sdk/G3Bridge;->call(Ljava/lang/String;Landroid/os/Bundle;)Lcom/local/g3bridge/sdk/G3Bridge$Response;

    move-result-object v0

    return-object v0
.end method

.class final Lcom/local/p5home/VehicleBridgePushPolicy;
.super Ljava/lang/Object;
.source "VehicleBridgePushPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/local/p5home/VehicleBridgePushPolicy$Slot;,
        Lcom/local/p5home/VehicleBridgePushPolicy$Event;
    }
.end annotation


# static fields
.field static final DATA_TTL_MS:J = 0x9c4L

.field static final MIN_SEND_MS:J = 0x3e8L

.field static final OWN_NAV_MS:J = 0x7530L


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static icmIcon(I)I
    .registers 1

    .line 6
    packed-switch p0, :pswitch_data_22

    :pswitch_3
    const/4 p0, -0x1

    return p0

    :pswitch_5
    const/16 p0, 0xd

    return p0

    :pswitch_8
    const/16 p0, 0xc

    return p0

    :pswitch_b
    const/16 p0, 0xb

    return p0

    :pswitch_e
    const/16 p0, 0xa

    return p0

    :pswitch_11
    const/16 p0, 0x9

    return p0

    :pswitch_14
    const/4 p0, 0x7

    return p0

    :pswitch_16
    const/4 p0, 0x6

    return p0

    :pswitch_18
    const/4 p0, 0x5

    return p0

    :pswitch_1a
    const/4 p0, 0x4

    return p0

    :pswitch_1c
    const/4 p0, 0x3

    return p0

    :pswitch_1e
    const/4 p0, 0x2

    return p0

    :pswitch_20
    const/4 p0, 0x1

    return p0

    :pswitch_data_22
    .packed-switch 0x2
        :pswitch_20
        :pswitch_1e
        :pswitch_1c
        :pswitch_1a
        :pswitch_18
        :pswitch_16
        :pswitch_14
        :pswitch_3
        :pswitch_3
        :pswitch_11
        :pswitch_e
        :pswitch_3
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method static navigation(Ljava/lang/String;Ljava/lang/String;IIII)Z
    .registers 6

    .line 7
    invoke-static {p0}, Lcom/local/p5home/VehicleBridgePushPolicy;->text(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_26

    invoke-static {p1}, Lcom/local/p5home/VehicleBridgePushPolicy;->text(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_26

    if-ltz p2, :cond_26

    const p0, 0x2faf080

    if-gt p2, p0, :cond_26

    if-ltz p3, :cond_26

    const p1, 0x93a80

    if-gt p3, p1, :cond_26

    if-ltz p4, :cond_26

    if-gt p4, p0, :cond_26

    const/4 p0, 0x1

    if-lt p5, p0, :cond_26

    const/16 p1, 0xd

    if-gt p5, p1, :cond_26

    goto :goto_27

    :cond_26
    const/4 p0, 0x0

    :goto_27
    return p0
.end method

.method static owns(JJ)Z
    .registers 6

    .line 10
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_13

    cmp-long v0, p2, p0

    if-ltz v0, :cond_13

    sub-long/2addr p2, p0

    const-wide/16 p0, 0x7530

    cmp-long p0, p2, p0

    if-gez p0, :cond_13

    const/4 p0, 0x1

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return p0
.end method

.method static stablePlayback(I)Z
    .registers 3

    .line 9
    const/4 v0, 0x1

    if-eq p0, v0, :cond_b

    const/4 v1, 0x2

    if-eq p0, v1, :cond_b

    const/4 v1, 0x3

    if-ne p0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :cond_b
    :goto_b
    return v0
.end method

.method static text(Ljava/lang/String;)Z
    .registers 4

    .line 8
    const/4 v0, 0x0

    if-eqz p0, :cond_12

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa0

    if-gt v1, v2, :cond_12

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-gez p0, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0
.end method

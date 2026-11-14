.class final Lcom/local/p5home/TurnCameraStatusPolicy;
.super Ljava/lang/Object;
.source "TurnCameraStatusPolicy.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static allowRead(III)Z
    .registers 3

    .line 6
    if-eqz p0, :cond_d

    if-lez p1, :cond_6

    if-eq p0, p1, :cond_d

    :cond_6
    if-lez p2, :cond_b

    if-ne p0, p2, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method

.method static allowReport(IIIIZ)Z
    .registers 5

    .line 9
    if-eqz p4, :cond_e

    if-lez p0, :cond_e

    if-lez p3, :cond_e

    if-ne p0, p3, :cond_e

    if-eq p0, p1, :cond_e

    if-eq p0, p2, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

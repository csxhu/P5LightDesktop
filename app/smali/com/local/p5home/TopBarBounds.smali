.class final Lcom/local/p5home/TopBarBounds;
.super Ljava/lang/Object;
.source "TopBarBounds.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fit(III)[I
    .registers 9

    .line 17
    if-gtz p2, :cond_8

    const/4 p0, 0x0

    filled-new-array {p0, p0}, [I

    move-result-object p0

    return-object p0

    .line 18
    :cond_8
    if-lez p0, :cond_31

    if-gtz p1, :cond_d

    goto :goto_31

    .line 19
    :cond_d
    int-to-double v0, p2

    int-to-double v2, p0

    div-double v4, v0, v2

    int-to-double p0, p1

    div-double/2addr v0, p0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 20
    mul-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int p2, v2

    const/4 v2, 0x1

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    mul-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p0, p0

    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    filled-new-array {p2, p0}, [I

    move-result-object p0

    return-object p0

    .line 18
    :cond_31
    :goto_31
    filled-new-array {p2, p2}, [I

    move-result-object p0

    return-object p0
.end method

.method static side(IIIIIIIIF)I
    .registers 14

    .line 7
    const/4 v0, 0x0

    if-lez p0, :cond_64

    if-lez p1, :cond_64

    invoke-static {p8}, Ljava/lang/Float;->isFinite(F)Z

    move-result v1

    if-eqz v1, :cond_64

    const/4 v1, 0x0

    cmpg-float v1, p8, v1

    if-gtz v1, :cond_11

    goto :goto_64

    .line 8
    :cond_11
    int-to-long v1, p0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-long v3, p0

    sub-long/2addr v1, v3

    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-long v3, p0

    sub-long/2addr v1, v3

    int-to-long p0, p1

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    int-to-long p2, p2

    sub-long/2addr p0, p2

    invoke-static {v0, p5}, Ljava/lang/Math;->max(II)I

    move-result p2

    int-to-long p2, p2

    sub-long/2addr p0, p2

    .line 9
    const-wide/16 p2, 0x0

    cmp-long p4, v1, p2

    if-lez p4, :cond_63

    cmp-long p2, p0, p2

    if-gtz p2, :cond_36

    goto :goto_63

    .line 10
    :cond_36
    const/high16 p2, 0x42800000    # 64.0f

    mul-float/2addr p8, p2

    invoke-static {p8}, Ljava/lang/Math;->round(F)I

    move-result p2

    const/16 p3, 0xc0

    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 p3, 0x1

    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 11
    int-to-long p2, p2

    invoke-static {v1, v2, p0, p1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    long-to-int p0, p0

    .line 12
    if-lez p6, :cond_58

    invoke-static {p0, p6}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 13
    :cond_58
    if-lez p7, :cond_5e

    invoke-static {p0, p7}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 14
    :cond_5e
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    .line 9
    :cond_63
    :goto_63
    return v0

    .line 7
    :cond_64
    :goto_64
    return v0
.end method

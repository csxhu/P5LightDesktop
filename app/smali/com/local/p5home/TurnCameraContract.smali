.class final Lcom/local/p5home/TurnCameraContract;
.super Ljava/lang/Object;
.source "TurnCameraContract.java"


# static fields
.field static final AVM:Ljava/lang/String; = "com.xiaopeng.drivingimageassist.carapi.event.AVMEvent"

.field static final BCM:Ljava/lang/String; = "com.xiaopeng.drivingimageassist.carapi.event.BCMEvent"

.field static final INTELLIGENT:Ljava/lang/String; = "com.xiaopeng.drivingimageassist.carapi.event.IntellIgentEvent"

.field static final MAX_SAMPLE_AGE_MS:J = 0x3e8L

.field static final MCU:Ljava/lang/String; = "com.xiaopeng.drivingimageassist.carapi.event.MCUEvent"

.field static final VCU:Ljava/lang/String; = "com.xiaopeng.drivingimageassist.carapi.event.VCUEvent"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static appendObserver(Ljava/util/List;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Constructor<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 35
    const-string v0, "com.xiaopeng.drivingimageassist.carapi.event.BCMEvent"

    const/4 v1, 0x0

    if-eqz p0, :cond_a3

    if-eqz p1, :cond_a3

    if-eqz p2, :cond_a3

    if-eqz p3, :cond_a3

    if-nez p4, :cond_f

    goto/16 :goto_a3

    .line 36
    :cond_f
    :try_start_f
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 37
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_37

    invoke-virtual {p1, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2b

    goto :goto_37

    :cond_2b
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_37
    :goto_37
    return-object v1

    .line 38
    :cond_38
    invoke-static {v2}, Lcom/local/p5home/TurnCameraContract;->expectedEvents(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_a0

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    goto :goto_a0

    .line 39
    :cond_45
    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 40
    invoke-virtual {p1, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9f

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9f

    const-string p1, "xp_bcm"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p3, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6f

    goto :goto_9f

    .line 41
    :cond_6f
    new-array p1, v2, [Ljava/lang/Object;

    invoke-virtual {p4, p2, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 42
    instance-of p3, p1, Ljava/util/List;

    if-nez p3, :cond_7a

    return-object v1

    .line 43
    :cond_7a
    check-cast p1, Ljava/util/List;

    .line 44
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    const/4 p4, 0x1

    if-ne p3, p4, :cond_9e

    const p3, 0x21411cc0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_95

    goto :goto_9e

    .line 45
    :cond_95
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9d
    .catchall {:try_start_f .. :try_end_9d} :catchall_a1

    return-object p1

    .line 44
    :cond_9e
    :goto_9e
    return-object v1

    .line 40
    :cond_9f
    :goto_9f
    return-object v1

    .line 38
    :cond_a0
    :goto_a0
    return-object v1

    .line 46
    :catchall_a1
    move-exception p0

    return-object v1

    .line 35
    :cond_a3
    :goto_a3
    return-object v1
.end method

.method static expectedEvents(Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 19
    const/4 v0, 0x0

    if-eqz p0, :cond_68

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x4

    if-eq v1, v3, :cond_12

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-eq v1, v2, :cond_12

    goto :goto_68

    .line 20
    :cond_12
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 21
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_2f

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    :cond_2f
    return v0

    .line 22
    :cond_30
    const-string p0, "com.xiaopeng.drivingimageassist.carapi.event.IntellIgentEvent"

    invoke-interface {v1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_66

    const-string p0, "com.xiaopeng.drivingimageassist.carapi.event.VCUEvent"

    invoke-interface {v1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_66

    const-string p0, "com.xiaopeng.drivingimageassist.carapi.event.MCUEvent"

    invoke-interface {v1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_66

    const-string p0, "com.xiaopeng.drivingimageassist.carapi.event.AVMEvent"

    invoke-interface {v1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_66

    .line 23
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result p0

    if-eq p0, v3, :cond_64

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result p0

    if-ne p0, v2, :cond_66

    const-string p0, "com.xiaopeng.drivingimageassist.carapi.event.BCMEvent"

    invoke-interface {v1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_66

    :cond_64
    const/4 v0, 0x1

    goto :goto_67

    :cond_66
    nop

    .line 22
    :goto_67
    return v0

    .line 19
    :cond_68
    :goto_68
    return v0
.end method

.method static permitGear(ZI)Z
    .registers 3

    .line 27
    if-eqz p0, :cond_c

    const/4 p0, 0x1

    if-eq p1, p0, :cond_b

    const/4 v0, 0x2

    if-eq p1, v0, :cond_b

    const/4 v0, 0x4

    if-ne p1, v0, :cond_c

    :cond_b
    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method static permitSpeed(ZFFJJ)Z
    .registers 8

    .line 29
    const/4 v0, 0x0

    if-eqz p0, :cond_2d

    invoke-static {p1}, Lcom/local/p5home/TurnCameraContract;->validSpeed(F)Z

    move-result p0

    if-eqz p0, :cond_2d

    invoke-static {p2}, Lcom/local/p5home/TurnCameraContract;->validSpeed(F)Z

    move-result p0

    if-eqz p0, :cond_2d

    const/high16 p0, 0x41200000    # 10.0f

    cmpl-float p1, p1, p0

    if-gtz p1, :cond_2d

    cmpl-float p0, p2, p0

    if-lez p0, :cond_1a

    goto :goto_2d

    .line 30
    :cond_1a
    const-wide/16 p0, 0x0

    cmp-long p0, p3, p0

    if-ltz p0, :cond_2c

    cmp-long p0, p5, p3

    if-ltz p0, :cond_2c

    sub-long/2addr p5, p3

    const-wide/16 p0, 0x3e8

    cmp-long p0, p5, p0

    if-gtz p0, :cond_2c

    const/4 v0, 0x1

    :cond_2c
    return v0

    .line 29
    :cond_2d
    :goto_2d
    return v0
.end method

.method static validSpeed(F)Z
    .registers 2

    .line 25
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_13

    const/4 p0, 0x1

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return p0
.end method

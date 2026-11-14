.class final Lcom/local/p5home/TurnCameraEventHealth;
.super Ljava/lang/Object;
.source "TurnCameraEventHealth.java"


# static fields
.field static final AVAILABLE:I


# instance fields
.field private connected:Z

.field private connectionEpoch:J

.field private gear:I

.field private gearAvailable:Z

.field private lampAvailable:Z

.field private ownedObserver:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bit(Ljava/lang/Integer;)Z
    .registers 3

    .line 41
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :cond_f
    :goto_f
    return v1
.end method


# virtual methods
.method declared-synchronized bindObserver(Ljava/lang/Object;)Z
    .registers 4

    monitor-enter p0

    .line 12
    const/4 v0, 0x0

    if-eqz p1, :cond_13

    :try_start_4
    iget-object v1, p0, Lcom/local/p5home/TurnCameraEventHealth;->ownedObserver:Ljava/lang/Object;

    if-eqz v1, :cond_9

    goto :goto_13

    .line 13
    :cond_9
    iput-object p1, p0, Lcom/local/p5home/TurnCameraEventHealth;->ownedObserver:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/local/p5home/TurnCameraEventHealth;->lampAvailable:Z
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_10

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 11
    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1

    .line 12
    :cond_13
    :goto_13
    monitor-exit p0

    return v0
.end method

.method declared-synchronized connected()V
    .registers 5

    monitor-enter p0

    .line 18
    :try_start_1
    iget-wide v0, p0, Lcom/local/p5home/TurnCameraEventHealth;->connectionEpoch:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/local/p5home/TurnCameraEventHealth;->connectionEpoch:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/local/p5home/TurnCameraEventHealth;->connected:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/local/p5home/TurnCameraEventHealth;->lampAvailable:Z

    iput-boolean v0, p0, Lcom/local/p5home/TurnCameraEventHealth;->gearAvailable:Z
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-void

    .line 18
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized current(J)Z
    .registers 5

    monitor-enter p0

    .line 21
    :try_start_1
    iget-boolean v0, p0, Lcom/local/p5home/TurnCameraEventHealth;->connected:Z

    if-eqz v0, :cond_13

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_13

    iget-wide v0, p0, Lcom/local/p5home/TurnCameraEventHealth;->connectionEpoch:J
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_16

    cmp-long p1, v0, p1

    if-nez p1, :cond_13

    const/4 p1, 0x1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    monitor-exit p0

    return p1

    .line 21
    :catchall_16
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized disconnected()V
    .registers 5

    monitor-enter p0

    .line 19
    :try_start_1
    iget-wide v0, p0, Lcom/local/p5home/TurnCameraEventHealth;->connectionEpoch:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/local/p5home/TurnCameraEventHealth;->connectionEpoch:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/local/p5home/TurnCameraEventHealth;->connected:Z

    iput-boolean v0, p0, Lcom/local/p5home/TurnCameraEventHealth;->lampAvailable:Z

    iput-boolean v0, p0, Lcom/local/p5home/TurnCameraEventHealth;->gearAvailable:Z
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    monitor-exit p0

    return-void

    .line 19
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized epoch()J
    .registers 3

    monitor-enter p0

    .line 20
    :try_start_1
    iget-boolean v0, p0, Lcom/local/p5home/TurnCameraEventHealth;->connected:Z

    if-eqz v0, :cond_8

    iget-wide v0, p0, Lcom/local/p5home/TurnCameraEventHealth;->connectionEpoch:J
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_c

    goto :goto_a

    :cond_8
    const-wide/16 v0, -0x1

    :goto_a
    monitor-exit p0

    return-wide v0

    .line 20
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized gear(IILjava/lang/Object;)Z
    .registers 6

    monitor-enter p0

    .line 34
    :try_start_1
    iget-boolean v0, p0, Lcom/local/p5home/TurnCameraEventHealth;->connected:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    if-nez p1, :cond_26

    if-nez p2, :cond_26

    instance-of p1, p3, Ljava/lang/Integer;

    if-nez p1, :cond_f

    goto :goto_26

    .line 35
    :cond_f
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 36
    const/4 p2, 0x1

    if-lt p1, p2, :cond_22

    const/4 p3, 0x4

    if-le p1, p3, :cond_1c

    goto :goto_22

    .line 37
    :cond_1c
    iput p1, p0, Lcom/local/p5home/TurnCameraEventHealth;->gear:I

    iput-boolean p2, p0, Lcom/local/p5home/TurnCameraEventHealth;->gearAvailable:Z
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_2a

    monitor-exit p0

    return p2

    .line 36
    :cond_22
    :goto_22
    :try_start_22
    iput-boolean v1, p0, Lcom/local/p5home/TurnCameraEventHealth;->gearAvailable:Z
    :try_end_24
    .catchall {:try_start_22 .. :try_end_24} :catchall_2a

    monitor-exit p0

    return v1

    .line 34
    :cond_26
    :goto_26
    :try_start_26
    iput-boolean v1, p0, Lcom/local/p5home/TurnCameraEventHealth;->gearAvailable:Z
    :try_end_28
    .catchall {:try_start_26 .. :try_end_28} :catchall_2a

    monitor-exit p0

    return v1

    .line 33
    :catchall_2a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized gearError()V
    .registers 2

    monitor-enter p0

    .line 39
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/local/p5home/TurnCameraEventHealth;->gearAvailable:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    .line 39
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized hasObserver()Z
    .registers 2

    monitor-enter p0

    .line 16
    :try_start_1
    iget-object v0, p0, Lcom/local/p5home/TurnCameraEventHealth;->ownedObserver:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    monitor-exit p0

    return v0

    .line 16
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized lamp(IILjava/lang/Object;)Z
    .registers 6

    monitor-enter p0

    .line 26
    :try_start_1
    iget-boolean v0, p0, Lcom/local/p5home/TurnCameraEventHealth;->connected:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_35

    if-nez p1, :cond_35

    if-nez p2, :cond_35

    instance-of p1, p3, [Ljava/lang/Integer;

    if-nez p1, :cond_f

    goto :goto_35

    .line 27
    :cond_f
    check-cast p3, [Ljava/lang/Integer;

    .line 28
    array-length p1, p3

    const/4 p2, 0x2

    if-lt p1, p2, :cond_31

    aget-object p1, p3, v1

    if-eqz p1, :cond_31

    const/4 p2, 0x1

    aget-object v0, p3, p2

    if-eqz v0, :cond_31

    invoke-static {p1}, Lcom/local/p5home/TurnCameraEventHealth;->bit(Ljava/lang/Integer;)Z

    move-result p1

    if-eqz p1, :cond_31

    aget-object p1, p3, p2

    invoke-static {p1}, Lcom/local/p5home/TurnCameraEventHealth;->bit(Ljava/lang/Integer;)Z

    move-result p1

    if-nez p1, :cond_2d

    goto :goto_31

    .line 29
    :cond_2d
    iput-boolean p2, p0, Lcom/local/p5home/TurnCameraEventHealth;->lampAvailable:Z
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_39

    monitor-exit p0

    return p2

    .line 28
    :cond_31
    :goto_31
    :try_start_31
    iput-boolean v1, p0, Lcom/local/p5home/TurnCameraEventHealth;->lampAvailable:Z
    :try_end_33
    .catchall {:try_start_31 .. :try_end_33} :catchall_39

    monitor-exit p0

    return v1

    .line 26
    :cond_35
    :goto_35
    :try_start_35
    iput-boolean v1, p0, Lcom/local/p5home/TurnCameraEventHealth;->lampAvailable:Z
    :try_end_37
    .catchall {:try_start_35 .. :try_end_37} :catchall_39

    monitor-exit p0

    return v1

    .line 25
    :catchall_39
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized lampAvailable()Z
    .registers 2

    monitor-enter p0

    .line 32
    :try_start_1
    iget-boolean v0, p0, Lcom/local/p5home/TurnCameraEventHealth;->connected:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/local/p5home/TurnCameraEventHealth;->lampAvailable:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_e

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    monitor-exit p0

    return v0

    .line 32
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized lampError()V
    .registers 2

    monitor-enter p0

    .line 31
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/local/p5home/TurnCameraEventHealth;->lampAvailable:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    .line 31
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized observer()Ljava/lang/Object;
    .registers 2

    monitor-enter p0

    .line 17
    :try_start_1
    iget-object v0, p0, Lcom/local/p5home/TurnCameraEventHealth;->ownedObserver:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 17
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized owns(Ljava/lang/Object;)Z
    .registers 3

    monitor-enter p0

    .line 15
    if-eqz p1, :cond_c

    :try_start_3
    iget-object v0, p0, Lcom/local/p5home/TurnCameraEventHealth;->ownedObserver:Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_9

    if-ne p1, v0, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    .line 15
    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1

    .line 15
    :cond_c
    const/4 p1, 0x0

    :goto_d
    monitor-exit p0

    return p1
.end method

.method declared-synchronized permitGear(I)Z
    .registers 3

    monitor-enter p0

    .line 40
    :try_start_1
    iget-boolean v0, p0, Lcom/local/p5home/TurnCameraEventHealth;->connected:Z

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/local/p5home/TurnCameraEventHealth;->gearAvailable:Z

    if-eqz v0, :cond_15

    iget v0, p0, Lcom/local/p5home/TurnCameraEventHealth;->gear:I

    if-ne v0, p1, :cond_15

    const/4 v0, 0x1

    invoke-static {v0, p1}, Lcom/local/p5home/TurnCameraContract;->permitGear(ZI)Z

    move-result p1
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_18

    if-eqz p1, :cond_15

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    monitor-exit p0

    return v0

    .line 40
    :catchall_18
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized permitLamp(J)Z
    .registers 3

    monitor-enter p0

    .line 22
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/local/p5home/TurnCameraEventHealth;->current(J)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-boolean p1, p0, Lcom/local/p5home/TurnCameraEventHealth;->lampAvailable:Z
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_10

    if-eqz p1, :cond_d

    const/4 p1, 0x1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    monitor-exit p0

    return p1

    .line 22
    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

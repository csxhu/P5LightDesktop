.class final Lcom/local/p5home/TurnCameraPreviewPolicy;
.super Ljava/lang/Object;
.source "TurnCameraPreviewPolicy.java"


# static fields
.field static final PREVIEW_MS:J = 0x1388L

.field static final REQUEST_MS:J = 0xbb8L


# instance fields
.field private deadline:J

.field private generation:J

.field private owner:J

.field private side:I

.field private started:J


# direct methods
.method constructor <init>()V
    .registers 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/local/p5home/TurnCameraPreviewPolicy;->owner:J

    .line 19
    return-void
.end method

.method static fresh(JJ)Z
    .registers 6

    .line 6
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_13

    cmp-long v0, p2, p0

    if-ltz v0, :cond_13

    sub-long/2addr p2, p0

    const-wide/16 p0, 0xbb8

    cmp-long p0, p2, p0

    if-gtz p0, :cond_13

    const/4 p0, 0x1

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return p0
.end method

.method static parked(ZFIZZZ)Z
    .registers 6

    .line 8
    if-eqz p0, :cond_18

    invoke-static {p1}, Lcom/local/p5home/TurnCameraContract;->validSpeed(F)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x0

    cmpl-float p0, p1, p0

    if-nez p0, :cond_18

    const/4 p0, 0x4

    if-ne p2, p0, :cond_18

    if-eqz p3, :cond_18

    if-eqz p4, :cond_18

    if-nez p5, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method


# virtual methods
.method declared-synchronized active(J)Z
    .registers 7

    monitor-enter p0

    .line 15
    :try_start_1
    iget-wide v0, p0, Lcom/local/p5home/TurnCameraPreviewPolicy;->owner:J

    iget-wide v2, p0, Lcom/local/p5home/TurnCameraPreviewPolicy;->generation:J
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_18

    cmp-long v2, v0, v2

    if-nez v2, :cond_15

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_15

    cmp-long p1, v0, p1

    if-nez p1, :cond_15

    const/4 p1, 0x1

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    :goto_16
    monitor-exit p0

    return p1

    .line 15
    :catchall_18
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized begin(IJ)J
    .registers 8

    monitor-enter p0

    .line 13
    :try_start_1
    iget-wide v0, p0, Lcom/local/p5home/TurnCameraPreviewPolicy;->generation:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/local/p5home/TurnCameraPreviewPolicy;->generation:J

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/local/p5home/TurnCameraPreviewPolicy;->owner:J

    const/4 v2, 0x2

    if-eq p1, v2, :cond_12

    const/4 v2, 0x3

    if-ne p1, v2, :cond_1d

    :cond_12
    iput-wide v0, p0, Lcom/local/p5home/TurnCameraPreviewPolicy;->owner:J

    iput p1, p0, Lcom/local/p5home/TurnCameraPreviewPolicy;->side:I

    iput-wide p2, p0, Lcom/local/p5home/TurnCameraPreviewPolicy;->started:J

    const-wide/16 v2, 0x1388

    add-long/2addr p2, v2

    iput-wide p2, p0, Lcom/local/p5home/TurnCameraPreviewPolicy;->deadline:J
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    :cond_1d
    monitor-exit p0

    return-wide v0

    .line 13
    :catchall_1f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized expired(J)Z
    .registers 7

    monitor-enter p0

    .line 17
    :try_start_1
    iget-wide v0, p0, Lcom/local/p5home/TurnCameraPreviewPolicy;->owner:J

    iget-wide v2, p0, Lcom/local/p5home/TurnCameraPreviewPolicy;->generation:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_1d

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1d

    iget-wide v0, p0, Lcom/local/p5home/TurnCameraPreviewPolicy;->started:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1b

    iget-wide v0, p0, Lcom/local/p5home/TurnCameraPreviewPolicy;->deadline:J
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_20

    cmp-long p1, p1, v0

    if-ltz p1, :cond_1d

    :cond_1b
    const/4 p1, 0x1

    goto :goto_1e

    :cond_1d
    const/4 p1, 0x0

    :goto_1e
    monitor-exit p0

    return p1

    .line 17
    :catchall_20
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized externalDisplay()V
    .registers 5

    monitor-enter p0

    .line 11
    :try_start_1
    iget-wide v0, p0, Lcom/local/p5home/TurnCameraPreviewPolicy;->generation:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/local/p5home/TurnCameraPreviewPolicy;->generation:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/local/p5home/TurnCameraPreviewPolicy;->owner:J
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-void

    .line 11
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized generation()J
    .registers 3

    monitor-enter p0

    .line 12
    :try_start_1
    iget-wide v0, p0, Lcom/local/p5home/TurnCameraPreviewPolicy;->generation:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    .line 12
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized owns(I)Z
    .registers 6

    monitor-enter p0

    .line 14
    :try_start_1
    iget-wide v0, p0, Lcom/local/p5home/TurnCameraPreviewPolicy;->owner:J

    iget-wide v2, p0, Lcom/local/p5home/TurnCameraPreviewPolicy;->generation:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_15

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_15

    iget v0, p0, Lcom/local/p5home/TurnCameraPreviewPolicy;->side:I
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_18

    if-ne p1, v0, :cond_15

    const/4 p1, 0x1

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    :goto_16
    monitor-exit p0

    return p1

    .line 14
    :catchall_18
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized release()V
    .registers 3

    monitor-enter p0

    .line 18
    const-wide/16 v0, -0x1

    :try_start_3
    iput-wide v0, p0, Lcom/local/p5home/TurnCameraPreviewPolicy;->owner:J
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-void

    .line 18
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized sameGeneration(J)Z
    .registers 5

    monitor-enter p0

    .line 16
    :try_start_1
    iget-wide v0, p0, Lcom/local/p5home/TurnCameraPreviewPolicy;->generation:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_c

    cmp-long p1, v0, p1

    if-nez p1, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    monitor-exit p0

    return p1

    .line 16
    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

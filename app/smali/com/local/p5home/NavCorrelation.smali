.class final Lcom/local/p5home/NavCorrelation;
.super Ljava/lang/Object;
.source "NavCorrelation.java"


# instance fields
.field private event:Ljava/lang/String;

.field private id:I

.field private issued:J

.field private next:I

.field private until:J


# direct methods
.method constructor <init>()V
    .registers 3

    .line 12
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/local/p5home/NavCorrelation;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .registers 3

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/local/p5home/NavCorrelation;->event:Ljava/lang/String;

    .line 14
    if-lez p1, :cond_c

    .line 15
    iput p1, p0, Lcom/local/p5home/NavCorrelation;->next:I

    .line 16
    return-void

    .line 14
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid_first_id"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method declared-synchronized begin(Ljava/lang/String;J)I
    .registers 9

    monitor-enter p0

    .line 18
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_35

    if-eqz p1, :cond_35

    :try_start_9
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_35

    .line 22
    iget-wide v0, p0, Lcom/local/p5home/NavCorrelation;->issued:J
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_3d

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1b

    monitor-exit p0

    const/4 p1, 0x0

    return p1

    .line 23
    :cond_1b
    :try_start_1b
    iget v2, p0, Lcom/local/p5home/NavCorrelation;->next:I

    .line 24
    const v3, 0x7fffffff

    if-ne v2, v3, :cond_24

    const/4 v3, 0x1

    goto :goto_26

    :cond_24
    add-int/lit8 v3, v2, 0x1

    :goto_26
    iput v3, p0, Lcom/local/p5home/NavCorrelation;->next:I

    .line 25
    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/local/p5home/NavCorrelation;->issued:J

    .line 26
    iput v2, p0, Lcom/local/p5home/NavCorrelation;->id:I

    iput-wide p2, p0, Lcom/local/p5home/NavCorrelation;->until:J

    iput-object p1, p0, Lcom/local/p5home/NavCorrelation;->event:Ljava/lang/String;
    :try_end_33
    .catchall {:try_start_1b .. :try_end_33} :catchall_3d

    .line 27
    monitor-exit p0

    return v2

    .line 19
    :cond_35
    :try_start_35
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid_search_request"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3d
    .catchall {:try_start_35 .. :try_end_3d} :catchall_3d

    .line 17
    :catchall_3d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized cancel()V
    .registers 3

    monitor-enter p0

    .line 45
    const/4 v0, 0x0

    :try_start_2
    iput v0, p0, Lcom/local/p5home/NavCorrelation;->id:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/local/p5home/NavCorrelation;->until:J

    const-string v0, ""

    iput-object v0, p0, Lcom/local/p5home/NavCorrelation;->event:Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-void

    .line 45
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized cancelIfCurrent(I)Z
    .registers 3

    monitor-enter p0

    .line 42
    if-lez p1, :cond_11

    :try_start_3
    iget v0, p0, Lcom/local/p5home/NavCorrelation;->id:I

    if-eq p1, v0, :cond_8

    goto :goto_11

    .line 43
    :cond_8
    invoke-virtual {p0}, Lcom/local/p5home/NavCorrelation;->cancel()V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_e

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 41
    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1

    .line 42
    :cond_11
    :goto_11
    monitor-exit p0

    const/4 p1, 0x0

    return p1
.end method

.method declared-synchronized expire(IJ)Z
    .registers 6

    monitor-enter p0

    .line 38
    :try_start_1
    iget v0, p0, Lcom/local/p5home/NavCorrelation;->id:I

    if-eqz v0, :cond_14

    if-ne p1, v0, :cond_14

    iget-wide v0, p0, Lcom/local/p5home/NavCorrelation;->until:J

    cmp-long p1, p2, v0

    if-gez p1, :cond_e

    goto :goto_14

    .line 39
    :cond_e
    invoke-virtual {p0}, Lcom/local/p5home/NavCorrelation;->cancel()V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_17

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 38
    :cond_14
    :goto_14
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    .line 37
    :catchall_17
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized matches(IJ)Z
    .registers 5

    monitor-enter p0

    .line 31
    if-lez p1, :cond_12

    :try_start_3
    iget v0, p0, Lcom/local/p5home/NavCorrelation;->id:I

    if-ne p1, v0, :cond_12

    invoke-virtual {p0, p2, p3}, Lcom/local/p5home/NavCorrelation;->waiting(J)Z

    move-result p1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_f

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    .line 31
    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1

    .line 31
    :cond_12
    const/4 p1, 0x0

    :goto_13
    monitor-exit p0

    return p1
.end method

.method declared-synchronized take(IJ)Ljava/lang/String;
    .registers 4

    monitor-enter p0

    .line 34
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/local/p5home/NavCorrelation;->matches(IJ)Z

    move-result p1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_11

    if-nez p1, :cond_a

    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    .line 35
    :cond_a
    :try_start_a
    iget-object p1, p0, Lcom/local/p5home/NavCorrelation;->event:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/local/p5home/NavCorrelation;->cancel()V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_11

    monitor-exit p0

    return-object p1

    .line 33
    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized waiting(J)Z
    .registers 5

    monitor-enter p0

    .line 29
    :try_start_1
    iget v0, p0, Lcom/local/p5home/NavCorrelation;->id:I

    if-eqz v0, :cond_d

    iget-wide v0, p0, Lcom/local/p5home/NavCorrelation;->until:J
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_10

    cmp-long p1, p1, v0

    if-gez p1, :cond_d

    const/4 p1, 0x1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    monitor-exit p0

    return p1

    .line 29
    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

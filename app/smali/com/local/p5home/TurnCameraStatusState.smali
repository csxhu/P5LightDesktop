.class final Lcom/local/p5home/TurnCameraStatusState;
.super Ljava/lang/Object;
.source "TurnCameraStatusState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/local/p5home/TurnCameraStatusState$Snapshot;
    }
.end annotation


# static fields
.field static final FAULT:I = 0x2

.field static final MAX_HEARTBEAT_AGE_MS:J = 0x4e20L

.field static final RECEIVED:I = 0x1

.field static final UNSEEN:I


# instance fields
.field private connection:I

.field private gear:I

.field private lamp:I

.field private lastAt:J

.field private observer:Z

.field private pid:I

.field private sequence:J

.field private session:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/local/p5home/TurnCameraStatusState;->lastAt:J

    iput-wide v0, p0, Lcom/local/p5home/TurnCameraStatusState;->sequence:J

    const-string v0, ""

    iput-object v0, p0, Lcom/local/p5home/TurnCameraStatusState;->session:Ljava/lang/String;

    return-void
.end method

.method private static valid(I)Z
    .registers 3

    .line 33
    const/4 v0, 0x1

    if-eqz p0, :cond_a

    if-eq p0, v0, :cond_a

    const/4 v1, 0x2

    if-ne p0, v1, :cond_9

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :cond_a
    :goto_a
    return v0
.end method

.method private static validToken(Ljava/lang/String;)Z
    .registers 2

    .line 34
    if-eqz p0, :cond_c

    const-string v0, "[0-9a-f]{32}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method


# virtual methods
.method declared-synchronized begin(ILjava/lang/String;J)Z
    .registers 8

    monitor-enter p0

    .line 19
    const/4 v0, 0x0

    if-lez p1, :cond_29

    :try_start_4
    invoke-static {p2}, Lcom/local/p5home/TurnCameraStatusState;->validToken(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    const-wide/16 v1, 0x0

    cmp-long v1, p3, v1

    if-gez v1, :cond_11

    goto :goto_29

    .line 20
    :cond_11
    iput p1, p0, Lcom/local/p5home/TurnCameraStatusState;->pid:I

    iput-object p2, p0, Lcom/local/p5home/TurnCameraStatusState;->session:Ljava/lang/String;

    iput-wide p3, p0, Lcom/local/p5home/TurnCameraStatusState;->lastAt:J

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/local/p5home/TurnCameraStatusState;->sequence:J

    iput-boolean v0, p0, Lcom/local/p5home/TurnCameraStatusState;->observer:Z

    iput v0, p0, Lcom/local/p5home/TurnCameraStatusState;->gear:I

    iput v0, p0, Lcom/local/p5home/TurnCameraStatusState;->lamp:I

    iput v0, p0, Lcom/local/p5home/TurnCameraStatusState;->connection:I
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_26

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 18
    :catchall_26
    move-exception p1

    monitor-exit p0

    throw p1

    .line 19
    :cond_29
    :goto_29
    monitor-exit p0

    return v0
.end method

.method declared-synchronized publish(ILjava/lang/String;JZIIIJ)Z
    .registers 12

    monitor-enter p0

    .line 23
    if-lez p1, :cond_62

    :try_start_3
    iget v0, p0, Lcom/local/p5home/TurnCameraStatusState;->pid:I

    if-ne p1, v0, :cond_62

    invoke-static {p2}, Lcom/local/p5home/TurnCameraStatusState;->validToken(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_62

    iget-object p1, p0, Lcom/local/p5home/TurnCameraStatusState;->session:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_62

    iget-wide p1, p0, Lcom/local/p5home/TurnCameraStatusState;->sequence:J

    cmp-long p1, p3, p1

    if-lez p1, :cond_62

    iget-wide p1, p0, Lcom/local/p5home/TurnCameraStatusState;->lastAt:J

    cmp-long p1, p9, p1

    if-ltz p1, :cond_62

    .line 24
    invoke-static {p6}, Lcom/local/p5home/TurnCameraStatusState;->valid(I)Z

    move-result p1

    if-eqz p1, :cond_62

    invoke-static {p7}, Lcom/local/p5home/TurnCameraStatusState;->valid(I)Z

    move-result p1

    if-eqz p1, :cond_62

    invoke-static {p8}, Lcom/local/p5home/TurnCameraStatusState;->valid(I)Z

    move-result p1

    if-eqz p1, :cond_62

    if-nez p5, :cond_37

    if-nez p7, :cond_62

    :cond_37
    iget-boolean p1, p0, Lcom/local/p5home/TurnCameraStatusState;->observer:Z

    if-eqz p1, :cond_3d

    if-eqz p5, :cond_62

    :cond_3d
    iget p1, p0, Lcom/local/p5home/TurnCameraStatusState;->connection:I

    if-eqz p1, :cond_43

    if-eqz p6, :cond_62

    :cond_43
    iget p1, p0, Lcom/local/p5home/TurnCameraStatusState;->lamp:I

    if-eqz p1, :cond_49

    if-eqz p7, :cond_62

    :cond_49
    iget p1, p0, Lcom/local/p5home/TurnCameraStatusState;->gear:I

    if-eqz p1, :cond_50

    if-nez p8, :cond_50

    goto :goto_62

    .line 27
    :cond_50
    iput-wide p3, p0, Lcom/local/p5home/TurnCameraStatusState;->sequence:J

    iput-boolean p5, p0, Lcom/local/p5home/TurnCameraStatusState;->observer:Z

    iput p6, p0, Lcom/local/p5home/TurnCameraStatusState;->connection:I

    iput p7, p0, Lcom/local/p5home/TurnCameraStatusState;->lamp:I

    iput p8, p0, Lcom/local/p5home/TurnCameraStatusState;->gear:I

    iput-wide p9, p0, Lcom/local/p5home/TurnCameraStatusState;->lastAt:J
    :try_end_5c
    .catchall {:try_start_3 .. :try_end_5c} :catchall_5f

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 22
    :catchall_5f
    move-exception p1

    monitor-exit p0

    throw p1

    .line 26
    :cond_62
    :goto_62
    monitor-exit p0

    const/4 p1, 0x0

    return p1
.end method

.method declared-synchronized snapshot(J)Lcom/local/p5home/TurnCameraStatusState$Snapshot;
    .registers 15

    monitor-enter p0

    .line 30
    :try_start_1
    iget-wide v0, p0, Lcom/local/p5home/TurnCameraStatusState;->lastAt:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_10

    cmp-long v4, p1, v0

    if-gez v4, :cond_e

    goto :goto_10

    :cond_e
    sub-long/2addr p1, v0

    goto :goto_12

    :cond_10
    :goto_10
    const-wide/16 p1, -0x1

    :goto_12
    move-wide v10, p1

    .line 31
    new-instance p1, Lcom/local/p5home/TurnCameraStatusState$Snapshot;

    iget-wide v0, p0, Lcom/local/p5home/TurnCameraStatusState;->sequence:J

    cmp-long p2, v0, v2

    if-ltz p2, :cond_27

    cmp-long p2, v10, v2

    if-ltz p2, :cond_27

    const-wide/16 v0, 0x4e20

    cmp-long p2, v10, v0

    if-gtz p2, :cond_27

    const/4 p2, 0x1

    goto :goto_28

    :cond_27
    const/4 p2, 0x0

    :goto_28
    move v5, p2

    iget-boolean v6, p0, Lcom/local/p5home/TurnCameraStatusState;->observer:Z

    iget v7, p0, Lcom/local/p5home/TurnCameraStatusState;->connection:I

    iget v8, p0, Lcom/local/p5home/TurnCameraStatusState;->lamp:I

    iget v9, p0, Lcom/local/p5home/TurnCameraStatusState;->gear:I

    move-object v4, p1

    invoke-direct/range {v4 .. v11}, Lcom/local/p5home/TurnCameraStatusState$Snapshot;-><init>(ZZIIIJ)V
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_37

    monitor-exit p0

    return-object p1

    .line 29
    :catchall_37
    move-exception p1

    monitor-exit p0

    throw p1
.end method

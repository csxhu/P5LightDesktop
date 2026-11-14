.class final Lcom/local/p5home/VehicleBridgePushPolicy$Slot;
.super Ljava/lang/Object;
.source "VehicleBridgePushPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/local/p5home/VehicleBridgePushPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Slot"
.end annotation


# instance fields
.field private epoch:J

.field private pending:Lcom/local/p5home/VehicleBridgePushPolicy$Event;

.field private sentAt:J

.field private submitted:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 3

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/local/p5home/VehicleBridgePushPolicy$Slot;->submitted:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/local/p5home/VehicleBridgePushPolicy$Slot;->sentAt:J

    return-void
.end method


# virtual methods
.method hasPending()Z
    .registers 2

    .line 29
    iget-object v0, p0, Lcom/local/p5home/VehicleBridgePushPolicy$Slot;->pending:Lcom/local/p5home/VehicleBridgePushPolicy$Event;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method offer(JLjava/lang/String;Ljava/lang/Object;J)Z
    .registers 16

    .line 17
    iget-wide v0, p0, Lcom/local/p5home/VehicleBridgePushPolicy$Slot;->epoch:J

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-nez v0, :cond_47

    if-eqz p3, :cond_47

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_47

    .line 18
    :cond_10
    iget-object v0, p0, Lcom/local/p5home/VehicleBridgePushPolicy$Slot;->submitted:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/local/p5home/VehicleBridgePushPolicy$Slot;->pending:Lcom/local/p5home/VehicleBridgePushPolicy$Event;

    return v1

    .line 19
    :cond_1c
    iget-object v0, p0, Lcom/local/p5home/VehicleBridgePushPolicy$Slot;->pending:Lcom/local/p5home/VehicleBridgePushPolicy$Event;

    if-eqz v0, :cond_39

    iget-object v0, v0, Lcom/local/p5home/VehicleBridgePushPolicy$Event;->fingerprint:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/local/p5home/VehicleBridgePushPolicy$Slot;->pending:Lcom/local/p5home/VehicleBridgePushPolicy$Event;

    iget-wide v2, v0, Lcom/local/p5home/VehicleBridgePushPolicy$Event;->created:J

    cmp-long v0, p5, v2

    if-ltz v0, :cond_39

    iget-object v0, p0, Lcom/local/p5home/VehicleBridgePushPolicy$Slot;->pending:Lcom/local/p5home/VehicleBridgePushPolicy$Event;

    iget-wide v2, v0, Lcom/local/p5home/VehicleBridgePushPolicy$Event;->deadline:J

    cmp-long v0, p5, v2

    if-gez v0, :cond_39

    return v1

    .line 20
    :cond_39
    new-instance v0, Lcom/local/p5home/VehicleBridgePushPolicy$Event;

    move-object v2, v0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move-wide v7, p5

    invoke-direct/range {v2 .. v8}, Lcom/local/p5home/VehicleBridgePushPolicy$Event;-><init>(JLjava/lang/String;Ljava/lang/Object;J)V

    iput-object v0, p0, Lcom/local/p5home/VehicleBridgePushPolicy$Slot;->pending:Lcom/local/p5home/VehicleBridgePushPolicy$Event;

    const/4 p1, 0x1

    return p1

    .line 17
    :cond_47
    :goto_47
    return v1
.end method

.method reset(J)V
    .registers 3

    .line 15
    iput-wide p1, p0, Lcom/local/p5home/VehicleBridgePushPolicy$Slot;->epoch:J

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/local/p5home/VehicleBridgePushPolicy$Slot;->pending:Lcom/local/p5home/VehicleBridgePushPolicy$Event;

    const-string p1, ""

    iput-object p1, p0, Lcom/local/p5home/VehicleBridgePushPolicy$Slot;->submitted:Ljava/lang/String;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/local/p5home/VehicleBridgePushPolicy$Slot;->sentAt:J

    return-void
.end method

.method submitted(Lcom/local/p5home/VehicleBridgePushPolicy$Event;J)V
    .registers 8

    .line 28
    iget-wide v0, p1, Lcom/local/p5home/VehicleBridgePushPolicy$Event;->epoch:J

    iget-wide v2, p0, Lcom/local/p5home/VehicleBridgePushPolicy$Slot;->epoch:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    iget-object p1, p1, Lcom/local/p5home/VehicleBridgePushPolicy$Event;->fingerprint:Ljava/lang/String;

    iput-object p1, p0, Lcom/local/p5home/VehicleBridgePushPolicy$Slot;->submitted:Ljava/lang/String;

    iput-wide p2, p0, Lcom/local/p5home/VehicleBridgePushPolicy$Slot;->sentAt:J

    :cond_e
    return-void
.end method

.method take(JJ)Lcom/local/p5home/VehicleBridgePushPolicy$Event;
    .registers 9

    .line 23
    iget-object v0, p0, Lcom/local/p5home/VehicleBridgePushPolicy$Slot;->pending:Lcom/local/p5home/VehicleBridgePushPolicy$Event;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 24
    :cond_6
    iget-wide v2, p0, Lcom/local/p5home/VehicleBridgePushPolicy$Slot;->epoch:J

    cmp-long v2, p1, v2

    if-nez v2, :cond_3c

    iget-wide v2, v0, Lcom/local/p5home/VehicleBridgePushPolicy$Event;->epoch:J

    cmp-long p1, v2, p1

    if-nez p1, :cond_3c

    iget-object p1, p0, Lcom/local/p5home/VehicleBridgePushPolicy$Slot;->pending:Lcom/local/p5home/VehicleBridgePushPolicy$Event;

    iget-wide p1, p1, Lcom/local/p5home/VehicleBridgePushPolicy$Event;->created:J

    cmp-long p1, p3, p1

    if-ltz p1, :cond_3c

    iget-object p1, p0, Lcom/local/p5home/VehicleBridgePushPolicy$Slot;->pending:Lcom/local/p5home/VehicleBridgePushPolicy$Event;

    iget-wide p1, p1, Lcom/local/p5home/VehicleBridgePushPolicy$Event;->deadline:J

    cmp-long p1, p3, p1

    if-ltz p1, :cond_23

    goto :goto_3c

    .line 25
    :cond_23
    iget-wide p1, p0, Lcom/local/p5home/VehicleBridgePushPolicy$Slot;->sentAt:J

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-ltz v0, :cond_37

    cmp-long v0, p3, p1

    if-ltz v0, :cond_37

    sub-long/2addr p3, p1

    const-wide/16 p1, 0x3e8

    cmp-long p1, p3, p1

    if-gez p1, :cond_37

    return-object v1

    .line 26
    :cond_37
    iget-object p1, p0, Lcom/local/p5home/VehicleBridgePushPolicy$Slot;->pending:Lcom/local/p5home/VehicleBridgePushPolicy$Event;

    iput-object v1, p0, Lcom/local/p5home/VehicleBridgePushPolicy$Slot;->pending:Lcom/local/p5home/VehicleBridgePushPolicy$Event;

    return-object p1

    .line 24
    :cond_3c
    :goto_3c
    iput-object v1, p0, Lcom/local/p5home/VehicleBridgePushPolicy$Slot;->pending:Lcom/local/p5home/VehicleBridgePushPolicy$Event;

    return-object v1
.end method

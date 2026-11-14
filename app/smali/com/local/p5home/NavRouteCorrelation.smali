.class final Lcom/local/p5home/NavRouteCorrelation;
.super Ljava/lang/Object;
.source "NavRouteCorrelation.java"


# static fields
.field private static final LIMIT:I = 0x3


# instance fields
.field private issued:J

.field private next:I

.field private final pending:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 3

    .line 15
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/local/p5home/NavRouteCorrelation;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .registers 3

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/local/p5home/NavRouteCorrelation;->pending:Ljava/util/LinkedHashMap;

    .line 16
    if-lez p1, :cond_f

    iput p1, p0, Lcom/local/p5home/NavRouteCorrelation;->next:I

    return-void

    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid_first_id"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private prune(J)V
    .registers 6

    .line 45
    iget-object v0, p0, Lcom/local/p5home/NavRouteCorrelation;->pending:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 46
    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-gtz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_a

    .line 47
    :cond_28
    return-void
.end method


# virtual methods
.method declared-synchronized begin(JJ)I
    .registers 8

    monitor-enter p0

    .line 19
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_45

    cmp-long v0, p3, p1

    if-lez v0, :cond_45

    .line 20
    :try_start_b
    invoke-direct {p0, p1, p2}, Lcom/local/p5home/NavRouteCorrelation;->prune(J)V

    .line 23
    iget-object p1, p0, Lcom/local/p5home/NavRouteCorrelation;->pending:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->size()I

    move-result p1

    const/4 p2, 0x3

    if-ge p1, p2, :cond_42

    iget-wide p1, p0, Lcom/local/p5home/NavRouteCorrelation;->issued:J

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-ltz v0, :cond_21

    goto :goto_42

    .line 24
    :cond_21
    iget v0, p0, Lcom/local/p5home/NavRouteCorrelation;->next:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_2a

    const/4 v1, 0x1

    goto :goto_2c

    :cond_2a
    add-int/lit8 v1, v0, 0x1

    :goto_2c
    iput v1, p0, Lcom/local/p5home/NavRouteCorrelation;->next:I

    const-wide/16 v1, 0x1

    add-long/2addr p1, v1

    iput-wide p1, p0, Lcom/local/p5home/NavRouteCorrelation;->issued:J

    .line 25
    iget-object p1, p0, Lcom/local/p5home/NavRouteCorrelation;->pending:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_40
    .catchall {:try_start_b .. :try_end_40} :catchall_4d

    monitor-exit p0

    return v0

    .line 23
    :cond_42
    :goto_42
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    .line 19
    :cond_45
    :try_start_45
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid_route_deadline"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4d
    .catchall {:try_start_45 .. :try_end_4d} :catchall_4d

    .line 18
    :catchall_4d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized cancel()V
    .registers 2

    monitor-enter p0

    .line 43
    :try_start_1
    iget-object v0, p0, Lcom/local/p5home/NavRouteCorrelation;->pending:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    .line 43
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized discard(IJ)J
    .registers 7

    monitor-enter p0

    .line 38
    :try_start_1
    iget-object v0, p0, Lcom/local/p5home/NavRouteCorrelation;->pending:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_3b

    if-nez p1, :cond_11

    monitor-exit p0

    const-wide/16 p1, -0x1

    return-wide p1

    .line 39
    :cond_11
    :try_start_11
    invoke-direct {p0, p2, p3}, Lcom/local/p5home/NavRouteCorrelation;->prune(J)V

    .line 40
    iget-object p1, p0, Lcom/local/p5home/NavRouteCorrelation;->pending:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 p2, 0x0

    :cond_20
    :goto_20
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, p2

    if-lez v1, :cond_20

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p2
    :try_end_38
    .catchall {:try_start_11 .. :try_end_38} :catchall_3b

    goto :goto_20

    .line 41
    :cond_39
    monitor-exit p0

    return-wide p2

    .line 37
    :catchall_3b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized expire(IJ)Z
    .registers 6

    monitor-enter p0

    .line 32
    :try_start_1
    iget-object v0, p0, Lcom/local/p5home/NavRouteCorrelation;->pending:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    .line 33
    if-eqz p1, :cond_23

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long p1, p2, v0

    if-gez p1, :cond_18

    goto :goto_23

    .line 34
    :cond_18
    invoke-direct {p0, p2, p3}, Lcom/local/p5home/NavRouteCorrelation;->prune(J)V

    iget-object p1, p0, Lcom/local/p5home/NavRouteCorrelation;->pending:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result p1
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_26

    monitor-exit p0

    return p1

    .line 33
    :cond_23
    :goto_23
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    .line 31
    :catchall_26
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized matches(IJ)Z
    .registers 7

    monitor-enter p0

    .line 28
    :try_start_1
    iget-object v0, p0, Lcom/local/p5home/NavRouteCorrelation;->pending:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 29
    if-lez p1, :cond_21

    if-eqz v0, :cond_21

    const-wide/16 v1, 0x0

    cmp-long p1, p2, v1

    if-ltz p1, :cond_21

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_24

    cmp-long p1, p2, v0

    if-gez p1, :cond_21

    const/4 p1, 0x1

    goto :goto_22

    :cond_21
    const/4 p1, 0x0

    :goto_22
    monitor-exit p0

    return p1

    .line 27
    :catchall_24
    move-exception p1

    monitor-exit p0

    throw p1
.end method

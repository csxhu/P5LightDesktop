.class final Lcom/local/p5home/NavConversation;
.super Ljava/lang/Object;
.source "NavConversation.java"


# static fields
.field private static final TTL:J = 0x1d4c0L


# instance fields
.field private epoch:J

.field private poiCount:I

.field private pois:Lorg/json/JSONArray;

.field private routeCount:I

.field private stage:Ljava/lang/String;

.field private target:Lcom/local/p5home/NavProtocol$Poi;

.field private until:J

.field private visiblePlan:Z


# direct methods
.method constructor <init>()V
    .registers 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, "idle"

    iput-object v0, p0, Lcom/local/p5home/NavConversation;->stage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method declared-synchronized active(J)Z
    .registers 5

    monitor-enter p0

    .line 20
    :try_start_1
    const-string v0, "idle"

    iget-object v1, p0, Lcom/local/p5home/NavConversation;->stage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-wide v0, p0, Lcom/local/p5home/NavConversation;->until:J
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_16

    cmp-long p1, p1, v0

    if-gez p1, :cond_13

    const/4 p1, 0x1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    monitor-exit p0

    return p1

    .line 20
    :catchall_16
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized canPoi(IJ)Z
    .registers 5

    monitor-enter p0

    .line 51
    :try_start_1
    const-string v0, "poi_list"

    invoke-virtual {p0, p2, p3}, Lcom/local/p5home/NavConversation;->stage(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_15

    const/4 p2, 0x1

    if-lt p1, p2, :cond_15

    iget p3, p0, Lcom/local/p5home/NavConversation;->poiCount:I
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_18

    if-gt p1, p3, :cond_15

    goto :goto_16

    :cond_15
    const/4 p2, 0x0

    :goto_16
    monitor-exit p0

    return p2

    .line 51
    :catchall_18
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized canRoute(IJ)Z
    .registers 5

    monitor-enter p0

    .line 76
    :try_start_1
    const-string v0, "route_list"

    invoke-virtual {p0, p2, p3}, Lcom/local/p5home/NavConversation;->stage(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_18

    const/4 p2, 0x1

    if-lt p1, p2, :cond_18

    iget p3, p0, Lcom/local/p5home/NavConversation;->routeCount:I
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_1b

    if-gt p1, p3, :cond_18

    const/4 p3, 0x3

    if-gt p1, p3, :cond_18

    goto :goto_19

    :cond_18
    const/4 p2, 0x0

    :goto_19
    monitor-exit p0

    return p2

    .line 76
    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized canStart(J)Z
    .registers 4

    monitor-enter p0

    .line 78
    :try_start_1
    const-string v0, "route_list"

    invoke-virtual {p0, p1, p2}, Lcom/local/p5home/NavConversation;->stage(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    iget p1, p0, Lcom/local/p5home/NavConversation;->routeCount:I
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_16

    if-lez p1, :cond_13

    const/4 p1, 0x1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    monitor-exit p0

    return p1

    .line 78
    :catchall_16
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized candidates(Ljava/lang/String;J)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    monitor-enter p0

    .line 29
    :try_start_1
    invoke-virtual {p0, p2, p3}, Lcom/local/p5home/NavConversation;->active(J)Z

    move-result p2

    if-eqz p2, :cond_61

    const-string p2, "searching"

    iget-object p3, p0, Lcom/local/p5home/NavConversation;->stage:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1c

    const-string p2, "poi_list"

    iget-object p3, p0, Lcom/local/p5home/NavConversation;->stage:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1c

    goto :goto_61

    .line 30
    :cond_1c
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "content"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 31
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    .line 32
    const/4 p3, 0x0

    :goto_2d
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge p3, v0, :cond_4e

    .line 33
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1, p3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "extra"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "navi"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 32
    add-int/lit8 p3, p3, 0x1

    goto :goto_2d

    .line 34
    :cond_4e
    iput-object p2, p0, Lcom/local/p5home/NavConversation;->pois:Lorg/json/JSONArray;

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result p1

    iput p1, p0, Lcom/local/p5home/NavConversation;->poiCount:I

    if-lez p1, :cond_5b

    const-string p1, "poi_list"

    goto :goto_5d

    :cond_5b
    const-string p1, "searching"

    :goto_5d
    iput-object p1, p0, Lcom/local/p5home/NavConversation;->stage:Ljava/lang/String;
    :try_end_5f
    .catchall {:try_start_1 .. :try_end_5f} :catchall_63

    .line 35
    monitor-exit p0

    return-void

    .line 29
    :cond_61
    :goto_61
    monitor-exit p0

    return-void

    .line 28
    :catchall_63
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized clear()V
    .registers 5

    monitor-enter p0

    .line 25
    :try_start_1
    iget-wide v0, p0, Lcom/local/p5home/NavConversation;->epoch:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/local/p5home/NavConversation;->epoch:J

    const-string v0, "idle"

    iput-object v0, p0, Lcom/local/p5home/NavConversation;->stage:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/local/p5home/NavConversation;->until:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/local/p5home/NavConversation;->pois:Lorg/json/JSONArray;

    const/4 v1, 0x0

    iput v1, p0, Lcom/local/p5home/NavConversation;->poiCount:I

    iput v1, p0, Lcom/local/p5home/NavConversation;->routeCount:I

    .line 26
    iput-boolean v1, p0, Lcom/local/p5home/NavConversation;->visiblePlan:Z

    iput-object v0, p0, Lcom/local/p5home/NavConversation;->target:Lcom/local/p5home/NavProtocol$Poi;
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    .line 27
    monitor-exit p0

    return-void

    .line 24
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized epoch()J
    .registers 3

    monitor-enter p0

    .line 22
    :try_start_1
    iget-wide v0, p0, Lcom/local/p5home/NavConversation;->epoch:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    .line 22
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized plan(Lcom/local/p5home/NavProtocol$Poi;J)J
    .registers 8

    monitor-enter p0

    .line 58
    :try_start_1
    iget-wide v0, p0, Lcom/local/p5home/NavConversation;->epoch:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/local/p5home/NavConversation;->epoch:J

    const-string v2, "route_loading"

    iput-object v2, p0, Lcom/local/p5home/NavConversation;->stage:Ljava/lang/String;

    const-wide/32 v2, 0x1d4c0

    add-long/2addr p2, v2

    iput-wide p2, p0, Lcom/local/p5home/NavConversation;->until:J

    iput-object p1, p0, Lcom/local/p5home/NavConversation;->target:Lcom/local/p5home/NavProtocol$Poi;

    .line 59
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/local/p5home/NavConversation;->pois:Lorg/json/JSONArray;

    const/4 p1, 0x0

    iput p1, p0, Lcom/local/p5home/NavConversation;->poiCount:I

    iput p1, p0, Lcom/local/p5home/NavConversation;->routeCount:I

    iput-boolean p1, p0, Lcom/local/p5home/NavConversation;->visiblePlan:Z
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    monitor-exit p0

    return-wide v0

    .line 57
    :catchall_20
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized poi(IJ)Lcom/local/p5home/NavProtocol$Poi;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    monitor-enter p0

    .line 54
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/local/p5home/NavConversation;->canPoi(IJ)Z

    move-result p2

    if-eqz p2, :cond_25

    iget-object p2, p0, Lcom/local/p5home/NavConversation;->pois:Lorg/json/JSONArray;

    if-nez p2, :cond_c

    goto :goto_25

    .line 55
    :cond_c
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string p3, "poi"

    iget-object v0, p0, Lcom/local/p5home/NavConversation;->pois:Lorg/json/JSONArray;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lcom/local/p5home/NavProtocol;->selected(Lorg/json/JSONObject;)Lcom/local/p5home/NavProtocol$Poi;

    move-result-object p1
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_28

    monitor-exit p0

    return-object p1

    .line 54
    :cond_25
    :goto_25
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    .line 53
    :catchall_28
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized poiCount(J)I
    .registers 4

    monitor-enter p0

    .line 79
    :try_start_1
    const-string v0, "poi_list"

    invoke-virtual {p0, p1, p2}, Lcom/local/p5home/NavConversation;->stage(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    iget p1, p0, Lcom/local/p5home/NavConversation;->poiCount:I
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_13

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    monitor-exit p0

    return p1

    .line 79
    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized retire(J)Z
    .registers 5

    monitor-enter p0

    .line 23
    :try_start_1
    iget-wide v0, p0, Lcom/local/p5home/NavConversation;->epoch:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_10

    cmp-long p1, p1, v0

    if-eqz p1, :cond_a

    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :cond_a
    :try_start_a
    invoke-virtual {p0}, Lcom/local/p5home/NavConversation;->clear()V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_10

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 23
    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized routeCount(J)I
    .registers 4

    monitor-enter p0

    .line 80
    :try_start_1
    const-string v0, "route_list"

    invoke-virtual {p0, p1, p2}, Lcom/local/p5home/NavConversation;->stage(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    iget p1, p0, Lcom/local/p5home/NavConversation;->routeCount:I
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_13

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    monitor-exit p0

    return p1

    .line 80
    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized routes(Lcom/local/p5home/NavProtocol$Routes;ZJ)Z
    .registers 7

    monitor-enter p0

    .line 62
    :try_start_1
    invoke-virtual {p0, p3, p4}, Lcom/local/p5home/NavConversation;->active(J)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_36

    const-string p2, "route_loading"

    iget-object v1, p0, Lcom/local/p5home/NavConversation;->stage:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_13

    goto :goto_36

    .line 63
    :cond_13
    iget-object p2, p0, Lcom/local/p5home/NavConversation;->target:Lcom/local/p5home/NavProtocol$Poi;

    if-eqz p2, :cond_1f

    .line 64
    invoke-virtual {p1, p2}, Lcom/local/p5home/NavProtocol$Routes;->matches(Lcom/local/p5home/NavProtocol$Poi;)Z

    move-result p2
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_38

    if-nez p2, :cond_25

    monitor-exit p0

    return v0

    .line 65
    :cond_1f
    :try_start_1f
    iget-boolean p2, p0, Lcom/local/p5home/NavConversation;->visiblePlan:Z
    :try_end_21
    .catchall {:try_start_1f .. :try_end_21} :catchall_38

    if-nez p2, :cond_25

    .line 71
    monitor-exit p0

    return v0

    .line 73
    :cond_25
    :try_start_25
    iget p1, p1, Lcom/local/p5home/NavProtocol$Routes;->count:I

    iput p1, p0, Lcom/local/p5home/NavConversation;->routeCount:I

    const-string p1, "route_list"

    iput-object p1, p0, Lcom/local/p5home/NavConversation;->stage:Ljava/lang/String;

    const-wide/32 p1, 0x1d4c0

    add-long/2addr p3, p1

    iput-wide p3, p0, Lcom/local/p5home/NavConversation;->until:J
    :try_end_33
    .catchall {:try_start_25 .. :try_end_33} :catchall_38

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 62
    :cond_36
    :goto_36
    monitor-exit p0

    return v0

    .line 61
    :catchall_38
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized search(J)J
    .registers 5

    monitor-enter p0

    .line 18
    :try_start_1
    invoke-virtual {p0}, Lcom/local/p5home/NavConversation;->clear()V

    const-string v0, "searching"

    iput-object v0, p0, Lcom/local/p5home/NavConversation;->stage:Ljava/lang/String;

    const-wide/32 v0, 0x1d4c0

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/local/p5home/NavConversation;->until:J

    iget-wide p1, p0, Lcom/local/p5home/NavConversation;->epoch:J
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-wide p1

    .line 18
    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized selectedRoute(J)V
    .registers 5

    monitor-enter p0

    .line 81
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/local/p5home/NavConversation;->canStart(J)Z

    move-result v0

    if-eqz v0, :cond_d

    const-wide/32 v0, 0x1d4c0

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/local/p5home/NavConversation;->until:J
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    :cond_d
    monitor-exit p0

    return-void

    .line 81
    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized stage(J)Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 21
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/local/p5home/NavConversation;->active(J)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/local/p5home/NavConversation;->stage:Ljava/lang/String;

    goto :goto_c

    :cond_a
    const-string p1, "idle"
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    :goto_c
    monitor-exit p0

    return-object p1

    .line 21
    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized starting(J)V
    .registers 5

    monitor-enter p0

    .line 83
    :try_start_1
    const-string v0, "navigation_pending"

    iput-object v0, p0, Lcom/local/p5home/NavConversation;->stage:Ljava/lang/String;

    const-wide/32 v0, 0x1d4c0

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/local/p5home/NavConversation;->until:J

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/local/p5home/NavConversation;->pois:Lorg/json/JSONArray;

    const/4 p1, 0x0

    iput p1, p0, Lcom/local/p5home/NavConversation;->poiCount:I

    iput p1, p0, Lcom/local/p5home/NavConversation;->routeCount:I
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 84
    monitor-exit p0

    return-void

    .line 82
    :catchall_15
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized visibleList(IZZJ)Z
    .registers 8

    monitor-enter p0

    .line 37
    :try_start_1
    invoke-virtual {p0, p4, p5}, Lcom/local/p5home/NavConversation;->active(J)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_64

    const/4 v1, 0x0

    if-nez v0, :cond_a

    monitor-exit p0

    return v1

    .line 38
    :cond_a
    if-eqz p3, :cond_11

    :try_start_c
    invoke-virtual {p0}, Lcom/local/p5home/NavConversation;->clear()V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_64

    monitor-exit p0

    return v1

    .line 39
    :cond_11
    const/4 p3, 0x1

    if-eqz p2, :cond_3e

    .line 41
    :try_start_14
    const-string p1, "poi_list"

    iget-object p2, p0, Lcom/local/p5home/NavConversation;->stage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_36

    const-string p1, "searching"

    iget-object p2, p0, Lcom/local/p5home/NavConversation;->stage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    goto :goto_36

    .line 44
    :cond_29
    const-string p1, "route_loading"

    iget-object p2, p0, Lcom/local/p5home/NavConversation;->stage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_62

    iput-boolean p3, p0, Lcom/local/p5home/NavConversation;->visiblePlan:Z

    goto :goto_62

    .line 42
    :cond_36
    :goto_36
    const/4 p1, 0x0

    invoke-virtual {p0, p1, p4, p5}, Lcom/local/p5home/NavConversation;->plan(Lcom/local/p5home/NavProtocol$Poi;J)J

    iput-boolean p3, p0, Lcom/local/p5home/NavConversation;->visiblePlan:Z
    :try_end_3c
    .catchall {:try_start_14 .. :try_end_3c} :catchall_64

    monitor-exit p0

    return p3

    .line 45
    :cond_3e
    :try_start_3e
    const-string p2, "searching"

    iget-object p4, p0, Lcom/local/p5home/NavConversation;->stage:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_52

    const-string p2, "poi_list"

    iget-object p4, p0, Lcom/local/p5home/NavConversation;->stage:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_62

    :cond_52
    if-lt p1, p3, :cond_62

    const/16 p2, 0xa

    if-gt p1, p2, :cond_62

    .line 46
    iget-object p2, p0, Lcom/local/p5home/NavConversation;->pois:Lorg/json/JSONArray;

    if-nez p2, :cond_62

    iput p1, p0, Lcom/local/p5home/NavConversation;->poiCount:I

    const-string p1, "poi_list"

    iput-object p1, p0, Lcom/local/p5home/NavConversation;->stage:Ljava/lang/String;
    :try_end_62
    .catchall {:try_start_3e .. :try_end_62} :catchall_64

    .line 48
    :cond_62
    :goto_62
    monitor-exit p0

    return v1

    .line 36
    :catchall_64
    move-exception p1

    monitor-exit p0

    throw p1
.end method

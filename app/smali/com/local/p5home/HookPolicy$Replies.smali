.class final Lcom/local/p5home/HookPolicy$Replies;
.super Ljava/lang/Object;
.source "HookPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/local/p5home/HookPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Replies"
.end annotation


# instance fields
.field private final states:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/local/p5home/HookPolicy$Replies;->states:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method declared-synchronized begin(Ljava/lang/String;)Z
    .registers 7

    monitor-enter p0

    .line 145
    :try_start_1
    iget-object v0, p0, Lcom/local/p5home/HookPolicy$Replies;->states:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_53

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    monitor-exit p0

    return v1

    .line 146
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/local/p5home/HookPolicy$Replies;->states:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    const/16 v2, 0x40

    if-lt v0, v2, :cond_49

    iget-object v0, p0, Lcom/local/p5home/HookPolicy$Replies;->states:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    const-string v3, "pending"

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_3e
    .catchall {:try_start_c .. :try_end_3e} :catchall_53

    goto :goto_40

    :cond_3f
    const/4 v0, 0x0

    :goto_40
    if-nez v0, :cond_44

    monitor-exit p0

    return v1

    :cond_44
    :try_start_44
    iget-object v1, p0, Lcom/local/p5home/HookPolicy$Replies;->states:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :cond_49
    iget-object v0, p0, Lcom/local/p5home/HookPolicy$Replies;->states:Ljava/util/LinkedHashMap;

    const-string v1, "pending"

    invoke-virtual {v0, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_50
    .catchall {:try_start_44 .. :try_end_50} :catchall_53

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 144
    :catchall_53
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized finish(Ljava/lang/String;Z)V
    .registers 4

    monitor-enter p0

    .line 149
    :try_start_1
    iget-object v0, p0, Lcom/local/p5home/HookPolicy$Replies;->states:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/local/p5home/HookPolicy$Replies;->states:Ljava/util/LinkedHashMap;

    if-eqz p2, :cond_10

    const-string p2, "dispatched"

    goto :goto_12

    :cond_10
    const-string p2, "failed"

    :goto_12
    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    :cond_15
    monitor-exit p0

    return-void

    .line 149
    :catchall_17
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized state(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 143
    :try_start_1
    iget-object v0, p0, Lcom/local/p5home/HookPolicy$Replies;->states:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object p1

    .line 143
    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

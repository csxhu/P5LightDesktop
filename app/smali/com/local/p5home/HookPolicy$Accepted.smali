.class final Lcom/local/p5home/HookPolicy$Accepted;
.super Ljava/lang/Object;
.source "HookPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/local/p5home/HookPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Accepted"
.end annotation


# instance fields
.field private final seen:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/local/p5home/HookPolicy$Accepted;->seen:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method declared-synchronized submit(Ljava/lang/String;JJLcom/local/p5home/HookPolicy$Submit;)Z
    .registers 10

    monitor-enter p0

    .line 134
    :try_start_1
    iget-object v0, p0, Lcom/local/p5home/HookPolicy$Accepted;->seen:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, p2

    if-gez v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_b

    .line 135
    :cond_29
    iget-object v0, p0, Lcom/local/p5home/HookPolicy$Accepted;->seen:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_67

    const/4 v1, 0x1

    if-eqz v0, :cond_34

    monitor-exit p0

    return v1

    .line 136
    :cond_34
    const/4 v0, 0x0

    :try_start_35
    invoke-interface {p6}, Lcom/local/p5home/HookPolicy$Submit;->send()Z

    move-result p6
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_39} :catch_64
    .catchall {:try_start_35 .. :try_end_39} :catchall_67

    .line 137
    if-nez p6, :cond_3d

    monitor-exit p0

    return v0

    .line 138
    :cond_3d
    :try_start_3d
    iget-object p6, p0, Lcom/local/p5home/HookPolicy$Accepted;->seen:Ljava/util/LinkedHashMap;

    invoke-virtual {p6}, Ljava/util/LinkedHashMap;->size()I

    move-result p6

    const/16 v0, 0x40

    if-lt p6, v0, :cond_58

    iget-object p6, p0, Lcom/local/p5home/HookPolicy$Accepted;->seen:Ljava/util/LinkedHashMap;

    invoke-virtual {p6}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p6, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_58
    iget-object p6, p0, Lcom/local/p5home/HookPolicy$Accepted;->seen:Ljava/util/LinkedHashMap;

    add-long/2addr p2, p4

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p6, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_62
    .catchall {:try_start_3d .. :try_end_62} :catchall_67

    monitor-exit p0

    return v1

    .line 136
    :catch_64
    move-exception p1

    monitor-exit p0

    return v0

    .line 133
    :catchall_67
    move-exception p1

    monitor-exit p0

    throw p1
.end method

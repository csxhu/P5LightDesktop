.class public final Lcom/local/p5home/BridgeStore;
.super Ljava/lang/Object;
.source "BridgeStore.java"


# static fields
.field private static final CODES:[Ljava/lang/String;

.field private static final COUNTERS:[Ljava/lang/String;

.field private static final LOCK:Ljava/lang/Object;

.field private static final replies:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private static final seen:Ljava/util/LinkedHashMap;
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
.method static constructor <clinit>()V
    .registers 16

    .line 12
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    sput-object v0, Lcom/local/p5home/BridgeStore;->replies:Ljava/util/ArrayDeque;

    .line 13
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/local/p5home/BridgeStore;->seen:Ljava/util/LinkedHashMap;

    .line 14
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/local/p5home/BridgeStore;->LOCK:Ljava/lang/Object;

    .line 15
    const-string v1, "asrCalls"

    const-string v2, "busCalls"

    const-string v3, "navCalls"

    const-string v4, "qaAccepted"

    const-string v5, "qaRefused"

    const-string v6, "navAccepted"

    const-string v7, "navRefused"

    const-string v8, "replyDispatched"

    const-string v9, "replyFailed"

    const-string v10, "sessionEndRequests"

    const-string v11, "sessionEnded"

    const-string v12, "sessionEndFailed"

    const-string v13, "wakeHits"

    const-string v14, "musicAccepted"

    const-string v15, "musicRefused"

    filled-new-array/range {v1 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/local/p5home/BridgeStore;->COUNTERS:[Ljava/lang/String;

    .line 16
    const-string v1, "qaCode"

    const-string v2, "navCode"

    const-string v3, "replyCode"

    const-string v4, "sessionCode"

    const-string v5, "ttsCode"

    const-string v6, "turnCode"

    const-string v7, "soloCode"

    const-string v8, "hookBuild"

    const-string v9, "wakeCode"

    const-string v10, "displayCode"

    const-string v11, "musicCode"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/local/p5home/BridgeStore;->CODES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static ack(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 109
    sget-object v0, Lcom/local/p5home/BridgeStore;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/local/p5home/BridgeStore;->replies:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2d

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    const-string v4, "id"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2d

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const-string v1, "kind"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2e

    :cond_2d
    move-object p1, v3

    :goto_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_4c

    .line 112
    const-string v0, "speech"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4b

    const-string p1, "dispatched"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_44

    const-string p1, "\u5df2\u63d0\u4ea4\u5c0fP\u64ad\u62a5"

    const-string p2, ""

    goto :goto_48

    :cond_44
    const-string p1, "\u5c0fP\u6295\u9012\u672a\u5b8c\u6210"

    const-string p2, "\u8bf7\u67e5\u770b\u6a21\u5757\u72b6\u6001\u5e76\u91cd\u542f\u5c0fP\u540e\u91cd\u8bd5"

    :goto_48
    invoke-static {p0, p1, v3, p2}, Lcom/local/p5home/BridgeStore;->update(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_4b
    return-void

    .line 109
    :catchall_4c
    move-exception p0

    :try_start_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw p0
.end method

.method private static enqueue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 11

    .line 86
    if-nez p4, :cond_4

    const-string p4, ""

    :cond_4
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x4b0

    if-le v0, v1, :cond_11

    const/4 v0, 0x0

    invoke-virtual {p4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    .line 87
    :cond_11
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "id"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "kind"

    if-nez p1, :cond_2a

    const-string v2, "speech"

    goto :goto_2b

    :cond_2a
    move-object v2, p1

    :goto_2b
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v1, "event"

    if-nez p2, :cond_35

    const-string v2, ""

    goto :goto_36

    :cond_35
    move-object v2, p2

    :goto_36
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "data"

    if-nez p3, :cond_3f

    const-string p3, ""

    :cond_3f
    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "text"

    invoke-virtual {v0, p3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "created"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p3, "requestId"

    if-nez p5, :cond_56

    const-string p5, ""

    :cond_56
    invoke-virtual {v0, p3, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string p3, "result"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_71

    const-string p3, "support"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_76

    const-string p1, "native://navi.select.route.count"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_76

    :cond_71
    const-string p1, "navEpoch"

    invoke-virtual {v0, p1, p6, p7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 92
    :cond_76
    sget-object p1, Lcom/local/p5home/BridgeStore;->LOCK:Ljava/lang/Object;

    monitor-enter p1

    :goto_79
    :try_start_79
    sget-object p2, Lcom/local/p5home/BridgeStore;->replies:Ljava/util/ArrayDeque;

    invoke-virtual {p2}, Ljava/util/ArrayDeque;->size()I

    move-result p3

    const/16 p4, 0x8

    if-lt p3, p4, :cond_87

    invoke-virtual {p2}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_79

    :cond_87
    invoke-virtual {p2, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    monitor-exit p1
    :try_end_8b
    .catchall {:try_start_79 .. :try_end_8b} :catchall_96

    .line 93
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/local/p5home/ConfigStore;->EVENTS:Landroid/net/Uri;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 94
    return-void

    .line 92
    :catchall_96
    move-exception p0

    :try_start_97
    monitor-exit p1
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_96

    throw p0
.end method

.method public static enqueueReply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 78
    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/local/p5home/BridgeStore;->enqueueReply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static enqueueReply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16

    .line 80
    const-string v0, "result"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/local/p5home/NavAutoSession;->epoch()J

    move-result-wide v0

    goto :goto_f

    :cond_d
    const-wide/16 v0, -0x1

    :goto_f
    move-wide v8, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v2 .. v9}, Lcom/local/p5home/BridgeStore;->enqueue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 81
    return-void
.end method

.method static enqueueRouteCountReply(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 14

    .line 83
    const-string v1, "support"

    const-string v5, ""

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v6, p4

    invoke-static/range {v0 .. v7}, Lcom/local/p5home/BridgeStore;->enqueue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 84
    return-void
.end method

.method static firstRequest(Ljava/lang/String;)Z
    .registers 9

    .line 58
    sget-object v0, Lcom/local/p5home/BridgeStore;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-object v3, Lcom/local/p5home/BridgeStore;->seen:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-eqz v4, :cond_21

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v4, v1, v4

    const-wide/32 v6, 0x1d4c0

    cmp-long v4, v4, v6

    if-gez v4, :cond_21

    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :cond_21
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, p0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_28
    sget-object p0, Lcom/local/p5home/BridgeStore;->seen:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    const/16 v2, 0x40

    if-le v1, v2, :cond_42

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_28

    :cond_42
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_45
    move-exception p0

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_3 .. :try_end_47} :catchall_45

    throw p0
.end method

.method static heartbeat(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 12

    .line 19
    const-string v0, "phase"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "[A-Za-z0-9_.-]{1,100}"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    const-string v0, "HOOK_STATUS"

    .line 20
    :cond_12
    invoke-static {p0}, Lcom/local/p5home/BridgeStore;->p(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v2, "hookLastSeen"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {p0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v2, "hookMessage"

    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 21
    const-string v0, "firmwareMatched"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-interface {p0, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 22
    const-string v0, "asrHook"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-interface {p0, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "navHook"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-interface {p0, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 23
    const-string v0, "navTurnHook"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-interface {p0, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 24
    const-string v0, "ttsHook"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-interface {p0, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "sessionHook"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-interface {p0, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 25
    const-string v0, "musicHook"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-interface {p0, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 26
    const-string v0, "transcriptReady"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-interface {p0, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 27
    const-string v0, "hookPid"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-interface {p0, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 28
    const-string v0, "soloRequestActive"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-interface {p0, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "continuousSupported"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-interface {p0, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "continuousEnabled"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-interface {p0, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 29
    sget-object v0, Lcom/local/p5home/BridgeStore;->COUNTERS:[Ljava/lang/String;

    array-length v3, v0

    move v4, v2

    :goto_ab
    if-ge v4, v3, :cond_bf

    aget-object v5, v0, v4

    const-wide/16 v6, 0x0

    invoke-virtual {p1, v5, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-interface {p0, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v4, v4, 0x1

    goto :goto_ab

    .line 30
    :cond_bf
    sget-object v0, Lcom/local/p5home/BridgeStore;->CODES:[Ljava/lang/String;

    array-length v3, v0

    move v4, v2

    :goto_c3
    if-ge v4, v3, :cond_dc

    aget-object v5, v0, v4

    invoke-virtual {p1, v5, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "[A-Za-z0-9_.-]{0,100}"

    invoke-virtual {v6, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d4

    goto :goto_d6

    :cond_d4
    const-string v6, "INVALID_CODE"

    :goto_d6
    invoke-interface {p0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v4, v4, 0x1

    goto :goto_c3

    .line 33
    :cond_dc
    const-string v0, "navTrace"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\/"

    const-string v5, "/"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 34
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x800

    if-gt v4, v5, :cond_fb

    const-string v4, "[A-Za-z0-9_\\[\\]{}:,./\" -]*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_fb

    move-object v1, v3

    :cond_fb
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 35
    const/4 v0, 0x2

    const-string v1, "navTraceHooks"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 36
    const/4 v0, 0x4

    const-string v1, "wakeWordCount"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-interface {p0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 37
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 38
    return-void
.end method

.method static synthetic lambda$nextReply$0(JLjava/lang/String;)Landroid/os/Bundle;
    .registers 14

    .line 96
    sget-object v0, Lcom/local/p5home/BridgeStore;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 97
    :goto_3
    :try_start_3
    sget-object v1, Lcom/local/p5home/BridgeStore;->replies:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7f

    .line 98
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 99
    const-string v3, "kind"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "event"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 100
    const-string v5, "result"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "support"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_3b

    const-string v3, "native://navi.select.route.count"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    move v3, v6

    goto :goto_3c

    :cond_3b
    move v3, v7

    .line 101
    :goto_3c
    if-eqz v5, :cond_51

    const-string v4, "searching"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_57

    const-string v4, "poi_list"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4f

    goto :goto_57

    :cond_4f
    move v6, v7

    goto :goto_57

    :cond_51
    const-string v4, "route_list"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 102
    :cond_57
    :goto_57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-string v4, "created"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    sub-long/2addr v7, v9

    const-wide/32 v9, 0xea60

    cmp-long v4, v7, v9

    if-gtz v4, :cond_7b

    if-nez v5, :cond_6d

    if-eqz v3, :cond_7f

    :cond_6d
    if-eqz v6, :cond_7b

    const-string v3, "navEpoch"

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v2, v2, p0

    if-eqz v2, :cond_7f

    :cond_7b
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 104
    goto :goto_3

    .line 105
    :cond_7f
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_8b

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    goto :goto_96

    :cond_8b
    new-instance p0, Landroid/os/Bundle;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-direct {p0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_96
    monitor-exit v0

    return-object p0

    .line 106
    :catchall_98
    move-exception p0

    monitor-exit v0
    :try_end_9a
    .catchall {:try_start_3 .. :try_end_9a} :catchall_98

    throw p0
.end method

.method private static migrateOperationState(Landroid/content/Context;)V
    .registers 7

    .line 71
    sget-object v0, Lcom/local/p5home/BridgeStore;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-static {p0}, Lcom/local/p5home/BridgeStore;->p(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "statusSchema"

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_13

    monitor-exit v0

    return-void

    .line 72
    :cond_13
    const-string v1, "requestState"

    const-string v3, ""

    invoke-interface {p0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "statusSchema"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 73
    const-string v3, "\u539f\u8f66\u56de\u9000\u672a\u5b8c\u6210"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_65

    const-string v3, "\u5df2\u6062\u590d\u539f\u8f66\u9ed8\u8ba4\u684c\u9762"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_65

    const-string v3, "\u8f7b\u684c\u9762\u5df2\u8bbe\u4e3a\u9ed8\u8ba4"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_65

    const-string v3, "\u684c\u9762\u5207\u6362\u672a\u5b8c\u6210"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_65

    const-string v3, "\u6b63\u5728\u68c0\u67e5\u539f\u5730\u56fe"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_65

    const-string v3, "\u6b63\u5728\u8bbe\u7f6e\u8f7b\u684c\u9762"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_65

    const-string v3, "\u6b63\u5728\u505c\u6b62\u65e7\u684c\u9762"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_65

    const-string v3, "\u6b63\u5728\u9000\u51fa\u539f\u5730\u56fe"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_88

    .line 74
    :cond_65
    const-string v3, "rootState"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "rootError"

    const-string v4, "lastError"

    const-string v5, ""

    invoke-interface {p0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, v3, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v1, "requestState"

    const-string v3, "\u7b49\u5f85\u4e0b\u4e00\u6b21\u8bed\u97f3\u8bf7\u6c42"

    invoke-interface {p0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v1, "lastError"

    const-string v3, ""

    invoke-interface {p0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 75
    :cond_88
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 76
    monitor-exit v0

    .line 77
    return-void

    .line 76
    :catchall_8d
    move-exception p0

    monitor-exit v0
    :try_end_8f
    .catchall {:try_start_3 .. :try_end_8f} :catchall_8d

    throw p0
.end method

.method static nextReply()Landroid/os/Bundle;
    .registers 1

    .line 95
    new-instance v0, Lcom/local/p5home/BridgeStore$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/local/p5home/BridgeStore$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lcom/local/p5home/NavAutoSession;->withSessionSnapshot(Lcom/local/p5home/NavAutoSession$BridgeRead;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private static p(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "bridge"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method static releaseRequest(Ljava/lang/String;)V
    .registers 3

    .line 59
    sget-object v0, Lcom/local/p5home/BridgeStore;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/local/p5home/BridgeStore;->seen:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public static rootUpdate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 67
    invoke-static {p0}, Lcom/local/p5home/BridgeStore;->migrateOperationState(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/local/p5home/BridgeStore;->p(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, ""

    if-nez p1, :cond_10

    move-object p1, v1

    :cond_10
    const-string v2, "rootState"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    if-nez p2, :cond_19

    move-object p2, v1

    :cond_19
    const-string v0, "rootError"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/local/p5home/ConfigStore;->EVENTS:Landroid/net/Uri;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 69
    return-void
.end method

.method public static status(Landroid/content/Context;)Landroid/os/Bundle;
    .registers 19

    .line 40
    invoke-static/range {p0 .. p0}, Lcom/local/p5home/BridgeStore;->migrateOperationState(Landroid/content/Context;)V

    invoke-static/range {p0 .. p0}, Lcom/local/p5home/BridgeStore;->p(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "hookLastSeen"

    const-wide/16 v3, 0x0

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    .line 41
    cmp-long v2, v5, v3

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-lez v2, :cond_33

    cmp-long v2, v7, v3

    if-ltz v2, :cond_33

    const-wide/16 v11, 0x7530

    cmp-long v2, v7, v11

    if-gez v2, :cond_33

    const-string v2, "firmwareMatched"

    invoke-interface {v0, v2, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_33

    move v2, v9

    goto :goto_34

    :cond_33
    move v2, v10

    .line 42
    :goto_34
    const-string v7, "hookReady"

    if-eqz v2, :cond_52

    const-string v8, "sessionHook"

    invoke-interface {v0, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_52

    const-string v8, "asrHook"

    invoke-interface {v0, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_50

    const-string v8, "navHook"

    invoke-interface {v0, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_52

    :cond_50
    move v8, v9

    goto :goto_53

    :cond_52
    move v8, v10

    :goto_53
    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 43
    const-string v11, "asrHook"

    const-string v12, "navHook"

    const-string v13, "navTurnHook"

    const-string v14, "ttsHook"

    const-string v15, "sessionHook"

    const-string v16, "transcriptReady"

    const-string v17, "musicHook"

    filled-new-array/range {v11 .. v17}, [Ljava/lang/String;

    move-result-object v7

    move v8, v10

    :goto_69
    const/4 v11, 0x7

    if-ge v8, v11, :cond_7f

    aget-object v11, v7, v8

    if-eqz v2, :cond_78

    invoke-interface {v0, v11, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_78

    move v12, v9

    goto :goto_79

    :cond_78
    move v12, v10

    :goto_79
    invoke-virtual {v1, v11, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_69

    .line 44
    :cond_7f
    const-string v7, "soloRequestActive"

    if-eqz v2, :cond_8d

    const-string v8, "soloRequestActive"

    invoke-interface {v0, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_8d

    move v8, v9

    goto :goto_8e

    :cond_8d
    move v8, v10

    :goto_8e
    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 45
    const-string v7, "continuousSupported"

    if-eqz v2, :cond_9f

    const-string v8, "continuousSupported"

    invoke-interface {v0, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_9f

    move v8, v9

    goto :goto_a0

    :cond_9f
    move v8, v10

    :goto_a0
    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v7, "continuousEnabled"

    if-eqz v2, :cond_b1

    const-string v8, "continuousEnabled"

    invoke-interface {v0, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_b1

    move v8, v9

    goto :goto_b2

    :cond_b1
    move v8, v10

    :goto_b2
    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 46
    const-string v7, "ttsHook"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-static/range {p0 .. p0}, Lcom/local/p5home/SpeechOutput;->get(Landroid/content/Context;)Lcom/local/p5home/SpeechOutput;

    move-result-object v8

    invoke-virtual {v8}, Lcom/local/p5home/SpeechOutput;->ready()Z

    move-result v8

    const-string v11, "nativeTtsHook"

    invoke-virtual {v1, v11, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v11, "speechOutputReady"

    invoke-virtual {v1, v11, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v11, "ttsHook"

    if-nez v7, :cond_d5

    if-eqz v8, :cond_d4

    goto :goto_d5

    :cond_d4
    move v9, v10

    :cond_d5
    :goto_d5
    invoke-virtual {v1, v11, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 47
    const-string v7, "hookLastSeen"

    invoke-virtual {v1, v7, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v5, "hookMessage"

    if-eqz v2, :cond_ea

    const-string v6, "hookMessage"

    const-string v7, ""

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_ec

    :cond_ea
    const-string v6, "\u5c1a\u672a\u6536\u5230\u5c0fP\u6a21\u5757\u5fc3\u8df3\uff1b\u8bf7\u5728 LSPosed \u542f\u7528\u5e76\u91cd\u542f\u5c0fP"

    :goto_ec
    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v5, "hookPid"

    if-eqz v2, :cond_fa

    const-string v6, "hookPid"

    invoke-interface {v0, v6, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    goto :goto_fb

    :cond_fa
    move v6, v10

    :goto_fb
    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 49
    sget-object v5, Lcom/local/p5home/BridgeStore;->COUNTERS:[Ljava/lang/String;

    array-length v6, v5

    move v7, v10

    :goto_102
    if-ge v7, v6, :cond_110

    aget-object v8, v5, v7

    invoke-interface {v0, v8, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    invoke-virtual {v1, v8, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_102

    .line 50
    :cond_110
    sget-object v3, Lcom/local/p5home/BridgeStore;->CODES:[Ljava/lang/String;

    array-length v4, v3

    move v5, v10

    :goto_114
    if-ge v5, v4, :cond_124

    aget-object v6, v3, v5

    const-string v7, ""

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_114

    .line 51
    :cond_124
    const-string v3, "navTrace"

    if-eqz v2, :cond_131

    const-string v4, "navTrace"

    const-string v5, ""

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_133

    :cond_131
    const-string v4, ""

    :goto_133
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v3, "navTraceHooks"

    if-eqz v2, :cond_141

    const-string v4, "navTraceHooks"

    invoke-interface {v0, v4, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    goto :goto_142

    :cond_141
    move v4, v10

    :goto_142
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 53
    const-string v3, "wakeWordCount"

    if-eqz v2, :cond_14f

    const-string v2, "wakeWordCount"

    invoke-interface {v0, v2, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    :cond_14f
    invoke-virtual {v1, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 54
    const-string v2, "rootState"

    const-string v3, "rootState"

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "rootError"

    const-string v3, "rootError"

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v2, "requestState"

    const-string v3, "requestState"

    const-string v4, "\u5c1a\u65e0\u8bf7\u6c42"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "lastAnswer"

    const-string v3, "lastAnswer"

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "lastError"

    const-string v3, "lastError"

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    sget-object v2, Lcom/local/p5home/BridgeStore;->LOCK:Ljava/lang/Object;

    monitor-enter v2

    :try_start_196
    const-string v0, "pendingReplies"

    sget-object v3, Lcom/local/p5home/BridgeStore;->replies:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->size()I

    move-result v3

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    monitor-exit v2

    return-object v1

    :catchall_1a3
    move-exception v0

    monitor-exit v2
    :try_end_1a5
    .catchall {:try_start_196 .. :try_end_1a5} :catchall_1a3

    throw v0
.end method

.method public static update(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 61
    invoke-static {p0}, Lcom/local/p5home/BridgeStore;->p(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, ""

    if-nez p1, :cond_d

    move-object p1, v1

    :cond_d
    const-string v2, "requestState"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    if-nez p3, :cond_16

    move-object p3, v1

    :cond_16
    const-string v0, "lastError"

    invoke-interface {p1, v0, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 62
    if-eqz p2, :cond_30

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    const/16 v0, 0x4b0

    if-le p3, v0, :cond_2b

    const/4 p3, 0x0

    invoke-virtual {p2, p3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_2b
    const-string p3, "lastAnswer"

    invoke-interface {p1, p3, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_30
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/local/p5home/ConfigStore;->EVENTS:Landroid/net/Uri;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 64
    return-void
.end method

.class final Lcom/local/p5home/NavAutoSession;
.super Ljava/lang/Object;
.source "NavAutoSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/local/p5home/NavAutoSession$BridgeRead;,
        Lcom/local/p5home/NavAutoSession$MapLaunch;
    }
.end annotation


# static fields
.field private static final LOCK:Ljava/lang/Object;

.field private static final RECEIVER:Landroid/content/BroadcastReceiver;

.field private static application:Landroid/content/Context;

.field private static final conversation:Lcom/local/p5home/NavConversation;

.field private static handler:Landroid/os/Handler;

.field private static observedAt:J

.field private static observedState:I

.field private static registered:Z

.field private static final routeReply:Lcom/local/p5home/NavRouteCorrelation;

.field private static volatile routeReplyEpoch:J

.field private static volatile routeReplyUntil:J

.field private static final search:Lcom/local/p5home/NavCorrelation;

.field private static volatile searchEpoch:J

.field private static sink:Lcom/local/p5home/Navigator$ReplySink;

.field private static statusEvent:Ljava/lang/String;

.field private static statusGeneration:J

.field private static statusUntil:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 16
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/local/p5home/NavAutoSession;->LOCK:Ljava/lang/Object;

    .line 21
    new-instance v0, Lcom/local/p5home/NavCorrelation;

    invoke-direct {v0}, Lcom/local/p5home/NavCorrelation;-><init>()V

    sput-object v0, Lcom/local/p5home/NavAutoSession;->search:Lcom/local/p5home/NavCorrelation;

    .line 22
    new-instance v0, Lcom/local/p5home/NavRouteCorrelation;

    invoke-direct {v0}, Lcom/local/p5home/NavRouteCorrelation;-><init>()V

    sput-object v0, Lcom/local/p5home/NavAutoSession;->routeReply:Lcom/local/p5home/NavRouteCorrelation;

    .line 23
    new-instance v0, Lcom/local/p5home/NavConversation;

    invoke-direct {v0}, Lcom/local/p5home/NavConversation;-><init>()V

    sput-object v0, Lcom/local/p5home/NavAutoSession;->conversation:Lcom/local/p5home/NavConversation;

    .line 25
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/local/p5home/NavAutoSession;->searchEpoch:J

    sput-wide v0, Lcom/local/p5home/NavAutoSession;->routeReplyEpoch:J

    .line 27
    const-string v0, ""

    sput-object v0, Lcom/local/p5home/NavAutoSession;->statusEvent:Ljava/lang/String;

    .line 28
    const/4 v0, -0x1

    sput v0, Lcom/local/p5home/NavAutoSession;->observedState:I

    .line 381
    new-instance v0, Lcom/local/p5home/NavAutoSession$1;

    invoke-direct {v0}, Lcom/local/p5home/NavAutoSession$1;-><init>()V

    sput-object v0, Lcom/local/p5home/NavAutoSession;->RECEIVER:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .registers 1

    .line 15
    sget-object v0, Lcom/local/p5home/NavAutoSession;->LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Intent;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 15
    invoke-static {p0}, Lcom/local/p5home/NavAutoSession;->receiveSearch(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Intent;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 15
    invoke-static {p0}, Lcom/local/p5home/NavAutoSession;->receiveState(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300()Lcom/local/p5home/NavConversation;
    .registers 1

    .line 15
    sget-object v0, Lcom/local/p5home/NavAutoSession;->conversation:Lcom/local/p5home/NavConversation;

    return-object v0
.end method

.method static synthetic access$400()V
    .registers 0

    .line 15
    invoke-static {}, Lcom/local/p5home/NavAutoSession;->clearRouteQueries()V

    return-void
.end method

.method static synthetic access$500(Landroid/content/Context;JI)V
    .registers 4

    .line 15
    invoke-static {p0, p1, p2, p3}, Lcom/local/p5home/NavAutoSession;->pollRoutes(Landroid/content/Context;JI)V

    return-void
.end method

.method static synthetic access$600(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 15
    invoke-static {p0, p1}, Lcom/local/p5home/NavAutoSession;->receiveRoutes(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static beginUiSearch(Landroid/content/Context;)J
    .registers 4

    .line 60
    sget-object v0, Lcom/local/p5home/NavAutoSession;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 61
    :try_start_3
    invoke-static {p0}, Lcom/local/p5home/NavAutoSession;->ready(Landroid/content/Context;)V

    sget-object p0, Lcom/local/p5home/NavAutoSession;->search:Lcom/local/p5home/NavCorrelation;

    invoke-virtual {p0}, Lcom/local/p5home/NavCorrelation;->cancel()V

    invoke-static {}, Lcom/local/p5home/NavAutoSession;->clearRouteQueries()V

    .line 62
    sget-object p0, Lcom/local/p5home/NavAutoSession;->conversation:Lcom/local/p5home/NavConversation;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/local/p5home/NavConversation;->search(J)J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 63
    :catchall_1a
    move-exception p0

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method static beginUiSearch(Landroid/content/Context;J)J
    .registers 6

    .line 66
    sget-object v0, Lcom/local/p5home/NavAutoSession;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 67
    :try_start_3
    sget-object v1, Lcom/local/p5home/NavAutoSession;->conversation:Lcom/local/p5home/NavConversation;

    invoke-virtual {v1}, Lcom/local/p5home/NavConversation;->epoch()J

    move-result-wide v1

    cmp-long p1, v1, p1

    if-nez p1, :cond_12

    invoke-static {p0}, Lcom/local/p5home/NavAutoSession;->beginUiSearch(Landroid/content/Context;)J

    move-result-wide p0

    goto :goto_14

    :cond_12
    const-wide/16 p0, -0x1

    :goto_14
    monitor-exit v0

    return-wide p0

    .line 68
    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method static cancelConversation()V
    .registers 2

    .line 76
    sget-object v0, Lcom/local/p5home/NavAutoSession;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/local/p5home/NavAutoSession;->cancelSearch()V

    invoke-static {}, Lcom/local/p5home/NavAutoSession;->clearRouteQueries()V

    sget-object v1, Lcom/local/p5home/NavAutoSession;->conversation:Lcom/local/p5home/NavConversation;

    invoke-virtual {v1}, Lcom/local/p5home/NavConversation;->clear()V

    monitor-exit v0

    return-void

    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method static cancelSearch()V
    .registers 1

    .line 40
    sget-object v0, Lcom/local/p5home/NavAutoSession;->search:Lcom/local/p5home/NavCorrelation;

    invoke-virtual {v0}, Lcom/local/p5home/NavCorrelation;->cancel()V

    return-void
.end method

.method private static clearRouteQueries()V
    .registers 2

    .line 57
    sget-object v0, Lcom/local/p5home/NavAutoSession;->routeReply:Lcom/local/p5home/NavRouteCorrelation;

    invoke-virtual {v0}, Lcom/local/p5home/NavRouteCorrelation;->cancel()V

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/local/p5home/NavAutoSession;->routeReplyEpoch:J

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/local/p5home/NavAutoSession;->routeReplyUntil:J

    return-void
.end method

.method static control(Landroid/content/Context;Ljava/lang/String;IJ)Lcom/local/p5home/Navigator$Result;
    .registers 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 125
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-wide/from16 v2, p3

    sget-object v4, Lcom/local/p5home/NavAutoSession;->LOCK:Ljava/lang/Object;

    monitor-enter v4

    .line 128
    :try_start_9
    sget-object v5, Lcom/local/p5home/NavAutoSession;->conversation:Lcom/local/p5home/NavConversation;

    invoke-virtual {v5}, Lcom/local/p5home/NavConversation;->epoch()J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-eqz v6, :cond_1b

    const-string v0, "\u5730\u56fe\u4f1a\u8bdd\u5df2\u66f4\u65b0\uff0c\u8bf7\u6839\u636e\u5f53\u524d\u5019\u9009\u91cd\u65b0\u9009\u62e9"

    invoke-static {v0}, Lcom/local/p5home/Navigator;->no(Ljava/lang/String;)Lcom/local/p5home/Navigator$Result;

    move-result-object v0

    monitor-exit v4

    return-object v0

    .line 129
    :cond_1b
    invoke-static/range {p1 .. p2}, Lcom/local/p5home/NavAutoSession;->validateControl(Ljava/lang/String;I)Lcom/local/p5home/Navigator$Result;

    move-result-object v6

    .line 130
    iget-boolean v7, v6, Lcom/local/p5home/Navigator$Result;->accepted:Z

    if-nez v7, :cond_25

    monitor-exit v4

    return-object v6

    .line 131
    :cond_25
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 132
    invoke-virtual {v5, v6, v7}, Lcom/local/p5home/NavConversation;->stage(J)Ljava/lang/String;

    move-result-object v8

    .line 133
    const-string v9, "select"

    move-object/from16 v10, p1

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_45

    const-string v9, "poi_list"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_42

    const-string v9, "select_poi"

    goto :goto_46

    :cond_42
    const-string v9, "select_route"

    goto :goto_46

    :cond_45
    move-object v9, v10

    .line 134
    :goto_46
    const-string v10, "select_poi"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v10, :cond_d8

    .line 135
    invoke-virtual {v5, v1, v6, v7}, Lcom/local/p5home/NavConversation;->poi(IJ)Lcom/local/p5home/NavProtocol$Poi;

    move-result-object v2

    .line 136
    if-eqz v2, :cond_5c

    invoke-static {v0, v2}, Lcom/local/p5home/NavAutoSession;->plan(Landroid/content/Context;Lcom/local/p5home/NavProtocol$Poi;)Lcom/local/p5home/Navigator$Result;

    move-result-object v0

    monitor-exit v4

    return-object v0

    .line 141
    :cond_5c
    invoke-static {}, Lcom/local/p5home/NavAutoSession;->clearRouteQueries()V

    const/4 v2, 0x0

    invoke-virtual {v5, v2, v6, v7}, Lcom/local/p5home/NavConversation;->plan(Lcom/local/p5home/NavProtocol$Poi;J)J

    move-result-wide v2
    :try_end_64
    .catchall {:try_start_9 .. :try_end_64} :catchall_224

    .line 142
    const/16 v6, 0x2fa9

    :try_start_66
    invoke-static {v6}, Lcom/local/p5home/Navigator;->broadcast(I)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "EXTRA_CHOICE"

    invoke-static/range {p2 .. p2}, Lcom/local/p5home/NavProtocol;->visiblePoiChoice(I)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "EXTRA_PAGE_OPERATETYPE"

    .line 143
    invoke-virtual {v6, v7, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v6

    .line 142
    invoke-virtual {v0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_7d
    .catch Ljava/lang/RuntimeException; {:try_start_66 .. :try_end_7d} :catch_cc
    .catchall {:try_start_66 .. :try_end_7d} :catchall_224

    .line 144
    nop

    .line 145
    :try_start_7e
    invoke-virtual {v5}, Lcom/local/p5home/NavConversation;->epoch()J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-nez v6, :cond_c4

    const-string v6, "route_loading"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Lcom/local/p5home/NavConversation;->stage(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_97

    goto :goto_c4

    .line 146
    :cond_97
    invoke-static {v0, v2, v3, v11}, Lcom/local/p5home/NavAutoSession;->pollRoutes(Landroid/content/Context;JI)V

    .line 147
    new-instance v0, Lcom/local/p5home/Navigator$Result;

    const/4 v13, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5df2\u53d1\u9001\u5f53\u524d\u9ad8\u5fb7\u5217\u8868\u7b2c"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u9879\u7684\u53bb\u8fd9\u91cc\u8bf7\u6c42\uff0c\u7b49\u5f85\u5730\u56fe\u7b97\u8def\u56de\u5305"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "pending"

    const-string v16, ""

    const-string v17, ""

    const-string v18, ""

    move-object v12, v0

    invoke-direct/range {v12 .. v18}, Lcom/local/p5home/Navigator$Result;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v4

    return-object v0

    .line 145
    :cond_c4
    :goto_c4
    const-string v0, "\u5730\u70b9\u8bf7\u6c42\u5df2\u53d1\u9001\uff0c\u4f1a\u8bdd\u5df2\u66f4\u65b0\u6216\u8fc7\u671f\uff0c\u8bf7\u5728\u5730\u56fe\u5185\u786e\u8ba4"

    invoke-static {v0}, Lcom/local/p5home/Navigator;->no(Ljava/lang/String;)Lcom/local/p5home/Navigator$Result;

    move-result-object v0

    monitor-exit v4

    return-object v0

    .line 144
    :catch_cc
    move-exception v0

    invoke-static {v2, v3}, Lcom/local/p5home/NavAutoSession;->retireFailedPlan(J)V

    const-string v0, "\u672a\u80fd\u53d1\u9001\u5730\u70b9\u9009\u62e9\u8bf7\u6c42\uff0c\u8bf7\u5728\u5730\u56fe\u5185\u64cd\u4f5c"

    invoke-static {v0}, Lcom/local/p5home/Navigator;->no(Ljava/lang/String;)Lcom/local/p5home/Navigator$Result;

    move-result-object v0

    monitor-exit v4

    return-object v0

    .line 149
    :cond_d8
    const-string v6, "select_route"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_180

    const-string v6, "select_route_start"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ea

    goto/16 :goto_180

    .line 161
    :cond_ea
    const-string v1, "start"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_f0
    .catchall {:try_start_7e .. :try_end_f0} :catchall_224

    if-eqz v1, :cond_13c

    .line 162
    const/16 v1, 0x2719

    :try_start_f4
    invoke-static {v1}, Lcom/local/p5home/Navigator;->broadcast(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_fb
    .catch Ljava/lang/RuntimeException; {:try_start_f4 .. :try_end_fb} :catch_130
    .catchall {:try_start_f4 .. :try_end_fb} :catchall_224

    .line 163
    nop

    .line 164
    :try_start_fc
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 165
    invoke-virtual {v5}, Lcom/local/p5home/NavConversation;->epoch()J

    move-result-wide v8

    cmp-long v1, v8, v2

    if-nez v1, :cond_128

    invoke-virtual {v5, v6, v7}, Lcom/local/p5home/NavConversation;->canStart(J)Z

    move-result v1

    if-nez v1, :cond_10f

    goto :goto_128

    .line 166
    :cond_10f
    invoke-virtual {v5, v6, v7}, Lcom/local/p5home/NavConversation;->starting(J)V

    .line 167
    invoke-static/range {p0 .. p0}, Lcom/local/p5home/NavAutoSession;->navigationDispatched(Landroid/content/Context;)V

    .line 168
    new-instance v0, Lcom/local/p5home/Navigator$Result;

    const/4 v9, 0x1

    const-string v10, "\u5f00\u59cb\u5f53\u524d\u8def\u7ebf\u7684\u8bf7\u6c42\u5df2\u53d1\u9001\uff0c\u7b49\u5f85\u9ad8\u5fb7\u786e\u8ba4"

    const-string v11, "pending"

    const-string v12, ""

    const-string v13, ""

    const-string v14, ""

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/local/p5home/Navigator$Result;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v4

    return-object v0

    .line 165
    :cond_128
    :goto_128
    const-string v0, "\u4e0a\u4e00\u5f00\u59cb\u8bf7\u6c42\u5df2\u53d1\u9001\uff0c\u4f1a\u8bdd\u5df2\u66f4\u65b0\u6216\u8fc7\u671f\uff0c\u8bf7\u5728\u5730\u56fe\u5185\u786e\u8ba4"

    invoke-static {v0}, Lcom/local/p5home/Navigator;->no(Ljava/lang/String;)Lcom/local/p5home/Navigator$Result;

    move-result-object v0

    monitor-exit v4

    return-object v0

    .line 163
    :catch_130
    move-exception v0

    invoke-static/range {p3 .. p4}, Lcom/local/p5home/NavAutoSession;->retireFailedPlan(J)V

    const-string v0, "\u5f00\u59cb\u5bfc\u822a\u8bf7\u6c42\u672a\u786e\u8ba4\uff0c\u8bf7\u5728\u5730\u56fe\u5185\u68c0\u67e5\u8def\u7ebf\u72b6\u6001"

    invoke-static {v0}, Lcom/local/p5home/Navigator;->no(Ljava/lang/String;)Lcom/local/p5home/Navigator$Result;

    move-result-object v0

    monitor-exit v4

    return-object v0

    .line 170
    :cond_13c
    const-string v1, "route_loading"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_154

    const-string v1, "route_list"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_154

    const-string v1, "navigation_pending"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_155

    :cond_154
    move v11, v12

    .line 171
    :cond_155
    if-eqz v11, :cond_174

    .line 172
    invoke-static {v0, v2, v3}, Lcom/local/p5home/NavAutoSession;->stopIfCurrent(Landroid/content/Context;J)Lcom/local/p5home/Navigator$Result;

    move-result-object v0

    .line 173
    iget-boolean v1, v0, Lcom/local/p5home/Navigator$Result;->accepted:Z

    if-nez v1, :cond_161

    monitor-exit v4

    return-object v0

    .line 174
    :cond_161
    new-instance v0, Lcom/local/p5home/Navigator$Result;

    const/4 v6, 0x1

    const-string v7, "\u5df2\u53d6\u6d88\u672c\u6b21\u8def\u7ebf\u4f1a\u8bdd\u5e76\u53d1\u9001\u7ed3\u675f\u8bf7\u6c42\uff0c\u7b49\u5f85\u9ad8\u5fb7\u786e\u8ba4"

    const-string v8, "pending"

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    move-object v5, v0

    invoke-direct/range {v5 .. v11}, Lcom/local/p5home/Navigator$Result;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v4

    return-object v0

    .line 176
    :cond_174
    invoke-static {}, Lcom/local/p5home/NavAutoSession;->cancelConversation()V

    .line 177
    new-instance v0, Lcom/local/p5home/Navigator$Result;

    const-string v1, "\u5df2\u53d6\u6d88\u672c\u6b21\u5730\u70b9\u5019\u9009\u4f1a\u8bdd\uff1b\u672a\u64cd\u4f5c\u5176\u5b83\u8def\u7ebf"

    invoke-direct {v0, v12, v1}, Lcom/local/p5home/Navigator$Result;-><init>(ZLjava/lang/String;)V

    monitor-exit v4

    return-object v0

    .line 150
    :cond_180
    :goto_180
    const-string v6, "select_route_start"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_186
    .catchall {:try_start_fc .. :try_end_186} :catchall_224

    .line 151
    const/16 v7, 0x2747

    :try_start_188
    invoke-static {v7}, Lcom/local/p5home/Navigator;->broadcast(I)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "EXTRA_CHANGE_ROAD"

    invoke-virtual {v7, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "EXTRA_START_NAVI"

    .line 152
    invoke-virtual {v7, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v7

    .line 151
    invoke-virtual {v0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_19b
    .catch Ljava/lang/RuntimeException; {:try_start_188 .. :try_end_19b} :catch_218
    .catchall {:try_start_188 .. :try_end_19b} :catchall_224

    .line 153
    nop

    .line 154
    :try_start_19c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 155
    invoke-virtual {v5}, Lcom/local/p5home/NavConversation;->epoch()J

    move-result-wide v9

    cmp-long v2, v9, v2

    if-nez v2, :cond_210

    invoke-virtual {v5, v1, v7, v8}, Lcom/local/p5home/NavConversation;->canRoute(IJ)Z

    move-result v2

    if-nez v2, :cond_1af

    goto :goto_210

    .line 156
    :cond_1af
    if-eqz v6, :cond_1e1

    invoke-virtual {v5, v7, v8}, Lcom/local/p5home/NavConversation;->starting(J)V

    invoke-static/range {p0 .. p0}, Lcom/local/p5home/NavAutoSession;->navigationDispatched(Landroid/content/Context;)V

    .line 157
    new-instance v0, Lcom/local/p5home/Navigator$Result;

    const/4 v10, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5df2\u53d1\u9001\u9009\u62e9\u65b9\u6848"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u5e76\u5f00\u59cb\u5bfc\u822a\u7684\u8bf7\u6c42\uff0c\u7b49\u5f85\u9ad8\u5fb7\u786e\u8ba4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "pending"

    const-string v13, ""

    const-string v14, ""

    const-string v15, ""

    move-object v9, v0

    invoke-direct/range {v9 .. v15}, Lcom/local/p5home/Navigator$Result;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v4

    return-object v0

    .line 158
    :cond_1e1
    invoke-virtual {v5, v7, v8}, Lcom/local/p5home/NavConversation;->selectedRoute(J)V

    .line 159
    new-instance v0, Lcom/local/p5home/Navigator$Result;

    const/16 v17, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5df2\u53d1\u9001\u9009\u62e9\u65b9\u6848"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u7684\u8bf7\u6c42\uff1b\u5c1a\u672a\u5f00\u59cb\u5bfc\u822a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const-string v19, "pending"

    const-string v20, ""

    const-string v21, ""

    const-string v22, ""

    move-object/from16 v16, v0

    invoke-direct/range {v16 .. v22}, Lcom/local/p5home/Navigator$Result;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v4

    return-object v0

    .line 155
    :cond_210
    :goto_210
    const-string v0, "\u4e0a\u4e00\u8def\u7ebf\u8bf7\u6c42\u5df2\u53d1\u9001\uff0c\u4f1a\u8bdd\u5df2\u66f4\u65b0\u6216\u8fc7\u671f\uff0c\u8bf7\u5728\u5730\u56fe\u5185\u786e\u8ba4"

    invoke-static {v0}, Lcom/local/p5home/Navigator;->no(Ljava/lang/String;)Lcom/local/p5home/Navigator$Result;

    move-result-object v0

    monitor-exit v4

    return-object v0

    .line 153
    :catch_218
    move-exception v0

    invoke-static/range {p3 .. p4}, Lcom/local/p5home/NavAutoSession;->retireFailedPlan(J)V

    const-string v0, "\u8def\u7ebf\u9009\u62e9\u8bf7\u6c42\u672a\u786e\u8ba4\uff0c\u8bf7\u5728\u5730\u56fe\u5185\u68c0\u67e5\u8def\u7ebf\u72b6\u6001"

    invoke-static {v0}, Lcom/local/p5home/Navigator;->no(Ljava/lang/String;)Lcom/local/p5home/Navigator$Result;

    move-result-object v0

    monitor-exit v4

    return-object v0

    .line 178
    :catchall_224
    move-exception v0

    monitor-exit v4
    :try_end_226
    .catchall {:try_start_19c .. :try_end_226} :catchall_224

    throw v0
.end method

.method private static emit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 458
    sget-object v0, Lcom/local/p5home/NavAutoSession;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/local/p5home/NavAutoSession;->sink:Lcom/local/p5home/Navigator$ReplySink;

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_e

    .line 459
    if-eqz v1, :cond_d

    :try_start_8
    invoke-interface {v1, p0, p1, p2, p3}, Lcom/local/p5home/Navigator$ReplySink;->onReply(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_b} :catch_c

    goto :goto_d

    :catch_c
    move-exception p0

    .line 460
    :cond_d
    :goto_d
    return-void

    .line 458
    :catchall_e
    move-exception p0

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw p0
.end method

.method static epoch()J
    .registers 2

    .line 41
    sget-object v0, Lcom/local/p5home/NavAutoSession;->conversation:Lcom/local/p5home/NavConversation;

    invoke-virtual {v0}, Lcom/local/p5home/NavConversation;->epoch()J

    move-result-wide v0

    return-wide v0
.end method

.method private static fresh()Z
    .registers 4

    .line 378
    sget-wide v0, Lcom/local/p5home/NavAutoSession;->observedAt:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_17

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcom/local/p5home/NavAutoSession;->observedAt:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-gez v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    return v0
.end method

.method static hasSearch()Z
    .registers 3

    .line 39
    sget-object v0, Lcom/local/p5home/NavAutoSession;->search:Lcom/local/p5home/NavCorrelation;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/local/p5home/NavCorrelation;->waiting(J)Z

    move-result v0

    return v0
.end method

.method static hasSink()Z
    .registers 2

    .line 38
    sget-object v0, Lcom/local/p5home/NavAutoSession;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/local/p5home/NavAutoSession;->sink:Lcom/local/p5home/Navigator$ReplySink;

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    monitor-exit v0

    return v1

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method static synthetic lambda$navigationDispatched$4(JLandroid/content/Context;)V
    .registers 6

    .line 305
    sget-object v0, Lcom/local/p5home/NavAutoSession;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/local/p5home/NavAutoSession;->conversation:Lcom/local/p5home/NavConversation;

    invoke-virtual {v1}, Lcom/local/p5home/NavConversation;->epoch()J

    move-result-wide v1

    cmp-long p0, v1, p0

    if-nez p0, :cond_12

    const-string p0, ""

    invoke-static {p2, p0}, Lcom/local/p5home/NavAutoSession;->requestState(Landroid/content/Context;Ljava/lang/String;)V

    :cond_12
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p0
.end method

.method static synthetic lambda$pollRoutes$0(JJ)V
    .registers 10

    .line 230
    sget-object v0, Lcom/local/p5home/NavAutoSession;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 231
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 232
    sget-object v3, Lcom/local/p5home/NavAutoSession;->conversation:Lcom/local/p5home/NavConversation;

    invoke-virtual {v3}, Lcom/local/p5home/NavConversation;->epoch()J

    move-result-wide v4

    cmp-long v4, p0, v4

    if-nez v4, :cond_3e

    sget-wide v4, Lcom/local/p5home/NavAutoSession;->routeReplyEpoch:J

    cmp-long p0, v4, p0

    if-nez p0, :cond_3e

    sget-wide p0, Lcom/local/p5home/NavAutoSession;->routeReplyUntil:J

    cmp-long p0, p0, p2

    if-nez p0, :cond_3e

    cmp-long p0, v1, p2

    if-ltz p0, :cond_3e

    const-string p0, "route_loading"

    .line 233
    invoke-virtual {v3, v1, v2}, Lcom/local/p5home/NavConversation;->stage(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2e

    goto :goto_3e

    .line 234
    :cond_2e
    invoke-static {}, Lcom/local/p5home/NavAutoSession;->clearRouteQueries()V

    const-string p0, "notice"

    const-string p1, ""

    const-string p2, ""

    const-string p3, "\u5c1a\u672a\u8bfb\u53d6\u5230\u4e0e\u672c\u6b21\u9009\u62e9\u5339\u914d\u7684\u8def\u7ebf\u65b9\u6848\uff0c\u8bf7\u5728\u9ad8\u5fb7\u754c\u9762\u786e\u8ba4"

    invoke-static {p0, p1, p2, p3}, Lcom/local/p5home/NavAutoSession;->emit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    monitor-exit v0

    .line 236
    return-void

    .line 233
    :cond_3e
    :goto_3e
    monitor-exit v0

    return-void

    .line 235
    :catchall_40
    move-exception p0

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_40

    throw p0
.end method

.method static synthetic lambda$pollRoutes$1(JI)V
    .registers 9

    .line 241
    sget-object v0, Lcom/local/p5home/NavAutoSession;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 245
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 246
    sget-object v3, Lcom/local/p5home/NavAutoSession;->conversation:Lcom/local/p5home/NavConversation;

    invoke-virtual {v3}, Lcom/local/p5home/NavConversation;->epoch()J

    move-result-wide v4

    cmp-long p0, p0, v4

    if-nez p0, :cond_33

    const-string p0, "route_loading"

    invoke-virtual {v3, v1, v2}, Lcom/local/p5home/NavConversation;->stage(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_33

    sget-object p0, Lcom/local/p5home/NavAutoSession;->routeReply:Lcom/local/p5home/NavRouteCorrelation;

    .line 247
    invoke-virtual {p0, p2, v1, v2}, Lcom/local/p5home/NavRouteCorrelation;->expire(IJ)Z

    move-result p0

    if-nez p0, :cond_26

    goto :goto_33

    .line 248
    :cond_26
    const-string p0, "notice"

    const-string p1, ""

    const-string p2, ""

    const-string v1, "\u5c1a\u672a\u8bfb\u53d6\u5230\u4e0e\u672c\u6b21\u9009\u62e9\u5339\u914d\u7684\u8def\u7ebf\u65b9\u6848\uff0c\u8bf7\u5728\u9ad8\u5fb7\u754c\u9762\u786e\u8ba4"

    invoke-static {p0, p1, p2, v1}, Lcom/local/p5home/NavAutoSession;->emit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    monitor-exit v0

    .line 250
    return-void

    .line 247
    :cond_33
    :goto_33
    monitor-exit v0

    return-void

    .line 249
    :catchall_35
    move-exception p0

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw p0
.end method

.method static synthetic lambda$pollRoutes$2(JLandroid/content/Context;I)V
    .registers 10

    .line 211
    sget-object v0, Lcom/local/p5home/NavAutoSession;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 212
    :try_start_3
    sget-object v1, Lcom/local/p5home/NavAutoSession;->conversation:Lcom/local/p5home/NavConversation;

    invoke-virtual {v1}, Lcom/local/p5home/NavConversation;->epoch()J

    move-result-wide v2

    cmp-long v2, v2, p0

    if-nez v2, :cond_bb

    const-string v2, "route_loading"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/local/p5home/NavConversation;->stage(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    goto/16 :goto_bb

    .line 213
    :cond_1f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 214
    const-wide/16 v3, 0x1388

    add-long/2addr v3, v1

    .line 215
    sget-object v5, Lcom/local/p5home/NavAutoSession;->routeReply:Lcom/local/p5home/NavRouteCorrelation;

    invoke-virtual {v5, v1, v2, v3, v4}, Lcom/local/p5home/NavRouteCorrelation;->begin(JJ)I

    move-result v1

    .line 216
    if-nez v1, :cond_3b

    const-string p0, "notice"

    const-string p1, ""

    const-string p2, ""

    const-string p3, "\u8def\u7ebf\u67e5\u8be2\u6682\u4e0d\u53ef\u7528\uff0c\u8bf7\u5728\u5730\u56fe\u5185\u786e\u8ba4"

    invoke-static {p0, p1, p2, p3}, Lcom/local/p5home/NavAutoSession;->emit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    .line 217
    :cond_3b
    sput-wide v3, Lcom/local/p5home/NavAutoSession;->routeReplyUntil:J

    .line 218
    sput-wide p0, Lcom/local/p5home/NavAutoSession;->routeReplyEpoch:J
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_bd

    .line 220
    const/16 v2, 0x2748

    :try_start_41
    invoke-static {v2}, Lcom/local/p5home/Navigator;->broadcast(I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "EXTRA_TYPE"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "EXTRA_REQUESTCODE"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_55
    .catch Ljava/lang/RuntimeException; {:try_start_41 .. :try_end_55} :catch_6e
    .catchall {:try_start_41 .. :try_end_55} :catchall_bd

    .line 238
    nop

    .line 239
    const/16 v2, 0x8

    if-ge p3, v2, :cond_60

    add-int/lit8 p3, p3, 0x1

    :try_start_5c
    invoke-static {p2, p0, p1, p3}, Lcom/local/p5home/NavAutoSession;->pollRoutes(Landroid/content/Context;JI)V

    goto :goto_6c

    .line 240
    :cond_60
    sget-object p2, Lcom/local/p5home/NavAutoSession;->handler:Landroid/os/Handler;

    new-instance p3, Lcom/local/p5home/NavAutoSession$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0, p1, v1}, Lcom/local/p5home/NavAutoSession$$ExternalSyntheticLambda2;-><init>(JI)V

    const-wide/16 p0, 0x1389

    invoke-virtual {p2, p3, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 251
    :goto_6c
    monitor-exit v0

    .line 252
    return-void

    .line 221
    :catch_6e
    move-exception p2

    .line 224
    sget-object p2, Lcom/local/p5home/NavAutoSession;->conversation:Lcom/local/p5home/NavConversation;

    invoke-virtual {p2}, Lcom/local/p5home/NavConversation;->epoch()J

    move-result-wide p2

    cmp-long p2, p0, p2

    if-nez p2, :cond_b9

    sget-wide p2, Lcom/local/p5home/NavAutoSession;->routeReplyEpoch:J

    cmp-long p2, p2, p0

    if-eqz p2, :cond_80

    goto :goto_b9

    .line 225
    :cond_80
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    sget-object v2, Lcom/local/p5home/NavAutoSession;->routeReply:Lcom/local/p5home/NavRouteCorrelation;

    invoke-virtual {v2, v1, p2, p3}, Lcom/local/p5home/NavRouteCorrelation;->discard(IJ)J

    move-result-wide v1

    .line 226
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_92

    monitor-exit v0

    return-void

    .line 227
    :cond_92
    sput-wide v1, Lcom/local/p5home/NavAutoSession;->routeReplyUntil:J

    .line 228
    if-nez v3, :cond_a5

    invoke-static {}, Lcom/local/p5home/NavAutoSession;->clearRouteQueries()V

    const-string p0, "notice"

    const-string p1, ""

    const-string p2, ""

    const-string p3, "\u8def\u7ebf\u9884\u89c8\u5df2\u8bf7\u6c42\uff0c\u4f46\u65e0\u6cd5\u8bfb\u53d6\u8def\u7ebf\u65b9\u6848"

    invoke-static {p0, p1, p2, p3}, Lcom/local/p5home/NavAutoSession;->emit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b7

    .line 229
    :cond_a5
    sget-object v3, Lcom/local/p5home/NavAutoSession;->handler:Landroid/os/Handler;

    new-instance v4, Lcom/local/p5home/NavAutoSession$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, p1, v1, v2}, Lcom/local/p5home/NavAutoSession$$ExternalSyntheticLambda1;-><init>(JJ)V

    sub-long/2addr v1, p2

    const-wide/16 p0, 0x1

    add-long/2addr v1, p0

    .line 236
    invoke-static {p0, p1, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    .line 229
    invoke-virtual {v3, v4, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 237
    :goto_b7
    monitor-exit v0

    return-void

    .line 224
    :cond_b9
    :goto_b9
    monitor-exit v0

    return-void

    .line 212
    :cond_bb
    :goto_bb
    monitor-exit v0

    return-void

    .line 251
    :catchall_bd
    move-exception p0

    monitor-exit v0
    :try_end_bf
    .catchall {:try_start_5c .. :try_end_bf} :catchall_bd

    throw p0
.end method

.method static synthetic lambda$requestState$5(J)V
    .registers 7

    .line 338
    sget-object v0, Lcom/local/p5home/NavAutoSession;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 339
    :try_start_3
    sget-wide v1, Lcom/local/p5home/NavAutoSession;->statusGeneration:J

    cmp-long p0, p0, v1

    if-nez p0, :cond_40

    sget-wide p0, Lcom/local/p5home/NavAutoSession;->statusUntil:J

    const-wide/16 v1, 0x0

    cmp-long p0, p0, v1

    if-eqz p0, :cond_40

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p0

    sget-wide v3, Lcom/local/p5home/NavAutoSession;->statusUntil:J

    cmp-long p0, p0, v3

    if-gez p0, :cond_1c

    goto :goto_40

    .line 340
    :cond_1c
    sput-wide v1, Lcom/local/p5home/NavAutoSession;->statusUntil:J

    .line 341
    sget-wide p0, Lcom/local/p5home/NavAutoSession;->statusGeneration:J

    const-wide/16 v1, 0x1

    add-long/2addr p0, v1

    sput-wide p0, Lcom/local/p5home/NavAutoSession;->statusGeneration:J

    .line 342
    sget-object p0, Lcom/local/p5home/NavAutoSession;->statusEvent:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2f

    monitor-exit v0

    return-void

    .line 343
    :cond_2f
    const-string p0, ""

    sput-object p0, Lcom/local/p5home/NavAutoSession;->statusEvent:Ljava/lang/String;

    .line 344
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_42

    .line 345
    const-string p0, "notice"

    const-string p1, ""

    const-string v0, ""

    const-string v1, "\u9ad8\u5fb7\u672a\u8fd4\u56de\u53ef\u7528\u72b6\u6001\uff1b\u65e0\u6cd5\u786e\u8ba4\u662f\u5426\u6b63\u5728\u5bfc\u822a"

    invoke-static {p0, p1, v0, v1}, Lcom/local/p5home/NavAutoSession;->emit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    return-void

    .line 339
    :cond_40
    :goto_40
    :try_start_40
    monitor-exit v0

    return-void

    .line 344
    :catchall_42
    move-exception p0

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_40 .. :try_end_44} :catchall_42

    throw p0
.end method

.method static synthetic lambda$search$3(JI)V
    .registers 6

    .line 290
    sget-object v0, Lcom/local/p5home/NavAutoSession;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 291
    :try_start_3
    sget-object v1, Lcom/local/p5home/NavAutoSession;->conversation:Lcom/local/p5home/NavConversation;

    invoke-virtual {v1}, Lcom/local/p5home/NavConversation;->epoch()J

    move-result-wide v1

    cmp-long p0, p0, v1

    if-nez p0, :cond_27

    sget-object p0, Lcom/local/p5home/NavAutoSession;->search:Lcom/local/p5home/NavCorrelation;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p0, p2, v1, v2}, Lcom/local/p5home/NavCorrelation;->expire(IJ)Z

    move-result p0

    if-nez p0, :cond_1a

    goto :goto_27

    .line 292
    :cond_1a
    const-string p0, "notice"

    const-string p1, ""

    const-string p2, ""

    const-string v1, "\u672a\u6536\u5230\u80fd\u5173\u8054\u672c\u6b21\u8bf7\u6c42\u7684\u5730\u70b9\u5217\u8868\uff0c\u8bf7\u5728\u5730\u56fe\u5185\u9009\u62e9\uff1b\u672a\u56de\u586b\u63a8\u6d4b\u7ed3\u679c"

    invoke-static {p0, p1, p2, v1}, Lcom/local/p5home/NavAutoSession;->emit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    monitor-exit v0

    .line 294
    return-void

    .line 291
    :cond_27
    :goto_27
    monitor-exit v0

    return-void

    .line 293
    :catchall_29
    move-exception p0

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw p0
.end method

.method static launchIfCurrent(JLcom/local/p5home/NavAutoSession$MapLaunch;)Lcom/local/p5home/Navigator$Result;
    .registers 6

    .line 72
    sget-object v0, Lcom/local/p5home/NavAutoSession;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 73
    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-ltz v1, :cond_18

    :try_start_9
    sget-object v1, Lcom/local/p5home/NavAutoSession;->conversation:Lcom/local/p5home/NavConversation;

    invoke-virtual {v1}, Lcom/local/p5home/NavConversation;->epoch()J

    move-result-wide v1

    cmp-long p0, v1, p0

    if-nez p0, :cond_18

    invoke-interface {p2}, Lcom/local/p5home/NavAutoSession$MapLaunch;->run()Lcom/local/p5home/Navigator$Result;

    move-result-object p0

    goto :goto_1e

    :cond_18
    const-string p0, "\u5bfc\u822a\u8bf7\u6c42\u5df2\u88ab\u540e\u7eed\u641c\u7d22\u53d6\u4ee3"

    invoke-static {p0}, Lcom/local/p5home/Navigator;->no(Ljava/lang/String;)Lcom/local/p5home/Navigator$Result;

    move-result-object p0

    :goto_1e
    monitor-exit v0

    return-object p0

    .line 74
    :catchall_20
    move-exception p0

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_9 .. :try_end_22} :catchall_20

    throw p0
.end method

.method static navigationDispatched(Landroid/content/Context;)V
    .registers 7

    .line 300
    sget-object v0, Lcom/local/p5home/NavAutoSession;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/local/p5home/NavAutoSession;->conversation:Lcom/local/p5home/NavConversation;

    invoke-virtual {v1}, Lcom/local/p5home/NavConversation;->epoch()J

    move-result-wide v2

    const/4 v4, -0x1

    sput v4, Lcom/local/p5home/NavAutoSession;->observedState:I

    const-wide/16 v4, 0x0

    sput-wide v4, Lcom/local/p5home/NavAutoSession;->observedAt:J

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_4f

    .line 301
    :try_start_11
    invoke-static {p0}, Lcom/local/p5home/NavAutoSession;->ready(Landroid/content/Context;)V
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_14} :catch_31

    .line 302
    nop

    .line 303
    monitor-enter v0

    .line 304
    :try_start_16
    invoke-virtual {v1}, Lcom/local/p5home/NavConversation;->epoch()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-eqz v1, :cond_20

    monitor-exit v0

    return-void

    .line 305
    :cond_20
    sget-object v1, Lcom/local/p5home/NavAutoSession;->handler:Landroid/os/Handler;

    new-instance v4, Lcom/local/p5home/NavAutoSession$$ExternalSyntheticLambda4;

    invoke-direct {v4, v2, v3, p0}, Lcom/local/p5home/NavAutoSession$$ExternalSyntheticLambda4;-><init>(JLandroid/content/Context;)V

    const-wide/16 v2, 0x2bc

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 306
    monitor-exit v0

    .line 307
    return-void

    .line 306
    :catchall_2e
    move-exception p0

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_16 .. :try_end_30} :catchall_2e

    throw p0

    .line 302
    :catch_31
    move-exception p0

    sget-object p0, Lcom/local/p5home/NavAutoSession;->LOCK:Ljava/lang/Object;

    monitor-enter p0

    :try_start_35
    sget-object v0, Lcom/local/p5home/NavAutoSession;->conversation:Lcom/local/p5home/NavConversation;

    invoke-virtual {v0}, Lcom/local/p5home/NavConversation;->epoch()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4a

    const-string v0, "notice"

    const-string v1, ""

    const-string v2, ""

    const-string v3, "\u8bf7\u6c42\u5df2\u53d1\u9001\uff1b\u65e0\u6cd5\u76d1\u542c\u5730\u56fe\u72b6\u6001\uff0c\u5c1a\u672a\u786e\u8ba4\u7ed3\u679c"

    invoke-static {v0, v1, v2, v3}, Lcom/local/p5home/NavAutoSession;->emit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4a
    monitor-exit p0

    return-void

    :catchall_4c
    move-exception v0

    monitor-exit p0
    :try_end_4e
    .catchall {:try_start_35 .. :try_end_4e} :catchall_4c

    throw v0

    .line 300
    :catchall_4f
    move-exception p0

    :try_start_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw p0
.end method

.method static plan(Landroid/content/Context;Lcom/local/p5home/NavProtocol$Poi;)Lcom/local/p5home/Navigator$Result;
    .registers 16

    .line 193
    sget-object v0, Lcom/local/p5home/NavAutoSession;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 194
    :try_start_3
    invoke-static {p0}, Lcom/local/p5home/NavAutoSession;->ready(Landroid/content/Context;)V

    invoke-static {}, Lcom/local/p5home/NavAutoSession;->cancelSearch()V

    invoke-static {}, Lcom/local/p5home/NavAutoSession;->clearRouteQueries()V

    .line 195
    sget-object v1, Lcom/local/p5home/NavAutoSession;->conversation:Lcom/local/p5home/NavConversation;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, p1, v2, v3}, Lcom/local/p5home/NavConversation;->plan(Lcom/local/p5home/NavProtocol$Poi;J)J

    move-result-wide v2

    .line 196
    const/16 v4, 0x2717

    invoke-static {v4}, Lcom/local/p5home/Navigator;->broadcast(I)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "EXTRA_DLAT"

    iget-wide v6, p1, Lcom/local/p5home/NavProtocol$Poi;->latitude:D

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "EXTRA_DLON"

    iget-wide v6, p1, Lcom/local/p5home/NavProtocol$Poi;->longitude:D

    .line 197
    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "EXTRA_DNAME"

    iget-object v6, p1, Lcom/local/p5home/NavProtocol$Poi;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "EXTRA_DEV"

    .line 198
    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "EXTRA_M"

    const/4 v7, -0x1

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    .line 199
    iget-object v5, p1, Lcom/local/p5home/NavProtocol$Poi;->id:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_51

    const-string v5, "EXTRA_D_POI_ID"

    iget-object v7, p1, Lcom/local/p5home/NavProtocol$Poi;->id:Ljava/lang/String;

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    :cond_51
    iget-wide v7, p1, Lcom/local/p5home/NavProtocol$Poi;->entryLatitude:D

    iget-wide v9, p1, Lcom/local/p5home/NavProtocol$Poi;->entryLongitude:D

    invoke-static {v7, v8, v9, v10}, Lcom/local/p5home/NavProtocol;->pair(DD)Z

    move-result v5

    if-eqz v5, :cond_6a

    .line 201
    const-string v5, "ENTRY_LAT"

    iget-wide v7, p1, Lcom/local/p5home/NavProtocol$Poi;->entryLatitude:D

    invoke-virtual {v4, v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    move-result-object v5

    const-string v7, "ENTRY_LON"

    iget-wide v8, p1, Lcom/local/p5home/NavProtocol$Poi;->entryLongitude:D

    invoke-virtual {v5, v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;
    :try_end_6a
    .catchall {:try_start_3 .. :try_end_6a} :catchall_b0

    .line 202
    :cond_6a
    :try_start_6a
    invoke-virtual {p0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_6d
    .catch Ljava/lang/RuntimeException; {:try_start_6a .. :try_end_6d} :catch_a4
    .catchall {:try_start_6a .. :try_end_6d} :catchall_b0

    .line 203
    :try_start_6d
    invoke-virtual {v1}, Lcom/local/p5home/NavConversation;->epoch()J

    move-result-wide v4

    cmp-long p1, v4, v2

    if-nez p1, :cond_9c

    const-string p1, "route_loading"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/local/p5home/NavConversation;->stage(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_86

    goto :goto_9c

    .line 204
    :cond_86
    invoke-static {p0, v2, v3, v6}, Lcom/local/p5home/NavAutoSession;->pollRoutes(Landroid/content/Context;JI)V

    .line 205
    new-instance p0, Lcom/local/p5home/Navigator$Result;

    const/4 v8, 0x1

    const-string v9, "\u5df2\u8bf7\u6c42\u8def\u7ebf\u9884\u89c8\uff1b\u53d6\u5f97\u65b9\u6848\u540e\u53ef\u8bf4\u65b9\u6848\u7f16\u53f7\u5f00\u59cb\uff0c\u6216\u9009\u4e2d\u540e\u8bf4\u5f00\u59cb\u5bfc\u822a"

    const-string v10, "pending"

    const-string v11, ""

    const-string v12, ""

    const-string v13, ""

    move-object v7, p0

    invoke-direct/range {v7 .. v13}, Lcom/local/p5home/Navigator$Result;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-object p0

    .line 203
    :cond_9c
    :goto_9c
    const-string p0, "\u8def\u7ebf\u8bf7\u6c42\u5df2\u53d1\u9001\uff0c\u4f1a\u8bdd\u5df2\u66f4\u65b0\u6216\u8fc7\u671f\uff0c\u8bf7\u5728\u5730\u56fe\u5185\u786e\u8ba4"

    invoke-static {p0}, Lcom/local/p5home/Navigator;->no(Ljava/lang/String;)Lcom/local/p5home/Navigator$Result;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 202
    :catch_a4
    move-exception p0

    invoke-static {v2, v3}, Lcom/local/p5home/NavAutoSession;->retireFailedPlan(J)V

    const-string p0, "\u672a\u80fd\u53d1\u9001\u8def\u7ebf\u9884\u89c8\u8bf7\u6c42\uff0c\u8bf7\u5728\u5730\u56fe\u5185\u64cd\u4f5c"

    invoke-static {p0}, Lcom/local/p5home/Navigator;->no(Ljava/lang/String;)Lcom/local/p5home/Navigator$Result;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 206
    :catchall_b0
    move-exception p0

    monitor-exit v0
    :try_end_b2
    .catchall {:try_start_6d .. :try_end_b2} :catchall_b0

    throw p0
.end method

.method static planIfCurrent(Landroid/content/Context;Lcom/local/p5home/NavProtocol$Poi;J)Lcom/local/p5home/Navigator$Result;
    .registers 7

    .line 182
    sget-object v0, Lcom/local/p5home/NavAutoSession;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 183
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-ltz v1, :cond_1a

    :try_start_9
    sget-object v1, Lcom/local/p5home/NavAutoSession;->conversation:Lcom/local/p5home/NavConversation;

    invoke-virtual {v1}, Lcom/local/p5home/NavConversation;->epoch()J

    move-result-wide v1

    cmp-long p2, v1, p2

    if-eqz p2, :cond_14

    goto :goto_1a

    .line 184
    :cond_14
    invoke-static {p0, p1}, Lcom/local/p5home/NavAutoSession;->plan(Landroid/content/Context;Lcom/local/p5home/NavProtocol$Poi;)Lcom/local/p5home/Navigator$Result;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 183
    :cond_1a
    :goto_1a
    const-string p0, "\u5bfc\u822a\u8bf7\u6c42\u5df2\u88ab\u540e\u7eed\u641c\u7d22\u53d6\u4ee3"

    invoke-static {p0}, Lcom/local/p5home/Navigator;->no(Ljava/lang/String;)Lcom/local/p5home/Navigator$Result;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 185
    :catchall_22
    move-exception p0

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_9 .. :try_end_24} :catchall_22

    throw p0
.end method

.method private static pollRoutes(Landroid/content/Context;JI)V
    .registers 6

    .line 210
    sget-object v0, Lcom/local/p5home/NavAutoSession;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/local/p5home/NavAutoSession$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1, p2, p0, p3}, Lcom/local/p5home/NavAutoSession$$ExternalSyntheticLambda3;-><init>(JLandroid/content/Context;I)V

    .line 252
    if-nez p3, :cond_c

    const-wide/16 p0, 0x4b0

    goto :goto_e

    :cond_c
    const-wide/16 p0, 0x7d0

    .line 210
    :goto_e
    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 253
    return-void
.end method

.method static query(Landroid/content/Context;Ljava/lang/String;)Lcom/local/p5home/Navigator$Result;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 310
    sget-object v0, Lcom/local/p5home/NavAutoSession;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 311
    :try_start_3
    invoke-static {}, Lcom/local/p5home/NavAutoSession;->fresh()Z

    move-result v1

    if-eqz v1, :cond_2c

    sget v1, Lcom/local/p5home/NavAutoSession;->observedState:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_13

    const/16 v3, 0x9

    if-ne v1, v3, :cond_2c

    .line 312
    :cond_13
    new-instance p0, Lcom/local/p5home/Navigator$Result;

    const/4 v5, 0x1

    const-string v6, "\u5df2\u8bfb\u53d6\u8fd1\u671f\u9ad8\u5fb7\u72b6\u6001\uff1b\u4e0d\u8bc1\u660e\u4efb\u4f55\u7279\u5b9a\u76ee\u7684\u5730"

    const-string v7, "observed"

    const-string v8, "support"

    if-ne v1, v2, :cond_20

    const/4 v1, 0x1

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    .line 313
    :goto_21
    invoke-static {v1}, Lcom/local/p5home/NavProtocol;->support(Z)Ljava/lang/String;

    move-result-object v10

    move-object v4, p0

    move-object v9, p1

    invoke-direct/range {v4 .. v10}, Lcom/local/p5home/Navigator$Result;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    .line 312
    return-object p0

    .line 314
    :cond_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_45

    .line 315
    invoke-static {p0}, Lcom/local/p5home/NavAutoSession;->ready(Landroid/content/Context;)V

    invoke-static {p0, p1}, Lcom/local/p5home/NavAutoSession;->requestState(Landroid/content/Context;Ljava/lang/String;)V

    .line 316
    new-instance p0, Lcom/local/p5home/Navigator$Result;

    const/4 v2, 0x1

    const-string v3, "\u5df2\u8bf7\u6c42\u9ad8\u5fb7\u5bfc\u822a\u72b6\u6001\uff0c\u7b49\u5f85\u56de\u5305"

    const-string v4, "pending"

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/local/p5home/Navigator$Result;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 314
    :catchall_45
    move-exception p0

    :try_start_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw p0
.end method

.method private static ready(Landroid/content/Context;)V
    .registers 5

    .line 256
    sget-object v0, Lcom/local/p5home/NavAutoSession;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 257
    :try_start_3
    sget-object v1, Lcom/local/p5home/NavAutoSession;->application:Landroid/content/Context;

    if-nez v1, :cond_d

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/local/p5home/NavAutoSession;->application:Landroid/content/Context;

    .line 258
    :cond_d
    sget-object p0, Lcom/local/p5home/NavAutoSession;->handler:Landroid/os/Handler;

    if-nez p0, :cond_1c

    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object p0, Lcom/local/p5home/NavAutoSession;->handler:Landroid/os/Handler;

    .line 259
    :cond_1c
    sget-boolean p0, Lcom/local/p5home/NavAutoSession;->registered:Z

    if-nez p0, :cond_40

    .line 260
    new-instance p0, Landroid/content/IntentFilter;

    const-string v1, "AUTONAVI_STANDARD_BROADCAST_SEND"

    invoke-direct {p0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 261
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_36

    sget-object v1, Lcom/local/p5home/NavAutoSession;->application:Landroid/content/Context;

    sget-object v2, Lcom/local/p5home/NavAutoSession;->RECEIVER:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, p0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_3d

    .line 262
    :cond_36
    sget-object v1, Lcom/local/p5home/NavAutoSession;->application:Landroid/content/Context;

    sget-object v2, Lcom/local/p5home/NavAutoSession;->RECEIVER:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 263
    :goto_3d
    const/4 p0, 0x1

    sput-boolean p0, Lcom/local/p5home/NavAutoSession;->registered:Z

    .line 265
    :cond_40
    monitor-exit v0

    .line 266
    return-void

    .line 265
    :catchall_42
    move-exception p0

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_42

    throw p0
.end method

.method private static receiveRoutes(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 422
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 423
    sget-wide v2, Lcom/local/p5home/NavAutoSession;->routeReplyUntil:J

    cmp-long p0, v0, v2

    if-gez p0, :cond_7a

    sget-wide v2, Lcom/local/p5home/NavAutoSession;->routeReplyEpoch:J

    sget-object p0, Lcom/local/p5home/NavAutoSession;->conversation:Lcom/local/p5home/NavConversation;

    invoke-virtual {p0}, Lcom/local/p5home/NavConversation;->epoch()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_7a

    const-string v2, "route_loading"

    invoke-virtual {p0, v0, v1}, Lcom/local/p5home/NavConversation;->stage(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    goto :goto_7a

    .line 424
    :cond_23
    const-string v2, "EXTRA_REQUESTCODE"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3a

    sget-object v3, Lcom/local/p5home/NavAutoSession;->routeReply:Lcom/local/p5home/NavRouteCorrelation;

    .line 425
    const/4 v4, -0x1

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4, v0, v1}, Lcom/local/p5home/NavRouteCorrelation;->matches(IJ)Z

    move-result v3

    if-eqz v3, :cond_3a

    const/4 v3, 0x1

    goto :goto_3b

    :cond_3a
    const/4 v3, 0x0

    .line 427
    :goto_3b
    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_44

    if-nez v3, :cond_44

    return-void

    .line 428
    :cond_44
    const-string v2, "EXTRA_ROAD_INFO"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/local/p5home/NavProtocol;->routes(Ljava/lang/String;)Lcom/local/p5home/NavProtocol$Routes;

    move-result-object p1

    .line 429
    invoke-virtual {p0, p1, v3, v0, v1}, Lcom/local/p5home/NavConversation;->routes(Lcom/local/p5home/NavProtocol$Routes;ZJ)Z

    move-result p0

    if-eqz p0, :cond_79

    .line 430
    invoke-static {}, Lcom/local/p5home/NavAutoSession;->clearRouteQueries()V

    .line 433
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5df2\u8bfb\u53d6"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget p1, p1, Lcom/local/p5home/NavProtocol$Routes;->count:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\u6761\u8def\u7ebf\uff1b\u81ea\u52a8\u51fa\u53d1\u5012\u8ba1\u65f6\u8ddf\u968f\u9ad8\u5fb7\uff0c\u53ef\u8bed\u97f3\u9009\u62e9\u8def\u7ebf"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "notice"

    const-string v0, ""

    invoke-static {p1, v0, v0, p0}, Lcom/local/p5home/NavAutoSession;->emit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    :cond_79
    return-void

    .line 423
    :cond_7a
    :goto_7a
    return-void
.end method

.method private static receiveSearch(Landroid/content/Intent;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 405
    const-string v0, "EXTRA_REQUESTCODE"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    return-void

    .line 406
    :cond_9
    sget-object v1, Lcom/local/p5home/NavAutoSession;->search:Lcom/local/p5home/NavCorrelation;

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v1, v0, v3, v4}, Lcom/local/p5home/NavCorrelation;->take(IJ)Ljava/lang/String;

    move-result-object v0

    .line 407
    if-eqz v0, :cond_68

    sget-wide v3, Lcom/local/p5home/NavAutoSession;->searchEpoch:J

    sget-object v1, Lcom/local/p5home/NavAutoSession;->conversation:Lcom/local/p5home/NavConversation;

    invoke-virtual {v1}, Lcom/local/p5home/NavConversation;->epoch()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_27

    goto :goto_68

    .line 408
    :cond_27
    const-string v3, "SEARCH_RESULT_CODE"

    invoke-virtual {p0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "notice"

    const-string v4, ""

    if-eqz v2, :cond_39

    .line 409
    const-string p0, "\u5730\u70b9\u641c\u7d22\u672a\u8fd4\u56de\u666e\u901a\u7ed3\u679c\uff0c\u8bf7\u5728\u5730\u56fe\u5185\u5904\u7406\u57ce\u5e02\u9009\u62e9\u6216\u9519\u8bef"

    invoke-static {v3, v4, v4, p0}, Lcom/local/p5home/NavAutoSession;->emit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 412
    :cond_39
    :try_start_39
    const-string v2, "EXTRA_RESULT"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/local/p5home/NavProtocol;->list(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_43
    .catch Lorg/json/JSONException; {:try_start_39 .. :try_end_43} :catch_61

    .line 413
    nop

    .line 414
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v5, 0x3e80

    if-le v2, v5, :cond_52

    .line 415
    const-string p0, "\u5730\u70b9\u5217\u8868\u8fc7\u957f\uff0c\u8bf7\u5728\u5730\u56fe\u5185\u9009\u62e9"

    invoke-static {v3, v4, v4, p0}, Lcom/local/p5home/NavAutoSession;->emit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 417
    :cond_52
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, p0, v2, v3}, Lcom/local/p5home/NavConversation;->candidates(Ljava/lang/String;J)V

    .line 418
    const-string v1, "result"

    const-string v2, "\u5df2\u8fd4\u56de\u4e0e\u672c\u6b21\u8bf7\u6c42\u7f16\u53f7\u5339\u914d\u7684\u5730\u70b9\u5217\u8868"

    invoke-static {v1, v0, p0, v2}, Lcom/local/p5home/NavAutoSession;->emit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    return-void

    .line 413
    :catch_61
    move-exception p0

    const-string p0, "\u5730\u70b9\u5217\u8868\u683c\u5f0f\u672a\u5339\u914d\uff0c\u8bf7\u5728\u5730\u56fe\u5185\u9009\u62e9"

    invoke-static {v3, v4, v4, p0}, Lcom/local/p5home/NavAutoSession;->emit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 407
    :cond_68
    :goto_68
    return-void
.end method

.method private static receiveState(Landroid/content/Intent;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 438
    const-string v0, "EXTRA_STATE"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    .line 439
    const/16 v0, 0xa

    const/16 v1, 0x8

    if-eq p0, v1, :cond_14

    const/16 v2, 0x9

    if-eq p0, v2, :cond_14

    if-eq p0, v0, :cond_14

    return-void

    .line 441
    :cond_14
    sget-object v2, Lcom/local/p5home/NavAutoSession;->LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 445
    if-eq p0, v1, :cond_1b

    if-ne p0, v0, :cond_37

    :cond_1b
    :try_start_1b
    const-string v3, "route_list"

    sget-object v4, Lcom/local/p5home/NavAutoSession;->conversation:Lcom/local/p5home/NavConversation;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/local/p5home/NavConversation;->stage(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/local/p5home/NavConversation;->starting(J)V

    invoke-static {}, Lcom/local/p5home/NavAutoSession;->clearRouteQueries()V

    .line 446
    :cond_37
    sget-wide v3, Lcom/local/p5home/NavAutoSession;->statusUntil:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_9d

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sget-wide v7, Lcom/local/p5home/NavAutoSession;->statusUntil:J

    cmp-long v3, v3, v7

    if-lez v3, :cond_4a

    goto :goto_9d

    .line 447
    :cond_4a
    sput p0, Lcom/local/p5home/NavAutoSession;->observedState:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sput-wide v3, Lcom/local/p5home/NavAutoSession;->observedAt:J

    .line 448
    sget-object v3, Lcom/local/p5home/NavAutoSession;->statusEvent:Ljava/lang/String;

    const-string v4, ""

    sput-object v4, Lcom/local/p5home/NavAutoSession;->statusEvent:Ljava/lang/String;

    sput-wide v5, Lcom/local/p5home/NavAutoSession;->statusUntil:J

    sget-wide v4, Lcom/local/p5home/NavAutoSession;->statusGeneration:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    sput-wide v4, Lcom/local/p5home/NavAutoSession;->statusGeneration:J

    .line 449
    monitor-exit v2
    :try_end_62
    .catchall {:try_start_1b .. :try_end_62} :catchall_9f

    .line 450
    if-ne p0, v0, :cond_70

    const-string p0, "notice"

    const-string v0, ""

    const-string v1, ""

    const-string v2, "\u89c2\u5bdf\u5230\u9ad8\u5fb7\u6a21\u62df\u5bfc\u822a\uff1b\u672a\u786e\u8ba4\u771f\u5b9e\u5bfc\u822a\u6216\u5177\u4f53\u76ee\u7684\u5730"

    invoke-static {p0, v0, v1, v2}, Lcom/local/p5home/NavAutoSession;->emit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9c

    .line 451
    :cond_70
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8c

    const-string v0, "support"

    if-ne p0, v1, :cond_7c

    const/4 v2, 0x1

    goto :goto_7d

    :cond_7c
    const/4 v2, 0x0

    :goto_7d
    invoke-static {v2}, Lcom/local/p5home/NavProtocol;->support(Z)Ljava/lang/String;

    move-result-object v2

    .line 452
    if-ne p0, v1, :cond_86

    const-string p0, "\u89c2\u5bdf\u5230\u9ad8\u5fb7\u6b63\u5728\u5bfc\u822a\uff0c\u672a\u786e\u8ba4\u5177\u4f53\u76ee\u7684\u5730"

    goto :goto_88

    :cond_86
    const-string p0, "\u89c2\u5bdf\u5230\u9ad8\u5fb7\u5f53\u524d\u672a\u5bfc\u822a"

    .line 451
    :goto_88
    invoke-static {v0, v3, v2, p0}, Lcom/local/p5home/NavAutoSession;->emit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9c

    .line 453
    :cond_8c
    const-string v0, "notice"

    const-string v2, ""

    const-string v3, ""

    if-ne p0, v1, :cond_97

    const-string p0, "\u89c2\u5bdf\u5230\u9ad8\u5fb7\u6b63\u5728\u5bfc\u822a\uff0c\u672a\u786e\u8ba4\u5177\u4f53\u76ee\u7684\u5730"

    goto :goto_99

    :cond_97
    const-string p0, "\u89c2\u5bdf\u5230\u9ad8\u5fb7\u5f53\u524d\u672a\u5bfc\u822a"

    :goto_99
    invoke-static {v0, v2, v3, p0}, Lcom/local/p5home/NavAutoSession;->emit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    :goto_9c
    return-void

    .line 446
    :cond_9d
    :goto_9d
    :try_start_9d
    monitor-exit v2

    return-void

    .line 449
    :catchall_9f
    move-exception p0

    monitor-exit v2
    :try_end_a1
    .catchall {:try_start_9d .. :try_end_a1} :catchall_9f

    throw p0
.end method

.method private static requestState(Landroid/content/Context;Ljava/lang/String;)V
    .registers 11

    .line 321
    sget-object v0, Lcom/local/p5home/NavAutoSession;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 322
    :try_start_3
    sget-wide v1, Lcom/local/p5home/NavAutoSession;->statusGeneration:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    sput-wide v1, Lcom/local/p5home/NavAutoSession;->statusGeneration:J

    .line 323
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const-wide/16 v7, 0x1388

    add-long/2addr v5, v7

    sput-wide v5, Lcom/local/p5home/NavAutoSession;->statusUntil:J

    .line 326
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_21

    sget-object v5, Lcom/local/p5home/NavAutoSession;->statusEvent:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_23

    :cond_21
    sput-object p1, Lcom/local/p5home/NavAutoSession;->statusEvent:Ljava/lang/String;

    .line 327
    :cond_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_6d

    .line 328
    const/16 p1, 0x3074

    const/4 v0, 0x1

    :try_start_27
    invoke-static {p1}, Lcom/local/p5home/Navigator;->broadcast(I)Landroid/content/Intent;

    move-result-object p1

    const-string v5, "EXTRA_REQUEST_AUTO_STATE"

    invoke-virtual {p1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_34
    .catch Ljava/lang/RuntimeException; {:try_start_27 .. :try_end_34} :catch_42

    .line 336
    nop

    .line 337
    sget-object p0, Lcom/local/p5home/NavAutoSession;->handler:Landroid/os/Handler;

    new-instance p1, Lcom/local/p5home/NavAutoSession$$ExternalSyntheticLambda0;

    invoke-direct {p1, v1, v2}, Lcom/local/p5home/NavAutoSession$$ExternalSyntheticLambda0;-><init>(J)V

    const-wide/16 v0, 0x13ec

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 347
    return-void

    .line 329
    :catch_42
    move-exception p0

    .line 331
    sget-object p0, Lcom/local/p5home/NavAutoSession;->LOCK:Ljava/lang/Object;

    monitor-enter p0

    .line 332
    :try_start_46
    sget-wide v5, Lcom/local/p5home/NavAutoSession;->statusGeneration:J

    cmp-long p1, v1, v5

    if-nez p1, :cond_4d

    goto :goto_4e

    :cond_4d
    const/4 v0, 0x0

    .line 333
    :goto_4e
    if-eqz v0, :cond_5b

    const-wide/16 v1, 0x0

    sput-wide v1, Lcom/local/p5home/NavAutoSession;->statusUntil:J

    const-string p1, ""

    sput-object p1, Lcom/local/p5home/NavAutoSession;->statusEvent:Ljava/lang/String;

    add-long/2addr v5, v3

    sput-wide v5, Lcom/local/p5home/NavAutoSession;->statusGeneration:J

    .line 334
    :cond_5b
    monitor-exit p0
    :try_end_5c
    .catchall {:try_start_46 .. :try_end_5c} :catchall_6a

    .line 335
    if-eqz v0, :cond_69

    const-string p0, "notice"

    const-string p1, ""

    const-string v0, ""

    const-string v1, "\u672a\u80fd\u8bfb\u53d6\u9ad8\u5fb7\u5bfc\u822a\u72b6\u6001"

    invoke-static {p0, p1, v0, v1}, Lcom/local/p5home/NavAutoSession;->emit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_69
    return-void

    .line 334
    :catchall_6a
    move-exception p1

    :try_start_6b
    monitor-exit p0
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    throw p1

    .line 327
    :catchall_6d
    move-exception p0

    :try_start_6e
    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6d

    throw p0
.end method

.method static resetIfCurrent(J)J
    .registers 4

    .line 51
    sget-object v0, Lcom/local/p5home/NavAutoSession;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 52
    :try_start_3
    sget-object v1, Lcom/local/p5home/NavAutoSession;->conversation:Lcom/local/p5home/NavConversation;

    invoke-virtual {v1, p0, p1}, Lcom/local/p5home/NavConversation;->retire(J)Z

    move-result p0

    if-nez p0, :cond_f

    monitor-exit v0

    const-wide/16 p0, -0x1

    return-wide p0

    .line 53
    :cond_f
    sget-object p0, Lcom/local/p5home/NavAutoSession;->search:Lcom/local/p5home/NavCorrelation;

    invoke-virtual {p0}, Lcom/local/p5home/NavCorrelation;->cancel()V

    invoke-static {}, Lcom/local/p5home/NavAutoSession;->clearRouteQueries()V

    invoke-virtual {v1}, Lcom/local/p5home/NavConversation;->epoch()J

    move-result-wide p0

    monitor-exit v0

    return-wide p0

    .line 54
    :catchall_1d
    move-exception p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method static retire(J)Z
    .registers 4

    .line 49
    invoke-static {p0, p1}, Lcom/local/p5home/NavAutoSession;->resetIfCurrent(J)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-ltz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method private static retireFailedPlan(J)V
    .registers 5

    .line 189
    sget-object v0, Lcom/local/p5home/NavAutoSession;->conversation:Lcom/local/p5home/NavConversation;

    invoke-virtual {v0}, Lcom/local/p5home/NavConversation;->epoch()J

    move-result-wide v1

    cmp-long v1, v1, p0

    if-nez v1, :cond_10

    invoke-static {}, Lcom/local/p5home/NavAutoSession;->clearRouteQueries()V

    invoke-virtual {v0, p0, p1}, Lcom/local/p5home/NavConversation;->retire(J)Z

    .line 190
    :cond_10
    return-void
.end method

.method static routeCount(Ljava/lang/String;I)Lcom/local/p5home/Navigator$Result;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 109
    sget-object v0, Lcom/local/p5home/NavAutoSession;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 110
    :try_start_3
    sget-object v1, Lcom/local/p5home/NavAutoSession;->conversation:Lcom/local/p5home/NavConversation;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/local/p5home/NavConversation;->routeCount(J)I

    move-result v2

    .line 111
    if-eqz v2, :cond_32

    if-nez p1, :cond_12

    goto :goto_32

    .line 112
    :cond_12
    new-instance v12, Lcom/local/p5home/Navigator$Result;

    const/4 v4, 0x1

    const-string v5, "\u5df2\u8bfb\u53d6\u672c\u6b21\u8def\u7ebf\u65b9\u6848\u6570\u91cf"

    const-string v6, "observed"

    const-string v7, "support"

    if-gt p1, v2, :cond_22

    const/4 v2, 0x3

    if-gt p1, v2, :cond_22

    const/4 p1, 0x1

    goto :goto_23

    :cond_22
    const/4 p1, 0x0

    .line 113
    :goto_23
    invoke-static {p1}, Lcom/local/p5home/NavProtocol;->support(Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Lcom/local/p5home/NavConversation;->epoch()J

    move-result-wide v10

    move-object v3, v12

    move-object v8, p0

    invoke-direct/range {v3 .. v11}, Lcom/local/p5home/Navigator$Result;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    monitor-exit v0

    .line 112
    return-object v12

    .line 111
    :cond_32
    :goto_32
    const-string p0, "\u5c1a\u672a\u53d6\u5f97\u53ef\u7528\u4e8e\u672c\u6b21\u8def\u7ebf\u9009\u62e9\u7684\u65b9\u6848\u6570\u91cf"

    invoke-static {p0}, Lcom/local/p5home/Navigator;->no(Ljava/lang/String;)Lcom/local/p5home/Navigator$Result;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 114
    :catchall_3a
    move-exception p0

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3a

    throw p0
.end method

.method static routeCount(Ljava/lang/String;IJ)Lcom/local/p5home/Navigator$Result;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 118
    sget-object v0, Lcom/local/p5home/NavAutoSession;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 119
    :try_start_3
    sget-object v1, Lcom/local/p5home/NavAutoSession;->conversation:Lcom/local/p5home/NavConversation;

    invoke-virtual {v1}, Lcom/local/p5home/NavConversation;->epoch()J

    move-result-wide v1

    cmp-long p2, v1, p2

    if-eqz p2, :cond_15

    const-string p0, "\u5730\u56fe\u4f1a\u8bdd\u5df2\u66f4\u65b0\uff0c\u8bf7\u6839\u636e\u5f53\u524d\u5019\u9009\u91cd\u65b0\u9009\u62e9"

    invoke-static {p0}, Lcom/local/p5home/Navigator;->no(Ljava/lang/String;)Lcom/local/p5home/Navigator$Result;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 120
    :cond_15
    invoke-static {p0, p1}, Lcom/local/p5home/NavAutoSession;->routeCount(Ljava/lang/String;I)Lcom/local/p5home/Navigator$Result;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 121
    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method static search(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 11

    .line 269
    sget-object v0, Lcom/local/p5home/NavAutoSession;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 270
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 271
    sget-object v3, Lcom/local/p5home/NavAutoSession;->conversation:Lcom/local/p5home/NavConversation;

    invoke-virtual {v3, v1, v2}, Lcom/local/p5home/NavConversation;->stage(J)Ljava/lang/String;

    move-result-object v1

    .line 272
    const-wide/16 v4, 0x0

    cmp-long v2, p3, v4

    if-ltz v2, :cond_b7

    invoke-virtual {v3}, Lcom/local/p5home/NavConversation;->epoch()J

    move-result-wide v2

    cmp-long v2, p3, v2

    if-nez v2, :cond_b7

    const-string v2, "searching"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    const-string v2, "poi_list"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_b9

    if-nez v1, :cond_2d

    goto/16 :goto_b7

    .line 273
    :cond_2d
    :try_start_2d
    invoke-static {p0}, Lcom/local/p5home/NavAutoSession;->ready(Landroid/content/Context;)V
    :try_end_30
    .catch Ljava/lang/RuntimeException; {:try_start_2d .. :try_end_30} :catch_a9
    .catchall {:try_start_2d .. :try_end_30} :catchall_b9

    .line 274
    nop

    .line 276
    nop

    .line 277
    :try_start_32
    sget-object v1, Lcom/local/p5home/NavAutoSession;->search:Lcom/local/p5home/NavCorrelation;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    invoke-virtual {v1, p2, v2, v3}, Lcom/local/p5home/NavCorrelation;->begin(Ljava/lang/String;J)I

    move-result p2

    .line 278
    if-nez p2, :cond_51

    invoke-virtual {v1}, Lcom/local/p5home/NavCorrelation;->cancel()V

    const-string p0, "notice"

    const-string p1, ""

    const-string p2, ""

    const-string p3, "\u641c\u7d22\u7f16\u53f7\u5df2\u7528\u5c3d\uff0c\u8bf7\u5728\u5730\u56fe\u5185\u9009\u62e9"

    invoke-static {p0, p1, p2, p3}, Lcom/local/p5home/NavAutoSession;->emit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    .line 279
    :cond_51
    sput-wide p3, Lcom/local/p5home/NavAutoSession;->searchEpoch:J

    .line 280
    const/16 v1, 0x2727

    invoke-static {v1}, Lcom/local/p5home/Navigator;->broadcast(I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "EXTRA_KEYWORD"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v1, "EXTRA_SEARCHTYPE"

    .line 281
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    const-string v1, "EXTRA_MAXCOUNT"

    const/4 v3, 0x5

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    const-string v1, "EXTRA_DEV"

    .line 282
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    const-string v1, "EXTRA_REQUESTCODE"

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1
    :try_end_79
    .catchall {:try_start_32 .. :try_end_79} :catchall_b9

    .line 283
    :try_start_79
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_7c
    .catch Ljava/lang/RuntimeException; {:try_start_79 .. :try_end_7c} :catch_89
    .catchall {:try_start_79 .. :try_end_7c} :catchall_b9

    .line 288
    nop

    .line 289
    :try_start_7d
    sget-object p0, Lcom/local/p5home/NavAutoSession;->handler:Landroid/os/Handler;

    new-instance p1, Lcom/local/p5home/NavAutoSession$$ExternalSyntheticLambda5;

    invoke-direct {p1, p3, p4, p2}, Lcom/local/p5home/NavAutoSession$$ExternalSyntheticLambda5;-><init>(JI)V

    invoke-virtual {p0, p1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 295
    monitor-exit v0

    .line 296
    return-void

    .line 284
    :catch_89
    move-exception p0

    .line 285
    sget-object p0, Lcom/local/p5home/NavAutoSession;->conversation:Lcom/local/p5home/NavConversation;

    invoke-virtual {p0}, Lcom/local/p5home/NavConversation;->epoch()J

    move-result-wide p0

    cmp-long p0, p3, p0

    if-nez p0, :cond_a7

    sget-object p0, Lcom/local/p5home/NavAutoSession;->search:Lcom/local/p5home/NavCorrelation;

    invoke-virtual {p0, p2}, Lcom/local/p5home/NavCorrelation;->cancelIfCurrent(I)Z

    move-result p0

    if-eqz p0, :cond_a7

    .line 286
    const-string p0, "notice"

    const-string p1, ""

    const-string p2, ""

    const-string p3, "\u5730\u56fe\u5185\u641c\u7d22\u5df2\u6253\u5f00\uff1b\u8bed\u97f3\u7ed3\u679c\u8bf7\u6c42\u672a\u53d1\u51fa"

    invoke-static {p0, p1, p2, p3}, Lcom/local/p5home/NavAutoSession;->emit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    :cond_a7
    monitor-exit v0

    return-void

    .line 274
    :catch_a9
    move-exception p0

    const-string p0, "notice"

    const-string p1, ""

    const-string p2, ""

    const-string p3, "\u5730\u56fe\u5185\u641c\u7d22\u5df2\u6253\u5f00\uff1b\u65e0\u6cd5\u76d1\u542c\u8bed\u97f3\u641c\u7d22\u7ed3\u679c"

    invoke-static {p0, p1, p2, p3}, Lcom/local/p5home/NavAutoSession;->emit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    .line 272
    :cond_b7
    :goto_b7
    monitor-exit v0

    return-void

    .line 295
    :catchall_b9
    move-exception p0

    monitor-exit v0
    :try_end_bb
    .catchall {:try_start_7d .. :try_end_bb} :catchall_b9

    throw p0
.end method

.method static setSink(Landroid/content/Context;Lcom/local/p5home/Navigator$ReplySink;)V
    .registers 5

    .line 32
    sget-object v0, Lcom/local/p5home/NavAutoSession;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 33
    :try_start_3
    sput-object p1, Lcom/local/p5home/NavAutoSession;->sink:Lcom/local/p5home/Navigator$ReplySink;

    .line 34
    if-eqz p0, :cond_d

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/local/p5home/NavAutoSession;->application:Landroid/content/Context;

    .line 35
    :cond_d
    if-nez p1, :cond_2b

    sget-object p0, Lcom/local/p5home/NavAutoSession;->search:Lcom/local/p5home/NavCorrelation;

    invoke-virtual {p0}, Lcom/local/p5home/NavCorrelation;->cancel()V

    sget-object p0, Lcom/local/p5home/NavAutoSession;->conversation:Lcom/local/p5home/NavConversation;

    invoke-virtual {p0}, Lcom/local/p5home/NavConversation;->clear()V

    invoke-static {}, Lcom/local/p5home/NavAutoSession;->clearRouteQueries()V

    const-string p0, ""

    sput-object p0, Lcom/local/p5home/NavAutoSession;->statusEvent:Ljava/lang/String;

    const-wide/16 p0, 0x0

    sput-wide p0, Lcom/local/p5home/NavAutoSession;->statusUntil:J

    sget-wide p0, Lcom/local/p5home/NavAutoSession;->statusGeneration:J

    const-wide/16 v1, 0x1

    add-long/2addr p0, v1

    sput-wide p0, Lcom/local/p5home/NavAutoSession;->statusGeneration:J

    .line 36
    :cond_2b
    monitor-exit v0

    .line 37
    return-void

    .line 36
    :catchall_2d
    move-exception p0

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw p0
.end method

.method static snapshot()Landroid/os/Bundle;
    .registers 9

    .line 350
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 351
    sget-object v1, Lcom/local/p5home/NavAutoSession;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 352
    :try_start_8
    invoke-static {}, Lcom/local/p5home/NavAutoSession;->fresh()Z

    move-result v2

    .line 353
    const-string v3, "observed"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 354
    const-string v3, "known"

    const/16 v4, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_23

    sget v7, Lcom/local/p5home/NavAutoSession;->observedState:I

    if-eq v7, v4, :cond_21

    const/16 v8, 0x9

    if-ne v7, v8, :cond_23

    :cond_21
    move v7, v5

    goto :goto_24

    :cond_23
    move v7, v6

    :goto_24
    invoke-virtual {v0, v3, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 355
    if-eqz v2, :cond_55

    .line 356
    const-string v2, "protocolState"

    sget v3, Lcom/local/p5home/NavAutoSession;->observedState:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 357
    const-string v2, "navigating"

    sget v3, Lcom/local/p5home/NavAutoSession;->observedState:I

    if-ne v3, v4, :cond_38

    move v3, v5

    goto :goto_39

    :cond_38
    move v3, v6

    :goto_39
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 358
    const-string v2, "simulated"

    sget v3, Lcom/local/p5home/NavAutoSession;->observedState:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_45

    goto :goto_46

    :cond_45
    move v5, v6

    :goto_46
    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 359
    const-string v2, "ageMs"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sget-wide v7, Lcom/local/p5home/NavAutoSession;->observedAt:J

    sub-long/2addr v3, v7

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 361
    :cond_55
    const-string v2, "source"

    const-string v3, "amap_protocol_broadcast"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const-string v2, "senderAuthenticated"

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 365
    const-string v2, "destinationConfirmed"

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 368
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 369
    const-string v4, "sessionStage"

    sget-object v5, Lcom/local/p5home/NavAutoSession;->conversation:Lcom/local/p5home/NavConversation;

    invoke-virtual {v5, v2, v3}, Lcom/local/p5home/NavConversation;->stage(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const-string v4, "sessionEpoch"

    invoke-virtual {v5}, Lcom/local/p5home/NavConversation;->epoch()J

    move-result-wide v6

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 371
    const-string v4, "poiCount"

    invoke-virtual {v5, v2, v3}, Lcom/local/p5home/NavConversation;->poiCount(J)I

    move-result v6

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 372
    const-string v4, "routeCount"

    invoke-virtual {v5, v2, v3}, Lcom/local/p5home/NavConversation;->routeCount(J)I

    move-result v2

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 373
    monitor-exit v1

    .line 374
    return-object v0

    .line 373
    :catchall_92
    move-exception v0

    monitor-exit v1
    :try_end_94
    .catchall {:try_start_8 .. :try_end_94} :catchall_92

    throw v0
.end method

.method static stopIfCurrent(Landroid/content/Context;J)Lcom/local/p5home/Navigator$Result;
    .registers 11

    .line 79
    sget-object v0, Lcom/local/p5home/NavAutoSession;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 80
    :try_start_3
    sget-object v1, Lcom/local/p5home/NavAutoSession;->conversation:Lcom/local/p5home/NavConversation;

    invoke-virtual {v1}, Lcom/local/p5home/NavConversation;->epoch()J

    move-result-wide v2

    cmp-long p1, p1, v2

    if-eqz p1, :cond_15

    const-string p0, "\u5bfc\u822a\u4f1a\u8bdd\u5df2\u66f4\u65b0\uff0c\u8bf7\u5728\u5730\u56fe\u5185\u786e\u8ba4\u540e\u518d\u7ed3\u675f"

    invoke-static {p0}, Lcom/local/p5home/Navigator;->no(Ljava/lang/String;)Lcom/local/p5home/Navigator$Result;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 81
    :cond_15
    invoke-static {}, Lcom/local/p5home/NavAutoSession;->cancelConversation()V

    invoke-virtual {v1}, Lcom/local/p5home/NavConversation;->epoch()J

    move-result-wide p1
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_55

    .line 82
    const/16 v2, 0x271a

    :try_start_1e
    invoke-static {v2}, Lcom/local/p5home/Navigator;->broadcast(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_25
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_25} :catch_4c
    .catchall {:try_start_1e .. :try_end_25} :catchall_55

    .line 83
    nop

    .line 84
    :try_start_26
    invoke-virtual {v1}, Lcom/local/p5home/NavConversation;->epoch()J

    move-result-wide v1

    cmp-long p1, v1, p1

    if-eqz p1, :cond_36

    const-string p0, "\u7ed3\u675f\u8bf7\u6c42\u53ef\u80fd\u5df2\u53d1\u9001\uff0c\u4f1a\u8bdd\u5df2\u66f4\u65b0\uff0c\u8bf7\u5728\u5730\u56fe\u5185\u786e\u8ba4"

    invoke-static {p0}, Lcom/local/p5home/Navigator;->no(Ljava/lang/String;)Lcom/local/p5home/Navigator$Result;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 85
    :cond_36
    invoke-static {p0}, Lcom/local/p5home/NavAutoSession;->navigationDispatched(Landroid/content/Context;)V

    .line 86
    new-instance p0, Lcom/local/p5home/Navigator$Result;

    const/4 v2, 0x1

    const-string v3, "\u7ed3\u675f\u5bfc\u822a\u8bf7\u6c42\u5df2\u53d1\u9001\uff1b\u5c1a\u672a\u786e\u8ba4\u505c\u6b62"

    const-string v4, "pending"

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/local/p5home/Navigator$Result;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-object p0

    .line 83
    :catch_4c
    move-exception p0

    const-string p0, "\u7ed3\u675f\u8bf7\u6c42\u672a\u786e\u8ba4\uff0c\u8bf7\u5728\u5730\u56fe\u5185\u68c0\u67e5\u5bfc\u822a\u72b6\u6001"

    invoke-static {p0}, Lcom/local/p5home/Navigator;->no(Ljava/lang/String;)Lcom/local/p5home/Navigator$Result;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 87
    :catchall_55
    move-exception p0

    monitor-exit v0
    :try_end_57
    .catchall {:try_start_26 .. :try_end_57} :catchall_55

    throw p0
.end method

.method static validateControl(Ljava/lang/String;I)Lcom/local/p5home/Navigator$Result;
    .registers 9

    .line 91
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 92
    const-string v2, "select"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "select_route"

    const-string v4, "select_poi"

    if-eqz v2, :cond_21

    sget-object p0, Lcom/local/p5home/NavAutoSession;->conversation:Lcom/local/p5home/NavConversation;

    invoke-virtual {p0, v0, v1}, Lcom/local/p5home/NavConversation;->stage(J)Ljava/lang/String;

    move-result-object p0

    const-string v2, "poi_list"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_20

    move-object p0, v4

    goto :goto_21

    :cond_20
    move-object p0, v3

    .line 93
    :cond_21
    :goto_21
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    sget-object p0, Lcom/local/p5home/NavAutoSession;->conversation:Lcom/local/p5home/NavConversation;

    invoke-virtual {p0, p1, v0, v1}, Lcom/local/p5home/NavConversation;->canPoi(IJ)Z

    move-result p0

    if-eqz p0, :cond_41

    .line 94
    new-instance p0, Lcom/local/p5home/Navigator$Result;

    const/4 v1, 0x1

    const-string v2, "\u53ef\u9009\u62e9\u5f53\u524d\u5730\u70b9\u5019\u9009\u5e76\u8bf7\u6c42\u8def\u7ebf\u9884\u89c8"

    const-string v3, "ready"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/local/p5home/Navigator$Result;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_47

    .line 95
    :cond_41
    const-string p0, "\u6ca1\u6709\u65b0\u9c9c\u4e14\u5305\u542b\u8be5\u5e8f\u53f7\u7684\u5730\u70b9\u5019\u9009\uff0c\u8bf7\u5148\u641c\u7d22\u5730\u70b9"

    invoke-static {p0}, Lcom/local/p5home/Navigator;->no(Ljava/lang/String;)Lcom/local/p5home/Navigator$Result;

    move-result-object p0

    .line 93
    :goto_47
    return-object p0

    .line 96
    :cond_48
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b0

    const-string v2, "select_route_start"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    goto :goto_b0

    .line 99
    :cond_57
    const-string p1, "start"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_80

    sget-object p0, Lcom/local/p5home/NavAutoSession;->conversation:Lcom/local/p5home/NavConversation;

    invoke-virtual {p0, v0, v1}, Lcom/local/p5home/NavConversation;->canStart(J)Z

    move-result p0

    if-eqz p0, :cond_79

    .line 100
    new-instance p0, Lcom/local/p5home/Navigator$Result;

    const/4 v1, 0x1

    const-string v2, "\u53ef\u53d1\u9001\u5f53\u524d\u8def\u7ebf\u7684\u5f00\u59cb\u8bf7\u6c42"

    const-string v3, "ready"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/local/p5home/Navigator$Result;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7f

    .line 101
    :cond_79
    const-string p0, "\u5f53\u524d\u6ca1\u6709\u5df2\u8bfb\u53d6\u7684\u8def\u7ebf\u65b9\u6848\uff0c\u8bf7\u5148\u9009\u5730\u70b9\u5e76\u7b49\u5f85\u8def\u7ebf\u9884\u89c8"

    invoke-static {p0}, Lcom/local/p5home/Navigator;->no(Ljava/lang/String;)Lcom/local/p5home/Navigator$Result;

    move-result-object p0

    .line 99
    :goto_7f
    return-object p0

    .line 102
    :cond_80
    const-string p1, "cancel"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a9

    sget-object p0, Lcom/local/p5home/NavAutoSession;->conversation:Lcom/local/p5home/NavConversation;

    invoke-virtual {p0, v0, v1}, Lcom/local/p5home/NavConversation;->active(J)Z

    move-result p0

    if-eqz p0, :cond_a2

    .line 103
    new-instance p0, Lcom/local/p5home/Navigator$Result;

    const/4 v1, 0x1

    const-string v2, "\u53ef\u53d6\u6d88\u672c\u6b21\u5730\u56fe\u4f1a\u8bdd"

    const-string v3, "ready"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/local/p5home/Navigator$Result;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a8

    .line 104
    :cond_a2
    const-string p0, "\u6ca1\u6709\u672c\u5e94\u7528\u6301\u6709\u7684\u5bfc\u822a\u4f1a\u8bdd\uff0c\u4e0d\u53d6\u6d88\u5176\u5b83\u529f\u80fd"

    invoke-static {p0}, Lcom/local/p5home/Navigator;->no(Ljava/lang/String;)Lcom/local/p5home/Navigator$Result;

    move-result-object p0

    .line 102
    :goto_a8
    return-object p0

    .line 105
    :cond_a9
    const-string p0, "\u672a\u77e5\u5bfc\u822a\u64cd\u4f5c\uff0c\u4fdd\u7559\u539f\u5904\u7406"

    invoke-static {p0}, Lcom/local/p5home/Navigator;->no(Ljava/lang/String;)Lcom/local/p5home/Navigator$Result;

    move-result-object p0

    return-object p0

    .line 96
    :cond_b0
    :goto_b0
    sget-object p0, Lcom/local/p5home/NavAutoSession;->conversation:Lcom/local/p5home/NavConversation;

    invoke-virtual {p0, p1, v0, v1}, Lcom/local/p5home/NavConversation;->canRoute(IJ)Z

    move-result p0

    if-eqz p0, :cond_ca

    .line 97
    new-instance p0, Lcom/local/p5home/Navigator$Result;

    const/4 v1, 0x1

    const-string v2, "\u53ef\u53d1\u9001\u5f53\u524d\u8def\u7ebf\u65b9\u6848\u9009\u62e9\u8bf7\u6c42"

    const-string v3, "ready"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/local/p5home/Navigator$Result;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d0

    .line 98
    :cond_ca
    const-string p0, "\u5c1a\u672a\u53d6\u5f97\u5305\u542b\u8be5\u5e8f\u53f7\u7684\u8def\u7ebf\u65b9\u6848\uff1b\u5730\u70b9\u5e8f\u53f7\u4e0d\u80fd\u5f53\u8def\u7ebf\u5e8f\u53f7"

    invoke-static {p0}, Lcom/local/p5home/Navigator;->no(Ljava/lang/String;)Lcom/local/p5home/Navigator$Result;

    move-result-object p0

    .line 96
    :goto_d0
    return-object p0
.end method

.method static withSessionSnapshot(Lcom/local/p5home/NavAutoSession$BridgeRead;)Landroid/os/Bundle;
    .registers 6

    .line 44
    sget-object v0, Lcom/local/p5home/NavAutoSession;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 45
    :try_start_3
    sget-object v1, Lcom/local/p5home/NavAutoSession;->conversation:Lcom/local/p5home/NavConversation;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/local/p5home/NavConversation;->stage(J)Ljava/lang/String;

    move-result-object v2

    .line 46
    invoke-virtual {v1}, Lcom/local/p5home/NavConversation;->epoch()J

    move-result-wide v3

    invoke-interface {p0, v3, v4, v2}, Lcom/local/p5home/NavAutoSession$BridgeRead;->get(JLjava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 47
    :catchall_17
    move-exception p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p0
.end method

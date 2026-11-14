.class Lcom/local/p5home/NavAutoSession$1;
.super Landroid/content/BroadcastReceiver;
.source "NavAutoSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/local/p5home/NavAutoSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 381
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13

    .line 383
    if-eqz p2, :cond_73

    const-string v0, "AUTONAVI_STANDARD_BROADCAST_SEND"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    invoke-static {p1}, Lcom/local/p5home/Navigator;->verifiedAuto(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_73

    .line 385
    :cond_15
    :try_start_15
    # getter for: Lcom/local/p5home/NavAutoSession;->LOCK:Ljava/lang/Object;
    invoke-static {}, Lcom/local/p5home/NavAutoSession;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1a} :catch_71

    .line 386
    :try_start_1a
    const-string v1, "KEY_TYPE"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 387
    const/16 v3, 0x273a

    if-ne v1, v3, :cond_29

    # invokes: Lcom/local/p5home/NavAutoSession;->receiveSearch(Landroid/content/Intent;)V
    invoke-static {p2}, Lcom/local/p5home/NavAutoSession;->access$100(Landroid/content/Intent;)V

    goto :goto_6c

    .line 388
    :cond_29
    const/16 v3, 0x2723

    if-ne v1, v3, :cond_31

    # invokes: Lcom/local/p5home/NavAutoSession;->receiveState(Landroid/content/Intent;)V
    invoke-static {p2}, Lcom/local/p5home/NavAutoSession;->access$200(Landroid/content/Intent;)V

    goto :goto_6c

    .line 389
    :cond_31
    const/16 v3, 0x2fa9

    if-ne v1, v3, :cond_65

    .line 390
    # getter for: Lcom/local/p5home/NavAutoSession;->conversation:Lcom/local/p5home/NavConversation;
    invoke-static {}, Lcom/local/p5home/NavAutoSession;->access$300()Lcom/local/p5home/NavConversation;

    move-result-object v4

    const-string v1, "EXTRA_POINUM"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v1, "EXTRA_PLAN_ROUTE"

    .line 391
    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    const-string v1, "EXTRA_BACK"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 390
    invoke-virtual/range {v4 .. v9}, Lcom/local/p5home/NavConversation;->visibleList(IZZJ)Z

    move-result p2

    if-eqz p2, :cond_6c

    .line 392
    # invokes: Lcom/local/p5home/NavAutoSession;->clearRouteQueries()V
    invoke-static {}, Lcom/local/p5home/NavAutoSession;->access$400()V

    .line 393
    # getter for: Lcom/local/p5home/NavAutoSession;->conversation:Lcom/local/p5home/NavConversation;
    invoke-static {}, Lcom/local/p5home/NavAutoSession;->access$300()Lcom/local/p5home/NavConversation;

    move-result-object p2

    invoke-virtual {p2}, Lcom/local/p5home/NavConversation;->epoch()J

    move-result-wide v3

    # invokes: Lcom/local/p5home/NavAutoSession;->pollRoutes(Landroid/content/Context;JI)V
    invoke-static {p1, v3, v4, v2}, Lcom/local/p5home/NavAutoSession;->access$500(Landroid/content/Context;JI)V

    goto :goto_6c

    .line 396
    :cond_65
    const/16 v2, 0x2748

    if-ne v1, v2, :cond_6c

    # invokes: Lcom/local/p5home/NavAutoSession;->receiveRoutes(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {p1, p2}, Lcom/local/p5home/NavAutoSession;->access$600(Landroid/content/Context;Landroid/content/Intent;)V

    .line 397
    :cond_6c
    :goto_6c
    monitor-exit v0

    .line 400
    goto :goto_72

    .line 397
    :catchall_6e
    move-exception p1

    monitor-exit v0
    :try_end_70
    .catchall {:try_start_1a .. :try_end_70} :catchall_6e

    :try_start_70
    throw p1
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_71} :catch_71

    .line 398
    :catch_71
    move-exception p1

    .line 401
    :goto_72
    return-void

    .line 383
    :cond_73
    :goto_73
    return-void
.end method

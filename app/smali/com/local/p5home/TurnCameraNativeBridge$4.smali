.class Lcom/local/p5home/TurnCameraNativeBridge$4;
.super Landroid/content/BroadcastReceiver;
.source "TurnCameraNativeBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/local/p5home/TurnCameraNativeBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/local/p5home/TurnCameraNativeBridge;


# direct methods
.method constructor <init>(Lcom/local/p5home/TurnCameraNativeBridge;)V
    .registers 2

    .line 89
    iput-object p1, p0, Lcom/local/p5home/TurnCameraNativeBridge$4;->this$0:Lcom/local/p5home/TurnCameraNativeBridge;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onReceive$0$com-local-g3home-TurnCameraNativeBridge$4(J)V
    .registers 4

    .line 121
    iget-object v0, p0, Lcom/local/p5home/TurnCameraNativeBridge$4;->this$0:Lcom/local/p5home/TurnCameraNativeBridge;

    # invokes: Lcom/local/p5home/TurnCameraNativeBridge;->watch(J)V
    invoke-static {v0, p1, p2}, Lcom/local/p5home/TurnCameraNativeBridge;->access$2000(Lcom/local/p5home/TurnCameraNativeBridge;J)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 28

    .line 90
    move-object/from16 v1, p0

    move-object/from16 v0, p2

    const-string v2, "closed"

    const-string v3, "close"

    const-string v4, "left"

    const-string v5, "repair"

    const-string v6, "probe"

    const-string v7, "observer"

    const-string v8, "sentAt"

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    const-string v10, "nativeBuild"

    const-string v11, "turn-20261028-d"

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v12, "code"

    if-eqz v0, :cond_3ed

    :try_start_22
    const-string v13, "com.local.p5home.TURN_CAMERA_NATIVE"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_2c
    .catchall {:try_start_22 .. :try_end_2c} :catchall_3f6

    const-string v14, "com.local.p5home.TURN_CAMERA_NATIVE_SCOPED"

    if-nez v13, :cond_3a

    :try_start_30
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3ed

    :cond_3a
    const-string v13, "com.xiaopeng.drivingimageassist"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_48

    goto/16 :goto_3ed

    .line 92
    :cond_48
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 93
    const-string v14, "operation"

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "requestId"

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10
    :try_end_60
    .catchall {:try_start_30 .. :try_end_60} :catchall_3f6

    .line 94
    move-object/from16 v17, v2

    const-string v2, "REQUEST_EXPIRED"

    if-eqz v15, :cond_3e1

    move/from16 v19, v13

    :try_start_68
    const-string v13, "[A-Za-z0-9-]{1,80}"

    invoke-virtual {v15, v13}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3e1

    move-object/from16 v20, v14

    const-wide/16 v13, -0x1

    move-object/from16 v22, v2

    move-object/from16 v21, v3

    invoke-virtual {v0, v8, v13, v14}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3, v10, v11}, Lcom/local/p5home/TurnCameraPreviewPolicy;->fresh(JJ)Z

    move-result v2

    if-nez v2, :cond_86

    move-object/from16 v2, v22

    goto/16 :goto_3e1

    .line 95
    :cond_86
    iget-object v2, v1, Lcom/local/p5home/TurnCameraNativeBridge$4;->this$0:Lcom/local/p5home/TurnCameraNativeBridge;

    # getter for: Lcom/local/p5home/TurnCameraNativeBridge;->seen:Ljava/util/LinkedHashSet;
    invoke-static {v2}, Lcom/local/p5home/TurnCameraNativeBridge;->access$900(Lcom/local/p5home/TurnCameraNativeBridge;)Ljava/util/LinkedHashSet;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a0

    const-string v0, "DUPLICATE_IGNORED"

    invoke-virtual {v9, v12, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xd0

    invoke-virtual {v1, v0}, Lcom/local/p5home/TurnCameraNativeBridge$4;->setResultCode(I)V
    :try_end_9c
    .catchall {:try_start_68 .. :try_end_9c} :catchall_3f6

    .line 124
    invoke-virtual {v1, v9}, Lcom/local/p5home/TurnCameraNativeBridge$4;->setResultExtras(Landroid/os/Bundle;)V

    .line 95
    return-void

    .line 96
    :cond_a0
    const/4 v2, 0x5

    :try_start_a1
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v6, v2, v3

    const/4 v10, 0x1

    aput-object v5, v2, v10

    const/4 v11, 0x2

    aput-object v4, v2, v11

    const-string v23, "right"

    const/16 v24, 0x3

    aput-object v23, v2, v24

    const/16 v23, 0x4

    aput-object v21, v2, v23

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v11, v20

    invoke-interface {v2, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_cb

    const/16 v0, 0x190

    invoke-virtual {v1, v0}, Lcom/local/p5home/TurnCameraNativeBridge$4;->setResultCode(I)V
    :try_end_c7
    .catchall {:try_start_a1 .. :try_end_c7} :catchall_3f6

    .line 124
    invoke-virtual {v1, v9}, Lcom/local/p5home/TurnCameraNativeBridge$4;->setResultExtras(Landroid/os/Bundle;)V

    .line 96
    return-void

    .line 97
    :cond_cb
    :try_start_cb
    iget-object v2, v1, Lcom/local/p5home/TurnCameraNativeBridge$4;->this$0:Lcom/local/p5home/TurnCameraNativeBridge;

    # getter for: Lcom/local/p5home/TurnCameraNativeBridge;->seen:Ljava/util/LinkedHashSet;
    invoke-static {v2}, Lcom/local/p5home/TurnCameraNativeBridge;->access$900(Lcom/local/p5home/TurnCameraNativeBridge;)Ljava/util/LinkedHashSet;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :goto_d4
    iget-object v2, v1, Lcom/local/p5home/TurnCameraNativeBridge$4;->this$0:Lcom/local/p5home/TurnCameraNativeBridge;

    # getter for: Lcom/local/p5home/TurnCameraNativeBridge;->seen:Ljava/util/LinkedHashSet;
    invoke-static {v2}, Lcom/local/p5home/TurnCameraNativeBridge;->access$900(Lcom/local/p5home/TurnCameraNativeBridge;)Ljava/util/LinkedHashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->size()I

    move-result v2

    const/16 v15, 0x20

    if-le v2, v15, :cond_fa

    iget-object v2, v1, Lcom/local/p5home/TurnCameraNativeBridge$4;->this$0:Lcom/local/p5home/TurnCameraNativeBridge;

    # getter for: Lcom/local/p5home/TurnCameraNativeBridge;->seen:Ljava/util/LinkedHashSet;
    invoke-static {v2}, Lcom/local/p5home/TurnCameraNativeBridge;->access$900(Lcom/local/p5home/TurnCameraNativeBridge;)Ljava/util/LinkedHashSet;

    move-result-object v2

    iget-object v15, v1, Lcom/local/p5home/TurnCameraNativeBridge$4;->this$0:Lcom/local/p5home/TurnCameraNativeBridge;

    # getter for: Lcom/local/p5home/TurnCameraNativeBridge;->seen:Ljava/util/LinkedHashSet;
    invoke-static {v15}, Lcom/local/p5home/TurnCameraNativeBridge;->access$900(Lcom/local/p5home/TurnCameraNativeBridge;)Ljava/util/LinkedHashSet;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_d4

    .line 98
    :cond_fa
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v5, 0xc8

    if-eqz v2, :cond_12d

    iget-object v0, v1, Lcom/local/p5home/TurnCameraNativeBridge$4;->this$0:Lcom/local/p5home/TurnCameraNativeBridge;

    # getter for: Lcom/local/p5home/TurnCameraNativeBridge;->repair:Lcom/local/p5home/TurnCameraNativeBridge$Repair;
    invoke-static {v0}, Lcom/local/p5home/TurnCameraNativeBridge;->access$1000(Lcom/local/p5home/TurnCameraNativeBridge;)Lcom/local/p5home/TurnCameraNativeBridge$Repair;

    move-result-object v0

    invoke-interface {v0}, Lcom/local/p5home/TurnCameraNativeBridge$Repair;->attach()Z

    move-result v0

    invoke-virtual {v9, v7, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v9, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_118

    const-string v0, "OBSERVER_ATTACHED"

    goto :goto_11a

    :cond_118
    const-string v0, "OBSERVER_NOT_READY"

    :goto_11a
    invoke-virtual {v9, v12, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_124

    goto :goto_126

    :cond_124
    const/16 v5, 0x1f7

    :goto_126
    invoke-virtual {v1, v5}, Lcom/local/p5home/TurnCameraNativeBridge$4;->setResultCode(I)V
    :try_end_129
    .catchall {:try_start_cb .. :try_end_129} :catchall_3f6

    .line 124
    invoke-virtual {v1, v9}, Lcom/local/p5home/TurnCameraNativeBridge$4;->setResultExtras(Landroid/os/Bundle;)V

    .line 98
    return-void

    .line 99
    :cond_12d
    move-object/from16 v2, v21

    :try_start_12f
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_133
    .catchall {:try_start_12f .. :try_end_133} :catchall_3f6

    const-string v7, "[A-Za-z0-9-]{16,80}"

    const/16 v15, 0x199

    if-eqz v2, :cond_1e5

    .line 100
    :try_start_139
    const-string v2, "expectedLeaseToken"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 101
    iget-object v3, v1, Lcom/local/p5home/TurnCameraNativeBridge$4;->this$0:Lcom/local/p5home/TurnCameraNativeBridge;

    # getter for: Lcom/local/p5home/TurnCameraNativeBridge;->displayLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v3}, Lcom/local/p5home/TurnCameraNativeBridge;->access$000(Lcom/local/p5home/TurnCameraNativeBridge;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_148
    .catchall {:try_start_139 .. :try_end_148} :catchall_3f6

    .line 102
    :try_start_148
    invoke-virtual {v0, v8, v13, v14}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    invoke-static {v3, v4, v10, v11}, Lcom/local/p5home/TurnCameraPreviewPolicy;->fresh(JJ)Z

    move-result v0

    if-nez v0, :cond_16d

    move-object/from16 v2, v22

    invoke-virtual {v9, v12, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x198

    invoke-virtual {v1, v0}, Lcom/local/p5home/TurnCameraNativeBridge$4;->setResultCode(I)V
    :try_end_160
    .catchall {:try_start_148 .. :try_end_160} :catchall_1da

    .line 106
    :try_start_160
    iget-object v0, v1, Lcom/local/p5home/TurnCameraNativeBridge$4;->this$0:Lcom/local/p5home/TurnCameraNativeBridge;

    # getter for: Lcom/local/p5home/TurnCameraNativeBridge;->displayLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v0}, Lcom/local/p5home/TurnCameraNativeBridge;->access$000(Lcom/local/p5home/TurnCameraNativeBridge;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_169
    .catchall {:try_start_160 .. :try_end_169} :catchall_3f6

    .line 124
    invoke-virtual {v1, v9}, Lcom/local/p5home/TurnCameraNativeBridge$4;->setResultExtras(Landroid/os/Bundle;)V

    .line 102
    return-void

    .line 103
    :cond_16d
    if-eqz v19, :cond_188

    if-nez v2, :cond_188

    :try_start_171
    const-string v0, "INVALID_PREVIEW_LEASE"

    invoke-virtual {v9, v12, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x190

    invoke-virtual {v1, v0}, Lcom/local/p5home/TurnCameraNativeBridge$4;->setResultCode(I)V
    :try_end_17b
    .catchall {:try_start_171 .. :try_end_17b} :catchall_1da

    .line 106
    :try_start_17b
    iget-object v0, v1, Lcom/local/p5home/TurnCameraNativeBridge$4;->this$0:Lcom/local/p5home/TurnCameraNativeBridge;

    # getter for: Lcom/local/p5home/TurnCameraNativeBridge;->displayLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v0}, Lcom/local/p5home/TurnCameraNativeBridge;->access$000(Lcom/local/p5home/TurnCameraNativeBridge;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_184
    .catchall {:try_start_17b .. :try_end_184} :catchall_3f6

    .line 124
    invoke-virtual {v1, v9}, Lcom/local/p5home/TurnCameraNativeBridge$4;->setResultExtras(Landroid/os/Bundle;)V

    .line 103
    return-void

    .line 104
    :cond_188
    if-eqz v2, :cond_1b1

    :try_start_18a
    invoke-virtual {v2, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19c

    iget-object v0, v1, Lcom/local/p5home/TurnCameraNativeBridge$4;->this$0:Lcom/local/p5home/TurnCameraNativeBridge;

    # getter for: Lcom/local/p5home/TurnCameraNativeBridge;->previewOwnerToken:Ljava/lang/String;
    invoke-static {v0}, Lcom/local/p5home/TurnCameraNativeBridge;->access$1100(Lcom/local/p5home/TurnCameraNativeBridge;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b1

    :cond_19c
    const-string v0, "PREVIEW_LEASE_MISMATCH"

    invoke-virtual {v9, v12, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Lcom/local/p5home/TurnCameraNativeBridge$4;->setResultCode(I)V
    :try_end_1a4
    .catchall {:try_start_18a .. :try_end_1a4} :catchall_1da

    .line 106
    :try_start_1a4
    iget-object v0, v1, Lcom/local/p5home/TurnCameraNativeBridge$4;->this$0:Lcom/local/p5home/TurnCameraNativeBridge;

    # getter for: Lcom/local/p5home/TurnCameraNativeBridge;->displayLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v0}, Lcom/local/p5home/TurnCameraNativeBridge;->access$000(Lcom/local/p5home/TurnCameraNativeBridge;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_1ad
    .catchall {:try_start_1a4 .. :try_end_1ad} :catchall_3f6

    .line 124
    invoke-virtual {v1, v9}, Lcom/local/p5home/TurnCameraNativeBridge$4;->setResultExtras(Landroid/os/Bundle;)V

    .line 104
    return-void

    .line 105
    :cond_1b1
    :try_start_1b1
    iget-object v0, v1, Lcom/local/p5home/TurnCameraNativeBridge$4;->this$0:Lcom/local/p5home/TurnCameraNativeBridge;

    # invokes: Lcom/local/p5home/TurnCameraNativeBridge;->closeOwned()Z
    invoke-static {v0}, Lcom/local/p5home/TurnCameraNativeBridge;->access$1200(Lcom/local/p5home/TurnCameraNativeBridge;)Z

    move-result v0

    move-object/from16 v2, v17

    invoke-virtual {v9, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v9, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c5

    const-string v0, "PREVIEW_CLOSED"

    goto :goto_1c7

    :cond_1c5
    const-string v0, "NO_OWN_PREVIEW"

    :goto_1c7
    invoke-virtual {v9, v12, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lcom/local/p5home/TurnCameraNativeBridge$4;->setResultCode(I)V
    :try_end_1cd
    .catchall {:try_start_1b1 .. :try_end_1cd} :catchall_1da

    .line 106
    :try_start_1cd
    iget-object v0, v1, Lcom/local/p5home/TurnCameraNativeBridge$4;->this$0:Lcom/local/p5home/TurnCameraNativeBridge;

    # getter for: Lcom/local/p5home/TurnCameraNativeBridge;->displayLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v0}, Lcom/local/p5home/TurnCameraNativeBridge;->access$000(Lcom/local/p5home/TurnCameraNativeBridge;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_1d6
    .catchall {:try_start_1cd .. :try_end_1d6} :catchall_3f6

    .line 124
    invoke-virtual {v1, v9}, Lcom/local/p5home/TurnCameraNativeBridge$4;->setResultExtras(Landroid/os/Bundle;)V

    .line 105
    return-void

    .line 106
    :catchall_1da
    move-exception v0

    :try_start_1db
    iget-object v2, v1, Lcom/local/p5home/TurnCameraNativeBridge$4;->this$0:Lcom/local/p5home/TurnCameraNativeBridge;

    # getter for: Lcom/local/p5home/TurnCameraNativeBridge;->displayLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v2}, Lcom/local/p5home/TurnCameraNativeBridge;->access$000(Lcom/local/p5home/TurnCameraNativeBridge;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 108
    :cond_1e5
    move-object/from16 v2, v22

    iget-object v15, v1, Lcom/local/p5home/TurnCameraNativeBridge$4;->this$0:Lcom/local/p5home/TurnCameraNativeBridge;

    # getter for: Lcom/local/p5home/TurnCameraNativeBridge;->showInstance:Ljava/lang/reflect/Method;
    invoke-static {v15}, Lcom/local/p5home/TurnCameraNativeBridge;->access$500(Lcom/local/p5home/TurnCameraNativeBridge;)Ljava/lang/reflect/Method;

    move-result-object v15

    new-array v13, v3, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-virtual {v15, v14, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    iget-object v15, v1, Lcom/local/p5home/TurnCameraNativeBridge$4;->this$0:Lcom/local/p5home/TurnCameraNativeBridge;

    # getter for: Lcom/local/p5home/TurnCameraNativeBridge;->showing:Ljava/lang/reflect/Method;
    invoke-static {v15}, Lcom/local/p5home/TurnCameraNativeBridge;->access$1300(Lcom/local/p5home/TurnCameraNativeBridge;)Ljava/lang/reflect/Method;

    move-result-object v15

    new-array v14, v3, [Ljava/lang/Object;

    invoke-virtual {v15, v13, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-nez v14, :cond_220

    iget-object v14, v1, Lcom/local/p5home/TurnCameraNativeBridge$4;->this$0:Lcom/local/p5home/TurnCameraNativeBridge;

    # getter for: Lcom/local/p5home/TurnCameraNativeBridge;->displayType:Ljava/lang/reflect/Method;
    invoke-static {v14}, Lcom/local/p5home/TurnCameraNativeBridge;->access$600(Lcom/local/p5home/TurnCameraNativeBridge;)Ljava/lang/reflect/Method;

    move-result-object v14

    new-array v15, v3, [Ljava/lang/Object;

    invoke-virtual {v14, v13, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_21e

    goto :goto_220

    :cond_21e
    move v14, v3

    goto :goto_221

    :cond_220
    :goto_220
    move v14, v10

    :goto_221
    iget-object v15, v1, Lcom/local/p5home/TurnCameraNativeBridge$4;->this$0:Lcom/local/p5home/TurnCameraNativeBridge;

    # invokes: Lcom/local/p5home/TurnCameraNativeBridge;->parked()Z
    invoke-static {v15}, Lcom/local/p5home/TurnCameraNativeBridge;->access$400(Lcom/local/p5home/TurnCameraNativeBridge;)Z

    move-result v15

    .line 109
    const-string v3, "parkedReady"

    invoke-virtual {v9, v3, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "displayOccupied"

    invoke-virtual {v9, v3, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 110
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_253

    const-string v0, "scopedLeaseSupported"

    invoke-virtual {v9, v0, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "lampMetadata"

    iget-object v2, v1, Lcom/local/p5home/TurnCameraNativeBridge$4;->this$0:Lcom/local/p5home/TurnCameraNativeBridge;

    # invokes: Lcom/local/p5home/TurnCameraNativeBridge;->lampMetadata()Ljava/lang/String;
    invoke-static {v2}, Lcom/local/p5home/TurnCameraNativeBridge;->access$1400(Lcom/local/p5home/TurnCameraNativeBridge;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "NATIVE_BRIDGE_READY"

    invoke-virtual {v9, v12, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lcom/local/p5home/TurnCameraNativeBridge$4;->setResultCode(I)V
    :try_end_24f
    .catchall {:try_start_1db .. :try_end_24f} :catchall_3f6

    .line 124
    invoke-virtual {v1, v9}, Lcom/local/p5home/TurnCameraNativeBridge$4;->setResultExtras(Landroid/os/Bundle;)V

    .line 110
    return-void

    .line 111
    :cond_253
    :try_start_253
    const-string v3, "leaseToken"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v19, :cond_25d

    if-eqz v3, :cond_265

    :cond_25d
    if-eqz v3, :cond_273

    invoke-virtual {v3, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_273

    :cond_265
    const-string v0, "INVALID_PREVIEW_LEASE"

    invoke-virtual {v9, v12, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x190

    invoke-virtual {v1, v0}, Lcom/local/p5home/TurnCameraNativeBridge$4;->setResultCode(I)V
    :try_end_26f
    .catchall {:try_start_253 .. :try_end_26f} :catchall_3f6

    .line 124
    invoke-virtual {v1, v9}, Lcom/local/p5home/TurnCameraNativeBridge$4;->setResultExtras(Landroid/os/Bundle;)V

    .line 111
    return-void

    .line 112
    :cond_273
    if-eqz v15, :cond_3ce

    if-eqz v14, :cond_279

    goto/16 :goto_3ce

    .line 113
    :cond_279
    :try_start_279
    iget-object v5, v1, Lcom/local/p5home/TurnCameraNativeBridge$4;->this$0:Lcom/local/p5home/TurnCameraNativeBridge;

    # getter for: Lcom/local/p5home/TurnCameraNativeBridge;->displayLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v5}, Lcom/local/p5home/TurnCameraNativeBridge;->access$000(Lcom/local/p5home/TurnCameraNativeBridge;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_282
    .catchall {:try_start_279 .. :try_end_282} :catchall_3f6

    .line 114
    const-wide/16 v5, -0x1

    :try_start_284
    invoke-virtual {v0, v8, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lcom/local/p5home/TurnCameraPreviewPolicy;->fresh(JJ)Z

    move-result v0

    if-nez v0, :cond_2a7

    invoke-virtual {v9, v12, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x198

    invoke-virtual {v1, v0}, Lcom/local/p5home/TurnCameraNativeBridge$4;->setResultCode(I)V
    :try_end_29a
    .catchall {:try_start_284 .. :try_end_29a} :catchall_3c3

    .line 123
    :try_start_29a
    iget-object v0, v1, Lcom/local/p5home/TurnCameraNativeBridge$4;->this$0:Lcom/local/p5home/TurnCameraNativeBridge;

    # getter for: Lcom/local/p5home/TurnCameraNativeBridge;->displayLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v0}, Lcom/local/p5home/TurnCameraNativeBridge;->access$000(Lcom/local/p5home/TurnCameraNativeBridge;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2a3
    .catchall {:try_start_29a .. :try_end_2a3} :catchall_3f6

    .line 124
    invoke-virtual {v1, v9}, Lcom/local/p5home/TurnCameraNativeBridge$4;->setResultExtras(Landroid/os/Bundle;)V

    .line 114
    return-void

    .line 115
    :cond_2a7
    :try_start_2a7
    iget-object v0, v1, Lcom/local/p5home/TurnCameraNativeBridge$4;->this$0:Lcom/local/p5home/TurnCameraNativeBridge;

    # getter for: Lcom/local/p5home/TurnCameraNativeBridge;->showing:Ljava/lang/reflect/Method;
    invoke-static {v0}, Lcom/local/p5home/TurnCameraNativeBridge;->access$1300(Lcom/local/p5home/TurnCameraNativeBridge;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v13, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3ac

    iget-object v0, v1, Lcom/local/p5home/TurnCameraNativeBridge$4;->this$0:Lcom/local/p5home/TurnCameraNativeBridge;

    # getter for: Lcom/local/p5home/TurnCameraNativeBridge;->displayType:Ljava/lang/reflect/Method;
    invoke-static {v0}, Lcom/local/p5home/TurnCameraNativeBridge;->access$600(Lcom/local/p5home/TurnCameraNativeBridge;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v13, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2d4

    goto/16 :goto_3ac

    .line 116
    :cond_2d4
    iget-object v0, v1, Lcom/local/p5home/TurnCameraNativeBridge$4;->this$0:Lcom/local/p5home/TurnCameraNativeBridge;

    # getter for: Lcom/local/p5home/TurnCameraNativeBridge;->moduleInstance:Ljava/lang/reflect/Method;
    invoke-static {v0}, Lcom/local/p5home/TurnCameraNativeBridge;->access$1500(Lcom/local/p5home/TurnCameraNativeBridge;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, v1, Lcom/local/p5home/TurnCameraNativeBridge$4;->this$0:Lcom/local/p5home/TurnCameraNativeBridge;

    # getter for: Lcom/local/p5home/TurnCameraNativeBridge;->moduleContext:Ljava/lang/reflect/Method;
    invoke-static {v2}, Lcom/local/p5home/TurnCameraNativeBridge;->access$1600(Lcom/local/p5home/TurnCameraNativeBridge;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Landroid/content/Context;

    if-nez v2, :cond_305

    const/16 v2, 0x1f7

    invoke-virtual {v1, v2}, Lcom/local/p5home/TurnCameraNativeBridge$4;->setResultCode(I)V
    :try_end_2f8
    .catchall {:try_start_2a7 .. :try_end_2f8} :catchall_3c3

    .line 123
    :try_start_2f8
    iget-object v0, v1, Lcom/local/p5home/TurnCameraNativeBridge$4;->this$0:Lcom/local/p5home/TurnCameraNativeBridge;

    # getter for: Lcom/local/p5home/TurnCameraNativeBridge;->displayLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v0}, Lcom/local/p5home/TurnCameraNativeBridge;->access$000(Lcom/local/p5home/TurnCameraNativeBridge;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_301
    .catchall {:try_start_2f8 .. :try_end_301} :catchall_3f6

    .line 124
    invoke-virtual {v1, v9}, Lcom/local/p5home/TurnCameraNativeBridge$4;->setResultExtras(Landroid/os/Bundle;)V

    .line 116
    return-void

    .line 117
    :cond_305
    :try_start_305
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30d

    const/4 v2, 0x2

    goto :goto_30f

    :cond_30d
    move/from16 v2, v24

    :goto_30f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v6, v1, Lcom/local/p5home/TurnCameraNativeBridge$4;->this$0:Lcom/local/p5home/TurnCameraNativeBridge;

    # getter for: Lcom/local/p5home/TurnCameraNativeBridge;->preview:Lcom/local/p5home/TurnCameraPreviewPolicy;
    invoke-static {v6}, Lcom/local/p5home/TurnCameraNativeBridge;->access$700(Lcom/local/p5home/TurnCameraNativeBridge;)Lcom/local/p5home/TurnCameraPreviewPolicy;

    move-result-object v6

    invoke-virtual {v6, v2, v4, v5}, Lcom/local/p5home/TurnCameraPreviewPolicy;->begin(IJ)J

    move-result-wide v15

    iget-object v6, v1, Lcom/local/p5home/TurnCameraNativeBridge$4;->this$0:Lcom/local/p5home/TurnCameraNativeBridge;

    # getter for: Lcom/local/p5home/TurnCameraNativeBridge;->previewLease:Ljava/util/concurrent/atomic/AtomicLong;
    invoke-static {v6}, Lcom/local/p5home/TurnCameraNativeBridge;->access$1700(Lcom/local/p5home/TurnCameraNativeBridge;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v6

    .line 118
    iget-object v8, v1, Lcom/local/p5home/TurnCameraNativeBridge$4;->this$0:Lcom/local/p5home/TurnCameraNativeBridge;

    # setter for: Lcom/local/p5home/TurnCameraNativeBridge;->previewOwnerToken:Ljava/lang/String;
    invoke-static {v8, v3}, Lcom/local/p5home/TurnCameraNativeBridge;->access$1102(Lcom/local/p5home/TurnCameraNativeBridge;Ljava/lang/String;)Ljava/lang/String;

    .line 119
    new-instance v3, Lcom/local/p5home/TurnCameraNativeBridge$Permit;

    const-wide/16 v17, 0x1388

    add-long v18, v4, v17

    const/16 v20, 0x0

    move-object v14, v3

    move/from16 v17, v2

    invoke-direct/range {v14 .. v20}, Lcom/local/p5home/TurnCameraNativeBridge$Permit;-><init>(JIJZ)V

    .line 120
    iget-object v4, v1, Lcom/local/p5home/TurnCameraNativeBridge$4;->this$0:Lcom/local/p5home/TurnCameraNativeBridge;

    # getter for: Lcom/local/p5home/TurnCameraNativeBridge;->ownCall:Ljava/lang/ThreadLocal;
    invoke-static {v4}, Lcom/local/p5home/TurnCameraNativeBridge;->access$100(Lcom/local/p5home/TurnCameraNativeBridge;)Ljava/lang/ThreadLocal;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_343
    .catchall {:try_start_305 .. :try_end_343} :catchall_3c3

    :try_start_343
    iget-object v4, v1, Lcom/local/p5home/TurnCameraNativeBridge$4;->this$0:Lcom/local/p5home/TurnCameraNativeBridge;

    # getter for: Lcom/local/p5home/TurnCameraNativeBridge;->show:Ljava/lang/reflect/Method;
    invoke-static {v4}, Lcom/local/p5home/TurnCameraNativeBridge;->access$1800(Lcom/local/p5home/TurnCameraNativeBridge;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v5, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v10

    invoke-virtual {v4, v13, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_358
    .catchall {:try_start_343 .. :try_end_358} :catchall_391

    :try_start_358
    iget-object v0, v1, Lcom/local/p5home/TurnCameraNativeBridge$4;->this$0:Lcom/local/p5home/TurnCameraNativeBridge;

    # getter for: Lcom/local/p5home/TurnCameraNativeBridge;->ownCall:Ljava/lang/ThreadLocal;
    invoke-static {v0}, Lcom/local/p5home/TurnCameraNativeBridge;->access$100(Lcom/local/p5home/TurnCameraNativeBridge;)Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 121
    iget-object v0, v1, Lcom/local/p5home/TurnCameraNativeBridge$4;->this$0:Lcom/local/p5home/TurnCameraNativeBridge;

    # getter for: Lcom/local/p5home/TurnCameraNativeBridge;->main:Landroid/os/Handler;
    invoke-static {v0}, Lcom/local/p5home/TurnCameraNativeBridge;->access$1900(Lcom/local/p5home/TurnCameraNativeBridge;)Landroid/os/Handler;

    move-result-object v0

    new-instance v3, Lcom/local/p5home/TurnCameraNativeBridge$4$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1, v6, v7}, Lcom/local/p5home/TurnCameraNativeBridge$4$$ExternalSyntheticLambda0;-><init>(Lcom/local/p5home/TurnCameraNativeBridge$4;J)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 122
    const-string v0, "PREVIEW_REQUESTED"

    invoke-virtual {v9, v12, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "side"

    invoke-virtual {v9, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "durationMs"

    const/16 v2, 0x1388

    invoke-virtual {v9, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v0, 0xca

    invoke-virtual {v1, v0}, Lcom/local/p5home/TurnCameraNativeBridge$4;->setResultCode(I)V
    :try_end_387
    .catchall {:try_start_358 .. :try_end_387} :catchall_3c3

    .line 123
    :try_start_387
    iget-object v0, v1, Lcom/local/p5home/TurnCameraNativeBridge$4;->this$0:Lcom/local/p5home/TurnCameraNativeBridge;

    # getter for: Lcom/local/p5home/TurnCameraNativeBridge;->displayLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v0}, Lcom/local/p5home/TurnCameraNativeBridge;->access$000(Lcom/local/p5home/TurnCameraNativeBridge;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_390
    .catchall {:try_start_387 .. :try_end_390} :catchall_3f6

    goto :goto_401

    .line 120
    :catchall_391
    move-exception v0

    :try_start_392
    iget-object v2, v1, Lcom/local/p5home/TurnCameraNativeBridge$4;->this$0:Lcom/local/p5home/TurnCameraNativeBridge;

    # getter for: Lcom/local/p5home/TurnCameraNativeBridge;->preview:Lcom/local/p5home/TurnCameraPreviewPolicy;
    invoke-static {v2}, Lcom/local/p5home/TurnCameraNativeBridge;->access$700(Lcom/local/p5home/TurnCameraNativeBridge;)Lcom/local/p5home/TurnCameraPreviewPolicy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/local/p5home/TurnCameraPreviewPolicy;->release()V

    iget-object v2, v1, Lcom/local/p5home/TurnCameraNativeBridge$4;->this$0:Lcom/local/p5home/TurnCameraNativeBridge;

    # invokes: Lcom/local/p5home/TurnCameraNativeBridge;->resetPending(Lcom/local/p5home/TurnCameraNativeBridge$Permit;)V
    invoke-static {v2, v3}, Lcom/local/p5home/TurnCameraNativeBridge;->access$800(Lcom/local/p5home/TurnCameraNativeBridge;Lcom/local/p5home/TurnCameraNativeBridge$Permit;)V

    throw v0
    :try_end_3a1
    .catchall {:try_start_392 .. :try_end_3a1} :catchall_3a1

    :catchall_3a1
    move-exception v0

    :try_start_3a2
    iget-object v2, v1, Lcom/local/p5home/TurnCameraNativeBridge$4;->this$0:Lcom/local/p5home/TurnCameraNativeBridge;

    # getter for: Lcom/local/p5home/TurnCameraNativeBridge;->ownCall:Ljava/lang/ThreadLocal;
    invoke-static {v2}, Lcom/local/p5home/TurnCameraNativeBridge;->access$100(Lcom/local/p5home/TurnCameraNativeBridge;)Ljava/lang/ThreadLocal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    throw v0

    .line 115
    :cond_3ac
    :goto_3ac
    const-string v0, "OEM_DISPLAY_BUSY"

    invoke-virtual {v9, v12, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x199

    invoke-virtual {v1, v0}, Lcom/local/p5home/TurnCameraNativeBridge$4;->setResultCode(I)V
    :try_end_3b6
    .catchall {:try_start_3a2 .. :try_end_3b6} :catchall_3c3

    .line 123
    :try_start_3b6
    iget-object v0, v1, Lcom/local/p5home/TurnCameraNativeBridge$4;->this$0:Lcom/local/p5home/TurnCameraNativeBridge;

    # getter for: Lcom/local/p5home/TurnCameraNativeBridge;->displayLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v0}, Lcom/local/p5home/TurnCameraNativeBridge;->access$000(Lcom/local/p5home/TurnCameraNativeBridge;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_3bf
    .catchall {:try_start_3b6 .. :try_end_3bf} :catchall_3f6

    .line 124
    invoke-virtual {v1, v9}, Lcom/local/p5home/TurnCameraNativeBridge$4;->setResultExtras(Landroid/os/Bundle;)V

    .line 115
    return-void

    .line 123
    :catchall_3c3
    move-exception v0

    :try_start_3c4
    iget-object v2, v1, Lcom/local/p5home/TurnCameraNativeBridge$4;->this$0:Lcom/local/p5home/TurnCameraNativeBridge;

    # getter for: Lcom/local/p5home/TurnCameraNativeBridge;->displayLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v2}, Lcom/local/p5home/TurnCameraNativeBridge;->access$000(Lcom/local/p5home/TurnCameraNativeBridge;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 112
    :cond_3ce
    :goto_3ce
    if-eqz v14, :cond_3d3

    const-string v0, "OEM_DISPLAY_BUSY"

    goto :goto_3d5

    :cond_3d3
    const-string v0, "PARKED_CONDITIONS_NOT_READY"

    :goto_3d5
    invoke-virtual {v9, v12, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x199

    invoke-virtual {v1, v0}, Lcom/local/p5home/TurnCameraNativeBridge$4;->setResultCode(I)V
    :try_end_3dd
    .catchall {:try_start_3c4 .. :try_end_3dd} :catchall_3f6

    .line 124
    invoke-virtual {v1, v9}, Lcom/local/p5home/TurnCameraNativeBridge$4;->setResultExtras(Landroid/os/Bundle;)V

    .line 112
    return-void

    .line 94
    :cond_3e1
    :goto_3e1
    :try_start_3e1
    invoke-virtual {v9, v12, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x198

    invoke-virtual {v1, v0}, Lcom/local/p5home/TurnCameraNativeBridge$4;->setResultCode(I)V
    :try_end_3e9
    .catchall {:try_start_3e1 .. :try_end_3e9} :catchall_3f6

    .line 124
    invoke-virtual {v1, v9}, Lcom/local/p5home/TurnCameraNativeBridge$4;->setResultExtras(Landroid/os/Bundle;)V

    .line 94
    return-void

    .line 91
    :cond_3ed
    :goto_3ed
    const/16 v0, 0x190

    :try_start_3ef
    invoke-virtual {v1, v0}, Lcom/local/p5home/TurnCameraNativeBridge$4;->setResultCode(I)V
    :try_end_3f2
    .catchall {:try_start_3ef .. :try_end_3f2} :catchall_3f6

    .line 124
    invoke-virtual {v1, v9}, Lcom/local/p5home/TurnCameraNativeBridge$4;->setResultExtras(Landroid/os/Bundle;)V

    .line 91
    return-void

    .line 124
    :catchall_3f6
    move-exception v0

    :try_start_3f7
    const-string v0, "NATIVE_NOT_READY"

    invoke-virtual {v9, v12, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x1f7

    invoke-virtual {v1, v2}, Lcom/local/p5home/TurnCameraNativeBridge$4;->setResultCode(I)V
    :try_end_401
    .catchall {:try_start_3f7 .. :try_end_401} :catchall_405

    :goto_401
    invoke-virtual {v1, v9}, Lcom/local/p5home/TurnCameraNativeBridge$4;->setResultExtras(Landroid/os/Bundle;)V

    .line 125
    return-void

    .line 124
    :catchall_405
    move-exception v0

    invoke-virtual {v1, v9}, Lcom/local/p5home/TurnCameraNativeBridge$4;->setResultExtras(Landroid/os/Bundle;)V

    throw v0
.end method

.class Lcom/local/p5home/TurnCameraControl$1;
.super Landroid/content/BroadcastReceiver;
.source "TurnCameraControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/local/p5home/TurnCameraControl;->request(Landroid/content/Context;Ljava/lang/String;)Lcom/local/p5home/TurnCameraControl$Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$done:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$result:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V
    .registers 3

    .line 19
    iput-object p1, p0, Lcom/local/p5home/TurnCameraControl$1;->val$result:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p2, p0, Lcom/local/p5home/TurnCameraControl$1;->val$done:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11

    .line 20
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/local/p5home/TurnCameraControl$1;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object p2

    const-string v0, ""

    if-nez p2, :cond_b

    move-object v1, v0

    goto :goto_11

    :cond_b
    const-string v1, "code"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_11
    invoke-virtual {p0}, Lcom/local/p5home/TurnCameraControl$1;->getResultCode()I

    move-result v2

    .line 21
    const-string v3, "unknown"

    if-nez p2, :cond_1b

    move-object v4, v3

    goto :goto_21

    :cond_1b
    const-string v4, "lampMetadata"

    invoke-virtual {p2, v4, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_21
    if-nez p2, :cond_25

    move-object v5, v0

    goto :goto_2b

    :cond_25
    const-string v5, "nativeBuild"

    invoke-virtual {p2, v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 22
    :goto_2b
    const-string v6, "available"

    const-string v7, "not_exposed"

    filled-new-array {v6, v7, v3}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3e

    goto :goto_3f

    :cond_3e
    move-object v3, v4

    .line 23
    :goto_3f
    const-string v4, "[A-Za-z0-9_.-]{0,64}"

    invoke-virtual {v5, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_48

    goto :goto_49

    :cond_48
    move-object v0, v5

    .line 24
    :goto_49
    iget-object v4, p0, Lcom/local/p5home/TurnCameraControl$1;->val$result:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v5, Lcom/local/p5home/TurnCameraControl$Result;

    const/16 v6, 0xc8

    if-eq v2, v6, :cond_55

    const/16 v6, 0xca

    if-ne v2, v6, :cond_56

    :cond_55
    const/4 p1, 0x1

    :cond_56
    invoke-static {v2, v1, p2}, Lcom/local/p5home/TurnCameraControl;->describe(ILjava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v5, p1, p2, v3, v0}, Lcom/local/p5home/TurnCameraControl$Result;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/local/p5home/TurnCameraControl$1;->val$done:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 25
    return-void
.end method

.class Lcom/local/p5home/MusicRouter$1;
.super Landroid/content/BroadcastReceiver;
.source "MusicRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/local/p5home/MusicRouter;->lunaPlay(Landroid/content/Context;Lcom/local/p5home/MusicPolicy$Song;Ljava/util/function/BooleanSupplier;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$code:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic val$done:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;)V
    .registers 3

    .line 62
    iput-object p1, p0, Lcom/local/p5home/MusicRouter$1;->val$code:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p2, p0, Lcom/local/p5home/MusicRouter$1;->val$done:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 62
    iget-object p1, p0, Lcom/local/p5home/MusicRouter$1;->val$code:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Lcom/local/p5home/MusicRouter$1;->getResultCode()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object p1, p0, Lcom/local/p5home/MusicRouter$1;->val$done:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

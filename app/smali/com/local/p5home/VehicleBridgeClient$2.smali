.class Lcom/local/p5home/VehicleBridgeClient$2;
.super Landroid/media/session/MediaController$Callback;
.source "VehicleBridgeClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/local/p5home/VehicleBridgeClient;->checkMedia()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/local/p5home/VehicleBridgeClient;

.field final synthetic val$generation:J

.field final synthetic val$source:Landroid/media/session/MediaController;


# direct methods
.method constructor <init>(Lcom/local/p5home/VehicleBridgeClient;JLandroid/media/session/MediaController;)V
    .registers 5

    .line 107
    iput-object p1, p0, Lcom/local/p5home/VehicleBridgeClient$2;->this$0:Lcom/local/p5home/VehicleBridgeClient;

    iput-wide p2, p0, Lcom/local/p5home/VehicleBridgeClient$2;->val$generation:J

    iput-object p4, p0, Lcom/local/p5home/VehicleBridgeClient$2;->val$source:Landroid/media/session/MediaController;

    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    return-void
.end method

.method static synthetic lambda$onSessionDestroyed$0(Lcom/local/p5home/VehicleBridgeClient;)V
    .registers 1

    .line 107
    # invokes: Lcom/local/p5home/VehicleBridgeClient;->reconcile()V
    invoke-static {p0}, Lcom/local/p5home/VehicleBridgeClient;->access$800(Lcom/local/p5home/VehicleBridgeClient;)V

    return-void
.end method


# virtual methods
.method public onMetadataChanged(Landroid/media/MediaMetadata;)V
    .registers 5

    .line 107
    iget-object p1, p0, Lcom/local/p5home/VehicleBridgeClient$2;->this$0:Lcom/local/p5home/VehicleBridgeClient;

    iget-wide v0, p0, Lcom/local/p5home/VehicleBridgeClient$2;->val$generation:J

    iget-object v2, p0, Lcom/local/p5home/VehicleBridgeClient$2;->val$source:Landroid/media/session/MediaController;

    # invokes: Lcom/local/p5home/VehicleBridgeClient;->queueMusic(JLandroid/media/session/MediaController;)V
    invoke-static {p1, v0, v1, v2}, Lcom/local/p5home/VehicleBridgeClient;->access$400(Lcom/local/p5home/VehicleBridgeClient;JLandroid/media/session/MediaController;)V

    return-void
.end method

.method public onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .registers 5

    .line 107
    iget-object p1, p0, Lcom/local/p5home/VehicleBridgeClient$2;->this$0:Lcom/local/p5home/VehicleBridgeClient;

    iget-wide v0, p0, Lcom/local/p5home/VehicleBridgeClient$2;->val$generation:J

    iget-object v2, p0, Lcom/local/p5home/VehicleBridgeClient$2;->val$source:Landroid/media/session/MediaController;

    # invokes: Lcom/local/p5home/VehicleBridgeClient;->queueMusic(JLandroid/media/session/MediaController;)V
    invoke-static {p1, v0, v1, v2}, Lcom/local/p5home/VehicleBridgeClient;->access$400(Lcom/local/p5home/VehicleBridgeClient;JLandroid/media/session/MediaController;)V

    return-void
.end method

.method public onSessionDestroyed()V
    .registers 6

    .line 107
    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeClient$2;->val$source:Landroid/media/session/MediaController;

    iget-object v1, p0, Lcom/local/p5home/VehicleBridgeClient$2;->this$0:Lcom/local/p5home/VehicleBridgeClient;

    # getter for: Lcom/local/p5home/VehicleBridgeClient;->controller:Landroid/media/session/MediaController;
    invoke-static {v1}, Lcom/local/p5home/VehicleBridgeClient;->access$500(Lcom/local/p5home/VehicleBridgeClient;)Landroid/media/session/MediaController;

    move-result-object v1

    if-ne v0, v1, :cond_25

    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeClient$2;->this$0:Lcom/local/p5home/VehicleBridgeClient;

    # getter for: Lcom/local/p5home/VehicleBridgeClient;->musicEpoch:Ljava/util/concurrent/atomic/AtomicLong;
    invoke-static {v0}, Lcom/local/p5home/VehicleBridgeClient;->access$600(Lcom/local/p5home/VehicleBridgeClient;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    iget-wide v1, p0, Lcom/local/p5home/VehicleBridgeClient$2;->val$generation:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeClient$2;->this$0:Lcom/local/p5home/VehicleBridgeClient;

    new-instance v1, Lcom/local/p5home/VehicleBridgeClient$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/local/p5home/VehicleBridgeClient$2$$ExternalSyntheticLambda0;-><init>(Lcom/local/p5home/VehicleBridgeClient;)V

    # invokes: Lcom/local/p5home/VehicleBridgeClient;->work(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lcom/local/p5home/VehicleBridgeClient;->access$700(Lcom/local/p5home/VehicleBridgeClient;Ljava/lang/Runnable;)V

    :cond_25
    return-void
.end method

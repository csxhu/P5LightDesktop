.class Lcom/local/p5home/VehicleBridgeClient$1;
.super Landroid/content/BroadcastReceiver;
.source "VehicleBridgeClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/local/p5home/VehicleBridgeClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/local/p5home/VehicleBridgeClient;


# direct methods
.method constructor <init>(Lcom/local/p5home/VehicleBridgeClient;)V
    .registers 2

    .line 33
    iput-object p1, p0, Lcom/local/p5home/VehicleBridgeClient$1;->this$0:Lcom/local/p5home/VehicleBridgeClient;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    .line 34
    iget-object p1, p0, Lcom/local/p5home/VehicleBridgeClient$1;->this$0:Lcom/local/p5home/VehicleBridgeClient;

    # getter for: Lcom/local/p5home/VehicleBridgeClient;->app:Landroid/content/Context;
    invoke-static {p1}, Lcom/local/p5home/VehicleBridgeClient;->access$000(Lcom/local/p5home/VehicleBridgeClient;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/local/p5home/VehicleBridgeClient;->navEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_43

    if-eqz p2, :cond_43

    const-string p1, "AUTONAVI_STANDARD_BROADCAST_SEND"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1b

    goto :goto_43

    .line 35
    :cond_1b
    iget-object p1, p0, Lcom/local/p5home/VehicleBridgeClient$1;->this$0:Lcom/local/p5home/VehicleBridgeClient;

    # getter for: Lcom/local/p5home/VehicleBridgeClient;->incoming:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {p1}, Lcom/local/p5home/VehicleBridgeClient;->access$200(Lcom/local/p5home/VehicleBridgeClient;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p1

    new-instance v6, Lcom/local/p5home/VehicleBridgeClient$Inbound;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object p2, p0, Lcom/local/p5home/VehicleBridgeClient$1;->this$0:Lcom/local/p5home/VehicleBridgeClient;

    # getter for: Lcom/local/p5home/VehicleBridgeClient;->navEpoch:Ljava/util/concurrent/atomic/AtomicLong;
    invoke-static {p2}, Lcom/local/p5home/VehicleBridgeClient;->access$100(Lcom/local/p5home/VehicleBridgeClient;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/local/p5home/VehicleBridgeClient$Inbound;-><init>(Landroid/content/Intent;JJ)V

    invoke-virtual {p1, v6}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/local/p5home/VehicleBridgeClient$1;->this$0:Lcom/local/p5home/VehicleBridgeClient;

    # invokes: Lcom/local/p5home/VehicleBridgeClient;->queueInbound()V
    invoke-static {p1}, Lcom/local/p5home/VehicleBridgeClient;->access$300(Lcom/local/p5home/VehicleBridgeClient;)V

    .line 36
    return-void

    .line 34
    :cond_43
    :goto_43
    return-void
.end method

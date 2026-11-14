.class Lcom/local/p5home/VehicleBridgeActivity$1;
.super Ljava/lang/Object;
.source "VehicleBridgeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/local/p5home/VehicleBridgeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/local/p5home/VehicleBridgeActivity;


# direct methods
.method constructor <init>(Lcom/local/p5home/VehicleBridgeActivity;)V
    .registers 2

    .line 36
    iput-object p1, p0, Lcom/local/p5home/VehicleBridgeActivity$1;->this$0:Lcom/local/p5home/VehicleBridgeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 36
    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeActivity$1;->this$0:Lcom/local/p5home/VehicleBridgeActivity;

    # getter for: Lcom/local/p5home/VehicleBridgeActivity;->dead:Z
    invoke-static {v0}, Lcom/local/p5home/VehicleBridgeActivity;->access$000(Lcom/local/p5home/VehicleBridgeActivity;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeActivity$1;->this$0:Lcom/local/p5home/VehicleBridgeActivity;

    # getter for: Lcom/local/p5home/VehicleBridgeActivity;->resumed:Z
    invoke-static {v0}, Lcom/local/p5home/VehicleBridgeActivity;->access$100(Lcom/local/p5home/VehicleBridgeActivity;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeActivity$1;->this$0:Lcom/local/p5home/VehicleBridgeActivity;

    # invokes: Lcom/local/p5home/VehicleBridgeActivity;->refresh()V
    invoke-static {v0}, Lcom/local/p5home/VehicleBridgeActivity;->access$200(Lcom/local/p5home/VehicleBridgeActivity;)V

    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeActivity$1;->this$0:Lcom/local/p5home/VehicleBridgeActivity;

    # getter for: Lcom/local/p5home/VehicleBridgeActivity;->main:Landroid/os/Handler;
    invoke-static {v0}, Lcom/local/p5home/VehicleBridgeActivity;->access$300(Lcom/local/p5home/VehicleBridgeActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_20
    return-void
.end method

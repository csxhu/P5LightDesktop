.class public final synthetic Lcom/local/p5home/VehicleBridgeClient$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/local/p5home/VehicleBridgeClient;

.field public final synthetic f$1:J

.field public final synthetic f$2:Landroid/media/session/MediaController;


# direct methods
.method public synthetic constructor <init>(Lcom/local/p5home/VehicleBridgeClient;JLandroid/media/session/MediaController;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/VehicleBridgeClient$$ExternalSyntheticLambda0;->f$0:Lcom/local/p5home/VehicleBridgeClient;

    iput-wide p2, p0, Lcom/local/p5home/VehicleBridgeClient$$ExternalSyntheticLambda0;->f$1:J

    iput-object p4, p0, Lcom/local/p5home/VehicleBridgeClient$$ExternalSyntheticLambda0;->f$2:Landroid/media/session/MediaController;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeClient$$ExternalSyntheticLambda0;->f$0:Lcom/local/p5home/VehicleBridgeClient;

    iget-wide v1, p0, Lcom/local/p5home/VehicleBridgeClient$$ExternalSyntheticLambda0;->f$1:J

    iget-object v3, p0, Lcom/local/p5home/VehicleBridgeClient$$ExternalSyntheticLambda0;->f$2:Landroid/media/session/MediaController;

    invoke-virtual {v0, v1, v2, v3}, Lcom/local/p5home/VehicleBridgeClient;->lambda$queueMusic$6$com-local-g3home-VehicleBridgeClient(JLandroid/media/session/MediaController;)V

    return-void
.end method

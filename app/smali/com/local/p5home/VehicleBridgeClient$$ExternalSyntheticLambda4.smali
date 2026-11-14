.class public final synthetic Lcom/local/p5home/VehicleBridgeClient$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/local/p5home/VehicleBridgeClient;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/local/p5home/VehicleBridgeClient;Ljava/lang/Runnable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/VehicleBridgeClient$$ExternalSyntheticLambda4;->f$0:Lcom/local/p5home/VehicleBridgeClient;

    iput-object p2, p0, Lcom/local/p5home/VehicleBridgeClient$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeClient$$ExternalSyntheticLambda4;->f$0:Lcom/local/p5home/VehicleBridgeClient;

    iget-object v1, p0, Lcom/local/p5home/VehicleBridgeClient$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/local/p5home/VehicleBridgeClient;->lambda$work$1$com-local-g3home-VehicleBridgeClient(Ljava/lang/Runnable;)V

    return-void
.end method

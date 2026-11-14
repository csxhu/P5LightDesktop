.class public final synthetic Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/local/p5home/VehicleBridgeActivity;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/local/g3bridge/sdk/G3Bridge$Response;


# direct methods
.method public synthetic constructor <init>(Lcom/local/p5home/VehicleBridgeActivity;Ljava/lang/String;Lcom/local/g3bridge/sdk/G3Bridge$Response;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda12;->f$0:Lcom/local/p5home/VehicleBridgeActivity;

    iput-object p2, p0, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda12;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda12;->f$2:Lcom/local/g3bridge/sdk/G3Bridge$Response;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda12;->f$0:Lcom/local/p5home/VehicleBridgeActivity;

    iget-object v1, p0, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda12;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda12;->f$2:Lcom/local/g3bridge/sdk/G3Bridge$Response;

    invoke-virtual {v0, v1, v2}, Lcom/local/p5home/VehicleBridgeActivity;->lambda$submit$29$com-local-g3home-VehicleBridgeActivity(Ljava/lang/String;Lcom/local/g3bridge/sdk/G3Bridge$Response;)V

    return-void
.end method

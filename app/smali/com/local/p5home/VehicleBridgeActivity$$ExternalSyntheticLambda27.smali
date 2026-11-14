.class public final synthetic Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda27;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/local/p5home/VehicleBridgeActivity;

.field public final synthetic f$1:J

.field public final synthetic f$2:Lcom/local/g3bridge/sdk/G3Bridge$Response;

.field public final synthetic f$3:J

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/local/p5home/VehicleBridgeActivity;JLcom/local/g3bridge/sdk/G3Bridge$Response;JLjava/lang/String;Landroid/os/Bundle;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda27;->f$0:Lcom/local/p5home/VehicleBridgeActivity;

    iput-wide p2, p0, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda27;->f$1:J

    iput-object p4, p0, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda27;->f$2:Lcom/local/g3bridge/sdk/G3Bridge$Response;

    iput-wide p5, p0, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda27;->f$3:J

    iput-object p7, p0, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda27;->f$4:Ljava/lang/String;

    iput-object p8, p0, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda27;->f$5:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda27;->f$0:Lcom/local/p5home/VehicleBridgeActivity;

    iget-wide v1, p0, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda27;->f$1:J

    iget-object v3, p0, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda27;->f$2:Lcom/local/g3bridge/sdk/G3Bridge$Response;

    iget-wide v4, p0, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda27;->f$3:J

    iget-object v6, p0, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda27;->f$4:Ljava/lang/String;

    iget-object v7, p0, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda27;->f$5:Landroid/os/Bundle;

    invoke-virtual/range {v0 .. v7}, Lcom/local/p5home/VehicleBridgeActivity;->lambda$queryProperty$22$com-local-g3home-VehicleBridgeActivity(JLcom/local/g3bridge/sdk/G3Bridge$Response;JLjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

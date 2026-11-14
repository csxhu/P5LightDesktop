.class public final synthetic Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda28;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/local/p5home/VehicleBridgeActivity;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:J

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Lcom/local/p5home/VehicleBridgeActivity;Ljava/lang/String;JJ)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda28;->f$0:Lcom/local/p5home/VehicleBridgeActivity;

    iput-object p2, p0, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda28;->f$1:Ljava/lang/String;

    iput-wide p3, p0, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda28;->f$2:J

    iput-wide p5, p0, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda28;->f$3:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda28;->f$0:Lcom/local/p5home/VehicleBridgeActivity;

    iget-object v1, p0, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda28;->f$1:Ljava/lang/String;

    iget-wide v2, p0, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda28;->f$2:J

    iget-wide v4, p0, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda28;->f$3:J

    invoke-virtual/range {v0 .. v5}, Lcom/local/p5home/VehicleBridgeActivity;->lambda$queryProperty$23$com-local-g3home-VehicleBridgeActivity(Ljava/lang/String;JJ)V

    return-void
.end method

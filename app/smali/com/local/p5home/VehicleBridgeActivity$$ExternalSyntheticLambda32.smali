.class public final synthetic Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda32;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/local/p5home/VehicleBridgeActivity;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/local/p5home/VehicleBridgeActivity;Ljava/lang/Runnable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda32;->f$0:Lcom/local/p5home/VehicleBridgeActivity;

    iput-object p2, p0, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda32;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda32;->f$0:Lcom/local/p5home/VehicleBridgeActivity;

    iget-object v1, p0, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda32;->f$1:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/local/p5home/VehicleBridgeActivity;->lambda$work$13$com-local-g3home-VehicleBridgeActivity(Ljava/lang/Runnable;)V

    return-void
.end method

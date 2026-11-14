.class public final synthetic Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/local/p5home/VehicleBridgeActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/local/p5home/VehicleBridgeActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda14;->f$0:Lcom/local/p5home/VehicleBridgeActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda14;->f$0:Lcom/local/p5home/VehicleBridgeActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

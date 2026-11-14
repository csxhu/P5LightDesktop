.class public final synthetic Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/local/p5home/VehicleBridgeActivity;

.field public final synthetic f$1:Lcom/local/p5home/VehicleBridgeActivity$Change;


# direct methods
.method public synthetic constructor <init>(Lcom/local/p5home/VehicleBridgeActivity;Lcom/local/p5home/VehicleBridgeActivity$Change;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda11;->f$0:Lcom/local/p5home/VehicleBridgeActivity;

    iput-object p2, p0, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda11;->f$1:Lcom/local/p5home/VehicleBridgeActivity$Change;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5

    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda11;->f$0:Lcom/local/p5home/VehicleBridgeActivity;

    iget-object v1, p0, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda11;->f$1:Lcom/local/p5home/VehicleBridgeActivity$Change;

    invoke-virtual {v0, v1, p1, p2}, Lcom/local/p5home/VehicleBridgeActivity;->lambda$toggle$9$com-local-g3home-VehicleBridgeActivity(Lcom/local/p5home/VehicleBridgeActivity$Change;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

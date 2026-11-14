.class public final synthetic Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda36;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:Lcom/local/p5home/VehicleBridgeActivity;

.field public final synthetic f$1:Lcom/local/p5home/Ui$PanelDialog;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/local/p5home/VehicleBridgeActivity;Lcom/local/p5home/Ui$PanelDialog;J)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda36;->f$0:Lcom/local/p5home/VehicleBridgeActivity;

    iput-object p2, p0, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda36;->f$1:Lcom/local/p5home/Ui$PanelDialog;

    iput-wide p3, p0, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda36;->f$2:J

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .registers 6

    iget-object v0, p0, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda36;->f$0:Lcom/local/p5home/VehicleBridgeActivity;

    iget-object v1, p0, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda36;->f$1:Lcom/local/p5home/Ui$PanelDialog;

    iget-wide v2, p0, Lcom/local/p5home/VehicleBridgeActivity$$ExternalSyntheticLambda36;->f$2:J

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/local/p5home/VehicleBridgeActivity;->lambda$readProperty$20$com-local-g3home-VehicleBridgeActivity(Lcom/local/p5home/Ui$PanelDialog;JLandroid/content/DialogInterface;)V

    return-void
.end method

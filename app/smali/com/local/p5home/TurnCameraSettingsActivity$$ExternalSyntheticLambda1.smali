.class public final synthetic Lcom/local/p5home/TurnCameraSettingsActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/local/p5home/TurnCameraSettingsActivity;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/local/p5home/TurnCameraSettingsActivity;ZZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/TurnCameraSettingsActivity$$ExternalSyntheticLambda1;->f$0:Lcom/local/p5home/TurnCameraSettingsActivity;

    iput-boolean p2, p0, Lcom/local/p5home/TurnCameraSettingsActivity$$ExternalSyntheticLambda1;->f$1:Z

    iput-boolean p3, p0, Lcom/local/p5home/TurnCameraSettingsActivity$$ExternalSyntheticLambda1;->f$2:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    iget-object v0, p0, Lcom/local/p5home/TurnCameraSettingsActivity$$ExternalSyntheticLambda1;->f$0:Lcom/local/p5home/TurnCameraSettingsActivity;

    iget-boolean v1, p0, Lcom/local/p5home/TurnCameraSettingsActivity$$ExternalSyntheticLambda1;->f$1:Z

    iget-boolean v2, p0, Lcom/local/p5home/TurnCameraSettingsActivity$$ExternalSyntheticLambda1;->f$2:Z

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/local/p5home/TurnCameraSettingsActivity;->lambda$confirm$8$com-local-g3home-TurnCameraSettingsActivity(ZZLandroid/content/DialogInterface;I)V

    return-void
.end method

.class public final synthetic Lcom/local/p5home/TurnCameraSettingsActivity$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/local/p5home/TurnCameraSettingsActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/local/p5home/TurnCameraSettingsActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/TurnCameraSettingsActivity$$ExternalSyntheticLambda6;->f$0:Lcom/local/p5home/TurnCameraSettingsActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/local/p5home/TurnCameraSettingsActivity$$ExternalSyntheticLambda6;->f$0:Lcom/local/p5home/TurnCameraSettingsActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

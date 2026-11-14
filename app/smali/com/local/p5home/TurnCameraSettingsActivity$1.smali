.class Lcom/local/p5home/TurnCameraSettingsActivity$1;
.super Ljava/lang/Object;
.source "TurnCameraSettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/local/p5home/TurnCameraSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/local/p5home/TurnCameraSettingsActivity;


# direct methods
.method constructor <init>(Lcom/local/p5home/TurnCameraSettingsActivity;)V
    .registers 2

    .line 37
    iput-object p1, p0, Lcom/local/p5home/TurnCameraSettingsActivity$1;->this$0:Lcom/local/p5home/TurnCameraSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 38
    iget-object v0, p0, Lcom/local/p5home/TurnCameraSettingsActivity$1;->this$0:Lcom/local/p5home/TurnCameraSettingsActivity;

    # getter for: Lcom/local/p5home/TurnCameraSettingsActivity;->dead:Z
    invoke-static {v0}, Lcom/local/p5home/TurnCameraSettingsActivity;->access$000(Lcom/local/p5home/TurnCameraSettingsActivity;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/local/p5home/TurnCameraSettingsActivity$1;->this$0:Lcom/local/p5home/TurnCameraSettingsActivity;

    # getter for: Lcom/local/p5home/TurnCameraSettingsActivity;->resumed:Z
    invoke-static {v0}, Lcom/local/p5home/TurnCameraSettingsActivity;->access$100(Lcom/local/p5home/TurnCameraSettingsActivity;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/local/p5home/TurnCameraSettingsActivity$1;->this$0:Lcom/local/p5home/TurnCameraSettingsActivity;

    # invokes: Lcom/local/p5home/TurnCameraSettingsActivity;->refresh()V
    invoke-static {v0}, Lcom/local/p5home/TurnCameraSettingsActivity;->access$200(Lcom/local/p5home/TurnCameraSettingsActivity;)V

    iget-object v0, p0, Lcom/local/p5home/TurnCameraSettingsActivity$1;->this$0:Lcom/local/p5home/TurnCameraSettingsActivity;

    # getter for: Lcom/local/p5home/TurnCameraSettingsActivity;->main:Landroid/os/Handler;
    invoke-static {v0}, Lcom/local/p5home/TurnCameraSettingsActivity;->access$300(Lcom/local/p5home/TurnCameraSettingsActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_20
    return-void
.end method

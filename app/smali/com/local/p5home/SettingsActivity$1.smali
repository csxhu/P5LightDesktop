.class Lcom/local/p5home/SettingsActivity$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/local/p5home/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/local/p5home/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/local/p5home/SettingsActivity;)V
    .registers 2

    .line 7
    iput-object p1, p0, Lcom/local/p5home/SettingsActivity$1;->this$0:Lcom/local/p5home/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 7
    iget-object v0, p0, Lcom/local/p5home/SettingsActivity$1;->this$0:Lcom/local/p5home/SettingsActivity;

    # getter for: Lcom/local/p5home/SettingsActivity;->dead:Z
    invoke-static {v0}, Lcom/local/p5home/SettingsActivity;->access$000(Lcom/local/p5home/SettingsActivity;)Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/local/p5home/SettingsActivity$1;->this$0:Lcom/local/p5home/SettingsActivity;

    # getter for: Lcom/local/p5home/SettingsActivity;->resumed:Z
    invoke-static {v0}, Lcom/local/p5home/SettingsActivity;->access$100(Lcom/local/p5home/SettingsActivity;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_21

    :cond_11
    iget-object v0, p0, Lcom/local/p5home/SettingsActivity$1;->this$0:Lcom/local/p5home/SettingsActivity;

    # invokes: Lcom/local/p5home/SettingsActivity;->updateStatus()V
    invoke-static {v0}, Lcom/local/p5home/SettingsActivity;->access$200(Lcom/local/p5home/SettingsActivity;)V

    iget-object v0, p0, Lcom/local/p5home/SettingsActivity$1;->this$0:Lcom/local/p5home/SettingsActivity;

    # getter for: Lcom/local/p5home/SettingsActivity;->main:Landroid/os/Handler;
    invoke-static {v0}, Lcom/local/p5home/SettingsActivity;->access$300(Lcom/local/p5home/SettingsActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_21
    :goto_21
    return-void
.end method

.class Lcom/local/p5home/TopBarSettingsActivity$1;
.super Ljava/lang/Object;
.source "TopBarSettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/local/p5home/TopBarSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/local/p5home/TopBarSettingsActivity;


# direct methods
.method constructor <init>(Lcom/local/p5home/TopBarSettingsActivity;)V
    .registers 2

    .line 50
    iput-object p1, p0, Lcom/local/p5home/TopBarSettingsActivity$1;->this$0:Lcom/local/p5home/TopBarSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 50
    iget-object v0, p0, Lcom/local/p5home/TopBarSettingsActivity$1;->this$0:Lcom/local/p5home/TopBarSettingsActivity;

    # getter for: Lcom/local/p5home/TopBarSettingsActivity;->resumed:Z
    invoke-static {v0}, Lcom/local/p5home/TopBarSettingsActivity;->access$000(Lcom/local/p5home/TopBarSettingsActivity;)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/local/p5home/TopBarSettingsActivity$1;->this$0:Lcom/local/p5home/TopBarSettingsActivity;

    # getter for: Lcom/local/p5home/TopBarSettingsActivity;->dead:Z
    invoke-static {v0}, Lcom/local/p5home/TopBarSettingsActivity;->access$100(Lcom/local/p5home/TopBarSettingsActivity;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_31

    :cond_11
    iget-object v0, p0, Lcom/local/p5home/TopBarSettingsActivity$1;->this$0:Lcom/local/p5home/TopBarSettingsActivity;

    # getter for: Lcom/local/p5home/TopBarSettingsActivity;->mode:I
    invoke-static {v0}, Lcom/local/p5home/TopBarSettingsActivity;->access$200(Lcom/local/p5home/TopBarSettingsActivity;)I

    move-result v0

    if-gez v0, :cond_26

    iget-object v0, p0, Lcom/local/p5home/TopBarSettingsActivity$1;->this$0:Lcom/local/p5home/TopBarSettingsActivity;

    # getter for: Lcom/local/p5home/TopBarSettingsActivity;->busy:Z
    invoke-static {v0}, Lcom/local/p5home/TopBarSettingsActivity;->access$300(Lcom/local/p5home/TopBarSettingsActivity;)Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/local/p5home/TopBarSettingsActivity$1;->this$0:Lcom/local/p5home/TopBarSettingsActivity;

    # invokes: Lcom/local/p5home/TopBarSettingsActivity;->refreshState()V
    invoke-static {v0}, Lcom/local/p5home/TopBarSettingsActivity;->access$400(Lcom/local/p5home/TopBarSettingsActivity;)V

    :cond_26
    iget-object v0, p0, Lcom/local/p5home/TopBarSettingsActivity$1;->this$0:Lcom/local/p5home/TopBarSettingsActivity;

    # getter for: Lcom/local/p5home/TopBarSettingsActivity;->main:Landroid/os/Handler;
    invoke-static {v0}, Lcom/local/p5home/TopBarSettingsActivity;->access$500(Lcom/local/p5home/TopBarSettingsActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_31
    :goto_31
    return-void
.end method

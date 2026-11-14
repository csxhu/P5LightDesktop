.class Lcom/local/p5home/TopBarManager$2;
.super Ljava/lang/Object;
.source "TopBarManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/local/p5home/TopBarManager;->attachMain(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/local/p5home/TopBarManager;


# direct methods
.method constructor <init>(Lcom/local/p5home/TopBarManager;)V
    .registers 2

    .line 73
    iput-object p1, p0, Lcom/local/p5home/TopBarManager$2;->this$0:Lcom/local/p5home/TopBarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 73
    iget-object v0, p0, Lcom/local/p5home/TopBarManager$2;->this$0:Lcom/local/p5home/TopBarManager;

    const/4 v1, 0x0

    # invokes: Lcom/local/p5home/TopBarManager;->refresh(Z)V
    invoke-static {v0, v1}, Lcom/local/p5home/TopBarManager;->access$000(Lcom/local/p5home/TopBarManager;Z)V

    iget-object v0, p0, Lcom/local/p5home/TopBarManager$2;->this$0:Lcom/local/p5home/TopBarManager;

    # getter for: Lcom/local/p5home/TopBarManager;->main:Landroid/os/Handler;
    invoke-static {v0}, Lcom/local/p5home/TopBarManager;->access$400(Lcom/local/p5home/TopBarManager;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

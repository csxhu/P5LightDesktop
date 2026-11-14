.class Lcom/local/p5home/TopBarManager$1;
.super Landroid/database/ContentObserver;
.source "TopBarManager.java"


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
.method constructor <init>(Lcom/local/p5home/TopBarManager;Landroid/os/Handler;)V
    .registers 3

    .line 72
    iput-object p1, p0, Lcom/local/p5home/TopBarManager$1;->this$0:Lcom/local/p5home/TopBarManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3

    .line 72
    iget-object p1, p0, Lcom/local/p5home/TopBarManager$1;->this$0:Lcom/local/p5home/TopBarManager;

    const/4 v0, 0x1

    # invokes: Lcom/local/p5home/TopBarManager;->refresh(Z)V
    invoke-static {p1, v0}, Lcom/local/p5home/TopBarManager;->access$000(Lcom/local/p5home/TopBarManager;Z)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 3

    .line 72
    iget-object p1, p0, Lcom/local/p5home/TopBarManager$1;->this$0:Lcom/local/p5home/TopBarManager;

    const/4 p2, 0x1

    # invokes: Lcom/local/p5home/TopBarManager;->refresh(Z)V
    invoke-static {p1, p2}, Lcom/local/p5home/TopBarManager;->access$000(Lcom/local/p5home/TopBarManager;Z)V

    return-void
.end method

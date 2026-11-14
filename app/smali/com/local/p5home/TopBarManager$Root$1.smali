.class Lcom/local/p5home/TopBarManager$Root$1;
.super Ljava/lang/Object;
.source "TopBarManager.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/local/p5home/TopBarManager$Root;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/local/p5home/TopBarManager$Root;


# direct methods
.method constructor <init>(Lcom/local/p5home/TopBarManager$Root;)V
    .registers 2

    .line 37
    iput-object p1, p0, Lcom/local/p5home/TopBarManager$Root$1;->this$1:Lcom/local/p5home/TopBarManager$Root;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 3

    .line 37
    iget-object p1, p0, Lcom/local/p5home/TopBarManager$Root$1;->this$1:Lcom/local/p5home/TopBarManager$Root;

    invoke-virtual {p1}, Lcom/local/p5home/TopBarManager$Root;->observeDraw()V

    iget-object p1, p0, Lcom/local/p5home/TopBarManager$Root$1;->this$1:Lcom/local/p5home/TopBarManager$Root;

    iget-object p1, p1, Lcom/local/p5home/TopBarManager$Root;->this$0:Lcom/local/p5home/TopBarManager;

    const/4 v0, 0x0

    # invokes: Lcom/local/p5home/TopBarManager;->refresh(Z)V
    invoke-static {p1, v0}, Lcom/local/p5home/TopBarManager;->access$000(Lcom/local/p5home/TopBarManager;Z)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 3

    .line 37
    iget-object p1, p0, Lcom/local/p5home/TopBarManager$Root$1;->this$1:Lcom/local/p5home/TopBarManager$Root;

    invoke-virtual {p1}, Lcom/local/p5home/TopBarManager$Root;->stopDraw()V

    iget-object p1, p0, Lcom/local/p5home/TopBarManager$Root$1;->this$1:Lcom/local/p5home/TopBarManager$Root;

    iget-object p1, p1, Lcom/local/p5home/TopBarManager$Root;->bindings:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/local/p5home/TopBarBinding;

    invoke-virtual {v0}, Lcom/local/p5home/TopBarBinding;->restore()V

    goto :goto_d

    :cond_1d
    iget-object p1, p0, Lcom/local/p5home/TopBarManager$Root$1;->this$1:Lcom/local/p5home/TopBarManager$Root;

    iget-object p1, p1, Lcom/local/p5home/TopBarManager$Root;->this$0:Lcom/local/p5home/TopBarManager;

    # invokes: Lcom/local/p5home/TopBarManager;->report()V
    invoke-static {p1}, Lcom/local/p5home/TopBarManager;->access$100(Lcom/local/p5home/TopBarManager;)V

    return-void
.end method

.class final Lcom/local/p5home/TopBarManager$Root;
.super Ljava/lang/Object;
.source "TopBarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/local/p5home/TopBarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Root"
.end annotation


# instance fields
.field final attachment:Landroid/view/View$OnAttachStateChangeListener;

.field final bindings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/local/p5home/TopBarBinding;",
            ">;"
        }
    .end annotation
.end field

.field drawTree:Landroid/view/ViewTreeObserver;

.field final drawing:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field final layout:Landroid/view/View$OnLayoutChangeListener;

.field final owner:Ljava/lang/Object;

.field requestedBounds:J

.field requestedRevision:J

.field final synthetic this$0:Lcom/local/p5home/TopBarManager;

.field final view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/local/p5home/TopBarManager;Ljava/lang/Object;Landroid/view/View;)V
    .registers 6

    .line 38
    iput-object p1, p0, Lcom/local/p5home/TopBarManager$Root;->this$0:Lcom/local/p5home/TopBarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/TopBarManager$Root;->bindings:Ljava/util/List;

    .line 34
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/local/p5home/TopBarManager$Root;->requestedRevision:J

    .line 35
    new-instance p1, Lcom/local/p5home/TopBarManager$Root$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/local/p5home/TopBarManager$Root$$ExternalSyntheticLambda0;-><init>(Lcom/local/p5home/TopBarManager$Root;)V

    iput-object p1, p0, Lcom/local/p5home/TopBarManager$Root;->drawing:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 36
    new-instance p1, Lcom/local/p5home/TopBarManager$Root$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/local/p5home/TopBarManager$Root$$ExternalSyntheticLambda1;-><init>(Lcom/local/p5home/TopBarManager$Root;)V

    iput-object p1, p0, Lcom/local/p5home/TopBarManager$Root;->layout:Landroid/view/View$OnLayoutChangeListener;

    .line 37
    new-instance p1, Lcom/local/p5home/TopBarManager$Root$1;

    invoke-direct {p1, p0}, Lcom/local/p5home/TopBarManager$Root$1;-><init>(Lcom/local/p5home/TopBarManager$Root;)V

    iput-object p1, p0, Lcom/local/p5home/TopBarManager$Root;->attachment:Landroid/view/View$OnAttachStateChangeListener;

    .line 38
    iput-object p2, p0, Lcom/local/p5home/TopBarManager$Root;->owner:Ljava/lang/Object;

    iput-object p3, p0, Lcom/local/p5home/TopBarManager$Root;->view:Landroid/view/View;

    return-void
.end method


# virtual methods
.method dispose()V
    .registers 3

    .line 46
    invoke-virtual {p0}, Lcom/local/p5home/TopBarManager$Root;->stopDraw()V

    iget-object v0, p0, Lcom/local/p5home/TopBarManager$Root;->bindings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/local/p5home/TopBarBinding;

    invoke-virtual {v1}, Lcom/local/p5home/TopBarBinding;->restore()V

    goto :goto_9

    :cond_19
    iget-object v0, p0, Lcom/local/p5home/TopBarManager$Root;->view:Landroid/view/View;

    iget-object v1, p0, Lcom/local/p5home/TopBarManager$Root;->layout:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lcom/local/p5home/TopBarManager$Root;->view:Landroid/view/View;

    iget-object v1, p0, Lcom/local/p5home/TopBarManager$Root;->attachment:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method synthetic lambda$new$0$com-local-g3home-TopBarManager$Root()Z
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/local/p5home/TopBarManager$Root;->this$0:Lcom/local/p5home/TopBarManager;

    # invokes: Lcom/local/p5home/TopBarManager;->repairBeforeDraw(Lcom/local/p5home/TopBarManager$Root;)V
    invoke-static {v0, p0}, Lcom/local/p5home/TopBarManager;->access$300(Lcom/local/p5home/TopBarManager;Lcom/local/p5home/TopBarManager$Root;)V

    const/4 v0, 0x1

    return v0
.end method

.method synthetic lambda$new$1$com-local-g3home-TopBarManager$Root(Landroid/view/View;IIIIIIII)V
    .registers 10

    .line 36
    sub-int/2addr p4, p2

    sub-int/2addr p8, p6

    if-ne p4, p8, :cond_10

    sub-int/2addr p5, p3

    sub-int/2addr p9, p7

    if-ne p5, p9, :cond_10

    iget-object p1, p0, Lcom/local/p5home/TopBarManager$Root;->this$0:Lcom/local/p5home/TopBarManager;

    # invokes: Lcom/local/p5home/TopBarManager;->needsBounds(Lcom/local/p5home/TopBarManager$Root;)Z
    invoke-static {p1, p0}, Lcom/local/p5home/TopBarManager;->access$200(Lcom/local/p5home/TopBarManager;Lcom/local/p5home/TopBarManager$Root;)Z

    move-result p1

    if-eqz p1, :cond_16

    :cond_10
    iget-object p1, p0, Lcom/local/p5home/TopBarManager$Root;->this$0:Lcom/local/p5home/TopBarManager;

    const/4 p2, 0x0

    # invokes: Lcom/local/p5home/TopBarManager;->refresh(Z)V
    invoke-static {p1, p2}, Lcom/local/p5home/TopBarManager;->access$000(Lcom/local/p5home/TopBarManager;Z)V

    :cond_16
    return-void
.end method

.method observeDraw()V
    .registers 3

    .line 39
    iget-object v0, p0, Lcom/local/p5home/TopBarManager$Root;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/local/p5home/TopBarManager$Root;->drawTree:Landroid/view/ViewTreeObserver;

    if-ne v0, v1, :cond_11

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_11

    return-void

    :cond_11
    invoke-virtual {p0}, Lcom/local/p5home/TopBarManager$Root;->stopDraw()V

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 43
    iget-object v1, p0, Lcom/local/p5home/TopBarManager$Root;->drawing:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v1, p0, Lcom/local/p5home/TopBarManager$Root;->drawing:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iput-object v0, p0, Lcom/local/p5home/TopBarManager$Root;->drawTree:Landroid/view/ViewTreeObserver;

    .line 44
    :cond_26
    return-void
.end method

.method stopDraw()V
    .registers 3

    .line 45
    iget-object v0, p0, Lcom/local/p5home/TopBarManager$Root;->drawTree:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/local/p5home/TopBarManager$Root;->drawTree:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lcom/local/p5home/TopBarManager$Root;->drawing:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/local/p5home/TopBarManager$Root;->drawTree:Landroid/view/ViewTreeObserver;

    return-void
.end method

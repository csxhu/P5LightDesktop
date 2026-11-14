.class Lcom/local/p5home/HotspotController$1;
.super Ljava/lang/Object;
.source "HotspotController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/local/p5home/HotspotController;->setEnabled(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 103
    iput-object p1, p0, Lcom/local/p5home/HotspotController$1;->val$context:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/local/p5home/HotspotController$1;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 106
    iget-object v0, p0, Lcom/local/p5home/HotspotController$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/local/p5home/HotspotController$1;->val$enabled:Z

    # invokes: Lcom/local/p5home/HotspotController;->applyEnabled(Landroid/content/Context;Z)V
    invoke-static {v0, v1}, Lcom/local/p5home/HotspotController;->access$000(Landroid/content/Context;Z)V

    .line 107
    return-void
.end method

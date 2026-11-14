.class public final synthetic Lcom/local/p5home/TopBarManager$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/local/p5home/TopBarManager;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/local/p5home/TopBarManager;Landroid/content/Context;J)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/TopBarManager$$ExternalSyntheticLambda10;->f$0:Lcom/local/p5home/TopBarManager;

    iput-object p2, p0, Lcom/local/p5home/TopBarManager$$ExternalSyntheticLambda10;->f$1:Landroid/content/Context;

    iput-wide p3, p0, Lcom/local/p5home/TopBarManager$$ExternalSyntheticLambda10;->f$2:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/local/p5home/TopBarManager$$ExternalSyntheticLambda10;->f$0:Lcom/local/p5home/TopBarManager;

    iget-object v1, p0, Lcom/local/p5home/TopBarManager$$ExternalSyntheticLambda10;->f$1:Landroid/content/Context;

    iget-wide v2, p0, Lcom/local/p5home/TopBarManager$$ExternalSyntheticLambda10;->f$2:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/local/p5home/TopBarManager;->lambda$refresh$4$com-local-g3home-TopBarManager(Landroid/content/Context;J)V

    return-void
.end method

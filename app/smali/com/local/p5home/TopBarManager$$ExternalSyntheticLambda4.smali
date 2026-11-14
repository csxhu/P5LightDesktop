.class public final synthetic Lcom/local/p5home/TopBarManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/local/p5home/TopBarManager;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Lcom/local/p5home/TopBarStore$Snapshot;

.field public final synthetic f$3:Landroid/content/Context;

.field public final synthetic f$4:Ljava/util/List;

.field public final synthetic f$5:J


# direct methods
.method public synthetic constructor <init>(Lcom/local/p5home/TopBarManager;Ljava/util/List;Lcom/local/p5home/TopBarStore$Snapshot;Landroid/content/Context;Ljava/util/List;J)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/TopBarManager$$ExternalSyntheticLambda4;->f$0:Lcom/local/p5home/TopBarManager;

    iput-object p2, p0, Lcom/local/p5home/TopBarManager$$ExternalSyntheticLambda4;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/local/p5home/TopBarManager$$ExternalSyntheticLambda4;->f$2:Lcom/local/p5home/TopBarStore$Snapshot;

    iput-object p4, p0, Lcom/local/p5home/TopBarManager$$ExternalSyntheticLambda4;->f$3:Landroid/content/Context;

    iput-object p5, p0, Lcom/local/p5home/TopBarManager$$ExternalSyntheticLambda4;->f$4:Ljava/util/List;

    iput-wide p6, p0, Lcom/local/p5home/TopBarManager$$ExternalSyntheticLambda4;->f$5:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    iget-object v0, p0, Lcom/local/p5home/TopBarManager$$ExternalSyntheticLambda4;->f$0:Lcom/local/p5home/TopBarManager;

    iget-object v1, p0, Lcom/local/p5home/TopBarManager$$ExternalSyntheticLambda4;->f$1:Ljava/util/List;

    iget-object v2, p0, Lcom/local/p5home/TopBarManager$$ExternalSyntheticLambda4;->f$2:Lcom/local/p5home/TopBarStore$Snapshot;

    iget-object v3, p0, Lcom/local/p5home/TopBarManager$$ExternalSyntheticLambda4;->f$3:Landroid/content/Context;

    iget-object v4, p0, Lcom/local/p5home/TopBarManager$$ExternalSyntheticLambda4;->f$4:Ljava/util/List;

    iget-wide v5, p0, Lcom/local/p5home/TopBarManager$$ExternalSyntheticLambda4;->f$5:J

    invoke-virtual/range {v0 .. v6}, Lcom/local/p5home/TopBarManager;->lambda$accept$6$com-local-g3home-TopBarManager(Ljava/util/List;Lcom/local/p5home/TopBarStore$Snapshot;Landroid/content/Context;Ljava/util/List;J)V

    return-void
.end method

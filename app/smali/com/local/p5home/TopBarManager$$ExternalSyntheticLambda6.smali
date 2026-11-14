.class public final synthetic Lcom/local/p5home/TopBarManager$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/local/p5home/TopBarManager;

.field public final synthetic f$1:J

.field public final synthetic f$2:Lcom/local/p5home/TopBarStore$Snapshot;

.field public final synthetic f$3:[Landroid/graphics/drawable/Drawable;

.field public final synthetic f$4:Ljava/util/List;

.field public final synthetic f$5:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/local/p5home/TopBarManager;JLcom/local/p5home/TopBarStore$Snapshot;[Landroid/graphics/drawable/Drawable;Ljava/util/List;Ljava/util/List;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/TopBarManager$$ExternalSyntheticLambda6;->f$0:Lcom/local/p5home/TopBarManager;

    iput-wide p2, p0, Lcom/local/p5home/TopBarManager$$ExternalSyntheticLambda6;->f$1:J

    iput-object p4, p0, Lcom/local/p5home/TopBarManager$$ExternalSyntheticLambda6;->f$2:Lcom/local/p5home/TopBarStore$Snapshot;

    iput-object p5, p0, Lcom/local/p5home/TopBarManager$$ExternalSyntheticLambda6;->f$3:[Landroid/graphics/drawable/Drawable;

    iput-object p6, p0, Lcom/local/p5home/TopBarManager$$ExternalSyntheticLambda6;->f$4:Ljava/util/List;

    iput-object p7, p0, Lcom/local/p5home/TopBarManager$$ExternalSyntheticLambda6;->f$5:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    iget-object v0, p0, Lcom/local/p5home/TopBarManager$$ExternalSyntheticLambda6;->f$0:Lcom/local/p5home/TopBarManager;

    iget-wide v1, p0, Lcom/local/p5home/TopBarManager$$ExternalSyntheticLambda6;->f$1:J

    iget-object v3, p0, Lcom/local/p5home/TopBarManager$$ExternalSyntheticLambda6;->f$2:Lcom/local/p5home/TopBarStore$Snapshot;

    iget-object v4, p0, Lcom/local/p5home/TopBarManager$$ExternalSyntheticLambda6;->f$3:[Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/local/p5home/TopBarManager$$ExternalSyntheticLambda6;->f$4:Ljava/util/List;

    iget-object v6, p0, Lcom/local/p5home/TopBarManager$$ExternalSyntheticLambda6;->f$5:Ljava/util/List;

    invoke-virtual/range {v0 .. v6}, Lcom/local/p5home/TopBarManager;->lambda$accept$5$com-local-g3home-TopBarManager(JLcom/local/p5home/TopBarStore$Snapshot;[Landroid/graphics/drawable/Drawable;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

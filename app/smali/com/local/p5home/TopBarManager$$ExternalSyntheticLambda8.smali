.class public final synthetic Lcom/local/p5home/TopBarManager$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/local/p5home/TopBarManager;

.field public final synthetic f$1:J

.field public final synthetic f$2:Lcom/local/p5home/TopBarSlot;

.field public final synthetic f$3:Lcom/local/p5home/TopBarSlot;

.field public final synthetic f$4:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/local/p5home/TopBarManager;JLcom/local/p5home/TopBarSlot;Lcom/local/p5home/TopBarSlot;Landroid/content/Context;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/TopBarManager$$ExternalSyntheticLambda8;->f$0:Lcom/local/p5home/TopBarManager;

    iput-wide p2, p0, Lcom/local/p5home/TopBarManager$$ExternalSyntheticLambda8;->f$1:J

    iput-object p4, p0, Lcom/local/p5home/TopBarManager$$ExternalSyntheticLambda8;->f$2:Lcom/local/p5home/TopBarSlot;

    iput-object p5, p0, Lcom/local/p5home/TopBarManager$$ExternalSyntheticLambda8;->f$3:Lcom/local/p5home/TopBarSlot;

    iput-object p6, p0, Lcom/local/p5home/TopBarManager$$ExternalSyntheticLambda8;->f$4:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object v0, p0, Lcom/local/p5home/TopBarManager$$ExternalSyntheticLambda8;->f$0:Lcom/local/p5home/TopBarManager;

    iget-wide v1, p0, Lcom/local/p5home/TopBarManager$$ExternalSyntheticLambda8;->f$1:J

    iget-object v3, p0, Lcom/local/p5home/TopBarManager$$ExternalSyntheticLambda8;->f$2:Lcom/local/p5home/TopBarSlot;

    iget-object v4, p0, Lcom/local/p5home/TopBarManager$$ExternalSyntheticLambda8;->f$3:Lcom/local/p5home/TopBarSlot;

    iget-object v5, p0, Lcom/local/p5home/TopBarManager$$ExternalSyntheticLambda8;->f$4:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/local/p5home/TopBarManager;->lambda$launch$9$com-local-g3home-TopBarManager(JLcom/local/p5home/TopBarSlot;Lcom/local/p5home/TopBarSlot;Landroid/content/Context;)V

    return-void
.end method

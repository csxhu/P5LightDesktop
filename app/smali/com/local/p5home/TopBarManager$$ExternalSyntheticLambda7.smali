.class public final synthetic Lcom/local/p5home/TopBarManager$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/local/p5home/TopBarManager;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Lcom/local/p5home/TopBarStore$Snapshot;

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Lcom/local/p5home/TopBarManager;Landroid/content/Context;Lcom/local/p5home/TopBarStore$Snapshot;J)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/TopBarManager$$ExternalSyntheticLambda7;->f$0:Lcom/local/p5home/TopBarManager;

    iput-object p2, p0, Lcom/local/p5home/TopBarManager$$ExternalSyntheticLambda7;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/local/p5home/TopBarManager$$ExternalSyntheticLambda7;->f$2:Lcom/local/p5home/TopBarStore$Snapshot;

    iput-wide p4, p0, Lcom/local/p5home/TopBarManager$$ExternalSyntheticLambda7;->f$3:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/local/p5home/TopBarManager$$ExternalSyntheticLambda7;->f$0:Lcom/local/p5home/TopBarManager;

    iget-object v1, p0, Lcom/local/p5home/TopBarManager$$ExternalSyntheticLambda7;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/local/p5home/TopBarManager$$ExternalSyntheticLambda7;->f$2:Lcom/local/p5home/TopBarStore$Snapshot;

    iget-wide v3, p0, Lcom/local/p5home/TopBarManager$$ExternalSyntheticLambda7;->f$3:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/local/p5home/TopBarManager;->lambda$refresh$3$com-local-g3home-TopBarManager(Landroid/content/Context;Lcom/local/p5home/TopBarStore$Snapshot;J)V

    return-void
.end method

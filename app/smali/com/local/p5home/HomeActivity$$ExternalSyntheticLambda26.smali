.class public final synthetic Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda26;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/local/p5home/HomeActivity;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/local/p5home/HomeActivity;IIILjava/util/List;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda26;->f$0:Lcom/local/p5home/HomeActivity;

    iput p2, p0, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda26;->f$1:I

    iput p3, p0, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda26;->f$2:I

    iput p4, p0, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda26;->f$3:I

    iput-object p5, p0, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda26;->f$4:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda26;->f$0:Lcom/local/p5home/HomeActivity;

    iget v1, p0, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda26;->f$1:I

    iget v2, p0, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda26;->f$2:I

    iget v3, p0, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda26;->f$3:I

    iget-object v4, p0, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda26;->f$4:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/local/p5home/HomeActivity;->lambda$refreshUsage$21$com-local-g3home-HomeActivity(IIILjava/util/List;)V

    return-void
.end method

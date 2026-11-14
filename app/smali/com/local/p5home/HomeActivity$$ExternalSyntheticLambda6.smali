.class public final synthetic Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/local/p5home/HomeActivity;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/RuntimeException;

.field public final synthetic f$3:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/local/p5home/HomeActivity;ILjava/lang/RuntimeException;Ljava/lang/Runnable;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda6;->f$0:Lcom/local/p5home/HomeActivity;

    iput p2, p0, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda6;->f$1:I

    iput-object p3, p0, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda6;->f$2:Ljava/lang/RuntimeException;

    iput-object p4, p0, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda6;->f$3:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda6;->f$0:Lcom/local/p5home/HomeActivity;

    iget v1, p0, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda6;->f$1:I

    iget-object v2, p0, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda6;->f$2:Ljava/lang/RuntimeException;

    iget-object v3, p0, Lcom/local/p5home/HomeActivity$$ExternalSyntheticLambda6;->f$3:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Lcom/local/p5home/HomeActivity;->lambda$loadApps$24$com-local-g3home-HomeActivity(ILjava/lang/RuntimeException;Ljava/lang/Runnable;)V

    return-void
.end method
